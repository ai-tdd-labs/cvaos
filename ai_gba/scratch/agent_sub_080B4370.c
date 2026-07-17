#include "code_08009A0.h"
#include "code/code_08039340.h"

extern u8 gUnk_085287CD[]; /* byte table at 0x085287CD (pose offset per parent unk_4F6) */

/**
 * @brief B4370 | Update function for a child/attachment entity that mirrors its
 * parent entity (pointer stored in unk_4FC): a 7-state machine (init sprite via
 * sub_0803B924 with graphics at 0x08244220, wait for parent state 3, a timed
 * countdown toggling pose 0x1B/0x12, a blink phase toggling sprite byte flag
 * 0x20 at 0x53C, then deletion), and every frame copies the parent's position
 * (unk_524/unk_528) and 0x53E bits 3-6, finally animating via sub_0803F2C8
 * with pose = unk_500 + byte table 0x085287CD indexed by parent's (s8)unk_4F6.
 *
 * @param param_0 To document
 */
void sub_080B4370(struct EwramData_EntityData *param_0)
{
    struct EwramData_EntityData *ent;

    ent = (struct EwramData_EntityData *)param_0->unk_4FC.unk_4FC_32;
    if (ent->unk_500.unk_500_16.unk_502 & 2)
    {
        param_0->unk_4EE = 6;
    }

    switch (param_0->unk_4EE)
    {
        case 0:
            *((u8 *)param_0 + 0x58) |= 0x40;
            sub_0803B924(param_0, (u8 *)0x08244220, ent->unk_4F8.unk_4F8_arr8[3], ent->unk_510.unk_510_8.unk_510);
            param_0->drawFunc = (u32 *)sub_0803B9D0;
            param_0->unk_540 = 0x1C;
            param_0->unk_500.unk_500_8.unk_500 = 0x1B;
            param_0->unk_4EE = 1;
            /* fallthrough */
        case 1:
            if (ent->unk_4EE == 3)
            {
                param_0->unk_4EE = 2;
            }
            break;

        case 2:
            param_0->unk_4F1 = 0x20;
            param_0->unk_4EE = 3;
            /* fallthrough */
        case 3:
            if (param_0->unk_4F1 & 2)
            {
                param_0->unk_500.unk_500_8.unk_500 = 0x1B;
            }
            else
            {
                param_0->unk_500.unk_500_8.unk_500 = 0x12;
            }
            if (param_0->unk_4F1 != 0)
            {
                param_0->unk_4F1 -= 1;
            }
            else
            {
                param_0->unk_500.unk_500_8.unk_500 = 0x12;
                param_0->unk_4F1 = 8;
                param_0->unk_4EE = 4;
            }
            break;

        case 4:
            if (param_0->unk_4F1 & 1)
            {
                param_0->unk_53C_5 = 1;
            }
            else
            {
                param_0->unk_53C_5 = 0;
            }
            if (param_0->unk_4F1 != 0)
            {
                param_0->unk_4F1 -= 1;
            }
            else
            {
                param_0->unk_53C_5 = 1;
                param_0->unk_4EE = 5;
            }
            break;

        case 6:
            EntityDelete(param_0);
            return;
    }

    param_0->unk_524.unk_524_32 = ent->unk_524.unk_524_32;
    param_0->unk_528.unk_528_32 = ent->unk_528.unk_528_32;
    param_0->unk_53E_3 = ent->unk_53E_3;
    sub_0803F2C8(param_0, param_0->unk_500.unk_500_8.unk_500 + gUnk_085287CD[(s8)ent->unk_4F4.unk_4F4_8.unk_4F6], 2, 0);
    sub_0803F17C(param_0);
}
