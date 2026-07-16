#include "code/code_08014548.h"
#include "code_08009A0.h"
#include "code_08001004.h"
#include "code_08001194.h"
#include "code_08008750.h"
#include "code_0800CB00.h"
#include "code_0800F1FC.h"
#include "code/code_080211F0.h"
#include "code_08032444.h"
#include "code_08032E4C.h"
#include "code_08033CAC.h"
#include "code_08035930.h"
#include "code/code_08039340.h"
#include "code/code_08040A38.h"
#include "code_080D73B8.h"
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

extern s32 sub_080458E4(struct EwramData_EntityData *param_0, u16 param_1, u8 param_2, s32 param_3);

/**
 * sub_0801F0E4 — player high-jump trigger check.
 *
 * When the entity is in the expected state ((flags & 0xC00002) == 2), UP
 * (0x80) is held and the configured jump button is newly pressed, this puts
 * the entity into action state 7 with a fixed vertical launch (unk_530 =
 * 0x4E000, unk_538 = 0x2000). Horizontal velocity is forced from the held
 * direction: LEFT (0x20) sets facing bit unk_53C_6 and vx = -0x40000,
 * RIGHT (0x10) clears the facing bit and vx = +0x40000, otherwise only a
 * decel value is stored (0x4000 when moving left, -0x4000 when moving
 * right). If a global lock bit (unk_131B8 & 0x800) is clear, the animation
 * is switched to 9 (fast) or 0x1E (slow) depending on |vx| > 0x10000, the
 * palette/timer halfword unk_504 is set to 0xFF and flag 0x200000 cleared.
 * Finally unk_131B8 bit 2 is set, jump sounds 0x1EC/0xA9 play and two
 * effect entities (0xD5, 0xD4) are spawned via sub_080458E4.
 *
 * Evidence: asm/code/code_08014548.s @ 0x0801F0E4; field offsets per
 * include/structs/ewram.h (entity base 0x4E4).
 */
void sub_0801F0E4(struct EwramData_EntityData *param_0)
{
    struct EwramData *e;
    u16 held20;
    s32 v;

    if ((param_0->unk_4F4.unk_4F4_32 & 0xC00002) != 2) {
        return;
    }
    e = gEwramData;
    if (!(e->inputData.playerHeldInput & 0x80)) {
        return;
    }
    if (!(e->inputData.playerNewInput & e->unk_1325C.jumpButton)) {
        return;
    }
    param_0->unk_4EE = 7;
    param_0->unk_530.unk_530_32 = 0x4E000;
    param_0->unk_538.unk_538_32 = 0x2000;
    held20 = e->inputData.playerHeldInput & 0x20;
    if (held20 != 0) {
        param_0->unk_53C_6 = 1;
        param_0->unk_52C.unk_52C_32 = -0x40000;
        param_0->unk_534.unk_534_32 = 0;
    } else if (e->inputData.playerHeldInput & 0x10) {
        param_0->unk_53C_6 = 0;
        param_0->unk_52C.unk_52C_32 = 0x40000;
        param_0->unk_534.unk_534_32 = 0;
    } else {
        param_0->unk_534.unk_534_32 = (param_0->unk_52C.unk_52C_32 < 0) ? 0x4000 : 0xFFFFC000;
    }
    v = param_0->unk_52C.unk_52C_32;
    if (v < 0) {
        v = -v;
    }
    if (v > 0x10000) {
        if (!(gEwramData->unk_13110.unk_131B8 & 0x800) && (param_0->unk_551 != 9)) {
            sub_0803F2C8(param_0, 9, 1, 1);
            param_0->unk_504.unk_504_16.unk_504 = 0xFF;
            param_0->unk_4F4.unk_4F4_32 &= ~0x200000;
        }
    } else {
        if (!(gEwramData->unk_13110.unk_131B8 & 0x800) && (param_0->unk_551 != 0x1E)) {
            sub_0803F2C8(param_0, 0x1E, 1, 1);
            param_0->unk_504.unk_504_16.unk_504 = 0xFF;
            param_0->unk_4F4.unk_4F4_32 &= ~0x200000;
        }
    }
    gEwramData->unk_13110.unk_131B8 |= 4;
    PlaySong(0x1EC);
    PlaySong(0xA9);
    sub_080458E4(param_0, 0, 6, 0xD5);
    sub_080458E4(param_0, 0, 3, 0xD4);
}
