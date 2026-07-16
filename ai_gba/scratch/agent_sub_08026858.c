#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_08014548.h"
#include "code_08032444.h"
#include "code_08032E4C.h"
#include "code_08033CAC.h"
#include "code_08035930.h"
#include "code/code_08039340.h"
#include "code/code_08040A38.h"
#include "code/code_08060B98.h"
#include "code_080D73B8.h"
#include "gba.h"
#include "macros.h"
#include "agb_sram.h"
#include "syscalls.h"

#include "constants/main.h"

#include "structs/agb_sram.h"
#include "structs/ewram.h"
#include "structs/main.h"

/* Truncate a 16.16 fixed-point value toward zero to its integer part. */
#define FIXED_INT_TOWARD_ZERO(v) (((v) < 0) ? -(-(v) >> 0x10) : ((v) >> 0x10))

/**
 * @brief 26858 | Per-frame update for an orbiting red-soul satellite entity.
 *
 * The entity tracks a parent entity (unk_4F8_entity). If the parent has
 * reached state 4, the satellite unregisters itself from the active
 * red-soul table (gEwramData->unk_13110), decrements the active count and
 * deletes itself. Otherwise a small state machine on unk_4EE runs:
 * state 0 plays a sound (sub_08042A54(1, 0x3C)), sets up an effect via
 * sub_0804277C/sub_08042884, sets display bits 2|4 on unk_556 and advances
 * to state 1; state 1 waits for the parent to reach state 2, then clears
 * bit 2 of unk_556 and advances; state 2 re-sets bit 2 once the parent is
 * in state 3. The entity is then positioned on a circle of radius 80
 * around the parent using sub_080009E4 (sine lookup) at the parent's angle
 * (unk_510) and angle - 0x4000. Finally, if the parent's unk_508 exceeds
 * 0xFFFF, the parent's unk_53C_5 flag is set when the satellite's vertical
 * screen offset (unk_52A) lies outside [-|dyInt|, |dyInt| + 0xA0] and
 * cleared otherwise (evidence: reference asm at 0x08026858, matching the
 * red-soul table idiom used elsewhere in this TU).
 */
void sub_08026858(struct EwramData_EntityData *param_0)
{
    struct EwramData_EntityData *temp_r7;
    s32 temp_r5;
    s32 temp_r4;
    s32 temp_r2;

    temp_r7 = param_0->unk_4F8.unk_4F8_entity;
    param_0->unk_53D_2 = 1;
    if (temp_r7->unk_4EE == 4)
    {
        gEwramData->unk_13110.activeRedSoulEntities[param_0->unk_4FC.unk_4FC_16.unk_4FE[0]] = NULL;
        gEwramData->unk_13110.nbrActiveRedSoulEntities -= 1;
        EntityDelete(param_0);
        return;
    }

    switch (param_0->unk_4EE)
    {
        case 0:
            sub_08042A54(1, 0x3C);
            sub_0804277C(param_0, 5, NULL, 0);
            sub_08042884(param_0, 0x4040E0E0);
            param_0->unk_554.unk_556 |= 2;
            param_0->unk_554.unk_556 |= 4;
            param_0->unk_4EE = 1;
            break;

        case 1:
            if (temp_r7->unk_4EE == 2)
            {
                param_0->unk_554.unk_556 &= 0xFD;
                param_0->unk_4EE += 1;
            }
            break;

        case 2:
            if (temp_r7->unk_4EE == 3)
            {
                param_0->unk_554.unk_556 |= 2;
            }
            break;
    }

    temp_r5 = temp_r7->unk_510.unk_510_16.unk_510 - 0x4000;
    temp_r4 = sub_080009E4(temp_r7->unk_510.unk_510_16.unk_510) * 80;
    temp_r2 = sub_080009E4(temp_r5) * 80;
    param_0->unk_524.unk_524_32 = temp_r7->unk_524.unk_524_32 + temp_r4;
    param_0->unk_528.unk_528_32 = temp_r7->unk_528.unk_528_32 + temp_r2;

    temp_r2 = (FIXED_INT_TOWARD_ZERO(temp_r2) < 0) ? -FIXED_INT_TOWARD_ZERO(temp_r2) : FIXED_INT_TOWARD_ZERO(temp_r2);
    if (temp_r7->unk_508.unk_508_32 > 0xFFFF)
    {
        if ((param_0->unk_528.unk_528_16.unk_52A < -temp_r2) || (param_0->unk_528.unk_528_16.unk_52A > temp_r2 + 0xA0))
        {
            temp_r7->unk_53C_5 = 1;
        }
        else
        {
            temp_r7->unk_53C_5 = 0;
        }
    }
}
