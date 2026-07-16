#include "code_08009A0.h"
#include "code_08001194.h"
#include "code/code_080211F0.h"
#include "code/code_08040A38.h"

extern void sub_0804DF3C(struct EwramData_EntityData *param_0);

/* Initializes object 04, deleting disabled variants, setting the window, and
 * constraining its collision points to the player's camera-relative position.
 * The field accesses follow the ROM's entity and EWRAM layouts. */
void Object04Create(struct EwramData_EntityData *param_0)
{
    u8 *pos;
    s32 active;
    s32 x;
    s32 y;

    if (param_0->unk_514.unk_514_16.unk_514 <= 1)
    {
        if ((gEwramData->unk_60.unk_37E >> (s16)param_0->unk_514.unk_514_16.unk_516) & 1)
        {
            EntityDelete(param_0);
            return;
        }
    }

    sub_0804DF3C(param_0);
    gDisplayRegisters.winOut_L = 0x3F;
    gDisplayRegisters.winOut_H = 0x2F;

    if (param_0->unk_4FC.unk_4FC_8.unk_4FE == 0)
    {
        if ((s16)gEwramData->unk_13110.unk_13110->unk_524.unk_524_16.unk_526 <= *(s16 *)(pos = (u8 *)param_0 + 0x42) + 0x18)
            goto set_active;
        goto outside;
    }
    else
    {
        active = 0;
        if ((s16)gEwramData->unk_13110.unk_13110->unk_524.unk_524_16.unk_526 < *(s16 *)(pos = (u8 *)param_0 + 0x42) - 0x18)
            goto activate;
    }

set_active:
    active = 1;
activate:
    if (active == 0)
        goto outside;
    {
        struct EwramData_EntityData *player;
        struct EwramData_unk13110 *objects;

        param_0->unk_4F8.unk_4F8_32 = 0x30;
        active = 0;
        param_0->unk_4EE = 10;
        SetPlayerInput(1, 0);
        sub_080235C8();
        objects = &gEwramData->unk_13110;
        player = objects->unk_13110;
        if ((s16)player->unk_524.unk_524_16.unk_526 <= 0x77)
        {
            if (player->unk_52C.unk_52C_32 >= 0)
                return;
        }
        else if (player->unk_52C.unk_52C_32 <= 0)
            return;
        player->unk_52C.unk_52C_32 = active;
        objects->unk_13110->unk_534.unk_534_32 = active;
    }
    return;

outside:
    {
        s16 *camera = (s16 *)((u8 *)gEwramData + 0xA094);

        x = *(s16 *)pos + camera[3];
        y = param_0->unk_528.unk_528_16.unk_52A + camera[5];
    }
    sub_08002200(x, y - 8);
    sub_08002200(x, y - 0x18);
    sub_08002200(x, y - 0x28);
    param_0->unk_4F8.unk_4F8_32 = 0;
    switch (param_0->unk_514.unk_514_16.unk_514)
    {
    case 1:
        param_0->unk_4EE = 0x14;
        break;
    case 3:
        param_0->unk_4EE = 0x63;
        break;
    default:
        param_0->unk_4EE = 0;
        break;
    }
}
