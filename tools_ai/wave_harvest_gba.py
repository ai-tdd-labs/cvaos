#!/usr/bin/env python3
"""wave_harvest_gba.py — verify agent results, promote to src/, gate on ROM SHA1.

Per manifest target: oracle-verify the agent's TU working copy; on a byte-match
confirm the NONMATCH wrapper was replaced, copy the TU into src/, git-rm the
.inc, run the full build and compare the ROM SHA1. Only a byte-perfect ROM is
committed (ai-decomp branch); any mismatch reverts the promotion.

  tools_ai/wave_harvest_gba.py [--push]
"""
import argparse
import json
import pathlib
import subprocess
import sys

CVAOS = pathlib.Path(__file__).resolve().parent.parent
PY = str(CVAOS.parent / "st/.venv/bin/python")
SHA_GOOD = "abd71fe01ebb201bcc133074db1dd8c5253776c7"


def run(cmd, timeout=900):
    return subprocess.run(cmd, capture_output=True, text=True, cwd=CVAOS, timeout=timeout)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--push", action="store_true")
    args = ap.parse_args()

    manifest = json.loads((CVAOS / "ai_gba/wave/manifest.json").read_text())
    ok, miss, absent = [], [], []
    for m in manifest:
        scratch = CVAOS / m["scratch"]
        if not scratch.is_file():
            absent.append(m["func"])
            continue
        txt = scratch.read_text()
        if f'asm/non_matching/{m["func"]}.inc' in txt:
            miss.append(f'{m["func"]} (NONMATCH-wrapper staat er nog)')
            continue
        r = run([PY, "tools_ai/gbamatch.py", "--src", str(scratch),
                 "--func", m["func"], "--quiet"], timeout=300)
        if "match=True" not in r.stdout:
            miss.append(f'{m["func"]} ({r.stdout.strip().splitlines()[-1] if r.stdout.strip() else "oracle-fout"})')
            continue
        ok.append(m)
        print(f'  ✓ {m["func"]} byte-match (oracle)')

    print(f"\ngeoogst: {len(ok)} | mis: {miss or '-'} | geen output: {absent or '-'}")
    if not ok:
        return

    # promotie: TU vervangen + .inc verwijderen, daarna de ENIGE echte poort: SHA1
    for m in ok:
        (CVAOS / m["tu"]).write_text((CVAOS / m["scratch"]).read_text())
        subprocess.run(["git", "rm", "-q", f'asm/non_matching/{m["func"]}.inc'], cwd=CVAOS)
    b = run(["make", "CPP=cpp-15", "-j4"], timeout=1800)
    sha = run(["shasum", "cvaos_us.gba"]).stdout.split()[0] if b.returncode == 0 else "(build-fout)"
    if sha == SHA_GOOD:
        subprocess.run(["git", "add", "-A"], cwd=CVAOS)
        names = ", ".join(m["func"] for m in ok)
        subprocess.run(["git", "commit", "-q", "-m",
                        f"decomp: {len(ok)} NONMATCH function(s) matched byte-identical\n\n"
                        f"{names}\n\nROM sha1 verified {SHA_GOOD}.\n\n"
                        f"Co-Authored-By: Claude Fable 5 <noreply@anthropic.com>"], cwd=CVAOS)
        if args.push:
            subprocess.run(["git", "push", "-q", "fork", "ai-decomp"], cwd=CVAOS)
        print(f"*** BYTE-PERFECT: +{len(ok)} functies gecommit"
              f"{' + gepushed' if args.push else ''} ***")
    else:
        print(f"!!! ROM niet byte-perfect (sha {sha}) — promotie teruggedraaid, GEEN commit")
        subprocess.run(["git", "checkout", "-q", "--", "src", "asm"], cwd=CVAOS)
        subprocess.run(["git", "reset", "-q", "HEAD", "asm"], cwd=CVAOS)
        sys.exit(1)


if __name__ == "__main__":
    main()
