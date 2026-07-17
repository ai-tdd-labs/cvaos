#include "code_08009A0.h"
#include "code/code_080211F0.h"
#include "code/code_08039340.h"

extern void sub_0806BC40(struct EwramData_EntityData *param_0);
extern s16 sub_0806BDEC(struct EwramData_EntityData *param_0);
extern void sub_0806E120(struct EwramData_EntityData *param_0, s32 param_1);

/**
 * Per-frame update for a three-phase flying entity (boss intro / swoop AI).
 * Phase 0: unless pose 2 is already set (unk_551), switch animation to pose 2,
 *   launch with velocity (0x8000, 0x2000), snap to the floor via sub_0806BC40 /
 *   sub_0806E120, flip the x velocity, and hold for 0x20 frames before phase 1.
 * Phase 1: set velocity to (0x6000, 0x6000), run collision (sub_0803F17C) each
 *   frame until the ground probe sub_0806BDEC reports |distance| <= 0x27, then
 *   enter phase 2.
 * Phase 2: swoop with velocity (0xC000, 0x200) and acceleration (0x50, 0x25)
 *   (x components negated when facing bit unk_53C_6 is clear), then bob on a
 *   sine wave (angle unk_4F8 advancing 0x200/frame, amplitude sin/4 on y) and
 *   self-destruct (unk_53D_3) once the x position leaves the camera window
 *   [camX - 0x28, camX + 0xF0].
 * Tail: integrate position += velocity, velocity += acceleration.
 * Evidence: reference asm at 0x080AD44C (asm/code/code_080A0A8C.s).
 */
void sub_080AD44C(struct EwramData_EntityData *param_0)
{
    switch (param_0->unk_4EF)
    {
        case 0:
            switch (param_0->unk_4F0)
            {
                case 0:
                    if (param_0->unk_551 != 2)
                    {
                        sub_0803F2C8(param_0, 2, 0, 1);
                    }
                    param_0->unk_52C.unk_52C_32 = 0x8000;
                    param_0->unk_530.unk_530_32 = 0x2000;
                    sub_0806BC40(param_0);
                    sub_0806E120(param_0, param_0->unk_52C.unk_52C_32);
                    param_0->unk_52C.unk_52C_32 = -param_0->unk_52C.unk_52C_32;
                    param_0->unk_4F1 = 0x20;
                    param_0->unk_4F0 += 1;
                    /* fallthrough */
                case 1:
                    param_0->unk_4F1 -= 1;
                    if (param_0->unk_4F1 == 0xFF)
                    {
                        param_0->unk_4EF = 1;
                        param_0->unk_4F0 = 0;
                    }
                    break;
            }
            break;

        case 1:
            switch (param_0->unk_4F0)
            {
                case 0:
                    param_0->unk_52C.unk_52C_32 = 0x6000;
                    param_0->unk_530.unk_530_32 = 0x6000;
                    sub_0806E120(param_0, param_0->unk_52C.unk_52C_32);
                    param_0->unk_4F0 += 1;
                    /* fallthrough */
                case 1:
                {
                    s32 dist;

                    sub_0803F17C(param_0);
                    dist = sub_0806BDEC(param_0);
                    if (dist < 0)
                    {
                        dist = -dist;
                    }
                    if (dist <= 0x27)
                    {
                        param_0->unk_4EF = 2;
                        param_0->unk_4F0 = 0;
                    }
                    break;
                }
            }
            break;

        case 2:
            switch (param_0->unk_4F0)
            {
                case 0:
                    param_0->unk_52C.unk_52C_32 = 0xC000;
                    param_0->unk_530.unk_530_32 = 0x200;
                    param_0->unk_534.unk_534_32 = 0x50;
                    param_0->unk_538.unk_538_32 = 0x25;
                    if (!param_0->unk_53C_6)
                    {
                        param_0->unk_52C.unk_52C_32 = -param_0->unk_52C.unk_52C_32;
                        param_0->unk_534.unk_534_32 = -param_0->unk_534.unk_534_32;
                    }
                    param_0->unk_4F8.unk_4F8_16.unk_4F8 = param_0->unk_4F0;
                    param_0->unk_4F0 += 1;
                    /* fallthrough */
                case 1:
                    param_0->unk_528.unk_528_32 += sub_080009E4(param_0->unk_4F8.unk_4F8_16.unk_4F8) / 4;
                    param_0->unk_4F8.unk_4F8_16.unk_4F8 = 0x200 + param_0->unk_4F8.unk_4F8_16.unk_4F8;
                    if ((s16)param_0->unk_524.unk_524_16.unk_526 < param_0->unk_52C.unk_52C_16.unk_52E - 0x28
                        || (s16)param_0->unk_524.unk_524_16.unk_526 > param_0->unk_52C.unk_52C_16.unk_52E + 0xF0)
                    {
                        param_0->unk_53D_3 = 1;
                    }
                    break;
            }
            break;
    }

    param_0->unk_524.unk_524_32 += param_0->unk_52C.unk_52C_32;
    param_0->unk_528.unk_528_32 += param_0->unk_530.unk_530_32;
    param_0->unk_52C.unk_52C_32 += param_0->unk_534.unk_534_32;
    param_0->unk_530.unk_530_32 += param_0->unk_538.unk_538_32;
}
