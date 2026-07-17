#include "code/code_08040A38.h"
#include "code/code_080211F0.h"
#include "code/code_08039340.h"
#include "code_080D73B8.h"

extern u16 sub_080421AC(void *param_0, struct EwramData_EntityData *param_1);

/**
 * PURPOSE: Runs the small object (0x0D) that gets knocked away when the player touches or hits it.
 *
 * @brief 507BC | Update function for object 0x0D.
 *
 * Sets the sprite-flip flag unk_53C_5 from the signed field unk_52A
 * (> 0xA8), runs the shared entity tick sub_08021278, then manages the
 * byte unk_4EF: when it is 0 and this entity is the one referenced by
 * gEwramData->unk_13110.unk_13190, plays song 0x112 and kicks the object
 * away from the unk_13110 entity with acceleration +/-0x100 (cap 0x100).
 * A collision query (sub_080421AC) whose result halfword hits mask 0x1A
 * triggers the same knockback. Finally velocity unk_4FC is integrated with
 * decaying acceleration unk_500 (friction 0x10/frame, cap unk_504 decaying
 * by 0x20 when the velocity reaches/crosses zero), acceleration is clamped
 * to +/-unk_504, velocity to +/-0x1000, and passed to sub_0803E058.
 * Evidence: reference asm at 0x080507BC; the final
 * sub_0803E058(v, 0x10000, 0x10000, 0, 0, unk_53C_0) mirrors the matched
 * calls in src/code_08008750.c.
 */
void Object0DUpdate(struct EwramData_EntityData *param_0)
{
    u32 sp8[4];
    s32 temp;
    s32 vel;

    if (param_0->unk_528.unk_528_16.unk_52A > 0xA8)
    {
        param_0->unk_53C_5 = 1;
    }
    else
    {
        param_0->unk_53C_5 = 0;
    }

    sub_08021278(param_0, 0);

    if (param_0->unk_4EF == 0)
    {
        if (gEwramData->unk_13110.unk_13190 == param_0)
        {
            temp = 0x100;
            PlaySong(0x112);
            if (gEwramData->unk_13110.unk_13110->unk_524.unk_524_32 < param_0->unk_524.unk_524_32)
            {
                temp = -temp;
            }
            param_0->unk_500.unk_500_32 = temp;
            param_0->unk_504.unk_504_32 = 0x100;
            param_0->unk_4EF = 1;
        }
    }
    else if (gEwramData->unk_13110.unk_13190 != param_0)
    {
        param_0->unk_4EF = 0;
    }

    if (sub_080421AC(sp8, param_0) != 0 && (*(u16 *)sp8 & 0x1A))
    {
        temp = 0x100;
        PlaySong(0x112);
        if (gEwramData->unk_13110.unk_13110->unk_524.unk_524_32 < param_0->unk_524.unk_524_32)
        {
            temp = -temp;
        }
        param_0->unk_500.unk_500_32 = temp;
        param_0->unk_504.unk_504_32 = 0x100;
    }

    vel = param_0->unk_4FC.unk_4FC_32;
    if (vel > 0)
    {
        param_0->unk_500.unk_500_32 -= 0x10;
        param_0->unk_4FC.unk_4FC_32 = vel + param_0->unk_500.unk_500_32;
        if ((s32)param_0->unk_4FC.unk_4FC_32 <= 0)
        {
            if (param_0->unk_504.unk_504_32 != 0)
            {
                param_0->unk_504.unk_504_32 -= 0x20;
            }
        }
    }
    else if (vel < 0)
    {
        param_0->unk_500.unk_500_32 += 0x10;
        param_0->unk_4FC.unk_4FC_32 = vel + param_0->unk_500.unk_500_32;
        if ((s32)param_0->unk_4FC.unk_4FC_32 >= 0)
        {
            if (param_0->unk_504.unk_504_32 != 0)
            {
                param_0->unk_504.unk_504_32 -= 0x20;
            }
        }
    }
    else
    {
        param_0->unk_4FC.unk_4FC_32 = vel + param_0->unk_500.unk_500_32;
    }

    if (param_0->unk_500.unk_500_32 > param_0->unk_504.unk_504_32)
    {
        param_0->unk_500.unk_500_32 = param_0->unk_504.unk_504_32;
    }
    else if (param_0->unk_500.unk_500_32 < -param_0->unk_504.unk_504_32)
    {
        param_0->unk_500.unk_500_32 = -param_0->unk_504.unk_504_32;
    }

    if ((s32)param_0->unk_4FC.unk_4FC_32 > 0x1000)
    {
        param_0->unk_4FC.unk_4FC_32 = 0x1000;
    }
    else if ((s32)param_0->unk_4FC.unk_4FC_32 < -0x1000)
    {
        param_0->unk_4FC.unk_4FC_32 = -0x1000;
    }

    sub_0803E058(param_0->unk_4FC.unk_4FC_32, 0x10000, 0x10000, 0, 0, param_0->unk_53C_0);
}
