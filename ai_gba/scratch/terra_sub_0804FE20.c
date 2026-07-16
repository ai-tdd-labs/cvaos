#include "gba.h"
#include "structs/ewram.h"
#include "code_08001194.h"
#include "code/code_08040A38.h"

/* A 12-byte collision-footprint descriptor stored in ROM. */
struct HitboxDesc {
    u8 pad_0[4];
    s8 unk_4;
    s8 unk_5;
    u8 unk_6;
    u8 unk_7;
    u8 pad_8[4];
};

/* Clear the room-grid cells covered by an entity's collision footprint. */
void sub_0804FE20(struct EwramData_EntityData *entity)
{
    struct HitboxDesc *desc =
        &((struct HitboxDesc *)0x08526064)[entity->unk_514.unk_514_16.unk_514];
    s32 ox = desc->unk_4;
    s32 oy = desc->unk_5;
    struct EwramData_unkA078 *bg;
    s32 i;
    s32 j;

    /* The nested assignment preserves agbcc's required global-pointer coalescing. */
    switch ((u8)entity->unk_4F8.unk_4F8_8.unk_4F8) {
        case 2:
            ox -= 0x10;
            /* fallthrough */
        case 1:
            for (i = -(s32)desc->unk_7 / 2; i < (desc->unk_7 >> 1); i += 0x10) {
                sub_08002248(
                    (s16)entity->unk_524.unk_524_16.unk_526 + (s16)(bg = (struct EwramData_unkA078 *)((u8 *)(bg = (struct EwramData_unkA078 *)gEwramData) + 0xA094))->xPos.part16.integer + ox,
                    (s16)entity->unk_528.unk_528_16.unk_52A + (s16)bg->yPos.part16.integer + oy - i);
            }
            break;
        case 3:
        case 4:
            for (i = -(s32)desc->unk_6 / 2; i < (desc->unk_6 >> 1); i += 0x10) {
                sub_08002248(
                    (s16)entity->unk_524.unk_524_16.unk_526 + (s16)(bg = (struct EwramData_unkA078 *)((u8 *)(bg = (struct EwramData_unkA078 *)gEwramData) + 0xA094))->xPos.part16.integer + ox - i,
                    (s16)entity->unk_528.unk_528_16.unk_52A + (s16)bg->yPos.part16.integer + oy);
            }
            break;
        case 0:
            for (i = -(s32)desc->unk_6 / 2; i < (desc->unk_6 >> 1); i += 0x10) {
                for (j = -(s32)desc->unk_7 / 2; j < (desc->unk_7 >> 1); j += 0x10) {
                    sub_08002248(
                        (s16)entity->unk_524.unk_524_16.unk_526 + (s16)(bg = (struct EwramData_unkA078 *)((u8 *)(bg = (struct EwramData_unkA078 *)gEwramData) + 0xA094))->xPos.part16.integer + ox + i,
                        (s16)entity->unk_528.unk_528_16.unk_52A + (s16)bg->yPos.part16.integer + oy + j);
                }
            }
            break;
    }
}
