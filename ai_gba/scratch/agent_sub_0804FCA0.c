#include "gba.h"
#include "structs/ewram.h"
#include "code_08001194.h"
#include "code/code_08040A38.h"

/*
 * sub_0804FCA0 — stamp an entity's collision footprint into the room grid.
 *
 * Looks up a 12-byte hitbox descriptor in the ROM table at 0x08526064 using
 * the entity's shape index (unk_514). From the descriptor it reads a signed
 * (x,y) pixel offset (bytes +4/+5) and a width/height in pixels (bytes +6/+7).
 * The entity's shape kind (unk_4F8, values 0..4) selects one of four stamp
 * patterns; each walks the box in 16px (one-tile) steps, translating the
 * entity's room position (unk_526/unk_52A) by the live camera scroll
 * (bgInfo[1] integer parts) before calling sub_08002200 to set each grid cell.
 *
 *   case 0    : full rectangle (nested loops over width x height)
 *   case 1    : vertical line
 *   case 2    : vertical line, x offset shifted left 16px, then like case 1
 *   case 3/4  : horizontal line
 *
 * Evidence: reference asm asm/code/code_08040A38.s @ 0x0804FCA0; camera-read
 * idiom matches GetEntityRoom{X,Y}PositionWhole in src/code_08001194.c.
 *
 * STATUS 2026-07-17: 7 diffs of 0x180 (was 15). Trick 61 (comma-expr bg
 * materialization, proven on sub_0804FE20) applied to all 3 call sites fixed
 * the gEwramData-deref triplet (problem B). The remaining 7 halfwords are the
 * IDENTICAL prologue r0/r1 mirror as sub_0804FE20 (shared root, see tricks
 * entry on the n-vs-multiply-chain QTY_CMP_PRI race in local-alloc).
 */

struct HitboxDesc {
    /* 0x0 */ u8 pad_0[4];
    /* 0x4 */ s8 unk_4;
    /* 0x5 */ s8 unk_5;
    /* 0x6 */ u8 unk_6;
    /* 0x7 */ u8 unk_7;
    /* 0x8 */ u8 pad_8[4];
}; /* size = 0xC */

void sub_0804FCA0(struct EwramData_EntityData *entity)
{
    struct HitboxDesc *desc =
        &((struct HitboxDesc *)0x08526064)[entity->unk_514.unk_514_16.unk_514];
    s32 ox = desc->unk_4;
    s32 oy = desc->unk_5;
    struct EwramData_unkA078 *bg;
    s32 i;
    s32 j;

    switch ((u8)entity->unk_4F8.unk_4F8_8.unk_4F8) {
        case 2:
            ox -= 0x10;
            /* fallthrough */
        case 1:
            for (i = -(s32)desc->unk_7 / 2; i < (desc->unk_7 >> 1); i += 0x10) {
                sub_08002200(
                    (s16)entity->unk_524.unk_524_16.unk_526 + (s16)(bg = (void *)gEwramData, bg = &((struct EwramData *)bg)->bgInfo[1], bg)->xPos.part16.integer + ox,
                    (s16)entity->unk_528.unk_528_16.unk_52A + (s16)bg->yPos.part16.integer + oy - i);
            }
            break;
        case 3:
        case 4:
            for (i = -(s32)desc->unk_6 / 2; i < (desc->unk_6 >> 1); i += 0x10) {
                sub_08002200(
                    (s16)entity->unk_524.unk_524_16.unk_526 + (s16)(bg = (void *)gEwramData, bg = &((struct EwramData *)bg)->bgInfo[1], bg)->xPos.part16.integer + ox - i,
                    (s16)entity->unk_528.unk_528_16.unk_52A + (s16)bg->yPos.part16.integer + oy);
            }
            break;
        case 0:
            for (i = -(s32)desc->unk_6 / 2; i < (desc->unk_6 >> 1); i += 0x10) {
                for (j = -(s32)desc->unk_7 / 2; j < (desc->unk_7 >> 1); j += 0x10) {
                    sub_08002200(
                        (s16)entity->unk_524.unk_524_16.unk_526 + (s16)(bg = (void *)gEwramData, bg = &((struct EwramData *)bg)->bgInfo[1], bg)->xPos.part16.integer + ox + i,
                        (s16)entity->unk_528.unk_528_16.unk_52A + (s16)bg->yPos.part16.integer + oy + j);
                }
            }
            break;
    }
}
