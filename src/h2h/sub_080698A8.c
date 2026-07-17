#include "code_08001194.h"
#include "code/code_08060B98.h"

/*
 * PURPOSE: Moves an entity and stops it when it bumps into walls, floors or ceilings.
 *
 * sub_080698A8: horizontal/vertical collision resolution for a moving entity.
 *
 * unk_524.32 and unk_528.32 are 16.16 fixed-point X / Y sub-positions;
 * unk_52C.32 and unk_530.32 are the current X / Y velocities. When the X
 * velocity (or its residual unk_534) is non-zero the entity's X motion is
 * stepped by sub_0806D430 and then probed against the tilemap: a negative
 * velocity probes to the left (sub_0800207C), a positive one to the right
 * (sub_08002058); a non-zero hit distance is folded back (<<16) into the X
 * sub-position and a bit is OR'd into the return mask (2 = left, 1 = right).
 * The Y half mirrors this via sub_0806D460, probing up (sub_08001C1C) and
 * down (sub_08001D94). The upward probe uses the *projected* Y integer
 * (unk_528.32 + param_2, truncated toward zero) as its scan line; a downward
 * hit additionally snaps the Y sub-fraction to 0, latches unk_530.32 to
 * param_1 and sets bit 4 in the mask (bit 8 = up).
 *
 * The screen coordinates fed to the probes are the room camera integer of
 * bgInfo[1] plus the entity's own integer offsets, all read as signed s16.
 *
 * Evidence: reference asm code_08060B98.s @ 0x080698A8; coordinate/idiom
 * shapes cross-checked against matched src/code/code_080211F0.c.
 */
s32 sub_080698A8(struct EwramData_EntityData *param_0, s32 param_1, s32 param_2, s32 param_3)
{
    struct EwramData_unkA078 *cam = &gEwramData->bgInfo[1];
    s32 result = 0;
    s16 hit;

    if (param_0->unk_52C.unk_52C_32 != 0 || param_0->unk_534.unk_534_32 != 0)
    {
        sub_0806D430(param_0, param_3);

        if (param_0->unk_52C.unk_52C_32 < 0)
        {
            hit = sub_0800207C((s16) cam->xPos.part16.integer + (s16) param_0->unk_524.unk_524_16.unk_526,
                               (s16) cam->yPos.part16.integer + param_0->unk_528.unk_528_16.unk_52A);
            if (hit != 0)
            {
                param_0->unk_524.unk_524_32 += hit << 0x10;
                result |= 2;
            }
        }

        if (param_0->unk_52C.unk_52C_32 > 0)
        {
            hit = sub_08002058((s16) cam->xPos.part16.integer + (s16) param_0->unk_524.unk_524_16.unk_526,
                               (s16) cam->yPos.part16.integer + param_0->unk_528.unk_528_16.unk_52A);
            if (hit != 0)
            {
                param_0->unk_524.unk_524_32 += hit << 0x10;
                result |= 1;
            }
        }
    }

    if (param_0->unk_530.unk_530_32 != 0 || param_0->unk_538.unk_538_32 != 0)
    {
        sub_0806D460(param_0, param_3);

        if (param_0->unk_530.unk_530_32 < 0)
        {
            hit = sub_08001C1C((s16) cam->xPos.part16.integer + (s16) param_0->unk_524.unk_524_16.unk_526,
                               (s16) cam->yPos.part16.integer
                                   + (((param_0->unk_528.unk_528_32 + param_2) < 0)
                                          ? -(-(param_0->unk_528.unk_528_32 + param_2) >> 0x10)
                                          : ((param_0->unk_528.unk_528_32 + param_2) >> 0x10)));
            if (hit != 0)
            {
                param_0->unk_528.unk_528_32 += hit << 0x10;
                result |= 8;
            }
        }

        if (param_0->unk_530.unk_530_32 > 0)
        {
            hit = sub_08001D94((s16) cam->xPos.part16.integer + (s16) param_0->unk_524.unk_524_16.unk_526,
                               (s16) cam->yPos.part16.integer + param_0->unk_528.unk_528_16.unk_52A);
            if (hit != 0)
            {
                param_0->unk_528.unk_528_32 += hit << 0x10;
                param_0->unk_528.unk_528_16.unk_528 = 0;
                param_0->unk_530.unk_530_32 = param_1;
                result |= 4;
            }
        }
    }

    return result;
}
