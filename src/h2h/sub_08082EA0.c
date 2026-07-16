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
#include "code_080109F4.h"
#include "code_08011DD0.h"
#include "code_08012744.h"
#include "code/code_08014548.h"
#include "code/code_080211F0.h"
#include "code_08032444.h"
#include "code_08032E4C.h"
#include "code_08033CAC.h"
#include "code_08035930.h"
#include "code/code_08039340.h"
#include "code/code_08040A38.h"
#include "code/code_08050A3C.h"
#include "code/code_08060B98.h"
#include "code_080D73B8.h"
#include "agb_multi_sio_sync.h"
#include "gba.h"
#include "macros.h"
#include "agb_sram.h"
#include "syscalls.h"

/* Task struct driven by sub_08082EA0: a small state machine advancing a
 * scripted intro/attract sequence. Field 0x14 is the stage selector,
 * field 0xD a per-stage frame counter, field 0x30 a signed activation flag. */
struct Sub82EA0Task {
    /* 0x00 */ u8 pad_00[0xD];
    /* 0x0D */ u8 unk_D;
    /* 0x0E */ u8 pad_0E[0x14 - 0xE];
    /* 0x14 */ s8 unk_14;
    /* 0x15 */ u8 pad_15[0x30 - 0x15];
    /* 0x30 */ s16 unk_30;
};

/*
 * State machine for a camera-panning scripted sequence.
 * - stage 0: wait 8 frames (counter at 0xD), then advance stage and reset it.
 * - stage 1: if the "started" flag (unk_42C bit0) is clear, advance stage,
 *   set it, clear world flag unk_A074_1 and set unk_42C bit1.
 * - stage 2: while active (unk_30 != 0), measure the distance of the second
 *   background layer's target x-position from 0x01000000 and feed a decaying
 *   scroll speed to SetPlayerInput; once within 0x2FFFFF, advance.
 * - stage 3: hold ~0x3C frames playing a jingle once, keep input suppressed.
 * - stage 4: clear unk_42C bit1, set world flag unk_A074_1, and report done.
 * Returns 1 only from stage 4, 0 otherwise.
 * Evidence: reference asm sub_08082EA0 @ 0x08082EA0 (agbcc thumb).
 */
u32 sub_08082EA0(struct Sub82EA0Task *task)
{
    struct EwramData_unkA078 *bg = &gEwramData->bgInfo[1];

    switch (task->unk_14) {
    case 0:
        if (task->unk_D++ > 7) {
            task->unk_14++;
            task->unk_D = 0;
        }
        break;
    case 1:
        if (!(gEwramData->unk_60.unk_42C & 1)) {
            task->unk_14++;
            gEwramData->unk_60.unk_42C |= 1;
            gEwramData->unk_A074_1 = 0;
            gEwramData->unk_60.unk_42C |= 2;
        }
        break;
    case 2:
        if (task->unk_30 == 0) {
            task->unk_14++;
        } else {
            s32 d = gEwramData->unk_13110.unk_13110->unk_524.unk_524_32 + bg->xPos.whole;
            s32 e = 0x01000000 - d;
            s32 input;
            if (e < 0)
                e = -e;
            if (e <= 0x002FFFFF) {
                task->unk_14++;
                task->unk_D = 0;
                input = 0;
            } else {
                input = d <= 0x00FFFFFF ? 0x10 : 0x20;
            }
            SetPlayerInput(2, input);
        }
        break;
    case 3:
        if (task->unk_D++ > 0x3B) {
            task->unk_14++;
            task->unk_D = 0;
            PlaySong(0x1CE);
        }
        SetPlayerInput(2, 0);
        break;
    case 4:
        gEwramData->unk_60.unk_42C &= ~1;
        gEwramData->unk_A074_1 = 1;
        return 1;
    }
    return 0;
}
