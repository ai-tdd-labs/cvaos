#!/usr/bin/env python3
"""gbamatch.py — per-function byte-oracle for the cvaos GBA decomp (aimatch port).

Compiles a candidate C file through the exact Makefile pipeline
(preproc | cpp | agbcc | as) and byte-compares the named function against the
verified baserom, with relocation slots wildcarded (they are only meaningful
after linking; linkage is proven separately by the full build's SHA1).

  tools_ai/gbamatch.py --src cand.c --func EntityUpdate [--addr 0x08...] [--size 0x..]

Address/size default to the symbol's entry in cvaos_us.map (size = distance to
the next text symbol). Exit 0 on match. Prints `match=True/False`.
"""
import argparse
import pathlib
import re
import struct
import subprocess
import sys
import tempfile

CVAOS = pathlib.Path(__file__).resolve().parent.parent
BASEROM = CVAOS / "cvaos_us_baserom.gba"
MAP = CVAOS / "cvaos_us.map"
AGBCC = CVAOS / "tools/agbcc/bin/agbcc"
PREPROC = CVAOS / "tools/preproc/preproc"
CPP = "cpp-15"  # Apple's cpp mangles args AND fails silently in pipes
AS = "arm-none-eabi-as"
CPPFLAGS = ["-nostdinc", "-I", str(CVAOS / "include"), "-I", str(CVAOS / "tools/agbcc/include")]
CFLAGS = ["-Werror", "-O2", "-mthumb-interwork", "-fhex-asm", "-f2003-patch"]
ROM_BASE = 0x08000000

SYM_RE = re.compile(r"^\s+0x0*(8[0-9a-fA-F]{6,7})\s+(\w+)\s*$")


def map_symbols():
    """All text symbols from the linker map, sorted by address."""
    syms = []
    for line in MAP.read_text().splitlines():
        m = SYM_RE.match(line)
        if m:
            syms.append((int(m.group(1), 16), m.group(2)))
    syms.sort()
    return syms


def lookup(func):
    syms = map_symbols()
    for i, (addr, name) in enumerate(syms):
        if name == func:
            size = (syms[i + 1][0] - addr) if i + 1 < len(syms) else 0
            return addr, size
    return None, None


def compile_candidate(src, tmp):
    """Makefile-faithful: preproc | cpp | agbcc -> .s (+align), then as -> .o."""
    asm = tmp / "cand.s"
    obj = tmp / "cand.o"
    p1 = subprocess.run([str(PREPROC), str(src), str(CVAOS / "charmap.txt")],
                        capture_output=True)
    p2 = subprocess.run([CPP, *CPPFLAGS], input=p1.stdout, capture_output=True)
    p3 = subprocess.run([str(AGBCC), *CFLAGS, "-o", str(asm)],
                        input=p2.stdout, capture_output=True)
    if p3.returncode or not asm.is_file():
        sys.exit(f"agbcc-fout:\n{(p2.stderr + p3.stderr).decode()[:800]}")
    asm.write_bytes(asm.read_bytes() + b"\t.align 2, 0 @ dont insert nops\n")
    p4 = subprocess.run([AS, "-mcpu=arm7tdmi", str(asm), "-o", str(obj)],
                        capture_output=True)
    if p4.returncode:
        sys.exit(f"as-fout:\n{p4.stderr.decode()[:800]}")
    return obj


def func_bytes_and_relocs(obj, func):
    """(bytes, reloc-offsets-within-func) for `func` in the object's .text."""
    from elftools.elf.elffile import ELFFile
    with obj.open("rb") as f:
        elf = ELFFile(f)
        symtab = elf.get_section_by_name(".symtab")
        sym = next((s for s in symtab.iter_symbols() if s.name == func), None)
        if sym is None:
            sys.exit(f"symbool {func} niet in object (namen: "
                     f"{[s.name for s in symtab.iter_symbols() if s['st_info']['type']=='STT_FUNC']})")
        off = sym["st_value"] & ~1
        size = sym["st_size"]
        text = elf.get_section_by_name(".text").data()
        if size == 0:  # agbcc/as emit no size for thumb funcs sometimes
            nxt = min([s["st_value"] & ~1 for s in symtab.iter_symbols()
                       if s["st_shndx"] != "SHN_UNDEF" and (s["st_value"] & ~1) > off
                       and s["st_info"]["type"] in ("STT_FUNC", "STT_NOTYPE")
                       and s.name and not s.name.startswith("$")] + [len(text)])
            size = nxt - off
        relocs = set()
        rel = elf.get_section_by_name(".rel.text")
        if rel:
            for r in rel.iter_relocations():
                ro = r["r_offset"]
                if off <= ro < off + size:
                    relocs.add(ro - off)          # ABS32 pool word / BL halfword-pair
                    relocs.add((ro - off) + 2)    # thumb BL spans 2 halfwords
        return text[off:off + size], relocs


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--src", required=True)
    ap.add_argument("--func", required=True)
    ap.add_argument("--addr")
    ap.add_argument("--size")
    ap.add_argument("--quiet", action="store_true")
    args = ap.parse_args()

    addr = int(args.addr, 16) if args.addr else None
    size = int(args.size, 16) if args.size else None
    if addr is None or size is None:
        maddr, msize = lookup(args.func)
        if maddr is None and addr is None:
            sys.exit(f"{args.func} niet in {MAP.name}; geef --addr/--size")
        addr = addr or maddr
        size = size or msize

    rom = BASEROM.read_bytes()
    want = rom[(addr & ~1) - ROM_BASE:(addr & ~1) - ROM_BASE + size]

    with tempfile.TemporaryDirectory() as td:
        obj = compile_candidate(pathlib.Path(args.src), pathlib.Path(td))
        got, relocs = func_bytes_and_relocs(obj, args.func)

    n = min(len(got), len(want), size)
    diffs = []
    for i in range(0, n, 2):
        if i in relocs or i + 1 in relocs:
            continue
        if got[i:i + 2] != want[i:i + 2]:
            diffs.append(i)
    size_note = "" if len(got) == size else f" (LET OP grootte: kandidaat {len(got):#x} vs doel {size:#x})"
    ok = not diffs and len(got) == size
    if not args.quiet and diffs:
        print(f"{len(diffs)} afwijkende halfwoorden{size_note}:")
        for i in diffs[:20]:
            g = struct.unpack_from("<H", got, i)[0]
            w = struct.unpack_from("<H", want, i)[0]
            print(f"  +{i:#06x}: kandidaat {g:04x}  rom {w:04x}")
    print(f"match={ok} func={args.func} addr={addr:#x} size={size:#x} "
          f"diffs={len(diffs)}{size_note}")
    sys.exit(0 if ok else 1)


if __name__ == "__main__":
    main()
