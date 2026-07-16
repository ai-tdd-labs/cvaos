	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_08050920
sub_08050920: @ 0x08050920
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r1, #0x3c
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	bl sub_0806D3D8
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _080509E4 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _080509E8 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	bl sub_080020A0
	cmp r0, #0
	beq _08050A10
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	ldr r2, _080509EC @ =0xFFFC0000
	adds r1, r1, r2
	movs r2, #4
	movs r3, #6
	bl sub_08045CEC
	adds r4, r0, #0
	cmp r4, #0
	beq _080509B2
	movs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_0802D5EC
	adds r1, r0, #0
	ldr r3, _080509F0 @ =0xFFFFC000
	adds r0, r1, r3
	str r0, [r4, #0x4c]
	cmp r0, #0
	bge _08050994
	ldr r2, _080509F4 @ =0xFFFFC01F
	adds r0, r1, r2
_08050994:
	asrs r0, r0, #5
	str r0, [r4, #0x54]
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_0802D5EC
	ldr r1, [r5, #0x48]
	subs r0, r0, r1
	str r0, [r4, #0x48]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _080509AE
	adds r0, #0x3f
_080509AE:
	asrs r0, r0, #6
	str r0, [r4, #0x50]
_080509B2:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	ldr r3, _080509F8 @ =0xFFFF0000
	adds r1, r1, r3
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
	bl RandomNumberGenerator
	ldr r1, _080509FC @ =0x000003FF
	ands r1, r0
	ldr r0, _08050A00 @ =0x000001FF
	cmp r1, r0
	bhi _08050A04
	subs r0, #0xa7
	bl PlaySong
	b _08050A28
	.align 2, 0
_080509E4: .4byte gEwramData
_080509E8: .4byte 0x0000A094
_080509EC: .4byte 0xFFFC0000
_080509F0: .4byte 0xFFFFC000
_080509F4: .4byte 0xFFFFC01F
_080509F8: .4byte 0xFFFF0000
_080509FC: .4byte 0x000003FF
_08050A00: .4byte 0x000001FF
_08050A04:
	ldr r0, _08050A0C @ =0x00000159
	bl PlaySong
	b _08050A28
	.align 2, 0
_08050A0C: .4byte 0x00000159
_08050A10:
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r3, #0x98
	lsls r3, r3, #1
	movs r0, #0xe0
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_08068AD4
	cmp r0, #0
	bne _08050A34
_08050A28:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08050A34:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
