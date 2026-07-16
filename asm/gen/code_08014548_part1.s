	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_0801F248
sub_0801F248: @ 0x0801F248
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0801F25E
	movs r0, #0
	strb r0, [r5, #0xa]
	b _0801F2B8
_0801F25E:
	movs r1, #2
	adds r0, r5, #0
	adds r0, #0x70
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0801F2A8
	movs r0, #8
	orrs r1, r0
	subs r0, #0xd
	ands r1, r0
	str r1, [r5, #0x10]
	movs r4, #0
	movs r0, #3
	strh r0, [r5, #0x20]
	movs r0, #0xb9
	bl PlaySong
	ldr r0, _0801F2A0 @ =0xFFFC4000
	str r0, [r5, #0x4c]
	ldr r0, _0801F2A4 @ =0xFFFFE000
	str r0, [r5, #0x54]
	strb r4, [r5, #0xa]
	b _0801F2B8
	.align 2, 0
_0801F2A0: .4byte 0xFFFC4000
_0801F2A4: .4byte 0xFFFFE000
_0801F2A8:
	ldr r0, _0801F2C0 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0801F2C4 @ =0x000131B8
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
_0801F2B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F2C0: .4byte gEwramData
_0801F2C4: .4byte 0x000131B8

	thumb_func_start sub_0801F2C8
sub_0801F2C8: @ 0x0801F2C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	movs r1, #0xa8
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0801F2E2
	b _0801F43C
_0801F2E2:
	ldr r6, _0801F44C @ =gEwramData
	ldr r2, [r6]
	ldrh r1, [r2, #0x1c]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0801F2F2
	b _0801F43C
_0801F2F2:
	ldr r1, _0801F450 @ =0x00013398
	adds r0, r2, r1
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0801F302
	b _0801F43C
_0801F302:
	ldr r3, _0801F454 @ =0x00013269
	adds r0, r2, r3
	ldrb r0, [r0]
	bl sub_0802D284
	mov r8, r0
	ldr r1, [r6]
	ldr r7, _0801F458 @ =0x000131BE
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801F348
	ldr r0, _0801F45C @ =0x000131BF
	adds r2, r1, r0
	ldr r3, _0801F454 @ =0x00013269
	adds r0, r1, r3
	ldrb r1, [r0]
	ldrb r0, [r2]
	cmp r0, r1
	beq _0801F35C
	strb r1, [r2]
	ldr r0, [r6]
	adds r7, #0xe
	adds r0, r0, r7
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _0801F348
	bl sub_0803B980
	ldr r0, [r6]
	adds r1, r7, #0
	adds r0, r0, r1
	str r4, [r0]
_0801F348:
	ldr r0, _0801F44C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801F45C @ =0x000131BF
	adds r1, r0, r2
	ldr r3, _0801F454 @ =0x00013269
	adds r0, r0, r3
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0801F43C
_0801F35C:
	mov r7, r8
	ldr r0, [r7]
	cmp r0, #0
	beq _0801F43C
	ldr r7, _0801F44C @ =gEwramData
	ldr r0, [r7]
	ldr r1, _0801F460 @ =0x0001327C
	mov sb, r1
	add r0, sb
	mov r2, r8
	movs r3, #6
	ldrsh r1, [r2, r3]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bge _0801F43C
	bl sub_0802D2BC
	ldr r1, [r7]
	ldr r3, _0801F458 @ =0x000131BE
	adds r1, r1, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	bls _0801F43C
	bl sub_0802D208
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	mov sl, r1
	asrs r6, r0, #0x18
	cmp r6, #0
	blt _0801F43C
	mov r3, r8
	ldr r2, [r3]
	movs r0, #2
	movs r1, #0x10
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0801F43C
	ldr r2, [r7]
	mov r7, sb
	adds r3, r2, r7
	ldrh r0, [r3]
	mov r7, r8
	ldrh r1, [r7, #6]
	subs r0, r0, r1
	strh r0, [r3]
	lsls r1, r6, #2
	ldr r3, _0801F464 @ =0x00013124
	adds r0, r2, r3
	adds r0, r0, r1
	str r4, [r0]
	ldr r7, _0801F468 @ =0x000131B8
	adds r2, r2, r7
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801F3FE
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x17
	beq _0801F3FE
	adds r0, r5, #0
	movs r1, #0x17
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r5, #0x20]
	ldr r0, [r5, #0x10]
	ldr r1, _0801F46C @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_0801F3FE:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0x10]
	movs r0, #2
	strb r0, [r5, #0xa]
	str r5, [r4, #0x14]
	mov r1, sl
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x1a]
	ldr r0, _0801F44C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801F454 @ =0x00013269
	adds r0, r0, r2
	ldrb r0, [r0]
	strh r0, [r4, #0x1c]
	mov r3, r8
	ldrh r0, [r3, #0xe]
	strh r0, [r4, #0x1e]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5, #0x10]
	ldr r1, _0801F470 @ =0xFFDFFF9F
	ands r0, r1
	str r0, [r5, #0x10]
_0801F43C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F44C: .4byte gEwramData
_0801F450: .4byte 0x00013398
_0801F454: .4byte 0x00013269
_0801F458: .4byte 0x000131BE
_0801F45C: .4byte 0x000131BF
_0801F460: .4byte 0x0001327C
_0801F464: .4byte 0x00013124
_0801F468: .4byte 0x000131B8
_0801F46C: .4byte 0xFFDFFFFF
_0801F470: .4byte 0xFFDFFF9F

