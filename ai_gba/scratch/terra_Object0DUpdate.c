#include "code/code_08040A38.h"
#include "code/code_080211F0.h"
#include "code/code_08039340.h"
#include "code_080D73B8.h"

extern u16 sub_080421AC(void *param_0, struct EwramData_EntityData *param_1);

void Object0DUpdate(struct EwramData_EntityData *param_0)
{
    u16 sp8[8];
    s32 velocity;

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
            velocity = 0x100;
            PlaySong(0x112);
            if (gEwramData->unk_13110.unk_13110->unk_524.unk_524_32 < param_0->unk_524.unk_524_32)
            {
                velocity = -velocity;
            }
            param_0->unk_500.unk_500_32 = velocity;
            param_0->unk_504.unk_504_32 = 0x100;
            param_0->unk_4EF = 1;
        }
    }
    else if (gEwramData->unk_13110.unk_13190 != param_0)
    {
        param_0->unk_4EF = 0;
    }

    if (sub_080421AC(&sp8, param_0) != 0)
    {
        if (sp8[0] & 0x1A)
        {
            velocity = 0x100;
            PlaySong(0x112);
            if (gEwramData->unk_13110.unk_13110->unk_524.unk_524_32 < param_0->unk_524.unk_524_32)
            {
                velocity = -velocity;
            }
            param_0->unk_500.unk_500_32 = velocity;
            param_0->unk_504.unk_504_32 = 0x100;
        }
    }

    if ((s32)param_0->unk_4FC.unk_4FC_32 > 0)
    {
        param_0->unk_500.unk_500_32 -= 0x10;
        param_0->unk_4FC.unk_4FC_32 += param_0->unk_500.unk_500_32;
        if ((s32)param_0->unk_4FC.unk_4FC_32 <= 0)
        {
            if (param_0->unk_504.unk_504_32 != 0)
            {
                param_0->unk_504.unk_504_32 -= 0x20;
            }
        }
    }
    else if ((s32)param_0->unk_4FC.unk_4FC_32 < 0)
    {
        param_0->unk_500.unk_500_32 += 0x10;
        param_0->unk_4FC.unk_4FC_32 += param_0->unk_500.unk_500_32;
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
        param_0->unk_4FC.unk_4FC_32 += param_0->unk_500.unk_500_32;
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
