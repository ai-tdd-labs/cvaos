#include "code_08009A0.h"
#include "code/code_080211F0.h"
#include "code/code_08039340.h"

/* Callees still in asm (no repo prototypes yet). */
extern s32 sub_0806CF2C(struct EwramData_EntityData *param_0);
extern s32 sub_08069A00(struct EwramData_EntityData *param_0, s32 param_1, s32 param_2, s32 param_3, s32 param_4);
extern s32 sub_0806B120(struct EwramData_EntityData *param_0, s32 param_1);
extern s32 sub_0806CFFC(s16 param_0, s16 param_1, s32 param_2, s32 param_3);

/* sub_0807A2E4: entity per-frame update for a rising/vertical-motion actor.
 * State 0 primes the vertical accel/velocity, state 1 advances a wrapped
 * phase counter (unk_4FC in [0, 0x240000)), asks a helper for a direction bit
 * (unk_53C_6) that selects the vertical velocity target (unk_534) and clamps
 * it to 0 at the velocity extremes, optionally fires sub_0803F2C8, then checks
 * a collision/hit trio; if any check fails it resets the actor to state 1.
 */
void sub_0807A2E4(struct EwramData_EntityData *param_0)
{
    s32 v;

    switch (param_0->unk_4EF)
    {
        case 0:
            param_0->unk_504.unk_504_8.unk_505 = 2;
            param_0->unk_4EF += 1;
            param_0->unk_500.unk_500_32 = -0x20000;
            /* fallthrough */
        case 1:
            v = (s32)param_0->unk_4FC.unk_4FC_32 + param_0->unk_500.unk_500_32;
            param_0->unk_4FC.unk_4FC_32 = v;
            if (v > 0x23FFFF)
                param_0->unk_4FC.unk_4FC_32 = v - 0x240000;
            else if (v < 0)
                param_0->unk_4FC.unk_4FC_32 = v + 0x240000;

            param_0->unk_53C_6 = sub_0806CF2C(param_0);
            if (param_0->unk_53C_6)
                param_0->unk_534.unk_534_32 = -0x4000;
            else
                param_0->unk_534.unk_534_32 = 0x4000;

            if (param_0->unk_53C_6)
            {
                if (param_0->unk_52C.unk_52C_32 <= -0x20000)
                    param_0->unk_534.unk_534_32 = 0;
            }
            else
            {
                if (param_0->unk_52C.unk_52C_32 > 0x1FFFF)
                    param_0->unk_534.unk_534_32 = 0;
            }

            if (param_0->unk_53D_0 && param_0->unk_551 == 3)
                sub_0803F2C8(param_0, 0, 0, 1);

            if ((sub_08069A00(param_0, 0x10000, 0xFFE00000, 0x80000, 0xc) & 3) != 0
                || sub_0806CFFC((s16)(param_0->unk_524.unk_524_16.unk_526 - 0x64),
                                (s16)(param_0->unk_528.unk_528_16.unk_52A - 0x50), 0xc8, 0xa0) == 0
                || sub_0806B120(param_0, 1) != 0)
            {
                param_0->unk_504.unk_504_8.unk_505 = 1;
                param_0->unk_4EE = 0;
                param_0->unk_4EF = 1;
                param_0->unk_530.unk_530_32 = 0x10000;
                param_0->unk_538.unk_538_32 = 0x2800;
                sub_0803F2C8(param_0, 0, 0, 1);
            }
            break;
    }
}
