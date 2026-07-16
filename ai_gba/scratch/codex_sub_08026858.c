#include "code/code_080211F0.h"
#include "code_08009A0.h"
#include "code/code_08040A38.h"

/**
 * @brief Updates a child effect from its parent entity's state and trajectory.
 *
 * The parent pointer and entity fields are identified by the reference ROM's
 * fixed offsets; the two sine-table calls provide its fixed-point movement.
 */
void sub_08026858(struct EwramData_EntityData *param_0)
{
    struct EwramData_EntityData *parent;
    s32 angle;
    s32 yAngle;
    s32 xVelocity;
    s32 yVelocity;

    parent = param_0->unk_4F8.unk_4F8_entity;
    param_0->unk_53D_2 = 1;

    if (parent->unk_4EE == 4)
    {
        gEwramData->unk_13110.activeRedSoulEntities[param_0->unk_4FC.unk_4FC_16.unk_4FE[0]] = NULL;
        gEwramData->unk_13110.nbrActiveRedSoulEntities -= 1;
        EntityDelete(param_0);
        return;
    }

    switch (param_0->unk_4EE)
    {
        case 0:
            sub_08042A54(1, 0x3C);
            sub_0804277C(param_0, 5, NULL, 0);
            sub_08042884(param_0, 0x4040E0E0);
            param_0->unk_554.unk_556 |= 2;
            param_0->unk_554.unk_556 |= 4;
            param_0->unk_4EE = 1;
            break;

        case 1:
            if (parent->unk_4EE == 2)
            {
                param_0->unk_554.unk_556 &= ~2;
                param_0->unk_4EE += 1;
            }
            break;

        case 2:
            if (parent->unk_4EE == 3)
            {
                param_0->unk_554.unk_556 |= 2;
            }
            break;
    }

    angle = parent->unk_510.unk_510_16.unk_510;
    yAngle = angle - 0x4000;
    xVelocity = sub_080009E4(angle) * 0x50;
    yVelocity = sub_080009E4(yAngle) * 0x50;
    param_0->unk_524.unk_524_32 = parent->unk_524.unk_524_32 + xVelocity;
    param_0->unk_528.unk_528_32 = parent->unk_528.unk_528_32 + yVelocity;

    if ((yVelocity < 0 ? -(-yVelocity >> 0x10) : (yVelocity >> 0x10)) < 0)
    {
        yVelocity = -(yVelocity < 0 ? -(-yVelocity >> 0x10) : (yVelocity >> 0x10));
    }
    else
    {
        yVelocity = yVelocity < 0 ? -(-yVelocity >> 0x10) : (yVelocity >> 0x10);
    }

    if (parent->unk_508.unk_508_32 > 0xFFFF)
    {
        if ((param_0->unk_528.unk_528_16.unk_52A < -yVelocity) ||
            (param_0->unk_528.unk_528_16.unk_52A > yVelocity + 0xA0))
        {
            parent->unk_53C_5 = 1;
        }
        else
        {
            parent->unk_53C_5 = 0;
        }
    }
}
