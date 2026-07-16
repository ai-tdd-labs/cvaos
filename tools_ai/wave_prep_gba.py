#!/usr/bin/env python3
"""wave_prep_gba.py — select NONMATCH targets and generate agent briefings (cvaos).

The cvaos repo marks functions the author could not match as NONMATCH blocks:
the TU stays byte-perfect via an .inc with the raw asm, and the block holds the
author's best C attempt — a head start no fresh disassembly gives. This tool,
per target: extracts that attempt + the reference asm + callee context, and
writes a briefing. Agents edit a COPY of the WHOLE TU (ai_gba/scratch/) so
TU-local static inlines and struct context stay correct; the oracle compiles
that copy and byte-compares just the target function.

  tools_ai/wave_prep_gba.py --funcs sub_0800975C,sub_0800E708
"""
import argparse
import datetime
import json
import os
import pathlib
import re
import shutil

CVAOS = pathlib.Path(__file__).resolve().parent.parent
AI = CVAOS / "ai_gba"
NONMATCH_RE = re.compile(
    r'NONMATCH\("asm/non_matching/(\w+)\.inc",\s*(.*?)\)\s*\n\{(.*?)END_NONMATCH',
    re.S)


def find_block(func):
    for f in sorted(CVAOS.glob("src/*.c")):
        txt = f.read_text()
        for m in NONMATCH_RE.finditer(txt):
            if m.group(1) == func:
                return f, m.group(2).strip(), m.group(3)
    return None, None, None


def map_addr(func):
    for line in (CVAOS / "cvaos_us.map").read_text().splitlines():
        m = re.match(r"^\s+0x0*(8[0-9a-fA-F]+)\s+(\w+)\s*$", line)
        if m and m.group(2) == func:
            return int(m.group(1), 16)
    return None


def already_matched(func):
    """True if func is REALLY defined in src/ (not just a NONMATCH asm wrapper).

    asm/code/*.s is a full disassembly dump — it also lists functions the author
    already matched in src/. Those are NOT fresh work. A NONMATCH block IS still
    unmatched (it wraps raw asm), so a src/ hit only counts if it's a plain
    definition, not a NONMATCH wrapper line.
    """
    pat = re.compile(rf"^(?:static\s+)?[A-Za-z_][\w \*]*\b{re.escape(func)}\s*\(", re.M)
    for f in CVAOS.glob("src/**/*.c"):
        txt = f.read_text()
        for m in pat.finditer(txt):
            line_start = txt.rfind("\n", 0, m.start()) + 1
            # is this definition inside a NONMATCH(...) wrapper on the same line?
            if "NONMATCH" not in txt[line_start:m.start()]:
                return str(f.relative_to(CVAOS))
    return None


def find_asm(func):
    """(file, body) for a function still living in asm/code/*.s AND not yet matched."""
    for f in sorted(CVAOS.glob("asm/code/*.s")):
        txt = f.read_text()
        parts = re.split(r"\tthumb_func_start (\w+)\n", txt)
        for i in range(1, len(parts), 2):
            if parts[i] == func:
                return f, parts[i + 1]
    return None, None


ASM_SCRATCH_TEMPLATE = '''#include "global.h"

/* Candidate for {func} @ {addr:#x} — write your matching C here.
 * Standalone TU: the oracle compiles just this file. Add extern decls for
 * callees/globals as needed (reloc slots are wildcarded by the oracle, but
 * keep names honest: sub_/gUnk_ names from the map).
 */
'''


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--funcs", help="NONMATCH-doelen (komma-lijst)")
    ap.add_argument("--asm-funcs", help="verse asm-doelen uit asm/code/*.s (komma-lijst)")
    args = ap.parse_args()

    (AI / "scratch").mkdir(parents=True, exist_ok=True)
    (AI / "briefings").mkdir(parents=True, exist_ok=True)
    (AI / "wave").mkdir(parents=True, exist_ok=True)

    # claims (sm64ds-idee als repo-bestand): sla doelen over die een andere
    # AI-sessie actief geclaimd heeft; claim de eigen doelen aan het eind
    claims = {}
    cf = AI / "claims.jsonl"
    if cf.is_file():
        for l in cf.read_text().splitlines():
            if l.strip():
                r = json.loads(l)
                claims[r["func"]] = r  # laatste regel per func wint
    who = os.environ.get("WAVE_WHO", "claude-main")

    def claimed_elsewhere(fn):
        c = claims.get(fn)
        return bool(c and c.get("status") == "active" and c.get("who") != who)
    tricks = (AI / "tricks.jsonl")
    tricks_txt = tricks.read_text() if tricks.is_file() else "(nog leeg)"

    manifest = []
    for func in (args.asm_funcs or "").split(","):
        func = func.strip()
        if not func:
            continue
        src_s, body = find_asm(func)
        if src_s is None:
            print(f"!! {func}: niet gevonden in asm/code/*.s")
            continue
        if claimed_elsewhere(func):
            print(f"!! {func}: actief geclaimd door andere sessie — overgeslagen")
            continue
        addr = map_addr(func)
        callees = sorted(set(re.findall(r"\bbl\s+(\w+)", body)))
        scratch = AI / "scratch" / f"agent_{func}.c"
        scratch.write_text(ASM_SCRATCH_TEMPLATE.format(func=func, addr=addr))
        brief = AI / "briefings" / f"{func}.md"
        brief.write_text(f"""# Target: {func} (cvaos GBA, agbcc) — FRESH asm function

Source asm TU: {src_s.relative_to(CVAOS)} (do NOT edit it)
Your candidate (standalone TU): {scratch.relative_to(CVAOS)}
Address: {addr:#x}
Oracle (run from {CVAOS}):
  ../st/.venv/bin/python tools_ai/gbamatch.py --src {scratch.relative_to(CVAOS)} --func {func}

## Reference asm (the truth, from the ROM)
```
{body[:8000]}
```

## Callees (bl targets)
{', '.join(callees) or '(none)'} — signatures: grep them in src/*.c and include/.
Struct context: gEwramData layout lives in include/structs.h (grep the offsets).

## Compiler facts (verified)
- agbcc (GCC 2.9-era), thumb, flags: -O2 -mthumb-interwork -fhex-asm -f2003-patch
- The oracle uses the exact Makefile pipeline (preproc | cpp-15 | agbcc | as).
- This is NOT mwcc. GCC 2.9 idioms apply (see tricks below).

## Known agbcc tricks so far (READ, and APPEND what you discover)
{tricks_txt}

## Rules
- English /* */ doc comment above the function (what it does, evidence).
- Append NEW codegen tricks to ai_gba/tricks.jsonl as {{"truc","wanneer","bron"}};
  UPDATE any HYPOTHESIS entry you prove or disprove.
- Never touch files outside your candidate + ai_gba/tricks.jsonl.
- Finish with the oracle command above; report its last line verbatim.
""")
        manifest.append({"func": func, "tu": "", "asm": str(src_s.relative_to(CVAOS)),
                         "scratch": str(scratch.relative_to(CVAOS)),
                         "addr": f"{addr:#x}" if addr else "?"})
        print(f"  {func}: FRESH briefing klaar (uit {src_s.name}, addr {addr:#x})")

    for func in (args.funcs or "").split(","):
        func = func.strip()
        if not func:
            continue
        tu, sig, attempt = find_block(func)
        if tu is None:
            print(f"!! {func}: geen NONMATCH-blok gevonden")
            continue
        inc = (CVAOS / f"asm/non_matching/{func}.inc").read_text()
        addr = map_addr(func)
        # size: thumb instructions until next func; derive from .inc line count is
        # rough — use map distance via gbamatch's own lookup at verify time instead.
        callees = sorted(set(re.findall(r"\bbl\s+(\w+)", inc)))
        scratch = AI / "scratch" / f"agent_{func}.c"
        shutil.copyfile(tu, scratch)
        brief = AI / "briefings" / f"{func}.md"
        brief.write_text(f"""# Target: {func} (cvaos GBA, agbcc)

TU: {tu.relative_to(CVAOS)} — your working copy: {scratch.relative_to(CVAOS)}
Address: {addr:#x} | Signature: `{sig}`
Oracle (run from {CVAOS}):
  ../st/.venv/bin/python tools_ai/gbamatch.py --src {scratch.relative_to(CVAOS)} --func {func}

## What this is
The original author could NOT match this function; their best attempt is inside
the NONMATCH block in your working copy (search for `NONMATCH("asm/non_matching/{func}.inc"`).
Comments near the block may link a decomp.me scratch with a %-score. Your job:
make the C inside that block byte-match, then REPLACE the NONMATCH wrapper:
  NONMATCH("...", {sig}) {{ ... }} END_NONMATCH   ->   {sig} {{ ... }}
Only edit inside your working copy. The harvest tool verifies and promotes it.

## Reference asm (the truth, from the ROM)
```
{inc[:6000]}
```

## Callees (bl targets)
{', '.join(callees) or '(none)'} — signatures: grep them in src/*.c and include/.

## Compiler facts (verified)
- agbcc (GCC 2.9-era), thumb, flags: -O2 -mthumb-interwork -fhex-asm -f2003-patch
- The oracle uses the exact Makefile pipeline (preproc | cpp-15 | agbcc | as).
- This is NOT mwcc: mwcc tricks (u64-laundering etc.) do not apply. GCC 2.9
  idioms do: assignment-in-condition, explicit temporaries, ++/-- placement,
  and s16/u8 casts producing lsl/lsr pairs all shift codegen.

## Known agbcc tricks so far (READ, and APPEND what you discover)
{tricks_txt}

## Rules
- English /* */ doc comment above the function (what it does, evidence).
- Append NEW codegen tricks to ai_gba/tricks.jsonl as {{"truc","wanneer","bron"}}.
- Never touch files outside your working copy + ai_gba/tricks.jsonl.
- Finish with the oracle command above; report its last line verbatim.
""")
        manifest.append({"func": func, "tu": str(tu.relative_to(CVAOS)),
                         "scratch": str(scratch.relative_to(CVAOS)),
                         "addr": f"{addr:#x}" if addr else "?"})
        print(f"  {func}: briefing + werkkopie klaar (TU {tu.name}, addr {addr:#x})")
    # MERGE met bestaand manifest (mkds-les: overschrijven verliest oogsten)
    mf = AI / "wave/manifest.json"
    if mf.is_file():
        old = {m["func"]: m for m in json.loads(mf.read_text())}
        for m in manifest:
            old[m["func"]] = m
        manifest = list(old.values())
    mf.write_text(json.dumps(manifest, indent=1))
    print(f"{len(manifest)} doel(en) -> ai_gba/wave/manifest.json")
    with cf.open("a") as f:
        for m in manifest:
            if not claimed_elsewhere(m["func"]):
                f.write(json.dumps({"func": m["func"], "addr": m.get("addr", "?"),
                                    "who": who,
                                    "date": datetime.date.today().isoformat(),
                                    "status": "active"}) + "\n")


if __name__ == "__main__":
    main()
