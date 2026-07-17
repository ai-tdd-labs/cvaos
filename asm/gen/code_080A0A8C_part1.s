	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_080AC468
sub_080AC468: @ 0x080AC468
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	mov sb, r2
	mov r8, r3
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r0, [r0, #0x1c]
	mov sl, r0
	ldr r3, [sp, #4]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #3
	mov r3, sl
	adds r7, r0, r3
	movs r0, #0
	str r0, [r7, #0x34]
	str r1, [r7, #0x28]
	str r1, [r7, #0x2c]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #0x14]
	mov r0, sb
	str r0, [r7, #0x18]
	cmp r2, #0
	beq _080AC4AC
	str r2, [r7, #0x24]
	lsls r0, r0, #3
	b _080AC4E4
_080AC4AC:
	mov r1, sb
	lsls r4, r1, #3
	subs r0, r4, r1
	lsls r0, r0, #3
	add r0, sl
	ldr r2, [r0]
	ldr r1, [r7]
	subs r5, r2, r1
	ldr r1, [r0, #4]
	ldr r0, [r7, #4]
	subs r6, r1, r0
	adds r0, r5, #0
	adds r1, r5, #0
	bl sub_0803E86C
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r6, #0
	bl sub_0803E86C
	adds r6, r0, #0
	adds r0, r5, r6
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #8
	str r0, [r7, #0x24]
	adds r0, r4, #0
_080AC4E4:
	ldr r2, [sp, #4]
	lsls r4, r2, #3
	subs r2, r4, r2
	lsls r2, r2, #3
	add r2, sl
	mov r3, sb
	subs r0, r0, r3
	lsls r0, r0, #3
	add r0, sl
	ldr r3, [r2]
	ldr r1, [r0]
	subs r5, r3, r1
	ldr r1, [r2, #4]
	ldr r0, [r0, #4]
	subs r6, r1, r0
	cmp r5, #0
	bge _080AC512
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _080AC514
_080AC512:
	asrs r2, r5, #0x10
_080AC514:
	cmp r6, #0
	bge _080AC524
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080AC526
_080AC524:
	asrs r1, r6, #0x10
_080AC526:
	adds r0, r2, #0
	bl ArcTan2
	ldr r2, [sp, #4]
	subs r1, r4, r2
	lsls r1, r1, #3
	mov r3, sl
	adds r4, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r0, r1
	str r2, [r4, #0x10]
	mov r1, r8
	cmp r1, #0
	bge _080AC54A
	rsbs r1, r1, #0
_080AC54A:
	ldr r0, _080AC570 @ =0x0000FFFF
	cmp r1, r0
	ble _080AC584
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AC57E
	movs r0, #0xc0
	lsls r0, r0, #9
	cmp r8, r0
	ble _080AC574
	movs r0, #0xe0
	lsls r0, r0, #0xa
	mov r1, r8
	subs r0, r0, r1
	b _080AC59C
	.align 2, 0
_080AC570: .4byte 0x0000FFFF
_080AC574:
	movs r0, #0xa0
	lsls r0, r0, #0xa
	mov r2, r8
	subs r0, r0, r2
	b _080AC59C
_080AC57E:
	mov r3, r8
	str r3, [r4, #0xc]
	b _080AC59E
_080AC584:
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AC598
	mov r1, r8
	subs r0, r2, r1
	b _080AC59C
_080AC598:
	mov r3, r8
	adds r0, r2, r3
_080AC59C:
	str r0, [r4, #0xc]
_080AC59E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AC5B0
sub_080AC5B0: @ 0x080AC5B0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	ldrh r0, [r4, #0x34]
	subs r0, r0, r3
	strh r0, [r4, #0x34]
	ldrb r1, [r4, #0x19]
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bgt _080AC5D2
	adds r0, r1, #1
	strb r0, [r4, #0x19]
_080AC5D2:
	movs r0, #1
	strb r0, [r4, #0x1a]
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _080AC64E
	adds r0, r4, #0
	bl sub_080683BC
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0x6e
	bl PlaySong
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
	movs r0, #0x3c
	strb r0, [r4, #0xd]
	movs r0, #2
	strb r0, [r4, #0xa]
	movs r0, #0
	strb r0, [r4, #0xb]
	movs r2, #0x30
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080AC64E
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	ldr r2, _080AC658 @ =0xFFE00000
	adds r1, r1, r2
	bl sub_080D6450
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0xc
	movs r3, #0x60
	bl sub_080D6EF8
	movs r0, #0
	bl sub_08034498
_080AC64E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AC658: .4byte 0xFFE00000

	thumb_func_start sub_080AC65C
sub_080AC65C: @ 0x080AC65C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r3, [r4, #0x1c]
	mov r2, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r1, #0
	strh r0, [r2]
	mov r0, sp
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldrb r0, [r3, #0xa]
	cmp r0, #1
	bne _080AC6CC
	ldrb r0, [r3, #0xb]
	cmp r0, #0x13
	bhi _080AC6CC
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	subs r0, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080AC6CC
	mov r1, sp
	movs r0, #3
	strh r0, [r1, #6]
	mov r0, sp
	bl sub_08021654
	ldr r2, _080AC6BC @ =0xFFFC0000
	ldr r0, _080AC6C0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080AC6C4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	ble _080AC6B2
	rsbs r2, r2, #0
_080AC6B2:
	ldr r1, _080AC6C8 @ =0xFFFDC000
	adds r0, r2, #0
	bl sub_08021248
	b _080AC6D2
	.align 2, 0
_080AC6BC: .4byte 0xFFFC0000
_080AC6C0: .4byte gEwramData
_080AC6C4: .4byte 0x00013110
_080AC6C8: .4byte 0xFFFDC000
_080AC6CC:
	mov r1, sp
	movs r0, #0
	strh r0, [r1, #6]
_080AC6D2:
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AC6E8
sub_080AC6E8: @ 0x080AC6E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	adds r6, r0, #0
	ldr r0, [r6, #0x1c]
	mov r8, r0
	ldr r0, _080AC76C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080AC770 @ =0x0000A094
	adds r1, r1, r0
	mov sb, r1
	add r5, sp, #0x18
	ldr r1, _080AC774 @ =0x08119352
	adds r0, r5, #0
	movs r2, #0xe
	bl memcpy
	add r4, sp, #0x28
	ldr r1, _080AC778 @ =0x08119360
	adds r0, r4, #0
	movs r2, #0x1c
	bl memcpy
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _080AC724
	b _080ACC2E
_080AC724:
	mov r2, r8
	cmp r2, #0
	bne _080AC72C
	b _080ACBFA
_080AC72C:
	ldr r0, [r2]
	cmp r0, #0
	bne _080AC734
	b _080ACBFA
_080AC734:
	mov r0, r8
	adds r0, #0x36
	adds r1, r6, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080AC746
	b _080ACBFA
_080AC746:
	ldr r5, [r2, #0x1c]
	mov r0, r8
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x20
	bne _080AC77C
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
	b _080AC798
	.align 2, 0
_080AC76C: .4byte gEwramData
_080AC770: .4byte 0x0000A094
_080AC774: .4byte 0x08119352
_080AC778: .4byte 0x08119360
_080AC77C:
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
_080AC798:
	mov r0, r8
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
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	adds r2, r6, #0
	adds r2, #0x20
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	mov r4, r8
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r6, #0x40]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, [r4, #0x44]
	ldr r0, [r0, #4]
	adds r1, r1, r0
	str r1, [r6, #0x44]
	movs r0, #0
	ldrsb r0, [r2, r0]
	mov sl, r3
	adds r7, r2, #0
	cmp r0, #2
	beq _080AC7FE
	cmp r0, #4
	beq _080AC7FE
	cmp r0, #8
	beq _080AC7FE
	cmp r0, #0xd
	bne _080AC898
_080AC7FE:
	adds r0, r6, #0
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r5
	ldr r4, [r1]
	movs r2, #0
	ldrsb r2, [r7, r2]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r2, [r0]
	subs r4, r4, r2
	ldr r3, [r1, #4]
	ldr r0, [r0, #4]
	subs r3, r3, r0
	cmp r4, #0
	bge _080AC838
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _080AC83A
_080AC838:
	asrs r2, r4, #0x10
_080AC83A:
	cmp r3, #0
	bge _080AC84A
	rsbs r0, r3, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080AC84C
_080AC84A:
	asrs r1, r3, #0x10
_080AC84C:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #4
	bne _080AC87A
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AC872
	movs r1, #0x9c
	lsls r1, r1, #6
	adds r0, r2, r1
	b _080AC87E
_080AC872:
	movs r3, #0xb2
	lsls r3, r3, #7
	adds r0, r2, r3
	b _080AC87E
_080AC87A:
	ldr r4, _080AC894 @ =0xFFFFC000
	adds r0, r2, r4
_080AC87E:
	str r0, [r6, #0x48]
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r5
	ldr r0, [r6, #0x48]
	str r0, [r1, #8]
	b _080AC8B0
	.align 2, 0
_080AC894: .4byte 0xFFFFC000
_080AC898:
	cmp r0, #5
	beq _080AC8A0
	cmp r0, #0xc
	bne _080AC8B0
_080AC8A0:
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r5
	ldr r0, [r1, #8]
	str r0, [r6, #0x48]
_080AC8B0:
	mov r1, r8
	ldrb r0, [r1, #0xa]
	cmp r0, #2
	bne _080AC920
	movs r4, #0
	movs r0, #1
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xb]
	ldr r0, [r6, #0x48]
	str r0, [r6, #0x18]
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	subs r1, #0x80
	str r1, [r6, #0x10]
	mov r0, r8
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r3, sb
	movs r5, #0xa
	ldrsh r0, [r3, r5]
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r0, r0, #1
	add r0, sp
	adds r0, #0x28
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r1, r0
	str r1, [r6, #0x24]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r6, #0x54]
	str r4, [r6, #0x50]
	bl RandomNumberGenerator
	ldr r1, _080AC918 @ =0x00003FFF
	ands r1, r0
	ldr r3, _080AC91C @ =0xFFFFE000
	adds r1, r1, r3
	str r1, [r6, #0x48]
	str r4, [r6, #0x4c]
	movs r0, #0
	ldrsb r0, [r7, r0]
	add r0, sp
	adds r0, #0x18
	ldrb r0, [r0]
	strb r0, [r6, #0xd]
	b _080ACDBE
	.align 2, 0
_080AC918: .4byte 0x00003FFF
_080AC91C: .4byte 0xFFFFE000
_080AC920:
	mov r4, r8
	movs r1, #0x22
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsb r2, [r7, r2]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080AC936
	b _080ACBAC
_080AC936:
	adds r0, r2, #0
	cmp r0, #2
	beq _080AC946
	cmp r0, #8
	beq _080AC946
	cmp r0, #0xd
	beq _080AC946
	b _080ACA5C
_080AC946:
	ldrb r1, [r6, #0xd]
	movs r0, #1
	ands r0, r1
	adds r0, #1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	mov sb, r1
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AC994
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	bl sub_080009E4
	adds r4, r0, #0
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	subs r0, r0, r1
	b _080AC9C2
_080AC994:
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r0, r3
	bl sub_080009E4
	adds r4, r0, #0
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0, #8]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r0, r0, r5
_080AC9C2:
	bl sub_080009E4
	adds r3, r0, #0
	mov r0, sb
	muls r0, r4, r0
	cmp r0, #0
	bge _080AC9D8
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080AC9DA
_080AC9D8:
	asrs r0, r0, #0x10
_080AC9DA:
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080AC9FC @ =0xFFFFFF00
	ldr r1, [sp, #0x44]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x44]
	mov r0, sb
	muls r0, r3, r0
	cmp r0, #0
	bge _080ACA00
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080ACA02
	.align 2, 0
_080AC9FC: .4byte 0xFFFFFF00
_080ACA00:
	asrs r0, r0, #0x10
_080ACA02:
	subs r0, #0xa
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x10
	ldr r2, _080ACA50 @ =0xFFFF00FF
	ldr r0, [sp, #0x44]
	ands r0, r2
	orrs r0, r1
	ldr r1, _080ACA54 @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	ldr r1, _080ACA58 @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [sp, #0x44]
	add r4, sp, #0x44
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042848
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428B4
	mov r0, r8
	adds r1, r4, #0
	bl sub_080428B4
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	b _080ACB9C
	.align 2, 0
_080ACA50: .4byte 0xFFFF00FF
_080ACA54: .4byte 0xFF00FFFF
_080ACA58: .4byte 0x00FFFFFF
_080ACA5C:
	cmp r0, #3
	bne _080ACA98
	movs r0, #0xf0
	add r4, sp, #0x44
	strb r0, [r4]
	movs r0, #0xc0
	strb r0, [r4, #1]
	movs r0, #0x20
	strb r0, [r4, #2]
	movs r0, #0x5a
	strb r0, [r4, #3]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042848
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428B4
	mov r0, r8
	adds r1, r4, #0
	bl sub_080428B4
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	b _080ACB9C
_080ACA98:
	cmp r0, #5
	bne _080ACAD4
	movs r0, #0xf4
	add r4, sp, #0x44
	strb r0, [r4]
	movs r0, #0xf6
	strb r0, [r4, #1]
	movs r0, #0x18
	strb r0, [r4, #2]
	movs r0, #0x30
	strb r0, [r4, #3]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042848
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428B4
	mov r0, r8
	adds r1, r4, #0
	bl sub_080428B4
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	b _080ACB9C
_080ACAD4:
	cmp r0, #0xc
	bne _080ACBBC
	movs r0, #0x15
	mov sb, r0
	mov r3, sl
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080ACB14
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	bl sub_080009E4
	adds r4, r0, #0
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	subs r0, r0, r1
	b _080ACB3E
_080ACB14:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r0, r4
	bl sub_080009E4
	adds r4, r0, #0
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0, #8]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r0, r0, r5
_080ACB3E:
	bl sub_080009E4
	adds r3, r0, #0
	mov r0, sb
	muls r0, r4, r0
	cmp r0, #0
	bge _080ACB54
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080ACB56
_080ACB54:
	asrs r0, r0, #0x10
_080ACB56:
	adds r1, r0, #0
	subs r1, #9
	add r0, sp, #0x44
	strb r1, [r0]
	mov r1, sb
	muls r1, r3, r1
	adds r4, r0, #0
	cmp r1, #0
	bge _080ACB70
	rsbs r0, r1, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080ACB72
_080ACB70:
	asrs r0, r1, #0x10
_080ACB72:
	subs r0, #9
	strb r0, [r4, #1]
	movs r0, #0x12
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042848
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428B4
	mov r0, r8
	adds r1, r4, #0
	bl sub_080428B4
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
_080ACB9C:
	ands r0, r1
	strb r0, [r2]
	add r0, sp, #8
	adds r1, r6, #0
	mov r2, r8
	bl sub_080429D0
	b _080ACBBC
_080ACBAC:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
_080ACBBC:
	movs r2, #0
	ldrsb r2, [r7, r2]
	cmp r2, #2
	beq _080ACBDA
	cmp r2, #4
	beq _080ACBDA
	cmp r2, #5
	beq _080ACBDA
	cmp r2, #8
	beq _080ACBDA
	cmp r2, #0xc
	beq _080ACBDA
	cmp r2, #0xd
	beq _080ACBDA
	b _080ACDBE
_080ACBDA:
	ldr r0, [r6, #0x48]
	movs r2, #0x80
	lsls r2, r2, #9
	mov r3, sl
	ldrb r1, [r3]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r1, #7
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	b _080ACDBE
_080ACBFA:
	adds r0, r6, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _080ACC1E
	cmp r0, #5
	beq _080ACC1E
	cmp r0, #8
	beq _080ACC1E
	cmp r0, #0xb
	beq _080ACC1E
	cmp r0, #0xc
	beq _080ACC1E
	cmp r0, #0xd
	beq _080ACC1E
	b _080ACD80
_080ACC1E:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	b _080ACD80
_080ACC2E:
	ldrb r0, [r6, #0xb]
	adds r7, r6, #0
	adds r7, #0x20
	cmp r0, #0
	bne _080ACC54
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0xd
	bne _080ACC54
	movs r0, #0xa
	strb r0, [r6, #0xb]
_080ACC54:
	ldrb r0, [r6, #0xd]
	bl sub_0806D518
	adds r3, r6, #0
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
	ldrb r0, [r6, #0xd]
	mov sl, r3
	cmp r0, #0x3c
	bhi _080ACCCC
	movs r1, #0xc0
	lsls r1, r1, #0xb
	adds r0, r6, #0
	bl sub_0806D3D8
	ldr r0, [r6, #0x18]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x18]
	ldrb r2, [r6, #0xb]
	cmp r2, #1
	bne _080ACCCC
	adds r0, r6, #0
	adds r0, #0x46
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r5, sb
	movs r3, #0xa
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	ldr r1, [r6, #0x24]
	cmp r0, r1
	blt _080ACCCC
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
	str r0, [r6, #0x4c]
	str r0, [r6, #0x54]
	str r0, [r6, #0x10]
	adds r0, r2, #1
	strb r0, [r6, #0xb]
	ldrb r1, [r7]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080ACCCC
	cmp r1, #7
	beq _080ACCCC
	movs r0, #0x71
	bl PlaySong
_080ACCCC:
	ldrb r0, [r6, #0xb]
	cmp r0, #2
	bne _080ACD02
	mov r4, r8
	movs r5, #0x30
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bne _080ACD02
	ldrb r1, [r6, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080ACD02
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	ldr r2, _080ACD88 @ =0xFFFC0000
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r2, r6, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_080ACD02:
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #2
	beq _080ACD1E
	cmp r0, #4
	beq _080ACD1E
	cmp r0, #5
	beq _080ACD1E
	cmp r0, #8
	beq _080ACD1E
	cmp r0, #0xc
	beq _080ACD1E
	cmp r0, #0xd
	bne _080ACD3C
_080ACD1E:
	ldr r0, [r6, #0x18]
	movs r2, #0x80
	lsls r2, r2, #9
	mov r3, sl
	ldrb r1, [r3]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r1, #7
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_080ACD3C:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080ACD8C
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #2
	beq _080ACD66
	cmp r0, #4
	beq _080ACD66
	cmp r0, #5
	beq _080ACD66
	cmp r0, #8
	beq _080ACD66
	cmp r0, #0xc
	beq _080ACD66
	cmp r0, #0xd
	bne _080ACD72
_080ACD66:
	mov r4, sl
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080ACD72:
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #5
	bne _080ACD80
	movs r0, #0x6e
	bl PlaySong
_080ACD80:
	adds r0, r6, #0
	bl EntityDelete
	b _080ACDBE
	.align 2, 0
_080ACD88: .4byte 0xFFFC0000
_080ACD8C:
	mov r3, sl
	ldrb r2, [r3]
	movs r4, #0x20
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	bne _080ACDBE
	adds r0, r6, #0
	adds r0, #0x46
	movs r5, #0
	ldrsh r1, [r0, r5]
	movs r0, #0x18
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080ACDB2
	adds r0, r2, #0
	orrs r0, r4
	strb r0, [r3]
	b _080ACDBE
_080ACDB2:
	cmp r1, #0xf0
	ble _080ACDBE
	adds r0, r2, #0
	orrs r0, r4
	mov r1, sl
	strb r0, [r1]
_080ACDBE:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ACDD0
sub_080ACDD0: @ 0x080ACDD0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r0, _080ACE08 @ =0x0808FCFC
	str r0, [sp]
	ldr r2, _080ACE0C @ =sub_080AD0B8
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080ACEA8
	ldr r0, _080ACE10 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	bge _080ACE14
	adds r0, r4, #0
	bl EntityDelete
	b _080ACEA8
	.align 2, 0
_080ACE08: .4byte 0x0808FCFC
_080ACE0C: .4byte sub_080AD0B8
_080ACE10: .4byte 0x081C15F4
_080ACE14:
	ldr r1, _080ACEB4 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x42
	strb r0, [r1]
	ldr r0, _080ACEB8 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r2, _080ACEBC @ =sub_080AD0F8
	ldr r3, _080ACEC0 @ =sub_080AD124
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0804277C
	adds r0, r4, #0
	mov r1, sp
	bl sub_08042848
	adds r0, r4, #0
	mov r1, sp
	bl sub_080428B4
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	subs r2, #0x19
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	str r5, [r4, #0x14]
	str r6, [r4, #0x40]
	str r7, [r4, #0x44]
	mov r0, r8
	str r0, [r4, #0x48]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
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
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
_080ACEA8:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ACEB4: .4byte 0x0820ED60
_080ACEB8: .4byte sub_0803B9D0
_080ACEBC: .4byte sub_080AD0F8
_080ACEC0: .4byte sub_080AD124

	thumb_func_start sub_080ACEC4
sub_080ACEC4: @ 0x080ACEC4
	push {r4, lr}
	ldr r4, [r0, #0x1c]
	lsls r3, r1, #3
	subs r3, r3, r1
	lsls r3, r3, #3
	adds r3, r3, r4
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r4
	ldr r2, [r3]
	ldr r1, [r1]
	adds r2, r2, r1
	lsrs r1, r2, #0x1f
	adds r2, r2, r1
	asrs r2, r2, #1
	ldr r1, [r0, #0x40]
	adds r1, r1, r2
	str r1, [r0, #0x40]
	movs r1, #0xd
_080ACEEC:
	ldr r0, [r4]
	subs r0, r0, r2
	str r0, [r4]
	adds r4, #0x38
	subs r1, #1
	cmp r1, #0
	bge _080ACEEC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080ACF00
sub_080ACF00: @ 0x080ACF00
	ldr r3, [r0, #0x1c]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	str r2, [r0, #4]
	bx lr
	.align 2, 0

	thumb_func_start sub_080ACF10
sub_080ACF10: @ 0x080ACF10
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080ACF2A
	movs r4, #0
_080ACF1C:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080AC014
	adds r4, #1
	cmp r4, #0xd
	ble _080ACF1C
_080ACF2A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080ACF30
sub_080ACF30: @ 0x080ACF30
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080ACF50
	movs r4, #0
_080ACF3E:
	adds r0, r6, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r5, #0
	bl sub_080AC014
	adds r4, #1
	cmp r4, #0xd
	ble _080ACF3E
_080ACF50:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ACF58
sub_080ACF58: @ 0x080ACF58
	ldr r2, [r0, #0x1c]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_080ACF6C
sub_080ACF6C: @ 0x080ACF6C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r0, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	str r0, [sp]
	lsrs r0, r5, #0x1f
	adds r0, r5, r0
	asrs r0, r0, #1
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_080AC314
	ldr r1, [r6, #0x1c]
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0, #0x34]
	str r5, [r0, #0x30]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080ACFA0
sub_080ACFA0: @ 0x080ACFA0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r0, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	str r0, [sp]
	lsrs r0, r5, #0x1f
	adds r0, r5, r0
	asrs r0, r0, #1
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_080AC468
	ldr r1, [r6, #0x1c]
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0, #0x34]
	str r5, [r0, #0x30]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080ACFD4
sub_080ACFD4: @ 0x080ACFD4
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xd
_080ACFDA:
	ldr r0, [r1]
	str r0, [r1, #0x1c]
	ldr r0, [r1, #4]
	str r0, [r1, #0x20]
	adds r1, #0x38
	subs r2, #1
	cmp r2, #0
	bge _080ACFDA
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ACFF0
sub_080ACFF0: @ 0x080ACFF0
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xd
_080ACFF6:
	ldr r0, [r1, #0x1c]
	str r0, [r1]
	ldr r0, [r1, #0x20]
	str r0, [r1, #4]
	adds r1, #0x38
	subs r2, #1
	cmp r2, #0
	bge _080ACFF6
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AD00C
sub_080AD00C: @ 0x080AD00C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sl, r1
	adds r7, r2, #0
	ldr r5, [r6, #0x1c]
	adds r0, #0x20
	ldrb r0, [r0]
	subs r0, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080AD05E
	ldr r0, [r5, #0x40]
	mov r8, r0
	ldr r0, [r5, #0x44]
	mov sb, r0
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	ldrh r0, [r7, #4]
	bl sub_08021530
	adds r0, r5, #0
	mov r1, sl
	adds r2, r7, #0
	movs r3, #0
	bl sub_0806B7D8
	mov r0, r8
	str r0, [r5, #0x40]
	mov r0, sb
	str r0, [r5, #0x44]
	movs r0, #0x69
	bl PlaySong
	b _080AD0A8
_080AD05E:
	ldr r0, [r5, #0x40]
	mov r8, r0
	ldr r0, [r5, #0x44]
	mov sb, r0
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	ldrh r0, [r7, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r5, #0
	mov r1, sl
	adds r2, r7, #0
	bl sub_0806B7D8
	adds r4, r0, #0
	mov r0, r8
	str r0, [r5, #0x40]
	mov r0, sb
	str r0, [r5, #0x44]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08042B8C
	ldr r0, [r6, #0x1c]
	mov r1, sl
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080AC5B0
_080AD0A8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AD0B8
sub_080AD0B8: @ 0x080AD0B8
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AD0EE
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _080AD0E4
	adds r0, r4, #0
	bl EntityDelete
	b _080AD0EE
_080AD0E4:
	mov r0, sp
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080429D0
_080AD0EE:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AD0F8
sub_080AD0F8: @ 0x080AD0F8
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

	thumb_func_start sub_080AD124
sub_080AD124: @ 0x080AD124
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldrh r0, [r2, #4]
	bl sub_08021530
	adds r0, r7, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r7, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	bl sub_0806E664
	bl RandomNumberGenerator
	ldr r4, _080AD1C8 @ =0x0001FFFF
	mov sl, r4
	ands r0, r4
	ldr r5, _080AD1CC @ =0xFFFF0000
	adds r6, r0, r5
	bl RandomNumberGenerator
	ands r0, r4
	adds r4, r0, r5
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	ldr r2, [r7, #0x48]
	adds r2, r2, r6
	ldr r3, [r7, #0x4c]
	adds r3, r3, r4
	movs r6, #0x5c
	adds r6, r6, r7
	mov sb, r6
	ldrb r4, [r6]
	str r4, [sp]
	movs r4, #0
	mov r8, r4
	str r4, [sp, #4]
	bl sub_0806DCC4
	bl RandomNumberGenerator
	mov r6, sl
	ands r0, r6
	adds r6, r0, r5
	bl RandomNumberGenerator
	mov r1, sl
	ands r0, r1
	adds r4, r0, r5
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	ldr r2, [r7, #0x48]
	adds r2, r2, r6
	ldr r3, [r7, #0x4c]
	adds r3, r3, r4
	mov r5, sb
	ldrb r4, [r5]
	str r4, [sp]
	mov r6, r8
	str r6, [sp, #4]
	bl sub_0806DCC4
	adds r0, r7, #0
	bl EntityDelete
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD1C8: .4byte 0x0001FFFF
_080AD1CC: .4byte 0xFFFF0000

	thumb_func_start sub_080AD1D0
sub_080AD1D0: @ 0x080AD1D0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _080AD21C @ =0x0825EB04
	movs r1, #0
	bl sub_0803B800
	adds r7, r0, #0
	cmp r7, #0
	blt _080AD22C
	ldr r4, _080AD220 @ =0x0826642C
	adds r0, r4, #0
	movs r1, #0
	bl sub_08068264
	adds r6, r5, #0
	adds r6, #0x26
	strb r0, [r6]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08068264
	adds r1, r5, #0
	adds r1, #0x27
	strb r0, [r1]
	ldrb r0, [r6]
	adds r2, r5, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _080AD224 @ =0x08266E08
	ldrb r3, [r2]
	adds r0, r5, #0
	adds r2, r7, #0
	bl sub_0803B924
	ldr r0, _080AD228 @ =sub_0803B9D0
	str r0, [r5, #4]
	movs r0, #1
	b _080AD22E
	.align 2, 0
_080AD21C: .4byte 0x0825EB04
_080AD220: .4byte 0x0826642C
_080AD224: .4byte 0x08266E08
_080AD228: .4byte sub_0803B9D0
_080AD22C:
	movs r0, #0
_080AD22E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080AD234
sub_080AD234: @ 0x080AD234
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

	thumb_func_start sub_080AD260
sub_080AD260: @ 0x080AD260
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
	ldrh r0, [r6, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	bl sub_0806B7D8
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08042B8C
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_080AC5B0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start EnemyBatCreate
EnemyBatCreate: @ 0x080AD2A8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r2, _080AD2CC @ =0x0820BD4C
	ldr r0, _080AD2D0 @ =0x0824B2C4
	ldr r1, _080AD2D4 @ =0x081F422C
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AD2D8
	adds r0, r5, #0
	bl EntityDelete
	b _080AD354
	.align 2, 0
_080AD2CC: .4byte 0x0820BD4C
_080AD2D0: .4byte 0x0824B2C4
_080AD2D4: .4byte 0x081F422C
_080AD2D8:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r0, r5, #0
	bl sub_0806B04C
	ldr r0, _080AD30C @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AD310
	movs r1, #0
	movs r0, #4
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
	b _080AD354
	.align 2, 0
_080AD30C: .4byte gEwramData
_080AD310:
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
	adds r7, r5, #0
	adds r7, #0x46
	adds r6, r7, #0
_080AD320:
	adds r0, r5, #0
	bl GetEntityRoomXPositionInteger
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetEntityRoomYPositionInteger
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08001C1C
	adds r1, r0, #0
	cmp r1, #0
	bne _080AD344
	ldrh r0, [r6]
	subs r0, #8
	strh r0, [r6]
	b _080AD320
_080AD344:
	ldrh r0, [r7]
	adds r0, r0, r1
	strh r0, [r7]
	ldr r1, _080AD35C @ =sub_0806E1B8
	ldr r2, _080AD360 @ =sub_080AD6E4
	adds r0, r5, #0
	bl sub_0806D244
_080AD354:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD35C: .4byte sub_0806E1B8
_080AD360: .4byte sub_080AD6E4

	thumb_func_start sub_080AD364
sub_080AD364: @ 0x080AD364
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806BC40
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _080AD3A0
	cmp r5, #1
	bgt _080AD37C
	cmp r5, #0
	beq _080AD382
	b _080AD444
_080AD37C:
	cmp r5, #2
	beq _080AD406
	b _080AD444
_080AD382:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AD398
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080AD398:
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
_080AD3A0:
	adds r0, r4, #0
	movs r1, #0xe0
	movs r2, #0xa0
	bl sub_080AD700
	cmp r0, #0
	beq _080AD3D8
	adds r0, r4, #0
	movs r1, #0xc0
	movs r2, #0x70
	bl sub_080AD700
	cmp r0, #0
	beq _080AD3C8
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080AD444
_080AD3C8:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AD444
	adds r0, r4, #0
	movs r1, #1
	b _080AD3FC
_080AD3D8:
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #0x7f
	ands r1, r0
	cmp r1, #0
	bne _080AD3EE
	movs r0, #2
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
	b _080AD444
_080AD3EE:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AD444
	adds r0, r4, #0
	movs r1, #0
_080AD3FC:
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080AD444
_080AD406:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _080AD412
	cmp r0, #1
	beq _080AD42E
	b _080AD444
_080AD412:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AD428
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080AD428:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080AD42E:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080AD444
	movs r0, #0
	strb r2, [r4, #0xb]
	strb r0, [r4, #0xc]
_080AD444:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

