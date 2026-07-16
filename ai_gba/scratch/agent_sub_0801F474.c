#include "code_08009A0.h"
#include "code_080D73B8.h"

extern void sub_080458E4(struct EwramData_EntityData *param_0, s32 param_1, s32 param_2, s32 param_3);
extern void sub_0801F0E4(struct EwramData_EntityData *param_0);

/*
 * Player jump input handler. Bails out while stunned/locked (flags
 * 0x20000000 or 0x160). If the ability button is newly pressed while the
 * player is airborne-capable (flag 2 set, 0x10 clear), triggers the high-jump
 * ability: sets anim 0xFF/state 5, plays song 0xBA, updates the movement
 * flags, and gives a large upward velocity (reduced when flag 0x4000000,
 * i.e. underwater). Then, when not busy (unk_4FA timer zero, 0x10 clear):
 * a new jump-button press either starts a ground jump (song 0xB9,
 * jump timer 0x10, upward velocity) or, if already airborne via flag
 * 0x800000 and double-jump flag 0x2000000 clear, performs the double jump
 * (adds -0x4E000 to the current upward velocity, clamped); otherwise it
 * falls through to the variable-jump-height helper sub_0801F0E4.
 */
void sub_0801F474(struct EwramData_EntityData *param_0)
{
    s32 flags;

    flags = param_0->unk_4F4.unk_4F4_32;
    if (flags & 0x20000000)
    {
        return;
    }
    if (flags & 0x160)
    {
        return;
    }
    if (gEwramData->inputData.playerNewInput & gEwramData->unk_1325C.abilityButton)
    {
        if (flags & 2)
        {
            if (!(flags & 0x10))
            {
                param_0->unk_504.unk_504_16.unk_504 = 0xFF;
                param_0->unk_4EE = 5;
                PlaySong(0xBAU);
                param_0->unk_4F4.unk_4F4_32 = (param_0->unk_4F4.unk_4F4_32 | 0x12) & ~0x100404;
                param_0->unk_538.unk_538_32 = 0x2000;
                if (!(param_0->unk_4F4.unk_4F4_32 & 0x4000000))
                {
                    param_0->unk_530.unk_530_32 = 0xFFF70000;
                }
                else
                {
                    param_0->unk_530.unk_530_32 = 0xFFFDC000;
                }
                sub_080458E4(param_0, 0, 8, 0xD5);
                sub_080458E4(param_0, 0, 4, 0xD4);
            }
        }
    }
    if ((u16)param_0->unk_4F8.unk_4F8_16.unk_4FA == 0)
    {
        flags = param_0->unk_4F4.unk_4F4_32;
        if (!(flags & 0x10))
        {
            if (!(flags & 0x800000))
            {
                if (!(flags & 4) && (gEwramData->inputData.playerNewInput & gEwramData->unk_1325C.jumpButton))
                {
                    PlaySong(0xB9U);
                    if (param_0->unk_4F4.unk_4F4_32 & 2)
                    {
                        param_0->unk_4F4.unk_4F4_32 |= 4;
                    }
                    param_0->unk_4F4.unk_4F4_32 = (param_0->unk_4F4.unk_4F4_32 | 2) & ~0x100400;
                    param_0->unk_4F8.unk_4F8_16.unk_4F8 = 0x10;
                    param_0->unk_538.unk_538_32 = 0;
                    if (!(param_0->unk_4F4.unk_4F4_32 & 0x4000000))
                    {
                        param_0->unk_530.unk_530_32 = 0xFFFB0000;
                    }
                    else
                    {
                        param_0->unk_530.unk_530_32 = 0xFFFEC400;
                    }
                }
            }
            else
            {
                if (!(flags & 0x2000000) && (gEwramData->inputData.playerNewInput & gEwramData->unk_1325C.jumpButton))
                {
                    param_0->unk_538.unk_538_32 = 0;
                    param_0->unk_4F4.unk_4F4_32 = (param_0->unk_4F4.unk_4F4_32 | 0x2000002) & ~0x100408;
                    if (param_0->unk_530.unk_530_32 > 0x10000)
                    {
                        param_0->unk_530.unk_530_32 += -0x4E000;
                    }
                    else
                    {
                        param_0->unk_530.unk_530_32 = 0xFFFB2000;
                    }
                    return;
                }
            }
            sub_0801F0E4(param_0);
        }
    }
}
