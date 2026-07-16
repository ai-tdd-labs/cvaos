	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_0807A438
sub_0807A438: @ 0x0807A438
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r1, [r4, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0807A464
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	ldr r2, _0807A484 @ =0xFFE80000
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r2, r4, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_0807A464:
	ldrb r0, [r4, #0xd]
	bl sub_0806D518
	cmp r0, #0
	beq _0807A488
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x28
	orrs r1, r0
	strb r1, [r2]
	b _0807A4A4
	.align 2, 0
_0807A484: .4byte 0xFFE80000
_0807A488:
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
_0807A4A4:
	ldrb r1, [r4, #0xd]
	adds r0, r1, #0
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x50
	bhi _0807A4BC
	ldr r0, [r4, #0x44]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r4, #0x44]
_0807A4BC:
	subs r0, r1, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0807A4D2
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0807A4D2:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807A4DC
sub_0807A4DC: @ 0x0807A4DC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldrh r0, [r5, #4]
	bl sub_08021530
	adds r3, r0, #0
	adds r7, r4, #0
	adds r7, #0x70
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0806B7D8
	adds r1, r0, #0
	adds r2, r6, #0
	adds r2, #0x2d
	movs r0, #8
	strb r0, [r2]
	ldrh r0, [r6, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	movs r4, #0
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _0807A566
	movs r0, #0x82
	bl sub_08013E18
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x6e
	bl PlaySong
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r6, #0
	adds r1, #0x2c
	adds r3, r6, #0
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
	movs r0, #0x5a
	strb r0, [r6, #0xd]
	movs r0, #2
	b _0807A586
_0807A566:
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _0807A58A
	ldrb r0, [r7]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0807A58A
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #3
_0807A586:
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xb]
_0807A58A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807A590
sub_0807A590: @ 0x0807A590
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	adds r5, r0, #0
	ldr r6, [r5, #0x14]
	add r4, sp, #0x10
	ldr r1, _0807A648 @ =0x08118E5C
	adds r0, r4, #0
	movs r2, #0x24
	bl memcpy
	ldrb r0, [r5, #0xa]
	mov r8, r4
	cmp r0, #0
	beq _0807A5B2
	b _0807A7AA
_0807A5B2:
	cmp r6, #0
	bne _0807A5B8
	b _0807A7A2
_0807A5B8:
	ldr r0, [r6]
	cmp r0, #0
	bne _0807A5C0
	b _0807A7A2
_0807A5C0:
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x17
	beq _0807A5CC
	b _0807A7A2
_0807A5CC:
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r0, [r4]
	adds r3, r5, #0
	adds r3, #0x58
	movs r1, #0x20
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r1, #0x5a
	adds r1, r1, r5
	mov ip, r1
	movs r1, #0x78
	ands r1, r0
	mov r0, ip
	ldrb r2, [r0]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrb r0, [r4]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r2, r5, #0
	adds r2, #0x42
	strh r0, [r2]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807A64C
	adds r1, r5, #0
	adds r1, #0x4a
	ldrh r0, [r2]
	ldrh r1, [r1]
	subs r0, r0, r1
	b _0807A656
	.align 2, 0
_0807A648: .4byte 0x08118E5C
_0807A64C:
	adds r0, r5, #0
	adds r0, #0x4a
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
_0807A656:
	strh r0, [r2]
	adds r0, r6, #0
	adds r0, #0x21
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r7, r0, #0
	cmp r1, #1
	beq _0807A694
	cmp r1, #1
	bgt _0807A670
	cmp r1, #0
	beq _0807A67E
	b _0807A678
_0807A670:
	cmp r1, #2
	beq _0807A6DE
	cmp r1, #3
	beq _0807A73E
_0807A678:
	adds r2, r5, #0
	adds r2, #0x20
	b _0807A77A
_0807A67E:
	adds r2, r5, #0
	adds r2, #0x65
	movs r0, #0x15
	strb r0, [r2]
	strb r1, [r5, #0xb]
	ldrb r0, [r7]
	adds r1, r5, #0
	adds r1, #0x21
	strb r0, [r1]
	subs r2, #0x45
	b _0807A77A
_0807A694:
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bge _0807A6A2
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r4, r0, #0
	b _0807A6A4
_0807A6A2:
	asrs r4, r0, #0x10
_0807A6A4:
	adds r2, r5, #0
	adds r2, #0x20
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r1, r0, #3
	subs r1, r1, r0
	subs r4, r4, r1
	adds r0, r5, #0
	adds r0, #0x21
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r3, r0, #0
	cmp r1, #2
	bne _0807A6CA
	movs r0, #1
	strb r0, [r5, #0xb]
_0807A6CA:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0807A726
	cmp r4, #0
	blt _0807A71E
	movs r0, #1
	strb r0, [r5, #0xb]
	ldrb r0, [r7]
	strb r0, [r3]
	b _0807A72C
_0807A6DE:
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bge _0807A6EC
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r4, r0, #0
	b _0807A6EE
_0807A6EC:
	asrs r4, r0, #0x10
_0807A6EE:
	adds r2, r5, #0
	adds r2, #0x20
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r1, r0, #3
	subs r1, r1, r0
	subs r4, r4, r1
	adds r0, r5, #0
	adds r0, #0x21
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r3, r0, #0
	cmp r1, #1
	bne _0807A712
	strb r1, [r5, #0xb]
_0807A712:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0807A726
	subs r0, r4, #1
	cmp r0, #0x15
	bls _0807A722
_0807A71E:
	movs r4, #0
	b _0807A72C
_0807A722:
	movs r0, #1
	strb r0, [r5, #0xb]
_0807A726:
	cmp r4, #0
	bge _0807A72C
	adds r4, #0x24
_0807A72C:
	mov r1, r8
	adds r0, r1, r4
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrb r0, [r7]
	strb r0, [r3]
	b _0807A77A
_0807A73E:
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bge _0807A74C
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r4, r0, #0
	b _0807A74E
_0807A74C:
	asrs r4, r0, #0x10
_0807A74E:
	adds r2, r5, #0
	adds r2, #0x20
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r1, r0, #3
	subs r1, r1, r0
	subs r4, r4, r1
	cmp r4, #0
	bge _0807A768
	adds r4, #0x24
_0807A768:
	mov r1, r8
	adds r0, r1, r4
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrb r0, [r7]
	subs r1, #0x44
	strb r0, [r1]
_0807A77A:
	ldrb r1, [r2]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0807A790
	adds r1, r5, #0
	adds r1, #0x65
	ldrb r0, [r1]
	adds r0, #4
	strb r0, [r1]
_0807A790:
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	bne _0807A83C
	movs r0, #0
	strb r2, [r5, #0xa]
	strb r0, [r5, #0xb]
	movs r0, #0x5a
	strb r0, [r5, #0xd]
	b _0807A83C
_0807A7A2:
	adds r0, r5, #0
	bl EntityDelete
	b _0807A83C
_0807A7AA:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0807A7C0
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_0807A7C0:
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
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0807A7FA
	ldrb r1, [r5, #0xd]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0807A81C
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x16
	b _0807A822
_0807A7FA:
	cmp r0, #4
	bne _0807A818
	ldrb r1, [r5, #0xd]
	movs r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _0807A810
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x16
	b _0807A822
_0807A810:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x15
	b _0807A822
_0807A818:
	cmp r0, #0
	bne _0807A824
_0807A81C:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x17
_0807A822:
	strb r0, [r1]
_0807A824:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0807A83C
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0807A83C:
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807A848
sub_0807A848: @ 0x0807A848
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0807A8C0 @ =sub_0807A900
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0807A8F0
	str r6, [r4, #0x40]
	str r7, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, _0807A8C4 @ =0x081CBF84
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0807A8C8 @ =0x08217464
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	ldrb r0, [r5, #0xd]
	cmp r0, #0x80
	beq _0807A8CC
	mov r0, r8
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0807A8DC
	.align 2, 0
_0807A8C0: .4byte sub_0807A900
_0807A8C4: .4byte 0x081CBF84
_0807A8C8: .4byte 0x08217464
_0807A8CC:
	mov r0, r8
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0807A8DC:
	ldr r0, [sp, #0x18]
	strb r0, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0807A8FC @ =sub_0803B9D0
	str r0, [r4, #4]
_0807A8F0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807A8FC: .4byte sub_0803B9D0

	thumb_func_start sub_0807A900
sub_0807A900: @ 0x0807A900
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F17C
	ldrb r1, [r4, #0xd]
	lsls r2, r1, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0x80
	bne _0807A928
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807A938
	adds r0, r4, #0
	bl EntityDelete
	b _0807A938
_0807A928:
	adds r0, r1, #0
	adds r0, #0xff
	strb r0, [r4, #0xd]
	cmp r2, #0
	bgt _0807A938
	adds r0, r4, #0
	bl EntityDelete
_0807A938:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807A940
sub_0807A940: @ 0x0807A940
	push {lr}
	sub sp, #0x10
	mov r2, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r3, #0
	strh r1, [r2]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r2, #2]
	mov r1, sp
	strh r3, [r1, #4]
	strh r3, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_0807A970
sub_0807A970: @ 0x0807A970
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0807A9A4 @ =0x081CBF84
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0807A9B4
	ldr r0, _0807A9A8 @ =0x0820A608
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0807A9AC @ =0x08217464
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _0807A9B0 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0807A9B6
	.align 2, 0
_0807A9A4: .4byte 0x081CBF84
_0807A9A8: .4byte 0x0820A608
_0807A9AC: .4byte 0x08217464
_0807A9B0: .4byte sub_0803B9D0
_0807A9B4:
	movs r0, #0
_0807A9B6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0807A9BC
sub_0807A9BC: @ 0x0807A9BC
	bx lr
	.align 2, 0

	thumb_func_start sub_0807A9C0
sub_0807A9C0: @ 0x0807A9C0
	push {lr}
	sub sp, #0x10
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r2, #0
	strh r1, [r3]
	mov r1, sp
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start EnemyZombieUpdate
EnemyZombieUpdate: @ 0x0807A9EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _0807AA38
	cmp r0, #1
	beq _0807AA22
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xb0
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0807AA22
	adds r0, r5, #0
	bl sub_08021924
_0807AA22:
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _0807AA38
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r0, [r5, #0xd]
	strh r1, [r5, #0x34]
_0807AA38:
	adds r0, r5, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _0807AA54
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _0807AA4A
	b _0807ABDA
_0807AA4A:
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	b _0807ABDA
_0807AA54:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _0807AA76
	cmp r0, #1
	bgt _0807AA64
	cmp r0, #0
	beq _0807AA6E
	b _0807AB94
_0807AA64:
	cmp r0, #2
	beq _0807AAB0
	cmp r0, #3
	beq _0807AABE
	b _0807AB94
_0807AA6E:
	adds r0, r5, #0
	bl sub_0807AD28
	b _0807AB94
_0807AA76:
	adds r0, r5, #0
	bl sub_0806AEAC
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0807AA8C
	b _0807AB94
_0807AA8C:
	ldr r1, [r5, #0x18]
	cmp r1, #0
	bne _0807AA94
	b _0807AB94
_0807AA94:
	ldr r0, [r1]
	cmp r0, #0
	beq _0807AB94
	adds r0, r1, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #1
	bne _0807AB94
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _0807AB94
	subs r0, #1
	str r0, [r1, #0x18]
	b _0807AB94
_0807AAB0:
	adds r0, r5, #0
	bl sub_0807B034
	adds r0, r5, #0
	bl sub_0803F17C
	b _0807ABDA
_0807AABE:
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	cmp r1, #0
	beq _0807AACC
	b _0807ABDA
_0807AACC:
	movs r0, #0x30
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x18]
	cmp r0, r1
	blt _0807AAD8
	b _0807ABDA
_0807AAD8:
	ldr r2, _0807AB80 @ =EntityUpdateNothing
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0807ABDA
	ldr r0, [r5, #0x18]
	adds r0, #1
	str r0, [r5, #0x18]
	adds r7, r4, #0
	adds r7, #0x42
	movs r1, #0x59
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0x37
	adds r2, r2, r4
	mov sl, r2
	adds r6, r5, #0
	adds r6, #0x36
	movs r0, #0x36
	adds r0, r0, r4
	mov sb, r0
_0807AB08:
	bl RandomNumberGenerator
	movs r1, #0xf0
	bl __umodsi3
	strh r0, [r7]
	ldr r0, _0807AB84 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0807AB88 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r1, r1, r0
	cmp r1, #0
	bge _0807AB2A
	rsbs r1, r1, #0
_0807AB2A:
	movs r0, #0x80
	lsls r0, r0, #0xe
	cmp r1, r0
	ble _0807AB08
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	mov r2, r8
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0
	mov r0, sl
	strb r1, [r0]
	ldrb r0, [r6]
	mov r2, sb
	strb r0, [r2]
	strh r1, [r4, #0x32]
	ldr r0, _0807AB8C @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r2, _0807AB90 @ =0x080E9644
	ldrb r1, [r6]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	strh r0, [r4, #0x34]
	ldrb r1, [r6]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xe]
	strh r0, [r4, #0x2e]
	ldr r0, [r5]
	str r0, [r4]
	adds r0, r4, #0
	bl EnemyZombieCreate
	str r5, [r4, #0x18]
	b _0807ABDA
	.align 2, 0
_0807AB80: .4byte EntityUpdateNothing
_0807AB84: .4byte gEwramData
_0807AB88: .4byte 0x00013110
_0807AB8C: .4byte sub_0803B9D0
_0807AB90: .4byte 0x080E9644
_0807AB94:
	adds r6, r5, #0
	adds r6, #0x65
	ldrb r4, [r6]
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r6, [r6]
	cmp r4, r6
	beq _0807ABAC
	adds r0, r5, #0
	bl sub_0806B1FC
_0807ABAC:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0807ABC8
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0807ABBC
	cmp r0, #3
	bne _0807ABC8
_0807ABBC:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	b _0807ABD2
_0807ABC8:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
_0807ABD2:
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_0806E314
_0807ABDA:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyZombieCreate
EnemyZombieCreate: @ 0x0807ABEC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, _0807AC28 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _0807AC2C @ =0x0000A094
	adds r7, r0, r1
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0807AC30
	movs r0, #3
	strb r0, [r4, #0xa]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1a
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0806AF98
	b _0807AD14
	.align 2, 0
_0807AC28: .4byte gEwramData
_0807AC2C: .4byte 0x0000A094
_0807AC30:
	adds r0, r4, #0
	bl sub_0807B404
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807AC44
	adds r0, r4, #0
	bl EntityDelete
	b _0807AD14
_0807AC44:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, [r5]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807AC7C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r4, #0xa]
	b _0807AD14
_0807AC7C:
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _0807AC9C
	ldr r2, _0807AC94 @ =sub_0807B450
	ldr r3, _0807AC98 @ =sub_0807B0DC
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _0807ACA8
	.align 2, 0
_0807AC94: .4byte sub_0807B450
_0807AC98: .4byte sub_0807B0DC
_0807AC9C:
	ldr r2, _0807AD1C @ =sub_0807B450
	ldr r3, _0807AD20 @ =sub_0807B0DC
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_0807ACA8:
	adds r0, r4, #0
	bl sub_0806B1FC
	ldr r6, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0806AF98
	movs r5, #0
	strb r5, [r4, #0xa]
	adds r0, r4, #0
	bl sub_0806CF2C
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldrh r7, [r7, #0xa]
	adds r1, r1, r7
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0807AD02
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xd]
	strh r5, [r4, #0x34]
_0807AD02:
	ldr r0, _0807AD24 @ =0xFFF80000
	adds r1, r6, r0
	ldr r0, [r4, #0x44]
	cmp r0, r1
	bgt _0807AD14
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xd]
	strh r5, [r4, #0x34]
_0807AD14:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807AD1C: .4byte sub_0807B450
_0807AD20: .4byte sub_0807B0DC
_0807AD24: .4byte 0xFFF80000

	thumb_func_start sub_0807AD28
sub_0807AD28: @ 0x0807AD28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r0, _0807AD50 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0807AD54 @ =0x0000A094
	adds r1, r1, r0
	mov sb, r1
	ldrb r0, [r6, #0xb]
	cmp r0, #1
	beq _0807ADDC
	cmp r0, #1
	bgt _0807AD58
	cmp r0, #0
	beq _0807AD66
	b _0807B022
	.align 2, 0
_0807AD50: .4byte gEwramData
_0807AD54: .4byte 0x0000A094
_0807AD58:
	cmp r0, #2
	bne _0807AD5E
	b _0807AFD8
_0807AD5E:
	cmp r0, #3
	bne _0807AD64
	b _0807B00A
_0807AD64:
	b _0807B022
_0807AD66:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0807AD78
	b _0807B022
_0807AD78:
	strb r4, [r6, #0xb]
	bl RandomNumberGenerator
	ands r0, r4
	cmp r0, #0
	beq _0807AD92
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0807AD9E
_0807AD92:
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0807AD9E:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807ADB2
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _0807ADB4
_0807ADB2:
	ldr r0, _0807ADD4 @ =0xFFFE0000
_0807ADB4:
	str r0, [r6, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r6, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r6, #0x54]
	bl RandomNumberGenerator
	ldr r1, _0807ADD8 @ =0x000001FF
	ands r1, r0
	movs r2, #0x96
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r6, #0x1c]
	b _0807B022
	.align 2, 0
_0807ADD4: .4byte 0xFFFE0000
_0807ADD8: .4byte 0x000001FF
_0807ADDC:
	adds r0, r6, #0
	adds r0, #0x6f
	ldrb r1, [r0]
	str r0, [sp, #4]
	cmp r1, #0
	bne _0807AE0A
	subs r0, #0x17
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807ADFA
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _0807ADFC
_0807ADFA:
	ldr r0, _0807AE50 @ =0xFFFE0000
_0807ADFC:
	str r0, [r6, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r6, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r6, #0x54]
_0807AE0A:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D490
	ldr r7, [r6, #0x40]
	ldr r5, [r6, #0x44]
	mov r8, r5
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807AE54 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r6, #0
	bl sub_08069A00
	adds r3, r0, #0
	movs r0, #3
	ands r3, r0
	cmp r3, #0
	beq _0807AE58
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r3, #0
	strb r0, [r6, #0xb]
	adds r2, r6, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	str r7, [r6, #0x40]
	b _0807AEA2
	.align 2, 0
_0807AE50: .4byte 0xFFFE0000
_0807AE54: .4byte 0xFFE00000
_0807AE58:
	movs r0, #0x42
	adds r0, r0, r6
	mov sl, r0
	ldrh r0, [r0]
	mov r1, sb
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r6, #0
	adds r4, #0x46
	ldrh r1, [r4]
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r3, [sp, #8]
	bl sub_0806D104
	mov ip, r0
	mov sb, sl
	mov sl, r4
	ldr r3, [sp, #8]
	cmp r0, #0
	beq _0807AEA8
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r2, r6, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	str r7, [r6, #0x40]
	mov r5, r8
_0807AEA2:
	str r5, [r6, #0x44]
	strb r3, [r6, #0xd]
	b _0807B022
_0807AEA8:
	ldr r0, [r6, #0x1c]
	adds r1, r0, #0
	subs r0, #1
	str r0, [r6, #0x1c]
	cmp r1, #0
	bgt _0807AED2
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r2, r6, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	str r7, [r6, #0x40]
	mov r0, r8
	str r0, [r6, #0x44]
	mov r1, ip
	strb r1, [r6, #0xd]
	b _0807B022
_0807AED2:
	adds r0, r6, #0
	adds r0, #0x6e
	ldrb r1, [r0]
	adds r5, r6, #0
	adds r5, #0x58
	adds r4, r0, #0
	cmp r1, #0
	bne _0807AF44
	movs r0, #0x14
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0807AF3E
	movs r0, #1
	strb r0, [r6, #0x14]
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	bne _0807AF18
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	movs r7, #0x90
	lsls r7, r7, #0xc
	cmp r0, #0
	beq _0807AF08
	ldr r7, _0807AF10 @ =0xFFF70000
_0807AF08:
	ldr r2, _0807AF14 @ =0xFFE80000
	mov r8, r2
	b _0807AF2C
	.align 2, 0
_0807AF10: .4byte 0xFFF70000
_0807AF14: .4byte 0xFFE80000
_0807AF18:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	ldr r7, _0807AF9C @ =0xFFF70000
	cmp r0, #0
	beq _0807AF28
	movs r7, #0x90
	lsls r7, r7, #0xc
_0807AF28:
	ldr r0, _0807AFA0 @ =0xFFEA0000
	mov r8, r0
_0807AF2C:
	ldr r0, [r6, #0x40]
	adds r7, r7, r0
	ldr r0, [r6, #0x44]
	add r8, r0
	adds r0, r6, #0
	adds r1, r7, #0
	mov r2, r8
	bl sub_0807B1CC
_0807AF3E:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0807AF4A
_0807AF44:
	ldrb r0, [r4]
	cmp r0, #2
	bne _0807AF66
_0807AF4A:
	movs r0, #0x15
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0807AF66
	movs r0, #1
	strb r0, [r6, #0x15]
	ldr r7, [r6, #0x40]
	ldr r1, [r6, #0x44]
	mov r8, r1
	adds r0, r6, #0
	adds r1, r7, #0
	mov r2, r8
	bl sub_0807B33C
_0807AF66:
	ldrb r0, [r4]
	cmp r0, #1
	beq _0807AF70
	cmp r0, #3
	bne _0807AF76
_0807AF70:
	movs r0, #0
	strb r0, [r6, #0x14]
	strb r0, [r6, #0x15]
_0807AF76:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807AFA4
	mov r2, sb
	movs r5, #0
	ldrsh r0, [r2, r5]
	mov r2, sl
	ldrh r1, [r2]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0x40
	bl sub_0806CFFC
	b _0807AFC0
	.align 2, 0
_0807AF9C: .4byte 0xFFF70000
_0807AFA0: .4byte 0xFFEA0000
_0807AFA4:
	mov r5, sb
	ldrh r0, [r5]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	ldrh r1, [r2]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0x40
	bl sub_0806CFFC
_0807AFC0:
	cmp r0, #0
	beq _0807B022
	ldr r0, [r6, #0x1c]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807B022
	ldr r5, [sp, #4]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	b _0807B022
_0807AFD8:
	adds r2, r6, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _0807B022
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	b _0807B022
_0807B00A:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0807B022
	movs r0, #0
	strb r2, [r6, #0xa]
	strb r2, [r6, #0xd]
	strh r0, [r6, #0x34]
_0807B022:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807B034
sub_0807B034: @ 0x0807B034
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0807B044
	cmp r0, #1
	beq _0807B074
	b _0807B0CC
_0807B044:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0807B0CC
	strb r5, [r4, #0xb]
	bl RandomNumberGenerator
	ands r0, r5
	cmp r0, #0
	beq _0807B066
	adds r0, r4, #0
	movs r1, #1
	b _0807B06A
_0807B066:
	adds r0, r4, #0
	movs r1, #4
_0807B06A:
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0807B0CC
_0807B074:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0807B0CC
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	bne _0807B0A8
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r1, #0x90
	lsls r1, r1, #0xc
	cmp r0, #0
	beq _0807B09C
	ldr r1, _0807B0A0 @ =0xFFF70000
_0807B09C:
	ldr r2, _0807B0A4 @ =0xFFE80000
	b _0807B0BE
	.align 2, 0
_0807B0A0: .4byte 0xFFF70000
_0807B0A4: .4byte 0xFFE80000
_0807B0A8:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _0807B0D4 @ =0xFFF90000
	cmp r0, #0
	beq _0807B0BC
	movs r1, #0xe0
	lsls r1, r1, #0xb
_0807B0BC:
	ldr r2, _0807B0D8 @ =0xFFEA0000
_0807B0BE:
	ldr r0, [r4, #0x40]
	adds r1, r1, r0
	ldr r0, [r4, #0x44]
	adds r2, r2, r0
	adds r0, r4, #0
	bl sub_0807B1CC
_0807B0CC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807B0D4: .4byte 0xFFF90000
_0807B0D8: .4byte 0xFFEA0000

	thumb_func_start sub_0807B0DC
sub_0807B0DC: @ 0x0807B0DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r0, [r4, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0806B7D8
	adds r1, r0, #0
	adds r2, r6, #0
	adds r2, #0x2d
	movs r0, #8
	strb r0, [r2]
	ldrh r0, [r6, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _0807B1B0
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x70
	bl PlaySong
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r6, #0
	adds r1, #0x2c
	adds r3, r6, #0
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
	movs r0, #0x28
	strb r0, [r6, #0xd]
	movs r0, #1
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
	bl RandomNumberGenerator
	ldr r1, _0807B1BC @ =0x0007FFFF
	mov r8, r1
	ands r0, r1
	ldr r5, _0807B1C0 @ =0xFFFC0000
	adds r7, r0, r5
	bl RandomNumberGenerator
	ldr r4, _0807B1C4 @ =0x0003FFFF
	ands r0, r4
	ldr r1, [r6, #0x40]
	adds r7, r7, r1
	ldr r1, _0807B1C8 @ =0xFFE60000
	adds r0, r0, r1
	ldr r1, [r6, #0x44]
	adds r2, r0, r1
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0807B258
	bl RandomNumberGenerator
	mov r1, r8
	ands r0, r1
	adds r7, r0, r5
	bl RandomNumberGenerator
	ands r0, r4
	ldr r1, [r6, #0x40]
	adds r7, r7, r1
	ldr r1, _0807B1C8 @ =0xFFE60000
	adds r0, r0, r1
	ldr r1, [r6, #0x44]
	adds r2, r0, r1
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0807B258
_0807B1B0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807B1BC: .4byte 0x0007FFFF
_0807B1C0: .4byte 0xFFFC0000
_0807B1C4: .4byte 0x0003FFFF
_0807B1C8: .4byte 0xFFE60000

	thumb_func_start sub_0807B1CC
sub_0807B1CC: @ 0x0807B1CC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, _0807B248 @ =sub_0807B310
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _0807B242
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, _0807B24C @ =0x081CBF8C
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0807B250 @ =0x082178B8
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #0x1e
	strb r0, [r4, #0xd]
	movs r0, #0xa0
	lsls r0, r0, #4
	str r0, [r4, #0x54]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0807B254 @ =sub_0803B9D0
	str r0, [r4, #4]
_0807B242:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807B248: .4byte sub_0807B310
_0807B24C: .4byte 0x081CBF8C
_0807B250: .4byte 0x082178B8
_0807B254: .4byte sub_0803B9D0

	thumb_func_start sub_0807B258
sub_0807B258: @ 0x0807B258
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r2, _0807B2F4 @ =sub_0807B3E4
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _0807B2EC
	str r6, [r5, #0x40]
	str r7, [r5, #0x44]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x1c]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, _0807B2F8 @ =0x081CBF8C
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0807B2FC @ =0x082178B8
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_0803B924
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	bl RandomNumberGenerator
	ldr r1, _0807B300 @ =0x0001FFFF
	ands r1, r0
	ldr r4, _0807B304 @ =0xFFFF0000
	adds r1, r1, r4
	str r1, [r5, #0x48]
	bl RandomNumberGenerator
	ldr r1, _0807B308 @ =0x0000FFFF
	ands r1, r0
	subs r4, r4, r1
	str r4, [r5, #0x4c]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0807B30C @ =sub_0803B9D0
	str r0, [r5, #4]
_0807B2EC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807B2F4: .4byte sub_0807B3E4
_0807B2F8: .4byte 0x081CBF8C
_0807B2FC: .4byte 0x082178B8
_0807B300: .4byte 0x0001FFFF
_0807B304: .4byte 0xFFFF0000
_0807B308: .4byte 0x0000FFFF
_0807B30C: .4byte sub_0803B9D0

	thumb_func_start sub_0807B310
sub_0807B310: @ 0x0807B310
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #0xc
	bl sub_0806D384
	adds r0, r4, #0
	bl sub_0806D3CC
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0807B336
	adds r0, r4, #0
	bl EntityDelete
_0807B336:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807B33C
sub_0807B33C: @ 0x0807B33C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	ldr r2, _0807B3B8 @ =sub_0807B3C8
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _0807B3B2
	str r4, [r5, #0x40]
	str r7, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r5, #0
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
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	movs r4, #0
	strb r0, [r1]
	ldr r0, _0807B3BC @ =0x081CBF8C
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0807B3C0 @ =0x082178B8
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_0803B924
	adds r0, r5, #0
	adds r0, #0x65
	strb r4, [r0]
	movs r0, #0x78
	str r0, [r5, #0x1c]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0807B3C4 @ =sub_0803B9D0
	str r0, [r5, #4]
_0807B3B2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807B3B8: .4byte sub_0807B3C8
_0807B3BC: .4byte 0x081CBF8C
_0807B3C0: .4byte 0x082178B8
_0807B3C4: .4byte sub_0803B9D0

	thumb_func_start sub_0807B3C8
sub_0807B3C8: @ 0x0807B3C8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x1c]
	adds r1, r0, #0
	subs r0, #1
	str r0, [r2, #0x1c]
	cmp r1, #0
	bgt _0807B3DE
	adds r0, r2, #0
	bl EntityDelete
_0807B3DE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807B3E4
sub_0807B3E4: @ 0x0807B3E4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #0xc
	bl sub_0806D3D8
	ldr r1, [r4, #0x44]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	ble _0807B3FE
	adds r0, r4, #0
	bl EntityDelete
_0807B3FE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807B404
sub_0807B404: @ 0x0807B404
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0807B438 @ =0x081CBF8C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0807B448
	ldr r0, _0807B43C @ =0x0820A62C
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0807B440 @ =0x082178B8
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _0807B444 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0807B44A
	.align 2, 0
_0807B438: .4byte 0x081CBF8C
_0807B43C: .4byte 0x0820A62C
_0807B440: .4byte 0x082178B8
_0807B444: .4byte sub_0803B9D0
_0807B448:
	movs r0, #0
_0807B44A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0807B450
sub_0807B450: @ 0x0807B450
	push {lr}
	sub sp, #0x10
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r2, #0
	strh r1, [r3]
	mov r1, sp
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start EnemyPersephoneUpdate
EnemyPersephoneUpdate: @ 0x0807B47C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0807B4B4
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _0807B496
	b _0807B5C8
_0807B496:
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xb0
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0807B4B4
	adds r0, r4, #0
	bl sub_08021924
_0807B4B4:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _0807B4CC
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	b _0807B4D8
_0807B4CC:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r2, [r0]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
_0807B4D8:
	strb r1, [r0]
	adds r5, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0807B4E8
	adds r0, r4, #0
	bl sub_0806AE54
_0807B4E8:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _0807B4F8
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0807B50C
_0807B4F8:
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807B516
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _0807B516
	cmp r0, #2
	beq _0807B516
_0807B50C:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _0807B5C8
_0807B516:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _0807B5BC
	lsls r0, r0, #2
	ldr r1, _0807B528 @ =_0807B52C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807B528: .4byte _0807B52C
_0807B52C: @ jump table
	.4byte _0807B540 @ case 0
	.4byte _0807B548 @ case 1
	.4byte _0807B550 @ case 2
	.4byte _0807B5B6 @ case 3
	.4byte _0807B5A8 @ case 4
_0807B540:
	adds r0, r4, #0
	bl sub_0807B680
	b _0807B5BC
_0807B548:
	adds r0, r4, #0
	bl sub_0807BA20
	b _0807B5BC
_0807B550:
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x50]
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807B5A4 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08069A00
	ldrb r0, [r4, #0xd]
	bl sub_0806D518
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	ldrb r2, [r5]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0807B5BC
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _0807B5BC
	.align 2, 0
_0807B5A4: .4byte 0xFFE00000
_0807B5A8:
	adds r0, r4, #0
	bl sub_0807BD70
	adds r0, r4, #0
	bl sub_0803F17C
	b _0807B5C8
_0807B5B6:
	adds r0, r4, #0
	bl sub_0807C014
_0807B5BC:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_0807B5C8:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start EnemyPersephoneCreate
EnemyPersephoneCreate: @ 0x0807B5D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0807BDD0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807B5E6
	adds r0, r4, #0
	bl EntityDelete
	b _0807B672
_0807B5E6:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _0807B614 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807B618
	movs r0, #4
	strb r0, [r4, #0xa]
	b _0807B672
	.align 2, 0
_0807B614: .4byte gEwramData
_0807B618:
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _0807B638
	ldr r2, _0807B630 @ =sub_0807C068
	ldr r3, _0807B634 @ =sub_0807BE60
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _0807B644
	.align 2, 0
_0807B630: .4byte sub_0807C068
_0807B634: .4byte sub_0807BE60
_0807B638:
	ldr r2, _0807B678 @ =sub_0807C068
	ldr r3, _0807B67C @ =sub_0807BE60
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_0807B644:
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	adds r0, r4, #0
	bl sub_0806CF2C
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r0, #0
	strb r0, [r4, #0xa]
	str r4, [r4, #0x14]
_0807B672:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807B678: .4byte sub_0807C068
_0807B67C: .4byte sub_0807BE60

	thumb_func_start sub_0807B680
sub_0807B680: @ 0x0807B680
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #6
	bls _0807B68E
	b _0807BA18
_0807B68E:
	lsls r0, r0, #2
	ldr r1, _0807B698 @ =_0807B69C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807B698: .4byte _0807B69C
_0807B69C: @ jump table
	.4byte _0807B6B8 @ case 0
	.4byte _0807B71C @ case 1
	.4byte _0807B7BC @ case 2
	.4byte _0807B868 @ case 3
	.4byte _0807BA18 @ case 4
	.4byte _0807B880 @ case 5
	.4byte _0807B94E @ case 6
_0807B6B8:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x78
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x30
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xf0
	movs r3, #0x60
	bl sub_0806CFFC
	cmp r0, #0
	bne _0807B6E8
	adds r0, r5, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _0807B6E8
	b _0807BA18
_0807B6E8:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	bl sub_0806CF2C
	adds r3, r5, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	strb r4, [r5, #0xd]
	b _0807BA18
_0807B71C:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bne _0807B752
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _0807B740
	ldr r0, _0807B73C @ =0x000001C9
	bl PlaySong
	b _0807B752
	.align 2, 0
_0807B73C: .4byte 0x000001C9
_0807B740:
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x3f
	bhi _0807B752
	ldr r0, _0807B7A0 @ =0x000001C9
	bl PlaySong
_0807B752:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807B762
	b _0807BA18
_0807B762:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	bl sub_0806CF2C
	adds r4, r5, #0
	adds r4, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807B7A4
	movs r0, #0x80
	lsls r0, r0, #9
	b _0807B7A6
	.align 2, 0
_0807B7A0: .4byte 0x000001C9
_0807B7A4:
	ldr r0, _0807B7B8 @ =0xFFFF0000
_0807B7A6:
	str r0, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	movs r0, #0
	b _0807BA16
	.align 2, 0
_0807B7B8: .4byte 0xFFFF0000
_0807B7BC:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0807B808
	adds r0, r5, #0
	bl sub_0806CF2C
	adds r3, r5, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _0807B7F4
	movs r0, #0x80
	lsls r0, r0, #9
	b _0807B7F6
_0807B7F4:
	ldr r0, _0807B860 @ =0xFFFF0000
_0807B7F6:
	str r0, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	movs r0, #0
	strb r0, [r5, #0xd]
_0807B808:
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807B864 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	bne _0807B826
	b _0807BA18
_0807B826:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x30
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0x60
	bl sub_0806CFFC
	cmp r0, #0
	bne _0807B84C
	b _0807BA18
_0807B84C:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0807BA18
	.align 2, 0
_0807B860: .4byte 0xFFFF0000
_0807B864: .4byte 0xFFE00000
_0807B868:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0807B87A
	b _0807BA18
_0807B87A:
	movs r0, #0
	strb r2, [r5, #0xa]
	b _0807BA14
_0807B880:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r5, #0
	adds r4, #0x58
	cmp r0, #0x1d
	bls _0807B8AE
	adds r0, r5, #0
	bl sub_0806CF2C
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	movs r0, #0
	strb r0, [r5, #0xd]
_0807B8AE:
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807B8BE
	movs r0, #0x80
	lsls r0, r0, #8
	b _0807B8C0
_0807B8BE:
	ldr r0, _0807B914 @ =0xFFFF8000
_0807B8C0:
	str r0, [r5, #0x48]
	movs r7, #0x80
	lsls r7, r7, #9
	ldr r2, _0807B918 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08069A00
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x30
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0x60
	bl sub_0806CFFC
	adds r4, r0, #0
	cmp r4, #0
	beq _0807B91C
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807B90C
	b _0807BA12
_0807B90C:
	movs r0, #0
	movs r1, #6
	b _0807B9DC
	.align 2, 0
_0807B914: .4byte 0xFFFF8000
_0807B918: .4byte 0xFFE00000
_0807B91C:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806B120
	adds r6, r0, #0
	cmp r6, #0
	beq _0807B932
	movs r0, #6
	strb r0, [r5, #0xb]
	strb r4, [r5, #0xd]
	b _0807B9E0
_0807B932:
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _0807BA18
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r6, [r5, #0xb]
	b _0807BA18
_0807B94E:
	adds r0, r5, #0
	bl sub_0806CF2C
	adds r3, r5, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _0807B97C
	ldr r0, _0807B978 @ =0xFFFF8000
	b _0807B980
	.align 2, 0
_0807B978: .4byte 0xFFFF8000
_0807B97C:
	movs r0, #0x80
	lsls r0, r0, #8
_0807B980:
	str r0, [r5, #0x48]
	movs r7, #0x80
	lsls r7, r7, #9
	ldr r2, _0807B9C8 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08069A00
	adds r6, r5, #0
	adds r6, #0x42
	ldrh r0, [r6]
	subs r0, #0x3c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r5, #0
	adds r4, #0x46
	ldrh r1, [r4]
	subs r1, #0x30
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x78
	movs r3, #0x60
	bl sub_0806CFFC
	adds r1, r0, #0
	cmp r1, #0
	bne _0807B9CC
	movs r0, #5
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	b _0807B9E0
	.align 2, 0
_0807B9C8: .4byte 0xFFE00000
_0807B9CC:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806B120
	cmp r0, #0
	beq _0807B9EA
	movs r0, #0
	movs r1, #5
_0807B9DC:
	strb r1, [r5, #0xb]
	strb r0, [r5, #0xd]
_0807B9E0:
	str r7, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	b _0807BA18
_0807B9EA:
	ldrh r0, [r6]
	subs r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4]
	subs r1, #0x30
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0x60
	bl sub_0806CFFC
	cmp r0, #0
	beq _0807BA18
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807BA18
_0807BA12:
	strb r1, [r5, #0xa]
_0807BA14:
	strb r0, [r5, #0xb]
_0807BA16:
	strb r0, [r5, #0xd]
_0807BA18:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807BA20
sub_0807BA20: @ 0x0807BA20
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0xb
	bls _0807BA2E
	b _0807BD68
_0807BA2E:
	lsls r0, r0, #2
	ldr r1, _0807BA38 @ =_0807BA3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807BA38: .4byte _0807BA3C
_0807BA3C: @ jump table
	.4byte _0807BA6C @ case 0
	.4byte _0807BAC8 @ case 1
	.4byte _0807BB46 @ case 2
	.4byte _0807BBC6 @ case 3
	.4byte _0807BD68 @ case 4
	.4byte _0807BD68 @ case 5
	.4byte _0807BD68 @ case 6
	.4byte _0807BD68 @ case 7
	.4byte _0807BD68 @ case 8
	.4byte _0807BD68 @ case 9
	.4byte _0807BC80 @ case 10
	.4byte _0807BCE0 @ case 11
_0807BA6C:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0806CF2C
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _0807BAB2
	rsbs r2, r2, #0
_0807BAB2:
	cmp r2, #0x20
	ble _0807BAC8
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _0807BAC8
	movs r0, #0xa
	strb r0, [r4, #0xb]
	b _0807BD68
_0807BAC8:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0807BAD4
	b _0807BD68
_0807BAD4:
	movs r0, #0xe5
	lsls r0, r0, #1
	bl PlaySong
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _0807BAF8
	rsbs r2, r2, #0
_0807BAF8:
	cmp r2, #7
	bgt _0807BB04
	ldr r2, _0807BB00 @ =0xFFFF0000
	b _0807BB28
	.align 2, 0
_0807BB00: .4byte 0xFFFF0000
_0807BB04:
	cmp r2, #0xf
	bgt _0807BB10
	ldr r2, _0807BB0C @ =0xFFFF8000
	b _0807BB28
	.align 2, 0
_0807BB0C: .4byte 0xFFFF8000
_0807BB10:
	cmp r2, #0x1f
	bgt _0807BB1A
	movs r2, #0x80
	lsls r2, r2, #9
	b _0807BB28
_0807BB1A:
	cmp r2, #0x2f
	bgt _0807BB24
	movs r2, #0xd0
	lsls r2, r2, #0xa
	b _0807BB28
_0807BB24:
	movs r2, #0x80
	lsls r2, r2, #0xb
_0807BB28:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807BB3A
	str r2, [r4, #0x48]
	b _0807BB3E
_0807BB3A:
	rsbs r0, r2, #0
	str r0, [r4, #0x48]
_0807BB3E:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	b _0807BC78
_0807BB46:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #4
	bls _0807BB56
	movs r0, #0
	str r0, [r4, #0x48]
_0807BB56:
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806D490
	movs r6, #0x80
	lsls r6, r6, #9
	ldr r2, _0807BBA8 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08069A00
	adds r1, r0, #0
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0807BBAC
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807BBAC
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bls _0807BB94
	b _0807BD2A
_0807BB94:
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0807BBA4
	b _0807BD2A
_0807BBA4:
	b _0807BD4C
	.align 2, 0
_0807BBA8: .4byte 0xFFE00000
_0807BBAC:
	ldrh r0, [r5]
	cmp r0, #3
	beq _0807BBB4
	b _0807BD68
_0807BBB4:
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0807BF1C
	movs r0, #0x85
	bl PlaySong
	b _0807BD68
_0807BBC6:
	adds r0, r4, #0
	bl sub_0806CF2C
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _0807BBF4
	ldr r0, _0807BBF0 @ =0xFFFF8000
	b _0807BBF8
	.align 2, 0
_0807BBF0: .4byte 0xFFFF8000
_0807BBF4:
	movs r0, #0x80
	lsls r0, r0, #8
_0807BBF8:
	str r0, [r4, #0x48]
	movs r5, #0x80
	lsls r5, r5, #9
	ldr r2, _0807BC40 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08069A00
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x3c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x30
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x78
	movs r3, #0x60
	bl sub_0806CFFC
	adds r1, r0, #0
	cmp r1, #0
	bne _0807BC44
	strb r1, [r4, #0xa]
	movs r0, #5
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	b _0807BC76
	.align 2, 0
_0807BC40: .4byte 0xFFE00000
_0807BC44:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806B120
	adds r2, r0, #0
	cmp r2, #0
	beq _0807BC5E
	movs r0, #0
	strb r0, [r4, #0xa]
	movs r1, #5
	strb r1, [r4, #0xb]
	strb r0, [r4, #0xd]
	b _0807BC76
_0807BC5E:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _0807BC6E
	b _0807BD68
_0807BC6E:
	strb r2, [r4, #0xa]
	movs r0, #6
	strb r0, [r4, #0xb]
	strb r2, [r4, #0xd]
_0807BC76:
	str r5, [r4, #0x4c]
_0807BC78:
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	b _0807BD68
_0807BC80:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807BD68
	movs r0, #0xe5
	lsls r0, r0, #1
	bl PlaySong
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0xa0
	lsls r2, r2, #9
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807BCB4
	str r2, [r4, #0x48]
	b _0807BCB8
_0807BCB4:
	rsbs r0, r2, #0
	str r0, [r4, #0x48]
_0807BCB8:
	ldr r0, _0807BCD8 @ =0xFFFE0000
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807BCDC @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08069A00
	b _0807BD68
	.align 2, 0
_0807BCD8: .4byte 0xFFFE0000
_0807BCDC: .4byte 0xFFE00000
_0807BCE0:
	adds r5, r4, #0
	adds r5, #0x6e
	ldrb r0, [r5]
	cmp r0, #4
	bls _0807BCF6
	adds r2, r4, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_0807BCF6:
	movs r6, #0x80
	lsls r6, r6, #9
	ldr r2, _0807BD48 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08069A00
	adds r1, r0, #0
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0807BD52
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bhi _0807BD2A
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0807BD4C
_0807BD2A:
	movs r0, #0
	movs r1, #3
	strb r1, [r4, #0xb]
	strb r0, [r4, #0xd]
	str r6, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0807BD68
	.align 2, 0
_0807BD48: .4byte 0xFFE00000
_0807BD4C:
	movs r0, #0
	strb r0, [r4, #0xb]
	b _0807BD68
_0807BD52:
	ldrh r0, [r5]
	cmp r0, #3
	bne _0807BD68
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0807BF1C
	movs r0, #0x85
	bl PlaySong
_0807BD68:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0807BD70
sub_0807BD70: @ 0x0807BD70
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xb]
	cmp r1, #0
	beq _0807BD80
	cmp r1, #1
	beq _0807BDA2
	b _0807BDC8
_0807BD80:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x77
	bls _0807BDC8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0807BDC8
_0807BDA2:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _0807BDC8
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r4, #0xb]
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	strb r1, [r4, #0xd]
_0807BDC8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807BDD0
sub_0807BDD0: @ 0x0807BDD0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0807BDE8 @ =0x081CBF94
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	cmp r4, #0
	bge _0807BDEC
	movs r0, #0
	b _0807BE56
	.align 2, 0
_0807BDE8: .4byte 0x081CBF94
_0807BDEC:
	ldr r0, _0807BE44 @ =0x0820A650
	movs r1, #0
	bl sub_08068264
	adds r2, r6, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0807BE48 @ =0x08217D48
	ldrb r3, [r2]
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_0803B924
	adds r0, r6, #0
	bl GetEntityRoomXPositionInteger
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	bl GetEntityRoomYPositionInteger
	adds r5, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl GetRoomFromMapPosition
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl GetAreaFromMapPosition
	cmp r0, #4
	bne _0807BE50
	adds r0, r7, #0
	subs r0, #0xc
	cmp r0, #1
	bhi _0807BE50
	ldr r0, _0807BE4C @ =sub_0806CCE8
	b _0807BE52
	.align 2, 0
_0807BE44: .4byte 0x0820A650
_0807BE48: .4byte 0x08217D48
_0807BE4C: .4byte sub_0806CCE8
_0807BE50:
	ldr r0, _0807BE5C @ =sub_0803B9D0
_0807BE52:
	str r0, [r6, #4]
	movs r0, #1
_0807BE56:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807BE5C: .4byte sub_0803B9D0

	thumb_func_start sub_0807BE60
sub_0807BE60: @ 0x0807BE60
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldrh r0, [r5, #4]
	bl sub_08021530
	adds r3, r0, #0
	adds r7, r4, #0
	adds r7, #0x70
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0806B7D8
	adds r1, r0, #0
	adds r2, r6, #0
	adds r2, #0x2d
	movs r0, #8
	strb r0, [r2]
	ldrh r0, [r6, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	movs r4, #0
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _0807BEEA
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0xe6
	lsls r0, r0, #1
	bl PlaySong
	adds r0, r6, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r6, #0
	adds r1, #0x2c
	adds r3, r6, #0
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
	movs r0, #0x46
	strb r0, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xb]
	b _0807BF16
_0807BEEA:
	ldrb r0, [r7]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0807BF16
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0x3f
	bhi _0807BF16
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xb]
	strb r4, [r6, #0xd]
_0807BF16:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807BF1C
sub_0807BF1C: @ 0x0807BF1C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r2, _0807BFD4 @ =sub_0807BFEC
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, _0807BFD8 @ =0x0E0CE8EC
	str r0, [sp]
	cmp r4, #0
	beq _0807BFCA
	str r6, [r4, #0x40]
	str r7, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _0807BFDC @ =0x081CBF94
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0807BFE0 @ =0x08217D48
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	str r5, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x14
	strb r0, [r1]
	movs r0, #1
	str r0, [r4, #0x1c]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0807BFE4 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r2, _0807BFE8 @ =sub_0807C068
	adds r0, r4, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	adds r0, r4, #0
	mov r1, sp
	bl sub_08042848
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_0807BFCA:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807BFD4: .4byte sub_0807BFEC
_0807BFD8: .4byte 0x0E0CE8EC
_0807BFDC: .4byte 0x081CBF94
_0807BFE0: .4byte 0x08217D48
_0807BFE4: .4byte sub_0803B9D0
_0807BFE8: .4byte sub_0807C068

	thumb_func_start sub_0807BFEC
sub_0807BFEC: @ 0x0807BFEC
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	ldr r0, [r4, #0x1c]
	adds r1, r0, #0
	subs r0, #1
	str r0, [r4, #0x1c]
	cmp r1, #0
	bgt _0807C00C
	adds r0, r4, #0
	bl EntityDelete
_0807C00C:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0807C014
sub_0807C014: @ 0x0807C014
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r7, #0xa0
	lsls r7, r7, #6
	str r7, [r4, #0x54]
	movs r5, #0
	str r5, [r4, #0x48]
	str r5, [r4, #0x50]
	movs r6, #0x80
	lsls r6, r6, #9
	ldr r2, _0807C064 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08069A00
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	beq _0807C05C
	strb r5, [r4, #0xa]
	movs r0, #6
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xd]
	str r6, [r4, #0x4c]
	str r7, [r4, #0x54]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0807C05C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807C064: .4byte 0xFFE00000

	thumb_func_start sub_0807C068
sub_0807C068: @ 0x0807C068
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r2, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r1, #0
	strh r0, [r2]
	mov r0, sp
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	ldr r0, [r4, #0x14]
	adds r0, #0x20
	movs r1, #1
	strb r1, [r0]
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyAluraUneCreate
EnemyAluraUneCreate: @ 0x0807C0A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0807CF20
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807C0B6
	adds r0, r4, #0
	bl EntityDelete
	b _0807C140
_0807C0B6:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _0807C0E4 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807C0E8
	movs r0, #3
	strb r0, [r4, #0xa]
	b _0807C140
	.align 2, 0
_0807C0E4: .4byte gEwramData
_0807C0E8:
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _0807C108
	ldr r2, _0807C100 @ =sub_0807CF6C
	ldr r3, _0807C104 @ =sub_0807C8FC
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _0807C114
	.align 2, 0
_0807C100: .4byte sub_0807CF6C
_0807C104: .4byte sub_0807C8FC
_0807C108:
	ldr r2, _0807C148 @ =sub_0807CF6C
	ldr r3, _0807C14C @ =sub_0807C8FC
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_0807C114:
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	movs r0, #0
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl sub_0806CF2C
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0807C140:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807C148: .4byte sub_0807CF6C
_0807C14C: .4byte sub_0807C8FC

	thumb_func_start sub_0807C150
sub_0807C150: @ 0x0807C150
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_0806CF2C
	adds r3, r6, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r0, [r6, #0xb]
	cmp r0, #0xd
	bls _0807C176
	b _0807C48A
_0807C176:
	lsls r0, r0, #2
	ldr r1, _0807C180 @ =_0807C184
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807C180: .4byte _0807C184
_0807C184: @ jump table
	.4byte _0807C1BC @ case 0
	.4byte _0807C230 @ case 1
	.4byte _0807C24C @ case 2
	.4byte _0807C276 @ case 3
	.4byte _0807C2DC @ case 4
	.4byte _0807C2F6 @ case 5
	.4byte _0807C31E @ case 6
	.4byte _0807C48A @ case 7
	.4byte _0807C48A @ case 8
	.4byte _0807C48A @ case 9
	.4byte _0807C336 @ case 10
	.4byte _0807C378 @ case 11
	.4byte _0807C3BC @ case 12
	.4byte _0807C424 @ case 13
_0807C1BC:
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x5a
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x30
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xb4
	movs r3, #0x60
	bl sub_0806CFFC
	cmp r0, #0
	bne _0807C1EC
	adds r0, r6, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _0807C1EC
	b _0807C48A
_0807C1EC:
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0807C1FE
	movs r0, #1
	strb r0, [r1]
	b _0807C22A
_0807C1FE:
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #0
	bne _0807C21A
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #1
	b _0807C2B2
_0807C21A:
	cmp r1, #1
	bne _0807C226
	movs r0, #0
	strb r1, [r6, #0xa]
	strb r0, [r6, #0xb]
	b _0807C48A
_0807C226:
	movs r0, #1
	strb r0, [r6, #0xa]
_0807C22A:
	movs r0, #0xa
	strb r0, [r6, #0xb]
	b _0807C48A
_0807C230:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C240
	b _0807C48A
_0807C240:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #3
	b _0807C2B2
_0807C24C:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C25C
	b _0807C48A
_0807C25C:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	bl RandomNumberGenerator
	movs r1, #0x3c
	bl __umodsi3
	adds r0, #0x3c
	strb r0, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #4
	b _0807C41A
_0807C276:
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0807C288
	movs r0, #0
	strb r0, [r6, #0xd]
	strb r0, [r1]
_0807C288:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807C298
	b _0807C48A
_0807C298:
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #0
	bne _0807C2BC
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #0xb
_0807C2B2:
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0807C48A
_0807C2BC:
	cmp r1, #1
	bne _0807C2C6
	strb r1, [r6, #0xa]
	strb r1, [r6, #0xb]
	b _0807C48A
_0807C2C6:
	movs r2, #1
	movs r0, #1
	strb r0, [r6, #0xa]
	movs r0, #0xb
	strb r0, [r6, #0xb]
	adds r1, r6, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	b _0807C48A
_0807C2DC:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C2EC
	b _0807C48A
_0807C2EC:
	adds r0, r6, #0
	movs r1, #0xa
	movs r2, #0
	movs r3, #0
	b _0807C30E
_0807C2F6:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C306
	b _0807C48A
_0807C306:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
_0807C30E:
	bl sub_0803F2C8
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	b _0807C48A
_0807C31E:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _0807C32E
	b _0807C48A
_0807C32E:
	movs r0, #0
	strb r0, [r6, #0xb]
	strb r0, [r6, #0xd]
	b _0807C48A
_0807C336:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	movs r5, #0
	movs r7, #0xf
_0807C344:
	bl RandomNumberGenerator
	adds r1, r0, #0
	ands r1, r7
	lsls r4, r5, #4
	adds r1, r1, r4
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0x28
	bl sub_0807C9A4
	bl RandomNumberGenerator
	adds r1, r0, #0
	ands r1, r7
	rsbs r1, r1, #0
	subs r1, r1, r4
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0x28
	bl sub_0807C9A4
	adds r5, #1
	cmp r5, #3
	ble _0807C344
	b _0807C48A
_0807C378:
	ldrb r1, [r6, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0807C38E
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
	b _0807C398
_0807C38E:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08011F7C
_0807C398:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _0807C3B8 @ =0x00000105
	bl sub_08013D60
	b _0807C48A
	.align 2, 0
_0807C3B8: .4byte 0x00000105
_0807C3BC:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0807C3F4
	bl RandomNumberGenerator
	adds r4, r0, #0
	movs r5, #1
	ands r4, r5
	adds r4, #1
	bl RandomNumberGenerator
	adds r2, r0, #0
	ands r2, r5
	adds r2, #1
	movs r0, #0
	adds r1, r4, #0
	bl sub_08011F7C
	ldr r0, _0807C3F0 @ =0x00000105
	bl sub_08013DA8
	b _0807C3FE
	.align 2, 0
_0807C3F0: .4byte 0x00000105
_0807C3F4:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08011F7C
_0807C3FE:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807C48A
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #2
_0807C41A:
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0807C48A
_0807C424:
	ldrb r1, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0807C458
	bl RandomNumberGenerator
	adds r4, r0, #0
	movs r5, #1
	ands r4, r5
	adds r4, #1
	bl RandomNumberGenerator
	adds r2, r0, #0
	ands r2, r5
	adds r2, #1
	movs r0, #0
	adds r1, r4, #0
	bl sub_08011F7C
	ldr r0, _0807C454 @ =0x00000105
	bl sub_08013DA8
	b _0807C462
	.align 2, 0
_0807C454: .4byte 0x00000105
_0807C458:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08011F7C
_0807C462:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0807C48A
	movs r0, #0
	strb r0, [r6, #0xa]
	movs r0, #2
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _0807C490 @ =0x00000105
	bl sub_08013E18
_0807C48A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807C490: .4byte 0x00000105

	thumb_func_start sub_0807C494
sub_0807C494: @ 0x0807C494
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	bl sub_0806CF2C
	adds r3, r6, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r0, [r6, #0xb]
	cmp r0, #0xd
	bls _0807C4C2
	b _0807C878
_0807C4C2:
	lsls r0, r0, #2
	ldr r1, _0807C4CC @ =_0807C4D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807C4CC: .4byte _0807C4D0
_0807C4D0: @ jump table
	.4byte _0807C508 @ case 0
	.4byte _0807C51A @ case 1
	.4byte _0807C5E0 @ case 2
	.4byte _0807C620 @ case 3
	.4byte _0807C626 @ case 4
	.4byte _0807C70A @ case 5
	.4byte _0807C732 @ case 6
	.4byte _0807C878 @ case 7
	.4byte _0807C878 @ case 8
	.4byte _0807C878 @ case 9
	.4byte _0807C74C @ case 10
	.4byte _0807C75E @ case 11
	.4byte _0807C784 @ case 12
	.4byte _0807C804 @ case 13
_0807C508:
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r6, #0xb]
	adds r0, #1
	b _0807C876
_0807C51A:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C52A
	b _0807C878
_0807C52A:
	bl RandomNumberGenerator
	movs r1, #6
	bl __umodsi3
	mov r8, r0
	bl RandomNumberGenerator
	movs r1, #6
	bl __umodsi3
	adds r7, r0, #0
	movs r4, #0
	movs r0, #0x21
	adds r0, r0, r6
	mov sb, r0
	movs r1, #0x6d
	adds r1, r1, r6
	mov sl, r1
	movs r5, #0x28
_0807C552:
	cmp r4, r8
	beq _0807C568
	cmp r4, r7
	beq _0807C568
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	rsbs r2, r2, #0
	movs r3, #0x6e
	bl sub_0807C9A4
_0807C568:
	adds r5, #0x10
	adds r4, #1
	cmp r4, #6
	ble _0807C552
	bl RandomNumberGenerator
	movs r1, #6
	bl __umodsi3
	mov r8, r0
	bl RandomNumberGenerator
	movs r1, #6
	bl __umodsi3
	adds r7, r0, #0
	movs r4, #0
	movs r5, #0x28
	rsbs r5, r5, #0
_0807C58E:
	cmp r4, r8
	beq _0807C5A4
	cmp r4, r7
	beq _0807C5A4
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	rsbs r2, r2, #0
	movs r3, #0x6e
	bl sub_0807C9A4
_0807C5A4:
	subs r5, #0x10
	adds r4, #1
	cmp r4, #6
	ble _0807C58E
	movs r1, #0
	mov r0, sb
	strb r1, [r0]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #4
	beq _0807C5D0
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0807C5D2
_0807C5D0:
	strb r0, [r6, #0xb]
_0807C5D2:
	ldr r0, _0807C5DC @ =0x00000105
	bl sub_08013D60
	b _0807C878
	.align 2, 0
_0807C5DC: .4byte 0x00000105
_0807C5E0:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0807C5F4
	ldr r0, _0807C61C @ =0x00000105
	bl sub_08013DA8
_0807C5F4:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C604
	b _0807C878
_0807C604:
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	movs r0, #0
	strb r0, [r6, #0xd]
	b _0807C878
	.align 2, 0
_0807C61C: .4byte 0x00000105
_0807C620:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_0807C626:
	ldrb r1, [r6, #0xd]
	movs r4, #3
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0807C638
	ldr r0, _0807C658 @ =0x00000105
	bl sub_08013DA8
_0807C638:
	ldrb r1, [r6, #0xd]
	adds r0, r1, #0
	cmp r0, #0x1d
	bls _0807C6AC
	cmp r0, #0x5a
	bhi _0807C668
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0807C65C
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
	b _0807C6AC
	.align 2, 0
_0807C658: .4byte 0x00000105
_0807C65C:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08011F7C
	b _0807C6AC
_0807C668:
	cmp r0, #0x6e
	bne _0807C678
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0807C678:
	ldrb r1, [r6, #0xd]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0807C6A2
	bl RandomNumberGenerator
	adds r4, r0, #0
	movs r5, #1
	ands r4, r5
	adds r4, #1
	bl RandomNumberGenerator
	adds r2, r0, #0
	ands r2, r5
	adds r2, #1
	movs r0, #0
	adds r1, r4, #0
	bl sub_08011F7C
	b _0807C6AC
_0807C6A2:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08011F7C
_0807C6AC:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xfc
	bhi _0807C6BC
	b _0807C878
_0807C6BC:
	ldr r0, _0807C6F0 @ =0x00000105
	bl sub_08013E18
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	adds r4, r0, #0
	cmp r4, #0
	beq _0807C6D2
	b _0807C820
_0807C6D2:
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #0
	bne _0807C6F4
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #0xa
	b _0807C85E
	.align 2, 0
_0807C6F0: .4byte 0x00000105
_0807C6F4:
	cmp r1, #1
	bne _0807C6FA
	b _0807C854
_0807C6FA:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xb
	b _0807C876
_0807C70A:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C71A
	b _0807C878
_0807C71A:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	b _0807C878
_0807C732:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x59
	bhi _0807C742
	b _0807C878
_0807C742:
	movs r0, #0
	strb r0, [r6, #0xa]
	strb r0, [r6, #0xb]
	strb r0, [r6, #0xd]
	b _0807C878
_0807C74C:
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r6, #0xb]
	adds r0, #1
	b _0807C876
_0807C75E:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C76E
	b _0807C878
_0807C76E:
	adds r0, r6, #0
	adds r0, #0x21
	movs r1, #0
	strb r1, [r0]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #5
	b _0807C85E
_0807C784:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	beq _0807C7A4
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #6
	b _0807C82A
_0807C7A4:
	adds r7, r6, #0
	adds r7, #0x6e
	ldr r5, _0807C800 @ =0x0000FFFF
	ldrh r0, [r7]
	cmp r0, #3
	bne _0807C7D2
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r2, [r4]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1f
	adds r0, r6, #0
	movs r1, #0
	bl sub_0807CC9C
	ldrb r0, [r4]
	lsrs r0, r0, #6
	mov r2, r8
	bics r2, r0
	adds r0, r6, #0
	movs r1, #0
	bl sub_0807CC9C
_0807C7D2:
	ldrh r0, [r7]
	ands r5, r0
	cmp r5, #4
	bne _0807C878
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r2, [r4]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1f
	adds r0, r6, #0
	movs r1, #1
	bl sub_0807CC9C
	ldrb r0, [r4]
	lsrs r0, r0, #6
	mov r2, r8
	bics r2, r0
	adds r0, r6, #0
	movs r1, #1
	bl sub_0807CC9C
	b _0807C878
	.align 2, 0
_0807C800: .4byte 0x0000FFFF
_0807C804:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xef
	bls _0807C878
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	adds r4, r0, #0
	cmp r4, #0
	beq _0807C834
_0807C820:
	movs r0, #0
	strb r0, [r6, #0xa]
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #0
_0807C82A:
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0807C878
_0807C834:
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #0
	bne _0807C850
	movs r0, #5
	strb r0, [r6, #0xb]
	strb r4, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #0xa
	b _0807C85E
_0807C850:
	cmp r1, #1
	bne _0807C868
_0807C854:
	strb r4, [r6, #0xa]
	movs r0, #2
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #3
_0807C85E:
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0807C878
_0807C868:
	adds r0, r6, #0
	movs r1, #0xb
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
_0807C876:
	strb r0, [r6, #0xb]
_0807C878:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807C888
sub_0807C888: @ 0x0807C888
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0xb]
	cmp r1, #1
	beq _0807C8BC
	cmp r1, #1
	bgt _0807C89C
	cmp r1, #0
	beq _0807C8A2
	b _0807C8F8
_0807C89C:
	cmp r1, #2
	beq _0807C8DA
	b _0807C8F8
_0807C8A2:
	ldrb r0, [r2, #0xd]
	adds r1, r0, #1
	strb r1, [r2, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _0807C8F8
	ldrb r0, [r2, #0xb]
	adds r0, #1
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	movs r1, #1
	b _0807C8D0
_0807C8BC:
	adds r0, r2, #0
	adds r0, #0x59
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _0807C8F8
	movs r0, #2
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	movs r1, #3
_0807C8D0:
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0807C8F8
_0807C8DA:
	adds r0, r2, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807C8F8
	movs r0, #3
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0807C8F8:
	pop {r0}
	bx r0

	thumb_func_start sub_0807C8FC
sub_0807C8FC: @ 0x0807C8FC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r0, [r4, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0806B7D8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	bl RandomNumberGenerator
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807C93C
	movs r4, #0
	movs r0, #0x6a
	bl PlaySong
_0807C93C:
	ldrh r0, [r6, #0x34]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #1
	strb r0, [r1]
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _0807C998
	ldr r0, _0807C9A0 @ =0x00000105
	bl sub_08013E18
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x6e
	bl PlaySong
	adds r1, r6, #0
	adds r1, #0x2c
	adds r3, r6, #0
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
	movs r0, #0x28
	strb r0, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
_0807C998:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807C9A0: .4byte 0x00000105

	thumb_func_start sub_0807C9A4
sub_0807C9A4: @ 0x0807C9A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov sb, r1
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0807C9DC @ =sub_0807CAD4
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	bne _0807C9C6
	b _0807CAC6
_0807C9C6:
	ldr r0, _0807C9E0 @ =0x081CBF9C
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	bge _0807C9E4
	adds r0, r4, #0
	bl EntityDelete
	b _0807CAC6
	.align 2, 0
_0807C9DC: .4byte sub_0807CAD4
_0807C9E0: .4byte 0x081CBF9C
_0807C9E4:
	ldr r1, _0807CA54 @ =0x08218D3C
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _0807CA58 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r2, _0807CA5C @ =sub_0807CEF0
	adds r0, r4, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	subs r2, #0x19
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	subs r2, #1
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	adds r6, r2, #0
	cmp r7, r0
	bne _0807CA60
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	adds r1, #0x20
	strb r1, [r4, #0xd]
	b _0807CA62
	.align 2, 0
_0807CA54: .4byte 0x08218D3C
_0807CA58: .4byte sub_0803B9D0
_0807CA5C: .4byte sub_0807CEF0
_0807CA60:
	strb r7, [r4, #0xd]
_0807CA62:
	mov r0, r8
	strh r0, [r4, #0x20]
	cmp r7, #0
	bne _0807CA88
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	movs r0, #2
	strb r0, [r4, #0xa]
	ldrb r1, [r6]
	subs r0, #0x23
	ands r0, r1
	strb r0, [r6]
_0807CA88:
	str r5, [r4, #0x14]
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	add r0, sb
	adds r2, r4, #0
	adds r2, #0x42
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r6]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
_0807CAC6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807CAD4
sub_0807CAD4: @ 0x0807CAD4
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	adds r6, r0, #0
	ldr r0, _0807CAF4 @ =0x3604CAFE
	str r0, [sp, #0x18]
	ldr r4, [r6, #0x14]
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _0807CAE8
	b _0807CC8C
_0807CAE8:
	lsls r0, r0, #2
	ldr r1, _0807CAF8 @ =_0807CAFC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807CAF4: .4byte 0x3604CAFE
_0807CAF8: .4byte _0807CAFC
_0807CAFC: @ jump table
	.4byte _0807CB10 @ case 0
	.4byte _0807CB42 @ case 1
	.4byte _0807CB8A @ case 2
	.4byte _0807CC1C @ case 3
	.4byte _0807CC76 @ case 4
_0807CB10:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807CB20
	b _0807CC8C
_0807CB20:
	adds r0, r6, #0
	movs r1, #0xc
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _0807CC8C
_0807CB42:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807CB52
	b _0807CC8C
_0807CB52:
	cmp r4, #0
	beq _0807CB84
	ldr r0, [r4]
	cmp r0, #0
	beq _0807CB84
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x4d
	bne _0807CB84
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0807CB84
	ldrb r0, [r6, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0807CC8C
_0807CB84:
	ldrb r0, [r2]
	movs r1, #8
	b _0807CC86
_0807CB8A:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _0807CBD0
	bl RandomNumberGenerator
	adds r5, r0, #0
	ldr r4, _0807CC10 @ =0x0001FFFF
	ands r5, r4
	ldr r0, _0807CC14 @ =0xFFFF0000
	adds r5, r5, r0
	bl RandomNumberGenerator
	ands r0, r4
	ldr r4, _0807CC18 @ =0xFFFE0000
	subs r4, r4, r0
	bl RandomNumberGenerator
	movs r3, #1
	ands r3, r0
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	adds r2, r6, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0806DCC4
_0807CBD0:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807CC8C
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	adds r0, r6, #0
	movs r1, #8
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r6, #0xd]
	add r1, sp, #0x18
	adds r0, r6, #0
	bl sub_08042848
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	b _0807CC8C
	.align 2, 0
_0807CC10: .4byte 0x0001FFFF
_0807CC14: .4byte 0xFFFF0000
_0807CC18: .4byte 0xFFFE0000
_0807CC1C:
	add r0, sp, #8
	adds r1, r6, #0
	bl sub_080421AC
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0x20
	ldrsh r1, [r6, r2]
	cmp r0, r1
	blt _0807CC48
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	adds r0, r6, #0
	movs r1, #0xd
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0807CC48:
	cmp r4, #0
	beq _0807CC62
	ldr r0, [r4]
	cmp r0, #0
	beq _0807CC62
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x4d
	bne _0807CC62
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0807CC8C
_0807CC62:
	adds r0, r6, #0
	movs r1, #0xd
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _0807CC92
_0807CC76:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807CC8C
	movs r0, #8
_0807CC86:
	orrs r0, r1
	strb r0, [r2]
	b _0807CC92
_0807CC8C:
	adds r0, r6, #0
	bl sub_0803F17C
_0807CC92:
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807CC9C
sub_0807CC9C: @ 0x0807CC9C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	ldr r2, _0807CCC8 @ =sub_0807CDA8
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0807CDA2
	ldr r0, _0807CCCC @ =0x081CBF9C
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	bge _0807CCD0
	adds r0, r4, #0
	bl EntityDelete
	b _0807CDA2
	.align 2, 0
_0807CCC8: .4byte sub_0807CDA8
_0807CCCC: .4byte 0x081CBF9C
_0807CCD0:
	ldr r1, _0807CD84 @ =0x08218D3C
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #9
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _0807CD88 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_0806B1FC
	ldr r2, _0807CD8C @ =sub_0807CEF0
	adds r0, r4, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	subs r2, #0x19
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	str r5, [r4, #0x14]
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	movs r1, #0x42
	adds r1, r1, r4
	mov ip, r1
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	subs r2, #1
	movs r0, #1
	ands r6, r0
	lsls r3, r6, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807CD90
	mov r0, ip
	ldrh r1, [r0]
	subs r1, #0x80
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #1
	adds r1, r1, r0
	b _0807CD9E
	.align 2, 0
_0807CD84: .4byte 0x08218D3C
_0807CD88: .4byte sub_0803B9D0
_0807CD8C: .4byte sub_0807CEF0
_0807CD90:
	mov r0, ip
	ldrh r1, [r0]
	adds r1, #0x80
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #1
	subs r1, r1, r0
_0807CD9E:
	mov r0, ip
	strh r1, [r0]
_0807CDA2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807CDA8
sub_0807CDA8: @ 0x0807CDA8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0807CDBC
	cmp r0, #1
	beq _0807CE84
	b _0807CEE2
_0807CDBC:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0807CDD0
	movs r0, #0x80
	bl PlaySong
_0807CDD0:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0807CE74
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0x18]
	adds r0, #1
	strb r0, [r4, #0x18]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bgt _0807CE6A
	cmp r0, #3
	bne _0807CE16
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r3, [r2]
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	b _0807CE38
_0807CE16:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807CE2E
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #0x28
	b _0807CE36
_0807CE2E:
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r1]
	subs r0, #0x28
_0807CE36:
	strh r0, [r1]
_0807CE38:
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	strb r0, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	cmp r5, #0
	beq _0807CE6A
	ldr r0, [r5]
	cmp r0, #0
	beq _0807CE6A
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x4d
	bne _0807CE6A
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _0807CEE2
_0807CE6A:
	ldrb r0, [r6]
	movs r1, #8
	orrs r0, r1
	strb r0, [r6]
	b _0807CEE8
_0807CE74:
	adds r0, r4, #0
	bl sub_0806B1FC
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _0807CEE2
_0807CE84:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _0807CEBA
	adds r0, r4, #0
	movs r1, #9
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	strb r0, [r4, #0xa]
	adds r2, #0x1a
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
_0807CEBA:
	cmp r5, #0
	beq _0807CED4
	ldr r0, [r5]
	cmp r0, #0
	beq _0807CED4
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x4d
	bne _0807CED4
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _0807CEE2
_0807CED4:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0807CEE8
_0807CEE2:
	adds r0, r4, #0
	bl sub_0803F17C
_0807CEE8:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0807CEF0
sub_0807CEF0: @ 0x0807CEF0
	push {lr}
	sub sp, #0x10
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r2, #0
	strh r1, [r3]
	mov r1, sp
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	mov r2, sp
	movs r1, #1
	strh r1, [r2, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_0807CF20
sub_0807CF20: @ 0x0807CF20
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0807CF54 @ =0x081CBF9C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0807CF64
	ldr r0, _0807CF58 @ =0x0820A674
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0807CF5C @ =0x08218D3C
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _0807CF60 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0807CF66
	.align 2, 0
_0807CF54: .4byte 0x081CBF9C
_0807CF58: .4byte 0x0820A674
_0807CF5C: .4byte 0x08218D3C
_0807CF60: .4byte sub_0803B9D0
_0807CF64:
	movs r0, #0
_0807CF66:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0807CF6C
sub_0807CF6C: @ 0x0807CF6C
	push {lr}
	sub sp, #0x10
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r2, #0
	strh r1, [r3]
	mov r1, sp
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	mov r2, sp
	movs r1, #1
	strh r1, [r2, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start EnemyAluraUneUpdate
EnemyAluraUneUpdate: @ 0x0807CF9C
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	beq _0807CFD4
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
	bne _0807D020
	ldr r0, _0807CFD0 @ =0x00000105
	bl sub_08013E18
	b _0807D020
	.align 2, 0
_0807CFD0: .4byte 0x00000105
_0807CFD4:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0807CFF6
	cmp r0, #1
	bgt _0807CFE4
	cmp r0, #0
	beq _0807CFEE
	b _0807D014
_0807CFE4:
	cmp r0, #2
	beq _0807CFFE
	cmp r0, #3
	beq _0807D006
	b _0807D014
_0807CFEE:
	adds r0, r4, #0
	bl sub_0807C150
	b _0807D014
_0807CFF6:
	adds r0, r4, #0
	bl sub_0807C494
	b _0807D014
_0807CFFE:
	adds r0, r4, #0
	bl sub_0806AEAC
	b _0807D014
_0807D006:
	adds r0, r4, #0
	bl sub_0807C888
	adds r0, r4, #0
	bl sub_0803F17C
	b _0807D020
_0807D014:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_0807D020:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start EnemyGiantGhostUpdate
EnemyGiantGhostUpdate: @ 0x0807D028
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r7, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _0807D120
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _0807D05C
	cmp r0, #1
	bgt _0807D04A
	cmp r0, #0
	beq _0807D054
	b _0807D114
_0807D04A:
	cmp r0, #2
	beq _0807D064
	cmp r0, #3
	beq _0807D10C
	b _0807D114
_0807D054:
	adds r0, r7, #0
	bl sub_0807D33C
	b _0807D114
_0807D05C:
	adds r0, r7, #0
	bl sub_0807D65C
	b _0807D114
_0807D064:
	ldrb r0, [r7, #0xd]
	bl sub_0806D518
	adds r3, r7, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0807D098
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0807D098:
	ldrb r0, [r7, #0xd]
	cmp r0, #0x28
	bls _0807D114
	movs r1, #7
	mov r8, r1
	mov r2, r8
	ands r2, r0
	mov r8, r2
	cmp r2, #1
	bne _0807D114
	bl RandomNumberGenerator
	adds r5, r0, #0
	ldr r6, _0807D0FC @ =0x001FFFFF
	ands r5, r6
	ldr r0, _0807D100 @ =0xFFF00000
	adds r5, r5, r0
	bl RandomNumberGenerator
	adds r4, r0, #0
	ands r4, r6
	rsbs r4, r4, #0
	bl RandomNumberGenerator
	ldr r6, _0807D104 @ =0x00007FFF
	ands r6, r0
	ldr r1, _0807D108 @ =0xFFFFC000
	adds r6, r6, r1
	bl RandomNumberGenerator
	mov r2, r8
	ands r2, r0
	mov r8, r2
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r1, r1, r4
	adds r2, r7, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r2, r6, #0
	movs r3, #0
	bl sub_0807E228
	b _0807D114
	.align 2, 0
_0807D0FC: .4byte 0x001FFFFF
_0807D100: .4byte 0xFFF00000
_0807D104: .4byte 0x00007FFF
_0807D108: .4byte 0xFFFFC000
_0807D10C:
	adds r0, r7, #0
	bl sub_0803F17C
	b _0807D120
_0807D114:
	adds r0, r7, #0
	bl sub_0806DF20
	adds r0, r7, #0
	bl sub_0806E314
_0807D120:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start EnemyGiantGhostCreate
EnemyGiantGhostCreate: @ 0x0807D12C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_0807E2CC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807D13C
	b _0807D2C0
_0807D13C:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	adds r0, r6, #0
	bl sub_0806B04C
	movs r7, #0
_0807D156:
	movs r5, #0
	cmp r7, #1
	beq _0807D174
	cmp r7, #1
	bgt _0807D166
	cmp r7, #0
	beq _0807D16C
	b _0807D184
_0807D166:
	cmp r7, #2
	beq _0807D17C
	b _0807D184
_0807D16C:
	ldr r0, _0807D170 @ =sub_0807D9B8
	b _0807D17E
	.align 2, 0
_0807D170: .4byte sub_0807D9B8
_0807D174:
	ldr r0, _0807D178 @ =sub_0807DBB4
	b _0807D17E
	.align 2, 0
_0807D178: .4byte sub_0807DBB4
_0807D17C:
	ldr r0, _0807D198 @ =sub_0807DE14
_0807D17E:
	bl sub_0806DFF8
	adds r5, r0, #0
_0807D184:
	cmp r5, #0
	bne _0807D18A
	b _0807D2C0
_0807D18A:
	cmp r7, #0
	bne _0807D19C
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	b _0807D1A4
	.align 2, 0
_0807D198: .4byte sub_0807DE14
_0807D19C:
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
_0807D1A4:
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _0807D208 @ =0x081CBFA4
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r4, r6, #0
	adds r4, #0x2c
	ldrb r3, [r4]
	adds r0, r5, #0
	ldr r1, _0807D20C @ =0x08219140
	bl sub_0803B924
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r3, #3
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0807D210 @ =sub_0803B9D0
	str r0, [r5, #4]
	str r6, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x20
	strb r7, [r0]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	adds r4, r2, #0
	cmp r7, #1
	beq _0807D220
	cmp r7, #1
	bgt _0807D214
	cmp r7, #0
	beq _0807D21A
	b _0807D23A
	.align 2, 0
_0807D208: .4byte 0x081CBFA4
_0807D20C: .4byte 0x08219140
_0807D210: .4byte sub_0803B9D0
_0807D214:
	cmp r7, #2
	beq _0807D22E
	b _0807D23A
_0807D21A:
	adds r0, r5, #0
	movs r1, #6
	b _0807D224
_0807D220:
	adds r0, r5, #0
	movs r1, #8
_0807D224:
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0807D23A
_0807D22E:
	adds r0, r5, #0
	movs r1, #7
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0807D23A:
	adds r0, r5, #0
	bl sub_0803F17C
	cmp r7, #0
	bne _0807D288
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	blt _0807D304
	adds r2, r5, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r0, [r2]
	movs r1, #0x20
	rsbs r1, r1, #0
	mov ip, r1
	mov r1, ip
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldrb r1, [r4]
	movs r0, #0x10
	orrs r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r4]
	adds r2, #2
	ldrb r1, [r2]
	movs r3, #7
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
_0807D288:
	ldr r2, _0807D2B4 @ =gEwramData
	ldr r0, [r2]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807D2C8
	ldr r0, [r5, #0x40]
	ldr r1, _0807D2B8 @ =0xFFE00000
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x44]
	ldr r3, _0807D2BC @ =0xFFD80000
	adds r0, r0, r3
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x22
	movs r0, #0
	strb r0, [r1]
	b _0807D2C8
	.align 2, 0
_0807D2B4: .4byte gEwramData
_0807D2B8: .4byte 0xFFE00000
_0807D2BC: .4byte 0xFFD80000
_0807D2C0:
	adds r0, r6, #0
	bl EntityDelete
	b _0807D32E
_0807D2C8:
	adds r7, #1
	cmp r7, #2
	bgt _0807D2D0
	b _0807D156
_0807D2D0:
	ldr r0, [r2]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807D2E4
	movs r0, #3
	strb r0, [r6, #0xa]
	b _0807D32E
_0807D2E4:
	adds r0, r6, #0
	bl sub_0806D260
	cmp r0, #1
	ble _0807D312
	ldr r2, _0807D2FC @ =sub_0807E328
	ldr r3, _0807D300 @ =sub_0807D88C
	adds r0, r6, #0
	movs r1, #8
	bl sub_080427B8
	b _0807D31E
	.align 2, 0
_0807D2FC: .4byte sub_0807E328
_0807D300: .4byte sub_0807D88C
_0807D304:
	adds r0, r6, #0
	bl EntityDelete
	adds r0, r5, #0
	bl EntityDelete
	b _0807D32E
_0807D312:
	ldr r2, _0807D334 @ =sub_0807E328
	ldr r3, _0807D338 @ =sub_0807D88C
	adds r0, r6, #0
	movs r1, #8
	bl sub_0804277C
_0807D31E:
	adds r0, r6, #0
	bl sub_0806B1FC
	movs r0, #0
	strb r0, [r6, #0xa]
	adds r0, r6, #0
	bl sub_0806CCD0
_0807D32E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807D334: .4byte sub_0807E328
_0807D338: .4byte sub_0807D88C

	thumb_func_start sub_0807D33C
sub_0807D33C: @ 0x0807D33C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0807D364 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0807D368 @ =0x0000A094
	adds r6, r0, r1
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xdc
	bls _0807D36C
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	b _0807D378
	.align 2, 0
_0807D364: .4byte gEwramData
_0807D368: .4byte 0x0000A094
_0807D36C:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r2, [r0]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
_0807D378:
	strb r1, [r0]
	adds r4, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0xd
	bls _0807D384
	b _0807D64E
_0807D384:
	lsls r0, r0, #2
	ldr r1, _0807D390 @ =_0807D394
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807D390: .4byte _0807D394
_0807D394: @ jump table
	.4byte _0807D3CC @ case 0
	.4byte _0807D444 @ case 1
	.4byte _0807D4BC @ case 2
	.4byte _0807D4D6 @ case 3
	.4byte _0807D64E @ case 4
	.4byte _0807D64E @ case 5
	.4byte _0807D64E @ case 6
	.4byte _0807D64E @ case 7
	.4byte _0807D64E @ case 8
	.4byte _0807D64E @ case 9
	.4byte _0807D530 @ case 10
	.4byte _0807D53C @ case 11
	.4byte _0807D5A8 @ case 12
	.4byte _0807D5DE @ case 13
_0807D3CC:
	adds r0, r5, #0
	bl sub_0806CF2C
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r4, r0, #0
	cmp r4, #0
	bne _0807D426
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	beq _0807D426
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xb]
	str r4, [r5, #0x14]
	adds r0, r5, #0
	movs r1, #0
	b _0807D43A
_0807D426:
	movs r1, #0
	strb r1, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	adds r0, #0x21
	strb r1, [r0]
	adds r0, r5, #0
	movs r1, #3
_0807D43A:
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0807D64E
_0807D444:
	adds r2, r5, #0
	adds r2, #0x21
	movs r7, #0
	ldrsb r7, [r2, r7]
	cmp r7, #0
	beq _0807D45E
	movs r1, #0
	movs r0, #0xa
	strb r0, [r5, #0xb]
	strb r1, [r2]
	adds r0, r5, #0
	movs r1, #2
	b _0807D5D4
_0807D45E:
	ldr r1, [r5, #0x14]
	ldr r0, _0807D4B4 @ =0x0000BFFF
	cmp r1, r0
	bgt _0807D46E
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [r5, #0x14]
_0807D46E:
	adds r0, r5, #0
	bl sub_0806CD38
	adds r4, r0, #0
	ldr r0, [r6, #4]
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_0806CD78
	adds r2, r0, #0
	ldr r0, [r6, #8]
	adds r2, r2, r0
	ldr r0, _0807D4B8 @ =0xFFD00000
	adds r2, r2, r0
	ldr r3, [r5, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080694B8
	adds r0, r5, #0
	bl sub_0806D3AC
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bhi _0807D4AA
	b _0807D64E
_0807D4AA:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _0807D64C
	.align 2, 0
_0807D4B4: .4byte 0x0000BFFF
_0807D4B8: .4byte 0xFFD00000
_0807D4BC:
	adds r2, r5, #0
	adds r2, #0x21
	movs r4, #0
	ldrsb r4, [r2, r4]
	cmp r4, #0
	beq _0807D5B4
	movs r1, #0
	movs r0, #0xa
	strb r0, [r5, #0xb]
	strb r1, [r2]
	adds r0, r5, #0
	movs r1, #2
	b _0807D5D4
_0807D4D6:
	adds r2, r5, #0
	adds r2, #0x21
	movs r7, #0
	ldrsb r7, [r2, r7]
	cmp r7, #0
	beq _0807D4F0
	movs r1, #0
	movs r0, #0xa
	strb r0, [r5, #0xb]
	strb r1, [r2]
	adds r0, r5, #0
	movs r1, #2
	b _0807D5D4
_0807D4F0:
	ldr r1, [r5, #0x14]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	ble _0807D500
	ldr r2, _0807D528 @ =0xFFFFF800
	adds r0, r1, r2
	str r0, [r5, #0x14]
_0807D500:
	adds r0, r5, #0
	bl sub_0806CD38
	adds r4, r0, #0
	ldr r0, [r6, #4]
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_0806CD78
	adds r2, r0, #0
	ldr r0, [r6, #8]
	adds r2, r2, r0
	ldr r0, _0807D52C @ =0xFFD00000
	adds r2, r2, r0
	ldr r3, [r5, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080694B8
	b _0807D636
	.align 2, 0
_0807D528: .4byte 0xFFFFF800
_0807D52C: .4byte 0xFFD00000
_0807D530:
	movs r1, #0
	str r1, [r5, #0x14]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
_0807D53C:
	ldr r1, [r5, #0x14]
	ldr r0, _0807D5A0 @ =0x0000BFFF
	cmp r1, r0
	bgt _0807D54C
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [r5, #0x14]
_0807D54C:
	adds r0, r5, #0
	bl sub_0806CD38
	adds r4, r0, #0
	ldr r0, [r6, #4]
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_0806CD78
	adds r2, r0, #0
	ldr r0, [r6, #8]
	adds r2, r2, r0
	ldr r0, _0807D5A4 @ =0xFFD00000
	adds r2, r2, r0
	ldr r3, [r5, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080694B8
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x14]
	rsbs r0, r0, #0
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	bl sub_0806D3AC
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _0807D64E
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xd]
	b _0807D64E
	.align 2, 0
_0807D5A0: .4byte 0x0000BFFF
_0807D5A4: .4byte 0xFFD00000
_0807D5A8:
	adds r2, r5, #0
	adds r2, #0x21
	movs r4, #0
	ldrsb r4, [r2, r4]
	cmp r4, #0
	bne _0807D5EA
_0807D5B4:
	adds r0, r5, #0
	bl sub_0806D3AC
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _0807D64E
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r4, [r5, #0xd]
	adds r0, r5, #0
	movs r1, #0
_0807D5D4:
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0807D64E
_0807D5DE:
	adds r2, r5, #0
	adds r2, #0x21
	movs r7, #0
	ldrsb r7, [r2, r7]
	cmp r7, #0
	beq _0807D5F4
_0807D5EA:
	movs r1, #0
	movs r0, #0xa
	strb r0, [r5, #0xb]
	strb r1, [r2]
	b _0807D64E
_0807D5F4:
	ldr r1, [r5, #0x14]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	ble _0807D604
	ldr r2, _0807D654 @ =0xFFFFF800
	adds r0, r1, r2
	str r0, [r5, #0x14]
_0807D604:
	adds r0, r5, #0
	bl sub_0806CD38
	adds r4, r0, #0
	ldr r0, [r6, #4]
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_0806CD78
	adds r2, r0, #0
	ldr r0, [r6, #8]
	adds r2, r2, r0
	ldr r0, _0807D658 @ =0xFFD00000
	adds r2, r2, r0
	ldr r3, [r5, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080694B8
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	rsbs r0, r0, #0
	str r0, [r5, #0x4c]
_0807D636:
	adds r0, r5, #0
	bl sub_0806D3AC
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0807D64E
	strb r7, [r5, #0xb]
_0807D64C:
	strb r7, [r5, #0xd]
_0807D64E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807D654: .4byte 0xFFFFF800
_0807D658: .4byte 0xFFD00000

	thumb_func_start sub_0807D65C
sub_0807D65C: @ 0x0807D65C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0807D67C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0807D680 @ =0x0000A094
	adds r6, r0, r1
	ldrb r0, [r5, #0xb]
	cmp r0, #6
	bls _0807D670
	b _0807D884
_0807D670:
	lsls r0, r0, #2
	ldr r1, _0807D684 @ =_0807D688
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807D67C: .4byte gEwramData
_0807D680: .4byte 0x0000A094
_0807D684: .4byte _0807D688
_0807D688: @ jump table
	.4byte _0807D6A4 @ case 0
	.4byte _0807D708 @ case 1
	.4byte _0807D720 @ case 2
	.4byte _0807D78C @ case 3
	.4byte _0807D7F4 @ case 4
	.4byte _0807D82C @ case 5
	.4byte _0807D868 @ case 6
_0807D6A4:
	ldr r1, [r5, #0x14]
	ldr r0, _0807D700 @ =0x0000BFFF
	cmp r1, r0
	bgt _0807D6B4
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [r5, #0x14]
_0807D6B4:
	adds r0, r5, #0
	bl sub_0806CD38
	adds r4, r0, #0
	ldr r0, [r6, #4]
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_0806CD78
	adds r2, r0, #0
	ldr r0, [r6, #8]
	adds r2, r2, r0
	ldr r0, _0807D704 @ =0xFFF00000
	adds r2, r2, r0
	ldr r3, [r5, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080694B8
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	rsbs r0, r0, #0
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	bl sub_0806D3AC
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bhi _0807D6FC
	b _0807D884
_0807D6FC:
	b _0807D778
	.align 2, 0
_0807D700: .4byte 0x0000BFFF
_0807D704: .4byte 0xFFF00000
_0807D708:
	adds r0, r5, #0
	bl sub_0806D3AC
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bhi _0807D71E
	b _0807D884
_0807D71E:
	b _0807D778
_0807D720:
	ldr r1, [r5, #0x14]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	ble _0807D730
	ldr r2, _0807D784 @ =0xFFFFF800
	adds r0, r1, r2
	str r0, [r5, #0x14]
_0807D730:
	adds r0, r5, #0
	bl sub_0806CD38
	adds r4, r0, #0
	ldr r0, [r6, #4]
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_0806CD78
	adds r2, r0, #0
	ldr r0, [r6, #8]
	adds r2, r2, r0
	ldr r0, _0807D788 @ =0xFFF00000
	adds r2, r2, r0
	ldr r3, [r5, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080694B8
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	rsbs r0, r0, #0
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	bl sub_0806D3AC
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _0807D778
	b _0807D884
_0807D778:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xd]
	b _0807D884
	.align 2, 0
_0807D784: .4byte 0xFFFFF800
_0807D788: .4byte 0xFFF00000
_0807D78C:
	adds r0, r5, #0
	bl sub_0806CF2C
	adds r3, r5, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _0807D884
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xd]
	movs r0, #0x87
	bl PlaySong
	adds r0, r5, #0
	bl sub_0806CD38
	ldr r1, [r6, #4]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	adds r0, r5, #0
	bl sub_0806CD78
	ldr r1, [r6, #8]
	adds r0, r0, r1
	ldr r1, _0807D7F0 @ =0xFFF00000
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0807D884
	.align 2, 0
_0807D7F0: .4byte 0xFFF00000
_0807D7F4:
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x1c]
	ldr r0, _0807D828 @ =0xFFE00000
	adds r2, r2, r0
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r5, #0
	bl sub_080694B8
	cmp r0, #0
	beq _0807D820
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0xd]
_0807D820:
	adds r0, r5, #0
	bl sub_0806D3AC
	b _0807D884
	.align 2, 0
_0807D828: .4byte 0xFFE00000
_0807D82C:
	adds r0, r5, #0
	movs r1, #8
	bl sub_0806D490
	adds r0, r5, #0
	movs r1, #8
	bl sub_0806D4A8
	adds r0, r5, #0
	bl sub_0806D3AC
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2c
	bls _0807D884
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	strb r4, [r5, #0xd]
	b _0807D884
_0807D868:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0807D884
	movs r0, #0
	strb r0, [r5, #0xa]
	strb r0, [r5, #0xb]
	strb r0, [r5, #0xd]
	adds r1, r5, #0
	adds r1, #0x21
	strb r0, [r1]
_0807D884:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807D88C
sub_0807D88C: @ 0x0807D88C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r0, [r4, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0806B7D8
	adds r1, r0, #0
	adds r2, r7, #0
	adds r2, #0x2d
	movs r0, #8
	strb r0, [r2]
	ldrh r0, [r7, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x34]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08042B8C
	movs r1, #0x34
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bgt _0807D998
	adds r0, r7, #0
	bl sub_080683BC
	movs r0, #0x6b
	bl PlaySong
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r7, #0
	adds r1, #0x2c
	adds r3, r7, #0
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
	movs r0, #0x5a
	strb r0, [r7, #0xd]
	movs r2, #2
	movs r0, #2
	strb r0, [r7, #0xa]
	movs r0, #0
	strb r0, [r7, #0xb]
	ldrb r1, [r3]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r4, r7, #0
	adds r4, #0x5c
	str r4, [sp, #8]
	ldr r0, _0807D9A8 @ =0xFFFF0000
	mov sl, r0
	movs r1, #3
	mov sb, r1
_0807D934:
	bl RandomNumberGenerator
	adds r6, r0, #0
	ldr r4, _0807D9AC @ =0x000FFFFF
	ands r6, r4
	ldr r0, _0807D9B0 @ =0xFFF80000
	adds r6, r6, r0
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r1, _0807D9AC @ =0x000FFFFF
	ands r4, r1
	rsbs r4, r4, #0
	bl RandomNumberGenerator
	mov r8, r0
	ldr r1, _0807D9B4 @ =0x0001FFFF
	ands r0, r1
	mov r8, r0
	add r8, sl
	bl RandomNumberGenerator
	adds r5, r0, #0
	ldr r0, _0807D9B4 @ =0x0001FFFF
	ands r5, r0
	mov r1, sl
	subs r5, r1, r5
	bl RandomNumberGenerator
	movs r3, #1
	ands r3, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r6
	ldr r1, [r7, #0x44]
	adds r1, r1, r4
	ldr r4, [sp, #8]
	ldrb r2, [r4]
	subs r2, #1
	str r2, [sp]
	str r3, [sp, #4]
	mov r2, r8
	adds r3, r5, #0
	bl sub_0807E228
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	cmp r1, #0
	bge _0807D934
_0807D998:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807D9A8: .4byte 0xFFFF0000
_0807D9AC: .4byte 0x000FFFFF
_0807D9B0: .4byte 0xFFF80000
_0807D9B4: .4byte 0x0001FFFF

	thumb_func_start sub_0807D9B8
sub_0807D9B8: @ 0x0807D9B8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _0807D9D0
	b _0807DB1E
_0807D9D0:
	mov r1, r8
	cmp r1, #0
	bne _0807D9D8
	b _0807DB08
_0807D9D8:
	ldr r0, [r1]
	cmp r0, #0
	bne _0807D9E0
	b _0807DB08
_0807D9E0:
	mov r0, r8
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x13
	beq _0807D9EC
	b _0807DB08
_0807D9EC:
	mov r3, r8
	adds r3, #0x58
	ldrb r0, [r3]
	adds r4, r7, #0
	adds r4, #0x58
	movs r1, #0x20
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	mov r0, r8
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r5, r7, #0
	adds r5, #0x5a
	movs r1, #0x78
	ands r1, r0
	ldrb r2, [r5]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	ldrb r0, [r3]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	mov r0, r8
	bl sub_0806ADBC
	mov sb, r4
	cmp r0, #0
	bne _0807DA80
	ldr r0, [r7, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	bl sub_0803F17C
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0807DA80
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r6, _0807DA98 @ =0x0007FFFF
	ands r4, r6
	ldr r5, _0807DA9C @ =0xFFFC0000
	adds r4, r4, r5
	bl RandomNumberGenerator
	ands r0, r6
	adds r0, r0, r5
	ldr r1, [r7, #0x40]
	adds r1, r1, r4
	ldr r2, [r7, #0x44]
	adds r2, r2, r0
	adds r0, r7, #0
	bl sub_0807E074
_0807DA80:
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807DAA0
	mov r0, r8
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #4
	b _0807DAA8
	.align 2, 0
_0807DA98: .4byte 0x0007FFFF
_0807DA9C: .4byte 0xFFFC0000
_0807DAA0:
	mov r0, r8
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #4
_0807DAA8:
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r0, r8
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x12
	adds r1, r7, #0
	adds r1, #0x46
	strh r0, [r1]
	ldr r0, [r7, #0x1c]
	bl sub_080009E4
	cmp r0, #0
	bge _0807DAC8
	adds r0, #0xf
_0807DAC8:
	asrs r2, r0, #4
	movs r3, #0xd8
	lsls r3, r3, #9
	adds r1, r2, r3
	str r1, [r7, #0x48]
	movs r0, #0xe8
	lsls r0, r0, #9
	adds r2, r2, r0
	str r2, [r7, #0x4c]
	mov r3, sb
	ldrb r0, [r3]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r0, #7
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	bl sub_0803E238
	mov r1, r8
	ldrb r0, [r1, #0xa]
	cmp r0, #2
	bne _0807DBA2
	movs r0, #1
	strb r0, [r7, #0xa]
	movs r0, #0
	strb r0, [r7, #0xb]
	movs r0, #0x6e
	strb r0, [r7, #0xd]
	b _0807DBA2
_0807DB08:
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r7, #0
	bl EntityDelete
	b _0807DBA2
_0807DB1E:
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	bne _0807DB34
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_0807DB34:
	ldrb r1, [r7, #0xd]
	ldr r5, [r7, #0x48]
	adds r0, r5, #0
	bl __divsi3
	subs r5, r5, r0
	str r5, [r7, #0x48]
	ldrb r1, [r7, #0xd]
	ldr r4, [r7, #0x4c]
	adds r0, r4, #0
	bl __divsi3
	subs r4, r4, r0
	str r4, [r7, #0x4c]
	ldr r0, _0807DBB0 @ =0x0000FFFF
	cmp r5, r0
	bgt _0807DB62
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
_0807DB62:
	ldr r1, [r7, #0x48]
	ldr r2, [r7, #0x4c]
	adds r5, r7, #0
	adds r5, #0x58
	ldrb r0, [r5]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r0, #7
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	bl sub_0803E238
	adds r0, r7, #0
	bl sub_0803F17C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0807DBA2
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r7, #0
	bl EntityDelete
_0807DBA2:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807DBB0: .4byte 0x0000FFFF

	thumb_func_start sub_0807DBB4
sub_0807DBB4: @ 0x0807DBB4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r7, [r6, #0x14]
	ldrb r0, [r6, #0xa]
	mov ip, r0
	cmp r0, #0
	beq _0807DBCA
	b _0807DDFC
_0807DBCA:
	cmp r7, #0
	bne _0807DBD0
	b _0807DDF4
_0807DBD0:
	ldr r0, [r7]
	cmp r0, #0
	bne _0807DBD8
	b _0807DDF4
_0807DBD8:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x13
	beq _0807DBE4
	b _0807DDF4
_0807DBE4:
	adds r4, r7, #0
	adds r4, #0x58
	ldrb r0, [r4]
	adds r3, r6, #0
	adds r3, #0x58
	movs r1, #0x20
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r7, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r5, r6, #0
	adds r5, #0x5a
	movs r1, #0x78
	ands r1, r0
	ldrb r2, [r5]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	ldrb r0, [r4]
	movs r5, #1
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0807DC74 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r4, #0x40
	adds r0, r4, #0
	ands r0, r1
	mov r8, r3
	cmp r0, #0
	beq _0807DD24
	adds r2, r6, #0
	adds r2, #0x22
	movs r3, #0
	ldrsb r3, [r2, r3]
	cmp r3, #0
	beq _0807DC7C
	ldr r0, [r6, #0x18]
	ldr r1, _0807DC78 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r6, #0x18]
	ldr r0, [r6, #0x1c]
	adds r0, r0, r1
	str r0, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x23
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3b
	ble _0807DCA6
	mov r0, ip
	strb r0, [r1]
	b _0807DCA0
	.align 2, 0
_0807DC74: .4byte gEwramData
_0807DC78: .4byte 0xFFFF0000
_0807DC7C:
	ldr r0, [r6, #0x18]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r6, #0x18]
	ldr r0, [r6, #0x1c]
	adds r0, r0, r1
	str r0, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x23
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3b
	ble _0807DCA6
	strb r3, [r1]
_0807DCA0:
	ldrb r0, [r2]
	eors r0, r5
	strb r0, [r2]
_0807DCA6:
	ldr r0, [r7, #0x40]
	ldr r1, _0807DCCC @ =0xFFFF0000
	adds r4, r0, r1
	ldr r0, [r7, #0x44]
	ldr r1, _0807DCD0 @ =0xFFE20000
	adds r5, r0, r1
	ldr r0, [r6, #0x18]
	subs r4, r0, r4
	ldr r0, [r6, #0x1c]
	subs r5, r0, r5
	cmp r4, #0
	bge _0807DCD4
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _0807DCD6
	.align 2, 0
_0807DCCC: .4byte 0xFFFF0000
_0807DCD0: .4byte 0xFFE20000
_0807DCD4:
	asrs r2, r4, #0x10
_0807DCD6:
	cmp r5, #0
	bge _0807DCE6
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _0807DCE8
_0807DCE6:
	asrs r1, r5, #0x10
_0807DCE8:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, r1
	bl sub_080009E4
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_080009E4
	adds r5, r0, #0
	lsls r0, r4, #1
	adds r2, r0, r4
	str r2, [r6, #0x48]
	lsls r0, r5, #1
	str r0, [r6, #0x4c]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807DDC4
	ldr r1, _0807DD20 @ =0xFFFF0000
	b _0807DDC8
	.align 2, 0
_0807DD20: .4byte 0xFFFF0000
_0807DD24:
	adds r0, r7, #0
	bl sub_0806ADBC
	cmp r0, #0
	bne _0807DDCC
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0807DD42
	ldr r0, [r7, #0x40]
	movs r1, #0x80
	lsls r1, r1, #9
	b _0807DD46
_0807DD42:
	ldr r0, [r7, #0x40]
	ldr r1, _0807DD70 @ =0xFFFF0000
_0807DD46:
	adds r4, r0, r1
	ldr r0, [r7, #0x44]
	ldr r1, _0807DD70 @ =0xFFFF0000
	adds r5, r0, r1
	adds r0, r6, #0
	bl sub_0806CD38
	subs r4, r0, r4
	adds r0, r6, #0
	bl sub_0806CD78
	subs r5, r0, r5
	cmp r4, #0
	bge _0807DD74
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _0807DD76
	.align 2, 0
_0807DD70: .4byte 0xFFFF0000
_0807DD74:
	asrs r2, r4, #0x10
_0807DD76:
	cmp r5, #0
	bge _0807DD86
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _0807DD88
_0807DD86:
	asrs r1, r5, #0x10
_0807DD88:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, r1
	bl sub_080009E4
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_080009E4
	adds r5, r0, #0
	lsls r0, r4, #1
	adds r2, r0, r4
	str r2, [r6, #0x48]
	lsls r0, r5, #1
	str r0, [r6, #0x4c]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807DDC4
	ldr r1, _0807DDC0 @ =0xFFFF0000
	b _0807DDC8
	.align 2, 0
_0807DDC0: .4byte 0xFFFF0000
_0807DDC4:
	movs r1, #0x80
	lsls r1, r1, #9
_0807DDC8:
	adds r0, r2, r1
	str r0, [r6, #0x48]
_0807DDCC:
	ldr r0, [r7, #0x40]
	ldr r1, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldrb r0, [r7, #0xa]
	cmp r0, #2
	bne _0807DE08
	movs r0, #1
	strb r0, [r6, #0xa]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _0807DE08
_0807DDF4:
	adds r0, r6, #0
	bl EntityDelete
	b _0807DE08
_0807DDFC:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0807DE08:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807DE14
sub_0807DE14: @ 0x0807DE14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r7, [r6, #0x14]
	ldrb r0, [r6, #0xa]
	mov ip, r0
	cmp r0, #0
	beq _0807DE2A
	b _0807E05C
_0807DE2A:
	cmp r7, #0
	bne _0807DE30
	b _0807E054
_0807DE30:
	ldr r0, [r7]
	cmp r0, #0
	bne _0807DE38
	b _0807E054
_0807DE38:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x13
	beq _0807DE44
	b _0807E054
_0807DE44:
	adds r4, r7, #0
	adds r4, #0x58
	ldrb r0, [r4]
	adds r3, r6, #0
	adds r3, #0x58
	movs r1, #0x20
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r7, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r5, r6, #0
	adds r5, #0x5a
	movs r1, #0x78
	ands r1, r0
	ldrb r2, [r5]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	ldrb r0, [r4]
	movs r5, #1
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0807DED4 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r4, #0x40
	adds r0, r4, #0
	ands r0, r1
	mov r8, r3
	cmp r0, #0
	beq _0807DF84
	adds r2, r6, #0
	adds r2, #0x22
	movs r3, #0
	ldrsb r3, [r2, r3]
	cmp r3, #0
	beq _0807DEDC
	ldr r0, [r6, #0x18]
	ldr r1, _0807DED8 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r6, #0x18]
	ldr r0, [r6, #0x1c]
	adds r0, r0, r1
	str r0, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x23
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3b
	ble _0807DF06
	mov r0, ip
	strb r0, [r1]
	b _0807DF00
	.align 2, 0
_0807DED4: .4byte gEwramData
_0807DED8: .4byte 0xFFFF0000
_0807DEDC:
	ldr r0, [r6, #0x18]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r6, #0x18]
	ldr r0, [r6, #0x1c]
	adds r0, r0, r1
	str r0, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x23
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3b
	ble _0807DF06
	strb r3, [r1]
_0807DF00:
	ldrb r0, [r2]
	eors r0, r5
	strb r0, [r2]
_0807DF06:
	ldr r0, [r7, #0x40]
	ldr r1, _0807DF2C @ =0xFFFC0000
	adds r4, r0, r1
	ldr r0, [r7, #0x44]
	ldr r1, _0807DF30 @ =0xFFDC0000
	adds r5, r0, r1
	ldr r0, [r6, #0x18]
	subs r4, r0, r4
	ldr r0, [r6, #0x1c]
	subs r5, r0, r5
	cmp r4, #0
	bge _0807DF34
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _0807DF36
	.align 2, 0
_0807DF2C: .4byte 0xFFFC0000
_0807DF30: .4byte 0xFFDC0000
_0807DF34:
	asrs r2, r4, #0x10
_0807DF36:
	cmp r5, #0
	bge _0807DF46
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _0807DF48
_0807DF46:
	asrs r1, r5, #0x10
_0807DF48:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, r1
	bl sub_080009E4
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_080009E4
	adds r5, r0, #0
	lsls r2, r4, #1
	str r2, [r6, #0x48]
	lsls r0, r5, #1
	str r0, [r6, #0x4c]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807E024
	ldr r1, _0807DF80 @ =0xFFFF0000
	b _0807E028
	.align 2, 0
_0807DF80: .4byte 0xFFFF0000
_0807DF84:
	adds r0, r7, #0
	bl sub_0806ADBC
	cmp r0, #0
	bne _0807E02C
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0807DFA2
	ldr r0, [r7, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0xb
	b _0807DFA6
_0807DFA2:
	ldr r0, [r7, #0x40]
	ldr r1, _0807DFD0 @ =0xFFFC0000
_0807DFA6:
	adds r4, r0, r1
	ldr r0, [r7, #0x44]
	ldr r1, _0807DFD0 @ =0xFFFC0000
	adds r5, r0, r1
	adds r0, r6, #0
	bl sub_0806CD38
	subs r4, r0, r4
	adds r0, r6, #0
	bl sub_0806CD78
	subs r5, r0, r5
	cmp r4, #0
	bge _0807DFD4
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _0807DFD6
	.align 2, 0
_0807DFD0: .4byte 0xFFFC0000
_0807DFD4:
	asrs r2, r4, #0x10
_0807DFD6:
	cmp r5, #0
	bge _0807DFE6
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _0807DFE8
_0807DFE6:
	asrs r1, r5, #0x10
_0807DFE8:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r5, r1
	bl sub_080009E4
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_080009E4
	adds r5, r0, #0
	lsls r2, r4, #1
	str r2, [r6, #0x48]
	lsls r0, r5, #1
	str r0, [r6, #0x4c]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807E024
	ldr r1, _0807E020 @ =0xFFFF0000
	b _0807E028
	.align 2, 0
_0807E020: .4byte 0xFFFF0000
_0807E024:
	movs r1, #0x80
	lsls r1, r1, #9
_0807E028:
	adds r0, r2, r1
	str r0, [r6, #0x48]
_0807E02C:
	ldr r0, [r7, #0x40]
	ldr r1, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldrb r0, [r7, #0xa]
	cmp r0, #2
	bne _0807E068
	movs r0, #1
	strb r0, [r6, #0xa]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _0807E068
_0807E054:
	adds r0, r6, #0
	bl EntityDelete
	b _0807E068
_0807E05C:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0807E068:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807E074
sub_0807E074: @ 0x0807E074
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, _0807E104 @ =sub_0807E1B0
	bl sub_0806DFF8
	adds r6, r0, #0
	cmp r6, #0
	bne _0807E090
	b _0807E1A0
_0807E090:
	str r4, [r6, #0x40]
	str r5, [r6, #0x44]
	ldr r0, [r7, #0x48]
	str r0, [r6, #0x48]
	ldr r0, [r7, #0x4c]
	str r0, [r6, #0x4c]
	adds r5, r7, #0
	adds r5, #0x58
	ldrb r0, [r5]
	adds r4, r6, #0
	adds r4, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r6, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _0807E108 @ =0x081CBFA4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0807E10C @ =0x08219140
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r6, #0
	bl sub_0803B924
	ldrb r0, [r5]
	movs r1, #0x20
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	mov r8, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0807E110
	adds r0, r6, #0
	bl EntityDelete
	b _0807E1A0
	.align 2, 0
_0807E104: .4byte sub_0807E1B0
_0807E108: .4byte 0x081CBFA4
_0807E10C: .4byte 0x08219140
_0807E110:
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	movs r5, #0x20
	orrs r0, r5
	strb r0, [r2]
	adds r3, r6, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r7, r2, #0
	cmp r0, #0xdc
	bls _0807E15A
	ldrb r0, [r4]
	orrs r0, r5
	b _0807E160
_0807E15A:
	ldrb r1, [r4]
	mov r0, r8
	ands r0, r1
_0807E160:
	strb r0, [r4]
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	ldr r1, [r6, #0x48]
	ldr r2, [r6, #0x4c]
	ldrb r0, [r4]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r0, r0, #7
	str r0, [sp]
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	bl sub_0803E238
	movs r0, #4
	strb r0, [r6, #0xd]
	ldrb r0, [r7]
	movs r1, #2
	orrs r0, r1
	strb r0, [r7]
	ldr r0, _0807E1AC @ =sub_0803B9D0
	str r0, [r6, #4]
_0807E1A0:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E1AC: .4byte sub_0803B9D0

	thumb_func_start sub_0807E1B0
sub_0807E1B0: @ 0x0807E1B0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xdc
	bls _0807E1D0
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	b _0807E1DC
_0807E1D0:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r2, [r0]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
_0807E1DC:
	strb r1, [r0]
	adds r6, r0, #0
	ldr r1, [r5, #0x48]
	ldr r2, [r5, #0x4c]
	ldrb r0, [r6]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r0, #7
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	bl sub_0803E238
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r0, [r5, #0xd]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0807E21E
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl EntityDelete
_0807E21E:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807E228
sub_0807E228: @ 0x0807E228
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0807E28C @ =sub_08069134
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0807E2BE
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	str r7, [r4, #0x48]
	mov r0, r8
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r2, #0
	ldr r0, [sp, #0x18]
	strb r0, [r1]
	movs r0, #0xc8
	strb r0, [r4, #0xd]
	strb r2, [r4, #0x18]
	movs r0, #3
	strb r0, [r4, #0x19]
	ldr r0, _0807E290 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0807E294 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0807E298
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x40
	b _0807E29E
	.align 2, 0
_0807E28C: .4byte sub_08069134
_0807E290: .4byte 0x081C15F4
_0807E294: .4byte 0x0820ED60
_0807E298:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x41
_0807E29E:
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0807E2C8 @ =sub_0803B9D0
	str r0, [r4, #4]
_0807E2BE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E2C8: .4byte sub_0803B9D0

	thumb_func_start sub_0807E2CC
sub_0807E2CC: @ 0x0807E2CC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0807E30C @ =0x081CBFA4
	movs r1, #0
	bl sub_0803B800
	adds r7, r0, #0
	cmp r7, #0
	blt _0807E320
	ldr r5, _0807E310 @ =0x0820A698
	adds r0, r5, #0
	movs r1, #0
	bl sub_08068264
	adds r4, r6, #0
	adds r4, #0x2c
	strb r0, [r4]
	ldr r1, _0807E314 @ =0x08526D60
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0803CC70
	ldr r1, _0807E318 @ =0x08219140
	ldrb r3, [r4]
	adds r0, r6, #0
	adds r2, r7, #0
	bl sub_0803B924
	ldr r0, _0807E31C @ =sub_0803B9D0
	str r0, [r6, #4]
	movs r0, #1
	b _0807E322
	.align 2, 0
_0807E30C: .4byte 0x081CBFA4
_0807E310: .4byte 0x0820A698
_0807E314: .4byte 0x08526D60
_0807E318: .4byte 0x08219140
_0807E31C: .4byte sub_0803B9D0
_0807E320:
	movs r0, #0
_0807E322:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0807E328
sub_0807E328: @ 0x0807E328
	push {lr}
	sub sp, #0x10
	mov r2, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r3, #0
	strh r1, [r2]
	movs r1, #0x10
	strh r1, [r2, #2]
	mov r1, sp
	strh r3, [r1, #4]
	strh r3, [r1, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r1, [r0, #0x44]
	str r1, [sp, #0xc]
	adds r0, #0x21
	movs r1, #1
	strb r1, [r0]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start EnemyGolemUpdate
EnemyGolemUpdate: @ 0x0807E35C
	push {r4, r5, lr}
	sub sp, #0x38
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _0807E3A0
	adds r0, r5, #0
	movs r1, #6
	bl sub_0806D128
	cmp r0, #0
	beq _0807E376
	b _0807E4F2
_0807E376:
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xb0
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0807E394
	adds r0, r5, #0
	bl sub_08021924
_0807E394:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _0807E3A0
	adds r0, r5, #0
	bl sub_0806AE54
_0807E3A0:
	adds r0, r5, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _0807E3B0
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _0807E448
_0807E3B0:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _0807E3D2
	cmp r0, #1
	bgt _0807E3C0
	cmp r0, #0
	beq _0807E3CA
	b _0807E448
_0807E3C0:
	cmp r0, #2
	beq _0807E3DA
	cmp r0, #3
	beq _0807E440
	b _0807E448
_0807E3CA:
	adds r0, r5, #0
	bl sub_0807E8EC
	b _0807E448
_0807E3D2:
	adds r0, r5, #0
	bl sub_0807F494
	b _0807E448
_0807E3DA:
	ldrb r1, [r5, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0807E40E
	bl RandomNumberGenerator
	movs r1, #0xa0
	lsls r1, r1, #0xe
	bl __umodsi3
	adds r4, r0, #0
	ldr r0, _0807E43C @ =0xFFEC0000
	adds r4, r4, r0
	bl RandomNumberGenerator
	ldr r0, [r5, #0x40]
	adds r0, r0, r4
	ldr r1, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	movs r3, #1
	bl sub_0806D7F0
_0807E40E:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	adds r2, r5, #0
	adds r2, #0x59
	cmp r0, #0
	bgt _0807E426
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0807E426:
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0807E448
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0807E448
	bl sub_0806C250
	b _0807E448
	.align 2, 0
_0807E43C: .4byte 0xFFEC0000
_0807E440:
	adds r0, r5, #0
	bl sub_080809C0
	b _0807E4F2
_0807E448:
	ldr r3, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807E46C
	adds r0, r3, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	bge _0807E466
	rsbs r0, r0, #0
	b _0807E47E
_0807E466:
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0807E480
_0807E46C:
	adds r0, r3, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	bge _0807E47E
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0807E480
_0807E47E:
	asrs r0, r0, #0x10
_0807E480:
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0807E4A4 @ =0xFFFFFF00
	ldr r1, [sp, #0x34]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x34]
	adds r0, r3, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bge _0807E4A8
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0807E4AA
	.align 2, 0
_0807E4A4: .4byte 0xFFFFFF00
_0807E4A8:
	asrs r0, r0, #0x10
_0807E4AA:
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, _0807E4FC @ =0xFFFF00FF
	ldr r2, [sp, #0x34]
	ands r2, r1
	orrs r2, r0
	ldr r0, _0807E500 @ =0xFF00FFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r2, r0
	str r2, [sp, #0x34]
	add r4, sp, #0x34
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0807E4D2
	rsbs r0, r0, #0
_0807E4D2:
	lsls r1, r0, #0x18
	ldr r0, _0807E504 @ =0x00FFFFFF
	ands r2, r0
	orrs r2, r1
	str r2, [sp, #0x34]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042848
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428B4
	adds r0, r5, #0
	bl sub_0806E314
_0807E4F2:
	add sp, #0x38
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807E4FC: .4byte 0xFFFF00FF
_0807E500: .4byte 0xFF00FFFF
_0807E504: .4byte 0x00FFFFFF

	thumb_func_start EnemyGolemCreate
EnemyGolemCreate: @ 0x0807E508
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	adds r7, r0, #0
	ldr r1, _0807E5C0 @ =0x08118E80
	add r0, sp, #8
	movs r2, #0xb
	bl memcpy
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x68]
	ldr r1, _0807E5C4 @ =0x08118E8B
	movs r2, #0xb
	bl memcpy
	add r1, sp, #0x20
	mov sl, r1
	ldr r1, _0807E5C8 @ =0x08118E96
	mov r0, sl
	movs r2, #0xb
	bl memcpy
	add r2, sp, #0x2c
	mov sb, r2
	ldr r1, _0807E5CC @ =0x08118EA1
	mov r0, sb
	movs r2, #0xb
	bl memcpy
	add r3, sp, #0x38
	mov r8, r3
	ldr r1, _0807E5D0 @ =0x08118EAC
	mov r0, r8
	movs r2, #0xb
	bl memcpy
	add r6, sp, #0x44
	ldr r1, _0807E5D4 @ =0x08118EB7
	adds r0, r6, #0
	movs r2, #0xb
	bl memcpy
	add r5, sp, #0x50
	ldr r1, _0807E5D8 @ =0x08118EC2
	adds r0, r5, #0
	movs r2, #0xb
	bl memcpy
	add r4, sp, #0x5c
	ldr r1, _0807E5DC @ =0x08118ECD
	adds r0, r4, #0
	movs r2, #0xb
	bl memcpy
	adds r0, r7, #0
	bl sub_08081128
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807E58A
	b _0807E8CE
_0807E58A:
	movs r0, #0x58
	bl sub_0806C2CC
	str r0, [r7, #0x1c]
	cmp r0, #0
	bne _0807E598
	b _0807E8CE
_0807E598:
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #0x50
	bne _0807E5E0
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	b _0807E5E6
	.align 2, 0
_0807E5C0: .4byte 0x08118E80
_0807E5C4: .4byte 0x08118E8B
_0807E5C8: .4byte 0x08118E96
_0807E5CC: .4byte 0x08118EA1
_0807E5D0: .4byte 0x08118EAC
_0807E5D4: .4byte 0x08118EB7
_0807E5D8: .4byte 0x08118EC2
_0807E5DC: .4byte 0x08118ECD
_0807E5E0:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #7
_0807E5E6:
	strb r0, [r1]
	str r1, [sp, #0x70]
	adds r0, r7, #0
	bl sub_0806B04C
	movs r4, #0
	mov sl, r4
	mov r6, sb
	str r6, [sp, #0x6c]
_0807E5F8:
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0x50
	bne _0807E608
	mov r0, sp
	add r0, sl
	adds r0, #0x5c
	b _0807E60E
_0807E608:
	mov r0, sp
	add r0, sl
	adds r0, #0x50
_0807E60E:
	movs r5, #0
	ldrsb r5, [r0, r5]
	ldr r0, _0807E638 @ =sub_080812CC
	bl sub_0806DFF8
	mov r8, r0
	cmp r0, #0
	bne _0807E620
	b _0807E7A0
_0807E620:
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	mov r0, r8
	adds r0, #0x5c
	strb r1, [r0]
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #0x50
	bne _0807E640
	ldr r0, _0807E63C @ =0x081CBFB4
	b _0807E642
	.align 2, 0
_0807E638: .4byte sub_080812CC
_0807E63C: .4byte 0x081CBFB4
_0807E640:
	ldr r0, _0807E6D4 @ =0x081CBFAC
_0807E642:
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	adds r4, r7, #0
	adds r4, #0x2c
	ldrb r3, [r4]
	mov r0, r8
	ldr r1, _0807E6D8 @ =0x08219804
	bl sub_0803B924
	ldr r3, [sp, #0x6c]
	ldrb r0, [r3]
	mov r1, r8
	adds r1, #0x36
	strb r0, [r1]
	ldrb r1, [r4]
	mov r0, r8
	adds r0, #0x2c
	strb r1, [r0]
	mov r3, r8
	adds r3, #0x59
	ldrb r0, [r3]
	movs r4, #3
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	strb r0, [r3]
	mov r2, r8
	adds r2, #0x58
	ldrb r0, [r2]
	movs r6, #0x21
	rsbs r6, r6, #0
	adds r1, r6, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	mov r0, r8
	adds r0, #0x3c
	strb r1, [r0]
	ldr r0, _0807E6DC @ =sub_0803B9D0
	mov r1, r8
	str r0, [r1, #4]
	str r7, [r1, #0x1c]
	mov r0, r8
	adds r0, #0x20
	strb r5, [r0]
	mov r0, sp
	adds r0, r0, r5
	adds r0, #0x44
	ldrb r0, [r0]
	adds r1, #0x21
	strb r0, [r1]
	ldr r0, [r7, #0x40]
	mov r4, r8
	str r0, [r4, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r4, #0x44]
	ldr r6, [sp, #0x6c]
	ldrb r0, [r6]
	adds r6, r3, #0
	adds r4, r2, #0
	cmp r0, #0x50
	bne _0807E6E0
	mov r0, sp
	adds r0, r0, r5
	adds r0, #0x38
	ldrb r0, [r0]
	adds r1, #0x44
	b _0807E718
	.align 2, 0
_0807E6D4: .4byte 0x081CBFAC
_0807E6D8: .4byte 0x08219804
_0807E6DC: .4byte sub_0803B9D0
_0807E6E0:
	cmp r0, #0x65
	bne _0807E6EC
	mov r0, sp
	adds r0, r0, r5
	adds r0, #0x14
	b _0807E712
_0807E6EC:
	cmp r0, #0x22
	bne _0807E70C
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	bne _0807E704
	mov r0, sp
	adds r0, r0, r5
	adds r0, #0x2c
	b _0807E712
_0807E704:
	mov r0, sp
	adds r0, r0, r5
	adds r0, #0x20
	b _0807E712
_0807E70C:
	mov r0, sp
	adds r0, r0, r5
	adds r0, #8
_0807E712:
	ldrb r0, [r0]
	mov r1, r8
	adds r1, #0x65
_0807E718:
	strb r0, [r1]
	cmp r5, #5
	bls _0807E72E
	cmp r5, #7
	beq _0807E72E
	cmp r5, #8
	beq _0807E72E
	cmp r5, #9
	beq _0807E72E
	cmp r5, #0xa
	bne _0807E776
_0807E72E:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0807E73E
	b _0807E8C8
_0807E73E:
	movs r0, #0x1f
	ands r2, r0
	ldrb r0, [r4]
	movs r3, #0x20
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	ldrb r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6]
	ldrb r0, [r4]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r0, r0, #7
	str r0, [sp]
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r1, #0
	bl sub_0803E058
_0807E776:
	ldr r0, _0807E794 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0807E7A8
	mov r0, r8
	movs r1, #8
	ldr r2, _0807E798 @ =sub_08081248
	ldr r3, _0807E79C @ =sub_080819D4
	bl sub_0804277C
	b _0807E7A8
	.align 2, 0
_0807E794: .4byte gEwramData
_0807E798: .4byte sub_08081248
_0807E79C: .4byte sub_080819D4
_0807E7A0:
	ldr r0, [r7, #0x1c]
	bl sub_0806C250
	b _0807E8CE
_0807E7A8:
	movs r4, #1
	add sl, r4
	mov r6, sl
	cmp r6, #0xa
	bgt _0807E7B4
	b _0807E5F8
_0807E7B4:
	ldr r4, [r7, #0x1c]
	ldr r0, _0807E7F8 @ =0x08527048
	ldr r2, [sp, #0x70]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #2
	adds r0, r1, r0
	ldr r2, _0807E7FC @ =0x08527354
	adds r1, r1, r2
	ldr r1, [r1]
	movs r5, #0
	ldr r3, _0807E800 @ =gEwramData
	mov sl, r3
	movs r6, #0x88
	adds r6, r6, r4
	mov r8, r6
	movs r2, #0xa8
	adds r2, r2, r4
	mov ip, r2
	adds r2, r4, #0
	ldr r3, [r0]
_0807E7DE:
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0x10
	str r0, [r2]
	movs r0, #1
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0x10
	str r0, [r2, #4]
	cmp r5, #1
	bne _0807E804
	ldr r0, [r1]
	str r0, [r4, #0x28]
	b _0807E836
	.align 2, 0
_0807E7F8: .4byte 0x08527048
_0807E7FC: .4byte 0x08527354
_0807E800: .4byte gEwramData
_0807E804:
	cmp r5, #3
	bne _0807E80E
	ldr r0, [r1, #4]
	str r0, [r4, #0x68]
	b _0807E836
_0807E80E:
	cmp r5, #4
	bne _0807E81A
	ldr r0, [r1, #8]
	mov r6, r8
	str r0, [r6]
	b _0807E836
_0807E81A:
	cmp r5, #5
	bne _0807E826
	ldr r0, [r1, #0xc]
	mov r6, ip
	str r0, [r6]
	b _0807E836
_0807E826:
	cmp r5, #8
	bne _0807E82E
	ldr r0, [r1, #0x10]
	b _0807E834
_0807E82E:
	cmp r5, #0xa
	bne _0807E836
	ldr r0, [r1, #0x14]
_0807E834:
	str r0, [r2, #8]
_0807E836:
	adds r2, #0x20
	adds r3, #2
	adds r5, #1
	cmp r5, #0xa
	ble _0807E7DE
	mov r1, sl
	ldr r0, [r1]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _0807E86E
	movs r0, #3
	strb r0, [r7, #0xa]
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #0x50
	bne _0807E864
	movs r0, #0x28
	b _0807E866
_0807E864:
	movs r0, #0x14
_0807E866:
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xd]
	b _0807E8DA
_0807E86E:
	ldr r2, _0807E894 @ =sub_08081A9C
	ldr r3, _0807E898 @ =sub_080811CC
	adds r0, r7, #0
	movs r1, #8
	bl sub_0804277C
	adds r0, r7, #0
	bl sub_08080F84
	adds r0, r7, #0
	bl sub_0806AF98
	strb r4, [r7, #0xa]
	mov r3, sb
	ldrb r0, [r3]
	cmp r0, #0x50
	bne _0807E89C
	movs r0, #0x28
	b _0807E89E
	.align 2, 0
_0807E894: .4byte sub_08081A9C
_0807E898: .4byte sub_080811CC
_0807E89C:
	movs r0, #0x14
_0807E89E:
	strb r0, [r7, #0xb]
	mov r4, sb
	ldrb r0, [r4]
	cmp r0, #0x50
	beq _0807E8D6
	cmp r0, #0x50
	bgt _0807E8B6
	cmp r0, #0x22
	beq _0807E8C4
	cmp r0, #0x35
	beq _0807E8BC
	b _0807E8DA
_0807E8B6:
	cmp r0, #0x65
	beq _0807E8C0
	b _0807E8DA
_0807E8BC:
	movs r0, #0
	b _0807E8D8
_0807E8C0:
	movs r0, #1
	b _0807E8D8
_0807E8C4:
	movs r0, #2
	b _0807E8D8
_0807E8C8:
	mov r0, r8
	bl EntityDelete
_0807E8CE:
	adds r0, r7, #0
	bl EntityDelete
	b _0807E8DA
_0807E8D6:
	movs r0, #3
_0807E8D8:
	str r0, [r7, #0x24]
_0807E8DA:
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807E8EC
sub_0807E8EC: @ 0x0807E8EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0807E930 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0807E934 @ =0x0000A094
	adds r1, r1, r0
	mov sb, r1
	ldr r1, _0807E938 @ =0x08118ED8
	mov r0, sp
	movs r2, #4
	bl memcpy
	add r4, sp, #4
	ldr r1, _0807E93C @ =0x08118EDC
	adds r0, r4, #0
	movs r2, #4
	bl memcpy
	ldrb r0, [r5, #0xb]
	cmp r0, #0x29
	bls _0807E924
	bl _0807F480
_0807E924:
	lsls r0, r0, #2
	ldr r1, _0807E940 @ =_0807E944
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807E930: .4byte gEwramData
_0807E934: .4byte 0x0000A094
_0807E938: .4byte 0x08118ED8
_0807E93C: .4byte 0x08118EDC
_0807E940: .4byte _0807E944
_0807E944: @ jump table
	.4byte _0807E9EC @ case 0
	.4byte _0807ED78 @ case 1
	.4byte _0807EA70 @ case 2
	.4byte _0807EAD0 @ case 3
	.4byte _0807EF50 @ case 4
	.4byte _0807EC34 @ case 5
	.4byte _0807EC78 @ case 6
	.4byte _0807ED78 @ case 7
	.4byte _0807EDB4 @ case 8
	.4byte _0807EDF4 @ case 9
	.4byte _0807EF50 @ case 10
	.4byte _0807EF8C @ case 11
	.4byte _0807F004 @ case 12
	.4byte _0807F480 @ case 13
	.4byte _0807F480 @ case 14
	.4byte _0807F480 @ case 15
	.4byte _0807F480 @ case 16
	.4byte _0807F480 @ case 17
	.4byte _0807F480 @ case 18
	.4byte _0807F480 @ case 19
	.4byte _0807F174 @ case 20
	.4byte _0807F1D0 @ case 21
	.4byte _0807F1FC @ case 22
	.4byte _0807F332 @ case 23
	.4byte _0807F22A @ case 24
	.4byte _0807F250 @ case 25
	.4byte _0807F27C @ case 26
	.4byte _0807F332 @ case 27
	.4byte _0807F2AA @ case 28
	.4byte _0807F2D0 @ case 29
	.4byte _0807F304 @ case 30
	.4byte _0807F332 @ case 31
	.4byte _0807F358 @ case 32
	.4byte _0807F480 @ case 33
	.4byte _0807F480 @ case 34
	.4byte _0807F480 @ case 35
	.4byte _0807F480 @ case 36
	.4byte _0807F480 @ case 37
	.4byte _0807F480 @ case 38
	.4byte _0807F480 @ case 39
	.4byte _0807F394 @ case 40
	.4byte _0807F44E @ case 41
_0807E9EC:
	adds r0, r5, #0
	bl sub_08080F84
	movs r0, #0
	str r0, [r5, #0x48]
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldr r2, _0807EA6C @ =0xFFD00000
	adds r0, r5, #0
	bl sub_0806D288
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	bne _0807EA3C
	adds r0, r5, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _0807EA3C
	bl _0807F480
_0807EA3C:
	movs r1, #2
	strb r1, [r5, #0xb]
	ldr r0, [r5, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, #0x38
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0807EA5E
	bl _0807F40C
_0807EA5E:
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl _0807F412
	.align 2, 0
_0807EA6C: .4byte 0xFFD00000
_0807EA70:
	adds r0, r5, #0
	bl sub_0808197C
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807EAC8 @ =0xFFD00000
	adds r0, r5, #0
	bl sub_0806D288
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807EA92
	bl _0807F480
_0807EA92:
	ldr r0, [r5, #0x24]
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x7c
	bl PlaySong
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #2
_0807EAAC:
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r4, _0807EACC @ =0xFFF80000
	cmp r0, #0
	bne _0807EAC0
	b _0807EFDC
_0807EAC0:
	movs r4, #0x80
	lsls r4, r4, #0xc
	b _0807EFDC
	.align 2, 0
_0807EAC8: .4byte 0xFFD00000
_0807EACC: .4byte 0xFFF80000
_0807EAD0:
	ldrb r1, [r5, #0xd]
	ldr r0, [r5, #0x24]
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0xa
	cmp r1, r0
	blt _0807EAF4
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _0807EAF4
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0807EAF4:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807EB04
	bl _0807F480
_0807EB04:
	bl RandomNumberGenerator
	adds r4, r0, #0
	movs r0, #3
	ands r4, r0
	adds r7, r5, #0
	adds r7, #0x42
	cmp r4, #1
	bhi _0807EB32
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807EB2C
	rsbs r0, r0, #0
_0807EB2C:
	cmp r0, #0x3b
	bgt _0807EB32
	b _0807F062
_0807EB32:
	cmp r4, #2
	bne _0807EB52
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r7, r3]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807EB4C
	rsbs r0, r0, #0
_0807EB4C:
	cmp r0, #0x77
	bgt _0807EB52
	b _0807F08A
_0807EB52:
	ldr r0, [r5, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r4, r5, #0
	adds r4, #0x20
	movs r0, #3
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_08080F84
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	mov sl, r4
	mov r8, r2
	cmp r0, #0
	beq _0807EB8A
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #0xd
	b _0807EB90
_0807EB8A:
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	ldr r0, _0807EC30 @ =0xFFF00000
_0807EB90:
	bl __divsi3
	str r0, [r5, #0x48]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r4, #0x20
	rsbs r4, r4, #0
	cmp r0, #0
	beq _0807EBA8
	movs r4, #0x20
_0807EBA8:
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807EBBE
	rsbs r0, r0, #0
_0807EBBE:
	adds r6, r5, #0
	adds r6, #0x46
	cmp r0, #0x17
	ble _0807EBEC
	ldrh r0, [r7]
	mov r3, sb
	ldrh r3, [r3, #6]
	adds r0, r0, r3
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0807EBEC
	bl _0807F418
_0807EBEC:
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	movs r4, #0x20
	cmp r0, #0
	beq _0807EBFC
	subs r4, #0x40
_0807EBFC:
	ldrh r0, [r7]
	mov r1, sb
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	beq _0807EC22
	bl _0807F418
_0807EC22:
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	movs r0, #0xa
	strb r0, [r5, #0xb]
	movs r0, #1
	b _0807F16A
	.align 2, 0
_0807EC30: .4byte 0xFFF00000
_0807EC34:
	adds r0, r5, #0
	bl sub_0808197C
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807EC74 @ =0xFFD00000
	adds r0, r5, #0
	bl sub_0806D288
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807EC56
	bl _0807F480
_0807EC56:
	ldr r0, [r5, #0x24]
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x7c
	bl PlaySong
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #4
	b _0807EAAC
	.align 2, 0
_0807EC74: .4byte 0xFFD00000
_0807EC78:
	ldrb r1, [r5, #0xd]
	ldr r0, [r5, #0x24]
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0xa
	cmp r1, r0
	blt _0807EC9C
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _0807EC9C
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0807EC9C:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807ECAA
	b _0807F480
_0807ECAA:
	bl RandomNumberGenerator
	adds r4, r0, #0
	movs r0, #3
	ands r4, r0
	adds r7, r5, #0
	adds r7, #0x42
	cmp r4, #1
	bhi _0807ECD8
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807ECD2
	rsbs r0, r0, #0
_0807ECD2:
	cmp r0, #0x3b
	bgt _0807ECD8
	b _0807F062
_0807ECD8:
	cmp r4, #2
	bne _0807ECF8
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r7, r3]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807ECF2
	rsbs r0, r0, #0
_0807ECF2:
	cmp r0, #0x77
	bgt _0807ECF8
	b _0807F08A
_0807ECF8:
	ldr r0, [r5, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	movs r0, #1
	strb r0, [r5, #0xb]
	adds r4, r5, #0
	adds r4, #0x20
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_08080F84
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	mov sl, r4
	mov r8, r2
	cmp r0, #0
	beq _0807ED2C
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #0xd
	b _0807ED32
_0807ED2C:
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	ldr r0, _0807ED74 @ =0xFFF00000
_0807ED32:
	bl __divsi3
	str r0, [r5, #0x48]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r4, #0x20
	rsbs r4, r4, #0
	cmp r0, #0
	beq _0807ED4A
	movs r4, #0x20
_0807ED4A:
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807ED60
	rsbs r0, r0, #0
_0807ED60:
	adds r6, r5, #0
	adds r6, #0x46
	cmp r0, #0x17
	bgt _0807ED6A
	b _0807F12A
_0807ED6A:
	ldrh r0, [r7]
	mov r3, sb
	ldrh r3, [r3, #6]
	adds r0, r0, r3
	b _0807F10E
	.align 2, 0
_0807ED74: .4byte 0xFFF00000
_0807ED78:
	adds r0, r5, #0
	bl sub_0808197C
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807EDB0 @ =0xFFD00000
	adds r0, r5, #0
	bl sub_0806D288
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807ED98
	b _0807F480
_0807ED98:
	ldr r0, [r5, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	b _0807F480
	.align 2, 0
_0807EDB0: .4byte 0xFFD00000
_0807EDB4:
	adds r0, r5, #0
	bl sub_0808197C
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807EDF0 @ =0xFFD00000
	adds r0, r5, #0
	bl sub_0806D288
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807EDD4
	b _0807F480
_0807EDD4:
	ldr r0, [r5, #0x24]
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x7c
	bl PlaySong
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #2
	b _0807EFC6
	.align 2, 0
_0807EDF0: .4byte 0xFFD00000
_0807EDF4:
	ldrb r1, [r5, #0xd]
	ldr r0, [r5, #0x24]
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0xa
	cmp r1, r0
	blt _0807EE18
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _0807EE18
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0807EE18:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807EE26
	b _0807F480
_0807EE26:
	bl RandomNumberGenerator
	adds r4, r0, #0
	movs r0, #3
	ands r4, r0
	adds r7, r5, #0
	adds r7, #0x42
	cmp r4, #1
	bhi _0807EE54
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807EE4E
	rsbs r0, r0, #0
_0807EE4E:
	cmp r0, #0x3b
	bgt _0807EE54
	b _0807F062
_0807EE54:
	cmp r4, #2
	bne _0807EE74
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r7, r3]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807EE6E
	rsbs r0, r0, #0
_0807EE6E:
	cmp r0, #0x77
	bgt _0807EE74
	b _0807F08A
_0807EE74:
	ldr r0, [r5, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	movs r0, #4
	strb r0, [r5, #0xb]
	adds r4, r5, #0
	adds r4, #0x20
	movs r0, #3
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_08080F84
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	mov sl, r4
	mov r8, r2
	cmp r0, #0
	beq _0807EEAA
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #0xd
	b _0807EEB0
_0807EEAA:
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	ldr r0, _0807EF4C @ =0xFFF00000
_0807EEB0:
	bl __divsi3
	str r0, [r5, #0x48]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r4, #0x20
	rsbs r4, r4, #0
	cmp r0, #0
	beq _0807EEC8
	movs r4, #0x20
_0807EEC8:
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807EEDE
	rsbs r0, r0, #0
_0807EEDE:
	adds r6, r5, #0
	adds r6, #0x46
	cmp r0, #0x17
	ble _0807EF0A
	ldrh r0, [r7]
	mov r3, sb
	ldrh r3, [r3, #6]
	adds r0, r0, r3
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0807EF0A
	b _0807F418
_0807EF0A:
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	movs r4, #0x20
	cmp r0, #0
	beq _0807EF1A
	subs r4, #0x40
_0807EF1A:
	ldrh r0, [r7]
	mov r1, sb
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	beq _0807EF3E
	b _0807F418
_0807EF3E:
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	movs r0, #0xa
	strb r0, [r5, #0xb]
	movs r0, #1
	b _0807F16A
	.align 2, 0
_0807EF4C: .4byte 0xFFF00000
_0807EF50:
	adds r0, r5, #0
	bl sub_0808197C
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807EF88 @ =0xFFD00000
	adds r0, r5, #0
	bl sub_0806D288
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807EF70
	b _0807F480
_0807EF70:
	ldr r0, [r5, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	b _0807F480
	.align 2, 0
_0807EF88: .4byte 0xFFD00000
_0807EF8C:
	adds r0, r5, #0
	bl sub_0808197C
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0807EFFC @ =0xFFD00000
	adds r0, r5, #0
	bl sub_0806D288
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807EFAC
	b _0807F480
_0807EFAC:
	ldr r0, [r5, #0x24]
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x7c
	bl PlaySong
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #4
_0807EFC6:
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r4, #0xc0
	lsls r4, r4, #0xb
	cmp r0, #0
	beq _0807EFDC
	ldr r4, _0807F000 @ =0xFFFA0000
_0807EFDC:
	ldr r0, [r5, #0x40]
	adds r0, r0, r4
	ldr r1, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	movs r3, #1
	bl sub_0806D7F0
	movs r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_08011F7C
	b _0807F480
	.align 2, 0
_0807EFFC: .4byte 0xFFD00000
_0807F000: .4byte 0xFFFA0000
_0807F004:
	ldrb r1, [r5, #0xd]
	ldr r0, [r5, #0x24]
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0xa
	cmp r1, r0
	blt _0807F028
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _0807F028
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0807F028:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F036
	b _0807F480
_0807F036:
	bl RandomNumberGenerator
	adds r4, r0, #0
	movs r0, #3
	ands r4, r0
	adds r7, r5, #0
	adds r7, #0x42
	cmp r4, #1
	bhi _0807F06C
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807F05E
	rsbs r0, r0, #0
_0807F05E:
	cmp r0, #0x3b
	bgt _0807F06C
_0807F062:
	movs r0, #1
	strb r0, [r5, #0xa]
	movs r0, #0
	strb r0, [r5, #0xb]
	b _0807F480
_0807F06C:
	cmp r4, #2
	bne _0807F094
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r7, r3]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807F086
	rsbs r0, r0, #0
_0807F086:
	cmp r0, #0x77
	bgt _0807F094
_0807F08A:
	movs r0, #1
	strb r0, [r5, #0xa]
	movs r0, #0x14
	strb r0, [r5, #0xb]
	b _0807F480
_0807F094:
	ldr r0, [r5, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	movs r0, #1
	strb r0, [r5, #0xb]
	adds r4, r5, #0
	adds r4, #0x20
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_08080F84
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	mov sl, r4
	mov r8, r2
	cmp r0, #0
	beq _0807F0C8
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #0xd
	b _0807F0CE
_0807F0C8:
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	ldr r0, _0807F170 @ =0xFFF00000
_0807F0CE:
	bl __divsi3
	str r0, [r5, #0x48]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r4, #0x20
	rsbs r4, r4, #0
	cmp r0, #0
	beq _0807F0E6
	movs r4, #0x20
_0807F0E6:
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r7, #0
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	cmp r0, #0
	bge _0807F0FE
	rsbs r0, r0, #0
_0807F0FE:
	adds r6, r5, #0
	adds r6, #0x46
	cmp r0, #0x17
	ble _0807F12A
	ldrh r0, [r2]
	mov r1, sb
	ldrh r1, [r1, #6]
	adds r0, r0, r1
_0807F10E:
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0807F12A
	b _0807F418
_0807F12A:
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	movs r4, #0x20
	cmp r0, #0
	beq _0807F13A
	subs r4, #0x40
_0807F13A:
	ldrh r0, [r7]
	mov r1, sb
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	beq _0807F15E
	b _0807F418
_0807F15E:
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	movs r0, #7
	strb r0, [r5, #0xb]
	movs r0, #3
_0807F16A:
	mov r3, sl
	strb r0, [r3]
	b _0807F418
	.align 2, 0
_0807F170: .4byte 0xFFF00000
_0807F174:
	adds r0, r5, #0
	bl sub_08080F84
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldr r2, _0807F1CC @ =0xFFD00000
	adds r0, r5, #0
	bl sub_0806D288
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	bne _0807F1BE
	adds r0, r5, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _0807F1BE
	b _0807F480
_0807F1BE:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x14
	strb r0, [r5, #0xd]
	b _0807F220
	.align 2, 0
_0807F1CC: .4byte 0xFFD00000
_0807F1D0:
	adds r0, r5, #0
	bl sub_08080F84
	adds r0, r5, #0
	bl sub_0808197C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F1EA
	b _0807F480
_0807F1EA:
	movs r0, #4
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #8
	b _0807F2FA
_0807F1FC:
	adds r0, r5, #0
	bl sub_08080F84
	adds r0, r5, #0
	bl sub_0808197C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F216
	b _0807F480
_0807F216:
	movs r0, #4
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_0807F220:
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #6
	strb r0, [r1]
	b _0807F480
_0807F22A:
	adds r0, r5, #0
	bl sub_08080F84
	adds r0, r5, #0
	bl sub_0808197C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F244
	b _0807F480
_0807F244:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x14
	strb r0, [r5, #0xd]
	b _0807F2A0
_0807F250:
	adds r0, r5, #0
	bl sub_08080F84
	adds r0, r5, #0
	bl sub_0808197C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F26A
	b _0807F480
_0807F26A:
	movs r0, #4
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #9
	b _0807F2FA
_0807F27C:
	adds r0, r5, #0
	bl sub_08080F84
	adds r0, r5, #0
	bl sub_0808197C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F296
	b _0807F480
_0807F296:
	movs r0, #4
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_0807F2A0:
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	b _0807F480
_0807F2AA:
	adds r0, r5, #0
	bl sub_08080F84
	adds r0, r5, #0
	bl sub_0808197C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F2C4
	b _0807F480
_0807F2C4:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x14
	strb r0, [r5, #0xd]
	b _0807F328
_0807F2D0:
	adds r0, r5, #0
	bl sub_08080F84
	adds r0, r5, #0
	bl sub_0808197C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F2EA
	b _0807F480
_0807F2EA:
	movs r0, #4
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0xa
_0807F2FA:
	strb r0, [r1]
	movs r0, #0x7e
	bl PlaySong
	b _0807F480
_0807F304:
	adds r0, r5, #0
	bl sub_08080F84
	adds r0, r5, #0
	bl sub_0808197C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F31E
	b _0807F480
_0807F31E:
	movs r0, #4
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_0807F328:
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	b _0807F480
_0807F332:
	adds r0, r5, #0
	bl sub_08080F84
	adds r0, r5, #0
	bl sub_0808197C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F34C
	b _0807F480
_0807F34C:
	movs r0, #0x14
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _0807F480
_0807F358:
	adds r0, r5, #0
	bl sub_0808197C
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F36C
	b _0807F480
_0807F36C:
	ldr r0, [r5, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	movs r1, #2
	strb r1, [r5, #0xb]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, #0x38
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807F40C
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #0xd
	b _0807F412
_0807F394:
	adds r0, r5, #0
	bl sub_08080F84
	movs r0, #0
	str r0, [r5, #0x48]
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldr r2, _0807F408 @ =0xFFD00000
	adds r0, r5, #0
	bl sub_0806D288
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	bne _0807F3E0
	adds r0, r5, #0
	bl sub_0806D54C
	cmp r0, #0
	beq _0807F42C
_0807F3E0:
	movs r1, #2
	strb r1, [r5, #0xb]
	ldr r0, [r5, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, #0x38
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807F40C
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #0xd
	b _0807F412
	.align 2, 0
_0807F408: .4byte 0xFFD00000
_0807F40C:
	ldrb r1, [r5, #0xd]
	lsls r1, r1, #1
	ldr r0, _0807F428 @ =0xFFF00000
_0807F412:
	bl __divsi3
	str r0, [r5, #0x48]
_0807F418:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	b _0807F480
	.align 2, 0
_0807F428: .4byte 0xFFF00000
_0807F42C:
	bl RandomNumberGenerator
	movs r1, #0x3c
	bl __umodsi3
	adds r4, r0, #0
	cmp r4, #0
	bne _0807F480
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_080819E0
	b _0807F47E
_0807F44E:
	adds r0, r5, #0
	bl sub_08080F84
	movs r4, #0
	str r4, [r5, #0x48]
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldr r2, _0807F490 @ =0xFFD00000
	adds r0, r5, #0
	bl sub_0806D288
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _0807F480
	movs r0, #0x28
	strb r0, [r5, #0xb]
_0807F47E:
	strb r4, [r5, #0xd]
_0807F480:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807F490: .4byte 0xFFD00000

	thumb_func_start sub_0807F494
sub_0807F494: @ 0x0807F494
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r7, r0, #0
	ldr r1, _0807F50C @ =0x08118EE0
	add r0, sp, #8
	movs r2, #0xb
	bl memcpy
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x28]
	ldr r4, _0807F510 @ =0x08118EEB
	adds r1, r4, #0
	movs r2, #4
	bl memcpy
	add r1, sp, #0x18
	mov r8, r1
	mov r0, r8
	adds r1, r4, #0
	movs r2, #4
	bl memcpy
	add r2, sp, #0x1c
	mov sb, r2
	ldr r1, _0807F514 @ =0x08118EEF
	mov r0, sb
	movs r2, #4
	bl memcpy
	add r6, sp, #0x20
	ldr r1, _0807F518 @ =0x08118EF3
	adds r0, r6, #0
	movs r2, #4
	bl memcpy
	add r4, sp, #0x24
	ldr r1, _0807F51C @ =0x08118EF7
	adds r0, r4, #0
	movs r2, #4
	bl memcpy
	ldr r3, [r7, #0x1c]
	mov sl, r3
	ldrb r0, [r7, #0xb]
	mov r8, sb
	mov sb, r6
	cmp r0, #0x38
	bls _0807F502
	bl _080809B0
_0807F502:
	lsls r0, r0, #2
	ldr r1, _0807F520 @ =_0807F524
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807F50C: .4byte 0x08118EE0
_0807F510: .4byte 0x08118EEB
_0807F514: .4byte 0x08118EEF
_0807F518: .4byte 0x08118EF3
_0807F51C: .4byte 0x08118EF7
_0807F520: .4byte _0807F524
_0807F524: @ jump table
	.4byte _0807F608 @ case 0
	.4byte _0807F6C8 @ case 1
	.4byte _0807F736 @ case 2
	.4byte _0807F760 @ case 3
	.4byte _0807F7E4 @ case 4
	.4byte _0807F864 @ case 5
	.4byte _0807F97C @ case 6
	.4byte _0807F9D2 @ case 7
	.4byte _0807FA14 @ case 8
	.4byte _080809B0 @ case 9
	.4byte _0807FA36 @ case 10
	.4byte _0807FA96 @ case 11
	.4byte _0807FAE0 @ case 12
	.4byte _0807FB64 @ case 13
	.4byte _0807FBE4 @ case 14
	.4byte _0807FD18 @ case 15
	.4byte _0807FD52 @ case 16
	.4byte _08080990 @ case 17
	.4byte _080809B0 @ case 18
	.4byte _080809B0 @ case 19
	.4byte _0807FD94 @ case 20
	.4byte _0807FEAC @ case 21
	.4byte _0807FF16 @ case 22
	.4byte _0807FF90 @ case 23
	.4byte _0808012C @ case 24
	.4byte _08080990 @ case 25
	.4byte _080809B0 @ case 26
	.4byte _080809B0 @ case 27
	.4byte _080809B0 @ case 28
	.4byte _080809B0 @ case 29
	.4byte _080809B0 @ case 30
	.4byte _0808017A @ case 31
	.4byte _0808020E @ case 32
	.4byte _080802B6 @ case 33
	.4byte _08080488 @ case 34
	.4byte _080804FE @ case 35
	.4byte _080809B0 @ case 36
	.4byte _080809B0 @ case 37
	.4byte _080809B0 @ case 38
	.4byte _080809B0 @ case 39
	.4byte _0808051C @ case 40
	.4byte _080805B2 @ case 41
	.4byte _080805F6 @ case 42
	.4byte _080806F4 @ case 43
	.4byte _08080736 @ case 44
	.4byte _08080758 @ case 45
	.4byte _08080778 @ case 46
	.4byte _080809B0 @ case 47
	.4byte _080809B0 @ case 48
	.4byte _080809B0 @ case 49
	.4byte _080809B0 @ case 50
	.4byte _08080796 @ case 51
	.4byte _080807DA @ case 52
	.4byte _080808D0 @ case 53
	.4byte _0808091C @ case 54
	.4byte _0808094C @ case 55
	.4byte _08080990 @ case 56
_0807F608:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x65
	beq _0807F61A
	movs r0, #0x28
	strb r0, [r7, #0xb]
	bl _080809B0
_0807F61A:
	adds r0, r7, #0
	bl sub_08080F84
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	bne _0807F67E
	movs r4, #0
	movs r0, #0xb
	strb r0, [r1]
	movs r0, #1
	strb r0, [r7, #0xb]
	movs r3, #0xe0
	lsls r3, r3, #5
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	movs r3, #0x90
	lsls r3, r3, #7
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	movs r6, #0x80
	lsls r6, r6, #3
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	adds r3, r6, #0
	bl sub_08081018
	movs r0, #0
	strh r6, [r7, #0x22]
	strb r0, [r7, #0x18]
	b _0807F6C0
_0807F67E:
	movs r4, #0
	movs r0, #0x10
	strb r0, [r1]
	movs r0, #0xa
	strb r0, [r7, #0xb]
	movs r3, #0x90
	lsls r3, r3, #7
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #5
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #3
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	bl sub_08081018
	movs r1, #0
	movs r0, #8
	strh r0, [r7, #0x22]
	strb r1, [r7, #0x18]
_0807F6C0:
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x14
	b _0807FE9E
_0807F6C8:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r4, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F6E2
	bl _080809B0
_0807F6E2:
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x18
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xc
	strb r0, [r1]
	movs r3, #0xe0
	lsls r3, r3, #5
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	movs r3, #0x90
	lsls r3, r3, #7
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #3
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #4
	bl _08080864
_0807F736:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F74E
	bl _080809B0
_0807F74E:
	ldr r0, [r7, #0x24]
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	bl _080809B0
_0807F760:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r5, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F77A
	bl _080809B0
_0807F77A:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xd
	strb r0, [r1]
	ldr r3, _0807F7D4 @ =0xFFFFCC00
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	ldr r4, _0807F7D8 @ =0xFFFFEC00
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	ldr r3, _0807F7DC @ =0xFFFFDE00
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	bl sub_08081018
	ldr r3, _0807F7E0 @ =0xFFFFC000
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl _08080910
	.align 2, 0
_0807F7D4: .4byte 0xFFFFCC00
_0807F7D8: .4byte 0xFFFFEC00
_0807F7DC: .4byte 0xFFFFDE00
_0807F7E0: .4byte 0xFFFFC000
_0807F7E4:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r5, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F7FE
	bl _080809B0
_0807F7FE:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xe
	strb r0, [r1]
	ldr r3, _0807F854 @ =0xFFFFCC00
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	ldr r4, _0807F858 @ =0xFFFFEC00
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	ldr r3, _0807F85C @ =0xFFFFDE00
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	bl sub_08081018
	ldr r3, _0807F860 @ =0xFFFFC000
	str r5, [sp]
	bl _080806E2
	.align 2, 0
_0807F854: .4byte 0xFFFFCC00
_0807F858: .4byte 0xFFFFEC00
_0807F85C: .4byte 0xFFFFDE00
_0807F860: .4byte 0xFFFFC000
_0807F864:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F87C
	bl _080809B0
_0807F87C:
	movs r0, #1
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xf
	strb r0, [r1]
	movs r5, #0
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	movs r3, #0
	bl sub_08081018
	movs r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_08011F7C
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r5, _0807F968 @ =0xFFCC0000
	cmp r0, #0
	beq _0807F8F4
	movs r5, #0xd0
	lsls r5, r5, #0xe
_0807F8F4:
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r6, r7, #0
	adds r6, #0x5c
	str r6, [sp, #0x2c]
	ldrb r2, [r6]
	subs r2, #1
	movs r3, #1
	bl sub_0806D7F0
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _0807F96C @ =0x0000FFFF
	mov sl, r0
	ands r4, r0
	ldr r1, _0807F970 @ =0xFFFF8000
	adds r4, r4, r1
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r2, _0807F974 @ =0x0001FFFF
	mov r8, r2
	ands r3, r2
	ldr r6, _0807F978 @ =0xFFFF0000
	subs r3, r6, r3
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	ldr r6, [sp, #0x2c]
	ldrb r2, [r6]
	subs r2, #1
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DCC4
	bl RandomNumberGenerator
	adds r4, r0, #0
	mov r3, sl
	ands r4, r3
	ldr r6, _0807F970 @ =0xFFFF8000
	adds r4, r4, r6
	bl RandomNumberGenerator
	mov r1, r8
	ands r0, r1
	ldr r2, _0807F978 @ =0xFFFF0000
	subs r3, r2, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	ldr r5, [sp, #0x2c]
	b _0807FCEA
	.align 2, 0
_0807F968: .4byte 0xFFCC0000
_0807F96C: .4byte 0x0000FFFF
_0807F970: .4byte 0xFFFF8000
_0807F974: .4byte 0x0001FFFF
_0807F978: .4byte 0xFFFF0000
_0807F97C:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r4, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F996
	bl _080809B0
_0807F996:
	movs r0, #0x3c
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #3
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #4
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #2
	bl sub_080819C4
	movs r3, #0x88
	lsls r3, r3, #6
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #7
	str r4, [sp]
	bl _080806E2
_0807F9D2:
	ldrb r1, [r7, #0xd]
	cmp r1, #0x27
	bls _0807F9EA
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0807F9EA
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0807F9EA:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807F9FA
	bl _080809B0
_0807F9FA:
	movs r0, #0x28
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	movs r0, #0
	strh r0, [r7, #0x22]
	bl _0808097E
_0807FA14:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807FA2C
	bl _080809B0
_0807FA2C:
	movs r0, #0x14
	strb r0, [r7, #0xd]
	movs r0, #3
	bl _080809AA
_0807FA36:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r4, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807FA50
	bl _080809B0
_0807FA50:
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x18
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x11
	strb r0, [r1]
	movs r3, #0x90
	lsls r3, r3, #7
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #5
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #3
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #4
	bl _08080864
_0807FA96:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r4, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807FAB0
	bl _080809B0
_0807FAB0:
	ldr r0, [r7, #0x24]
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x11
	strb r0, [r1]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl _08080472
_0807FAE0:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r5, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807FAFA
	bl _080809B0
_0807FAFA:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x12
	strb r0, [r1]
	ldr r3, _0807FB54 @ =0xFFFFC000
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	ldr r4, _0807FB58 @ =0xFFFFEC00
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	ldr r3, _0807FB5C @ =0xFFFFDC00
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #5
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	ldr r3, _0807FB60 @ =0xFFFFD400
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl _08080910
	.align 2, 0
_0807FB54: .4byte 0xFFFFC000
_0807FB58: .4byte 0xFFFFEC00
_0807FB5C: .4byte 0xFFFFDC00
_0807FB60: .4byte 0xFFFFD400
_0807FB64:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r5, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807FB7E
	bl _080809B0
_0807FB7E:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x13
	strb r0, [r1]
	ldr r3, _0807FBD4 @ =0xFFFFC000
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	ldr r4, _0807FBD8 @ =0xFFFFEC00
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	ldr r3, _0807FBDC @ =0xFFFFDC00
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #5
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	ldr r3, _0807FBE0 @ =0xFFFFD400
	str r5, [sp]
	bl _080806E2
	.align 2, 0
_0807FBD4: .4byte 0xFFFFC000
_0807FBD8: .4byte 0xFFFFEC00
_0807FBDC: .4byte 0xFFFFDC00
_0807FBE0: .4byte 0xFFFFD400
_0807FBE4:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807FBFC
	bl _080809B0
_0807FBFC:
	movs r0, #1
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x14
	strb r0, [r1]
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	movs r3, #0
	bl sub_08081018
	movs r1, #0
	str r1, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	movs r2, #0
	str r2, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	movs r3, #0
	str r3, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	bl sub_08081018
	movs r5, #0
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	movs r3, #0
	bl sub_08081018
	movs r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_08011F7C
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r5, _0807FD04 @ =0xFFCC0000
	cmp r0, #0
	beq _0807FC7A
	movs r5, #0xd0
	lsls r5, r5, #0xe
_0807FC7A:
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r6, r7, #0
	adds r6, #0x5c
	str r6, [sp, #0x30]
	ldrb r2, [r6]
	subs r2, #1
	movs r3, #1
	bl sub_0806D7F0
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _0807FD08 @ =0x0000FFFF
	mov sl, r0
	ands r4, r0
	ldr r1, _0807FD0C @ =0xFFFF8000
	adds r4, r4, r1
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r2, _0807FD10 @ =0x0001FFFF
	mov r8, r2
	ands r3, r2
	ldr r6, _0807FD14 @ =0xFFFF0000
	subs r3, r6, r3
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	ldr r6, [sp, #0x30]
	ldrb r2, [r6]
	subs r2, #1
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DCC4
	bl RandomNumberGenerator
	adds r4, r0, #0
	mov r3, sl
	ands r4, r3
	ldr r6, _0807FD0C @ =0xFFFF8000
	adds r4, r4, r6
	bl RandomNumberGenerator
	mov r1, r8
	ands r0, r1
	ldr r2, _0807FD14 @ =0xFFFF0000
	subs r3, r2, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	ldr r5, [sp, #0x30]
_0807FCEA:
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	movs r6, #0
	str r6, [sp, #4]
	adds r2, r4, #0
	bl sub_0806DCC4
	movs r0, #0x80
	bl PlaySong
	bl _080809B0
	.align 2, 0
_0807FD04: .4byte 0xFFCC0000
_0807FD08: .4byte 0x0000FFFF
_0807FD0C: .4byte 0xFFFF8000
_0807FD10: .4byte 0x0001FFFF
_0807FD14: .4byte 0xFFFF0000
_0807FD18:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807FD30
	bl _080809B0
_0807FD30:
	movs r0, #0x3c
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #3
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #4
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #2
	bl _0808097A
_0807FD52:
	ldrb r1, [r7, #0xd]
	cmp r1, #0x27
	bls _0807FD6A
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0807FD6A
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0807FD6A:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807FD7A
	bl _080809B0
_0807FD7A:
	movs r0, #0x28
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	movs r0, #0
	strh r0, [r7, #0x22]
	bl _080809B0
_0807FD94:
	adds r0, r7, #0
	bl sub_08080F84
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	bne _0807FE3C
	movs r6, #0
	movs r0, #0x15
	strb r0, [r1]
	movs r0, #0x1f
	strb r0, [r7, #0xb]
	ldr r4, _0807FE34 @ =0xFFFFF000
	movs r0, #0xd0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	adds r3, r4, #0
	bl sub_08081018
	movs r3, #0xa0
	lsls r3, r3, #9
	movs r0, #0xa0
	lsls r0, r0, #0xb
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #6
	bl sub_08081018
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	ldr r3, _0807FE38 @ =0xFFFFE000
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	adds r3, r4, #0
	bl sub_08081018
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #1
	b _0807FE96
	.align 2, 0
_0807FE34: .4byte 0xFFFFF000
_0807FE38: .4byte 0xFFFFE000
_0807FE3C:
	movs r6, #0
	movs r0, #0x17
	strb r0, [r1]
	movs r0, #0x15
	strb r0, [r7, #0xb]
	ldr r4, _0807FEA8 @ =0xFFFFF000
	movs r0, #0x90
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	adds r3, r4, #0
	bl sub_08081018
	movs r1, #0
	movs r0, #2
_0807FE96:
	strh r0, [r7, #0x22]
	strb r1, [r7, #0x18]
	ldr r0, [r7, #0x24]
	add r0, sb
_0807FE9E:
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	bl _080809B0
	.align 2, 0
_0807FEA8: .4byte 0xFFFFF000
_0807FEAC:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r5, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807FEC6
	bl _080809B0
_0807FEC6:
	ldr r0, [r7, #0x24]
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	b _08080472
_0807FF16:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r5, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0807FF28
	bl _080809B0
_0807FF28:
	movs r0, #0xa
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r3, #0x80
	lsls r3, r3, #7
	movs r0, #0x98
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #6
	bl sub_08081018
	movs r4, #0xc0
	lsls r4, r4, #5
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #5
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x18
	strb r0, [r1]
	bl _080809B0
_0807FF90:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	cmp r0, #6
	beq _0807FFA0
	b _080800BE
_0807FFA0:
	movs r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_08011F7C
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	mov r8, r0
	ands r0, r1
	ldr r5, _0807FFF4 @ =0xFFFF0000
	adds r6, r2, #0
	cmp r0, #0
	beq _0807FFC2
	movs r5, #0x80
	lsls r5, r5, #9
_0807FFC2:
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r4, r7, #0
	adds r4, #0x5c
	ldrb r2, [r4]
	subs r2, #1
	movs r3, #1
	bl sub_0806D7F0
	ldrb r1, [r6]
	mov r0, r8
	ands r0, r1
	mov sb, r4
	cmp r0, #0
	beq _0807FFFC
	movs r5, #0x80
	lsls r5, r5, #9
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _0807FFF8 @ =0x0001FFFF
	ands r4, r0
	b _08080008
	.align 2, 0
_0807FFF4: .4byte 0xFFFF0000
_0807FFF8: .4byte 0x0001FFFF
_0807FFFC:
	ldr r5, _08080048 @ =0xFFFF0000
	bl RandomNumberGenerator
	ldr r1, _0808004C @ =0x0001FFFF
	ands r1, r0
	rsbs r4, r1, #0
_08080008:
	bl RandomNumberGenerator
	ldr r1, _0808004C @ =0x0001FFFF
	mov r8, r1
	ands r0, r1
	ldr r3, _08080050 @ =0xFFFE0000
	subs r3, r3, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r2, r4, r5
	mov r5, sb
	ldrb r4, [r5]
	subs r4, #1
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	bl sub_0806DCC4
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08080054
	movs r5, #0x80
	lsls r5, r5, #9
	bl RandomNumberGenerator
	adds r4, r0, #0
	mov r0, r8
	ands r4, r0
	b _08080060
	.align 2, 0
_08080048: .4byte 0xFFFF0000
_0808004C: .4byte 0x0001FFFF
_08080050: .4byte 0xFFFE0000
_08080054:
	ldr r5, _08080098 @ =0xFFFF0000
	bl RandomNumberGenerator
	mov r1, r8
	ands r0, r1
	rsbs r4, r0, #0
_08080060:
	bl RandomNumberGenerator
	ldr r1, _0808009C @ =0x0001FFFF
	ands r1, r0
	ldr r3, _080800A0 @ =0xFFFE0000
	subs r3, r3, r1
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r2, r4, r5
	mov r5, sb
	ldrb r4, [r5]
	subs r4, #1
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	bl sub_0806DCC4
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080800A4
	movs r5, #0x80
	lsls r5, r5, #9
	movs r3, #0x90
	lsls r3, r3, #0xb
	b _080800A8
	.align 2, 0
_08080098: .4byte 0xFFFF0000
_0808009C: .4byte 0x0001FFFF
_080800A0: .4byte 0xFFFE0000
_080800A4:
	ldr r5, _08080120 @ =0xFFFF0000
	ldr r3, _08080124 @ =0xFFFB8000
_080800A8:
	ldr r1, [r7, #0x40]
	adds r1, r1, r5
	ldr r2, [r7, #0x44]
	ldr r0, _08080128 @ =0xFFFD0000
	str r0, [sp]
	adds r0, r7, #0
	bl sub_080816BC
	movs r0, #0x80
	bl PlaySong
_080800BE:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r4, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080800D0
	bl _080809B0
_080800D0:
	movs r0, #0xc
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strh r4, [r7, #0x22]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	b _08080472
	.align 2, 0
_08080120: .4byte 0xFFFF0000
_08080124: .4byte 0xFFFB8000
_08080128: .4byte 0xFFFD0000
_0808012C:
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08080140
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_08080140:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080150
	bl _080809B0
_08080150:
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #1
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #5
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #4
	bl _0808097A
_0808017A:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r5, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080194
	bl _080809B0
_08080194:
	ldr r0, [r7, #0x24]
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	movs r3, #0
	bl sub_08081018
	movs r3, #0xa0
	lsls r3, r3, #9
	movs r0, #0xa0
	lsls r0, r0, #0xb
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #6
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r5, [sp]
	b _0808046C
_0808020E:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r5, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808021E
	b _080809B0
_0808021E:
	movs r0, #0xa
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r3, #0x90
	lsls r3, r3, #7
	movs r0, #0xd0
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	bl sub_08081018
	movs r3, #0xa0
	lsls r3, r3, #9
	movs r0, #0xa0
	lsls r0, r0, #0xb
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #6
	bl sub_08081018
	movs r4, #0xc0
	lsls r4, r4, #5
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	adds r3, r4, #0
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #5
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #6
	adds r3, r4, #0
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #6
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x16
	strb r0, [r1]
	b _080809B0
_080802B6:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	cmp r0, #6
	beq _080802C6
	b _080803E6
_080802C6:
	movs r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_08011F7C
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r6, #0x40
	mov r8, r6
	mov r0, r8
	ands r0, r1
	ldr r5, _0808031C @ =0xFFFF0000
	adds r6, r2, #0
	cmp r0, #0
	beq _080802EA
	movs r5, #0x80
	lsls r5, r5, #9
_080802EA:
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r4, r7, #0
	adds r4, #0x5c
	ldrb r2, [r4]
	subs r2, #1
	movs r3, #1
	bl sub_0806D7F0
	ldrb r1, [r6]
	mov r0, r8
	ands r0, r1
	mov sb, r4
	cmp r0, #0
	beq _08080324
	movs r5, #0x80
	lsls r5, r5, #9
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _08080320 @ =0x0001FFFF
	ands r4, r0
	b _08080330
	.align 2, 0
_0808031C: .4byte 0xFFFF0000
_08080320: .4byte 0x0001FFFF
_08080324:
	ldr r5, _08080370 @ =0xFFFF0000
	bl RandomNumberGenerator
	ldr r1, _08080374 @ =0x0001FFFF
	ands r1, r0
	rsbs r4, r1, #0
_08080330:
	bl RandomNumberGenerator
	ldr r1, _08080374 @ =0x0001FFFF
	mov r8, r1
	ands r0, r1
	ldr r3, _08080378 @ =0xFFFE0000
	subs r3, r3, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r2, r4, r5
	mov r5, sb
	ldrb r4, [r5]
	subs r4, #1
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	bl sub_0806DCC4
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808037C
	movs r5, #0x80
	lsls r5, r5, #9
	bl RandomNumberGenerator
	adds r4, r0, #0
	mov r0, r8
	ands r4, r0
	b _08080388
	.align 2, 0
_08080370: .4byte 0xFFFF0000
_08080374: .4byte 0x0001FFFF
_08080378: .4byte 0xFFFE0000
_0808037C:
	ldr r5, _080803C0 @ =0xFFFF0000
	bl RandomNumberGenerator
	mov r1, r8
	ands r0, r1
	rsbs r4, r0, #0
_08080388:
	bl RandomNumberGenerator
	ldr r1, _080803C4 @ =0x0001FFFF
	ands r1, r0
	ldr r3, _080803C8 @ =0xFFFE0000
	subs r3, r3, r1
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r2, r4, r5
	mov r5, sb
	ldrb r4, [r5]
	subs r4, #1
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	bl sub_0806DCC4
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080803CC
	movs r5, #0x80
	lsls r5, r5, #9
	movs r3, #0x90
	lsls r3, r3, #0xb
	b _080803D0
	.align 2, 0
_080803C0: .4byte 0xFFFF0000
_080803C4: .4byte 0x0001FFFF
_080803C8: .4byte 0xFFFE0000
_080803CC:
	ldr r5, _0808047C @ =0xFFFF0000
	ldr r3, _08080480 @ =0xFFFB8000
_080803D0:
	ldr r1, [r7, #0x40]
	adds r1, r1, r5
	ldr r2, [r7, #0x44]
	ldr r0, _08080484 @ =0xFFFD0000
	str r0, [sp]
	adds r0, r7, #0
	bl sub_080816BC
	movs r0, #0x80
	bl PlaySong
_080803E6:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r4, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080803F6
	b _080809B0
_080803F6:
	movs r0, #0xc
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strh r4, [r7, #0x22]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #8
	movs r2, #7
	movs r3, #0
	bl sub_08081018
	movs r3, #0xa0
	lsls r3, r3, #9
	movs r0, #0xa0
	lsls r0, r0, #0xb
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #6
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #6
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
_0808046C:
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
_08080472:
	movs r3, #0
	bl sub_08081018
	b _080809B0
	.align 2, 0
_0808047C: .4byte 0xFFFF0000
_08080480: .4byte 0xFFFB8000
_08080484: .4byte 0xFFFD0000
_08080488:
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0808049C
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_0808049C:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080804AA
	b _080809B0
_080804AA:
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #8
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #7
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #5
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #4
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #9
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #0xa
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #3
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #2
	bl sub_080819C4
	b _080809B0
_080804FE:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080514
	b _080809B0
_08080514:
	movs r0, #0x14
	strb r0, [r7, #0xd]
	movs r0, #3
	b _080809AA
_0808051C:
	adds r0, r7, #0
	bl sub_08080F84
	adds r0, r7, #0
	adds r0, #0x21
	movs r4, #0
	strb r4, [r0]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	bne _08080570
	movs r0, #0x19
	strb r0, [r1]
	movs r0, #0x29
	strb r0, [r7, #0xb]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	movs r0, #0x80
	lsls r0, r0, #3
	b _080805A6
_08080570:
	movs r0, #0x1d
	strb r0, [r1]
	movs r0, #0x33
	strb r0, [r7, #0xb]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	movs r0, #8
_080805A6:
	strh r0, [r7, #0x22]
	movs r0, #1
	strb r0, [r7, #0x18]
	movs r0, #0xc
	strb r0, [r7, #0xd]
	b _080809B0
_080805B2:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080805C8
	b _080809B0
_080805C8:
	adds r0, r7, #0
	adds r0, #0x21
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #1
	movs r0, #0xc
	subs r0, r0, r1
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1a
	strb r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #8
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	b _08080910
_080805F6:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808060C
	b _080809B0
_0808060C:
	adds r1, r7, #0
	adds r1, #0x21
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #1
	ble _08080694
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808063E
	movs r1, #0xa4
	lsls r1, r1, #1
	add r1, sl
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #9
	adds r0, r0, r6
	b _0808064A
_0808063E:
	movs r1, #0xa4
	lsls r1, r1, #1
	add r1, sl
	ldr r0, [r1]
	ldr r2, _08080688 @ =0xFFFF0000
	adds r0, r0, r2
_0808064A:
	str r0, [r1]
	movs r4, #0
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1b
	strb r0, [r1]
	ldr r3, _0808068C @ =0xFFFFE000
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #7
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	ldr r3, _08080690 @ =0xFFFFE800
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #9
	b _08080864
	.align 2, 0
_08080688: .4byte 0xFFFF0000
_0808068C: .4byte 0xFFFFE000
_08080690: .4byte 0xFFFFE800
_08080694:
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080806B2
	movs r1, #0xa4
	lsls r1, r1, #1
	add r1, sl
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	b _080806BE
_080806B2:
	movs r1, #0xa4
	lsls r1, r1, #1
	add r1, sl
	ldr r0, [r1]
	ldr r5, _080806F0 @ =0xFFFF0000
	adds r0, r0, r5
_080806BE:
	str r0, [r1]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0xc
	subs r1, r1, r0
	movs r2, #0
	strb r1, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	subs r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x19
	strb r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #8
	str r2, [sp]
_080806E2:
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	b _080809B0
	.align 2, 0
_080806F0: .4byte 0xFFFF0000
_080806F4:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r4, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808070C
	b _080809B0
_0808070C:
	movs r0, #3
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1c
	strb r0, [r1]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #9
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	b _0808090E
_08080736:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808074C
	b _080809B0
_0808074C:
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _0808097E
_08080758:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080766
	b _080809B0
_08080766:
	movs r0, #0x28
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	b _08080968
_08080778:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0808078E
	b _080809B0
_0808078E:
	movs r0, #0x14
	strb r0, [r7, #0xd]
	movs r0, #3
	b _080809AA
_08080796:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080807AC
	b _080809B0
_080807AC:
	adds r0, r7, #0
	adds r0, #0x21
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #1
	movs r0, #0xc
	subs r0, r0, r1
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1e
	strb r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #8
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	b _08080910
_080807DA:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080807F0
	b _080809B0
_080807F0:
	adds r1, r7, #0
	adds r1, #0x21
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #1
	ble _08080878
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08080820
	mov r6, sl
	ldr r0, [r6, #0x68]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r6, #0x68]
	b _0808082A
_08080820:
	mov r2, sl
	ldr r0, [r2, #0x68]
	ldr r3, _0808086C @ =0xFFFF0000
	adds r0, r0, r3
	str r0, [r2, #0x68]
_0808082A:
	movs r4, #0
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1f
	strb r0, [r1]
	ldr r3, _08080870 @ =0xFFFFE000
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #9
	bl sub_08081018
	movs r3, #0x80
	lsls r3, r3, #7
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	ldr r3, _08080874 @ =0xFFFFE800
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #2
_08080864:
	movs r2, #5
	bl sub_08081018
	b _080809B0
	.align 2, 0
_0808086C: .4byte 0xFFFF0000
_08080870: .4byte 0xFFFFE000
_08080874: .4byte 0xFFFFE800
_08080878:
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08080894
	mov r5, sl
	ldr r0, [r5, #0x68]
	movs r6, #0x80
	lsls r6, r6, #9
	adds r0, r0, r6
	str r0, [r5, #0x68]
	b _0808089E
_08080894:
	mov r1, sl
	ldr r0, [r1, #0x68]
	ldr r3, _080808CC @ =0xFFFF0000
	adds r0, r0, r3
	str r0, [r1, #0x68]
_0808089E:
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0xc
	subs r1, r1, r0
	movs r2, #0
	strb r1, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	subs r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1d
	strb r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #8
	str r2, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08081018
	b _080809B0
	.align 2, 0
_080808CC: .4byte 0xFFFF0000
_080808D0:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r4, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080809B0
	movs r0, #3
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x20
	strb r0, [r1]
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #5
	movs r3, #0
	bl sub_08081018
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
_0808090E:
	movs r3, #0
_08080910:
	bl sub_08081018
	movs r0, #0x87
	bl PlaySong
	b _080809B0
_0808091C:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080809B0
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #2
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #3
	bl sub_080819C4
	b _080809B0
_0808094C:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080809B0
	movs r0, #0x28
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #4
_08080968:
	strb r0, [r1]
	movs r0, #0
	strh r0, [r7, #0x22]
	adds r0, r7, #0
	movs r1, #2
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #3
_0808097A:
	bl sub_080819C4
_0808097E:
	adds r0, r7, #0
	movs r1, #9
	bl sub_080819C4
	adds r0, r7, #0
	movs r1, #0xa
	bl sub_080819C4
	b _080809B0
_08080990:
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0808199C
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080809B0
	movs r0, #0x14
	strb r0, [r7, #0xd]
	movs r0, #6
_080809AA:
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xa]
_080809B0:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
