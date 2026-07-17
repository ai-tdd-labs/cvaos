#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08002454.h"
#include "code_08005894.h"
#include "code_08008750.h"
#include "code_080096AC.h"
#include "code_0800B700.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_08014548.h"
#include "code/code_080211F0.h"
#include "code_08032444.h"
#include "code_08032E4C.h"
#include "code_08033CAC.h"
#include "code_08035930.h"
#include "code/code_08039340.h"
#include "code/code_08040A38.h"
#include "gba.h"
#include "macros.h"

#include "structs/ewram.h"
#include "structs/main.h"

extern void sub_0804DF3C(struct EwramData_EntityData *param_0);

/**
 * PURPOSE: Runs the scripted object that stops the player at a set spot in a room (object 04).
 *
 * @brief 4E770 | Object 04 create/update handler.
 *
 * If the object's sub-type (unk_514) is <= 1 and the room-event bit
 * (gEwramData->unk_60.unk_37E >> unk_516) is set, the entity is deleted.
 * Otherwise it runs sub_0804DF3C, forces the window-out register bytes,
 * and checks whether the player has crossed the object's X position
 * (+0x18 when unk_4FE == 0, -0x18 otherwise). When crossed, it freezes
 * the player (SetPlayerInput(1, 0), timer 0x30, pose 0xA) and zeroes the
 * player's X velocity/position fraction once the player passes X == 0x77.
 * When not crossed, it draws three sprites (sub_08002200) at
 * camera-relative coordinates and picks the next pose from the sub-type.
 */
void Object04Create(struct EwramData_EntityData *param_0)
{
    s32 flag;
    s32 pxv;
    s32 exv;
    s32 x;
    s32 y;
    struct EwramData_unk13110 *lists;
    struct EwramData_EntityData *player;
    struct EwramData_unkA078 *bg;

    if (param_0->unk_514.unk_514_16.unk_514 <= 1) {
        if ((gEwramData->unk_60.unk_37E >> param_0->unk_514.unk_514_16.unk_516) & 1) {
            EntityDelete(param_0);
            return;
        }
    }

    sub_0804DF3C(param_0);
    gDisplayRegisters.winOut_L = 0x3F;
    gDisplayRegisters.winOut_H = 0x2F;

    if (param_0->unk_4FC.unk_4FC_8.unk_4FE == 0) {
        pxv = (s16)gEwramData->unk_13110.unk_13110->unk_524.unk_524_16.unk_526;
        exv = (s16)param_0->unk_524.unk_524_16.unk_526 + 0x18;
        if (pxv <= exv) {
            goto set_crossed;
        }
        goto not_crossed;
    } else {
        pxv = (s16)gEwramData->unk_13110.unk_13110->unk_524.unk_524_16.unk_526;
        exv = (s16)param_0->unk_524.unk_524_16.unk_526 - 0x18;
        flag = 0;
        if (pxv >= exv) {
set_crossed:
            flag = 1;
        }
    }

    if (flag != 0) {
        param_0->unk_4F8.unk_4F8_32 = 0x30;
        flag = 0;
        param_0->unk_4EE = 0xA;
        SetPlayerInput(1, 0);
        sub_080235C8();
        lists = &gEwramData->unk_13110;
        player = lists->unk_13110;
        if ((s16)player->unk_524.unk_524_16.unk_526 <= 0x77) {
            if (player->unk_52C.unk_52C_32 >= 0) {
                return;
            }
        } else {
            if (player->unk_52C.unk_52C_32 <= 0) {
                return;
            }
        }
        player->unk_52C.unk_52C_32 = flag;
        lists->unk_13110->unk_534.unk_534_32 = flag;
    } else {
not_crossed:
        x = (s16)param_0->unk_524.unk_524_16.unk_526 +
            (s16)(bg = &gEwramData->bgInfo[1])->xPos.part16.integer;
        y = param_0->unk_528.unk_528_16.unk_52A + (s16)bg->yPos.part16.integer;
        sub_08002200(x, y - 8);
        sub_08002200(x, y - 0x18);
        y -= 0x28;
        sub_08002200(x, y);
        param_0->unk_4F8.unk_4F8_32 = 0;
        if (param_0->unk_514.unk_514_16.unk_514 == 1) {
            goto pose_14;
        }
        if (param_0->unk_514.unk_514_16.unk_514 == 3) {
            goto pose_63;
        }
        param_0->unk_4EE = 0;
        return;
pose_14:
        param_0->unk_4EE = 0x14;
        return;
pose_63:
        param_0->unk_4EE = 0x63;
    }
}
