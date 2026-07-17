#include "code/code_08039340.h"
#include "code/code_08040A38.h"
#include "code/code_08060B98.h"
#include "gba.h"
#include "macros.h"

#include "structs/ewram.h"
#include "structs/main.h"

extern s32 sub_080698A8(struct EwramData_EntityData *param_0, s32 param_1, s32 param_2, s32 param_3);
extern s32 sub_0806CFFC(s16 param_0, s16 param_1, s16 param_2, s16 param_3);

/* PURPOSE: Runs an enemy's six-step AI routine (appear, drop down, land, then act).
 * Entity AI state machine (6 states via unk_4EF).
 * State 0: set flag bit0 in unk_4FC, show (unk_53C_5 = 1).
 * State 1: advance state, hide (unk_53C_5 = 0), set unk_538 = 0x2000; falls through.
 * State 2: set flags |= 3, clear timers, physics update via sub_080698A8; on ground
 *          contact (bit 2) advance state and apply palette pair 0x0E10F2F8 via
 *          sub_080428B4/sub_08042848, then unk_556 = (unk_556 & ~4) | 2.
 * State 3: flags |= 2, clear timers; when hitbox (x-0x10, y-0x14, 0x20, 0x14)
 *          check sub_0806CFFC passes: clear flags, sub_0803F2C8(0,0,0), advance.
 * State 4: wait for unk_53D_0, then sub_0803F2C8(1,0,1) and advance.
 * State 5: unk_53C_5 tracks sub_0806D128(entity, 4) result.
 * Evidence: jump table at 0x080990FC, literal 0x0E10F2F8 stored to sp slot at entry. */
void sub_080990D8(struct EwramData_EntityData *param_0)
{
    u32 local = 0x0E10F2F8;

    switch (param_0->unk_4EF)
    {
        case 0:
            param_0->unk_4FC.unk_4FC_8.unk_4FC |= 1;
            param_0->unk_53C_5 = 1;
            break;

        case 1:
            param_0->unk_4EF += 1;
            param_0->unk_53C_5 = 0;
            param_0->unk_538.unk_538_32 = 0x2000;
            /* fallthrough */
        case 2:
            param_0->unk_4FC.unk_4FC_8.unk_4FC |= 3;
            param_0->unk_4FC.unk_4FC_8.unk_4FD = 0;
            param_0->unk_549 = 0;
            if (sub_080698A8(param_0, 0x10000, 0xFFF00000, 0x40000) & 4)
            {
                param_0->unk_4EF += 1;
                sub_080428B4(param_0, &local);
                sub_08042848(param_0, &local);
                param_0->unk_554.unk_556 = (param_0->unk_554.unk_556 & ~4) | 2;
            }
            break;

        case 3:
            param_0->unk_4FC.unk_4FC_8.unk_4FC |= 2;
            param_0->unk_4FC.unk_4FC_8.unk_4FD = 0;
            param_0->unk_549 = 0;
            if (sub_0806CFFC(param_0->unk_524.unk_524_16.unk_526 - 0x10, param_0->unk_528.unk_528_16.unk_52A - 0x14, 0x20, 0x14) != 0)
            {
                param_0->unk_4FC.unk_4FC_8.unk_4FC = 0;
                sub_0803F2C8(param_0, 0, 0, 0);
                param_0->unk_4EF += 1;
            }
            break;

        case 4:
            if (param_0->unk_53D_0)
            {
                sub_0803F2C8(param_0, 1, 0, 1);
                param_0->unk_4EF += 1;
            }
            break;

        case 5:
            if (sub_0806D128(param_0, 4) != 0)
            {
                param_0->unk_53C_5 = 1;
            }
            else
            {
                param_0->unk_53C_5 = 0;
            }
            break;
    }
}
