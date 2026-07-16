#include "gba.h"
#include "macros.h"
#include "code_08001194.h"
#include "code/code_08039340.h"
#include "structs/ewram.h"

/* Candidate for sub_0803A8C8 @ 0x803a8c8 — write your matching C here.
 * Standalone TU: the oracle compiles just this file. Add extern decls for
 * callees/globals as needed (reloc slots are wildcarded by the oracle, but
 * keep names honest: sub_/gUnk_ names from the map).
 */

/**
 * Uploads param_4 graphics blocks to OBJ VRAM (0x6010000), starting at slot
 * param_3. Each block is 0x800 (or 0x1000 in the double-size mode signalled by
 * bit 1 of gEwramData->unk_12FEC) bytes, uploaded as 4 chunks of 0x200/0x400
 * bytes whose VRAM tile offsets come from sub_0803D8B4(param_0+param_2+i)<<5,
 * each chunk 0x400 tile-bytes apart. Source data is either param_1+4 (raw,
 * *param_1 == 0) or a buffer at gEwramData->unk_153F8 prepared by
 * sub_0803B9B4 (*param_1 == 1). If (u16)param_5 is zero the copy is an
 * immediate DMA3 transfer, otherwise it is queued via DmaQueue_IndirectCopy.
 * Fails (returns 0) when param_3+param_4 exceeds the capacity byte
 * gEwramData->unk_12FF0[(s16)param_0].unk_12FF1. Evidence: reference asm in
 * ai_gba/briefings/sub_0803A8C8.md; DMA_SET store/read-back pattern matches
 * include/gba/dma.h.
 */
s32 sub_0803A8C8(s32 param_0, u8 *param_1, s32 param_2, u32 param_3, u32 param_4, u32 param_5)
{
    u8 *src;
    u32 stride;
    u32 i;
    u32 masked;
    u32 four;
    u8 *capp;
    u8 *base;

    (void)&param_0;
    (void)&param_2;
    (void)&src;
    (void)&stride;

    base = (u8 *)gEwramData;
    capp = base + ((s16)param_0 << 3) + 0x12FF1;
    if (param_3 + param_4 > *capp)
    {
        return 0;
    }

    stride = 0x800;
    {
        u32 bit = (gEwramData->unk_12FEC >> 1) & 1;
        if (bit == 1)
        {
            stride <<= 1;
        }
    }

    if (param_1[0] != 0)
    {
        if (param_1[0] == 1)
        {
            sub_0803B9B4(param_1);
            src = gEwramData->unk_153F8;
        }
    }
    else
    {
        src = param_1 + 4;
    }

    i = 0;
    if (i < param_4)
    {
        masked = param_5 & 0xFFFF;
        four = 4;
        do
        {
            u8 *p;
            u16 tile;
            u32 chunk;
            u32 j;
            u32 next;
            u32 off;
            s32 blk;

            off = stride * i;
            blk = param_0 + param_2 + i;
            p = src + off;
            tile = sub_0803D8B4(blk) << 5;
            chunk = 0x200;
            {
                u32 bit = (gEwramData->unk_12FEC >> 1) & 1;
                if (bit == 1)
                {
                    chunk <<= 1;
                }
            }

            if (masked == 0)
            {
                u32 ctrl;
                vu32 *dmaregs;
                u32 step;

                ctrl = chunk >> 1;
                next = i + 1;
                dmaregs = (vu32 *)0x40000D4;
                ctrl |= 0x80000000;
                j = four;
                step = 0x400;
                do
                {
                    dmaregs[0] = (u32)p;
                    dmaregs[1] = (u32)(VRAM_BASE + 0x10000 + tile);
                    dmaregs[2] = ctrl;
                    dmaregs[2];
                    p += chunk;
                    tile += step;
                } while (--j != 0);
            }
            else
            {
                next = i + 1;
                j = four;
                do
                {
                    DmaQueue_IndirectCopy(chunk, (u32 *)p, (u32 *)(VRAM_BASE + 0x10000 + tile));
                    p += chunk;
                    tile += 0x400;
                } while (--j != 0);
            }
            i = next;
        } while (i < param_4);
    }
    return 1;
}
