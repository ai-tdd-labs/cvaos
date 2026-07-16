#include "code/code_08039340.h"
#include "code/code_08060B98.h"
#include "gba.h"

/* Callees without a prototype in the repo headers. Return types inferred from
 * how the caller re-extends the result: sub_0806BBC4 is sign-extended to s8
 * (lsls/asrs #24), sub_0806D044 to s16 (lsls/asrs #16); sub_0806DFF8 returns a
 * freshly allocated entity pointer (its result is stored to and dereferenced). */
extern s8 sub_0806BBC4(struct EwramData_EntityData *param_0);
extern void sub_0806BC40(struct EwramData_EntityData *param_0);
extern s16 sub_0806D044(struct EwramData_EntityData *param_0);
extern struct EwramData_EntityData *sub_0806DFF8(void *func);
extern void sub_080BBAC4(void);

/*
 * State machine for a small animated actor (drawn from gfx table 0x085288C0).
 * Dispatches on the mode byte at entity+0x0B (unk_4EF):
 *   0 -> initialise (set mode 1), fall through into 1
 *   1 -> advance the 8-frame animation; once the anim counter wraps to 0,
 *        decide (based on a facing flag and two helper queries) whether to
 *        promote to mode 2, then run the shared post-update helper.
 *   2 -> when the anim reaches frame 0x0A, spawn the child actor
 *        (update = sub_080BBAC4); on a control flag advance to mode 3.
 *   3 -> count the timer at entity+0x0D (unk_4F1) down, then reset and notify.
 * Reference: asm/code/code_080B0AD4.s, sub_080BBD90 @ 0x080BBD90.
 */
void sub_080BBD90(struct EwramData_EntityData *param_0)
{
    switch (param_0->unk_4EF) {
    case 0:
        param_0->unk_4EF = 1;
        /* fallthrough */
    case 1:
    {
        u8 frame = (param_0->unk_552 + 1) % 8;
        s32 arg = (frame << 14) + 0x1000;
        if (frame > 4) {
            arg = 0;
        }
        sub_0806CAF8(param_0, arg, (void *)0x085288C0, 0x14);
        if (*(u16 *)&param_0->unk_552 == 0) {
            u8 *fp = (u8 *)param_0 + 0x58;
            s32 go = (((( *fp & 0x40) && sub_0806BBC4(param_0) == 1) ||
                       (!(*fp & 0x40) && sub_0806BBC4(param_0) == -1)) &&
                      sub_0806D044(param_0) <= 0x77);
            if (go) {
                if (!(gEwramData->unk_1325C.unk_13270 & 4)) {
                    param_0->unk_4EF = 2;
                    sub_0803F2C8(param_0, 1, 0, 0);
                }
            }
            sub_0806BC40(param_0);
        }
        break;
    }
    case 2:
        if (*(u16 *)&param_0->unk_552 == 0xA) {
            struct EwramData_EntityData *spawn = sub_0806DFF8((void *)sub_080BBAC4);
            if (spawn != NULL) {
                u8 *pflag;
                u8 *src;
                u8 v;

                spawn->unk_4F8.unk_4F8_entity = param_0;
                pflag = (u8 *)spawn + 0x59;
                *pflag |= 2;
                src = (u8 *)param_0 + 0x3C;
                v = *src;
                *((u8 *)spawn + 0x3C) = v - (v >> 3);
            }
        }
        if (param_0->unk_550 & 4) {
            param_0->unk_4F1 = 0x20;
            param_0->unk_4EF = 3;
        }
        break;
    case 3:
        if (param_0->unk_4F1 != 0) {
            param_0->unk_4F1--;
        } else {
            param_0->unk_4EE = 0;
            param_0->unk_4F0 = 0;
            param_0->unk_4EF = 0;
            sub_0803F2C8(param_0, 0, 0, 1);
        }
        break;
    }
}
