	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start Object34Update
Object34Update: @ 0x0805A108
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _0805A11A
	adds r0, r1, #0
	bl sub_08059D98
_0805A11A:
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_0805A120
sub_0805A120: @ 0x0805A120
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0805A154 @ =0x081CBF14
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0805A164
	ldr r0, _0805A158 @ =0x0820A350
	movs r1, #2
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0805A15C @ =0x08211DC4
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _0805A160 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0805A166
	.align 2, 0
_0805A154: .4byte 0x081CBF14
_0805A158: .4byte 0x0820A350
_0805A15C: .4byte 0x08211DC4
_0805A160: .4byte sub_0803B9D0
_0805A164:
	movs r0, #0
_0805A166:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805A16C
sub_0805A16C: @ 0x0805A16C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x40]
	ldr r6, [r4, #0x44]
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x28]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0803AC40
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start Object35Create
Object35Create: @ 0x0805A18C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _0805A1D8 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0805A1DC @ =0x0C10E8F8
	str r0, [sp]
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _0805A1C2
	ldrh r1, [r6, #0x32]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x15
	lsls r0, r0, #2
	movs r3, #0xd1
	lsls r3, r3, #2
	adds r2, r2, r3
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0805A1CE
_0805A1C2:
	adds r0, r6, #0
	bl sub_0805A618
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805A1E0
_0805A1CE:
	adds r0, r6, #0
	bl EntityDelete
	b _0805A2F6
	.align 2, 0
_0805A1D8: .4byte gEwramData
_0805A1DC: .4byte 0x0C10E8F8
_0805A1E0:
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _0805A204
	adds r0, r6, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r0, r6, #0
	mov r1, sp
	bl sub_080428B4
	adds r0, r6, #0
	mov r1, sp
	bl sub_08042848
_0805A204:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	movs r2, #0x30
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bne _0805A232
	adds r1, #9
	movs r0, #2
	strb r0, [r1]
	adds r0, r6, #0
	bl sub_0805A50C
	b _0805A23A
_0805A232:
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #1
	strb r0, [r1]
_0805A23A:
	movs r0, #0
	strb r0, [r6, #0xa]
	movs r3, #0x30
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bne _0805A280
	strb r0, [r6, #0xb]
	ldr r0, _0805A27C @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r6, #0x32]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x15
	lsls r0, r0, #2
	movs r3, #0xd1
	lsls r3, r3, #2
	adds r2, r2, r3
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0805A2D6
	ldr r0, [r6, #0x44]
	movs r1, #0xc0
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r6, #0x44]
	movs r0, #2
	strb r0, [r6, #0xb]
	b _0805A2D6
	.align 2, 0
_0805A27C: .4byte gEwramData
_0805A280:
	movs r0, #0xa
	strb r0, [r6, #0xb]
	ldr r1, _0805A300 @ =gDisplayRegisters
	adds r2, r1, #0
	adds r2, #0x42
	movs r0, #0x3f
	strb r0, [r2]
	adds r1, #0x43
	movs r0, #0x2f
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r5, [r0, r2]
	ldr r0, _0805A304 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _0805A308 @ =0x0000A094
	adds r1, r1, r3
	movs r2, #6
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r4, [r0, r3]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	adds r1, r4, #0
	subs r1, #8
	adds r0, r5, #0
	bl sub_08002200
	adds r1, r4, #0
	subs r1, #0x18
	adds r0, r5, #0
	bl sub_08002200
	subs r4, #0x28
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08002200
_0805A2D6:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r6, #0x40]
	str r0, [r6, #0x10]
	ldr r0, [r6, #0x44]
	str r0, [r6, #0x14]
_0805A2F6:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805A300: .4byte gDisplayRegisters
_0805A304: .4byte gEwramData
_0805A308: .4byte 0x0000A094

	thumb_func_start sub_0805A30C
sub_0805A30C: @ 0x0805A30C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r6, r0, #0
	ldr r1, _0805A334 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0805A338 @ =0x0000A094
	adds r2, r2, r0
	mov r8, r2
	ldrb r0, [r6, #0xb]
	adds r2, r1, #0
	cmp r0, #0xc
	bls _0805A32A
	b _0805A4F6
_0805A32A:
	lsls r0, r0, #2
	ldr r1, _0805A33C @ =_0805A340
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805A334: .4byte gEwramData
_0805A338: .4byte 0x0000A094
_0805A33C: .4byte _0805A340
_0805A340: @ jump table
	.4byte _0805A374 @ case 0
	.4byte _0805A3CE @ case 1
	.4byte _0805A4F6 @ case 2
	.4byte _0805A4F6 @ case 3
	.4byte _0805A4F6 @ case 4
	.4byte _0805A4F6 @ case 5
	.4byte _0805A4F6 @ case 6
	.4byte _0805A4F6 @ case 7
	.4byte _0805A4F6 @ case 8
	.4byte _0805A4F6 @ case 9
	.4byte _0805A3F6 @ case 10
	.4byte _0805A434 @ case 11
	.4byte _0805A4EC @ case 12
_0805A374:
	ldr r2, [r2]
	ldr r3, _0805A3C0 @ =0x00013190
	adds r0, r2, r3
	ldr r0, [r0]
	cmp r0, r6
	bne _0805A3C8
	ldr r0, [r6, #0x18]
	adds r0, #1
	str r0, [r6, #0x18]
	cmp r0, #7
	bgt _0805A38C
	b _0805A4F6
_0805A38C:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	str r1, [r6, #0x4c]
	strb r1, [r6, #0xd]
	ldrh r1, [r6, #0x32]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x15
	lsls r0, r0, #2
	movs r3, #0xd1
	lsls r3, r3, #2
	adds r2, r2, r3
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0805A3C4 @ =0x00000133
	bl PlaySong
	b _0805A4F6
	.align 2, 0
_0805A3C0: .4byte 0x00013190
_0805A3C4: .4byte 0x00000133
_0805A3C8:
	movs r0, #0
	str r0, [r6, #0x18]
	b _0805A4F6
_0805A3CE:
	adds r0, r6, #0
	bl sub_0806D3CC
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r6, #0x4c]
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _0805A3EA
	b _0805A4F6
_0805A3EA:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	str r1, [r6, #0x1c]
	b _0805A4F6
_0805A3F6:
	ldr r2, [r2]
	ldrh r1, [r6, #0x32]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x15
	lsls r0, r0, #2
	movs r3, #0xd1
	lsls r3, r3, #2
	adds r2, r2, r3
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0805A4F6
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	strb r1, [r6, #0xd]
	ldr r0, _0805A430 @ =0x00000113
	bl PlaySong
	b _0805A4F6
	.align 2, 0
_0805A430: .4byte 0x00000113
_0805A434:
	adds r0, r6, #0
	bl sub_0806D3CC
	ldr r2, _0805A4DC @ =gUnk_03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	str r0, [r6, #0x1c]
	ldrb r0, [r6, #0xd]
	movs r7, #7
	ands r7, r0
	cmp r7, #0
	bne _0805A490
	bl RandomNumberGenerator
	adds r5, r0, #0
	ldr r4, _0805A4E0 @ =0x00007FFF
	ands r5, r4
	ldr r0, _0805A4E4 @ =0xFFFFC000
	adds r5, r5, r0
	bl RandomNumberGenerator
	ands r0, r4
	ldr r3, _0805A4E8 @ =0xFFFF8000
	subs r3, r3, r0
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	adds r2, r6, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	str r7, [sp, #4]
	movs r2, #0x20
	str r2, [sp, #8]
	movs r2, #0xf
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp, #0x10]
	adds r2, r5, #0
	bl sub_0806D9CC
_0805A490:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x5f
	bls _0805A4F6
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	movs r1, #0x12
	ldrsh r5, [r6, r1]
	mov r2, r8
	movs r3, #6
	ldrsh r0, [r2, r3]
	adds r5, r5, r0
	movs r0, #0x16
	ldrsh r4, [r6, r0]
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	adds r4, r4, r0
	adds r1, r4, #0
	subs r1, #8
	adds r0, r5, #0
	bl sub_08002248
	adds r1, r4, #0
	subs r1, #0x18
	adds r0, r5, #0
	bl sub_08002248
	subs r4, #0x28
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08002248
	b _0805A4F6
	.align 2, 0
_0805A4DC: .4byte gUnk_03002CB0
_0805A4E0: .4byte 0x00007FFF
_0805A4E4: .4byte 0xFFFFC000
_0805A4E8: .4byte 0xFFFF8000
_0805A4EC:
	ldr r2, _0805A504 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805A508 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
_0805A4F6:
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A504: .4byte gUnk_03002CB0
_0805A508: .4byte 0x00007FFF

	thumb_func_start sub_0805A50C
sub_0805A50C: @ 0x0805A50C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _0805A580 @ =sub_0805A5BC
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0805A57A
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _0805A584 @ =0x081CBF1C
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _0805A588 @ =0x08211FB0
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #3
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	str r5, [r4, #0x20]
	subs r2, #0x19
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0805A58C @ =sub_0803B9D0
	str r0, [r4, #4]
_0805A57A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A580: .4byte sub_0805A5BC
_0805A584: .4byte 0x081CBF1C
_0805A588: .4byte 0x08211FB0
_0805A58C: .4byte sub_0803B9D0

	thumb_func_start Object35Update
Object35Update: @ 0x0805A590
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0805A5A6
	adds r0, r4, #0
	movs r1, #1
	bl sub_08021278
_0805A5A6:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0805A5B2
	adds r0, r4, #0
	bl sub_0805A30C
_0805A5B2:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805A5BC
sub_0805A5BC: @ 0x0805A5BC
	bx lr
	.align 2, 0

	thumb_func_start sub_0805A5C0
sub_0805A5C0: @ 0x0805A5C0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, [r5, #0x44]
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0805A604
	adds r6, r5, #0
	adds r6, #0x5a
	ldrb r1, [r6]
	movs r4, #7
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r6]
	ldr r2, _0805A614 @ =gUnk_03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [r5, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r5, #0x44]
	adds r0, r5, #0
	bl sub_0803AC40
	ldrb r0, [r6]
	ands r4, r0
	strb r4, [r6]
_0805A604:
	str r7, [r5, #0x44]
	adds r0, r5, #0
	bl sub_0803AC40
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A614: .4byte gUnk_03002CB0

	thumb_func_start sub_0805A618
sub_0805A618: @ 0x0805A618
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0805A630 @ =0x081CBF1C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	bge _0805A634
	movs r0, #0
	b _0805A66E
	.align 2, 0
_0805A630: .4byte 0x081CBF1C
_0805A634:
	ldr r0, _0805A65C @ =0x0820A3B4
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0805A660 @ =0x08211FB0
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0805A668
	ldr r0, _0805A664 @ =sub_0805A5C0
	b _0805A66A
	.align 2, 0
_0805A65C: .4byte 0x0820A3B4
_0805A660: .4byte 0x08211FB0
_0805A664: .4byte sub_0805A5C0
_0805A668:
	ldr r0, _0805A674 @ =sub_0803B9D0
_0805A66A:
	str r0, [r4, #4]
	movs r0, #1
_0805A66E:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805A674: .4byte sub_0803B9D0

	thumb_func_start Object36Update
Object36Update: @ 0x0805A678
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, sp
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	strh r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r0, [r0]
	strh r0, [r1, #0xa]
	mov r0, sp
	ldrh r1, [r4, #0x1c]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	mov r1, sp
	ldr r0, [r4, #0x14]
	strh r0, [r1, #0x10]
	ldr r1, _0805A6C4 @ =0x03002C78
	mov r0, sp
	movs r2, #1
	bl BgAffineSet
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A6C4: .4byte 0x03002C78

	thumb_func_start Object36Create
Object36Create: @ 0x0805A6C8
	push {r4, lr}
	sub sp, #0x24
	adds r4, r0, #0
	ldr r1, _0805A740 @ =0x081186A4
	mov r0, sp
	movs r2, #0x24
	bl memcpy
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	subs r2, #0x1a
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	add r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r4, #0x18]
	movs r0, #0x30
	ldrsh r1, [r4, r0]
	lsls r1, r1, #2
	mov r0, sp
	adds r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x1a]
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	add r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r4, #0x1c]
	ldr r1, _0805A744 @ =0x0811868C
	adds r0, r4, #0
	bl sub_08022088
	add sp, #0x24
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A740: .4byte 0x081186A4
_0805A744: .4byte 0x0811868C

	thumb_func_start sub_0805a748
sub_0805a748: @ 0x0805A748
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, _0805A778 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805A77C @ =0x0000A094
	adds r3, r0, r1
	mov r5, sb
	ldr r1, [r5, #0x40]
	ldr r0, [r3, #4]
	adds r0, r1, r0
	cmp r0, #0
	bge _0805A780
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0805A782
	.align 2, 0
_0805A778: .4byte gEwramData
_0805A77C: .4byte 0x0000A094
_0805A780:
	asrs r0, r0, #0x10
_0805A782:
	mov r8, r0
	mov r0, sb
	ldr r1, [r0, #0x44]
	ldr r0, [r3, #8]
	adds r0, r1, r0
	cmp r0, #0
	bge _0805A798
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r5, r0, #0
	b _0805A79A
_0805A798:
	asrs r5, r0, #0x10
_0805A79A:
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	subs r0, r5, #4
	cmp r6, r0
	bgt _0805A828
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	mov r1, r8
	subs r0, r1, r7
	subs r4, r5, r6
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r4, #0
	muls r1, r4, r1
	adds r4, r1, #0
	adds r0, r0, r4
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, r8
	subs r3, r7, r0
	subs r4, r5, r6
	cmp r3, #0
	bge _0805A7D0
	rsbs r3, r3, #0
_0805A7D0:
	mov r5, sb
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	subs r0, r1, #6
	cmp r3, r0
	bgt _0805A828
	adds r0, r1, #0
	subs r0, #8
	cmp r2, r0
	blt _0805A828
	adds r0, r1, #0
	adds r0, #8
	cmp r2, r0
	bge _0805A828
	ldr r0, _0805A820 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0805A824 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	blt _0805A828
	mov r5, r8
	subs r0, r5, r7
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	subs r0, r2, r0
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, r4, r0
	cmp r0, #0
	bge _0805A828
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _0805A82A
	.align 2, 0
_0805A820: .4byte gEwramData
_0805A824: .4byte 0x00013110
_0805A828:
	movs r0, #0
_0805A82A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805a838
sub_0805a838: @ 0x0805A838
	movs r0, #0
	bx lr

	thumb_func_start sub_0805a83c
sub_0805a83c: @ 0x0805A83C
	movs r0, #0
	bx lr

	thumb_func_start sub_0805a840
sub_0805a840: @ 0x0805A840
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, _0805A86C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805A870 @ =0x0000A094
	adds r3, r0, r1
	ldr r1, [r7, #0x40]
	ldr r0, [r3, #4]
	adds r0, r1, r0
	cmp r0, #0
	bge _0805A874
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r6, r0, #0
	b _0805A876
	.align 2, 0
_0805A86C: .4byte gEwramData
_0805A870: .4byte 0x0000A094
_0805A874:
	asrs r6, r0, #0x10
_0805A876:
	ldr r1, [r7, #0x44]
	ldr r0, [r3, #8]
	adds r0, r1, r0
	cmp r0, #0
	bge _0805A888
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r4, r0, #0
	b _0805A88A
_0805A888:
	asrs r4, r0, #0x10
_0805A88A:
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	subs r0, r4, #4
	cmp r5, r0
	bgt _0805A920
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	subs r1, r6, r0
	subs r0, r4, r5
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r1, r0
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x18
	ldrsh r1, [r7, r2]
	adds r1, #6
	subs r2, r4, r5
	cmp r0, r1
	bge _0805A920
	ldr r0, _0805A918 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805A91C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0805A920
	mov r0, r8
	subs r1, r6, r0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x1a
	ldrsh r4, [r7, r1]
	subs r4, r0, r4
	movs r6, #0x80
	lsls r6, r6, #7
	adds r0, r0, r6
	bl sub_080009E4
	adds r5, r0, #0
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	muls r5, r0, r5
	adds r4, r4, r6
	adds r0, r4, #0
	bl sub_080009E4
	adds r1, r0, #0
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	muls r1, r0, r1
	subs r5, r5, r1
	adds r0, r5, #0
	b _0805A922
	.align 2, 0
_0805A918: .4byte gEwramData
_0805A91C: .4byte 0x00013110
_0805A920:
	movs r0, #0
_0805A922:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805a92c
sub_0805a92c: @ 0x0805A92C
	movs r0, #0
	bx lr

	thumb_func_start Object37Create
Object37Create: @ 0x0805A930
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r4, _0805A984 @ =gEwramData
	bl sub_0805AE18
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805A97C
	adds r0, r6, #0
	adds r0, #0x65
	movs r1, #0
	mov sb, r1
	movs r3, #1
	mov r8, r3
	mov r1, r8
	strb r1, [r0]
	adds r5, r6, #0
	adds r5, #0x58
	ldrb r1, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0805A988
_0805A97C:
	adds r0, r6, #0
	bl EntityDelete
	b _0805AA82
	.align 2, 0
_0805A984: .4byte gEwramData
_0805A988:
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r5]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r7, #0x80
	lsls r7, r7, #9
	ldrb r0, [r5]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r1, r0, #7
	str r1, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r7, #0
	adds r2, r7, #0
	bl sub_0803E058
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	mov r3, sb
	strb r3, [r6, #0xa]
	ldr r2, [r4]
	ldr r1, _0805AA1C @ =0x00013110
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0x40]
	subs r4, r1, r0
	adds r1, r4, #0
	cmp r4, #0
	bge _0805A9EC
	rsbs r1, r4, #0
_0805A9EC:
	ldr r0, _0805AA20 @ =0x002FFFFF
	cmp r1, r0
	bgt _0805AA24
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r6, #0x18]
	mov r3, r8
	strb r3, [r6, #0xb]
	ldrb r1, [r5]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r2, r1, #7
	str r2, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r7, #0
	adds r2, r7, #0
	bl sub_0803E058
	mov r0, sb
	str r0, [r6, #0x1c]
	b _0805AA7C
	.align 2, 0
_0805AA1C: .4byte 0x00013110
_0805AA20: .4byte 0x002FFFFF
_0805AA24:
	mov r1, r8
	str r1, [r6, #0x1c]
	adds r0, r6, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _0805AA90 @ =0x0000A094
	adds r2, r2, r0
	movs r3, #6
	ldrsh r0, [r2, r3]
	adds r4, r1, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	adds r5, r1, r0
	subs r4, #0x10
	adds r1, r5, #0
	adds r1, #8
	adds r0, r4, #0
	bl sub_08002200
	adds r1, r5, #0
	subs r1, #8
	adds r0, r4, #0
	bl sub_08002200
	adds r1, r5, #0
	subs r1, #0x18
	adds r0, r4, #0
	bl sub_08002200
	adds r1, r5, #0
	subs r1, #0x28
	adds r0, r4, #0
	bl sub_08002200
	adds r1, r5, #0
	subs r1, #0x38
	adds r0, r4, #0
	bl sub_08002200
_0805AA7C:
	adds r0, r6, #0
	bl sub_0805AC50
_0805AA82:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805AA90: .4byte 0x0000A094

	thumb_func_start sub_0805AA94
sub_0805AA94: @ 0x0805AA94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _0805AABC @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0805AAC0 @ =0x00013110
	adds r0, r2, r1
	ldr r0, [r0]
	mov r8, r0
	ldr r1, [r6, #0x40]
	ldr r0, [r0, #0x40]
	subs r7, r1, r0
	ldrb r1, [r6, #0xb]
	cmp r1, #0
	beq _0805AAC4
	cmp r1, #1
	beq _0805AB10
	b _0805AC12
	.align 2, 0
_0805AABC: .4byte gEwramData
_0805AAC0: .4byte 0x00013110
_0805AAC4:
	ldr r0, [r6, #0x18]
	cmp r0, #0
	ble _0805AAD6
	ldr r2, _0805AB04 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r6, #0x18]
	cmp r0, #0
	bge _0805AAD6
	str r1, [r6, #0x18]
_0805AAD6:
	adds r1, r7, #0
	cmp r7, #0
	bge _0805AADE
	rsbs r1, r7, #0
_0805AADE:
	ldr r0, _0805AB08 @ =0x002FFFFF
	cmp r1, r0
	bgt _0805AAE6
	b _0805AC12
_0805AAE6:
	mov r0, r8
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0805AAF6
	b _0805AC12
_0805AAF6:
	movs r0, #1
	strb r0, [r6, #0xb]
	ldr r0, _0805AB0C @ =0x00000113
	bl PlaySong
	b _0805AC12
	.align 2, 0
_0805AB04: .4byte 0xFFFFFF00
_0805AB08: .4byte 0x002FFFFF
_0805AB0C: .4byte 0x00000113
_0805AB10:
	ldr r1, [r6, #0x18]
	ldr r0, _0805AB2C @ =0x00002FFF
	cmp r1, r0
	bgt _0805AB30
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	str r0, [r6, #0x18]
	movs r1, #0xc0
	lsls r1, r1, #6
	cmp r0, r1
	ble _0805AB8E
	str r1, [r6, #0x18]
	b _0805AB8E
	.align 2, 0
_0805AB2C: .4byte 0x00002FFF
_0805AB30:
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _0805AB8E
	movs r0, #0
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _0805AC40 @ =0x0000A094
	adds r2, r2, r0
	movs r3, #6
	ldrsh r0, [r2, r3]
	adds r4, r1, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	adds r5, r1, r0
	subs r4, #0x10
	adds r1, r5, #0
	adds r1, #8
	adds r0, r4, #0
	bl sub_08002248
	adds r1, r5, #0
	subs r1, #8
	adds r0, r4, #0
	bl sub_08002248
	adds r1, r5, #0
	subs r1, #0x18
	adds r0, r4, #0
	bl sub_08002248
	adds r1, r5, #0
	subs r1, #0x28
	adds r0, r4, #0
	bl sub_08002248
	adds r1, r5, #0
	subs r1, #0x38
	adds r0, r4, #0
	bl sub_08002248
_0805AB8E:
	adds r1, r7, #0
	cmp r1, #0
	bge _0805AB96
	rsbs r1, r1, #0
_0805AB96:
	ldr r0, _0805AC44 @ =0x002FFFFF
	cmp r1, r0
	ble _0805AC12
	mov r0, r8
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0805AC12
	strb r0, [r6, #0xb]
	movs r0, #1
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, _0805AC48 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _0805AC40 @ =0x0000A094
	adds r1, r1, r3
	movs r3, #6
	ldrsh r0, [r1, r3]
	adds r4, r2, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
	adds r5, r2, r0
	subs r4, #0x10
	adds r1, r5, #0
	adds r1, #8
	adds r0, r4, #0
	bl sub_08002200
	adds r1, r5, #0
	subs r1, #8
	adds r0, r4, #0
	bl sub_08002200
	adds r1, r5, #0
	subs r1, #0x18
	adds r0, r4, #0
	bl sub_08002200
	adds r1, r5, #0
	subs r1, #0x28
	adds r0, r4, #0
	bl sub_08002200
	adds r1, r5, #0
	subs r1, #0x38
	adds r0, r4, #0
	bl sub_08002200
	ldr r0, _0805AC4C @ =0x00000113
	bl PlaySong
_0805AC12:
	ldr r0, [r6, #0x18]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r1, #7
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805AC40: .4byte 0x0000A094
_0805AC44: .4byte 0x002FFFFF
_0805AC48: .4byte gEwramData
_0805AC4C: .4byte 0x00000113

	thumb_func_start sub_0805AC50
sub_0805AC50: @ 0x0805AC50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r2, _0805ACDC @ =sub_0805AD9C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, _0805ACE0 @ =gEwramData
	mov sl, r0
	cmp r4, #0
	bne _0805AC74
	b _0805AD7A
_0805AC74:
	ldr r0, [r7, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r4, #0x44]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _0805ACE4 @ =0x08259130
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _0805ACE8 @ =0x082591BC
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #2
	mov sb, r0
	movs r0, #2
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	mov r1, sb
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0805ACEC
	adds r0, r4, #0
	bl EntityDelete
	b _0805AD7A
	.align 2, 0
_0805ACDC: .4byte sub_0805AD9C
_0805ACE0: .4byte gEwramData
_0805ACE4: .4byte 0x08259130
_0805ACE8: .4byte 0x082591BC
_0805ACEC:
	adds r6, r4, #0
	adds r6, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r6]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6]
	adds r5, r4, #0
	adds r5, #0x59
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #9
	mov r8, r0
	ldrb r0, [r6]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r0, r0, #7
	str r0, [sp]
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	mov r1, r8
	mov r2, r8
	bl sub_0803E058
	str r7, [r4, #0x14]
	ldrb r0, [r5]
	mov r1, sb
	orrs r0, r1
	strb r0, [r5]
	ldr r0, _0805AD8C @ =sub_0803B9D0
	str r0, [r4, #4]
	mov r1, sl
	ldr r0, [r1]
	ldr r1, _0805AD90 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	subs r1, r1, r0
	cmp r1, #0
	bge _0805AD52
	rsbs r1, r1, #0
_0805AD52:
	ldr r0, _0805AD94 @ =0x002FFFFF
	cmp r1, r0
	bgt _0805AD7A
	ldr r0, _0805AD98 @ =0xFFFFE000
	str r0, [r4, #0x18]
	movs r1, #1
	strb r1, [r4, #0xb]
	ldrb r1, [r6]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r1, r1, #7
	str r1, [sp]
	ldrb r1, [r6]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	mov r1, r8
	mov r2, r8
	bl sub_0803E058
_0805AD7A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805AD8C: .4byte sub_0803B9D0
_0805AD90: .4byte 0x00013110
_0805AD94: .4byte 0x002FFFFF
_0805AD98: .4byte 0xFFFFE000

	thumb_func_start sub_0805AD9C
sub_0805AD9C: @ 0x0805AD9C
	push {r4, lr}
	sub sp, #8
	adds r1, r0, #0
	ldr r0, [r1, #0x14]
	ldrb r0, [r0, #0xb]
	strb r0, [r1, #0xb]
	ldrb r2, [r1, #0xb]
	cmp r2, #0
	beq _0805ADB4
	cmp r2, #1
	beq _0805ADC4
	b _0805ADD6
_0805ADB4:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bge _0805ADD6
	adds r0, #0xaa
	str r0, [r1, #0x18]
	cmp r0, #0
	ble _0805ADD6
	b _0805ADD4
_0805ADC4:
	ldr r0, [r1, #0x18]
	ldr r2, _0805ADFC @ =0xFFFFE000
	cmp r0, r2
	ble _0805ADD6
	subs r0, #0xaa
	str r0, [r1, #0x18]
	cmp r0, r2
	bge _0805ADD6
_0805ADD4:
	str r2, [r1, #0x18]
_0805ADD6:
	ldr r0, [r1, #0x18]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r1, #7
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805ADFC: .4byte 0xFFFFE000

	thumb_func_start Object37Update
Object37Update: @ 0x0805AE00
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _0805AE12
	adds r0, r1, #0
	bl sub_0805AA94
_0805AE12:
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_0805AE18
sub_0805AE18: @ 0x0805AE18
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0805AE4C @ =0x08259130
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0805AE5C
	ldr r0, _0805AE50 @ =0x08259138
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0805AE54 @ =0x082591BC
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _0805AE58 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0805AE5E
	.align 2, 0
_0805AE4C: .4byte 0x08259130
_0805AE50: .4byte 0x08259138
_0805AE54: .4byte 0x082591BC
_0805AE58: .4byte sub_0803B9D0
_0805AE5C:
	movs r0, #0
_0805AE5E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805AE64
sub_0805AE64: @ 0x0805AE64
	push {lr}
	ldr r2, _0805AEAC @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805AEB0 @ =0x000013FF
	ands r0, r1
	movs r3, #0
	strh r0, [r2]
	ldr r1, _0805AEB4 @ =gDisplayRegisters
	ldr r0, _0805AEB8 @ =0x00001C04
	strh r0, [r1]
	adds r0, #0xfd
	strh r0, [r1, #2]
	strh r3, [r1, #8]
	strh r3, [r1, #0xa]
	ldr r0, _0805AEBC @ =0x0815E3EC
	bl sub_0803C8B0
	ldr r0, _0805AEC0 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _0805AECC
	cmp r0, #3
	beq _0805AEE4
	ldr r0, _0805AEC4 @ =0x0815E084
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _0805AEC8 @ =0x0827B200
	b _0805AEFC
	.align 2, 0
_0805AEAC: .4byte gUnk_03002CB0
_0805AEB0: .4byte 0x000013FF
_0805AEB4: .4byte gDisplayRegisters
_0805AEB8: .4byte 0x00001C04
_0805AEBC: .4byte 0x0815E3EC
_0805AEC0: .4byte gEwramData
_0805AEC4: .4byte 0x0815E084
_0805AEC8: .4byte 0x0827B200
_0805AECC:
	ldr r0, _0805AEDC @ =0x0815E09C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _0805AEE0 @ =0x08277984
	b _0805AEFC
	.align 2, 0
_0805AEDC: .4byte 0x0815E09C
_0805AEE0: .4byte 0x08277984
_0805AEE4:
	ldr r0, _0805AF4C @ =0x0815E08C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _0805AF50 @ =0x0815E094
	ldr r1, _0805AF54 @ =0x06002000
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _0805AF58 @ =0x0826C848
_0805AEFC:
	ldr r1, _0805AF5C @ =0x0600A000
	movs r2, #0
	bl sub_0803FD9C
	ldr r0, _0805AF60 @ =0x06004000
	bl sub_080412DC
	ldr r0, _0805AF64 @ =0x081183F4
	movs r1, #0
	movs r2, #1
	movs r3, #0xf
	bl sub_0803C918
	movs r0, #8
	bl sub_080412F0
	movs r0, #0
	bl sub_08041304
	movs r0, #0
	movs r1, #0
	movs r2, #0x29
	movs r3, #4
	bl sub_08040748
	bl sub_08040FE0
	movs r0, #0
	movs r1, #1
	movs r2, #0x25
	movs r3, #3
	bl sub_08040748
	movs r0, #0
	movs r1, #1
	bl sub_0804066C
	pop {r0}
	bx r0
	.align 2, 0
_0805AF4C: .4byte 0x0815E08C
_0805AF50: .4byte 0x0815E094
_0805AF54: .4byte 0x06002000
_0805AF58: .4byte 0x0826C848
_0805AF5C: .4byte 0x0600A000
_0805AF60: .4byte 0x06004000
_0805AF64: .4byte 0x081183F4

	thumb_func_start sub_0805AF68
sub_0805AF68: @ 0x0805AF68
	push {r4, r5, r6, lr}
	ldr r4, _0805AFB4 @ =gEwramData
	ldr r5, [r4]
	adds r5, #0x60
	bl sub_0800D154
	bl sub_0803C294
	movs r0, #1
	bl sub_0803FD1C
	ldr r2, [r4]
	ldr r3, _0805AFB8 @ =0x0000A074
	adds r2, r2, r3
	ldrb r0, [r2]
	movs r1, #0x30
	orrs r0, r1
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0805AFBC @ =gDisplayRegisters
	adds r0, #0x48
	movs r6, #0
	movs r1, #0xff
	strh r1, [r0]
	ldr r1, [r4]
	adds r1, r1, r3
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #9
	strb r0, [r5, #4]
	strb r6, [r5, #5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805AFB4: .4byte gEwramData
_0805AFB8: .4byte 0x0000A074
_0805AFBC: .4byte gDisplayRegisters

	thumb_func_start sub_0805AFC0
sub_0805AFC0: @ 0x0805AFC0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, _0805AFE8 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0805AFEC @ =0x00000E2C
	adds r5, r0, r2
	ldrh r2, [r0, #0x18]
	ldrh r3, [r0, #0x16]
	movs r7, #0
	ldrb r0, [r6, #5]
	adds r4, r1, #0
	cmp r0, #0xd
	bls _0805AFDE
	b _0805B40C
_0805AFDE:
	lsls r0, r0, #2
	ldr r1, _0805AFF0 @ =_0805AFF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805AFE8: .4byte gEwramData
_0805AFEC: .4byte 0x00000E2C
_0805AFF0: .4byte _0805AFF4
_0805AFF4: @ jump table
	.4byte _0805B02C @ case 0
	.4byte _0805B110 @ case 1
	.4byte _0805B12C @ case 2
	.4byte _0805B194 @ case 3
	.4byte _0805B240 @ case 4
	.4byte _0805B40C @ case 5
	.4byte _0805B40C @ case 6
	.4byte _0805B40C @ case 7
	.4byte _0805B40C @ case 8
	.4byte _0805B40C @ case 9
	.4byte _0805B2A0 @ case 10
	.4byte _0805B318 @ case 11
	.4byte _0805B344 @ case 12
	.4byte _0805B356 @ case 13
_0805B02C:
	bl sub_08000B64
	ldr r1, _0805B0CC @ =gDisplayRegisters
	adds r1, #0x4c
	ldrh r0, [r1]
	adds r0, #1
	movs r4, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	beq _0805B046
	b _0805B40C
_0805B046:
	bl sub_080125B4
	bl sub_0803B04C
	bl sub_0803E75C
	bl sub_0805AE64
	adds r0, r5, #0
	bl sub_08047F34
	bl sub_08048AA4
	strb r4, [r5, #0xa]
	strb r4, [r5, #0xb]
	movs r0, #0
	str r0, [sp]
	ldr r1, _0805B0D0 @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _0805B0D4 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _0805B0D8 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #2
	movs r2, #0x25
	movs r3, #3
	bl sub_08040748
	bl sub_08040FE0
	movs r4, #0
_0805B08A:
	adds r1, r4, #0
	adds r1, #0x10
	lsls r2, r4, #0x15
	ldr r0, _0805B0DC @ =0xF0600000
	adds r2, r2, r0
	lsrs r2, r2, #0x10
	movs r0, #2
	movs r3, #0x1d
	bl sub_08046DD4
	adds r4, #1
	cmp r4, #3
	ble _0805B08A
	ldrb r0, [r5, #0xb]
	movs r1, #0xed
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #2
	bl sub_08047390
	ldr r0, _0805B0E0 @ =gEwramData
	ldr r0, [r0]
	movs r2, #0x9a
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #2
	beq _0805B0E8
	cmp r0, #3
	beq _0805B0F0
	ldr r1, _0805B0E4 @ =0x0815F120
	b _0805B0F2
	.align 2, 0
_0805B0CC: .4byte gDisplayRegisters
_0805B0D0: .4byte 0x040000D4
_0805B0D4: .4byte 0x0600E000
_0805B0D8: .4byte 0x85000200
_0805B0DC: .4byte 0xF0600000
_0805B0E0: .4byte gEwramData
_0805B0E4: .4byte 0x0815F120
_0805B0E8:
	ldr r1, _0805B0EC @ =0x0815F480
	b _0805B0F2
	.align 2, 0
_0805B0EC: .4byte 0x0815F480
_0805B0F0:
	ldr r1, _0805B10C @ =0x0815F2D0
_0805B0F2:
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldrb r0, [r6, #5]
	adds r0, #1
	strb r0, [r6, #5]
	movs r0, #0x30
	bl PlaySong
	b _0805B40C
	.align 2, 0
_0805B10C: .4byte 0x0815F2D0
_0805B110:
	ldr r1, _0805B128 @ =gDisplayRegisters
	adds r1, #0x4c
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0805B122
	b _0805B40C
_0805B122:
	ldrb r0, [r6, #5]
	adds r0, #1
	b _0805B40A
	.align 2, 0
_0805B128: .4byte gDisplayRegisters
_0805B12C:
	movs r0, #3
	ands r0, r3
	cmp r0, #0
	beq _0805B15A
	movs r1, #2
	ands r1, r3
	cmp r1, #0
	bne _0805B142
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	bne _0805B14E
_0805B142:
	movs r0, #0xf0
	bl PlaySong
	ldrb r0, [r6, #5]
	adds r0, #1
	b _0805B40A
_0805B14E:
	strb r1, [r5, #0x15]
	movs r0, #0xf4
	bl PlaySong
	movs r0, #0xa
	b _0805B40A
_0805B15A:
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	bne _0805B164
	b _0805B40C
_0805B164:
	ldrb r1, [r5, #0xb]
	movs r0, #0x40
	ands r2, r0
	adds r0, r1, #1
	cmp r2, #0
	beq _0805B172
	adds r0, r1, #2
_0805B172:
	movs r1, #3
	bl Mod
	strb r0, [r5, #0xb]
	bl sub_08040FE0
	ldrb r0, [r5, #0xb]
	movs r3, #0xed
	lsls r3, r3, #2
	adds r0, r0, r3
	movs r1, #2
	bl sub_08047390
	movs r0, #0xf1
	bl PlaySong
	b _0805B40C
_0805B194:
	ldr r1, _0805B1CC @ =gDisplayRegisters
	adds r1, #0x4c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	beq _0805B1A8
	b _0805B40C
_0805B1A8:
	adds r0, r5, #0
	bl EntityDelete
	bl sub_08048BA0
	ldr r0, _0805B1D0 @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _0805B1D8
	cmp r0, #3
	beq _0805B1E0
	ldr r0, _0805B1D4 @ =0x082052D8
	b _0805B1E2
	.align 2, 0
_0805B1CC: .4byte gDisplayRegisters
_0805B1D0: .4byte gEwramData
_0805B1D4: .4byte 0x082052D8
_0805B1D8:
	ldr r0, _0805B1DC @ =0x0827798C
	b _0805B1E2
	.align 2, 0
_0805B1DC: .4byte 0x0827798C
_0805B1E0:
	ldr r0, _0805B230 @ =0x0826C840
_0805B1E2:
	bl sub_0803AFB8
	bl sub_0803B980
	bl sub_0801261C
	ldr r4, [r6, #0x28]
	adds r0, r4, #0
	bl sub_080108DC
	bl sub_0803B184
	bl sub_0803E7C0
	adds r0, r4, #0
	bl sub_080108FC
	bl sub_0803C3E0
	bl sub_0800DA50
	ldr r0, _0805B234 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0805B238 @ =0x0000A0E8
	adds r1, r0, r2
	ldr r1, [r1]
	ldr r3, _0805B23C @ =0x0000A0EC
	adds r2, r0, r3
	ldrh r2, [r2]
	adds r3, #2
	adds r0, r0, r3
	ldrh r3, [r0]
	movs r0, #1
	bl sub_0803F8A8
	ldrb r0, [r6, #5]
	adds r0, #1
	b _0805B40A
	.align 2, 0
_0805B230: .4byte 0x0826C840
_0805B234: .4byte gEwramData
_0805B238: .4byte 0x0000A0E8
_0805B23C: .4byte 0x0000A0EC
_0805B240:
	bl sub_08000B64
	bl sub_0800D1F0
	ldr r2, _0805B294 @ =gDisplayRegisters
	adds r1, r2, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0805B25C
	b _0805B40C
_0805B25C:
	adds r2, #0x48
	ldrh r0, [r2]
	movs r3, #0xfc
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r4, _0805B298 @ =gEwramData
	ldr r1, [r4]
	ldr r3, _0805B29C @ =0x0000A074
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r2, [r4]
	adds r2, r2, r3
	ldrb r1, [r2]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	movs r7, #1
	b _0805B40C
	.align 2, 0
_0805B294: .4byte gDisplayRegisters
_0805B298: .4byte gEwramData
_0805B29C: .4byte 0x0000A074
_0805B2A0:
	ldr r1, _0805B2D4 @ =gDisplayRegisters
	adds r1, #0x4c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	beq _0805B2B4
	b _0805B40C
_0805B2B4:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xa]
	ldr r0, [r4]
	movs r1, #0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _0805B2DC
	cmp r0, #3
	beq _0805B2E8
	ldr r0, _0805B2D8 @ =0x08526640
	ldrb r1, [r5, #0xb]
	b _0805B2EE
	.align 2, 0
_0805B2D4: .4byte gDisplayRegisters
_0805B2D8: .4byte 0x08526640
_0805B2DC:
	ldr r0, _0805B2E4 @ =0x08526640
	ldrb r1, [r5, #0xb]
	adds r1, #2
	b _0805B2EE
	.align 2, 0
_0805B2E4: .4byte 0x08526640
_0805B2E8:
	ldr r0, _0805B310 @ =0x08526640
	ldrb r1, [r5, #0xb]
	adds r1, #4
_0805B2EE:
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	ldr r2, _0805B314 @ =gDisplayRegisters
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #8]
	strb r1, [r5, #0xb]
	strb r1, [r5, #0xc]
	ldrb r0, [r6, #5]
	adds r0, #1
	b _0805B40A
	.align 2, 0
_0805B310: .4byte 0x08526640
_0805B314: .4byte gDisplayRegisters
_0805B318:
	ldr r0, _0805B340 @ =gDisplayRegisters
	adds r4, r0, #0
	adds r4, #0x4c
	ldrh r0, [r4]
	cmp r0, #0x10
	bne _0805B32C
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08067310
_0805B32C:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805B40C
	ldrb r0, [r6, #5]
	adds r0, #1
	b _0805B40A
	.align 2, 0
_0805B340: .4byte gDisplayRegisters
_0805B344:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08067488
	cmp r0, #0
	beq _0805B40C
	ldrb r0, [r6, #5]
	adds r0, #1
	b _0805B40A
_0805B356:
	ldr r1, _0805B3D8 @ =gDisplayRegisters
	adds r1, #0x4c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bne _0805B40C
	ldrb r0, [r5, #0xa]
	subs r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xa]
	movs r0, #0
	str r0, [sp]
	ldr r1, _0805B3DC @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _0805B3E0 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _0805B3E4 @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	movs r1, #2
	movs r2, #0x25
	movs r3, #3
	bl sub_08040748
	bl sub_08040FE0
	movs r4, #0
_0805B398:
	adds r1, r4, #0
	adds r1, #0x10
	lsls r2, r4, #0x15
	ldr r3, _0805B3E8 @ =0xF0600000
	adds r2, r2, r3
	lsrs r2, r2, #0x10
	movs r0, #2
	movs r3, #0x1d
	bl sub_08046DD4
	adds r4, #1
	cmp r4, #3
	ble _0805B398
	ldrb r0, [r5, #0xb]
	movs r1, #0xed
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #2
	bl sub_08047390
	ldr r0, _0805B3EC @ =gEwramData
	ldr r0, [r0]
	movs r2, #0x9a
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #2
	beq _0805B3F4
	cmp r0, #3
	beq _0805B3FC
	ldr r1, _0805B3F0 @ =0x0815F120
	b _0805B3FE
	.align 2, 0
_0805B3D8: .4byte gDisplayRegisters
_0805B3DC: .4byte 0x040000D4
_0805B3E0: .4byte 0x0600E000
_0805B3E4: .4byte 0x85000200
_0805B3E8: .4byte 0xF0600000
_0805B3EC: .4byte gEwramData
_0805B3F0: .4byte 0x0815F120
_0805B3F4:
	ldr r1, _0805B3F8 @ =0x0815F480
	b _0805B3FE
	.align 2, 0
_0805B3F8: .4byte 0x0815F480
_0805B3FC:
	ldr r1, _0805B428 @ =0x0815F2D0
_0805B3FE:
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F8A8
	movs r0, #1
_0805B40A:
	strb r0, [r6, #5]
_0805B40C:
	ldrb r0, [r6, #5]
	cmp r0, #0
	beq _0805B418
	adds r0, r5, #0
	bl sub_08048A64
_0805B418:
	bl UpdateInGameTimer
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805B428: .4byte 0x0815F2D0

	thumb_func_start Object20Create
Object20Create: @ 0x0805B42C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0805B4A4 @ =gEwramData
	ldr r2, [r0]
	ldr r3, _0805B4A8 @ =0x0001327A
	adds r1, r2, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r3, r0, #0
	cmp r1, #0
	bgt _0805B452
	ldr r1, _0805B4AC @ =0x0000042C
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0805B49C
_0805B452:
	ldr r2, [r3]
	adds r0, r2, #0
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0805B49C
	ldr r3, _0805B4B0 @ =0x00013266
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805B47C
	ldr r1, _0805B4AC @ =0x0000042C
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0805B49C
_0805B47C:
	ldr r1, _0805B4B4 @ =0x08526658
	movs r2, #0x30
	ldrsh r0, [r6, r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805B4B8
_0805B49C:
	adds r0, r6, #0
	bl EntityDelete
	b _0805B4FC
	.align 2, 0
_0805B4A4: .4byte gEwramData
_0805B4A8: .4byte 0x0001327A
_0805B4AC: .4byte 0x0000042C
_0805B4B0: .4byte 0x00013266
_0805B4B4: .4byte 0x08526658
_0805B4B8:
	ldr r4, _0805B504 @ =gEwramData
	ldr r2, [r4]
	ldr r5, _0805B508 @ =0x0000042C
	adds r2, r2, r5
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r2]
	bl sub_0800EB04
	bl sub_080235C8
	bl sub_0802DFF0
	movs r0, #0
	bl sub_0800C5A8
	ldr r0, [r4]
	ldr r3, _0805B50C @ =0x0000041C
	adds r1, r0, r3
	str r6, [r1]
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805B4F8
	movs r0, #1
	movs r1, #0
	bl SetPlayerInput
_0805B4F8:
	bl sub_0806666C
_0805B4FC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B504: .4byte gEwramData
_0805B508: .4byte 0x0000042C
_0805B50C: .4byte 0x0000041C

	thumb_func_start Object20Update
Object20Update: @ 0x0805B510
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _0805B550 @ =gEwramData
	ldr r3, [r5]
	ldr r6, _0805B554 @ =0x0000042C
	adds r0, r3, r6
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805B532
	ldr r1, _0805B558 @ =0x00007864
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
_0805B532:
	movs r0, #0xa
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805B560
	ldr r2, _0805B55C @ =0x0000041B
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805B596
	movs r0, #3
	rsbs r0, r0, #0
	bl sub_08067804
	b _0805B596
	.align 2, 0
_0805B550: .4byte gEwramData
_0805B554: .4byte 0x0000042C
_0805B558: .4byte 0x00007864
_0805B55C: .4byte 0x0000041B
_0805B560:
	ldr r2, [r5]
	ldrh r1, [r2, #0x16]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805B596
	ldr r0, [r3, #0x60]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0805B596
	adds r0, r2, r6
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _0805B596
	ldr r0, _0805B5CC @ =0x00000414
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
_0805B596:
	ldr r1, _0805B5D0 @ =0x085266D8
	movs r2, #0x30
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r2, r0, #0
	ldr r0, _0805B5D4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805B5D8 @ =0x0000042C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805B5DC
	movs r0, #1
	adds r1, r2, #0
	bl SetPlayerInput
	movs r0, #0
	bl sub_0800C5A8
	b _0805B5E2
	.align 2, 0
_0805B5CC: .4byte 0x00000414
_0805B5D0: .4byte 0x085266D8
_0805B5D4: .4byte gEwramData
_0805B5D8: .4byte 0x0000042C
_0805B5DC:
	movs r0, #1
	bl sub_0800C5A8
_0805B5E2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0805B5E8
sub_0805B5E8: @ 0x0805B5E8
	push {r4, r5, lr}
	sub sp, #0x94
	adds r5, r0, #0
	ldr r0, _0805B600 @ =sub_0805B748
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	bne _0805B604
	movs r0, #0
	b _0805B662
	.align 2, 0
_0805B600: .4byte sub_0805B748
_0805B604:
	ldr r1, _0805B648 @ =0x081186DC
	add r0, sp, #4
	movs r2, #0x90
	bl memcpy
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #2
	add r0, sp, #0xc
	adds r0, r0, r3
	ldr r1, [r0]
	mov r0, sp
	adds r0, r0, r3
	adds r0, #4
	ldr r2, [r0]
	add r0, sp, #8
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805B64C
	adds r0, r4, #0
	bl EntityDelete
	adds r0, r4, #0
	bl EntityDelete
	movs r0, #0
	b _0805B662
	.align 2, 0
_0805B648: .4byte 0x081186DC
_0805B64C:
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
_0805B662:
	add sp, #0x94
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805B66C
sub_0805B66C: @ 0x0805B66C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r6, _0805B6D4 @ =gEwramData
	ldr r2, [r6]
	ldr r0, _0805B6D8 @ =0x0000042C
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _0805B6DC @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r2]
	movs r0, #1
	bl sub_0800C5A8
	adds r2, r5, #0
	adds r2, #0x59
	movs r0, #1
	ands r4, r0
	lsls r4, r4, #3
	ldrb r1, [r2]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	movs r0, #0xa
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _0805B6B0
	bl sub_08067898
_0805B6B0:
	ldr r2, [r6]
	ldr r0, _0805B6E0 @ =0x0000A074
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_0800C778
	bl sub_0806666C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B6D4: .4byte gEwramData
_0805B6D8: .4byte 0x0000042C
_0805B6DC: .4byte 0xFFFFFDFF
_0805B6E0: .4byte 0x0000A074

	thumb_func_start sub_0805B6E4
sub_0805B6E4: @ 0x0805B6E4
	push {lr}
	ldr r3, _0805B710 @ =gEwramData
	ldr r1, [r3]
	adds r1, #0x60
	movs r2, #0
	strb r2, [r1, #5]
	ldr r2, [r3]
	ldr r1, _0805B714 @ =0x0000042C
	adds r2, r2, r1
	ldr r1, [r2]
	movs r3, #1
	orrs r1, r3
	str r1, [r2]
	bl sub_08067934
	movs r0, #0
	bl sub_0800C5A8
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0805B710: .4byte gEwramData
_0805B714: .4byte 0x0000042C

	thumb_func_start sub_0805B718
sub_0805B718: @ 0x0805B718
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805B740 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0805B744 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
	movs r0, #1
	bl sub_0800C5A8
	movs r1, #1
	strb r1, [r4, #4]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805B740: .4byte gEwramData
_0805B744: .4byte 0x0000042C

	thumb_func_start sub_0805B748
sub_0805B748: @ 0x0805B748
	push {lr}
	bl sub_0803F17C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805B754
sub_0805B754: @ 0x0805B754
	push {r4, r5, lr}
	sub sp, #0x94
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, _0805B7A8 @ =0x081186DC
	add r0, sp, #4
	movs r2, #0x90
	bl memcpy
	lsls r3, r4, #1
	adds r3, r3, r4
	lsls r3, r3, #2
	add r0, sp, #0xc
	adds r0, r0, r3
	ldr r1, [r0]
	mov r0, sp
	adds r0, r0, r3
	adds r0, #4
	ldr r2, [r0]
	add r0, sp, #8
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805B7AC
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	b _0805B7B4
	.align 2, 0
_0805B7A8: .4byte 0x081186DC
_0805B7AC:
	adds r0, r5, #0
	bl EntityDelete
	movs r0, #0
_0805B7B4:
	add sp, #0x94
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805B7BC
sub_0805B7BC: @ 0x0805B7BC
	push {r4, lr}
	movs r3, #0
	ldr r1, _0805B7F0 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _0805B7F4 @ =0x00013110
	adds r1, r1, r2
	ldr r2, [r1]
	adds r1, r2, #0
	adds r1, #0x42
	adds r0, #0x42
	movs r4, #0
	ldrsh r1, [r1, r4]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bge _0805B7F8
	adds r0, r2, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0805B80A
	movs r3, #1
	b _0805B80A
	.align 2, 0
_0805B7F0: .4byte gEwramData
_0805B7F4: .4byte 0x00013110
_0805B7F8:
	adds r0, r2, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r3, r0, #0x1f
_0805B80A:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805B814
sub_0805B814: @ 0x0805B814
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r3, r1, #0x10
	lsrs r5, r3, #0x10
	lsls r2, r2, #0x10
	ldr r0, _0805B850 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805B854 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x42
	lsrs r0, r2, #0x11
	subs r0, r4, r0
	ldrh r1, [r1]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	cmp r0, r2
	bhs _0805B85C
	lsrs r0, r3, #0x11
	subs r0, r4, r0
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	bhs _0805B858
	movs r0, #1
	rsbs r0, r0, #0
	b _0805B85E
	.align 2, 0
_0805B850: .4byte gEwramData
_0805B854: .4byte 0x00013110
_0805B858:
	movs r0, #0
	b _0805B85E
_0805B85C:
	movs r0, #1
_0805B85E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805B864
sub_0805B864: @ 0x0805B864
	push {lr}
	movs r0, #0x3a
	bl sub_08012078
	adds r1, r0, #0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	pop {r1}
	bx r1

	thumb_func_start sub_0805B878
sub_0805B878: @ 0x0805B878
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl PlaySong
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805b888
sub_0805b888: @ 0x0805B888
	push {r4, lr}
	ldr r4, _0805B8E8 @ =gEwramData
	ldr r2, [r4]
	ldr r0, _0805B8EC @ =0x0000042C
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	bl sub_0800EF6C
	movs r0, #0x80
	lsls r0, r0, #5
	bl PlaySong
	ldr r2, [r4]
	ldr r0, _0805B8F0 @ =0x00013110
	adds r2, r2, r0
	ldr r0, [r2]
	adds r0, #0x42
	movs r3, #0
	movs r1, #0x78
	strh r1, [r0]
	ldr r0, [r2]
	adds r0, #0x46
	movs r1, #0x50
	strh r1, [r0]
	ldr r0, [r2]
	adds r0, #0x4a
	strh r3, [r0]
	ldr r0, [r2]
	adds r0, #0x4e
	strh r3, [r0]
	ldr r1, [r2]
	adds r1, #0x58
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B8E8: .4byte gEwramData
_0805B8EC: .4byte 0x0000042C
_0805B8F0: .4byte 0x00013110

	thumb_func_start sub_0805B8F4
sub_0805B8F4: @ 0x0805B8F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _0805B908
	b _0805BBB6
_0805B908:
	lsls r0, r0, #2
	ldr r1, _0805B914 @ =_0805B918
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805B914: .4byte _0805B918
_0805B918: @ jump table
	.4byte _0805B92C @ case 0
	.4byte _0805B958 @ case 1
	.4byte _0805B9B4 @ case 2
	.4byte _0805BA80 @ case 3
	.4byte _0805BAE4 @ case 4
_0805B92C:
	ldrb r1, [r6, #0xc]
	cmp r1, #0
	bne _0805B93A
	movs r0, #8
	strb r0, [r6, #0xd]
	adds r0, r1, #1
	strb r0, [r6, #0xc]
_0805B93A:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805B94C
	b _0805BA6C
_0805B94C:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
	b _0805BA6C
_0805B958:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0805B962
	adds r0, #1
	strb r0, [r6, #0xc]
_0805B962:
	adds r0, r6, #0
	bl sub_080628AC
	cmp r0, #0
	bne _0805B96E
	b _0805BBB6
_0805B96E:
	movs r4, #0
	movs r0, #0
	strh r0, [r6, #0x18]
	ldr r0, _0805B9A8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805B9AC @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x58
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0x20
	bl sub_08013CF0
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xc]
	strb r4, [r6, #0xb]
	ldr r0, _0805B9B0 @ =0x082099FC
	movs r1, #5
	movs r2, #1
	movs r3, #0xe
	bl sub_0803C7B4
	b _0805BBB6
	.align 2, 0
_0805B9A8: .4byte gEwramData
_0805B9AC: .4byte 0x00013110
_0805B9B0: .4byte 0x082099FC
_0805B9B4:
	ldrb r3, [r6, #0xb]
	adds r0, r3, #0
	cmp r0, #0
	bne _0805B9D4
	ldr r2, _0805B9CC @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805B9D0 @ =0x0000F1FF
	ands r0, r1
	movs r1, #0
	strh r0, [r2]
	adds r0, r3, #1
	b _0805BAD4
	.align 2, 0
_0805B9CC: .4byte gUnk_03002CB0
_0805B9D0: .4byte 0x0000F1FF
_0805B9D4:
	cmp r0, #1
	bne _0805BA34
	add r1, sp, #8
	ldr r2, _0805BA1C @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0805BA20 @ =0x040000D4
	add r0, sp, #8
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0805BA24 @ =0x81000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r2, #0
	str r0, [r1]
	ldr r0, _0805BA28 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0805BA2C @ =0x0001261C
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _0805BA30 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x25
	bl sub_08067934
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xd]
	b _0805BBB6
	.align 2, 0
_0805BA1C: .4byte 0x0000FFFF
_0805BA20: .4byte 0x040000D4
_0805BA24: .4byte 0x81000010
_0805BA28: .4byte gEwramData
_0805BA2C: .4byte 0x0001261C
_0805BA30: .4byte 0x80000010
_0805BA34:
	cmp r0, #2
	bne _0805BA56
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [sp]
	movs r0, #0x80
	str r0, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	movs r3, #0
	bl sub_0803CDF0
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	b _0805BAD4
_0805BA56:
	bl sub_0803D06C
	cmp r0, #0
	beq _0805BA60
	b _0805BBB6
_0805BA60:
	ldr r2, _0805BA78 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805BA7C @ =0x0000F1FF
	ands r0, r1
	movs r1, #0
	strh r0, [r2]
_0805BA6C:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
	b _0805BBB6
	.align 2, 0
_0805BA78: .4byte gUnk_03002CB0
_0805BA7C: .4byte 0x0000F1FF
_0805BA80:
	bl sub_08067A04
	cmp r0, #0
	beq _0805BA94
	ldrb r0, [r6, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
_0805BA94:
	ldrb r1, [r6, #0xb]
	cmp r1, #1
	beq _0805BA9C
	b _0805BBB6
_0805BA9C:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0805BAB6
	ldr r0, _0805BADC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0805BAE0 @ =0x00000417
	adds r0, r0, r2
	strb r1, [r0]
	movs r0, #0x40
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_0805BAB6:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805BBB6
	ldr r0, _0805BADC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0805BAE0 @ =0x00000417
	adds r0, r0, r2
	strb r1, [r0]
	ldrb r0, [r6, #0xb]
	adds r0, #1
_0805BAD4:
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
	b _0805BBB6
	.align 2, 0
_0805BADC: .4byte gEwramData
_0805BAE0: .4byte 0x00000417
_0805BAE4:
	ldrb r4, [r6, #0xb]
	cmp r4, #0
	bne _0805BB14
	movs r3, #0x80
	lsls r3, r3, #9
	str r4, [sp]
	movs r0, #0x80
	str r0, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	bl sub_0803CDF0
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r4, [r6, #0xc]
	movs r0, #0x20
	strb r0, [r6, #0xd]
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_08013F6C
	b _0805BBB6
_0805BB14:
	cmp r4, #1
	bne _0805BB9C
	bl sub_0803D06C
	adds r7, r0, #0
	cmp r7, #0
	bne _0805BB9C
	movs r0, #0xe
	bl sub_0803D004
	movs r0, #0
	bl sub_0803D3A0
	ldr r4, _0805BB88 @ =gEwramData
	ldr r1, [r4]
	ldr r0, _0805BB8C @ =0x0000A074
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r2, [r4]
	ldr r5, _0805BB90 @ =0x0000042C
	adds r2, r2, r5
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0805BB94 @ =0x08522C54
	str r7, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08011F44
	ldr r0, [r4]
	adds r0, #0x60
	bl sub_08011AD0
	ldr r0, _0805BB98 @ =gDisplayRegisters
	adds r0, #0x48
	movs r1, #0
	strh r7, [r0]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
	ldr r1, [r4]
	adds r1, r1, r5
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r1]
	b _0805BBB6
	.align 2, 0
_0805BB88: .4byte gEwramData
_0805BB8C: .4byte 0x0000A074
_0805BB90: .4byte 0x0000042C
_0805BB94: .4byte 0x08522C54
_0805BB98: .4byte gDisplayRegisters
_0805BB9C:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _0805BBB6
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0805BBB6
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_08013F6C
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_0805BBB6:
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bls _0805BC5C
	ldrh r0, [r6, #0x18]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	cmp r0, #0
	bge _0805BBCE
	adds r0, #3
_0805BBCE:
	asrs r3, r0, #2
	movs r0, #0x33
	movs r1, #0
	movs r2, #0
	bl sub_0801D028
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r1, [r6, #0x18]
	adds r0, r0, r1
	strh r0, [r6, #0x18]
	ldrb r1, [r6, #0xd]
	adds r0, r1, #0
	adds r0, #0xff
	strb r0, [r6, #0xd]
	lsls r1, r1, #0x18
	movs r0, #0xf0
	lsls r0, r0, #0x14
	ands r0, r1
	cmp r0, #0
	bne _0805BC88
	bl RandomNumberGenerator
	ldr r2, _0805BC44 @ =gEwramData
	mov r8, r2
	ldr r1, [r2]
	ldr r6, _0805BC48 @ =0x00013110
	adds r1, r1, r6
	ldr r1, [r1]
	ldr r4, [r1, #0x40]
	ldr r1, _0805BC4C @ =0xFFF00000
	adds r4, r4, r1
	ldr r5, _0805BC50 @ =0x0007FFFF
	ands r0, r5
	lsls r0, r0, #2
	adds r4, r4, r0
	bl RandomNumberGenerator
	mov r2, r8
	ldr r1, [r2]
	adds r1, r1, r6
	ldr r1, [r1]
	ands r0, r5
	lsls r0, r0, #1
	ldr r2, _0805BC54 @ =0xFFF40000
	adds r0, r0, r2
	ldr r1, [r1, #0x44]
	adds r1, r1, r0
	ldr r3, _0805BC58 @ =0xFFFFE000
	movs r0, #7
	str r0, [sp]
	movs r0, #9
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08045B44
	b _0805BC88
	.align 2, 0
_0805BC44: .4byte gEwramData
_0805BC48: .4byte 0x00013110
_0805BC4C: .4byte 0xFFF00000
_0805BC50: .4byte 0x0007FFFF
_0805BC54: .4byte 0xFFF40000
_0805BC58: .4byte 0xFFFFE000
_0805BC5C:
	ldr r0, _0805BCA8 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0805BCAC @ =0x00013110
	adds r2, r2, r0
	ldr r0, [r2]
	adds r0, #0x42
	movs r3, #0
	movs r1, #0x78
	strh r1, [r0]
	ldr r0, [r2]
	adds r0, #0x46
	movs r1, #0x50
	strh r1, [r0]
	ldr r0, [r2]
	str r3, [r0, #0x48]
	ldr r0, [r2]
	str r3, [r0, #0x4c]
	movs r0, #0x33
	movs r1, #0
	movs r2, #0
	bl sub_0801D028
_0805BC88:
	ldr r0, _0805BCA8 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0805BCB0 @ =0x0000042C
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	str r0, [r1]
	mov r0, sb
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805BCA8: .4byte gEwramData
_0805BCAC: .4byte 0x00013110
_0805BCB0: .4byte 0x0000042C

	thumb_func_start sub_0805bcb4
sub_0805bcb4: @ 0x0805BCB4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _0805BCD4 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _0805BCD8 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	movs r6, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0805BD1A
	cmp r0, #1
	bgt _0805BCDC
	cmp r0, #0
	beq _0805BCE4
	b _0805BE5C
	.align 2, 0
_0805BCD4: .4byte gEwramData
_0805BCD8: .4byte 0x00013110
_0805BCDC:
	cmp r0, #0x80
	bne _0805BCE2
	b _0805BE54
_0805BCE2:
	b _0805BE5C
_0805BCE4:
	adds r1, r2, #0
	adds r1, #0x42
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0x4f
	ble _0805BCF4
	movs r0, #0x4f
	strh r0, [r1]
_0805BCF4:
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xc
	bl sub_08067934
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0805BE5C
_0805BD1A:
	ldrb r0, [r4, #0xb]
	cmp r0, #3
	beq _0805BD3E
	bl sub_08067A04
	cmp r0, #0
	beq _0805BD3E
	ldr r1, [r5]
	ldr r0, _0805BD60 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_0805BD3E:
	ldrb r0, [r4, #0xb]
	adds r2, r0, #0
	cmp r2, #1
	bne _0805BD4A
	movs r0, #0x80
	strb r0, [r4, #0xa]
_0805BD4A:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	cmp r0, #6
	bls _0805BD54
	b _0805BE5C
_0805BD54:
	lsls r0, r0, #2
	ldr r1, _0805BD64 @ =_0805BD68
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805BD60: .4byte 0x0000042C
_0805BD64: .4byte _0805BD68
_0805BD68: @ jump table
	.4byte _0805BD84 @ case 0
	.4byte _0805BD94 @ case 1
	.4byte _0805BDA2 @ case 2
	.4byte _0805BDD4 @ case 3
	.4byte _0805BE18 @ case 4
	.4byte _0805BE26 @ case 5
	.4byte _0805BE5C @ case 6
_0805BD84:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _0805BE5C
_0805BD94:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	b _0805BE08
_0805BDA2:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805BE5C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	ldr r0, _0805BDD0 @ =0xFFFE0000
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r4, #0x50]
	b _0805BE5C
	.align 2, 0
_0805BDD0: .4byte 0xFFFE0000
_0805BDD4:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805BDEA
	adds r2, r4, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_0805BDEA:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x50]
	adds r1, r1, r0
	str r1, [r4, #0x48]
	ldr r0, _0805BE10 @ =0xFFFE8000
	cmp r1, r0
	ble _0805BE02
	movs r6, #0x80
	lsls r6, r6, #2
_0805BE02:
	ldr r0, _0805BE14 @ =0xFFFFF000
	cmp r1, r0
	ble _0805BE5C
_0805BE08:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _0805BE5C
	.align 2, 0
_0805BE10: .4byte 0xFFFE8000
_0805BE14: .4byte 0xFFFFF000
_0805BE18:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	b _0805BE5C
_0805BE26:
	ldr r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r3, _0805BE50 @ =0xFFFF8000
	adds r0, r0, r3
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0805BE4C
	adds r0, r2, #1
	strb r0, [r4, #0xb]
_0805BE4C:
	movs r6, #0x10
	b _0805BE5C
	.align 2, 0
_0805BE50: .4byte 0xFFFF8000
_0805BE54:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
_0805BE5C:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0805be64
sub_0805be64: @ 0x0805BE64
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0805BED4
	cmp r0, #2
	bgt _0805BE7C
	cmp r0, #0
	beq _0805BE86
	cmp r0, #1
	beq _0805BECC
	b _0805BF16
_0805BE7C:
	cmp r0, #0x80
	beq _0805BEE6
	cmp r0, #0x81
	beq _0805BF00
	b _0805BF16
_0805BE86:
	ldr r5, _0805BEBC @ =gEwramData
	ldr r0, [r5]
	ldr r1, _0805BEC0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	bl GetEntityRoomXPositionInteger
	cmp r0, #0x80
	ble _0805BF16
	ldr r0, [r5]
	ldr r3, _0805BEC0 @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	bl GetEntityRoomXPositionInteger
	ldr r1, _0805BEC4 @ =0x0000011F
	cmp r0, r1
	bgt _0805BF16
	ldr r1, [r5]
	ldr r0, _0805BEC8 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	b _0805BEF0
	.align 2, 0
_0805BEBC: .4byte gEwramData
_0805BEC0: .4byte 0x00013110
_0805BEC4: .4byte 0x0000011F
_0805BEC8: .4byte 0x0000042C
_0805BECC:
	movs r0, #0xc
	bl sub_08067934
	b _0805BEF0
_0805BED4:
	bl sub_08067A04
	cmp r0, #0
	beq _0805BF16
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
	b _0805BF16
_0805BEE6:
	ldr r2, _0805BEF8 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805BEFC @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
_0805BEF0:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0805BF16
	.align 2, 0
_0805BEF8: .4byte gUnk_03002CB0
_0805BEFC: .4byte 0x0000FEFF
_0805BF00:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
	ldr r2, _0805BF20 @ =gUnk_03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_0805BF16:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805BF20: .4byte gUnk_03002CB0

	thumb_func_start sub_0805bf24
sub_0805bf24: @ 0x0805BF24
	push {lr}
	ldr r0, _0805BF40 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0805BF44 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	movs r0, #0xc
	bl sub_08067934
	pop {r0}
	bx r0
	.align 2, 0
_0805BF40: .4byte gEwramData
_0805BF44: .4byte 0x0000042C

	thumb_func_start sub_0805bf48
sub_0805bf48: @ 0x0805BF48
	bx lr
	.align 2, 0

	thumb_func_start sub_0805bf4c
sub_0805bf4c: @ 0x0805BF4C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r6, _0805BF88 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _0805BF8C @ =0x0000042C
	mov r8, r1
	add r0, r8
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0805BF7A
	adds r0, r5, #0
	movs r1, #7
	bl sub_0805B754
	cmp r0, #0
	bne _0805BF90
_0805BF7A:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0805C05A
	.align 2, 0
_0805BF88: .4byte gEwramData
_0805BF8C: .4byte 0x0000042C
_0805BF90:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r4, [r6]
	ldr r3, _0805C068 @ =0x0000A094
	adds r2, r4, r3
	ldrh r1, [r2, #6]
	movs r0, #0x40
	subs r0, r0, r1
	adds r7, r5, #0
	adds r7, #0x42
	movs r1, #0
	mov sb, r1
	strh r0, [r7]
	ldrh r1, [r2, #0xa]
	movs r0, #0xbf
	subs r0, r0, r1
	movs r2, #0x46
	adds r2, r2, r5
	mov ip, r2
	strh r0, [r2]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r3, _0805C06C @ =0x00013110
	adds r4, r4, r3
	ldr r1, [r4]
	adds r1, #0x58
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	ldr r2, [r6]
	adds r3, r2, r3
	ldr r1, [r3]
	ldrh r0, [r7]
	adds r0, #0x18
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r3]
	mov r3, ip
	ldrh r1, [r3]
	adds r0, #0x46
	strh r1, [r0]
	add r2, r8
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [sp]
	movs r4, #0x80
	str r4, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	movs r3, #0
	bl sub_0803D18C
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	movs r3, #0
	bl sub_0803CDF0
	mov r0, sb
	str r0, [sp, #8]
	ldr r1, _0805C070 @ =0x040000D4
	add r2, sp, #8
	str r2, [r1]
	ldr r0, _0805C074 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _0805C078 @ =0x85000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r0, sp, #0xc
	mov r3, sb
	strh r3, [r0]
	str r0, [r1]
	ldr r0, _0805C07C @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _0805C080 @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0805C084 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805C088 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
_0805C05A:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C068: .4byte 0x0000A094
_0805C06C: .4byte 0x00013110
_0805C070: .4byte 0x040000D4
_0805C074: .4byte 0x06004000
_0805C078: .4byte 0x85000800
_0805C07C: .4byte 0x0600E000
_0805C080: .4byte 0x81000400
_0805C084: .4byte gUnk_03002CB0
_0805C088: .4byte 0x0000FEFF

	thumb_func_start sub_0805c08c
sub_0805c08c: @ 0x0805C08C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	movs r7, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _0805C14C
	cmp r0, #1
	bgt _0805C0A4
	cmp r0, #0
	beq _0805C0AC
	b _0805C1E6
_0805C0A4:
	cmp r0, #2
	bne _0805C0AA
	b _0805C1A8
_0805C0AA:
	b _0805C1E6
_0805C0AC:
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	beq _0805C0B8
	cmp r0, #1
	beq _0805C0F0
	b _0805C1E6
_0805C0B8:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0805C0CA
	movs r0, #0x25
	bl sub_08013EEC
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_0805C0CA:
	bl sub_0803D408
	cmp r0, #0
	bne _0805C0DC
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r7, [r6, #0xc]
	b _0805C1E6
_0805C0DC:
	ldr r2, _0805C0E8 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805C0EC @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	b _0805C1E6
	.align 2, 0
_0805C0E8: .4byte gUnk_03002CB0
_0805C0EC: .4byte 0x0000FEFF
_0805C0F0:
	str r7, [sp, #8]
	ldr r1, _0805C134 @ =0x040000D4
	add r0, sp, #8
	str r0, [r1]
	ldr r0, _0805C138 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _0805C13C @ =0x85000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r0, sp, #0xc
	movs r3, #0
	strh r7, [r0]
	str r0, [r1]
	ldr r0, _0805C140 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _0805C144 @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0805C148 @ =gUnk_03002CB0
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xff
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r3, [r6, #0xc]
	strb r3, [r6, #0xb]
	b _0805C1E6
	.align 2, 0
_0805C134: .4byte 0x040000D4
_0805C138: .4byte 0x06004000
_0805C13C: .4byte 0x85000800
_0805C140: .4byte 0x0600E000
_0805C144: .4byte 0x81000400
_0805C148: .4byte gUnk_03002CB0
_0805C14C:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805C1E6
	movs r5, #0x80
	lsls r5, r5, #9
	str r7, [sp]
	movs r4, #0x80
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_0803D18C
	str r7, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_0803CDF0
	ldr r2, _0805C1A0 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805C1A4 @ =0x0000FEFF
	ands r0, r1
	movs r4, #0
	strh r0, [r2]
	movs r0, #0x2d
	bl sub_08012048
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xc]
	strb r4, [r6, #0xb]
	b _0805C1E6
	.align 2, 0
_0805C1A0: .4byte gUnk_03002CB0
_0805C1A4: .4byte 0x0000FEFF
_0805C1A8:
	bl sub_0803D408
	cmp r0, #0
	bne _0805C1E6
	ldr r4, _0805C208 @ =gEwramData
	ldr r1, [r4]
	ldr r0, _0805C20C @ =0x0000037E
	adds r1, r1, r0
	ldrh r2, [r1]
	ldr r0, _0805C210 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r1]
	movs r0, #0x28
	bl sub_080121E0
	ldr r0, [r4]
	movs r1, #0x85
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	bl sub_080127F0
	movs r0, #0x80
	strb r0, [r6, #0xa]
	bl sub_08067898
	ldr r0, [r4]
	adds r0, #0x64
	movs r1, #0xa
	strb r1, [r0]
_0805C1E6:
	ldr r0, _0805C208 @ =gEwramData
	ldr r1, [r0]
	ldr r4, _0805C214 @ =0x0000042C
	adds r1, r1, r4
	ldr r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	str r0, [r1]
	adds r0, r6, #0
	bl sub_0803F17C
	adds r0, r7, #0
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805C208: .4byte gEwramData
_0805C20C: .4byte 0x0000037E
_0805C210: .4byte 0x0000FFFE
_0805C214: .4byte 0x0000042C

	thumb_func_start sub_0805C218
sub_0805C218: @ 0x0805C218
	push {r4, r5, r6, r7, lr}
	ldr r4, _0805C27C @ =0x08526758
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	movs r5, #0xb
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
_0805C226:
	movs r0, #0xb
	bl sub_0805B5E8
	adds r3, r0, #0
	cmp r3, #0
	beq _0805C26E
	movs r1, #1
	ldrsb r1, [r4, r1]
	adds r1, r7, r1
	adds r2, r3, #0
	adds r2, #0x42
	strh r1, [r2]
	movs r1, #2
	ldrsb r1, [r4, r1]
	adds r1, r6, r1
	adds r2, #4
	strh r1, [r2]
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r1, r1, #0xc
	str r1, [r3, #0x48]
	movs r1, #4
	ldrsb r1, [r4, r1]
	lsls r1, r1, #0xc
	rsbs r1, r1, #0
	str r1, [r3, #0x4c]
	ldrb r1, [r4]
	adds r2, #0x1f
	strb r1, [r2]
	ldrb r1, [r4, #5]
	strb r1, [r3, #0xd]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r3, #0x54]
	ldr r1, _0805C280 @ =sub_0805CB08
	str r1, [r3]
_0805C26E:
	subs r5, #1
	adds r4, #8
	cmp r5, #0
	bge _0805C226
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805C27C: .4byte 0x08526758
_0805C280: .4byte sub_0805CB08

	thumb_func_start sub_0805C284
sub_0805C284: @ 0x0805C284
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r6, [r4, #0xa]
	cmp r6, #0
	bne _0805C30E
	adds r7, r4, #0
	adds r7, #0x42
	movs r1, #0
	ldrsh r0, [r7, r1]
	ldr r1, _0805C2E0 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _0805C2E4 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r5, r4, #0
	adds r5, #0x46
	movs r3, #0
	ldrsh r1, [r5, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	bl sub_080020A0
	mov ip, r0
	cmp r0, #0
	beq _0805C2E8
	movs r1, #0
	ldrsh r0, [r7, r1]
	ldrh r1, [r5]
	subs r1, #2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0805C218
	movs r0, #0xaa
	bl PlaySong
	ldrb r1, [r4, #0xa]
	adds r1, #1
	strb r1, [r4, #0xa]
	strb r6, [r4, #0xc]
	strb r6, [r4, #0xb]
	b _0805C322
	.align 2, 0
_0805C2E0: .4byte gEwramData
_0805C2E4: .4byte 0x0000A094
_0805C2E8:
	ldr r1, [r4, #0x40]
	ldr r3, [r4, #0x48]
	adds r1, r1, r3
	str r1, [r4, #0x40]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x4c]
	adds r1, r1, r2
	str r1, [r4, #0x44]
	ldr r1, [r4, #0x50]
	adds r3, r3, r1
	str r3, [r4, #0x48]
	ldr r1, [r4, #0x54]
	adds r2, r2, r1
	str r2, [r4, #0x4c]
	cmp r3, #0
	ble _0805C322
	mov r3, ip
	str r3, [r4, #0x48]
	b _0805C322
_0805C30E:
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _0805C322
	adds r2, r4, #0
	adds r2, #0x65
	movs r1, #8
	strb r1, [r2]
	ldrb r1, [r4, #0xc]
	adds r1, #1
	strb r1, [r4, #0xc]
_0805C322:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805C328
sub_0805C328: @ 0x0805C328
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	lsls r0, r0, #3
	ldr r7, _0805C370 @ =0x085267B8
	adds r4, r0, r7
	ldrh r0, [r5, #0x18]
	adds r1, r0, #1
	strh r1, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4, #6]
	cmp r0, r1
	ble _0805C390
	movs r6, #0
	strh r6, [r5, #0x18]
	ldr r0, [r4]
	ldrh r1, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x2c
	ldrb r3, [r2]
	movs r2, #1
	bl sub_0803C7B4
	ldrh r0, [r5, #0x1a]
	adds r0, #1
	strh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0805C374
	strh r6, [r5, #0x1a]
	movs r0, #0
	b _0805C392
	.align 2, 0
_0805C370: .4byte 0x085267B8
_0805C374:
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	lsls r0, r0, #3
	adds r4, r0, r7
	ldr r1, [r4]
	ldrh r2, [r4, #4]
	movs r3, #0x80
	lsls r3, r3, #9
	str r6, [sp]
	ldrh r0, [r4, #6]
	str r0, [sp, #4]
	movs r0, #0
	bl sub_0803CF34
_0805C390:
	movs r0, #1
_0805C392:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805C39C
sub_0805C39C: @ 0x0805C39C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	beq _0805C3BA
	cmp r5, #1
	bgt _0805C3B0
	cmp r5, #0
	beq _0805C3E4
	b _0805C494
_0805C3B0:
	cmp r5, #2
	beq _0805C3EC
	cmp r5, #3
	beq _0805C470
	b _0805C494
_0805C3BA:
	ldrb r1, [r4, #0xc]
	adds r3, r4, #0
	adds r3, #0x59
	cmp r1, #0
	bne _0805C3D4
	ldrb r1, [r3]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r1
	strb r2, [r3]
	ldrb r1, [r4, #0xc]
	adds r1, #1
	strb r1, [r4, #0xc]
_0805C3D4:
	ldrb r1, [r3]
	ands r5, r1
	cmp r5, #0
	beq _0805C3E4
	ldrb r1, [r4, #0xa]
	adds r1, #1
	movs r2, #0
	b _0805C48E
_0805C3E4:
	adds r0, r4, #0
	bl sub_0803F17C
	b _0805C494
_0805C3EC:
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _0805C452
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0xb
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x10
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	movs r0, #0xb
	bl sub_0805B5E8
	adds r2, r0, #0
	cmp r2, #0
	beq _0805C442
	adds r1, r2, #0
	adds r1, #0x42
	strh r7, [r1]
	adds r1, #4
	strh r6, [r1]
	ldr r1, _0805C468 @ =0xFFFF6000
	str r1, [r2, #0x48]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r2, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [r2, #0x50]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r2, #0x54]
	adds r3, r2, #0
	adds r3, #0x65
	movs r1, #3
	strb r1, [r3]
	ldr r1, _0805C46C @ =sub_0805C284
	str r1, [r2]
_0805C442:
	adds r1, r4, #0
	adds r1, #0x65
	strb r5, [r1]
	ldrb r1, [r4, #0xc]
	adds r1, #1
	strb r1, [r4, #0xc]
	movs r1, #0x20
	strb r1, [r4, #0xd]
_0805C452:
	ldrb r1, [r4, #0xd]
	subs r1, #1
	movs r2, #0
	strb r1, [r4, #0xd]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xff
	bne _0805C494
	ldrb r1, [r4, #0xa]
	adds r1, #1
	b _0805C48E
	.align 2, 0
_0805C468: .4byte 0xFFFF6000
_0805C46C: .4byte sub_0805C284
_0805C470:
	ldrb r0, [r4, #0xc]
	adds r1, r0, #0
	cmp r1, #0
	bne _0805C480
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	adds r0, #1
	strb r0, [r4, #0xc]
_0805C480:
	adds r0, r4, #0
	bl sub_0805C328
	adds r2, r0, #0
	cmp r2, #0
	bne _0805C494
	movs r1, #0x80
_0805C48E:
	strb r1, [r4, #0xa]
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xb]
_0805C494:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805c49c
sub_0805c49c: @ 0x0805C49C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	movs r1, #7
	bl sub_0805B754
	cmp r0, #0
	beq _0805C506
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r7, #0
	bl sub_0803F17C
	ldr r5, _0805C514 @ =gEwramData
	ldr r1, [r5]
	ldr r0, _0805C518 @ =0x0000A094
	adds r1, r1, r0
	ldrh r2, [r1, #6]
	movs r0, #0xff
	subs r0, r0, r2
	adds r2, r7, #0
	adds r2, #0x42
	movs r3, #0
	mov r8, r3
	movs r3, #0
	mov sb, r3
	strh r0, [r2]
	ldrh r0, [r1, #0xa]
	movs r6, #0xbf
	subs r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r2, #0x16
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0xb
	bl sub_0805B5E8
	adds r3, r0, #0
	str r3, [r7, #0x14]
	cmp r3, #0
	bne _0805C51C
_0805C506:
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0805C5EC
	.align 2, 0
_0805C514: .4byte gEwramData
_0805C518: .4byte 0x0000A094
_0805C51C:
	ldr r2, [r5]
	ldr r0, _0805C5FC @ =0x0000A094
	adds r2, r2, r0
	ldrh r1, [r2, #6]
	movs r0, #0x78
	subs r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r1, [r7, #0x14]
	ldrh r2, [r2, #0xa]
	movs r0, #0xb0
	subs r0, r0, r2
	adds r1, #0x46
	strh r0, [r1]
	ldr r0, [r7, #0x14]
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r7, #0
	bl sub_0803F17C
	ldr r1, [r7, #0x14]
	ldr r0, _0805C600 @ =sub_0805C39C
	str r0, [r1]
	ldr r0, [r5]
	ldr r3, _0805C604 @ =0x00013110
	adds r0, r0, r3
	ldr r1, [r0]
	adds r1, #0x58
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	ldr r5, [r5]
	adds r3, r5, r3
	ldr r1, [r3]
	ldr r2, _0805C5FC @ =0x0000A094
	adds r4, r5, r2
	ldrh r2, [r4, #6]
	movs r0, #0xa0
	subs r0, r0, r2
	adds r1, #0x42
	strh r0, [r1]
	ldr r1, [r3]
	ldrh r0, [r4, #0xa]
	subs r0, r6, r0
	adds r1, #0x46
	strh r0, [r1]
	ldr r3, _0805C608 @ =0x0000042C
	adds r5, r5, r3
	ldr r0, [r5]
	movs r6, #1
	orrs r0, r6
	movs r4, #0x80
	lsls r4, r4, #9
	orrs r0, r4
	str r0, [r5]
	str r4, [sp]
	movs r5, #0x80
	str r5, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803D18C
	str r4, [sp]
	str r5, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803CDF0
	strb r6, [r7, #0xa]
	mov r0, r8
	strb r0, [r7, #0xc]
	strb r0, [r7, #0xb]
	mov r2, sb
	str r2, [sp, #8]
	ldr r1, _0805C60C @ =0x040000D4
	add r3, sp, #8
	str r3, [r1]
	ldr r0, _0805C610 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _0805C614 @ =0x85000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r0, sp, #0xc
	strh r2, [r0]
	str r0, [r1]
	ldr r0, _0805C618 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _0805C61C @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0805C620 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805C624 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
_0805C5EC:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C5FC: .4byte 0x0000A094
_0805C600: .4byte sub_0805C39C
_0805C604: .4byte 0x00013110
_0805C608: .4byte 0x0000042C
_0805C60C: .4byte 0x040000D4
_0805C610: .4byte 0x06004000
_0805C614: .4byte 0x85000800
_0805C618: .4byte 0x0600E000
_0805C61C: .4byte 0x81000400
_0805C620: .4byte gUnk_03002CB0
_0805C624: .4byte 0x0000FEFF

	thumb_func_start sub_0805c628
sub_0805c628: @ 0x0805C628
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #6
	bls _0805C636
	b _0805CAD6
_0805C636:
	lsls r0, r0, #2
	ldr r1, _0805C640 @ =_0805C644
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805C640: .4byte _0805C644
_0805C644: @ jump table
	.4byte _0805C660 @ case 0
	.4byte _0805C6B4 @ case 1
	.4byte _0805C748 @ case 2
	.4byte _0805CA18 @ case 3
	.4byte _0805CA22 @ case 4
	.4byte _0805CA5A @ case 5
	.4byte _0805CA78 @ case 6
_0805C660:
	ldrb r1, [r6, #0xc]
	cmp r1, #0
	bne _0805C66E
	movs r0, #0x80
	strb r0, [r6, #0xd]
	adds r0, r1, #1
	strb r0, [r6, #0xc]
_0805C66E:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	movs r7, #0
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805C680
	b _0805CAD6
_0805C680:
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [sp]
	movs r4, #0x80
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803D18C
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803CDF0
	strb r7, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r7, [r6, #0xc]
	strb r7, [r6, #0xb]
	b _0805CAD6
_0805C6B4:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0805C6C6
	movs r0, #0x21
	bl sub_08013CF0
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_0805C6C6:
	bl sub_0803D408
	adds r4, r0, #0
	cmp r4, #0
	bne _0805C734
	bl sub_0803D270
	bl sub_0803CED4
	str r4, [sp, #8]
	ldr r1, _0805C71C @ =0x040000D4
	add r0, sp, #8
	str r0, [r1]
	ldr r0, _0805C720 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _0805C724 @ =0x85000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r0, sp, #0xc
	movs r3, #0
	strh r4, [r0]
	str r0, [r1]
	ldr r0, _0805C728 @ =0x0600E000
	str r0, [r1, #4]
	ldr r0, _0805C72C @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0805C730 @ =gUnk_03002CB0
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xff
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r3, [r6, #0xc]
	strb r3, [r6, #0xb]
	b _0805CAD6
	.align 2, 0
_0805C71C: .4byte 0x040000D4
_0805C720: .4byte 0x06004000
_0805C724: .4byte 0x85000800
_0805C728: .4byte 0x0600E000
_0805C72C: .4byte 0x81000400
_0805C730: .4byte gUnk_03002CB0
_0805C734:
	ldr r2, _0805C740 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805C744 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	b _0805CAD6
	.align 2, 0
_0805C740: .4byte gUnk_03002CB0
_0805C744: .4byte 0x0000FEFF
_0805C748:
	ldrb r0, [r6, #0xb]
	cmp r0, #5
	bls _0805C750
	b _0805CAD6
_0805C750:
	lsls r0, r0, #2
	ldr r1, _0805C75C @ =_0805C760
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805C75C: .4byte _0805C760
_0805C760: @ jump table
	.4byte _0805C778 @ case 0
	.4byte _0805C7D4 @ case 1
	.4byte _0805C7FE @ case 2
	.4byte _0805C898 @ case 3
	.4byte _0805C930 @ case 4
	.4byte _0805C9EC @ case 5
_0805C778:
	ldrb r1, [r6, #0xc]
	cmp r1, #0
	bne _0805C786
	movs r0, #0x80
	strb r0, [r6, #0xd]
	adds r0, r1, #1
	strb r0, [r6, #0xc]
_0805C786:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805C796
	b _0805CAD6
_0805C796:
	ldr r0, _0805C7C8 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0805C7CC @ =0x00013110
	adds r4, r2, r0
	ldr r1, [r4]
	ldr r0, _0805C7D0 @ =0x0000A094
	adds r2, r2, r0
	ldrh r3, [r2, #6]
	movs r0, #0xd0
	subs r0, r0, r3
	adds r1, #0x42
	movs r3, #0
	strh r0, [r1]
	ldr r1, [r4]
	ldrh r2, [r2, #0xa]
	movs r0, #0xbf
	subs r0, r0, r2
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r3, [r6, #0xc]
	b _0805CAD6
	.align 2, 0
_0805C7C8: .4byte gEwramData
_0805C7CC: .4byte 0x00013110
_0805C7D0: .4byte 0x0000A094
_0805C7D4:
	ldrb r1, [r6, #0xc]
	cmp r1, #0
	bne _0805C7E2
	movs r0, #0x40
	strb r0, [r6, #0xd]
	adds r0, r1, #1
	strb r0, [r6, #0xc]
_0805C7E2:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805C7F2
	b _0805CAD6
_0805C7F2:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	movs r0, #0
	strb r0, [r6, #0xc]
	b _0805CAD6
_0805C7FE:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0805C820
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805C81A
	adds r0, r6, #0
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
_0805C81A:
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_0805C820:
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0805C864 @ =gEwramData
	ldr r3, [r1]
	ldr r2, _0805C868 @ =0x0000A094
	adds r5, r3, r2
	movs r4, #6
	ldrsh r1, [r5, r4]
	adds r0, r0, r1
	cmp r0, #0xb8
	ble _0805C86C
	movs r1, #0x80
	lsls r1, r1, #9
	movs r2, #0x80
	lsls r2, r2, #0xe
	movs r3, #0x80
	lsls r3, r3, #0xa
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	bl sub_0806E140
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	beq _0805C85A
	b _0805CAD6
_0805C85A:
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	b _0805CAD6
	.align 2, 0
_0805C864: .4byte gEwramData
_0805C868: .4byte 0x0000A094
_0805C86C:
	ldr r0, _0805C894 @ =0x00013110
	adds r3, r3, r0
	ldr r1, [r3]
	ldrh r2, [r5, #6]
	movs r0, #0xa0
	subs r0, r0, r2
	adds r1, #0x42
	movs r4, #0
	strh r0, [r1]
	ldr r1, [r3]
	ldrh r2, [r5, #0xa]
	movs r0, #0xbf
	subs r0, r0, r2
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r4, [r6, #0xc]
	b _0805CAD6
	.align 2, 0
_0805C894: .4byte 0x00013110
_0805C898:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0805C8BA
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _0805C8B4
	adds r0, r6, #0
	movs r1, #2
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_0805C8B4:
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_0805C8BA:
	adds r0, r6, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _0805C928 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _0805C92C @ =0x0000A094
	adds r0, r0, r4
	movs r2, #6
	ldrsh r0, [r0, r2]
	adds r1, r1, r0
	cmp r1, #0xb0
	ble _0805C8FA
	movs r1, #0x80
	lsls r1, r1, #8
	movs r2, #0x80
	lsls r2, r2, #0xe
	movs r3, #0x80
	lsls r3, r3, #0xa
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	bl sub_0806E140
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	bne _0805C8FA
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
_0805C8FA:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805C90A
	b _0805CAD6
_0805C90A:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805C920
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
_0805C920:
	ldrb r0, [r6, #0xb]
	adds r0, #2
	b _0805C9D8
	.align 2, 0
_0805C928: .4byte gEwramData
_0805C92C: .4byte 0x0000A094
_0805C930:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0805C952
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #5
	beq _0805C94C
	adds r0, r6, #0
	movs r1, #5
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
_0805C94C:
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_0805C952:
	adds r0, r6, #0
	adds r0, #0x42
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r0, _0805C9E0 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0805C9E4 @ =0x0000A094
	adds r0, r0, r2
	movs r4, #6
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
	cmp r1, #0xb0
	ble _0805C992
	movs r1, #0x80
	lsls r1, r1, #8
	movs r2, #0x80
	lsls r2, r2, #0xe
	movs r3, #0x80
	lsls r3, r3, #0xa
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	bl sub_0806E140
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	bne _0805C992
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
_0805C992:
	adds r4, r6, #0
	adds r4, #0x6e
	ldrb r0, [r4]
	cmp r0, #4
	bne _0805C9A2
	ldr r0, _0805C9E8 @ =0x000001DF
	bl PlaySong
_0805C9A2:
	ldrb r0, [r4]
	cmp r0, #8
	bne _0805C9AE
	movs r0, #0xfc
	bl PlaySong
_0805C9AE:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805C9BE
	b _0805CAD6
_0805C9BE:
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805C9D4
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
_0805C9D4:
	ldrb r0, [r6, #0xb]
	adds r0, #1
_0805C9D8:
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xc]
	b _0805CAD6
	.align 2, 0
_0805C9E0: .4byte gEwramData
_0805C9E4: .4byte 0x0000A094
_0805C9E8: .4byte 0x000001DF
_0805C9EC:
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0805CA02
	movs r0, #0x5a
	bl sub_08067934
	movs r0, #0x44
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
_0805CA02:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805CAD6
	ldrb r0, [r6, #0xa]
	adds r0, #1
	b _0805CA70
_0805CA18:
	bl sub_08067A04
	cmp r0, #0
	beq _0805CAD6
	b _0805CA6A
_0805CA22:
	ldrb r1, [r6, #0xc]
	cmp r1, #0
	bne _0805CA30
	movs r0, #0x68
	strb r0, [r6, #0xd]
	adds r0, r1, #1
	strb r0, [r6, #0xc]
_0805CA30:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	movs r2, #0
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805CAD6
	ldr r1, [r6, #0x14]
	ldrb r0, [r1, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r6, #0x14]
	strb r2, [r0, #0xc]
	strb r2, [r0, #0xb]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r2, [r6, #0xc]
	strb r2, [r6, #0xb]
	b _0805CAD6
_0805CA5A:
	ldr r0, [r6, #0x14]
	ldrb r0, [r0, #0xa]
	cmp r0, #0x80
	bne _0805CAD6
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_08013F6C
_0805CA6A:
	ldrb r0, [r6, #0xa]
	adds r0, #1
	movs r1, #0
_0805CA70:
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
	b _0805CAD6
_0805CA78:
	ldrb r7, [r6, #0xc]
	cmp r7, #0
	bne _0805CABC
	movs r5, #0x80
	lsls r5, r5, #9
	str r7, [sp]
	movs r4, #0x80
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_0803D18C
	str r7, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_0803CDF0
	ldr r2, _0805CAF8 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805CAFC @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0x2d
	bl sub_08012048
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
	strb r4, [r6, #0xd]
_0805CABC:
	bl sub_0803D408
	cmp r0, #0
	bne _0805CAD6
	movs r0, #0x80
	strb r0, [r6, #0xa]
	bl sub_08067898
	ldr r0, _0805CB00 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x64
	movs r1, #0xa
	strb r1, [r0]
_0805CAD6:
	adds r0, r6, #0
	bl sub_0803F17C
	ldr r0, _0805CB00 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0805CB04 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	str r0, [r1]
	movs r0, #0
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805CAF8: .4byte gUnk_03002CB0
_0805CAFC: .4byte 0x0000FEFF
_0805CB00: .4byte gEwramData
_0805CB04: .4byte 0x0000042C

	thumb_func_start sub_0805CB08
sub_0805CB08: @ 0x0805CB08
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0805CB48 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _0805CB4C @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	bl sub_080020A0
	adds r1, r0, #0
	cmp r1, #0
	beq _0805CB50
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r2, [r1]
	movs r3, #8
	orrs r2, r3
	strb r2, [r1]
	b _0805CB66
	.align 2, 0
_0805CB48: .4byte gEwramData
_0805CB4C: .4byte 0x0000A094
_0805CB50:
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x48]
	adds r1, r1, r2
	str r1, [r4, #0x40]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x4c]
	adds r1, r1, r2
	str r1, [r4, #0x44]
	ldr r1, [r4, #0x54]
	adds r2, r2, r1
	str r2, [r4, #0x4c]
_0805CB66:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0805cb6c
sub_0805cb6c: @ 0x0805CB6C
	bx lr
	.align 2, 0

	thumb_func_start sub_0805cb70
sub_0805cb70: @ 0x0805CB70
	bx lr
	.align 2, 0

	thumb_func_start sub_0805CB74
sub_0805CB74: @ 0x0805CB74
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r7, #1
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bls _0805CB82
	b _0805CCD2
_0805CB82:
	lsls r0, r0, #2
	ldr r1, _0805CB8C @ =_0805CB90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805CB8C: .4byte _0805CB90
_0805CB90: @ jump table
	.4byte _0805CBA8 @ case 0
	.4byte _0805CBC0 @ case 1
	.4byte _0805CBE4 @ case 2
	.4byte _0805CC0C @ case 3
	.4byte _0805CC34 @ case 4
	.4byte _0805CC66 @ case 5
_0805CBA8:
	ldr r0, _0805CBB8 @ =gDisplayRegisters
	adds r0, #0x44
	ldr r1, _0805CBBC @ =0x0000FFFF
	strh r1, [r0]
	movs r0, #0x40
	strb r0, [r5, #0xd]
	b _0805CC52
	.align 2, 0
_0805CBB8: .4byte gDisplayRegisters
_0805CBBC: .4byte 0x0000FFFF
_0805CBC0:
	ldrb r6, [r5, #0xd]
	lsls r3, r6, #0x18
	lsrs r4, r3, #0x1a
	ldr r2, _0805CBE0 @ =gDisplayRegisters
	lsls r0, r4, #4
	orrs r0, r4
	lsls r1, r4, #8
	orrs r0, r1
	lsls r1, r4, #0xc
	orrs r0, r1
	adds r2, #0x44
	strh r0, [r2]
	lsrs r3, r3, #0x18
	cmp r3, #0x20
	beq _0805CC52
	b _0805CC2A
	.align 2, 0
_0805CBE0: .4byte gDisplayRegisters
_0805CBE4:
	ldrb r6, [r5, #0xd]
	lsls r3, r6, #0x18
	lsrs r4, r3, #0x1a
	ldr r2, _0805CC08 @ =gDisplayRegisters
	lsls r0, r4, #4
	orrs r0, r4
	lsls r1, r4, #8
	orrs r0, r1
	lsls r1, r4, #0xc
	orrs r0, r1
	adds r2, #0x44
	strh r0, [r2]
	lsrs r3, r3, #0x18
	cmp r3, #0x30
	beq _0805CC52
	adds r0, r6, #1
	strb r0, [r5, #0xd]
	b _0805CCD2
	.align 2, 0
_0805CC08: .4byte gDisplayRegisters
_0805CC0C:
	ldrb r6, [r5, #0xd]
	lsls r3, r6, #0x18
	lsrs r4, r3, #0x1a
	ldr r2, _0805CC30 @ =gDisplayRegisters
	lsls r0, r4, #4
	orrs r0, r4
	lsls r1, r4, #8
	orrs r0, r1
	lsls r1, r4, #0xc
	orrs r0, r1
	adds r2, #0x44
	strh r0, [r2]
	lsrs r3, r3, #0x18
	cmp r3, #0x10
	beq _0805CC52
_0805CC2A:
	subs r0, r6, #1
	strb r0, [r5, #0xd]
	b _0805CCD2
	.align 2, 0
_0805CC30: .4byte gDisplayRegisters
_0805CC34:
	ldrb r6, [r5, #0xd]
	lsls r3, r6, #0x18
	lsrs r4, r3, #0x1a
	ldr r2, _0805CC5C @ =gDisplayRegisters
	lsls r0, r4, #4
	orrs r0, r4
	lsls r1, r4, #8
	orrs r0, r1
	lsls r1, r4, #0xc
	orrs r0, r1
	adds r2, #0x44
	strh r0, [r2]
	lsrs r3, r3, #0x18
	cmp r3, #0x20
	bne _0805CC60
_0805CC52:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _0805CCD2
	.align 2, 0
_0805CC5C: .4byte gDisplayRegisters
_0805CC60:
	adds r0, r6, #2
	strb r0, [r5, #0xd]
	b _0805CCD2
_0805CC66:
	ldrb r6, [r5, #0xd]
	lsls r3, r6, #0x18
	lsrs r4, r3, #0x1a
	ldr r2, _0805CC8C @ =gDisplayRegisters
	lsls r0, r4, #4
	orrs r0, r4
	lsls r1, r4, #8
	orrs r0, r1
	lsls r1, r4, #0xc
	orrs r0, r1
	adds r1, r2, #0
	adds r1, #0x44
	strh r0, [r1]
	cmp r3, #0
	bne _0805CC90
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _0805CC94
	.align 2, 0
_0805CC8C: .4byte gDisplayRegisters
_0805CC90:
	subs r0, r6, #1
	strb r0, [r5, #0xd]
_0805CC94:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805CCD2
	adds r0, r2, #0
	adds r0, #0x44
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	ldr r0, _0805CCDC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805CCE0 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x5a
	ldrb r3, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r3
	strb r0, [r1]
	ldr r0, [r5, #0x14]
	adds r0, #0x5a
	ldrb r1, [r0]
	ands r2, r1
	strb r2, [r0]
	movs r7, #0
_0805CCD2:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805CCDC: .4byte gEwramData
_0805CCE0: .4byte 0x00013110

	thumb_func_start sub_0805CCE4
sub_0805CCE4: @ 0x0805CCE4
	push {r4, lr}
	movs r4, #0
	ldr r1, _0805CD08 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _0805CD0C @ =0x00000427
	adds r1, r1, r2
	movs r2, #1
	strb r2, [r1]
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #5
	bls _0805CCFE
	b _0805CE14
_0805CCFE:
	lsls r0, r0, #2
	ldr r1, _0805CD10 @ =_0805CD14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805CD08: .4byte gEwramData
_0805CD0C: .4byte 0x00000427
_0805CD10: .4byte _0805CD14
_0805CD14: @ jump table
	.4byte _0805CD2C @ case 0
	.4byte _0805CD54 @ case 1
	.4byte _0805CD7C @ case 2
	.4byte _0805CDA4 @ case 3
	.4byte _0805CDCC @ case 4
	.4byte _0805CDF8 @ case 5
_0805CD2C:
	movs r1, #0x80
	lsls r1, r1, #0xc
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	ldr r0, _0805CD4C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805CD50 @ =0x0000A094
	adds r0, r0, r1
	movs r2, #6
	ldrsh r0, [r0, r2]
	cmp r0, #0x1f
	ble _0805CE14
	b _0805CE12
	.align 2, 0
_0805CD4C: .4byte gEwramData
_0805CD50: .4byte 0x0000A094
_0805CD54:
	movs r1, #0x80
	lsls r1, r1, #9
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	ldr r0, _0805CD74 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805CD78 @ =0x0000A094
	adds r0, r0, r1
	movs r2, #6
	ldrsh r0, [r0, r2]
	cmp r0, #0x5f
	ble _0805CE14
	b _0805CE12
	.align 2, 0
_0805CD74: .4byte gEwramData
_0805CD78: .4byte 0x0000A094
_0805CD7C:
	movs r1, #0xe0
	lsls r1, r1, #0xa
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	ldr r0, _0805CD9C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805CDA0 @ =0x0000A094
	adds r0, r0, r1
	movs r2, #6
	ldrsh r0, [r0, r2]
	cmp r0, #0xdd
	ble _0805CE14
	b _0805CE12
	.align 2, 0
_0805CD9C: .4byte gEwramData
_0805CDA0: .4byte 0x0000A094
_0805CDA4:
	ldr r1, _0805CDC0 @ =0xFFFC0000
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	ldr r0, _0805CDC4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805CDC8 @ =0x0000A094
	adds r0, r0, r1
	movs r2, #6
	ldrsh r0, [r0, r2]
	cmp r0, #0x60
	bgt _0805CE14
	b _0805CE12
	.align 2, 0
_0805CDC0: .4byte 0xFFFC0000
_0805CDC4: .4byte gEwramData
_0805CDC8: .4byte 0x0000A094
_0805CDCC:
	ldr r1, _0805CDEC @ =0xFFFF0000
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	ldr r0, _0805CDF0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805CDF4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x78
	bne _0805CE14
	b _0805CE12
	.align 2, 0
_0805CDEC: .4byte 0xFFFF0000
_0805CDF0: .4byte gEwramData
_0805CDF4: .4byte 0x00013110
_0805CDF8:
	ldr r1, _0805CE1C @ =0xFFF80000
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	ldr r0, _0805CE20 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805CE24 @ =0x0000A094
	adds r0, r0, r1
	movs r2, #6
	ldrsh r0, [r0, r2]
	cmp r0, #0x20
	bgt _0805CE14
_0805CE12:
	movs r4, #1
_0805CE14:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805CE1C: .4byte 0xFFF80000
_0805CE20: .4byte gEwramData
_0805CE24: .4byte 0x0000A094

	thumb_func_start sub_0805ce28
sub_0805ce28: @ 0x0805CE28
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x20
	bl sub_08012078
	adds r5, r0, #0
	cmp r5, #0
	bne _0805CE7C
	movs r0, #0
	bl sub_0805B5E8
	str r0, [r4, #0x14]
	movs r0, #1
	bl sub_0805B5E8
	str r0, [r4, #0x18]
	movs r0, #8
	bl sub_0805B5E8
	adds r1, r0, #0
	str r1, [r4, #0x1c]
	ldr r2, [r4, #0x14]
	cmp r2, #0
	beq _0805CE68
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0805CE62
	cmp r1, #0
	bne _0805CE8A
_0805CE62:
	adds r0, r2, #0
	bl EntityDelete
_0805CE68:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0805CE72
	bl EntityDelete
_0805CE72:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0805CE7C
	bl EntityDelete
_0805CE7C:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0805CECA
_0805CE8A:
	adds r0, r4, #0
	bl sub_0805D198
	ldr r0, _0805CEB8 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0805CEBC @ =0x0000042C
	adds r3, r2, r0
	ldr r0, [r3]
	movs r1, #1
	orrs r0, r1
	str r0, [r3]
	ldr r1, _0805CEC0 @ =0x0000A094
	adds r2, r2, r1
	movs r1, #6
	ldrsh r0, [r2, r1]
	cmp r0, #0x1f
	ble _0805CEC4
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #5
	strb r0, [r1]
	b _0805CECA
	.align 2, 0
_0805CEB8: .4byte gEwramData
_0805CEBC: .4byte 0x0000042C
_0805CEC0: .4byte 0x0000A094
_0805CEC4:
	adds r0, r4, #0
	adds r0, #0x38
	strb r5, [r0]
_0805CECA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0805ced0
sub_0805ced0: @ 0x0805CED0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0
	mov sl, r0
	ldr r1, _0805CF00 @ =gEwramData
	ldr r0, [r1]
	ldrh r4, [r0, #0x16]
	movs r6, #0
	ldrb r0, [r5, #0xa]
	mov r8, r1
	cmp r0, #0xb
	bls _0805CEF4
	b _0805D186
_0805CEF4:
	lsls r0, r0, #2
	ldr r1, _0805CF04 @ =_0805CF08
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805CF00: .4byte gEwramData
_0805CF04: .4byte _0805CF08
_0805CF08: @ jump table
	.4byte _0805CF38 @ case 0
	.4byte _0805CFA4 @ case 1
	.4byte _0805CFF0 @ case 2
	.4byte _0805D186 @ case 3
	.4byte _0805D186 @ case 4
	.4byte _0805D186 @ case 5
	.4byte _0805D186 @ case 6
	.4byte _0805D186 @ case 7
	.4byte _0805D186 @ case 8
	.4byte _0805D186 @ case 9
	.4byte _0805D076 @ case 10
	.4byte _0805D168 @ case 11
_0805CF38:
	ldrb r4, [r5, #0xc]
	cmp r4, #0
	bne _0805CF6E
	movs r0, #0x80
	lsls r0, r0, #5
	bl PlaySong
	ldr r0, _0805CF90 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0805CF94 @ =0x0000042C
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	str r0, [r1]
	str r4, [sp, #4]
	ldr r1, _0805CF98 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _0805CF9C @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _0805CFA0 @ =0x85000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_0805CF6E:
	adds r0, r5, #0
	bl sub_0805CCE4
	cmp r0, #0
	bne _0805CF7A
	b _0805D186
_0805CF7A:
	movs r0, #0x1c
	bl sub_08013CF0
	ldrb r0, [r5, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
	b _0805D186
	.align 2, 0
_0805CF90: .4byte gEwramData
_0805CF94: .4byte 0x0000042C
_0805CF98: .4byte 0x040000D4
_0805CF9C: .4byte 0x06004000
_0805CFA0: .4byte 0x85000800
_0805CFA4:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0805CFD0
	adds r0, r5, #0
	bl sub_0805CB74
	cmp r0, #0
	bne _0805CFE2
	ldr r2, _0805CFC8 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805CFCC @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	b _0805CFE2
	.align 2, 0
_0805CFC8: .4byte gUnk_03002CB0
_0805CFCC: .4byte 0x0000DFFF
_0805CFD0:
	movs r0, #0xc
	bl sub_08067934
	ldrb r0, [r5, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_0805CFE2:
	movs r0, #0x51
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0801D028
	b _0805D186
_0805CFF0:
	bl sub_08067A04
	cmp r0, #0
	beq _0805D06C
	ldr r6, _0805D05C @ =gEwramData
	ldr r0, [r6]
	ldr r1, _0805D060 @ =0x0001325C
	adds r4, r0, r1
	movs r0, #0x80
	strb r0, [r5, #0xa]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl SoulInventory_AddAmountToSoulTotal
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0805D018
	movs r0, #1
	strb r0, [r4, #0xd]
_0805D018:
	ldr r0, [r6]
	ldr r2, _0805D064 @ =0x00000427
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r6]
	ldr r1, _0805D068 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0805F008
	adds r0, r5, #0
	movs r1, #0
	bl sub_0805B66C
	movs r0, #0x20
	bl sub_08012048
	ldrh r1, [r5, #0x20]
	movs r0, #4
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #0x20]
	movs r0, #0x26
	bl sub_08013EEC
	b _0805D17E
	.align 2, 0
_0805D05C: .4byte gEwramData
_0805D060: .4byte 0x0001325C
_0805D064: .4byte 0x00000427
_0805D068: .4byte 0x00013110
_0805D06C:
	adds r0, r5, #0
	bl sub_0805D410
	mov sl, r0
	b _0805D186
_0805D076:
	mov r2, r8
	ldr r0, [r2]
	ldr r1, _0805D0B0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, [r5, #0x18]
	adds r1, r2, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0x46
	ldrh r2, [r2]
	subs r2, #0x20
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r7, #0x40
	str r7, [sp]
	movs r3, #0x40
	bl sub_08068AD4
	cmp r0, #0
	beq _0805D0B4
	movs r6, #1
	movs r2, #0xe
	mov sb, r2
	b _0805D0E8
	.align 2, 0
_0805D0B0: .4byte 0x00013110
_0805D0B4:
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _0805D158 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [r5, #0x14]
	adds r1, r2, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0x46
	ldrh r2, [r2]
	subs r2, #0x20
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r7, [sp]
	movs r3, #0x40
	bl sub_08068AD4
	cmp r0, #0
	beq _0805D0E8
	movs r6, #1
	movs r0, #0xd
	mov sb, r0
_0805D0E8:
	cmp r6, #0
	beq _0805D186
	movs r0, #0x42
	ands r4, r0
	cmp r4, #0
	beq _0805D186
	ldr r6, _0805D15C @ =gEwramData
	ldr r1, [r6]
	ldr r2, _0805D160 @ =0x000004BE
	adds r0, r1, r2
	movs r2, #0
	ldrsh r4, [r0, r2]
	cmp r4, #0
	bne _0805D186
	ldr r7, _0805D158 @ =0x00013110
	adds r1, r1, r7
	ldr r0, [r1]
	str r4, [r0, #0x48]
	ldr r0, [r1]
	str r4, [r0, #0x50]
	ldr r1, [r1]
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	bge _0805D11A
	str r4, [r1, #0x4c]
_0805D11A:
	ldr r1, [r6]
	ldr r0, _0805D164 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	mov r0, sb
	bl sub_08067934
	ldr r2, [r5, #0x18]
	movs r3, #0
	ldr r0, [r6]
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r1, [r2, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _0805D142
	movs r3, #1
_0805D142:
	adds r2, #0x58
	lsls r3, r3, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	b _0805D180
	.align 2, 0
_0805D158: .4byte 0x00013110
_0805D15C: .4byte gEwramData
_0805D160: .4byte 0x000004BE
_0805D164: .4byte 0x0000042C
_0805D168:
	bl sub_08067A04
	cmp r0, #0
	beq _0805D186
	movs r4, #0
	movs r0, #0x80
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	movs r1, #0
	bl sub_0805B66C
_0805D17E:
	movs r0, #0xa
_0805D180:
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
_0805D186:
	mov r0, sl
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805D198
sub_0805D198: @ 0x0805D198
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r0, #0x51
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0801D028
	ldr r7, _0805D2B0 @ =gEwramData
	ldr r3, [r7]
	ldr r5, _0805D2B4 @ =0x00013110
	adds r4, r3, r5
	ldr r1, [r4]
	ldr r0, _0805D2B8 @ =0x0000A094
	mov r8, r0
	add r3, r8
	ldrh r2, [r3, #6]
	movs r0, #0xa8
	subs r0, r0, r2
	adds r1, #0x42
	movs r2, #0
	strh r0, [r1]
	ldr r1, [r4]
	ldrh r0, [r3, #0xa]
	movs r3, #0xb0
	lsls r3, r3, #2
	mov sb, r3
	mov r3, sb
	subs r0, r3, r0
	adds r1, #0x46
	strh r0, [r1]
	ldr r0, [r4]
	str r2, [r0, #0x48]
	ldr r1, [r4]
	adds r1, #0x5a
	ldrb r0, [r1]
	movs r4, #1
	orrs r0, r4
	strb r0, [r1]
	ldr r1, [r6, #0x14]
	ldr r2, [r7]
	adds r2, r2, r5
	ldr r0, [r2]
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x18
	adds r1, #0x42
	strh r0, [r1]
	ldr r1, [r6, #0x14]
	ldr r0, [r2]
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #0x46
	strh r0, [r1]
	ldr r1, [r6, #0x14]
	adds r0, r1, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _0805D222
	adds r0, r1, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0805D222:
	ldr r1, [r6, #0x14]
	adds r1, #0x5a
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	ldr r1, [r6, #0x14]
	ldrb r0, [r6, #0x10]
	strb r0, [r1, #0x11]
	ldr r1, [r6, #0x18]
	ldr r2, [r7]
	add r2, r8
	ldrh r3, [r2, #6]
	ldr r4, _0805D2BC @ =0x00000119
	adds r0, r4, #0
	subs r0, r0, r3
	adds r1, #0x42
	strh r0, [r1]
	ldr r1, [r6, #0x18]
	ldrh r0, [r2, #0xa]
	mov r2, sb
	subs r0, r2, r0
	adds r1, #0x46
	strh r0, [r1]
	ldr r0, [r6, #0x18]
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r1, [r6, #0x18]
	ldr r0, _0805D2C0 @ =0xFFFFA000
	str r0, [r1, #0x48]
	ldr r1, [r6, #0x18]
	ldrb r0, [r6, #0x10]
	strb r0, [r1, #0x11]
	ldr r1, [r6, #0x1c]
	ldr r2, [r7]
	add r2, r8
	ldrh r3, [r2, #6]
	adds r4, #0x56
	adds r0, r4, #0
	subs r0, r0, r3
	adds r1, #0x42
	strh r0, [r1]
	ldr r1, [r6, #0x1c]
	ldrh r2, [r2, #0xa]
	movs r3, #0x9a
	lsls r3, r3, #2
	adds r0, r3, #0
	subs r0, r0, r2
	adds r1, #0x46
	strh r0, [r1]
	ldr r0, [r6, #0x1c]
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r2, [r6, #0x1c]
	ldrb r1, [r6, #0x10]
	strb r1, [r2, #0x11]
	ldr r2, [r6, #0x1c]
	ldr r1, _0805D2C4 @ =sub_0805DAA0
	str r1, [r2]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805D2B0: .4byte gEwramData
_0805D2B4: .4byte 0x00013110
_0805D2B8: .4byte 0x0000A094
_0805D2BC: .4byte 0x00000119
_0805D2C0: .4byte 0xFFFFA000
_0805D2C4: .4byte sub_0805DAA0

	thumb_func_start sub_0805D2C8
sub_0805D2C8: @ 0x0805D2C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	mov r8, r0
	mov r0, sp
	ldr r1, _0805D348 @ =0x081187AC
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
	movs r6, #0
	add r5, sp, #4
	mov r4, sp
_0805D2EC:
	ldr r7, _0805D34C @ =gEwramData
	ldr r0, [r7]
	ldr r1, _0805D350 @ =0x0000A094
	adds r0, r0, r1
	movs r3, #6
	ldrsh r2, [r0, r3]
	ldr r1, [r4]
	subs r1, r1, r2
	adds r1, #0x20
	movs r2, #0xa
	ldrsh r0, [r0, r2]
	ldr r2, _0805D354 @ =0x0000029F
	subs r2, r2, r0
	ldr r3, [r5]
	mov r0, r8
	bl sub_0805E528
	adds r0, #0x3c
	strb r6, [r0]
	adds r5, #8
	adds r4, #8
	adds r6, #1
	cmp r6, #4
	ble _0805D2EC
	ldr r0, [r7]
	ldr r3, _0805D350 @ =0x0000A094
	adds r0, r0, r3
	movs r4, #6
	ldrsh r2, [r0, r4]
	ldr r1, _0805D358 @ =0x0000014F
	subs r1, r1, r2
	movs r2, #0xa
	ldrsh r0, [r0, r2]
	movs r2, #0xa2
	lsls r2, r2, #2
	subs r2, r2, r0
	mov r0, r8
	bl sub_0805E260
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D348: .4byte 0x081187AC
_0805D34C: .4byte gEwramData
_0805D350: .4byte 0x0000A094
_0805D354: .4byte 0x0000029F
_0805D358: .4byte 0x0000014F

	thumb_func_start sub_0805D35C
sub_0805D35C: @ 0x0805D35C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r7, r0, #0
	mov r0, sp
	ldr r1, _0805D3FC @ =0x081187D4
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
	movs r6, #0
	add r5, sp, #4
	mov r4, sp
_0805D378:
	ldr r0, _0805D400 @ =gEwramData
	mov r8, r0
	ldr r2, [r0]
	ldr r1, _0805D404 @ =0x00013110
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r4]
	adds r1, r1, r0
	ldr r0, _0805D408 @ =0x0000A094
	adds r2, r2, r0
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	ldr r2, _0805D40C @ =0x0000029F
	subs r2, r2, r0
	ldr r3, [r5]
	adds r0, r7, #0
	bl sub_0805E528
	adds r1, r6, #5
	adds r0, #0x3c
	strb r1, [r0]
	adds r5, #8
	adds r4, #8
	adds r6, #1
	cmp r6, #1
	ble _0805D378
	mov r4, r8
	ldr r0, [r4]
	ldr r4, _0805D408 @ =0x0000A094
	adds r0, r0, r4
	movs r1, #6
	ldrsh r2, [r0, r1]
	movs r1, #0x7c
	subs r1, r1, r2
	movs r2, #0xa
	ldrsh r0, [r0, r2]
	movs r2, #0xa4
	lsls r2, r2, #2
	subs r2, r2, r0
	adds r0, r7, #0
	bl sub_0805E260
	mov r3, r8
	ldr r0, [r3]
	adds r0, r0, r4
	movs r4, #6
	ldrsh r2, [r0, r4]
	movs r1, #0xc4
	subs r1, r1, r2
	movs r2, #0xa
	ldrsh r0, [r0, r2]
	movs r2, #0xa0
	lsls r2, r2, #2
	subs r2, r2, r0
	adds r0, r7, #0
	bl sub_0805E260
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D3FC: .4byte 0x081187D4
_0805D400: .4byte gEwramData
_0805D404: .4byte 0x00013110
_0805D408: .4byte 0x0000A094
_0805D40C: .4byte 0x0000029F

	thumb_func_start sub_0805D410
sub_0805D410: @ 0x0805D410
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r1, _0805D43C @ =gEwramData
	ldr r0, [r1]
	adds r5, r0, #0
	adds r5, #0x60
	ldrb r0, [r4, #0xb]
	adds r7, r1, #0
	cmp r0, #8
	bls _0805D430
	b _0805DA8E
_0805D430:
	lsls r0, r0, #2
	ldr r1, _0805D440 @ =_0805D444
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805D43C: .4byte gEwramData
_0805D440: .4byte _0805D444
_0805D444: @ jump table
	.4byte _0805D468 @ case 0
	.4byte _0805D4B8 @ case 1
	.4byte _0805D544 @ case 2
	.4byte _0805D56E @ case 3
	.4byte _0805D64C @ case 4
	.4byte _0805D76C @ case 5
	.4byte _0805D9EA @ case 6
	.4byte _0805DA2C @ case 7
	.4byte _0805DA40 @ case 8
_0805D468:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805D490
	cmp r0, #1
	bgt _0805D478
	cmp r0, #0
	beq _0805D47E
	b _0805D4AE
_0805D478:
	cmp r0, #2
	beq _0805D4A6
	b _0805D4AE
_0805D47E:
	ldr r2, _0805D48C @ =0x000003B7
	adds r1, r5, r2
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x40
	strb r0, [r4, #0xd]
	b _0805D49E
	.align 2, 0
_0805D48C: .4byte 0x000003B7
_0805D490:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805D4AE
_0805D49E:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _0805D4AE
_0805D4A6:
	ldr r3, _0805D4B4 @ =0x000003B7
	adds r1, r5, r3
	movs r0, #0
	strb r0, [r1]
_0805D4AE:
	movs r0, #0x51
	b _0805D962
	.align 2, 0
_0805D4B4: .4byte 0x000003B7
_0805D4B8:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805D504
	cmp r0, #1
	bgt _0805D4C8
	cmp r0, #0
	beq _0805D4CE
	b _0805DA8E
_0805D4C8:
	cmp r0, #2
	beq _0805D520
	b _0805DA8E
_0805D4CE:
	ldr r1, [r4, #0x14]
	adds r0, r1, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805D4E6
	adds r0, r1, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0805D4E6:
	ldr r0, _0805D514 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805D518 @ =0x00000427
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r2, _0805D51C @ =0x000003B7
	adds r0, r5, r2
	strb r1, [r0]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
_0805D504:
	adds r0, r4, #0
	bl sub_0805CCE4
	cmp r0, #0
	bne _0805D510
	b _0805DA8E
_0805D510:
	b _0805D6F8
	.align 2, 0
_0805D514: .4byte gEwramData
_0805D518: .4byte 0x00000427
_0805D51C: .4byte 0x000003B7
_0805D520:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805D530
	b _0805DA8E
_0805D530:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldr r3, _0805D540 @ =0x000003B7
	adds r1, r5, r3
	movs r0, #0
	strb r0, [r1]
	b _0805DA8E
	.align 2, 0
_0805D540: .4byte 0x000003B7
_0805D544:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0805D54C
	b _0805DA8E
_0805D54C:
	ldr r1, [r4, #0x14]
	adds r1, #0x58
	ldrb r2, [r1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r4, #0x18]
	adds r1, #0x58
	ldrb r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
	movs r0, #0x10
	bl sub_08013CF0
	b _0805DA88
_0805D56E:
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bls _0805D576
	b _0805DA8E
_0805D576:
	lsls r0, r0, #2
	ldr r1, _0805D580 @ =_0805D584
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805D580: .4byte _0805D584
_0805D584: @ jump table
	.4byte _0805D598 @ case 0
	.4byte _0805D5C4 @ case 1
	.4byte _0805D5D6 @ case 2
	.4byte _0805D5E8 @ case 3
	.4byte _0805D632 @ case 4
_0805D598:
	adds r0, r4, #0
	bl sub_0805D2C8
	ldrh r1, [r4, #0x20]
	movs r0, #8
	orrs r0, r1
	strh r0, [r4, #0x20]
	ldr r0, _0805D5C0 @ =0x000003B7
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	b _0805DA8E
	.align 2, 0
_0805D5C0: .4byte 0x000003B7
_0805D5C4:
	adds r0, r4, #0
	bl sub_0805CCE4
	cmp r0, #0
	bne _0805D5D0
	b _0805DA8E
_0805D5D0:
	movs r0, #0x20
	strb r0, [r4, #0xd]
	b _0805DA88
_0805D5D6:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805D5E6
	b _0805DA8E
_0805D5E6:
	b _0805DA88
_0805D5E8:
	adds r0, r4, #0
	bl sub_0805D35C
	ldr r1, [r4, #0x14]
	adds r0, r1, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #5
	beq _0805D606
	adds r0, r1, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0805D606:
	movs r0, #0xda
	lsls r0, r0, #1
	bl PlaySong
	ldr r2, [r4, #0x18]
	adds r2, #0x58
	ldrb r3, [r2]
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x20
	strb r0, [r4, #0xd]
	b _0805DA88
_0805D632:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805D642
	b _0805DA8E
_0805D642:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0
	b _0805DA8C
_0805D64C:
	ldrb r0, [r4, #0xc]
	cmp r0, #6
	bls _0805D654
	b _0805DA8E
_0805D654:
	lsls r0, r0, #2
	ldr r1, _0805D660 @ =_0805D664
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805D660: .4byte _0805D664
_0805D664: @ jump table
	.4byte _0805D680 @ case 0
	.4byte _0805D69C @ case 1
	.4byte _0805D6AE @ case 2
	.4byte _0805D6E0 @ case 3
	.4byte _0805D704 @ case 4
	.4byte _0805D73E @ case 5
	.4byte _0805D754 @ case 6
_0805D680:
	ldr r2, _0805D698 @ =0x000003B7
	adds r1, r5, r2
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	b _0805DA8E
	.align 2, 0
_0805D698: .4byte 0x000003B7
_0805D69C:
	adds r0, r4, #0
	bl sub_0805CCE4
	cmp r0, #0
	bne _0805D6A8
	b _0805DA8E
_0805D6A8:
	movs r0, #0
	strb r0, [r4, #0xd]
	b _0805DA88
_0805D6AE:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805D6BE
	b _0805DA8E
_0805D6BE:
	ldrh r1, [r4, #0x20]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r4, #0x20]
	ldr r0, _0805D6DC @ =0x000001DF
	bl PlaySong
	ldr r0, [r4, #0x18]
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0805DA88
	.align 2, 0
_0805D6DC: .4byte 0x000001DF
_0805D6E0:
	ldr r0, [r4, #0x18]
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805D6F0
	b _0805DA8E
_0805D6F0:
	ldrh r1, [r4, #0x20]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4, #0x20]
_0805D6F8:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xd]
	b _0805DA8E
_0805D704:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805D714
	b _0805DA8E
_0805D714:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xf0
	lsls r0, r0, #1
	bl PlaySong
	ldr r1, [r4, #0x18]
	adds r0, r1, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	bne _0805D730
	b _0805DA8E
_0805D730:
	adds r0, r1, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0805DA8E
_0805D73E:
	ldr r0, [r4, #0x18]
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805D74E
	b _0805DA8E
_0805D74E:
	movs r0, #0x58
	strb r0, [r4, #0xd]
	b _0805DA88
_0805D754:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	beq _0805D75E
	b _0805D8DC
_0805D75E:
	ldr r3, _0805D768 @ =0x000003B7
	adds r0, r5, r3
	strb r1, [r0]
	b _0805DA8E
	.align 2, 0
_0805D768: .4byte 0x000003B7
_0805D76C:
	ldrb r0, [r4, #0xc]
	cmp r0, #6
	bls _0805D774
	b _0805DA8E
_0805D774:
	lsls r0, r0, #2
	ldr r1, _0805D780 @ =_0805D784
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805D780: .4byte _0805D784
_0805D784: @ jump table
	.4byte _0805D7A0 @ case 0
	.4byte _0805D7B4 @ case 1
	.4byte _0805D7D2 @ case 2
	.4byte _0805D8EC @ case 3
	.4byte _0805D974 @ case 4
	.4byte _0805D97E @ case 5
	.4byte _0805D9E0 @ case 6
_0805D7A0:
	ldr r0, _0805D7B0 @ =0x000003B7
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x10
	strb r0, [r4, #0xd]
	b _0805DA88
	.align 2, 0
_0805D7B0: .4byte 0x000003B7
_0805D7B4:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805D7C4
	b _0805DA8E
_0805D7C4:
	movs r0, #0xd2
	strb r0, [r4, #0xd]
	movs r0, #2
	mov r1, r8
	orrs r1, r0
	mov r8, r1
	b _0805DA88
_0805D7D2:
	ldrb r0, [r4, #0xd]
	cmp r0, #0xd0
	bne _0805D824
	ldr r1, [r4, #0x1c]
	adds r0, r1, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r2, #0
	str r2, [sp]
	movs r3, #0
	bl sub_0805EAFC
	ldr r1, [r4, #0x1c]
	adds r1, #0x58
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	ldr r2, [r4, #0x1c]
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x44]
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	bl sub_0806D578
	ldr r0, [r4, #0x1c]
	bl sub_0805E9F0
	movs r0, #0x6b
	bl PlaySong
	ldr r2, _0805D89C @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805D8A0 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
_0805D824:
	ldrb r0, [r4, #0xd]
	cmp r0, #0x8f
	bne _0805D856
	bl sub_0800F038
	ldr r0, _0805D8A4 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0805D8A8 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0805D8AC @ =0xFFFFFDFF
	ands r0, r2
	str r0, [r1]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_0800E708
	ldr r2, _0805D89C @ =gUnk_03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_0805D856:
	ldrb r0, [r4, #0xd]
	cmp r0, #0x8f
	bhi _0805D8DA
	cmp r0, #0x8f
	bne _0805D874
	ldr r0, _0805D8B0 @ =0x00000197
	bl PlaySong
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0805D874:
	ldrb r1, [r4, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805D8B8
	ldr r0, _0805D8A4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805D8B4 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	b _0805D8CE
	.align 2, 0
_0805D89C: .4byte gUnk_03002CB0
_0805D8A0: .4byte 0x0000FEFF
_0805D8A4: .4byte gEwramData
_0805D8A8: .4byte 0x0000042C
_0805D8AC: .4byte 0xFFFFFDFF
_0805D8B0: .4byte 0x00000197
_0805D8B4: .4byte 0x00013110
_0805D8B8:
	ldr r0, _0805D8E4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0805D8E8 @ =0x00013110
	adds r0, r0, r2
	ldr r1, [r0]
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_0805D8CE:
	movs r0, #0x52
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0801D028
_0805D8DA:
	ldrb r0, [r4, #0xd]
_0805D8DC:
	subs r0, #1
	strb r0, [r4, #0xd]
	b _0805DA8E
	.align 2, 0
_0805D8E4: .4byte gEwramData
_0805D8E8: .4byte 0x00013110
_0805D8EC:
	adds r6, r7, #0
	ldr r0, [r6]
	ldrh r1, [r0, #0x16]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0805D91C
	movs r0, #0x99
	lsls r0, r0, #1
	bl PlaySong
	ldr r2, _0805D914 @ =gUnk_03002CB0
	ldrh r1, [r2]
	ldr r0, _0805D918 @ =0x0000FEFF
	ands r0, r1
	movs r1, #0
	strh r0, [r2]
	strb r1, [r4, #0xd]
	b _0805DA88
	.align 2, 0
_0805D914: .4byte gUnk_03002CB0
_0805D918: .4byte 0x0000FEFF
_0805D91C:
	bl sub_0800E40C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	ands r0, r5
	cmp r0, #0
	beq _0805D94C
	ldr r0, [r6]
	ldr r3, _0805D948 @ =0x00013110
	adds r0, r0, r3
	ldr r2, [r0]
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	b _0805D960
	.align 2, 0
_0805D948: .4byte 0x00013110
_0805D94C:
	ldr r0, [r7]
	ldr r1, _0805D970 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_0805D960:
	movs r0, #0x52
_0805D962:
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0801D028
	b _0805DA8E
	.align 2, 0
_0805D970: .4byte 0x00013110
_0805D974:
	bl sub_0800F0AC
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0805D97E:
	movs r0, #0x52
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0801D028
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805D99A
	b _0805DA8E
_0805D99A:
	ldr r2, _0805D9D0 @ =gUnk_03002CB0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	movs r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0805D9D4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805D9D8 @ =0x00013110
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	strb r3, [r4, #0xd]
	movs r0, #6
	strb r0, [r4, #0xc]
	ldr r2, _0805D9DC @ =0x000003B7
	adds r0, r5, r2
	strb r3, [r0]
	b _0805DA8E
	.align 2, 0
_0805D9D0: .4byte gUnk_03002CB0
_0805D9D4: .4byte gEwramData
_0805D9D8: .4byte 0x00013110
_0805D9DC: .4byte 0x000003B7
_0805D9E0:
	movs r0, #0x80
	mov r3, r8
	orrs r3, r0
	mov r8, r3
	b _0805DA8E
_0805D9EA:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0805D9F6
	cmp r0, #1
	beq _0805DA10
	b _0805DA8E
_0805D9F6:
	movs r0, #0x17
	bl sub_08013CF0
	ldr r0, _0805DA0C @ =0x000003B7
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x20
	strb r0, [r4, #0xd]
	b _0805DA88
	.align 2, 0
_0805DA0C: .4byte 0x000003B7
_0805DA10:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805DA8E
	ldr r2, _0805DA28 @ =0x000003B7
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1]
	b _0805DA88
	.align 2, 0
_0805DA28: .4byte 0x000003B7
_0805DA2C:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805DA8E
	ldr r0, _0805DA3C @ =0x00001041
	bl sub_0805B878
	b _0805DA88
	.align 2, 0
_0805DA3C: .4byte 0x00001041
_0805DA40:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805DA64
	cmp r0, #1
	bgt _0805DA8E
	cmp r0, #0
	bne _0805DA8E
	ldr r3, _0805DA60 @ =0x000003B7
	adds r1, r5, r3
	movs r0, #1
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #4
	strb r0, [r1]
	b _0805DA88
	.align 2, 0
_0805DA60: .4byte 0x000003B7
_0805DA64:
	adds r0, r4, #0
	bl sub_0805CCE4
	cmp r0, #0
	beq _0805DA8E
	ldr r0, _0805DA9C @ =0x000003B7
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	movs r1, #0xed
	lsls r1, r1, #2
	adds r2, r5, r1
	ldrb r1, [r2]
	subs r0, #0x10
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
_0805DA88:
	ldrb r0, [r4, #0xc]
	adds r0, #1
_0805DA8C:
	strb r0, [r4, #0xc]
_0805DA8E:
	mov r0, r8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805DA9C: .4byte 0x000003B7

	thumb_func_start sub_0805DAA0
sub_0805DAA0: @ 0x0805DAA0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _0805DAE0 @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805DAE4 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r5, r1, r0
	ldrh r1, [r5, #0x20]
	movs r0, #4
	ands r0, r1
	adds r3, r2, #0
	cmp r0, #0
	beq _0805DACE
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_0805DACE:
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bls _0805DAD6
	b _0805DC72
_0805DAD6:
	lsls r0, r0, #2
	ldr r1, _0805DAE8 @ =_0805DAEC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805DAE0: .4byte gEwramData
_0805DAE4: .4byte 0x000004E4
_0805DAE8: .4byte _0805DAEC
_0805DAEC: @ jump table
	.4byte _0805DB04 @ case 0
	.4byte _0805DB16 @ case 1
	.4byte _0805DB5C @ case 2
	.4byte _0805DC72 @ case 3
	.4byte _0805DC1E @ case 4
	.4byte _0805DC66 @ case 5
_0805DB04:
	ldrh r1, [r5, #0x20]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0805DB10
	b _0805DC72
_0805DB10:
	movs r1, #0
	movs r0, #1
	b _0805DC16
_0805DB16:
	movs r2, #0x26
	ldrsh r0, [r4, r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r0, r3
	bl sub_080009E4
	cmp r0, #0
	bge _0805DB2A
	adds r0, #3
_0805DB2A:
	asrs r1, r0, #2
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r3, [r4, #0x26]
	adds r0, r0, r3
	movs r2, #0
	strh r0, [r4, #0x26]
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x54]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	ldrh r1, [r5, #0x20]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0805DB52
	b _0805DC72
_0805DB52:
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xb]
	b _0805DC72
_0805DB5C:
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	beq _0805DB68
	cmp r5, #1
	beq _0805DBAE
	b _0805DC72
_0805DB68:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0805DB74
	cmp r0, #1
	beq _0805DB96
	b _0805DC72
_0805DB74:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #5
	beq _0805DB8A
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0805DB8A:
	movs r0, #0x60
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _0805DC72
_0805DB96:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805DC72
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
	b _0805DC72
_0805DBAE:
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r3]
	ldr r3, _0805DBF8 @ =0x0000A094
	adds r0, r0, r3
	movs r3, #6
	ldrsh r1, [r0, r3]
	movs r0, #0xca
	subs r0, r0, r1
	cmp r2, r0
	ble _0805DBFC
	movs r1, #0xc0
	lsls r1, r1, #0xa
	movs r2, #0x80
	lsls r2, r2, #0xe
	movs r3, #0xa0
	lsls r3, r3, #9
	str r5, [sp]
	adds r0, r4, #0
	bl sub_0806E140
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	bne _0805DBEC
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_0805DBEC:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	b _0805DC72
	.align 2, 0
_0805DBF8: .4byte 0x0000A094
_0805DBFC:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _0805DC12
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0805DC12:
	movs r1, #0
	movs r0, #3
_0805DC16:
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _0805DC72
_0805DC1E:
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	bne _0805DC72
	movs r1, #0x80
	rsbs r1, r1, #0
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r3, #0xf8
	lsls r3, r3, #1
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0805DC5C
	movs r0, #0x6b
	bl PlaySong
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	bl sub_0806D578
	adds r0, r4, #0
	bl sub_0805E9F0
_0805DC5C:
	movs r0, #5
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _0805DC72
_0805DC66:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0805DC72:
	adds r0, r4, #0
	bl sub_0803F17C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0805DC80
sub_0805DC80: @ 0x0805DC80
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	movs r0, #9
	bl sub_0805B5E8
	adds r7, r0, #0
	ldr r0, _0805DD6C @ =sub_0805DD7C
	str r0, [r7]
	adds r0, r7, #0
	adds r0, #0x42
	strh r4, [r0]
	adds r0, #4
	strh r5, [r0]
	mov r1, r8
	ldrb r0, [r1, #0x10]
	strb r0, [r7, #0x11]
	strb r6, [r7, #0x13]
	adds r1, r7, #0
	adds r1, #0x36
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_0806AF98
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r1, [r7, #0x13]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805DCEA
	movs r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #8
_0805DCD6:
	ldr r0, [r7, #0x44]
	adds r0, r0, r2
	str r0, [r7, #0x44]
	subs r1, #1
	cmp r1, #0
	bne _0805DCD6
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0x17
	strb r0, [r1]
_0805DCEA:
	movs r3, #0
	ldr r0, _0805DD70 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805DD74 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r7, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _0805DD00
	movs r3, #1
_0805DD00:
	adds r2, r7, #0
	adds r2, #0x58
	lsls r3, r3, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	movs r0, #9
	bl sub_0805B5E8
	adds r4, r0, #0
	ldr r0, _0805DD78 @ =sub_0805E0D0
	str r0, [r4]
	ldrb r0, [r7, #0x10]
	strb r0, [r4, #0x11]
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x10
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldrb r0, [r4, #0x10]
	strb r0, [r7, #0x12]
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x36
	strb r1, [r0]
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805DD6C: .4byte sub_0805DD7C
_0805DD70: .4byte gEwramData
_0805DD74: .4byte 0x00013110
_0805DD78: .4byte sub_0805E0D0

	thumb_func_start sub_0805DD7C
sub_0805DD7C: @ 0x0805DD7C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _0805DDC8 @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _0805DDCC @ =0x000004E4
	adds r0, r0, r3
	ldr r2, [r2]
	adds r6, r2, r0
	ldrb r1, [r4, #0x12]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r3, r2, r0
	ldrh r1, [r6, #0x20]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805DDB4
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_0805DDB4:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bls _0805DDBC
	b _0805E0C2
_0805DDBC:
	lsls r0, r0, #2
	ldr r1, _0805DDD0 @ =_0805DDD4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805DDC8: .4byte gEwramData
_0805DDCC: .4byte 0x000004E4
_0805DDD0: .4byte _0805DDD4
_0805DDD4: @ jump table
	.4byte _0805DDE8 @ case 0
	.4byte _0805DE28 @ case 1
	.4byte _0805DE90 @ case 2
	.4byte _0805DF86 @ case 3
	.4byte _0805E0AC @ case 4
_0805DDE8:
	ldrh r1, [r6, #0x20]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0805DDF4
	b _0805E0C2
_0805DDF4:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	cmp r0, r1
	beq _0805DE0A
	b _0805E0C2
_0805DE0A:
	ldrb r1, [r4, #0x13]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0805DE24
	movs r0, #0
	strb r2, [r4, #0xa]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
	b _0805E0C2
_0805DE24:
	movs r0, #1
	b _0805E0A4
_0805DE28:
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _0805DE5E
	cmp r5, #1
	ble _0805DE34
	b _0805E0C2
_0805DE34:
	cmp r5, #0
	beq _0805DE3A
	b _0805E0C2
_0805DE3A:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	cmp r0, r1
	beq _0805DE50
	b _0805E0C2
_0805DE50:
	movs r0, #0x10
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
	b _0805E0C2
_0805DE5E:
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #0
	beq _0805DE70
	b _0805E0C2
_0805DE70:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805DE82
	movs r0, #2
	b _0805E0A4
_0805DE82:
	ldr r0, [r4, #0x44]
	ldr r1, _0805DE8C @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r4, #0x44]
	b _0805E0C2
	.align 2, 0
_0805DE8C: .4byte 0xFFFF8000
_0805DE90:
	ldrb r1, [r4, #0x13]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805DF74
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0805DEA6
	cmp r0, #1
	beq _0805DF38
	b _0805DF74
_0805DEA6:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805DF14
	movs r0, #9
	bl sub_0805B5E8
	adds r5, r0, #0
	ldr r0, _0805DF10 @ =sub_0805E184
	str r0, [r5]
	ldrb r0, [r4, #0x10]
	strb r0, [r5, #0x11]
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x36
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _0805DF2A
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0805DF2A
	.align 2, 0
_0805DF10: .4byte sub_0805E184
_0805DF14:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805DF2A
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0805DF2A:
	movs r1, #0
	movs r0, #0xa0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
_0805DF38:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0805DF74
	bl RandomNumberGenerator
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	bne _0805DF74
	movs r1, #0x80
	lsls r1, r1, #7
	movs r2, #0x80
	lsls r2, r2, #0xe
	movs r3, #0x80
	lsls r3, r3, #0xa
	str r5, [sp]
	adds r0, r4, #0
	bl sub_0806E140
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	bne _0805DF6E
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_0805DF6E:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
_0805DF74:
	ldrh r1, [r6, #0x20]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805DF80
	b _0805E0C2
_0805DF80:
	movs r1, #0
	movs r0, #3
	b _0805E0A4
_0805DF86:
	ldrb r1, [r4, #0xb]
	cmp r1, #1
	beq _0805DFAA
	cmp r1, #1
	bgt _0805DF96
	cmp r1, #0
	beq _0805DFA0
	b _0805E0C2
_0805DF96:
	cmp r1, #2
	beq _0805E016
	cmp r1, #3
	beq _0805E036
	b _0805E0C2
_0805DFA0:
	movs r0, #0x20
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	b _0805E030
_0805DFAA:
	ldrb r0, [r4, #0xd]
	ands r1, r0
	cmp r1, #0
	beq _0805DFC8
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r3, r2, #0
	b _0805DFE4
_0805DFC8:
	adds r1, r4, #0
	adds r1, #0x2c
	adds r3, r4, #0
	adds r3, #0x5a
	movs r0, #0xf
	ldrb r1, [r1]
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0805DFE4:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805E0C2
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x2c
	movs r2, #0xf
	ldrb r1, [r0]
	ands r1, r2
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _0805E0C2
_0805E016:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	cmp r0, r1
	bne _0805E0C2
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
_0805E030:
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _0805E0C2
_0805E036:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	cmp r0, r1
	bne _0805E0C2
	movs r1, #0x80
	rsbs r1, r1, #0
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r3, #0xf8
	lsls r3, r3, #1
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0805E082
	movs r0, #0x6b
	bl PlaySong
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	bl sub_0806D578
	adds r0, r4, #0
	bl sub_0805E8C8
_0805E082:
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r4, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r1, #0x20
	ldr r2, [r6, #0x18]
	str r2, [sp]
	movs r2, #0
	movs r3, #0
	bl sub_0805ED80
	movs r1, #0
	movs r0, #4
_0805E0A4:
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _0805E0C2
_0805E0AC:
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r2, #8
	orrs r0, r2
	strb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
_0805E0C2:
	adds r0, r4, #0
	bl sub_0803F17C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0805E0D0
sub_0805E0D0: @ 0x0805E0D0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r2, _0805E10C @ =gEwramData
	ldrb r1, [r6, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E110 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r5, r1, r0
	cmp r5, #0
	beq _0805E0FC
	adds r0, r5, #0
	adds r0, #0x36
	adds r1, r6, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0805E114
_0805E0FC:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0805E17C
	.align 2, 0
_0805E10C: .4byte gEwramData
_0805E110: .4byte 0x000004E4
_0805E114:
	mov r4, sp
	adds r0, r5, #0
	movs r1, #0
	mov r2, sp
	bl sub_0806C3F8
	adds r1, r5, #0
	adds r1, #0x42
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r6, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r6, #0
	bl sub_0803F17C
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r3, r6, #0
	adds r3, #0x5a
	movs r1, #0x78
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0805E17C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0805E184
sub_0805E184: @ 0x0805E184
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r2, _0805E1D0 @ =gEwramData
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E1D4 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	movs r0, #8
	mov r8, r0
	movs r1, #8
	rsbs r1, r1, #0
	mov sb, r1
	cmp r6, #0
	beq _0805E1C0
	adds r0, r6, #0
	adds r0, #0x36
	adds r1, r5, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0805E1D8
_0805E1C0:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0805E250
	.align 2, 0
_0805E1D0: .4byte gEwramData
_0805E1D4: .4byte 0x000004E4
_0805E1D8:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r4, r5, #0
	adds r4, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	mov r7, sp
	adds r0, r6, #0
	movs r1, #0
	mov r2, sp
	bl sub_0806C3F8
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805E20A
	mov r8, sb
_0805E20A:
	adds r1, r6, #0
	adds r1, #0x42
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	add r0, r8
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r0, [r7, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	add r0, sb
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_0803F17C
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x5a
	movs r1, #0x78
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0805E250:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805E260
sub_0805E260: @ 0x0805E260
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	movs r0, #8
	bl sub_0805B5E8
	adds r7, r0, #0
	ldr r0, _0805E2CC @ =sub_0805E2D8
	str r0, [r7]
	adds r0, r7, #0
	adds r0, #0x42
	strh r4, [r0]
	adds r0, #4
	strh r5, [r0]
	ldrb r0, [r6, #0x10]
	strb r0, [r7, #0x11]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	lsls r1, r1, #9
	strh r1, [r7, #0x26]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r3, #0
	ldr r0, _0805E2D0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805E2D4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r7, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _0805E2B0
	movs r3, #1
_0805E2B0:
	adds r2, r7, #0
	adds r2, #0x58
	lsls r3, r3, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805E2CC: .4byte sub_0805E2D8
_0805E2D0: .4byte gEwramData
_0805E2D4: .4byte 0x00013110

	thumb_func_start sub_0805E2D8
sub_0805E2D8: @ 0x0805E2D8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r2, _0805E34C @ =gEwramData
	ldrb r1, [r5, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E350 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r4, r1, r0
	ldrh r1, [r4, #0x20]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805E304
	movs r1, #0
	movs r0, #5
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_0805E304:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bhi _0805E338
	movs r2, #0x26
	ldrsh r0, [r5, r2]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	cmp r0, #0
	bge _0805E31E
	adds r0, #3
_0805E31E:
	asrs r1, r0, #2
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r2, [r5, #0x26]
	adds r0, r0, r2
	strh r0, [r5, #0x26]
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x54]
	adds r1, r1, r0
	str r1, [r5, #0x4c]
_0805E338:
	ldrb r0, [r5, #0xa]
	cmp r0, #5
	bls _0805E340
	b _0805E51A
_0805E340:
	lsls r0, r0, #2
	ldr r1, _0805E354 @ =_0805E358
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805E34C: .4byte gEwramData
_0805E350: .4byte 0x000004E4
_0805E354: .4byte _0805E358
_0805E358: @ jump table
	.4byte _0805E370 @ case 0
	.4byte _0805E382 @ case 1
	.4byte _0805E388 @ case 2
	.4byte _0805E39A @ case 3
	.4byte _0805E404 @ case 4
	.4byte _0805E50E @ case 5
_0805E370:
	ldrh r1, [r4, #0x20]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0805E37C
	b _0805E51A
_0805E37C:
	movs r1, #0
	movs r0, #1
	b _0805E506
_0805E382:
	movs r1, #0
	movs r0, #2
	b _0805E506
_0805E388:
	ldrh r1, [r4, #0x20]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805E394
	b _0805E51A
_0805E394:
	movs r1, #0
	movs r0, #4
	b _0805E506
_0805E39A:
	ldrh r1, [r4, #0x20]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805E3AA
	movs r1, #0
	movs r0, #4
	b _0805E506
_0805E3AA:
	movs r0, #0x26
	ldrsh r4, [r5, r0]
	lsls r4, r4, #0x17
	lsrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	asrs r0, r0, #8
	lsls r0, r0, #8
	str r0, [r5, #0x48]
	adds r0, r4, #0
	bl sub_080009E4
	asrs r0, r0, #8
	lsls r0, r0, #8
	str r0, [r5, #0x4c]
	ldr r4, [r5, #0x48]
	lsls r4, r4, #1
	str r4, [r5, #0x48]
	movs r1, #3
	bl __divsi3
	str r0, [r5, #0x4c]
	ldr r1, [r5, #0x40]
	adds r1, r1, r4
	str r1, [r5, #0x40]
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	str r1, [r5, #0x44]
	ldrh r0, [r5, #0x26]
	adds r0, #1
	strh r0, [r5, #0x26]
	mvns r4, r4
	adds r2, r5, #0
	adds r2, #0x58
	lsrs r4, r4, #0x1f
	lsls r4, r4, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	b _0805E518
_0805E404:
	ldrb r1, [r5, #0xb]
	cmp r1, #1
	beq _0805E42C
	cmp r1, #1
	bgt _0805E414
	cmp r1, #0
	beq _0805E41E
	b _0805E51A
_0805E414:
	cmp r1, #2
	beq _0805E49C
	cmp r1, #3
	beq _0805E4B6
	b _0805E51A
_0805E41E:
	movs r0, #0x20
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xc]
	b _0805E51A
_0805E42C:
	ldrb r0, [r5, #0xd]
	ands r1, r0
	cmp r1, #0
	beq _0805E44A
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r3, r2, #0
	b _0805E466
_0805E44A:
	adds r1, r5, #0
	adds r1, #0x2c
	adds r3, r5, #0
	adds r3, #0x5a
	movs r0, #0xf
	ldrb r1, [r1]
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0805E466:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805E51A
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x2c
	movs r2, #0xf
	ldrb r1, [r0]
	ands r1, r2
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0x10
	strb r0, [r5, #0xd]
	b _0805E51A
_0805E49C:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805E51A
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xc]
	b _0805E51A
_0805E4B6:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r5, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	cmp r0, r1
	bne _0805E51A
	movs r1, #0x80
	rsbs r1, r1, #0
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r3, #0xf8
	lsls r3, r3, #1
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0805E502
	movs r0, #0x6b
	bl PlaySong
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	bl sub_0806D578
	adds r0, r5, #0
	bl sub_0805E9F0
_0805E502:
	movs r1, #0
	movs r0, #5
_0805E506:
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
	b _0805E51A
_0805E50E:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
_0805E518:
	strb r0, [r2]
_0805E51A:
	adds r0, r5, #0
	bl sub_0803F17C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0805E528
sub_0805E528: @ 0x0805E528
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	movs r0, #0xa
	bl sub_0805B5E8
	adds r7, r0, #0
	ldr r0, _0805E5C8 @ =sub_0805E5D4
	str r0, [r7]
	adds r0, r7, #0
	adds r0, #0x42
	strh r4, [r0]
	adds r0, #4
	strh r5, [r0]
	adds r0, r7, #0
	bl sub_0806AF98
	mov r1, r8
	ldrb r0, [r1, #0x10]
	strb r0, [r7, #0x11]
	strb r6, [r7, #0x13]
	adds r1, r7, #0
	adds r1, #0x36
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r1, [r7, #0x13]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805E592
	movs r1, #0x10
	adds r3, r7, #0
	adds r3, #0x5c
	movs r2, #0x80
	lsls r2, r2, #8
_0805E582:
	ldr r0, [r7, #0x44]
	adds r0, r0, r2
	str r0, [r7, #0x44]
	subs r1, #1
	cmp r1, #0
	bne _0805E582
	movs r0, #0x17
	strb r0, [r3]
_0805E592:
	movs r3, #0
	ldr r0, _0805E5CC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805E5D0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r7, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _0805E5A8
	movs r3, #1
_0805E5A8:
	adds r2, r7, #0
	adds r2, #0x58
	lsls r3, r3, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805E5C8: .4byte sub_0805E5D4
_0805E5CC: .4byte gEwramData
_0805E5D0: .4byte 0x00013110

	thumb_func_start sub_0805E5D4
sub_0805E5D4: @ 0x0805E5D4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _0805E614 @ =gEwramData
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E618 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	ldrh r1, [r6, #0x20]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805E600
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_0805E600:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bls _0805E608
	b _0805E8BA
_0805E608:
	lsls r0, r0, #2
	ldr r1, _0805E61C @ =_0805E620
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805E614: .4byte gEwramData
_0805E618: .4byte 0x000004E4
_0805E61C: .4byte _0805E620
_0805E620: @ jump table
	.4byte _0805E634 @ case 0
	.4byte _0805E674 @ case 1
	.4byte _0805E6DC @ case 2
	.4byte _0805E78E @ case 3
	.4byte _0805E8AE @ case 4
_0805E634:
	ldrh r1, [r6, #0x20]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0805E640
	b _0805E8BA
_0805E640:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	cmp r0, r1
	beq _0805E656
	b _0805E8BA
_0805E656:
	ldrb r1, [r4, #0x13]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0805E670
	movs r0, #0
	strb r2, [r4, #0xa]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
	b _0805E8BA
_0805E670:
	movs r0, #1
	b _0805E8A6
_0805E674:
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _0805E6AA
	cmp r5, #1
	ble _0805E680
	b _0805E8BA
_0805E680:
	cmp r5, #0
	beq _0805E686
	b _0805E8BA
_0805E686:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	cmp r0, r1
	beq _0805E69C
	b _0805E8BA
_0805E69C:
	movs r0, #0x10
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
	b _0805E8BA
_0805E6AA:
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #0
	beq _0805E6BC
	b _0805E8BA
_0805E6BC:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805E6CE
	movs r0, #2
	b _0805E8A6
_0805E6CE:
	ldr r0, [r4, #0x44]
	ldr r2, _0805E6D8 @ =0xFFFF8000
	adds r0, r0, r2
	str r0, [r4, #0x44]
	b _0805E8BA
	.align 2, 0
_0805E6D8: .4byte 0xFFFF8000
_0805E6DC:
	ldrb r1, [r4, #0x13]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805E752
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	beq _0805E6F2
	cmp r5, #1
	beq _0805E714
	b _0805E77C
_0805E6F2:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805E708
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0805E708:
	movs r0, #0xa0
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
_0805E714:
	bl RandomNumberGenerator
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	bne _0805E77C
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0805E77C
	movs r1, #0x80
	lsls r1, r1, #7
	movs r2, #0x80
	lsls r2, r2, #0xe
	movs r3, #0x80
	lsls r3, r3, #0xa
	str r5, [sp]
	adds r0, r4, #0
	bl sub_0806E140
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	bne _0805E74A
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_0805E74A:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	b _0805E77C
_0805E752:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805E77C
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0805E77C
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _0805E776
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0805E776:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_0805E77C:
	ldrh r1, [r6, #0x20]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805E788
	b _0805E8BA
_0805E788:
	movs r1, #0
	movs r0, #3
	b _0805E8A6
_0805E78E:
	ldrb r1, [r4, #0xb]
	cmp r1, #1
	beq _0805E7B2
	cmp r1, #1
	bgt _0805E79E
	cmp r1, #0
	beq _0805E7A8
	b _0805E8BA
_0805E79E:
	cmp r1, #2
	beq _0805E81E
	cmp r1, #3
	beq _0805E83E
	b _0805E8BA
_0805E7A8:
	movs r0, #0x20
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	b _0805E838
_0805E7B2:
	ldrb r0, [r4, #0xd]
	ands r1, r0
	cmp r1, #0
	beq _0805E7D0
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r3, r2, #0
	b _0805E7EC
_0805E7D0:
	adds r1, r4, #0
	adds r1, #0x2c
	adds r3, r4, #0
	adds r3, #0x5a
	movs r0, #0xf
	ldrb r1, [r1]
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0805E7EC:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805E8BA
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x2c
	movs r2, #0xf
	ldrb r1, [r0]
	ands r1, r2
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _0805E8BA
_0805E81E:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	cmp r0, r1
	bne _0805E8BA
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
_0805E838:
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _0805E8BA
_0805E83E:
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	cmp r0, r1
	bne _0805E8BA
	movs r1, #0x80
	rsbs r1, r1, #0
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r3, #0xf8
	lsls r3, r3, #1
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0805E884
	movs r0, #0x6b
	bl PlaySong
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	bl sub_0806D578
_0805E884:
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r1, #0x20
	ldr r2, [r6, #0x18]
	str r2, [sp]
	movs r2, #0
	movs r3, #0
	bl sub_0805ED80
	movs r1, #0
	movs r0, #4
_0805E8A6:
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _0805E8BA
_0805E8AE:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0805E8BA:
	adds r0, r4, #0
	bl sub_0803F17C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0805E8C8
sub_0805E8C8: @ 0x0805E8C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r0, #0
	mov sl, r0
	movs r1, #6
	mov sb, r1
_0805E8DC:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _0805E9E0 @ =sub_0805F044
	bl EntityCreateInRange
	adds r7, r0, #0
	cmp r7, #0
	beq _0805E9C0
	ldr r4, _0805E9E4 @ =0x085267D8
	add r4, sl
	mov r2, r8
	ldrb r0, [r2, #0x10]
	strb r0, [r7, #0x11]
	mov r0, r8
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x5c
	strb r1, [r0]
	mov r0, r8
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r5, r7, #0
	adds r5, #0x2c
	strb r0, [r5]
	mov r0, r8
	adds r0, #0x58
	ldrb r0, [r0]
	adds r6, r7, #0
	adds r6, #0x58
	movs r2, #0x40
	ands r2, r0
	ldrb r0, [r6]
	movs r3, #0x41
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6]
	mov r0, r8
	bl sub_0803B998
	adds r2, r0, #0
	ldrb r3, [r5]
	adds r0, r7, #0
	ldr r1, _0805E9E8 @ =0x0824C910
	bl sub_0803B924
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0805E9EC @ =sub_0803B9D0
	str r0, [r7, #4]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x44]
	movs r5, #0
	ldrsb r5, [r4, r5]
	adds r1, r7, #0
	adds r1, #0x46
	movs r0, #1
	ldrsb r0, [r4, r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldrb r0, [r4, #2]
	adds r1, #0x1f
	strb r0, [r1]
	bl RandomNumberGenerator
	movs r1, #3
	ldrsb r1, [r4, r1]
	adds r1, #0x10
	movs r3, #0x1f
	ands r0, r3
	subs r1, r1, r0
	lsls r1, r1, #0xc
	str r1, [r7, #0x48]
	bl RandomNumberGenerator
	movs r1, #4
	ldrsb r1, [r4, r1]
	adds r1, #0x10
	movs r2, #0x1f
	ands r0, r2
	subs r1, r1, r0
	lsls r1, r1, #0xc
	rsbs r1, r1, #0
	str r1, [r7, #0x4c]
	movs r0, #5
	ldrsb r0, [r4, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strb r0, [r7, #0xd]
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805E9B6
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	rsbs r5, r5, #0
_0805E9B6:
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, r0, r5
	strh r0, [r1]
_0805E9C0:
	movs r3, #6
	add sl, r3
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	cmp r1, #0
	bge _0805E8DC
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E9E0: .4byte sub_0805F044
_0805E9E4: .4byte 0x085267D8
_0805E9E8: .4byte 0x0824C910
_0805E9EC: .4byte sub_0803B9D0

	thumb_func_start sub_0805E9F0
sub_0805E9F0: @ 0x0805E9F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r0, #0
	mov sl, r0
	movs r1, #6
	mov sb, r1
_0805EA04:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _0805EAEC @ =sub_0805F044
	bl EntityCreateInRange
	adds r7, r0, #0
	cmp r7, #0
	beq _0805EACE
	ldr r4, _0805EAF0 @ =0x08526802
	add r4, sl
	mov r3, r8
	ldrb r0, [r3, #0x10]
	strb r0, [r7, #0x11]
	mov r0, r8
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x5c
	strb r1, [r0]
	mov r0, r8
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r5, r7, #0
	adds r5, #0x2c
	strb r0, [r5]
	mov r0, r8
	adds r0, #0x58
	ldrb r0, [r0]
	adds r6, r7, #0
	adds r6, #0x58
	movs r2, #0x40
	ands r2, r0
	ldrb r0, [r6]
	movs r3, #0x41
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6]
	mov r0, r8
	bl sub_0803B998
	adds r2, r0, #0
	ldrb r3, [r5]
	adds r0, r7, #0
	ldr r1, _0805EAF4 @ =0x08215CBC
	bl sub_0803B924
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0805EAF8 @ =sub_0803B9D0
	str r0, [r7, #4]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x44]
	movs r2, #0
	ldrsb r2, [r4, r2]
	adds r1, r7, #0
	adds r1, #0x46
	movs r0, #1
	ldrsb r0, [r4, r0]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldrb r0, [r4, #2]
	adds r1, #0x1f
	strb r0, [r1]
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r3, r0, #0xc
	str r3, [r7, #0x48]
	movs r0, #4
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0xc
	rsbs r0, r0, #0
	str r0, [r7, #0x4c]
	movs r0, #5
	ldrsb r0, [r4, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strb r0, [r7, #0xd]
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805EAC4
	rsbs r0, r3, #0
	str r0, [r7, #0x48]
	rsbs r2, r2, #0
_0805EAC4:
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
_0805EACE:
	movs r0, #6
	add sl, r0
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	mov r3, sb
	cmp r3, #0
	bge _0805EA04
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805EAEC: .4byte sub_0805F044
_0805EAF0: .4byte 0x08526802
_0805EAF4: .4byte 0x08215CBC
_0805EAF8: .4byte sub_0803B9D0

	thumb_func_start sub_0805EAFC
sub_0805EAFC: @ 0x0805EAFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	mov sl, r3
	ldr r2, _0805EBD0 @ =sub_0805EC20
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r6, r0, #0
	cmp r6, #0
	beq _0805EC0E
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	ldr r0, _0805EBD4 @ =0x081C15F4
	bl sub_0803AFB8
	adds r5, r0, #0
	ldr r4, _0805EBD8 @ =0x0820ED60
	mov r0, sb
	bl sub_08032B14
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	movs r0, #1
	strb r0, [r6, #0xc]
	ldr r0, _0805EBDC @ =sub_0803B9D0
	str r0, [r6, #4]
	ldr r2, _0805EBE0 @ =sub_0805F0B0
	adds r0, r6, #0
	movs r1, #0xb
	movs r3, #0
	bl sub_0804277C
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0805EBE4 @ =0x0C0CFAFA
	adds r0, r6, #0
	bl sub_08042884
	adds r0, r6, #0
	adds r0, #0x42
	strh r7, [r0]
	adds r0, #4
	mov r1, r8
	strh r1, [r0]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _0805EBF8
	ldr r0, _0805EBE8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805EBEC @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r2, [r0, #0x44]
	ldr r0, _0805EBF0 @ =0xFFF80000
	adds r2, r2, r0
	adds r0, r6, #0
	bl sub_0802D344
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	ldr r1, _0805EBF4 @ =0x0000FFFF
	ands r0, r1
	str r0, [r6, #0x18]
	ldr r0, [sp, #0x20]
	str r0, [r6, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r6, #0x20]
	b _0805EBFC
	.align 2, 0
_0805EBD0: .4byte sub_0805EC20
_0805EBD4: .4byte 0x081C15F4
_0805EBD8: .4byte 0x0820ED60
_0805EBDC: .4byte sub_0803B9D0
_0805EBE0: .4byte sub_0805F0B0
_0805EBE4: .4byte 0x0C0CFAFA
_0805EBE8: .4byte gEwramData
_0805EBEC: .4byte 0x00013110
_0805EBF0: .4byte 0xFFF80000
_0805EBF4: .4byte 0x0000FFFF
_0805EBF8:
	movs r0, #0x63
	strb r0, [r6, #0xa]
_0805EBFC:
	mov r0, sb
	adds r0, #5
	adds r1, r6, #0
	adds r1, #0x36
	strb r0, [r1]
	mov r1, sl
	strh r1, [r6, #0x32]
	movs r0, #0xc8
	strb r0, [r6, #0xd]
_0805EC0E:
	adds r0, r6, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805EC20
sub_0805EC20: @ 0x0805EC20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bhi _0805ECA2
	ldr r0, _0805ED2C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805ED30 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r2, [r0, #0x44]
	ldr r0, _0805ED34 @ =0xFFF00000
	adds r2, r2, r0
	ldr r3, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	str r0, [sp]
	adds r0, r5, #0
	bl sub_0802D408
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	adds r0, #0x2a
	str r0, [r5, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #7
	cmp r0, r2
	ble _0805EC5C
	str r2, [r5, #0x1c]
_0805EC5C:
	ldr r0, [r5, #0x20]
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r5, #0x20]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _0805EC70
	str r1, [r5, #0x20]
_0805EC70:
	ldr r0, [r5, #0x18]
	adds r0, r0, r2
	bl sub_080009E4
	ldr r1, [r5, #0x20]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x18]
	bl sub_080009E4
	ldr r1, [r5, #0x20]
	asrs r0, r0, #8
	asrs r1, r1, #8
	adds r2, r0, #0
	muls r2, r1, r2
	str r2, [r5, #0x4c]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r2
	str r0, [r5, #0x44]
_0805ECA2:
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
	ldrb r1, [r5, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0805ED18
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r7, r0, #0x1c
	movs r4, #0x80
	lsls r4, r4, #0xe
	adds r0, r4, #0
	bl sub_0802D5EC
	ldr r1, [r5, #0x40]
	adds r6, r1, r0
	adds r0, r4, #0
	bl sub_0802D5EC
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	ldr r2, [r5, #0x48]
	cmp r2, #0
	bge _0805ECDE
	adds r2, #0x3f
_0805ECDE:
	asrs r2, r2, #6
	ldr r3, [r5, #0x4c]
	cmp r3, #0
	bge _0805ECE8
	adds r3, #0x3f
_0805ECE8:
	asrs r3, r3, #6
	movs r0, #8
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	bl sub_08045B44
	adds r1, r0, #0
	cmp r1, #0
	beq _0805ED18
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0805ED06
	adds r0, #3
_0805ED06:
	asrs r0, r0, #2
	str r0, [r1, #0x48]
	ldr r0, [r5, #0x4c]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0805ED14
	adds r0, #3
_0805ED14:
	asrs r0, r0, #2
	str r0, [r1, #0x4c]
_0805ED18:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _0805ED38
	cmp r0, #1
	beq _0805ED54
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	b _0805ED6C
	.align 2, 0
_0805ED2C: .4byte gEwramData
_0805ED30: .4byte 0x00013110
_0805ED34: .4byte 0xFFF00000
_0805ED38:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805ED6C
	movs r0, #1
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _0805ED6C
_0805ED54:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805ED6C
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0805ED6C:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _0805ED78
	adds r0, r5, #0
	bl sub_0803F17C
_0805ED78:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0805ED80
sub_0805ED80: @ 0x0805ED80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r7, [sp, #0x20]
	ldr r2, _0805EE6C @ =sub_0805EE88
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r6, r0, #0
	cmp r6, #0
	beq _0805EE5A
	str r7, [r6, #0x24]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0
	mov sl, r0
	movs r0, #0x13
	strb r0, [r1]
	ldr r0, _0805EE70 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0805EE74 @ =0x0820ED60
	adds r0, r6, #0
	movs r3, #6
	bl sub_0803B924
	adds r0, r6, #0
	movs r1, #0x16
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	movs r0, #1
	strb r0, [r6, #0xc]
	ldr r0, _0805EE78 @ =sub_0803B9D0
	str r0, [r6, #4]
	ldr r2, _0805EE7C @ =sub_0805F0F0
	adds r0, r6, #0
	movs r1, #0xb
	movs r3, #0
	bl sub_0804277C
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0805EE80 @ =0x0C0CFAFA
	adds r0, r6, #0
	bl sub_08042884
	adds r0, r6, #0
	adds r0, #0x42
	strh r4, [r0]
	adds r0, #4
	strh r5, [r0]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r4, [r7, #0x40]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	lsls r1, r1, #0xc
	movs r0, #0x80
	lsls r0, r0, #0xc
	adds r1, r1, r0
	ldr r2, [r7, #0x44]
	subs r2, r2, r1
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0802D344
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	ldr r1, _0805EE84 @ =0x0000FFFF
	ands r0, r1
	str r0, [r6, #0x18]
	mov r0, sl
	str r0, [r6, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r6, #0x20]
	mov r0, r8
	adds r0, #5
	adds r1, r6, #0
	adds r1, #0x36
	strb r0, [r1]
	mov r1, sb
	strh r1, [r6, #0x32]
	movs r0, #0xc8
	strb r0, [r6, #0xd]
_0805EE5A:
	adds r0, r6, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805EE6C: .4byte sub_0805EE88
_0805EE70: .4byte 0x081C15F4
_0805EE74: .4byte 0x0820ED60
_0805EE78: .4byte sub_0803B9D0
_0805EE7C: .4byte sub_0805F0F0
_0805EE80: .4byte 0x0C0CFAFA
_0805EE84: .4byte 0x0000FFFF

	thumb_func_start sub_0805EE88
sub_0805EE88: @ 0x0805EE88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r4, [r5, #0x24]
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bhi _0805EF02
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	ldr r0, _0805EF3C @ =0xFFF00000
	adds r2, r2, r0
	ldr r3, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	str r0, [sp]
	adds r0, r5, #0
	bl sub_0802D408
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	adds r0, #0x2a
	str r0, [r5, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #7
	cmp r0, r2
	ble _0805EEBC
	str r2, [r5, #0x1c]
_0805EEBC:
	ldr r0, [r5, #0x20]
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r5, #0x20]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _0805EED0
	str r1, [r5, #0x20]
_0805EED0:
	ldr r0, [r5, #0x18]
	adds r0, r0, r2
	bl sub_080009E4
	ldr r1, [r5, #0x20]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x18]
	bl sub_080009E4
	ldr r1, [r5, #0x20]
	asrs r0, r0, #8
	asrs r1, r1, #8
	adds r2, r0, #0
	muls r2, r1, r2
	str r2, [r5, #0x4c]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r2
	str r0, [r5, #0x44]
_0805EF02:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r1, [r0]
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, #4
	ldrh r2, [r0]
	subs r2, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x20
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x20
	bl sub_08068AD4
	cmp r0, #0
	beq _0805EF40
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	movs r0, #0xbc
	bl PlaySong
	b _0805F000
	.align 2, 0
_0805EF3C: .4byte 0xFFF00000
_0805EF40:
	ldrb r1, [r5, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805EFAE
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r7, r0, #0x1c
	movs r4, #0x80
	lsls r4, r4, #0xe
	adds r0, r4, #0
	bl sub_0802D5EC
	ldr r1, [r5, #0x40]
	adds r6, r1, r0
	adds r0, r4, #0
	bl sub_0802D5EC
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	ldr r2, [r5, #0x48]
	cmp r2, #0
	bge _0805EF74
	adds r2, #0x3f
_0805EF74:
	asrs r2, r2, #6
	ldr r3, [r5, #0x4c]
	cmp r3, #0
	bge _0805EF7E
	adds r3, #0x3f
_0805EF7E:
	asrs r3, r3, #6
	movs r0, #8
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	bl sub_08045B44
	adds r1, r0, #0
	cmp r1, #0
	beq _0805EFAE
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0805EF9C
	adds r0, #3
_0805EF9C:
	asrs r0, r0, #2
	str r0, [r1, #0x48]
	ldr r0, [r5, #0x4c]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0805EFAA
	adds r0, #3
_0805EFAA:
	asrs r0, r0, #2
	str r0, [r1, #0x4c]
_0805EFAE:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _0805EFC0
	cmp r0, #1
	beq _0805EFDC
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	b _0805EFF4
_0805EFC0:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805EFF4
	movs r0, #1
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _0805EFF4
_0805EFDC:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805EFF4
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0805EFF4:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _0805F000
	adds r0, r5, #0
	bl sub_0803F17C
_0805F000:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0805F008
sub_0805F008: @ 0x0805F008
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x14]
	adds r0, r1, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #5
	beq _0805F024
	adds r0, r1, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0805F024:
	ldr r0, [r4, #0x18]
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r2, [r4, #0x1c]
	adds r2, #0x59
	ldrb r1, [r2]
	movs r3, #8
	orrs r1, r3
	strb r1, [r2]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805F044
sub_0805F044: @ 0x0805F044
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0x80
	rsbs r1, r1, #0
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r3, #0xf8
	lsls r3, r3, #1
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0805F080
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805F080
	adds r0, r4, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xaa
	ble _0805F08E
_0805F080:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0805F0A6
_0805F08E:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r1, r1, r0
	str r1, [r4, #0x4c]
_0805F0A6:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805F0B0
sub_0805F0B0: @ 0x0805F0B0
	push {lr}
	sub sp, #4
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	ldr r0, _0805F0E4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805F0E8 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0805F0EC @ =0xFFF00000
	str r1, [sp]
	movs r1, #0xc
	movs r2, #6
	movs r3, #0
	bl sub_08045BC8
	movs r0, #0xbc
	bl PlaySong
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0805F0E4: .4byte gEwramData
_0805F0E8: .4byte 0x00013110
_0805F0EC: .4byte 0xFFF00000

	thumb_func_start sub_0805F0F0
sub_0805F0F0: @ 0x0805F0F0
	push {lr}
	sub sp, #4
	ldr r3, [r0, #0x24]
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	ldr r0, _0805F11C @ =0xFFF00000
	str r0, [sp]
	adds r0, r3, #0
	movs r1, #0xc
	movs r2, #6
	movs r3, #0
	bl sub_08045BC8
	movs r0, #0xbc
	bl PlaySong
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0805F11C: .4byte 0xFFF00000

	thumb_func_start sub_0805f120
sub_0805f120: @ 0x0805F120
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x21
	bl sub_08012078
	cmp r0, #0
	bne _0805F142
	ldr r5, _0805F150 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _0805F154 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x80
	ble _0805F158
_0805F142:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0805F1BC
	.align 2, 0
_0805F150: .4byte gEwramData
_0805F154: .4byte 0x00013110
_0805F158:
	adds r0, r4, #0
	movs r1, #5
	bl sub_0805B754
	cmp r0, #0
	bne _0805F16C
	adds r0, r4, #0
	bl EntityDelete
	b _0805F1BC
_0805F16C:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r3, [r5]
	ldr r0, _0805F1C4 @ =0x0000A094
	adds r2, r3, r0
	ldrh r1, [r2, #6]
	movs r0, #0xa0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r2, #0xa]
	movs r0, #0xc0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #8
	str r0, [r4, #0x48]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0805F1C8 @ =0x0000042C
	adds r3, r3, r1
	ldr r0, [r3]
	movs r1, #1
	orrs r0, r1
	str r0, [r3]
_0805F1BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F1C4: .4byte 0x0000A094
_0805F1C8: .4byte 0x0000042C

	thumb_func_start sub_0805F1CC
sub_0805F1CC: @ 0x0805F1CC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	ldrb r0, [r4, #0x18]
	cmp r0, #5
	bhi _0805F25E
	lsls r0, r0, #2
	ldr r1, _0805F1E4 @ =_0805F1E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805F1E4: .4byte _0805F1E8
_0805F1E8: @ jump table
	.4byte _0805F200 @ case 0
	.4byte _0805F210 @ case 1
	.4byte _0805F25E @ case 2
	.4byte _0805F226 @ case 3
	.4byte _0805F238 @ case 4
	.4byte _0805F25C @ case 5
_0805F200:
	ldr r0, _0805F20C @ =0x00001010
	bl PlaySong
	movs r0, #0xa0
	strb r0, [r4, #0x19]
	b _0805F250
	.align 2, 0
_0805F20C: .4byte 0x00001010
_0805F210:
	ldrb r0, [r4, #0x19]
	subs r0, #1
	strb r0, [r4, #0x19]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805F25E
	movs r0, #0x16
	bl sub_08013CF0
	b _0805F250
_0805F226:
	ldr r0, _0805F234 @ =0x00001010
	bl PlaySong
	movs r0, #0xa0
	strb r0, [r4, #0x19]
	b _0805F250
	.align 2, 0
_0805F234: .4byte 0x00001010
_0805F238:
	ldrb r0, [r4, #0x19]
	subs r0, #1
	strb r0, [r4, #0x19]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805F25E
	ldr r0, _0805F258 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x60
	bl sub_08013960
_0805F250:
	ldrb r0, [r4, #0x18]
	adds r0, #1
	strb r0, [r4, #0x18]
	b _0805F25E
	.align 2, 0
_0805F258: .4byte gEwramData
_0805F25C:
	movs r5, #1
_0805F25E:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805f268
sub_0805f268: @ 0x0805F268
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r7, _0805F28C @ =gEwramData
	ldr r6, [r7]
	adds r0, r6, #0
	adds r0, #0x60
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	beq _0805F2E0
	cmp r5, #1
	bgt _0805F290
	cmp r5, #0
	beq _0805F298
	b _0805F49E
	.align 2, 0
_0805F28C: .4byte gEwramData
_0805F290:
	cmp r5, #0x80
	bne _0805F296
	b _0805F48C
_0805F296:
	b _0805F49E
_0805F298:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0805F2BE
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	movs r0, #0xf
	bl sub_08067934
	ldr r0, _0805F2DC @ =0x00000417
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x20
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_0805F2BE:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805F2CE
	b _0805F49E
_0805F2CE:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	mov r1, r8
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _0805F49E
	.align 2, 0
_0805F2DC: .4byte 0x00000417
_0805F2E0:
	bl sub_08067A04
	cmp r0, #0
	beq _0805F2EC
	movs r0, #0x80
	strb r0, [r4, #0xa]
_0805F2EC:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _0805F388
	cmp r0, #1
	bgt _0805F2FC
	cmp r0, #0
	beq _0805F302
	b _0805F49E
_0805F2FC:
	cmp r0, #2
	beq _0805F3DC
	b _0805F49E
_0805F302:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805F322
	cmp r0, #1
	bgt _0805F312
	cmp r0, #0
	beq _0805F31C
	b _0805F49E
_0805F312:
	cmp r0, #2
	beq _0805F334
	cmp r0, #3
	beq _0805F36E
	b _0805F49E
_0805F31C:
	strb r5, [r4, #0xc]
	movs r0, #0x30
	strb r0, [r4, #0xd]
_0805F322:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805F332
	b _0805F49E
_0805F332:
	b _0805F438
_0805F334:
	ldr r0, [r7]
	ldr r1, _0805F364 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x56
	ble _0805F368
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r7]
	ldr r1, _0805F364 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r1, #0x57
	strh r1, [r0]
	b _0805F438
	.align 2, 0
_0805F364: .4byte 0x00013110
_0805F368:
	movs r0, #0x10
	mov r8, r0
	b _0805F49E
_0805F36E:
	movs r0, #0x16
	bl sub_08013CF0
	ldr r1, _0805F384 @ =0x00000417
	adds r0, r6, r1
	mov r1, r8
	strb r1, [r0]
	strb r5, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _0805F49E
	.align 2, 0
_0805F384: .4byte 0x00000417
_0805F388:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0805F394
	cmp r0, #1
	beq _0805F39C
	b _0805F49E
_0805F394:
	mov r0, r8
	strb r0, [r4, #0x14]
	movs r0, #0xff
	b _0805F436
_0805F39C:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r5, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805F49E
	ldr r0, _0805F3D8 @ =0x0852682C
	ldrb r1, [r4, #0x14]
	adds r2, r1, #1
	strb r2, [r4, #0x14]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r1, r1, r0
	ldrb r1, [r1]
	cmp r1, #0xff
	bne _0805F3C6
	movs r1, #0
	mov r0, r8
	strb r0, [r4, #0x14]
_0805F3C6:
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xd]
	orrs r0, r5
	strb r0, [r4, #0xd]
	b _0805F49E
	.align 2, 0
_0805F3D8: .4byte 0x0852682C
_0805F3DC:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805F428
	cmp r0, #1
	bgt _0805F3EC
	cmp r0, #0
	beq _0805F3F2
	b _0805F49E
_0805F3EC:
	cmp r0, #2
	beq _0805F44E
	b _0805F49E
_0805F3F2:
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	ldr r1, _0805F440 @ =0x00000417
	adds r0, r6, r1
	strb r5, [r0]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805F422
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0805F422:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0805F428:
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xff
	ble _0805F444
	movs r0, #0x10
_0805F436:
	strb r0, [r4, #0xd]
_0805F438:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _0805F49E
	.align 2, 0
_0805F440: .4byte 0x00000417
_0805F444:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	b _0805F49E
_0805F44E:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805F49E
	ldr r1, _0805F484 @ =0x00000417
	adds r0, r6, r1
	mov r1, r8
	strb r1, [r0]
	ldr r0, _0805F488 @ =0x00000414
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0x18]
	b _0805F49E
	.align 2, 0
_0805F484: .4byte 0x00000417
_0805F488: .4byte 0x00000414
_0805F48C:
	bl sub_08013960
	movs r0, #0x21
	bl sub_08012048
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
_0805F49E:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x80
	beq _0805F4AA
	adds r0, r4, #0
	bl sub_0803F17C
_0805F4AA:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805f4b8
sub_0805f4b8: @ 0x0805F4B8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x22
	bl sub_08012078
	cmp r0, #0
	beq _0805F4D0
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
	b _0805F52C
_0805F4D0:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805B754
	cmp r0, #0
	bne _0805F4E4
	adds r0, r4, #0
	bl EntityDelete
	b _0805F52C
_0805F4E4:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _0805F534 @ =gEwramData
	ldr r3, [r0]
	ldr r0, _0805F538 @ =0x0000A094
	adds r2, r3, r0
	ldrh r0, [r2, #6]
	movs r1, #0xa0
	subs r0, r1, r0
	movs r5, #0x42
	strh r0, [r5, r4]
	ldrh r0, [r2, #0xa]
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0805F53C @ =0x0000042C
	adds r3, r3, r0
	ldr r0, [r3]
	movs r1, #1
	orrs r0, r1
	str r0, [r3]
_0805F52C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F534: .4byte gEwramData
_0805F538: .4byte 0x0000A094
_0805F53C: .4byte 0x0000042C

	thumb_func_start sub_0805f540
sub_0805f540: @ 0x0805F540
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #0
	mov sb, r0
	ldr r1, _0805F568 @ =gEwramData
	mov r8, r1
	ldr r7, [r1]
	adds r0, r7, #0
	adds r0, #0x60
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	beq _0805F5BC
	cmp r5, #1
	bgt _0805F56C
	cmp r5, #0
	beq _0805F574
	b _0805F712
	.align 2, 0
_0805F568: .4byte gEwramData
_0805F56C:
	cmp r5, #0x80
	bne _0805F572
	b _0805F700
_0805F572:
	b _0805F712
_0805F574:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0805F59A
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	movs r0, #0x10
	bl sub_08067934
	ldr r2, _0805F5B8 @ =0x00000417
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x20
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_0805F59A:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805F5AA
	b _0805F712
_0805F5AA:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	mov r0, sb
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
	b _0805F712
	.align 2, 0
_0805F5B8: .4byte 0x00000417
_0805F5BC:
	bl sub_08067A04
	cmp r0, #0
	beq _0805F5C8
	movs r0, #0x80
	strb r0, [r4, #0xa]
_0805F5C8:
	ldrb r6, [r4, #0xb]
	cmp r6, #0
	beq _0805F5D4
	cmp r6, #1
	beq _0805F644
	b _0805F712
_0805F5D4:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805F5F4
	cmp r0, #1
	bgt _0805F5E4
	cmp r0, #0
	beq _0805F5EE
	b _0805F712
_0805F5E4:
	cmp r0, #2
	beq _0805F606
	cmp r0, #3
	beq _0805F62E
	b _0805F712
_0805F5EE:
	strb r5, [r4, #0xc]
	movs r0, #0x30
	strb r0, [r4, #0xd]
_0805F5F4:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805F604
	b _0805F712
_0805F604:
	b _0805F6EE
_0805F606:
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _0805F624 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0x4f
	ble _0805F628
	movs r0, #0x50
	strh r0, [r1]
	b _0805F6EE
	.align 2, 0
_0805F624: .4byte 0x00013110
_0805F628:
	movs r0, #0x10
	mov sb, r0
	b _0805F712
_0805F62E:
	movs r0, #0x16
	bl sub_08013CF0
	ldr r1, _0805F640 @ =0x00000417
	adds r0, r7, r1
	mov r2, sb
	strb r2, [r0]
	b _0805F712
	.align 2, 0
_0805F640: .4byte 0x00000417
_0805F644:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805F6B6
	cmp r0, #1
	bgt _0805F654
	cmp r0, #0
	beq _0805F65A
	b _0805F712
_0805F654:
	cmp r0, #2
	beq _0805F6D4
	b _0805F712
_0805F65A:
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	ldr r1, _0805F6CC @ =0x00000417
	adds r0, r7, r1
	movs r2, #1
	strb r6, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x48]
	mov r1, r8
	ldr r0, [r1]
	ldr r1, _0805F6D0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x58
	ands r1, r2
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805F6B0
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0805F6B0:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0805F6B6:
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0xff
	bgt _0805F6EE
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	b _0805F712
	.align 2, 0
_0805F6CC: .4byte 0x00000417
_0805F6D0: .4byte 0x00013110
_0805F6D4:
	ldr r1, _0805F6F8 @ =0x00000417
	adds r0, r7, r1
	mov r2, sb
	strb r2, [r0]
	ldr r0, _0805F6FC @ =0x00000414
	adds r2, r7, r0
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
_0805F6EE:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _0805F712
	.align 2, 0
_0805F6F8: .4byte 0x00000417
_0805F6FC: .4byte 0x00000414
_0805F700:
	bl sub_08013960
	movs r0, #0x22
	bl sub_08012048
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
_0805F712:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x80
	beq _0805F71E
	adds r0, r4, #0
	bl sub_0803F17C
_0805F71E:
	mov r0, sb
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805f72c
sub_0805f72c: @ 0x0805F72C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x23
	bl sub_08012078
	cmp r0, #0
	beq _0805F748
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0805F7B2
_0805F748:
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805B754
	cmp r0, #0
	bne _0805F75C
	adds r0, r4, #0
	bl EntityDelete
	b _0805F7B2
_0805F75C:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _0805F7B8 @ =gEwramData
	ldr r3, [r0]
	ldr r0, _0805F7BC @ =0x0000A094
	adds r2, r3, r0
	ldrh r1, [r2, #6]
	movs r0, #0x50
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r2, #0xa]
	movs r0, #0xc0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0805F7C0 @ =0x0000042C
	adds r2, r3, r0
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0805F7C4 @ =0x00007864
	adds r3, r3, r0
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
_0805F7B2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805F7B8: .4byte gEwramData
_0805F7BC: .4byte 0x0000A094
_0805F7C0: .4byte 0x0000042C
_0805F7C4: .4byte 0x00007864

	thumb_func_start sub_0805f7c8
sub_0805f7c8: @ 0x0805F7C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r6, _0805F7F0 @ =gEwramData
	ldr r4, [r6]
	adds r7, r4, #0
	adds r7, #0x60
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _0805F82C
	cmp r0, #1
	bgt _0805F7F4
	cmp r0, #0
	beq _0805F7FC
	b _0805FA2E
	.align 2, 0
_0805F7F0: .4byte gEwramData
_0805F7F4:
	cmp r0, #0x80
	bne _0805F7FA
	b _0805FA10
_0805F7FA:
	b _0805FA2E
_0805F7FC:
	mov r1, r8
	str r1, [sp, #4]
	ldr r1, _0805F848 @ =0x040000D4
	add r2, sp, #4
	str r2, [r1]
	ldr r0, _0805F84C @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _0805F850 @ =0x85000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	movs r0, #0x11
	bl sub_08067934
	ldr r3, _0805F854 @ =0x00000417
	adds r1, r4, r3
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_0805F82C:
	bl sub_08067A04
	cmp r0, #0
	beq _0805F838
	movs r0, #0x80
	strb r0, [r5, #0xa]
_0805F838:
	ldrb r4, [r5, #0xb]
	cmp r4, #0
	beq _0805F858
	cmp r4, #1
	bne _0805F844
	b _0805F944
_0805F844:
	b _0805FA2E
	.align 2, 0
_0805F848: .4byte 0x040000D4
_0805F84C: .4byte 0x06004000
_0805F850: .4byte 0x85000400
_0805F854: .4byte 0x00000417
_0805F858:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _0805F886
	cmp r0, #1
	bgt _0805F868
	cmp r0, #0
	beq _0805F86E
	b _0805FA2E
_0805F868:
	cmp r0, #2
	beq _0805F88C
	b _0805FA2E
_0805F86E:
	ldr r1, _0805F8A8 @ =0x000003B7
	adds r0, r7, r1
	movs r1, #1
	strb r1, [r0]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	ldr r0, _0805F8AC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0805F8B0 @ =0x00000427
	adds r0, r0, r2
	strb r1, [r0]
_0805F886:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_0805F88C:
	ldr r0, _0805F8AC @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0805F8B4 @ =0x0000A094
	adds r1, r0, r3
	ldr r0, [r1, #4]
	cmp r0, #0
	ble _0805F8BC
	ldr r1, _0805F8B8 @ =0xFFFE8000
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	b _0805F8C0
	.align 2, 0
_0805F8A8: .4byte 0x000003B7
_0805F8AC: .4byte gEwramData
_0805F8B0: .4byte 0x00000427
_0805F8B4: .4byte 0x0000A094
_0805F8B8: .4byte 0xFFFE8000
_0805F8BC:
	movs r0, #0
	str r0, [r1, #4]
_0805F8C0:
	ldr r3, _0805F8EC @ =gEwramData
	ldr r1, [r3]
	ldr r2, _0805F8F0 @ =0x00013110
	adds r0, r1, r2
	ldr r0, [r0]
	adds r6, r0, #0
	adds r6, #0x42
	movs r0, #0
	ldrsh r2, [r6, r0]
	ldr r0, _0805F8F4 @ =0x0000A094
	adds r4, r1, r0
	movs r0, #6
	ldrsh r1, [r4, r0]
	movs r0, #0xae
	subs r0, r0, r1
	cmp r2, r0
	bgt _0805F8F8
	ldrh r1, [r4, #6]
	movs r0, #0xae
	subs r0, r0, r1
	strh r0, [r6]
	b _0805F900
	.align 2, 0
_0805F8EC: .4byte gEwramData
_0805F8F0: .4byte 0x00013110
_0805F8F4: .4byte 0x0000A094
_0805F8F8:
	movs r0, #0x20
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_0805F900:
	ldr r0, [r3]
	ldr r2, _0805F938 @ =0x0000A094
	adds r1, r0, r2
	ldr r4, [r1, #4]
	cmp r4, #0
	beq _0805F90E
	b _0805FA2E
_0805F90E:
	ldr r3, _0805F93C @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, #0x42
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #6
	ldrsh r1, [r1, r0]
	movs r0, #0xae
	subs r0, r0, r1
	cmp r2, r0
	beq _0805F928
	b _0805FA2E
_0805F928:
	movs r0, #0x16
	bl sub_08013CF0
	ldr r1, _0805F940 @ =0x000003B7
	adds r0, r7, r1
	strb r4, [r0]
	b _0805F9FA
	.align 2, 0
_0805F938: .4byte 0x0000A094
_0805F93C: .4byte 0x00013110
_0805F940: .4byte 0x000003B7
_0805F944:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _0805F950
	cmp r0, #1
	beq _0805F988
	b _0805FA2E
_0805F950:
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	ldr r2, _0805FA04 @ =0x000003B7
	adds r0, r7, r2
	strb r4, [r0]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805F982
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0805F982:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_0805F988:
	adds r0, r5, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0805F9BE
	movs r1, #0x80
	lsls r1, r1, #9
	movs r2, #0x80
	lsls r2, r2, #0xe
	movs r3, #0x80
	lsls r3, r3, #0xa
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	bl sub_0806E140
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	bne _0805F9BE
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
_0805F9BE:
	movs r1, #0x80
	lsls r1, r1, #9
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	ldr r0, _0805FA08 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805FA0C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x78
	bne _0805FA2E
	ldr r3, _0805FA04 @ =0x000003B7
	adds r1, r7, r3
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xed
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
_0805F9FA:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	b _0805FA2E
	.align 2, 0
_0805FA04: .4byte 0x000003B7
_0805FA08: .4byte gEwramData
_0805FA0C: .4byte 0x00013110
_0805FA10:
	adds r0, r7, #0
	bl sub_08013960
	ldr r0, [r6]
	ldr r1, _0805FA48 @ =0x00000427
	adds r0, r0, r1
	mov r2, r8
	strb r2, [r0]
	movs r0, #0x23
	bl sub_08012048
	adds r0, r5, #0
	movs r1, #1
	bl sub_0805B66C
_0805FA2E:
	ldrb r0, [r5, #0xa]
	cmp r0, #0x80
	beq _0805FA3A
	adds r0, r5, #0
	bl sub_0803F17C
_0805FA3A:
	mov r0, r8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805FA48: .4byte 0x00000427

	thumb_func_start sub_0805fa4c
sub_0805fa4c: @ 0x0805FA4C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0x24
	bl sub_08012078
	adds r3, r0, #0
	cmp r3, #0
	bne _0805FA72
	ldr r6, _0805FA80 @ =gEwramData
	ldr r2, [r6]
	ldr r7, _0805FA84 @ =0x00013110
	adds r0, r2, r7
	ldr r0, [r0]
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x1f
	bgt _0805FA88
_0805FA72:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0805FB2C
	.align 2, 0
_0805FA80: .4byte gEwramData
_0805FA84: .4byte 0x00013110
_0805FA88:
	ldr r0, _0805FAC0 @ =0x00007864
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	str r3, [sp]
	ldr r1, _0805FAC4 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, [r6]
	ldr r2, _0805FAC8 @ =0x0000786C
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _0805FACC @ =0x85000280
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r5, #0
	movs r1, #5
	bl sub_0805B754
	cmp r0, #0
	bne _0805FAD0
	adds r0, r5, #0
	bl EntityDelete
	b _0805FB2C
	.align 2, 0
_0805FAC0: .4byte 0x00007864
_0805FAC4: .4byte 0x040000D4
_0805FAC8: .4byte 0x0000786C
_0805FACC: .4byte 0x85000280
_0805FAD0:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r1, [r6]
	ldr r0, _0805FB34 @ =0x0000A094
	adds r1, r1, r0
	ldrh r2, [r1, #6]
	movs r0, #0xbe
	subs r0, r0, r2
	adds r2, r5, #0
	adds r2, #0x42
	strh r0, [r2]
	ldrh r1, [r1, #0xa]
	movs r0, #0xa0
	subs r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r1, #0x12
	ldrb r0, [r1]
	movs r4, #0x40
	orrs r0, r4
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0806AF98
	ldr r0, [r6]
	adds r0, r0, r7
	ldr r1, [r0]
	adds r1, #0x58
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	ldr r1, [r6]
	ldr r2, _0805FB38 @ =0x0000042C
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
_0805FB2C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FB34: .4byte 0x0000A094
_0805FB38: .4byte 0x0000042C

	thumb_func_start sub_0805fb3c
sub_0805fb3c: @ 0x0805FB3C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r7, #0
	ldr r1, _0805FB5C @ =gEwramData
	ldr r4, [r1]
	adds r6, r4, #0
	adds r6, #0x60
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _0805FB8E
	cmp r0, #1
	bgt _0805FB60
	cmp r0, #0
	beq _0805FB68
	b _0805FD48
	.align 2, 0
_0805FB5C: .4byte gEwramData
_0805FB60:
	cmp r0, #0x80
	bne _0805FB66
	b _0805FD2C
_0805FB66:
	b _0805FD48
_0805FB68:
	ldr r1, _0805FBAC @ =0x00013110
	adds r0, r4, r1
	ldr r0, [r0]
	str r7, [r0, #0x4c]
	str r7, [r0, #0x48]
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	movs r0, #0x12
	bl sub_08067934
	ldr r2, _0805FBB0 @ =0x00000417
	adds r1, r4, r2
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_0805FB8E:
	bl sub_08067A04
	cmp r0, #0
	beq _0805FB9A
	movs r0, #0x80
	strb r0, [r5, #0xa]
_0805FB9A:
	ldrb r1, [r5, #0xb]
	cmp r1, #1
	beq _0805FC34
	cmp r1, #1
	bgt _0805FBB4
	cmp r1, #0
	beq _0805FBBC
	b _0805FD48
	.align 2, 0
_0805FBAC: .4byte 0x00013110
_0805FBB0: .4byte 0x00000417
_0805FBB4:
	cmp r1, #2
	bne _0805FBBA
	b _0805FCD0
_0805FBBA:
	b _0805FD48
_0805FBBC:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _0805FBE0
	cmp r0, #1
	bgt _0805FBCC
	cmp r0, #0
	beq _0805FBD2
	b _0805FD48
_0805FBCC:
	cmp r0, #2
	beq _0805FBE6
	b _0805FD48
_0805FBD2:
	ldr r0, _0805FC0C @ =0x000003B7
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_0805FBE0:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_0805FBE6:
	ldr r2, _0805FC10 @ =gEwramData
	ldr r0, [r2]
	ldr r1, _0805FC14 @ =0x00000427
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r2]
	ldr r2, _0805FC18 @ =0x0000A094
	adds r0, r0, r2
	movs r1, #6
	ldrsh r0, [r0, r1]
	cmp r0, #0x94
	ble _0805FC20
	ldr r1, _0805FC1C @ =0xFFFF8000
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	b _0805FD48
	.align 2, 0
_0805FC0C: .4byte 0x000003B7
_0805FC10: .4byte gEwramData
_0805FC14: .4byte 0x00000427
_0805FC18: .4byte 0x0000A094
_0805FC1C: .4byte 0xFFFF8000
_0805FC20:
	movs r0, #0x16
	bl sub_08013CF0
	ldr r2, _0805FC30 @ =0x000003B7
	adds r1, r6, r2
	movs r0, #0
	strb r0, [r1]
	b _0805FD16
	.align 2, 0
_0805FC30: .4byte 0x000003B7
_0805FC34:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _0805FC40
	cmp r0, #1
	beq _0805FC80
	b _0805FD48
_0805FC40:
	ldr r2, _0805FCB8 @ =0x000003B7
	adds r0, r6, r2
	movs r4, #1
	strb r1, [r0]
	adds r3, r5, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	subs r0, r0, r1
	ands r0, r4
	lsls r0, r0, #6
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #8
	beq _0805FC7A
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0805FC7A:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_0805FC80:
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0805FCBC
	movs r1, #0x80
	lsls r1, r1, #9
	movs r2, #0x80
	lsls r2, r2, #0xe
	movs r3, #0x80
	lsls r3, r3, #0xa
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	bl sub_0806E140
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	bne _0805FD48
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	b _0805FD48
	.align 2, 0
_0805FCB8: .4byte 0x000003B7
_0805FCBC:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xc]
	ldr r2, _0805FCCC @ =0x000003B7
	adds r0, r6, r2
	strb r1, [r0]
	b _0805FD48
	.align 2, 0
_0805FCCC: .4byte 0x000003B7
_0805FCD0:
	ldr r0, _0805FD20 @ =0x000003B7
	adds r4, r6, r0
	movs r0, #1
	strb r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #8
	movs r2, #0
	bl sub_0800ED24
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	ldr r0, _0805FD24 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0805FD28 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x78
	bne _0805FD48
	movs r0, #0
	strb r0, [r4]
	movs r0, #0xed
	lsls r0, r0, #2
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
_0805FD16:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	b _0805FD48
	.align 2, 0
_0805FD20: .4byte 0x000003B7
_0805FD24: .4byte gEwramData
_0805FD28: .4byte 0x00013110
_0805FD2C:
	ldr r2, _0805FD60 @ =0x00000427
	adds r0, r4, r2
	strb r7, [r0]
	ldr r0, [r1]
	adds r0, #0x60
	bl sub_08013960
	movs r0, #0x24
	bl sub_08012048
	adds r0, r5, #0
	movs r1, #1
	bl sub_0805B66C
_0805FD48:
	ldrb r0, [r5, #0xa]
	cmp r0, #0x80
	beq _0805FD54
	adds r0, r5, #0
	bl sub_0803F17C
_0805FD54:
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805FD60: .4byte 0x00000427

	thumb_func_start sub_0805fd64
sub_0805fd64: @ 0x0805FD64
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x25
	bl sub_08012078
	cmp r0, #0
	beq _0805FD80
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0805FDDE
_0805FD80:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805B754
	cmp r0, #0
	bne _0805FD94
	adds r0, r4, #0
	bl EntityDelete
	b _0805FDDE
_0805FD94:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _0805FDE4 @ =gEwramData
	ldr r3, [r0]
	ldr r0, _0805FDE8 @ =0x0000A094
	adds r2, r3, r0
	ldrh r1, [r2, #6]
	movs r0, #0x50
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r2, #0xa]
	movs r0, #0xa0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0805FDEC @ =0x0000042C
	adds r3, r3, r0
	ldr r0, [r3]
	movs r1, #1
	orrs r0, r1
	str r0, [r3]
_0805FDDE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805FDE4: .4byte gEwramData
_0805FDE8: .4byte 0x0000A094
_0805FDEC: .4byte 0x0000042C

	thumb_func_start sub_0805fdf0
sub_0805fdf0: @ 0x0805FDF0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #0
	mov sb, r0
	ldr r1, _0805FE18 @ =gEwramData
	mov r8, r1
	ldr r6, [r1]
	adds r7, r6, #0
	adds r7, #0x60
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	beq _0805FE6C
	cmp r5, #1
	bgt _0805FE1C
	cmp r5, #0
	beq _0805FE24
	b _0805FFC8
	.align 2, 0
_0805FE18: .4byte gEwramData
_0805FE1C:
	cmp r5, #0x80
	bne _0805FE22
	b _0805FFB2
_0805FE22:
	b _0805FFC8
_0805FE24:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0805FE4A
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	movs r0, #0x13
	bl sub_08067934
	ldr r2, _0805FE68 @ =0x00000417
	adds r1, r6, r2
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x20
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_0805FE4A:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805FE5A
	b _0805FFC8
_0805FE5A:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	mov r0, sb
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
	b _0805FFC8
	.align 2, 0
_0805FE68: .4byte 0x00000417
_0805FE6C:
	bl sub_08067A04
	cmp r0, #0
	beq _0805FE78
	movs r0, #0x80
	strb r0, [r4, #0xa]
_0805FE78:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _0805FF0E
	cmp r0, #1
	bgt _0805FE88
	cmp r0, #0
	beq _0805FE8E
	b _0805FFC8
_0805FE88:
	cmp r0, #2
	beq _0805FF20
	b _0805FFC8
_0805FE8E:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _0805FEB4
	cmp r0, #1
	bgt _0805FE9E
	cmp r0, #0
	beq _0805FEA4
	b _0805FFC8
_0805FE9E:
	cmp r0, #2
	beq _0805FECC
	b _0805FFC8
_0805FEA4:
	ldr r1, _0805FEC8 @ =0x00000417
	adds r0, r6, r1
	strb r5, [r0]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x30
	strb r0, [r4, #0xd]
_0805FEB4:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0805FEC4
	b _0805FFC8
_0805FEC4:
	b _0805FF92
	.align 2, 0
_0805FEC8: .4byte 0x00000417
_0805FECC:
	mov r2, r8
	ldr r0, [r2]
	ldr r1, _0805FF00 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0xa0
	bgt _0805FF08
	movs r0, #0x16
	bl sub_08013CF0
	ldr r1, _0805FF04 @ =0x00000417
	adds r0, r6, r1
	mov r2, sb
	strb r2, [r0]
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _0805FF00 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x42
	movs r1, #0xa0
	strh r1, [r0]
	b _0805FF92
	.align 2, 0
_0805FF00: .4byte 0x00013110
_0805FF04: .4byte 0x00000417
_0805FF08:
	movs r0, #0x20
	mov sb, r0
	b _0805FFC8
_0805FF0E:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805FFC8
	ldr r0, _0805FF1C @ =0x000001B7
	bl PlaySong
	b _0805FF92
	.align 2, 0
_0805FF1C: .4byte 0x000001B7
_0805FF20:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0805FF2C
	cmp r0, #1
	beq _0805FF68
	b _0805FFC8
_0805FF2C:
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	ldr r1, _0805FF9C @ =0x00000417
	adds r0, r6, r1
	strb r5, [r0]
	ldr r0, _0805FFA0 @ =0xFFFF8000
	str r0, [r4, #0x48]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805FF62
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0805FF62:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_0805FF68:
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0805FFA8
	ldr r0, _0805FFA4 @ =0x000003B7
	adds r1, r7, r0
	movs r0, #0
	strb r0, [r1]
	movs r1, #0xed
	lsls r1, r1, #2
	adds r2, r7, r1
	ldrb r1, [r2]
	subs r0, #0x10
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
_0805FF92:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _0805FFC8
	.align 2, 0
_0805FF9C: .4byte 0x00000417
_0805FFA0: .4byte 0xFFFF8000
_0805FFA4: .4byte 0x000003B7
_0805FFA8:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	b _0805FFC8
_0805FFB2:
	adds r0, r7, #0
	bl sub_08013960
	movs r0, #0x25
	bl sub_08012048
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805B66C
	b _0805FFD0
_0805FFC8:
	adds r0, r4, #0
	bl sub_0803F17C
	mov r0, sb
_0805FFD0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805ffdc
sub_0805ffdc: @ 0x0805FFDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #0x26
	bl sub_08012078
	str r0, [sp, #8]
	cmp r0, #0
	bne _08060010
	ldr r0, _08060020 @ =gEwramData
	mov sl, r0
	ldr r0, [r0]
	ldr r1, _08060024 @ =0x00013110
	mov sb, r1
	add r0, sb
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x7f
	bgt _08060028
_08060010:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _080601B6
	.align 2, 0
_08060020: .4byte gEwramData
_08060024: .4byte 0x00013110
_08060028:
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r3, #0x40
	mov r8, r3
	mov r2, r8
	orrs r1, r2
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805B754
	cmp r0, #0
	bne _08060046
	b _08060158
_08060046:
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	mov r3, sl
	ldr r2, [r3]
	ldr r0, _08060160 @ =0x0000A094
	adds r3, r2, r0
	ldrh r1, [r3, #6]
	movs r0, #0x48
	subs r0, r0, r1
	adds r6, r4, #0
	adds r6, #0x42
	strh r0, [r6]
	ldrh r1, [r3, #0xa]
	movs r0, #0xa0
	subs r0, r0, r1
	adds r7, r4, #0
	adds r7, #0x46
	strh r0, [r7]
	adds r5, r4, #0
	adds r5, #0x58
	ldrb r0, [r5]
	mov r1, r8
	orrs r0, r1
	strb r0, [r5]
	add r2, sb
	ldr r0, [r2]
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	movs r2, #0x5c
	adds r2, r2, r4
	mov r8, r2
	strb r0, [r2]
	movs r0, #5
	bl sub_0805B5E8
	str r0, [r4, #0x14]
	cmp r0, #0
	beq _08060158
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, [r4, #0x14]
	bl sub_0803F17C
	ldr r1, [r4, #0x14]
	ldrh r0, [r6]
	adds r0, #0x13
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r4, #0x14]
	ldrh r1, [r7]
	adds r0, #0x46
	strh r1, [r0]
	ldr r1, [r4, #0x14]
	ldr r0, _08060164 @ =0xFFFE8000
	str r0, [r1, #0x48]
	ldr r2, [r4, #0x14]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	adds r2, #0x58
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r3, [r2]
	movs r6, #0x41
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r4, #0x14]
	mov r3, r8
	ldrb r0, [r3]
	adds r0, #1
	adds r1, #0x5c
	strb r0, [r1]
	movs r0, #1
	bl sub_0803E654
	adds r5, r0, #0
	cmp r5, #0
	blt _08060158
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	ldr r2, [r4, #0x14]
	adds r2, #0x58
	movs r1, #0x1f
	ands r5, r1
	ldrb r3, [r2]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r5
	strb r1, [r2]
	ldr r2, [r4, #0x14]
	adds r2, #0x59
	ldrb r1, [r2]
	movs r3, #0x10
	orrs r1, r3
	strb r1, [r2]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x20]
	ldr r3, [sp, #8]
	str r3, [sp]
	ldr r3, [r4, #0x14]
	adds r3, #0x58
	ldrb r3, [r3]
	lsls r3, r3, #0x1b
	lsrs r3, r3, #0x1b
	str r3, [sp, #4]
	movs r3, #0
	bl sub_0803E058
	movs r0, #1
	bl sub_0805B5E8
	str r0, [r4, #0x18]
	cmp r0, #0
	bne _08060168
	ldr r0, [r4, #0x14]
	bl EntityDelete
_08060158:
	adds r0, r4, #0
	bl EntityDelete
	b _080601B6
	.align 2, 0
_08060160: .4byte 0x0000A094
_08060164: .4byte 0xFFFE8000
_08060168:
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, [r4, #0x18]
	bl sub_0803F17C
	ldr r1, [r4, #0x18]
	mov r2, sl
	ldr r0, [r2]
	ldr r3, _080601C8 @ =0x0000A094
	adds r0, r0, r3
	ldrh r2, [r0, #6]
	movs r0, #0xff
	subs r0, r0, r2
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r4, #0x18]
	ldrh r1, [r7]
	adds r0, #0x46
	strh r1, [r0]
	ldr r1, [r4, #0x18]
	ldr r0, _080601CC @ =0xFFFFA000
	str r0, [r1, #0x48]
	ldr r1, [r4, #0x18]
	adds r1, #0x58
	ldrb r2, [r1]
	adds r0, r6, #0
	ands r0, r2
	strb r0, [r1]
	mov r0, sl
	ldr r1, [r0]
	ldr r2, _080601D0 @ =0x0000042C
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
_080601B6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080601C8: .4byte 0x0000A094
_080601CC: .4byte 0xFFFFA000
_080601D0: .4byte 0x0000042C

	thumb_func_start sub_080601D4
sub_080601D4: @ 0x080601D4
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0x58
	ldrb r0, [r4]
	movs r5, #0x40
	orrs r0, r5
	strb r0, [r4]
	ldr r0, _08060240 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08060244 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r3, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r1, #9
	movs r0, #0x12
	strb r0, [r1]
	ldr r1, [r3, #0x14]
	ldr r0, [r1]
	cmp r0, #0
	beq _08060214
	adds r0, r1, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08060214:
	ldr r1, [r3, #0x18]
	ldr r0, [r1]
	cmp r0, #0
	beq _08060226
	ldr r0, [r3, #0x40]
	movs r2, #0xc0
	lsls r2, r2, #0xf
	adds r0, r0, r2
	str r0, [r1, #0x40]
_08060226:
	ldr r0, [r3, #0x18]
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r1, [r4]
	orrs r1, r5
	strb r1, [r4]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08060240: .4byte gEwramData
_08060244: .4byte 0x00013110

	thumb_func_start sub_08060248
sub_08060248: @ 0x08060248
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r7, #0
	ldr r3, _08060268 @ =gEwramData
	ldr r4, [r3]
	adds r6, r4, #0
	adds r6, #0x60
	ldrb r1, [r5, #0xa]
	cmp r1, #1
	beq _0806029A
	cmp r1, #1
	bgt _0806026C
	cmp r1, #0
	beq _0806027A
	b _080606B6
	.align 2, 0
_08060268: .4byte gEwramData
_0806026C:
	cmp r1, #3
	bne _08060272
	b _08060670
_08060272:
	cmp r1, #0x80
	bne _08060278
	b _080606BE
_08060278:
	b _080606B6
_0806027A:
	movs r0, #0xdc
	lsls r0, r0, #1
	bl PlaySong
	movs r0, #0x28
	bl sub_08013EEC
	movs r0, #0x14
	bl sub_08067934
	ldr r1, _080602BC @ =0x00000417
	adds r0, r4, r1
	strb r7, [r0]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_0806029A:
	bl sub_08067A04
	cmp r0, #0
	beq _080602C0
	adds r0, r5, #0
	bl sub_080601D4
	movs r0, #0x80
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	movs r1, #0
	bl sub_0805B66C
	movs r0, #0x26
	bl sub_08012048
	b _080606BE
	.align 2, 0
_080602BC: .4byte 0x00000417
_080602C0:
	ldrb r0, [r5, #0xb]
	cmp r0, #7
	bls _080602C8
	b _08060626
_080602C8:
	lsls r0, r0, #2
	ldr r1, _080602D4 @ =_080602D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080602D4: .4byte _080602D8
_080602D8: @ jump table
	.4byte _08060626 @ case 0
	.4byte _080602F8 @ case 1
	.4byte _080603D4 @ case 2
	.4byte _080604DE @ case 3
	.4byte _08060554 @ case 4
	.4byte _080605BC @ case 5
	.4byte _080605FE @ case 6
	.4byte _08060626 @ case 7
_080602F8:
	ldrb r0, [r5, #0xc]
	cmp r0, #4
	bls _08060300
	b _08060626
_08060300:
	lsls r0, r0, #2
	ldr r1, _0806030C @ =_08060310
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806030C: .4byte _08060310
_08060310: @ jump table
	.4byte _08060324 @ case 0
	.4byte _08060332 @ case 1
	.4byte _08060376 @ case 2
	.4byte _080603B0 @ case 3
	.4byte _080603C8 @ case 4
_08060324:
	ldr r2, _080603AC @ =0x000003B7
	adds r1, r6, r2
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_08060332:
	ldr r1, [r5, #0x14]
	ldr r0, [r1]
	cmp r0, #0
	beq _08060364
	adds r0, r1, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r2, [r5, #0x14]
	adds r2, #0x58
	ldrb r3, [r2]
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	subs r1, r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_08060364:
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_08060376:
	ldr r2, [r5, #0x14]
	adds r0, r2, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08060388
	b _08060626
_08060388:
	adds r0, r2, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #7
	beq _0806039E
	adds r0, r2, #0
	movs r1, #7
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0806039E:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #8
	strb r0, [r5, #0xd]
	b _08060626
	.align 2, 0
_080603AC: .4byte 0x000003B7
_080603B0:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080603C0
	b _08060626
_080603C0:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	b _08060626
_080603C8:
	ldr r3, _080603D0 @ =0x000003B7
	adds r1, r6, r3
	movs r0, #0
	b _08060624
	.align 2, 0
_080603D0: .4byte 0x000003B7
_080603D4:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _08060416
	cmp r0, #1
	bgt _080603E4
	cmp r0, #0
	beq _080603EE
	b _08060496
_080603E4:
	cmp r0, #2
	beq _08060434
	cmp r0, #3
	beq _0806048A
	b _08060496
_080603EE:
	ldr r0, _08060430 @ =0x000003B7
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x10
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _08060416
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_08060416:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08060496
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0
	strb r0, [r5, #0xd]
	b _08060496
	.align 2, 0
_08060430: .4byte 0x000003B7
_08060434:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x24
	bne _08060444
	movs r0, #0xab
	lsls r0, r0, #1
	bl PlaySong
	b _0806044E
_08060444:
	cmp r0, #0
	bne _0806044E
	ldr r0, _08060478 @ =0x00000155
	bl PlaySong
_0806044E:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	ldr r0, _0806047C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08060480 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r5, #0x40]
	movs r3, #0x80
	lsls r3, r3, #0xe
	adds r1, r0, r3
	ldr r0, [r2, #0x40]
	cmp r0, r1
	bgt _08060484
	str r1, [r2, #0x40]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	b _08060496
	.align 2, 0
_08060478: .4byte 0x00000155
_0806047C: .4byte gEwramData
_08060480: .4byte 0x00013110
_08060484:
	movs r0, #0x20
	orrs r7, r0
	b _08060496
_0806048A:
	movs r0, #0x80
	orrs r7, r0
	ldr r0, _080604C8 @ =0x000003B7
	adds r1, r6, r0
	movs r0, #0
	strb r0, [r1]
_08060496:
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	beq _080604D0
	ldr r2, _080604CC @ =0xFFFFF800
	adds r1, r1, r2
	str r1, [r5, #0x1c]
	ldr r2, [r5, #0x20]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r2, r2, r3
	str r2, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #9
	movs r3, #0
	str r3, [sp]
	ldr r3, [r5, #0x14]
	adds r3, #0x58
	ldrb r3, [r3]
	lsls r3, r3, #0x1b
	lsrs r3, r3, #0x1b
	str r3, [sp, #4]
	movs r3, #0
	bl sub_0803E058
	b _08060626
	.align 2, 0
_080604C8: .4byte 0x000003B7
_080604CC: .4byte 0xFFFFF800
_080604D0:
	ldr r0, [r5, #0x14]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _08060626
_080604DE:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _08060506
	cmp r0, #1
	bgt _080604EE
	cmp r0, #0
	beq _080604F4
	b _080605F8
_080604EE:
	cmp r0, #2
	beq _0806053C
	b _080605F8
_080604F4:
	ldr r0, _08060538 @ =0x000003B7
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x30
	strb r0, [r5, #0xd]
_08060506:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080605F8
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x60
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #7
	beq _080605F8
	adds r0, r5, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _080605F8
	.align 2, 0
_08060538: .4byte 0x000003B7
_0806053C:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080605F8
	ldr r2, _08060550 @ =0x000003B7
	adds r1, r6, r2
	b _080605B0
	.align 2, 0
_08060550: .4byte 0x000003B7
_08060554:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _08060592
	cmp r0, #1
	bgt _08060564
	cmp r0, #0
	beq _0806056A
	b _080605F8
_08060564:
	cmp r0, #2
	beq _080605AC
	b _080605F8
_0806056A:
	ldr r3, _080605A8 @ =0x000003B7
	adds r1, r6, r3
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x30
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #8
	beq _08060592
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_08060592:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080605F8
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	b _080605F8
	.align 2, 0
_080605A8: .4byte 0x000003B7
_080605AC:
	ldr r0, _080605B8 @ =0x000003B7
	adds r1, r6, r0
_080605B0:
	movs r0, #0
	strb r0, [r1]
	b _080605F8
	.align 2, 0
_080605B8: .4byte 0x000003B7
_080605BC:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _080605C8
	cmp r0, #1
	beq _080605DA
	b _080605F8
_080605C8:
	ldr r2, _080605F0 @ =0x000003B7
	adds r1, r6, r2
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x30
	strb r0, [r5, #0xd]
_080605DA:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	bne _080605F4
	ldr r3, _080605F0 @ =0x000003B7
	adds r0, r6, r3
	strb r1, [r0]
	ldr r1, [r5, #0x18]
	movs r0, #1
	strb r0, [r1, #0xa]
	b _080605F8
	.align 2, 0
_080605F0: .4byte 0x000003B7
_080605F4:
	subs r0, #1
	strb r0, [r5, #0xd]
_080605F8:
	movs r0, #0x80
	orrs r7, r0
	b _08060626
_080605FE:
	ldr r4, _08060660 @ =gEwramData
	ldr r0, [r4]
	ldr r3, _08060664 @ =0x00013110
	adds r0, r0, r3
	ldr r1, [r0]
	adds r1, #0x58
	ldrb r2, [r1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
_08060624:
	strb r0, [r1]
_08060626:
	ldr r1, [r5, #0x18]
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _080606B6
	ldr r0, [r5, #0x40]
	movs r2, #0xc0
	lsls r2, r2, #0xf
	adds r0, r0, r2
	ldr r2, [r1, #0x40]
	cmp r2, r0
	bge _08060668
	str r0, [r1, #0x40]
	ldr r1, [r5, #0x18]
	adds r0, r1, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _08060656
	adds r0, r1, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08060656:
	ldr r1, [r5, #0x18]
	movs r0, #0
	strb r0, [r1, #0xa]
	b _080606B6
	.align 2, 0
_08060660: .4byte gEwramData
_08060664: .4byte 0x00013110
_08060668:
	ldr r0, [r1, #0x48]
	adds r0, r2, r0
	str r0, [r1, #0x40]
	b _080606B6
_08060670:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _08060694
	cmp r0, #1
	bgt _080606B6
	cmp r0, #0
	bne _080606B6
	ldr r1, _080606B0 @ =0x00013110
	adds r0, r4, r1
	ldr r1, [r0]
	adds r1, #0x58
	ldrb r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_08060694:
	ldr r0, [r3]
	ldr r2, _080606B0 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #2
	bgt _080606B4
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	b _080606B6
	.align 2, 0
_080606B0: .4byte 0x00013110
_080606B4:
	movs r7, #0x20
_080606B6:
	adds r0, r5, #0
	bl sub_0803F17C
	adds r0, r7, #0
_080606BE:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080606c8
sub_080606c8: @ 0x080606C8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x27
	bl sub_08012078
	adds r3, r0, #0
	cmp r3, #0
	beq _080606E6
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	b _080607D4
_080606E6:
	ldr r5, _08060704 @ =gEwramData
	ldr r2, [r5]
	ldr r1, _08060708 @ =0x0000037E
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806070C
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	b _080607D4
	.align 2, 0
_08060704: .4byte gEwramData
_08060708: .4byte 0x0000037E
_0806070C:
	ldr r6, _08060728 @ =0x00013110
	adds r0, r2, r6
	ldr r0, [r0]
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x80
	ble _0806072C
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	b _080607D4
	.align 2, 0
_08060728: .4byte 0x00013110
_0806072C:
	ldr r0, _08060764 @ =0x00007864
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	str r3, [sp]
	ldr r1, _08060768 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, [r5]
	ldr r2, _0806076C @ =0x0000786C
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _08060770 @ =0x85000280
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #0
	movs r1, #7
	bl sub_0805B754
	cmp r0, #0
	bne _08060774
	adds r0, r4, #0
	bl EntityDelete
	b _080607D6
	.align 2, 0
_08060764: .4byte 0x00007864
_08060768: .4byte 0x040000D4
_0806076C: .4byte 0x0000786C
_08060770: .4byte 0x85000280
_08060774:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r3, [r5]
	ldr r5, _080607E0 @ =0x0000A094
	adds r2, r3, r5
	ldrh r1, [r2, #6]
	movs r5, #0x8c
	lsls r5, r5, #1
	adds r0, r5, #0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r2, #0xa]
	movs r0, #0xc0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	movs r2, #0
	adds r5, r3, r6
	ldr r0, [r5]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _080607B8
	movs r2, #1
_080607B8:
	adds r3, r4, #0
	adds r3, #0x58
	lsls r4, r2, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r4
	strb r0, [r3]
	ldr r0, [r5]
	adds r0, #0x58
	ldrb r2, [r0]
	ands r1, r2
_080607D4:
	strb r1, [r0]
_080607D6:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080607E0: .4byte 0x0000A094

	thumb_func_start sub_080607e4
sub_080607e4: @ 0x080607E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0
	mov sb, r0
	ldr r1, _08060810 @ =gEwramData
	mov r8, r1
	ldr r6, [r1]
	adds r7, r6, #0
	adds r7, #0x60
	ldrb r4, [r5, #0xa]
	cmp r4, #1
	beq _080608B8
	cmp r4, #1
	bgt _08060814
	cmp r4, #0
	beq _08060820
	b _08060B76
	.align 2, 0
_08060810: .4byte gEwramData
_08060814:
	cmp r4, #2
	beq _080608DA
	cmp r4, #0x80
	bne _0806081E
	b _08060B56
_0806081E:
	b _08060B76
_08060820:
	ldr r2, _08060888 @ =0x00013110
	adds r0, r6, r2
	ldr r0, [r0]
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0x60
	ble _080608A0
	ldr r0, _0806088C @ =0x00007864
	adds r2, r6, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	mov r1, sb
	str r1, [sp]
	ldr r1, _08060890 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _08060894 @ =0x0000786C
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _08060898 @ =0x85000280
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0806089C @ =0x0000042C
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r2]
	bl sub_0800EB04
	bl sub_080235C8
	bl sub_0802DFF0
	bl sub_0803D270
	bl sub_0803CED4
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	mov r1, sb
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
	b _08060B76
	.align 2, 0
_08060888: .4byte 0x00013110
_0806088C: .4byte 0x00007864
_08060890: .4byte 0x040000D4
_08060894: .4byte 0x0000786C
_08060898: .4byte 0x85000280
_0806089C: .4byte 0x0000042C
_080608A0:
	ldr r2, _080608B0 @ =0x0000042C
	adds r0, r6, r2
	ldr r1, [r0]
	ldr r2, _080608B4 @ =0xFFFFFDFF
	ands r1, r2
	str r1, [r0]
	b _08060B76
	.align 2, 0
_080608B0: .4byte 0x0000042C
_080608B4: .4byte 0xFFFFFDFF
_080608B8:
	ldr r3, _080608F8 @ =0x0000042C
	adds r1, r6, r3
	ldr r0, [r1]
	orrs r0, r4
	str r0, [r1]
	movs r0, #0x15
	bl sub_08067934
	ldr r1, _080608FC @ =0x00000417
	adds r0, r6, r1
	strb r4, [r0]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	mov r2, sb
	strb r2, [r5, #0xc]
	strb r2, [r5, #0xb]
_080608DA:
	bl sub_08067A04
	cmp r0, #0
	beq _080608E6
	movs r0, #0x80
	strb r0, [r5, #0xa]
_080608E6:
	ldrb r2, [r5, #0xb]
	cmp r2, #1
	bne _080608EE
	b _080609FC
_080608EE:
	cmp r2, #1
	bgt _08060900
	cmp r2, #0
	beq _08060908
	b _08060B76
	.align 2, 0
_080608F8: .4byte 0x0000042C
_080608FC: .4byte 0x00000417
_08060900:
	cmp r2, #2
	bne _08060906
	b _08060A88
_08060906:
	b _08060B76
_08060908:
	ldrb r0, [r5, #0xc]
	cmp r0, #4
	bls _08060910
	b _08060B76
_08060910:
	lsls r0, r0, #2
	ldr r1, _0806091C @ =_08060920
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806091C: .4byte _08060920
_08060920: @ jump table
	.4byte _08060934 @ case 0
	.4byte _08060946 @ case 1
	.4byte _08060964 @ case 2
	.4byte _080609C2 @ case 3
	.4byte _08060B76 @ case 4
_08060934:
	ldr r3, _08060960 @ =0x000003B7
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x30
	strb r0, [r5, #0xd]
_08060946:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08060956
	b _08060B76
_08060956:
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	b _08060B34
	.align 2, 0
_08060960: .4byte 0x000003B7
_08060964:
	ldr r7, _080609A8 @ =gEwramData
	ldr r1, [r7]
	ldr r0, _080609AC @ =0x00013110
	adds r6, r1, r0
	ldr r0, [r6]
	adds r4, r0, #0
	adds r4, #0x42
	movs r3, #0
	ldrsh r2, [r4, r3]
	ldr r0, _080609B0 @ =0x0000A094
	adds r3, r1, r0
	movs r0, #6
	ldrsh r1, [r3, r0]
	movs r0, #0xe0
	subs r0, r0, r1
	cmp r2, r0
	ble _080609B8
	ldrh r1, [r3, #6]
	movs r0, #0xe0
	subs r0, r0, r1
	strh r0, [r4]
	ldr r1, [r6]
	adds r1, #0x58
	ldrb r2, [r1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r7]
	ldr r1, _080609B4 @ =0x00000427
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	b _08060B34
	.align 2, 0
_080609A8: .4byte gEwramData
_080609AC: .4byte 0x00013110
_080609B0: .4byte 0x0000A094
_080609B4: .4byte 0x00000427
_080609B8:
	movs r0, #0x10
	mov r2, sb
	orrs r2, r0
	mov sb, r2
	b _08060B76
_080609C2:
	ldr r0, _080609E0 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _080609E4 @ =0x0000A094
	adds r0, r0, r3
	movs r1, #6
	ldrsh r0, [r0, r1]
	cmp r0, #0x89
	bgt _080609E8
	movs r1, #0x80
	lsls r1, r1, #8
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	b _08060B76
	.align 2, 0
_080609E0: .4byte gEwramData
_080609E4: .4byte 0x0000A094
_080609E8:
	movs r0, #0x16
	bl sub_08013CF0
	ldr r2, _080609F8 @ =0x000003B7
	adds r1, r7, r2
	movs r0, #0
	strb r0, [r1]
	b _08060B34
	.align 2, 0
_080609F8: .4byte 0x000003B7
_080609FC:
	ldrb r1, [r5, #0xc]
	cmp r1, #1
	beq _08060A3C
	cmp r1, #1
	bgt _08060A0C
	cmp r1, #0
	beq _08060A16
	b _08060B76
_08060A0C:
	cmp r1, #2
	beq _08060A66
	cmp r1, #3
	beq _08060A78
	b _08060B76
_08060A16:
	ldr r3, _08060A38 @ =0x000003B7
	adds r0, r7, r3
	strb r2, [r0]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _08060A28
	b _08060B34
_08060A28:
	adds r0, r5, #0
	movs r1, #0xf
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	b _08060B34
	.align 2, 0
_08060A38: .4byte 0x000003B7
_08060A3C:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08060A4A
	b _08060B76
_08060A4A:
	movs r0, #0x40
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _08060B34
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	b _08060B34
_08060A66:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08060A76
	b _08060B76
_08060A76:
	b _08060B34
_08060A78:
	ldr r0, _08060A84 @ =0x000003B7
	adds r1, r7, r0
	movs r0, #0
	strb r0, [r1]
	b _08060B76
	.align 2, 0
_08060A84: .4byte 0x000003B7
_08060A88:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _08060A94
	cmp r0, #1
	beq _08060AD6
	b _08060B76
_08060A94:
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	ldr r2, _08060B3C @ =0x000003B7
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r5, #0x48]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _08060ACC
	adds r0, r5, #0
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
_08060ACC:
	movs r0, #0x10
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
_08060AD6:
	adds r0, r5, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _08060B40 @ =0x000001FF
	cmp r1, r0
	bgt _08060AEC
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_08060AEC:
	ldrb r0, [r5, #0xd]
	adds r4, r0, #0
	cmp r4, #0
	bne _08060B50
	ldr r1, _08060B44 @ =0xFFFF8000
	movs r0, #1
	movs r2, #0
	bl sub_0800ED24
	ldr r0, _08060B48 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08060B4C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x78
	bne _08060B76
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_0805B878
	ldr r3, _08060B3C @ =0x000003B7
	adds r0, r7, r3
	strb r4, [r0]
	movs r0, #0xed
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
_08060B34:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	b _08060B76
	.align 2, 0
_08060B3C: .4byte 0x000003B7
_08060B40: .4byte 0x000001FF
_08060B44: .4byte 0xFFFF8000
_08060B48: .4byte gEwramData
_08060B4C: .4byte 0x00013110
_08060B50:
	subs r0, #1
	strb r0, [r5, #0xd]
	b _08060B76
_08060B56:
	adds r0, r7, #0
	bl sub_08013960
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _08060B94 @ =0x00000427
	adds r0, r0, r2
	mov r3, sb
	strb r3, [r0]
	adds r0, r5, #0
	movs r1, #1
	bl sub_0805B66C
	movs r0, #0x27
	bl sub_08012048
_08060B76:
	ldrb r0, [r5, #0xa]
	cmp r0, #0x80
	beq _08060B82
	adds r0, r5, #0
	bl sub_0803F17C
_08060B82:
	mov r0, sb
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08060B94: .4byte 0x00000427
