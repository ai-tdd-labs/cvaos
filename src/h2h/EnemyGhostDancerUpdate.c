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

/* Callees local to this TU (asm/code/code_080C0A1C.s), not yet decompiled. */
extern void sub_080C336C(struct EwramData_EntityData *);
extern void sub_080C3190(struct EwramData_EntityData *);
extern void sub_080C327C(struct EwramData_EntityData *);
extern s32 sub_0806AD24(struct EwramData_EntityData *);
extern void sub_0806DF20(struct EwramData_EntityData *);
extern void sub_080421AC(void *, struct EwramData_EntityData *);

/**
 * PURPOSE: Runs the Ghost Dancer enemy's behavior each frame.
 *
 * @brief 80C2F0C | Per-frame update for the Ghost Dancer enemy.
 *
 * State (unk_4EE) 5 hands off to sub_080C336C and returns. Otherwise it
 * refreshes a status bit from sub_0806D128, and (unless state 3) advances a
 * small animation state machine keyed on unk_4FC/unk_4FD that toggles the
 * unk_53E_1 flag and steps a frame counter. It then either draws (sub_080421AC)
 * when sub_0806AD24 reports done, or runs the per-state logic
 * (sub_080C3190 for states 1/2, sub_080C327C for state 3), post-updates
 * (sub_0806DF20) and draws.
 */
void EnemyGhostDancerUpdate(struct EwramData_EntityData *param_0)
{
    u32 sp0[4];

    if (param_0->unk_4EE == 5)
    {
        sub_080C336C(param_0);
        return;
    }

    param_0->unk_53C_5 = sub_0806D128(param_0, 4);

    if (param_0->unk_4EE != 3)
    {
        switch (param_0->unk_4FC.unk_4FC_8.unk_4FC)
        {
            case 0:
                param_0->unk_53E_1 = 0;
                break;
            case 1:
                if (param_0->unk_4FC.unk_4FC_8.unk_4FD & 1)
                    param_0->unk_53E_1 = 0;
                else
                    param_0->unk_53E_1 = 1;
                if ((s8) param_0->unk_4FC.unk_4FC_8.unk_4FD++ > 0x20)
                {
                    param_0->unk_4FC.unk_4FC_8.unk_4FC++;
                    param_0->unk_4FC.unk_4FC_8.unk_4FD = 0;
                }
                break;
            case 2:
                param_0->unk_53E_1 = 1;
                break;
            case 3:
                if (param_0->unk_4FC.unk_4FC_8.unk_4FD & 1)
                    param_0->unk_53E_1 = 1;
                else
                    param_0->unk_53E_1 = 0;
                if ((s8) param_0->unk_4FC.unk_4FC_8.unk_4FD++ > 0x20)
                {
                    param_0->unk_4FC.unk_4FC_8.unk_4FC = 0;
                    param_0->unk_4FC.unk_4FC_8.unk_4FD = 0;
                }
                break;
        }
    }

    if (sub_0806AD24(param_0) != 0)
    {
        if (param_0->unk_4EE != 3)
            sub_080421AC(&sp0, param_0);
    }
    else
    {
        switch (param_0->unk_4EE)
        {
            case 1:
            case 2:
                sub_080C3190(param_0);
                break;
            case 3:
                sub_080C327C(param_0);
                break;
        }
        sub_0806DF20(param_0);
        if (param_0->unk_4EE != 3)
            sub_080421AC(&sp0, param_0);
    }
}
