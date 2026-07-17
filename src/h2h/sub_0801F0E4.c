#include "code/code_08014548.h"
#include "code/code_08039340.h"
#include "code_080D73B8.h"
#include "structs/ewram.h"

extern struct EwramData_EntityData *sub_080458E4(struct EwramData_EntityData *, u16, u8, u32);

/**
 * PURPOSE: Starts the player's jump when the jump button is pressed and jumping is allowed.
 *
 * Handles a player jump transition when the required movement flags and jump
 * input are active, as evidenced by the velocity, animation, and sound setup.
 */
void sub_0801F0E4(struct EwramData_EntityData *param_0)
{
    struct EwramData *temp_r2;
    u16 temp_r3;
    s32 temp_r1;

    if ((param_0->unk_4F4.unk_4F4_32 & 0xC00002) == 2)
    {
        temp_r2 = gEwramData;
        if ((temp_r2->inputData.playerHeldInput & 0x80) &&
            (temp_r2->inputData.playerNewInput & temp_r2->unk_1325C.jumpButton))
        {
            param_0->unk_4EE = 7;
            param_0->unk_530.unk_530_32 = 0x4E000;
            param_0->unk_538.unk_538_32 = 0x2000;
            if ((temp_r3 = temp_r2->inputData.playerHeldInput & 0x20) != 0)
            {
                param_0->unk_53C_6 = 1;
                param_0->unk_52C.unk_52C_32 = -0x40000;
                param_0->unk_534.unk_534_32 = 0;
            }
            else if (temp_r2->inputData.playerHeldInput & 0x10)
            {
                param_0->unk_53C_6 = 0;
                param_0->unk_52C.unk_52C_32 = 0x40000;
                param_0->unk_534.unk_534_32 = temp_r3;
            }
            else
            {
                if (param_0->unk_52C.unk_52C_32 < 0)
                {
                    temp_r1 = 0x4000;
                }
                else
                {
                    temp_r1 = -0x4000;
                }
                param_0->unk_534.unk_534_32 = temp_r1;
            }

            temp_r1 = param_0->unk_52C.unk_52C_32;
            if (temp_r1 < 0)
            {
                temp_r1 = -temp_r1;
            }

            if (temp_r1 > 0x10000)
            {
                if (!(gEwramData->unk_13110.unk_131B8 & 0x800) && param_0->unk_551 != 9)
                {
                    sub_0803F2C8(param_0, 9, 1, 1);
                    param_0->unk_504.unk_504_16.unk_504 = 0xFF;
                    param_0->unk_4F4.unk_4F4_32 &= ~0x200000;
                }
            }
            else
            {
                if (!(gEwramData->unk_13110.unk_131B8 & 0x800) && param_0->unk_551 != 0x1E)
                {
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
    }
}
