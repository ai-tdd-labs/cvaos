#!/usr/bin/env python3
"""promote_fresh.py — hang oracle-proven fresh-asm matches into the real build.

mkds-style: split the asm TU at function boundaries, keep the unmatched parts
as asm objects, and link the proven standalone C TU (the scratch file, compiled
exactly as the oracle compiled it) in between. linker.ld's single object line
becomes the ordered sequence. The original .s moves to ai_gba/attic/ so the
Makefile wildcard stops assembling it. The ROM SHA1 (run `make` + shasum
yourself afterwards) is the only real gate.

  tools_ai/promote_fresh.py --tu code_08014548 --funcs sub_0801F0E4=<scratch.c>,sub_0801F474=<scratch.c>
"""
import argparse
import pathlib
import re
import shutil

CVAOS = pathlib.Path(__file__).resolve().parent.parent


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--tu", required=True, help="asm TU-naam zonder pad/ext, bv code_08014548")
    ap.add_argument("--funcs", required=True,
                    help="komma-lijst func=scratchpad, in TU-volgorde")
    args = ap.parse_args()

    promoted = {}
    for pair in args.funcs.split(","):
        fn, src = pair.split("=")
        promoted[fn.strip()] = pathlib.Path(src.strip())

    s_path = CVAOS / f"asm/code/{args.tu}.s"
    txt = s_path.read_text()
    parts = re.split(r"(\tthumb_func_start \w+\n)", txt)
    # parts[0] = header; daarna paren (startmacro-regel, body)
    header = parts[0]
    chunks = []  # (funcnaam, volledige tekst incl. startmacro)
    for i in range(1, len(parts), 2):
        fn = re.match(r"\tthumb_func_start (\w+)", parts[i]).group(1)
        chunks.append((fn, parts[i] + parts[i + 1]))

    order = [fn for fn, _ in chunks]
    for fn in promoted:
        if fn not in order:
            raise SystemExit(f"{fn} niet in {s_path}")

    # bouw segmenten: aaneengesloten asm-runs en gepromoveerde functies
    gen_dir = CVAOS / "asm/gen"
    gen_dir.mkdir(exist_ok=True)
    src_dir = CVAOS / "src/h2h"
    src_dir.mkdir(exist_ok=True)
    ld_lines = []
    run = []
    part_n = 0

    def flush_run():
        nonlocal part_n, run
        if not run:
            return
        p = gen_dir / f"{args.tu}_part{part_n}.s"
        p.write_text(header + "".join(t for _, t in run))
        ld_lines.append(f"        asm/gen/{args.tu}_part{part_n}.o(.text);")
        part_n += 1
        run = []

    for fn, chunk in chunks:
        if fn in promoted:
            flush_run()
            dest = src_dir / f"{fn}.c"
            shutil.copyfile(promoted[fn], dest)
            ld_lines.append(f"        src/h2h/{fn}.o(.text);")
        else:
            run.append((fn, chunk))
    flush_run()

    # linker.ld: vervang de ene objectregel door de reeks
    ld = CVAOS / "linker.ld"
    ld_txt = ld.read_text()
    old_line = f"        asm/code/{args.tu}.o(.text);"
    if old_line not in ld_txt:
        raise SystemExit(f"linker-regel niet gevonden: {old_line!r}")
    ld.write_text(ld_txt.replace(old_line, "\n".join(ld_lines)))

    # origineel uit de wildcard-build halen (bewaren in attic)
    attic = CVAOS / "ai_gba/attic"
    attic.mkdir(parents=True, exist_ok=True)
    shutil.move(str(s_path), attic / f"{args.tu}.s")
    for stale in (CVAOS / "asm/code").glob(f"{args.tu}.o"):
        stale.unlink()

    print(f"{args.tu}: {len(promoted)} functie(s) gepromoveerd, "
          f"{part_n} asm-parts, linker.ld bijgewerkt. Nu: make + shasum.")


if __name__ == "__main__":
    main()
