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
import json
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


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--funcs", required=True)
    args = ap.parse_args()

    (AI / "scratch").mkdir(parents=True, exist_ok=True)
    (AI / "briefings").mkdir(parents=True, exist_ok=True)
    (AI / "wave").mkdir(parents=True, exist_ok=True)
    tricks = (AI / "tricks.jsonl")
    tricks_txt = tricks.read_text() if tricks.is_file() else "(nog leeg)"

    manifest = []
    for func in args.funcs.split(","):
        func = func.strip()
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
    (AI / "wave/manifest.json").write_text(json.dumps(manifest, indent=1))
    print(f"{len(manifest)} doel(en) -> ai_gba/wave/manifest.json")


if __name__ == "__main__":
    main()
