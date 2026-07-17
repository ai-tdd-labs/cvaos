#include "code/code_08014548.h"
#include "code_080D73B8.h"

extern void sub_0801F0E4(struct EwramData_EntityData *param_0);
extern void sub_080458E4(struct EwramData_EntityData *param_0, u32 param_1, u32 param_2, u32 param_3);

/**
 * PURPOSE: Handles the player's ability button and jump state changes.
 *
 * @brief Handles the player's ability-button action and jump-state transitions.
 *
 * The entity-field accesses and flag masks are reconstructed from the ROM code at
 * 0x0801F474, including its input tests, state changes, and velocity updates.
 */
void sub_0801F474(struct EwramData_EntityData *param_0)
{
    u32 flags;
    u32 masked;

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
            flags &= 0x10;
            if (!flags)
            {
                param_0->unk_504.unk_504_16.unk_504 = 0xFF;
                param_0->unk_4EE = 5;
                PlaySong(0xBA);
                param_0->unk_4F4.unk_4F4_32 |= 0x12;
                param_0->unk_4F4.unk_4F4_32 &= ~0x100404;
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

    if ((u16)param_0->unk_4F8.unk_4F8_16.unk_4FA != 0)
    {
        return;
    }

    flags = param_0->unk_4F4.unk_4F4_32;
    if (flags & 0x10)
    {
        return;
    }

    if (!(flags & 0x800000))
    {
        masked = flags & 4;
        if (!masked &&
            (gEwramData->inputData.playerNewInput & gEwramData->unk_1325C.jumpButton))
        {
            PlaySong(0xB9);
            if (param_0->unk_4F4.unk_4F4_32 & 2)
            {
                param_0->unk_4F4.unk_4F4_32 |= 4;
            }
            param_0->unk_4F4.unk_4F4_32 |= 2;
            param_0->unk_4F4.unk_4F4_32 &= ~0x100400;
            param_0->unk_4F8.unk_4F8_16.unk_4F8 = 0x10;
            param_0->unk_538.unk_538_32 = masked;
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
        masked = flags & 0x2000000;
        if (!masked &&
            (gEwramData->inputData.playerNewInput & gEwramData->unk_1325C.jumpButton))
        {
            param_0->unk_538.unk_538_32 = masked;
            flags |= 0x02000002;
            flags &= ~0x100408;
            param_0->unk_4F4.unk_4F4_32 = flags;
            if (param_0->unk_530.unk_530_32 > 0x10000)
            {
                param_0->unk_530.unk_530_32 += 0xFFFB2000;
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
