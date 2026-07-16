#include "code_08009A0.h"
#include "code/code_080211F0.h"
#include "code/code_08039340.h"

/* Candidate for sub_08059FB4 @ 0x8059fb4.
 * Callee signatures come from include/code_08009A0.h (sub_080009E4),
 * include/code/code_080211F0.h (sub_08021278/sub_0802138C/sub_080213A4),
 * include/code/code_08039340.h (sub_0803E238/sub_0803E86C).
 */

/**
 * Per-frame update for an entity orbiting/following a parent entity
 * (familiar-style). Advances position by velocity; while active
 * (unk_4EF == 0) recomputes velocity so the entity homes onto a point
 * at radius (unk_502 * 0x1E0000 + 0x100000) around the parent's angle
 * (parent->unk_4FC); unless in state 2, updates its OAM/graphics via
 * sub_0803E238 with flags from the unk_53C bitfield; computes
 * screen-relative coordinates against camera bgInfo[1]; in state 2,
 * registers itself (sub_08021278) when within 0x1FFFFF of the player;
 * if it is the tracked entity (unk_13190), forwards its screen position
 * to sub_0802138C/sub_080213A4.
 * Evidence: reference asm at 0x08059FB4 (asm/code/code_08050A3C.s).
 */
void sub_08059FB4(struct EwramData_EntityData *ent)
{
    struct EwramData_unkA078 *bg = &gEwramData->bgInfo[1];
    struct EwramData_EntityData *parent;
    struct EwramData_EntityData *player;
    s32 x;
    s32 y;
    s32 d;

    parent = ent->unk_504.unk_504_entity;
    ent->unk_4F4.unk_4F4_32 += ent->unk_52C.unk_52C_32;
    ent->unk_4F8.unk_4F8_32 += ent->unk_530.unk_530_32;

    if (ent->unk_4EF == 0)
    {
        x = sub_080009E4(parent->unk_4FC.unk_4FC_16.unk_4FC + 0x4000);
        x = sub_0803E86C(x, (s8)ent->unk_500.unk_500_8.unk_502 * 0x1E0000 + 0x100000);
        y = sub_080009E4(parent->unk_4FC.unk_4FC_16.unk_4FC);
        y = sub_0803E86C(y, (s8)ent->unk_500.unk_500_8.unk_502 * 0x1E0000 + 0x100000);
        x += parent->unk_4F4.unk_4F4_32;
        y += parent->unk_4F8.unk_4F8_32;
        ent->unk_52C.unk_52C_32 = x - ent->unk_4F4.unk_4F4_32;
        ent->unk_530.unk_530_32 = y - ent->unk_4F8.unk_4F8_32;
    }

    if ((s8)ent->unk_500.unk_500_8.unk_502 != 2)
    {
        sub_0803E238(parent->unk_4FC.unk_4FC_16.unk_4FC, 0x10000, 0x10000,
                     ent->unk_53C_6, ent->unk_53C_7, ent->unk_53C_0);
    }

    ent->unk_524.unk_524_32 = ent->unk_4F4.unk_4F4_32 - bg->xPos.whole;
    ent->unk_528.unk_528_32 = ent->unk_4F8.unk_4F8_32 - bg->yPos.whole;
    ent->unk_508.unk_508_32 = ent->unk_4F4.unk_4F4_32 - bg->xPos.whole;
    ent->unk_50C.unk_50C_32 = ent->unk_4F8.unk_4F8_32 - bg->yPos.whole;

    if ((s8)ent->unk_500.unk_500_8.unk_502 == 2)
    {
        player = gEwramData->unk_13110.unk_13110;
        d = player->unk_524.unk_524_32 - ent->unk_524.unk_524_32;
        if (d < 0)
        {
            d = -d;
        }
        if (d <= 0x1FFFFF)
        {
            d = player->unk_528.unk_528_32 - ent->unk_528.unk_528_32;
            if (d < 0)
            {
                d = -d;
            }
            if (d <= 0x1FFFFF)
            {
                sub_08021278(ent, 1);
            }
        }
    }

    if (gEwramData->unk_13110.unk_13190 == ent)
    {
        sub_0802138C((s16)ent->unk_524.unk_524_16.unk_524);
        sub_080213A4((s16)ent->unk_528.unk_528_16.unk_528);
    }
}
