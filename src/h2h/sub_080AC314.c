#include "types.h"
#include "syscalls.h"
#include "code/code_08039340.h"

/* Candidate for sub_080AC314 @ 0x080AC314 (asm/code/code_080A0A8C.s).
 * Local struct layouts inferred from the reference asm: param_0 keeps a
 * pointer to an array of 0x38-byte path nodes at offset 0x1C and a flag
 * byte at 0x58 (bit 0x40 = reverse/mirror direction).
 */

struct AC314Node
{
    s32 x;        /* 0x00 fixed-point 16.16 */
    s32 y;        /* 0x04 fixed-point 16.16 */
    s32 unk_08;
    s32 unk_0C;   /* current angle */
    s32 unk_10;   /* target angle = ArcTan2 + 0x10000 */
    s32 unk_14;   /* set to 0x80000000 */
    s32 unk_18;   /* destination node index */
    s32 unk_1C;
    s32 unk_20;
    s32 unk_24;   /* distance to destination (Sqrt result << 8) */
    s32 unk_28;   /* speed/step (from param_5) */
    s32 unk_2C;   /* speed/step copy */
    s32 unk_30;
    s32 unk_34;   /* progress, reset to 0 */
};

struct AC314Owner
{
    u8 pad_00[0x1C];
    struct AC314Node *nodes;  /* 0x1C */
    u8 pad_20[0x38];
    u8 flags;                 /* 0x58: 0x40 = reversed traversal */
};

/**
 * PURPOSE: Starts moving a path point toward its next point, setting its speed, distance and turn angle.
 *
 * Initialize movement of path node `i` toward node `t`: resets progress,
 * stores the step value and destination index, computes the travel
 * distance (given `d`, or the Euclidean distance via squared fixed-point
 * mul + Sqrt when d == 0) and the heading angle via ArcTan2. If the
 * turn amount `s` exceeds one half-turn (0xFFFF) the current angle is
 * set absolutely (mirrored around 0x28000/0x38000 when the owner's
 * 0x40 flag is set) and copied to the target angle; otherwise the
 * current angle is set relative to the ArcTan2 heading (minus `s` when
 * reversed, plus `s` otherwise).
 * Evidence: reference asm at 0x080AC314 in asm/code/code_080A0A8C.s.
 */
void sub_080AC314(struct AC314Owner *o, s32 i, s32 t, s32 s, s32 d, s32 v)
{
    struct AC314Node *p = o->nodes;
    struct AC314Node *m;
    s32 dx;
    s32 dy;
    s32 angle;
    s32 a;
    s32 as;

    p[i].unk_34 = 0;
    p[i].unk_28 = v;
    p[i].unk_2C = v;
    p[i].unk_14 = 0x80000000;
    p[i].unk_18 = t;

    if (d != 0)
    {
        p[i].unk_24 = d;
    }
    else
    {
        dx = p[t].x - p[i].x;
        dy = p[t].y - p[i].y;
        dx = sub_0803E86C(dx, dx);
        dy = sub_0803E86C(dy, dy);
        p[i].unk_24 = Sqrt(dx + dy) << 8;
    }

    dx = p[i].x - p[t].x;
    dy = p[i].y - p[t].y;
    angle = ArcTan2((dx < 0) ? -(-dx >> 0x10) : (dx >> 0x10),
                    (dy < 0) ? -(-dy >> 0x10) : (dy >> 0x10));
    m = (struct AC314Node *)(i * 0x38 + (s32)p);
    a = (u16)angle + 0x10000;
    m->unk_10 = a;

    as = s;
    if (as < 0)
    {
        as = -as;
    }
    if (as > 0xFFFF)
    {
        if (o->flags & 0x40)
        {
            if (s > 0x18000)
            {
                m->unk_0C = 0x38000 - s;
            }
            else
            {
                m->unk_0C = 0x28000 - s;
            }
        }
        else
        {
            m->unk_0C = s;
        }
        p[i].unk_10 = p[i].unk_0C;
    }
    else
    {
        if (o->flags & 0x40)
        {
            m->unk_0C = a - s;
        }
        else
        {
            m->unk_0C = a + s;
        }
    }
}
