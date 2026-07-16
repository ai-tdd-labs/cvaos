#include "types.h"
#include "structs/ewram.h"
#include "code/code_08039340.h"

/* Candidate for sub_0809F0D0 @ 0x809f0d0 */

extern struct EwramData_EntityData *sub_0806DFF8(void *updateFunc);
extern void sub_0809FE78(struct EwramData_EntityData *param_0);

/**
 * Spawns a child entity (update func sub_0809FE78) from a parent entity.
 * param_1/param_2 are the fixed-point x/y offsets (stored to unk_4F8/unk_4FC);
 * param_3 (0..4) selects an additional per-variant offset tweak and is stored
 * as the entity subtype; param_4 is forwarded to the OAM/graphics setup
 * sub_0803B924 with tile data at 0x082258FC. Copies palette/priority bytes
 * from the parent, links the child back to the parent (unk_4F4), clears two
 * flag bits, sets display flags 4|2 and installs drawFunc sub_0803B9D0.
 * Returns the new entity or NULL when allocation failed.
 * Evidence: asm/code/code_08090914.s sub_0809F0D0.
 */
struct EwramData_EntityData *sub_0809F0D0(struct EwramData_EntityData *param_0, s32 param_1, s32 param_2, u32 param_3, s32 param_4)
{
    struct EwramData_EntityData *entity;

    entity = sub_0806DFF8(sub_0809FE78);
    if (entity != NULL)
    {
    entity->unk_4F8.unk_4F8_32 = param_1;
    entity->unk_4FC.unk_4FC_32 = param_2;

    switch (param_3)
    {
        case 0:
            entity->unk_4F8.unk_4F8_32 += 0x10000;
            entity->unk_4FC.unk_4FC_32 += 0xFFDB0000;
            break;
        case 1:
            entity->unk_4F8.unk_4F8_32 += 0xFFEA0000;
            entity->unk_4FC.unk_4FC_32 += 0x20000;
            break;
        case 2:
            entity->unk_4F8.unk_4F8_32 += 0xFFFD0000;
            entity->unk_4FC.unk_4FC_32 += 0xFFEB0000;
            break;
        case 3:
            entity->unk_4F8.unk_4F8_32 += 0x1C0000;
            entity->unk_4FC.unk_4FC_32 += 0xFFFF0000;
            break;
        case 4:
            entity->unk_4F8.unk_4F8_32 += 0xFFFD0000;
            entity->unk_4FC.unk_4FC_32 += 0x140000;
            break;
    }

    entity->unk_524.unk_524_32 = param_0->unk_524.unk_524_32 + entity->unk_4F8.unk_4F8_32;
    entity->unk_528.unk_528_32 = param_0->unk_528.unk_528_32 + entity->unk_4FC.unk_4FC_32;
    entity->unk_504.unk_504_8.unk_504 = param_3;
    entity->unk_540 = param_0->unk_540 + 4;
    entity->unk_510.unk_510_8.unk_510 = param_0->unk_510.unk_510_8.unk_510;
    sub_0803B924(entity, (u8 *)0x082258FC, param_4, entity->unk_510.unk_510_8.unk_510);
    entity->unk_549 = param_3 + 4;
    entity->unk_53F = 2;
    entity->unk_518.unk_518_8.unk_51A = param_0->unk_518.unk_518_8.unk_51A;
    entity->unk_4F4.unk_4F4_entity = param_0;
    entity->unk_53D_1 = 0;
    entity->unk_53C_6 = 0;
    entity->unk_554.unk_556 |= 4;
    entity->unk_554.unk_556 |= 2;
    entity->drawFunc = (u32 *)sub_0803B9D0;
    return entity;
    }
    return NULL;
}
