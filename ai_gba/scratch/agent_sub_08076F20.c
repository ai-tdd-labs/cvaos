#include "types.h"

/* Callees still in asm / other TUs. */
extern void sub_080777F4(void *obj, u32 a, u32 b, s32 c);
extern void PlaySong(u16 song);

struct Obj {
    /* 0x00 */ u8 pad00[0x0d];
    /* 0x0d */ u8 field_d;
    /* 0x0e */ u8 pad0e[0x1c - 0x0e];
    /* 0x1c */ s16 field_1c;
    /* 0x1e */ u16 field_1e;
    /* 0x20 */ u16 *field_20;
    /* 0x24 */ u8 pad24[0x40 - 0x24];
    /* 0x40 */ u32 field_40;
    /* 0x44 */ u32 field_44;
    /* 0x48 */ u16 field_48;
    /* 0x4a */ u16 field_4a;
    /* 0x4c */ u16 field_4c;
    /* 0x4e */ s16 field_4e;
    /* 0x50 */ u8 pad50[0x58 - 0x50];
    /* 0x58 */ u8 field_58;
    /* 0x59 */ u8 field_59;
    /* 0x5a */ u8 pad5a[0x5c - 0x5a];
    /* 0x5c */ u8 field_5c;
    /* 0x5d */ u8 pad5d[3];
};

/*
 * Per-frame update of an audio/effect object. Nudges several 16-bit
 * parameters toward target ranges (field_4e -> 0x30, field_1c -> ~0x100,
 * field_4c climb, field_1e band-limit), pushes the accumulated field_48
 * value into a 100-entry u16 history ring at *field_20, then advances a
 * wrapping 0x4a phase by +/-0x40 (two clamp regimes selected by
 * field_58 & 0x40). Finally, gated by the low bits of the field_d frame
 * counter, calls sub_080777F4 and PlaySong, decrements field_d, and sets
 * field_59 |= 8 when the counter runs out.
 */
void sub_08076F20(struct Obj *obj)
{
    u16 *hist = obj->field_20;
    u16 *p;
    u16 *p4c;
    u16 *p48;
    s32 n;
    u32 v;

    /* field_4e -> 0x30 */
    if (obj->field_4e <= 0x2f)
        obj->field_4e = obj->field_4e + 1;
    else if (obj->field_4e > 0x30)
        obj->field_4e = obj->field_4e - 1;

    /* field_1c band */
    if (obj->field_1c > 0x100)
        obj->field_1c = obj->field_1c - 1;
    else if (obj->field_1c <= 0xff)
        obj->field_1c = obj->field_1c + 4;

    /* field_4c climb */
    p4c = &obj->field_4c;
    if (*p4c <= 0x7ff)
        *p4c = *p4c + 0x20;

    /* field_48 += field_4c */
    obj->field_48 = *p4c + obj->field_48;
    p48 = &obj->field_48;

    /* field_1e band-limit */
    if (obj->field_1e > 0x8000) {
        if (obj->field_1e <= 0xfeaf)
            obj->field_1e = obj->field_1e + 0x140;
    } else {
        if (obj->field_1e <= 0x7eaf)
            obj->field_1e = obj->field_1e + 0x140;
    }

    /* push field_48 into 100-entry history ring */
    p = &hist[98];
    n = 99;
    do {
        p[1] = p[0];
        --p;
        --n;
    } while (n > 0);
    hist[0] = *p48;

    /* wrapping phase advance */
    if (obj->field_58 & 0x40) {
        v = obj->field_4a;
        if (v <= 0x7fff)
            v += 0x10000;
        if (v <= 0xffff) {
            v += 0x40;
            if (v > 0x10000)
                v = 0x10000;
        } else {
            v -= 0x40;
            if (v <= 0xffff)
                v = 0x10000;
        }
        obj->field_4a = v;
    } else {
        v = obj->field_4a;
        if (v <= 0x7fff) {
            v += 0x40;
            if (v > 0x8000)
                v = 0x8000;
        } else {
            v -= 0x40;
            if (v <= 0x7fff)
                v = 0x8000;
        }
        obj->field_4a = v;
    }

    if ((obj->field_d & 3) == 0)
        sub_080777F4(obj, obj->field_40, obj->field_44, obj->field_5c - 1);

    if ((obj->field_d & 0xf) == 0)
        PlaySong(0x6e);

    obj->field_d = obj->field_d - 1;
    if ((s8)obj->field_d <= 0)
        obj->field_59 = obj->field_59 | 8;
}
