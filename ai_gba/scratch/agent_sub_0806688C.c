#include "types.h"

extern int sub_08067660(int a, int b);
extern void PlaySong(u16 song);

/* Struct touched through param_1 (r5). Only the byte fields at the
 * offsets the function uses are relevant for codegen; everything else
 * is padding to keep the layout. All accessed fields are u8; signed
 * reads are explicit (s8) casts (they emit ldrsb). */
struct Obj {
    u8 pad00[0x0a];
    u8 unk_a;               /* 0x0a: mode selector (== 2 special-cases the grow path) */
    u8 pad0b[0x14 - 0x0b];
    u8 unk_14;              /* 0x14: visible row count / span */
    u8 unk_15;              /* 0x15: derived cursor-minus-top delta */
    u8 unk_16;              /* 0x16: scroll top */
    u8 unk_17;              /* 0x17: cursor position */
};

/*
 * sub_0806688C @ 0x0806688C
 *
 * A list/inventory navigation handler driven by a bitmask of directional
 * flags (param_4). It looks up a per-entry limit through a ROM table
 * (0x085269FC, stride 4) fed to sub_08067660, then applies one of several
 * edit operations to the object's cursor (unk_17), scroll top (unk_16),
 * an inline count cell (param_0[0x3D1 + cursor]) and the derived delta
 * (unk_15). Returns a result code 0..3 and plays the cursor-move SFX
 * (0xF1) whenever anything changed. Reconstructed from the reference asm;
 * this function is not present in src/.
 *
 * unk_14 is read directly in the shared tail; GCC's PRE hoists that load
 * into each predecessor block (the per-branch `ldrb r2, [r5, #0x14]`),
 * so the span limit stays in a scratch register instead of being carried
 * as a callee-saved local.
 */
s32 sub_0806688C(u8 *param_0, struct Obj *obj, u32 param_2, u8 *param_3, u32 flags)
{
    s32 result;
    s32 saved16;
    int ret;
    int ret2;
    u8 *cell;
    const u8 *tbl;

    param_3 += 1;
    tbl = (const u8 *)0x085269FC + ((param_3[obj->unk_17]) << 2);
    ret = sub_08067660(tbl[0], tbl[1]);
    ret2 = ret;
    cell = param_0 + (obj->unk_17 + 0x3D1);
    saved16 = (s8)obj->unk_16;
    result = 0;

    if ((flags & 0x10) && *cell != 0) {
        int newval;
        if (obj->unk_a == 2) {
            u8 c = *cell;
            if (c >= ret) goto tail;
            newval = c + 1;
        } else {
            u8 c = *cell;
            if (c + ret2 > 8) goto tail;
            newval = c + 1;
        }
        *cell = newval;
        result = 1;
        goto tail;
    }

    if (flags & 0x20) {
        if (*cell > 1) {
            *cell = *cell - 1;
            result = 1;
            goto tail;
        }
    }

    if (flags & 0x40) {
        u8 cur = obj->unk_17;
        if (cur == 0) goto tail;
        obj->unk_17 = cur - 1;
        if ((s8)obj->unk_16 > obj->unk_17) obj->unk_16 = obj->unk_17;
        goto rc0;
    }

    if (flags & 0x80) {
        u8 cur = obj->unk_17;
        int lim = (s8)obj->unk_14 - 1;
        if (cur >= lim) goto tail;
        obj->unk_17 = cur + 1;
        if ((s8)obj->unk_16 < obj->unk_17 - 3) obj->unk_16 = obj->unk_17 - 3;
        goto rc0;
    }

    if (flags & 0x100) {
        u8 cur = obj->unk_17;
        int s14 = (s8)obj->unk_14;
        if (cur >= s14 - 1) goto tail;
        obj->unk_16 += 4;
        obj->unk_17 += 4;
        if ((s8)obj->unk_16 > s14 - 4) {
            obj->unk_16 = obj->unk_14 - 4;
            obj->unk_17 = obj->unk_14 - 1;
        }
        result = 2;
        goto tail;
    }

    flags &= 0x200;
    if (flags) {
        u8 cur = obj->unk_17;
        if (cur != 0) {
            u8 v16 = obj->unk_16;
            if ((s8)obj->unk_16 <= 3) {
                obj->unk_16 = 0;
                obj->unk_17 = 0;
            } else {
                obj->unk_16 = v16 - 4;
                obj->unk_17 = cur - 4;
            }
            goto rc0;
        }
    }
    goto tail;

rc0:
    result = 2;
tail:
    obj->unk_15 = obj->unk_17 - obj->unk_16;
    if ((s8)(obj->unk_17 - obj->unk_16) >= (s8)obj->unk_14 && (s8)obj->unk_14 != 0) {
        obj->unk_15 = obj->unk_14 - 1;
        obj->unk_17 = obj->unk_14 - 1;
        result = 3;
    }
    if ((s8)obj->unk_16 != saved16) result = 3;
    if (result != 0) PlaySong(0xf1);
    return result;
}
