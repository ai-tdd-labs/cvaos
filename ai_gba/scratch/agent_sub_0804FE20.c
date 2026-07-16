#include "code/code_08040A38.h"
#include "code_08001194.h"

/* Entry of the 12-byte shape table at 0x08526064, indexed by the entity's
 * unk_514 id: s8 x/y offsets at +4/+5, u8 width/height at +6/+7. */
struct Unk_08526064 {
    /* 0x0 */ u16 unk_0;
    /* 0x2 */ u16 unk_2;
    /* 0x4 */ s8 unk_4;
    /* 0x5 */ s8 unk_5;
    /* 0x6 */ u8 unk_6;
    /* 0x7 */ u8 unk_7;
    /* 0x8 */ u32 unk_8;
};

/* Plots debug/collision points via sub_08002248 every 16 pixels over the
 * entity's shape rectangle (from the table at 0x08526064, selected by
 * unk_514), in screen space (entity position + bgInfo[1] camera position +
 * per-shape x/y offset). Mode unk_4F8 selects the sweep: 0 = full 2D grid,
 * 1 = vertical line, 2 = vertical line shifted 16px left, 3/4 = horizontal
 * line. Evidence: jump table at 0x0804FE60, camera reads at
 * gEwramData+0xA094 (bgInfo[1]) with ldrsh at +6/+0xA. */
void sub_0804FE20(struct EwramData_EntityData *param_0)
{
    struct Unk_08526064 *entry;
    struct EwramData_unkA078 *bg;
    s32 xoff;
    s32 yoff;
    s32 i;
    s32 j;
    s32 next;
    s32 bound;

    entry = &((struct Unk_08526064 *)0x08526064)[param_0->unk_514.unk_514_16.unk_514];
    xoff = entry->unk_4;
    yoff = entry->unk_5;

    switch ((u8)param_0->unk_4F8.unk_4F8_8.unk_4F8) {
    case 2:
        xoff -= 0x10;
    case 1:
        i = -entry->unk_7 / 2;
        if (i < entry->unk_7 / 2) {
            do {
                sub_08002248((s16)param_0->unk_524.unk_524_16.unk_526 + (s16)(bg = (void *)gEwramData, bg = &((struct EwramData *)bg)->bgInfo[1], bg)->xPos.part16.integer + xoff,
                             param_0->unk_528.unk_528_16.unk_52A + (s16)bg->yPos.part16.integer + yoff - i);
                i += 0x10;
            } while (i < entry->unk_7 / 2);
        }
        break;
    case 3:
    case 4:
        i = -entry->unk_6 / 2;
        if (i < entry->unk_6 / 2) {
            do {
                sub_08002248((s16)param_0->unk_524.unk_524_16.unk_526 + (s16)(bg = (void *)gEwramData, bg = &((struct EwramData *)bg)->bgInfo[1], bg)->xPos.part16.integer + xoff - i,
                             param_0->unk_528.unk_528_16.unk_52A + (s16)bg->yPos.part16.integer + yoff);
                i += 0x10;
            } while (i < entry->unk_6 / 2);
        }
        break;
    case 0:
        i = -entry->unk_6 / 2;
        while (i < entry->unk_6 / 2) {
            j = -entry->unk_7 / 2;
            bound = entry->unk_7 / 2;
            next = i + 0x10;
            if (j < bound) {
                do {
                    sub_08002248((s16)param_0->unk_524.unk_524_16.unk_526 + (s16)(bg = (void *)gEwramData, bg = &((struct EwramData *)bg)->bgInfo[1], bg)->xPos.part16.integer + xoff + i,
                                 param_0->unk_528.unk_528_16.unk_52A + (s16)bg->yPos.part16.integer + yoff + j);
                    j += 0x10;
                } while (j < entry->unk_7 / 2);
            }
            i = next;
        }
        break;
    }
}
