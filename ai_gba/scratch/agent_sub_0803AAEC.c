#include "code/code_08039340.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_08014548.h"
#include "code/code_080211F0.h"
#include "code_08032444.h"
#include "code_08032E4C.h"
#include "code_08033CAC.h"
#include "code_08035930.h"
#include "code/code_08040A38.h"
#include "code/code_08060B98.h"
#include "code_080D73B8.h"
#include "code/code_080E032C.h"
#include "gba.h"
#include "macros.h"
#include "agb_sram.h"
#include "syscalls.h"

#include "constants/main.h"

#include "data/data_0E0334.h"
#include "data/data_0E3464.h"

#include "structs/agb_sram.h"
#include "structs/ewram.h"
#include "structs/main.h"

// TODO: is this inline necessary?
static inline s32 sub_0803AAEC_inline_0(u32 temp_r6)
{
    return gEwramData->unk_10170[temp_r6].unk_0;
}

/*
 * Detaches/removes an entity's slot from the active linked list.
 * If the entity's slot byte (param_0->unk_548) is 0xFF it is already free -> return.
 * Optionally frees the associated resource (sub_0803943C/sub_0803D924) when param_1 != 0.
 * Then unlinks the slot node from the doubly-linked free/active list built inside
 * gEwramData->unk_10170[], updating head (unk_11076) / tail (unk_11074) as needed,
 * marks the slot free (0xFF) and notifies via sub_08000C28.
 */
void sub_0803AAEC(struct EwramData_EntityData *param_0, u32 param_1)
{
    s32 temp_r4;
    s16 temp_r0;
    s16 temp_r1_2;
    s16 temp_r3;
    u32 temp_r6;

    if (param_0->unk_548 == 0xFF)
    {
        return;
    }

    if (param_1 != 0)
    {
        temp_r4 = gEwramData->unk_10170[param_0->unk_548].unk_8;
        sub_0803943C(temp_r4);
        sub_0803D924(temp_r4);
    }

    temp_r6 = param_0->unk_548;
    if (temp_r6 < 0xF0)
    {
        gEwramData->unk_10170[temp_r6].unk_4 = -1;
        gEwramData->unk_10170[temp_r6].unk_8 = -1;
        gEwramData->unk_10170[temp_r6].unk_C = NULL;
        temp_r0 = gEwramData->unk_11074;
        temp_r3 = sub_0803AAEC_inline_0(temp_r6);
        temp_r1_2 = gEwramData->unk_10170[temp_r6].unk_2;
        if (temp_r6 == gEwramData->unk_11076)
        {
            gEwramData->unk_11076 = temp_r1_2;
            if (temp_r1_2 != -1)
            {
                gEwramData->unk_10170[temp_r1_2].unk_0 = -1;
            }
        }
        else
        {
            gEwramData->unk_10170[temp_r3].unk_2 = temp_r1_2;
            if (temp_r1_2 != -1)
            {
                gEwramData->unk_10170[temp_r1_2].unk_0 = temp_r3;
            }
        }

        if (temp_r0 != -1)
        {
            gEwramData->unk_10170[temp_r0].unk_0 = temp_r6 & 0xFF;
        }
        gEwramData->unk_10170[temp_r6].unk_2 = temp_r0;
        gEwramData->unk_10170[temp_r6].unk_0 = -1;
        gEwramData->unk_11074 = temp_r6;
    }
    param_0->unk_548 = 0xFF;
    sub_08000C28(param_0);
}
