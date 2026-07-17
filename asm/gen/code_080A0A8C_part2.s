	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_080AD5B8
sub_080AD5B8: @ 0x080AD5B8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080AD5C8
	cmp r0, #1
	beq _080AD626
	b _080AD63E
_080AD5C8:
	adds r0, r4, #0
	bl sub_080683BC
	movs r0, #0x72
	bl PlaySong
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x6e
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803F17C
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
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
	movs r0, #0x40
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080AD626:
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r3, #0xc0
	lsls r3, r3, #0xb
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_0806BE74
_080AD63E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start EnemyBatUpdate
EnemyBatUpdate: @ 0x080AD644
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _080AD656
	adds r0, r4, #0
	bl sub_080AD6AC
	b _080AD6A4
_080AD656:
	cmp r0, #3
	bne _080AD662
	adds r0, r4, #0
	bl sub_080AD5B8
	b _080AD6A4
_080AD662:
	adds r0, r4, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080AD6A4
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080AD68A
	cmp r0, #2
	bgt _080AD67C
	cmp r0, #1
	beq _080AD682
	b _080AD698
_080AD67C:
	cmp r0, #3
	beq _080AD692
	b _080AD698
_080AD682:
	adds r0, r4, #0
	bl sub_080AD364
	b _080AD698
_080AD68A:
	adds r0, r4, #0
	bl sub_080AD44C
	b _080AD698
_080AD692:
	adds r0, r4, #0
	bl sub_080AD5B8
_080AD698:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_080AD6A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AD6AC
sub_080AD6AC: @ 0x080AD6AC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	beq _080AD6BC
	cmp r5, #1
	beq _080AD6D8
	b _080AD6DE
_080AD6BC:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AD6D2
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080AD6D2:
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xc]
_080AD6D8:
	adds r0, r4, #0
	bl sub_0803F17C
_080AD6DE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AD6E4
sub_080AD6E4: @ 0x080AD6E4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080AD6FA
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080AD6FA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AD700
sub_080AD700: @ 0x080AD700
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _080AD740 @ =gEwramData
	ldr r1, [r1]
	ldr r5, _080AD744 @ =0x00013168
	adds r1, r1, r5
	ldr r5, [r1]
	adds r1, r0, #0
	adds r1, #0x42
	lsrs r4, r4, #0x11
	ldrh r1, [r1]
	subs r1, r1, r4
	adds r0, #0x46
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r6, #0
	ldrsh r4, [r0, r6]
	str r2, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08068AD4
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080AD740: .4byte gEwramData
_080AD744: .4byte 0x00013168

	thumb_func_start sub_080AD748
sub_080AD748: @ 0x080AD748
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r7, [r4, #0x14]
	ldrh r0, [r5, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
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
	adds r0, r4, #0
	movs r2, #0
	bl sub_08042B8C
	movs r1, #0x34
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bgt _080AD7DA
	adds r0, r7, #0
	bl sub_080683BC
	movs r0, #0x70
	bl PlaySong
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
	movs r0, #3
	strb r0, [r7, #0xa]
	movs r0, #0x40
	strb r0, [r7, #0xd]
	ldr r2, _080AD7E0 @ =0xFFFF8000
	str r2, [r7, #0x48]
	ldr r0, _080AD7E4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080AD7E8 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r7, #0x40]
	cmp r1, r0
	ble _080AD7D6
	rsbs r0, r2, #0
	str r0, [r7, #0x48]
_080AD7D6:
	ldr r0, _080AD7EC @ =0xFFFD0000
	str r0, [r7, #0x4c]
_080AD7DA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD7E0: .4byte 0xFFFF8000
_080AD7E4: .4byte gEwramData
_080AD7E8: .4byte 0x00013110
_080AD7EC: .4byte 0xFFFD0000

	thumb_func_start sub_080AD7F0
sub_080AD7F0: @ 0x080AD7F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	mov sb, r1
	adds r5, r7, #0
	adds r5, #0x59
	ldrb r0, [r5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r5]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _080AD822
	adds r0, r7, #0
	bl EntityDelete
	b _080AD9E0
_080AD822:
	adds r4, r7, #0
	adds r4, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r4]
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5]
	adds r0, r7, #0
	bl sub_080ADB0C
	adds r6, r7, #0
	str r7, [r7, #0x14]
	movs r0, #0xa0
	lsls r0, r0, #0xc
	mov r8, r0
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	mov sl, r4
	cmp r0, #0
	beq _080AD860
	mov r1, r8
	rsbs r1, r1, #0
	mov r8, r1
_080AD860:
	movs r4, #0
_080AD862:
	ldr r0, _080AD92C @ =sub_080ADC2C
	bl sub_0806DFF8
	adds r5, r0, #0
	cmp r5, #0
	bne _080AD870
	b _080AD9B8
_080AD870:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _080AD880
	b _080AD9B8
_080AD880:
	ldrb r1, [r5, #0x10]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
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
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r4, #1
	lsls r0, r4, #0xc
	strh r0, [r5, #0x22]
	str r7, [r5, #0x14]
	str r6, [r5, #0x18]
	strb r4, [r5, #0x1e]
	ldr r0, [r6, #0x40]
	add r0, r8
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_080ADB0C
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0806B04C
	adds r6, r5, #0
	cmp r4, #3
	ble _080AD862
	adds r0, r7, #0
	bl sub_0806B04C
	ldr r0, _080AD930 @ =sub_080AE390
	str r0, [r7, #4]
	ldr r0, _080AD934 @ =0x081E4184
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	ldr r0, _080AD938 @ =0x0820B724
	mov r2, sb
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	bl sub_08068264
	adds r2, r7, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _080AD93C @ =0x08237C44
	ldrb r3, [r2]
	adds r0, r7, #0
	adds r2, r4, #0
	bl sub_0803B924
	mov r0, sb
	cmp r0, #0
	bne _080AD940
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080AD94C
	.align 2, 0
_080AD92C: .4byte sub_080ADC2C
_080AD930: .4byte sub_080AE390
_080AD934: .4byte 0x081E4184
_080AD938: .4byte 0x0820B724
_080AD93C: .4byte 0x08237C44
_080AD940:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080AD94C:
	adds r0, r7, #0
	bl sub_0803F17C
	movs r2, #0x80
	lsls r2, r2, #9
	mov r1, sl
	ldrb r0, [r1]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	movs r1, #0
	str r1, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	bl sub_0803E058
	adds r2, r7, #0
	adds r2, #0x21
	mov r0, sb
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	ldr r0, _080AD998 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AD99C
	movs r0, #6
	strb r0, [r7, #0xa]
	b _080AD9E0
	.align 2, 0
_080AD998: .4byte gEwramData
_080AD99C:
	ldrb r0, [r2]
	cmp r0, #0
	bne _080AD9C2
	ldr r2, _080AD9B0 @ =sub_080AE334
	ldr r3, _080AD9B4 @ =sub_080AD748
	adds r0, r7, #0
	movs r1, #8
	bl sub_0804277C
	b _080AD9CE
	.align 2, 0
_080AD9B0: .4byte sub_080AE334
_080AD9B4: .4byte sub_080AD748
_080AD9B8:
	movs r0, #1
	strb r0, [r7, #0x1c]
	movs r0, #4
	strb r0, [r7, #0xa]
	b _080AD9E0
_080AD9C2:
	ldr r2, _080AD9F0 @ =sub_080AE3CC
	ldr r3, _080AD9F4 @ =sub_080AD748
	adds r0, r7, #0
	movs r1, #8
	bl sub_0804277C
_080AD9CE:
	ldr r4, _080AD9F8 @ =0x1010F8F8
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08042884
_080AD9E0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD9F0: .4byte sub_080AE3CC
_080AD9F4: .4byte sub_080AD748
_080AD9F8: .4byte 0x1010F8F8

	thumb_func_start sub_080AD9FC
sub_080AD9FC: @ 0x080AD9FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r7, [r4, #0x14]
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	bl GetEntityRoomYPositionInteger
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsrs r2, r1, #0x10
	mov r8, r2
	asrs r1, r1, #0x10
	adds r1, #0xa
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _080ADA3E
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #2
	adds r0, r2, r0
	strh r0, [r1]
	b _080ADA48
_080ADA3E:
	ldrb r0, [r7, #0x1d]
	cmp r0, #0
	bne _080ADA48
	movs r0, #4
	strb r0, [r7, #0x1d]
_080ADA48:
	movs r2, #0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	bne _080ADA9E
	ldrb r0, [r4, #0x1f]
	adds r5, r4, #0
	adds r5, #0x58
	cmp r0, #0
	bne _080ADA80
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080ADA7A
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x18
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, #8
	bl sub_0800207C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080ADA7A:
	ldrb r0, [r4, #0x1f]
	cmp r0, #0
	beq _080ADAF2
_080ADA80:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080ADAF2
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x18
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, #8
	bl sub_08002058
	b _080ADAEE
_080ADA9E:
	cmp r0, #4
	bne _080ADAF2
	ldrb r0, [r7, #0x1f]
	adds r5, r4, #0
	adds r5, #0x58
	cmp r0, #0
	beq _080ADAD2
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080ADACC
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x18
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, #8
	bl sub_08002058
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080ADACC:
	ldrb r0, [r7, #0x1f]
	cmp r0, #0
	bne _080ADAF2
_080ADAD2:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080ADAF2
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x18
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, #8
	bl sub_0800207C
_080ADAEE:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080ADAF2:
	cmp r2, #0
	beq _080ADB00
	ldrb r0, [r7, #0x1d]
	cmp r0, #0
	bne _080ADB00
	movs r0, #4
	strb r0, [r7, #0x1d]
_080ADB00:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080ADB0C
sub_080ADB0C: @ 0x080ADB0C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r5, _080ADB70 @ =0x0000FFF8
	ldr r0, _080ADB74 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080ADB8A
	movs r0, #0
	mov r8, r0
	adds r7, r6, #0
	adds r7, #0x46
_080ADB2E:
	adds r0, r6, #0
	bl GetEntityRoomXPositionInteger
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	bl GetEntityRoomYPositionInteger
	adds r1, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	adds r0, r5, #0
	adds r0, #0xa
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080ADB78
	adds r0, r5, #2
	adds r0, r1, r0
	ldrh r1, [r7]
	adds r0, r0, r1
	strh r0, [r7]
	b _080ADB8A
	.align 2, 0
_080ADB70: .4byte 0x0000FFF8
_080ADB74: .4byte gEwramData
_080ADB78:
	adds r0, r5, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #3
	ble _080ADB2E
_080ADB8A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080ADB94
sub_080ADB94: @ 0x080ADB94
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080ADBE0
	cmp r0, #1
	bgt _080ADBA8
	cmp r0, #0
	beq _080ADBAE
	b _080ADC16
_080ADBA8:
	cmp r0, #2
	beq _080ADC02
	b _080ADC16
_080ADBAE:
	cmp r3, #0
	beq _080ADBB6
	cmp r2, #7
	ble _080ADC16
_080ADBB6:
	cmp r1, #0
	beq _080ADBC8
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x48]
	ldr r0, _080ADBC4 @ =0xFFFFFD00
	b _080ADBD0
	.align 2, 0
_080ADBC4: .4byte 0xFFFFFD00
_080ADBC8:
	ldr r0, _080ADBDC @ =0xFFFF8000
	str r0, [r4, #0x48]
	movs r0, #0xc0
	lsls r0, r0, #2
_080ADBD0:
	str r0, [r4, #0x50]
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	b _080ADC16
	.align 2, 0
_080ADBDC: .4byte 0xFFFF8000
_080ADBE0:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	cmp r1, #0
	ble _080ADBF8
	cmp r0, #0
	blt _080ADC16
	b _080ADBFC
_080ADBF8:
	cmp r0, #0
	bgt _080ADC16
_080ADBFC:
	movs r0, #2
	strb r0, [r4, #0xb]
	b _080ADC16
_080ADC02:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bls _080ADC16
	movs r0, #0
	strb r0, [r4, #0xb]
	strb r0, [r4, #0xd]
_080ADC16:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080ADC2C
sub_080ADC2C: @ 0x080ADC2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	ldr r0, [r6, #0x18]
	mov sb, r0
	ldr r7, [r6, #0x14]
	movs r1, #0
	mov sl, r1
	mov r8, r1
	adds r0, r7, #0
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
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _080ADCA4
	ldrb r0, [r7, #0xa]
	cmp r0, #3
	beq _080ADCA4
	adds r0, r7, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _080ADC80
	adds r0, r7, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _080ADC9C
_080ADC80:
	ldrb r0, [r7, #0xa]
	cmp r0, #3
	bne _080ADC88
	b _080ADFF4
_080ADC88:
	adds r0, r6, #0
	movs r1, #0
	bl sub_08021278
	add r0, sp, #8
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_080429D0
	b _080ADFF4
_080ADC9C:
	adds r0, r6, #0
	movs r1, #1
	bl sub_08021278
_080ADCA4:
	ldrb r0, [r6, #0xa]
	adds r5, r6, #0
	adds r5, #0x58
	cmp r0, #1
	beq _080ADD98
	cmp r0, #1
	bgt _080ADCB8
	cmp r0, #0
	beq _080ADCC6
	b _080ADE9C
_080ADCB8:
	cmp r0, #2
	bne _080ADCBE
	b _080ADE10
_080ADCBE:
	cmp r0, #3
	bne _080ADCC4
	b _080ADE7C
_080ADCC4:
	b _080ADE9C
_080ADCC6:
	ldrb r0, [r7, #0x1c]
	cmp r0, #0
	beq _080ADCCE
	b _080ADE7C
_080ADCCE:
	ldr r0, _080ADD18 @ =0x081E4184
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	ldr r1, _080ADD1C @ =0x08237C44
	adds r4, r7, #0
	adds r4, #0x2c
	ldrb r3, [r4]
	adds r0, r6, #0
	bl sub_0803B924
	ldrb r1, [r4]
	adds r0, r6, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	ldrb r0, [r6, #0x1e]
	cmp r0, #4
	beq _080ADD20
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080ADD2C
	.align 2, 0
_080ADD18: .4byte 0x081E4184
_080ADD1C: .4byte 0x08237C44
_080ADD20:
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080ADD2C:
	adds r0, r6, #0
	bl sub_0803F17C
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	ldr r0, _080ADD50 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080ADD54
	movs r0, #4
	strb r0, [r6, #0xa]
	b _080ADE9C
	.align 2, 0
_080ADD50: .4byte gEwramData
_080ADD54:
	adds r0, r7, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	bne _080ADD74
	ldr r2, _080ADD6C @ =sub_080AE334
	ldr r3, _080ADD70 @ =sub_080AD748
	adds r0, r6, #0
	movs r1, #8
	bl sub_0804277C
	b _080ADD80
	.align 2, 0
_080ADD6C: .4byte sub_080AE334
_080ADD70: .4byte sub_080AD748
_080ADD74:
	ldr r2, _080ADDF4 @ =sub_080AE3CC
	ldr r3, _080ADDF8 @ =sub_080AD748
	adds r0, r6, #0
	movs r1, #8
	bl sub_0804277C
_080ADD80:
	ldr r4, _080ADDFC @ =0x1010F8F8
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042884
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_080ADD98:
	ldrb r1, [r7, #0x1f]
	mov r3, sb
	ldrb r2, [r3, #0xd]
	adds r0, r6, #0
	movs r3, #1
	bl sub_080ADB94
	adds r0, r6, #0
	bl sub_080AD9FC
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080ADDBC
	movs r0, #0x80
	lsls r0, r0, #8
	mov sl, r0
_080ADDBC:
	ldrb r0, [r7, #0x1c]
	cmp r0, #0
	beq _080ADE9C
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0x38
	strb r0, [r6, #0xd]
	mov r1, sl
	str r1, [r6, #0x54]
	ldrb r0, [r6, #0x1e]
	lsls r0, r0, #0xf
	ldr r3, _080ADE00 @ =0xFFFFA000
	adds r2, r0, r3
	str r2, [r6, #0x48]
	ldr r0, _080ADE04 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080ADE08 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r6, #0x40]
	cmp r1, r0
	ble _080ADDEE
	rsbs r0, r2, #0
	str r0, [r6, #0x48]
_080ADDEE:
	ldr r0, _080ADE0C @ =0xFFFD0000
	str r0, [r6, #0x4c]
	b _080ADE9C
	.align 2, 0
_080ADDF4: .4byte sub_080AE3CC
_080ADDF8: .4byte sub_080AD748
_080ADDFC: .4byte 0x1010F8F8
_080ADE00: .4byte 0xFFFFA000
_080ADE04: .4byte gEwramData
_080ADE08: .4byte 0x00013110
_080ADE0C: .4byte 0xFFFD0000
_080ADE10:
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r1, r3
	str r1, [r6, #0x4c]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080ADE40
	ldr r0, [r6, #0x54]
	ldr r1, _080ADE3C @ =0xFFFFFF00
	adds r0, r0, r1
	b _080ADE48
	.align 2, 0
_080ADE3C: .4byte 0xFFFFFF00
_080ADE40:
	ldr r0, [r6, #0x54]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
_080ADE48:
	str r0, [r6, #0x54]
	ldr r0, [r6, #0x54]
	mov sl, r0
	ldrb r1, [r6, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080ADE70
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r2, r6, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #2
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_080ADE70:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080ADE7C
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080ADE9C
_080ADE7C:
	ldrh r1, [r5]
	ldr r0, _080ADE98 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _080ADE90
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080ADE90:
	adds r0, r6, #0
	bl EntityDelete
	b _080ADFF4
	.align 2, 0
_080ADE98: .4byte 0x0000101F
_080ADE9C:
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bne _080ADF50
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080ADEB2
	movs r1, #0x80
	lsls r1, r1, #8
	mov sl, r1
_080ADEB2:
	adds r0, r7, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _080ADF18
	ldrh r0, [r6, #0x22]
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0xd
	cmp r1, #0
	bge _080ADED0
	ldr r3, _080ADEF0 @ =0x0000FFFF
	adds r1, r1, r3
_080ADED0:
	cmp r1, #0
	bge _080ADEF4
	ldrh r0, [r6, #0x22]
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #0xd
	cmp r0, #0
	bge _080ADEE8
	ldr r1, _080ADEF0 @ =0x0000FFFF
	adds r0, r0, r1
_080ADEE8:
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080ADF0A
	.align 2, 0
_080ADEF0: .4byte 0x0000FFFF
_080ADEF4:
	ldrh r0, [r6, #0x22]
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #0xd
	cmp r0, #0
	bge _080ADF08
	ldr r3, _080ADF4C @ =0x0000FFFF
	adds r0, r0, r3
_080ADF08:
	asrs r0, r0, #0x10
_080ADF0A:
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r3, [r6, #0x22]
	adds r0, r0, r3
	strh r0, [r6, #0x22]
_080ADF18:
	adds r0, r6, #0
	mov r1, sb
	bl sub_08068A70
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r0, sl
	movs r1, #0x80
	lsls r1, r1, #9
	mov r3, r8
	adds r2, r3, r1
	ldrb r4, [r5]
	lsls r3, r4, #0x19
	lsrs r3, r3, #0x1f
	movs r5, #0
	str r5, [sp]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1b
	str r4, [sp, #4]
	bl sub_0803E058
	adds r0, r6, #0
	bl sub_0803F17C
	b _080ADFF4
	.align 2, 0
_080ADF4C: .4byte 0x0000FFFF
_080ADF50:
	adds r0, r7, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _080ADFB4
	ldrh r0, [r6, #0x22]
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0xd
	cmp r1, #0
	bge _080ADF6E
	ldr r0, _080ADF8C @ =0x0000FFFF
	adds r1, r1, r0
_080ADF6E:
	cmp r1, #0
	bge _080ADF90
	ldrh r0, [r6, #0x22]
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #0xd
	cmp r0, #0
	bge _080ADF86
	ldr r1, _080ADF8C @ =0x0000FFFF
	adds r0, r0, r1
_080ADF86:
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080ADFA6
	.align 2, 0
_080ADF8C: .4byte 0x0000FFFF
_080ADF90:
	ldrh r0, [r6, #0x22]
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #0xd
	cmp r0, #0
	bge _080ADFA4
	ldr r3, _080AE004 @ =0x0000FFFF
	adds r0, r0, r3
_080ADFA4:
	asrs r0, r0, #0x10
_080ADFA6:
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r3, [r6, #0x22]
	adds r0, r0, r3
	strh r0, [r6, #0x22]
_080ADFB4:
	adds r0, r6, #0
	mov r1, sb
	bl sub_08068A70
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r0, sl
	movs r1, #0x80
	lsls r1, r1, #9
	mov r3, r8
	adds r2, r3, r1
	ldrb r4, [r5]
	lsls r3, r4, #0x19
	lsrs r3, r3, #0x1f
	movs r5, #0
	str r5, [sp]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1b
	str r4, [sp, #4]
	bl sub_0803E058
	ldrb r0, [r7, #0xa]
	cmp r0, #3
	beq _080ADFEE
	add r0, sp, #8
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_080429D0
_080ADFEE:
	adds r0, r6, #0
	bl sub_0803F17C
_080ADFF4:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AE004: .4byte 0x0000FFFF

	thumb_func_start sub_080AE008
sub_080AE008: @ 0x080AE008
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	bl GetEntityRoomXPositionInteger
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r8, r7
	movs r6, #0
	ldr r2, _080AE064 @ =0xFFF80000
	adds r2, r2, r4
	mov sl, r2
	mov r4, sl
_080AE042:
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	adds r1, r6, #0
	adds r1, #0xa
	adds r1, r5, r1
	asrs r0, r4, #0x10
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080AE068
	adds r0, r5, r0
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _080AE06E
	.align 2, 0
_080AE064: .4byte 0xFFF80000
_080AE068:
	adds r6, #8
	cmp r6, #0x1f
	ble _080AE042
_080AE06E:
	movs r6, #0
	lsls r7, r7, #0x10
	mov sb, r7
	ldr r3, [sp]
	lsls r7, r3, #0x10
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r5, r4, #0
	adds r5, #0xa
_080AE082:
	asrs r0, r7, #0x10
	adds r1, r5, #0
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080AE09E
	adds r0, r4, r0
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	b _080AE0A6
_080AE09E:
	adds r5, #8
	adds r6, #8
	cmp r6, #0x1f
	ble _080AE082
_080AE0A6:
	mov r2, sl
	asrs r0, r2, #0x10
	asrs r1, r7, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r3, sb
	asrs r1, r3, #0x10
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080AE0E0
sub_080AE0E0: @ 0x080AE0E0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r5, r0, #0
	movs r0, #0
	mov r8, r0
	movs r7, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080AE12E
	adds r0, r5, #0
	bl sub_08021924
	adds r0, r5, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080AE120
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	bne _080AE10E
	b _080AE328
_080AE10E:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08021278
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
	b _080AE328
_080AE120:
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _080AE12E
	adds r0, r5, #0
	movs r1, #1
	bl sub_08021278
_080AE12E:
	ldrb r0, [r5, #0xa]
	cmp r0, #6
	bls _080AE136
	b _080AE2E8
_080AE136:
	lsls r0, r0, #2
	ldr r1, _080AE140 @ =_080AE144
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AE140: .4byte _080AE144
_080AE144: @ jump table
	.4byte _080AE160 @ case 0
	.4byte _080AE164 @ case 1
	.4byte _080AE1FE @ case 2
	.4byte _080AE21C @ case 3
	.4byte _080AE294 @ case 4
	.4byte _080AE29C @ case 5
	.4byte _080AE2BE @ case 6
_080AE160:
	movs r0, #0
	strb r0, [r5, #0xa]
_080AE164:
	ldrb r0, [r5, #0x1d]
	adds r4, r0, #0
	adds r1, r0, #0
	cmp r4, #0
	beq _080AE18A
	movs r0, #2
	strb r0, [r5, #0xa]
	cmp r4, #4
	bne _080AE184
	ldrb r0, [r5, #0x1f]
	cmp r0, #0
	beq _080AE180
	movs r0, #0
	b _080AE182
_080AE180:
	movs r0, #1
_080AE182:
	strb r0, [r5, #0x1f]
_080AE184:
	subs r0, r1, #1
	strb r0, [r5, #0x1d]
	b _080AE2E8
_080AE18A:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x3c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	movs r3, #0x78
	bl sub_0806CFFC
	cmp r0, #0
	bne _080AE1BA
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	b _080AE1F6
_080AE1BA:
	ldr r0, _080AE1D4 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _080AE1D8 @ =0x00013168
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _080AE1DC
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	b _080AE1F6
	.align 2, 0
_080AE1D4: .4byte gEwramData
_080AE1D8: .4byte 0x00013168
_080AE1DC:
	ldr r2, _080AE1F0 @ =0x00013168
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r5, #0x40]
	cmp r1, r0
	bge _080AE1F4
	strb r4, [r5, #0x1f]
	b _080AE1F8
	.align 2, 0
_080AE1F0: .4byte 0x00013168
_080AE1F4:
	movs r0, #1
_080AE1F6:
	strb r0, [r5, #0x1f]
_080AE1F8:
	movs r0, #2
	strb r0, [r5, #0xa]
	b _080AE2E8
_080AE1FE:
	ldrb r1, [r5, #0x1f]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_080ADB94
	adds r0, r5, #0
	bl sub_080AD9FC
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _080AE2E8
	movs r0, #1
	strb r0, [r5, #0xa]
	b _080AE2E8
_080AE21C:
	movs r0, #1
	strb r0, [r5, #0x1c]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _080AE254
	ldr r0, [r5, #0x54]
	ldr r1, _080AE250 @ =0xFFFFFF00
	adds r0, r0, r1
	b _080AE25C
	.align 2, 0
_080AE250: .4byte 0xFFFFFF00
_080AE254:
	ldr r0, [r5, #0x54]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
_080AE25C:
	str r0, [r5, #0x54]
	ldr r7, [r5, #0x54]
	ldrb r1, [r5, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080AE284
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	movs r2, #0x80
	lsls r2, r2, #0xd
	movs r3, #0x80
	lsls r3, r3, #9
	adds r4, r5, #0
	adds r4, #0x5c
	ldrb r4, [r4]
	subs r4, #2
	str r4, [sp]
	bl sub_0806D5C0
_080AE284:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AE2E8
	ldrb r0, [r6]
	b _080AE2AE
_080AE294:
	movs r0, #2
	strb r0, [r5, #0xd]
	movs r0, #5
	strb r0, [r5, #0xa]
_080AE29C:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AE328
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
_080AE2AE:
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r5, #0
	bl EntityDelete
	b _080AE328
_080AE2BE:
	movs r1, #0x80
	lsls r1, r1, #9
	mov r0, r8
	adds r2, r0, r1
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_0803E058
	adds r0, r5, #0
	bl sub_0803F17C
	b _080AE328
_080AE2E8:
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _080AE300
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
	adds r0, r5, #0
	bl sub_080AE008
	adds r7, r0, #0
	str r7, [r5, #0x54]
_080AE300:
	movs r1, #0x80
	lsls r1, r1, #9
	mov r0, r8
	adds r2, r0, r1
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_0803E058
	adds r0, r5, #0
	bl sub_0803F17C
_080AE328:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080AE334
sub_080AE334: @ 0x080AE334
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

	thumb_func_start EnemyGiantWormCreate
EnemyGiantWormCreate: @ 0x080AE360
	push {lr}
	movs r1, #0
	bl sub_080AD7F0
	pop {r0}
	bx r0

	thumb_func_start EnemyGiantWormUpdate
EnemyGiantWormUpdate: @ 0x080AE36C
	push {lr}
	bl sub_080AE0E0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyPoisonWormCreate
EnemyPoisonWormCreate: @ 0x080AE378
	push {lr}
	movs r1, #1
	bl sub_080AD7F0
	pop {r0}
	bx r0

	thumb_func_start EnemyPoisonWormUpdate
EnemyPoisonWormUpdate: @ 0x080AE384
	push {lr}
	bl sub_080AE0E0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AE390
sub_080AE390: @ 0x080AE390
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r6, _080AE3C4 @ =gEwramData
_080AE398:
	ldr r0, [r4]
	cmp r0, #0
	beq _080AE3BE
	adds r0, r4, #0
	bl sub_0803AC40
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r1, [r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080AE3C8 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r6]
	adds r4, r1, r0
	adds r5, #1
	cmp r5, #4
	ble _080AE398
_080AE3BE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AE3C4: .4byte gEwramData
_080AE3C8: .4byte 0x000004E4

	thumb_func_start sub_080AE3CC
sub_080AE3CC: @ 0x080AE3CC
	push {lr}
	sub sp, #0x10
	mov r2, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r3, #0
	strh r1, [r2]
	movs r1, #0x40
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
	.align 2, 0

	thumb_func_start sub_080AE3FC
sub_080AE3FC: @ 0x080AE3FC
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
	bgt _080AE4AC
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bne _080AE458
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	beq _080AE458
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _080AE464
_080AE458:
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080AE464:
	adds r0, r6, #0
	bl sub_080683BC
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _080AE482
	ldr r0, _080AE4B4 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080AE4B8 @ =0x0000037E
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1]
_080AE482:
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
	movs r1, #0
	movs r0, #0x28
	strb r0, [r6, #0xd]
	movs r0, #3
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xb]
	strb r1, [r6, #0xc]
_080AE4AC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AE4B4: .4byte gEwramData
_080AE4B8: .4byte 0x0000037E

	thumb_func_start sub_080AE4BC
sub_080AE4BC: @ 0x080AE4BC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	beq _080AE4CC
	cmp r5, #1
	beq _080AE512
	b _080AE54E
_080AE4CC:
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
	subs r0, #0x6e
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xdc
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _080AE54E
	movs r0, #1
	strb r0, [r4, #0xb]
	b _080AE54E
_080AE512:
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
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _080AE54E
	strb r5, [r4, #0xa]
	strb r1, [r4, #0xb]
	strb r1, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080AE54E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AE554
sub_080AE554: @ 0x080AE554
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r4, [r5, #0xb]
	cmp r4, #1
	beq _080AE58C
	cmp r4, #1
	bgt _080AE56A
	cmp r4, #0
	beq _080AE570
	b _080AE648
_080AE56A:
	cmp r4, #2
	beq _080AE618
	b _080AE648
_080AE570:
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AE648
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080AE644
_080AE58C:
	movs r2, #0x80
	rsbs r2, r2, #0
	movs r3, #0xf8
	lsls r3, r3, #1
	movs r0, #0xd0
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_08068AD4
	cmp r0, #0
	bne _080AE5DC
	ldr r0, _080AE5D8 @ =gEwramData
	ldr r1, [r0]
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r2, [r0]
	lsrs r0, r2, #5
	lsls r0, r0, #2
	movs r3, #0xf5
	lsls r3, r3, #2
	adds r1, r1, r3
	adds r1, r1, r0
	movs r0, #0x1f
	ands r0, r2
	lsls r4, r0
	ldr r0, [r1]
	bics r0, r4
	str r0, [r1]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _080AE648
	.align 2, 0
_080AE5D8: .4byte gEwramData
_080AE5DC:
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
	bl RandomNumberGenerator
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	bne _080AE648
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0x12
	strb r0, [r5, #0xd]
	movs r0, #2
	b _080AE646
_080AE618:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080AE636
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _080AE636
	movs r0, #0x89
	bl PlaySong
	adds r0, r5, #0
	bl sub_080AE96C
_080AE636:
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AE648
_080AE644:
	movs r0, #1
_080AE646:
	strb r0, [r5, #0xb]
_080AE648:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AE650
sub_080AE650: @ 0x080AE650
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrb r1, [r4, #0xb]
	cmp r1, #0
	beq _080AE666
	cmp r1, #1
	beq _080AE6A0
	adds r5, r4, #0
	adds r5, #0x59
	b _080AE71C
_080AE666:
	movs r0, #0x40
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, r4, #0
	adds r5, #0x59
	cmp r0, #0
	blt _080AE71C
	adds r2, r4, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5]
	b _080AE71C
_080AE6A0:
	ldrb r0, [r4, #0xd]
	cmp r0, #0x10
	bne _080AE6A8
	strb r1, [r4, #0xf]
_080AE6A8:
	ldrb r1, [r4, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080AE6D4
	movs r0, #0x6e
	bl PlaySong
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	ldr r2, _080AE718 @ =0xFFF00000
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
_080AE6D4:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	adds r5, r4, #0
	adds r5, #0x59
	cmp r0, #0
	bne _080AE71C
	ldrb r0, [r5]
	movs r1, #8
	orrs r0, r1
	strb r0, [r5]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x20
	adds r3, r1, #0
	orrs r3, r0
	strb r3, [r2]
	ldrb r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AE782
	lsls r0, r3, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldrb r1, [r5]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	b _080AE782
	.align 2, 0
_080AE718: .4byte 0xFFF00000
_080AE71C:
	ldrb r0, [r4, #0xd]
	bl sub_0806D518
	cmp r0, #0
	beq _080AE73A
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x28
	orrs r1, r0
	strb r1, [r2]
	b _080AE756
_080AE73A:
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
_080AE756:
	ldrb r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AE782
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #0xa
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	bl sub_0803E058
_080AE782:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AE78C
sub_080AE78C: @ 0x080AE78C
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AE7DC
	ldrb r0, [r3, #0xa]
	cmp r0, #1
	bhi _080AE7DC
	movs r0, #2
	strb r0, [r3, #0xa]
	movs r0, #0xb4
	strb r0, [r3, #0xd]
	adds r0, r3, #0
	adds r0, #0x42
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	subs r0, r0, r1
	adds r2, r3, #0
	adds r2, #0x52
	strh r0, [r2]
	adds r0, r3, #0
	adds r0, #0x46
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r0]
	ldrh r1, [r1]
	subs r0, r0, r1
	adds r2, #4
	strh r0, [r2]
	str r4, [r3, #0x18]
	adds r2, #0x1c
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
_080AE7DC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AE7E4
sub_080AE7E4: @ 0x080AE7E4
	push {r4, r5, lr}
	sub sp, #0x24
	adds r5, r0, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _080AE800
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080AE800:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080AE86E
	cmp r0, #1
	bgt _080AE810
	cmp r0, #0
	beq _080AE81A
	b _080AE94E
_080AE810:
	cmp r0, #2
	beq _080AE8A0
	cmp r0, #3
	beq _080AE8E8
	b _080AE94E
_080AE81A:
	ldr r1, _080AE888 @ =0x081E418C
	ldr r2, _080AE88C @ =0x0820B768
	ldr r0, _080AE890 @ =0x082388AC
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	ldr r2, _080AE894 @ =sub_080AE78C
	ldr r3, _080AE898 @ =sub_080AEB80
	adds r0, r5, #0
	movs r1, #8
	bl sub_0804277C
	ldr r4, _080AE89C @ =0x0404FEFE
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_080AE86E:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	b _080AE94E
	.align 2, 0
_080AE888: .4byte 0x081E418C
_080AE88C: .4byte 0x0820B768
_080AE890: .4byte 0x082388AC
_080AE894: .4byte sub_080AE78C
_080AE898: .4byte sub_080AEB80
_080AE89C: .4byte 0x0404FEFE
_080AE8A0:
	ldr r4, _080AE8B0 @ =0x08528604
	ldrb r2, [r5, #0xb]
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080AE8B4
	movs r0, #1
	b _080AE8DC
	.align 2, 0
_080AE8B0: .4byte 0x08528604
_080AE8B4:
	adds r3, r2, #0
	cmp r3, #0
	beq _080AE8C8
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AE8DA
_080AE8C8:
	adds r0, r2, #1
	strb r0, [r5, #0xb]
	adds r0, r3, r4
	ldrb r1, [r0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080AE8DA:
	movs r0, #0
_080AE8DC:
	cmp r0, #0
	beq _080AE8E8
	movs r0, #3
	strb r0, [r5, #0xa]
	movs r0, #0x78
	strb r0, [r5, #0xd]
_080AE8E8:
	ldr r0, _080AE964 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080AE968 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	bl sub_0801CFB0
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	bne _080AE94E
	ldrb r0, [r5, #0xd]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	bne _080AE936
	add r0, sp, #0x14
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	strh r1, [r0]
	movs r1, #2
	strh r1, [r0, #6]
	ldr r1, [r5, #0x40]
	str r1, [r0, #8]
	ldr r1, [r5, #0x44]
	str r1, [r0, #0xc]
	bl sub_08021654
_080AE936:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AE94E
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080AE94E:
	adds r0, r5, #0
	bl sub_0803F17C
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	add sp, #0x24
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AE964: .4byte gEwramData
_080AE968: .4byte 0x00013110

	thumb_func_start sub_080AE96C
sub_080AE96C: @ 0x080AE96C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	ldr r2, _080AEA2C @ =sub_080AE7E4
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	mov r8, r0
	cmp r0, #0
	bne _080AE988
	b _080AEA9A
_080AE988:
	mov r1, sb
	str r1, [r0, #0x14]
	mov r0, sb
	adds r0, #0x58
	ldrb r0, [r0]
	mov r5, r8
	adds r5, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	bl RandomNumberGenerator
	movs r6, #0xf
	ands r0, r6
	ldr r2, _080AEA30 @ =0x0000FFF6
	adds r4, r2, #0
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	bl RandomNumberGenerator
	ands r0, r6
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AE9D4
	lsls r0, r7, #0x10
	rsbs r0, r0, #0
	lsrs r7, r0, #0x10
_080AE9D4:
	mov r1, sb
	adds r1, #0x42
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r1, r8
	adds r1, #0x42
	strh r0, [r1]
	mov r1, sb
	adds r1, #0x46
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r1, r8
	adds r1, #0x46
	strh r0, [r1]
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #0xa
	ldr r0, _080AEA34 @ =0xFFFFF800
	subs r4, r0, r1
	mov r0, sb
	bl sub_0806CD38
	mov r2, r8
	ldr r1, [r2, #0x40]
	subs r0, r0, r1
	cmp r0, #0
	bge _080AEA38
	mov r0, sb
	bl sub_0806CD38
	mov r2, r8
	ldr r1, [r2, #0x40]
	subs r1, r1, r0
	asrs r1, r1, #6
	subs r2, r4, r1
	b _080AEA48
	.align 2, 0
_080AEA2C: .4byte sub_080AE7E4
_080AEA30: .4byte 0x0000FFF6
_080AEA34: .4byte 0xFFFFF800
_080AEA38:
	mov r0, sb
	bl sub_0806CD38
	mov r2, r8
	ldr r1, [r2, #0x40]
	subs r0, r0, r1
	asrs r0, r0, #6
	subs r2, r4, r0
_080AEA48:
	mov r0, r8
	str r2, [r0, #0x48]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AEA5C
	rsbs r0, r2, #0
	mov r1, r8
	str r0, [r1, #0x48]
_080AEA5C:
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #8
	ldr r0, _080AEAA8 @ =0xFFFE0000
	adds r1, r1, r0
	mov r2, r8
	str r1, [r2, #0x4c]
	mov r0, sb
	bl sub_0806CD78
	mov r2, sb
	ldr r1, [r2, #0x44]
	subs r0, r0, r1
	cmp r0, #0
	bge _080AEA80
	adds r0, #0x3f
_080AEA80:
	asrs r1, r0, #6
	mov r2, r8
	ldr r0, [r2, #0x4c]
	adds r0, r0, r1
	str r0, [r2, #0x4c]
	mov r0, sb
	adds r0, #0x3c
	ldrb r0, [r0]
	lsrs r1, r0, #2
	subs r0, r0, r1
	mov r1, r8
	adds r1, #0x3c
	strb r0, [r1]
_080AEA9A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AEAA8: .4byte 0xFFFE0000

	thumb_func_start EnemyDryadCreate
EnemyDryadCreate: @ 0x080AEAAC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080AEAD0 @ =0x081E418C
	ldr r2, _080AEAD4 @ =0x0820B768
	ldr r0, _080AEAD8 @ =0x082388AC
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AEADC
	adds r0, r4, #0
	bl EntityDelete
	b _080AEB40
	.align 2, 0
_080AEAD0: .4byte 0x081E418C
_080AEAD4: .4byte 0x0820B768
_080AEAD8: .4byte 0x082388AC
_080AEADC:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080AEB04 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AEB08
	movs r0, #4
	strb r0, [r4, #0xa]
	b _080AEB40
	.align 2, 0
_080AEB04: .4byte gEwramData
_080AEB08:
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r2, _080AEB48 @ =sub_080AEB50
	ldr r3, _080AEB4C @ =sub_080AE3FC
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #1
	movs r2, #0
	strh r0, [r1]
	adds r3, r4, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	strb r2, [r4, #0xa]
_080AEB40:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AEB48: .4byte sub_080AEB50
_080AEB4C: .4byte sub_080AE3FC

	thumb_func_start sub_080AEB50
sub_080AEB50: @ 0x080AEB50
	push {lr}
	sub sp, #0x10
	mov r1, sp
	movs r2, #0
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	mov r3, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	strh r1, [r3]
	mov r1, sp
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
	.align 2, 0

	thumb_func_start sub_080AEB80
sub_080AEB80: @ 0x080AEB80
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start EnemyDryadUpdate
EnemyDryadUpdate: @ 0x080AEB8C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080AEC04
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _080AEBF8
	lsls r0, r0, #2
	ldr r1, _080AEBA8 @ =_080AEBAC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AEBA8: .4byte _080AEBAC
_080AEBAC: @ jump table
	.4byte _080AEBC0 @ case 0
	.4byte _080AEBC8 @ case 1
	.4byte _080AEBD0 @ case 2
	.4byte _080AEBE8 @ case 3
	.4byte _080AEBF0 @ case 4
_080AEBC0:
	adds r0, r4, #0
	bl sub_080AE4BC
	b _080AEBF8
_080AEBC8:
	adds r0, r4, #0
	bl sub_080AE554
	b _080AEBF8
_080AEBD0:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AEBF8
	movs r0, #0
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	strb r0, [r4, #0xc]
	b _080AEBF8
_080AEBE8:
	adds r0, r4, #0
	bl sub_080AE650
	b _080AEBF8
_080AEBF0:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080AEC04
_080AEBF8:
	adds r0, r4, #0
	bl sub_0806E314
	adds r0, r4, #0
	bl sub_0806DF20
_080AEC04:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AEC0C
sub_080AEC0C: @ 0x080AEC0C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r6, [r5, #0x18]
	ldrb r0, [r6, #0xa]
	cmp r0, #3
	beq _080AEC24
	ldr r0, [r6, #0x20]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080AEC32
_080AEC24:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _080AED1E
_080AEC32:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080AEC98
	cmp r0, #1
	bgt _080AECFE
	cmp r0, #0
	bne _080AECFE
	ldr r1, _080AEC60 @ =0x081E4194
	ldr r2, _080AEC64 @ =0x0820BE3C
	ldr r0, _080AEC68 @ =0x082393E0
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AEC6C
	adds r0, r5, #0
	bl EntityDelete
	b _080AED1E
	.align 2, 0
_080AEC60: .4byte 0x081E4194
_080AEC64: .4byte 0x0820BE3C
_080AEC68: .4byte 0x082393E0
_080AEC6C:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	adds r0, r5, #0
	movs r1, #0x11
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _080AECFE
_080AEC98:
	add r4, sp, #4
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806C3F8
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
	adds r1, r6, #0
	adds r1, #0x42
	add r0, sp, #4
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	ldr r0, [r6, #0x20]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080AECFE
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #8
	beq _080AECFE
	adds r0, r5, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080AECFE:
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
	bl sub_0803F17C
_080AED1E:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AED28
sub_080AED28: @ 0x080AED28
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r6, [r5, #0x18]
	ldrb r0, [r5, #0xa]
	cmp r0, #5
	beq _080AED42
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _080AED42
	movs r0, #5
	strb r0, [r5, #0xa]
_080AED42:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bhi _080AED9C
	ldrb r0, [r5, #0x10]
	ldrb r3, [r6, #0x10]
	cmp r0, r3
	bne _080AED56
	ldrb r0, [r6, #0xa]
	cmp r0, #5
	bne _080AED9C
_080AED56:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	movs r0, #3
	strb r0, [r5, #0xa]
	ldr r2, _080AEDBC @ =sub_080AF740
	ldr r3, _080AEDC0 @ =sub_080AF784
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804277C
	adds r0, r5, #0
	ldr r1, _080AEDC4 @ =0x0808FCFC
	bl sub_08042884
	adds r0, r5, #0
	ldr r1, _080AEDC4 @ =0x0808FCFC
	bl sub_080428F0
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080AED9C:
	ldr r0, _080AEDC8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080AEDCC @ =0x000004BE
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _080AEDD0
	ldrb r0, [r5, #0xa]
	cmp r0, #5
	beq _080AEDD0
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
	b _080AF18A
	.align 2, 0
_080AEDBC: .4byte sub_080AF740
_080AEDC0: .4byte sub_080AF784
_080AEDC4: .4byte 0x0808FCFC
_080AEDC8: .4byte gEwramData
_080AEDCC: .4byte 0x000004BE
_080AEDD0:
	ldrb r0, [r5, #0xa]
	cmp r0, #5
	bls _080AEDD8
	b _080AF156
_080AEDD8:
	lsls r0, r0, #2
	ldr r1, _080AEDE4 @ =_080AEDE8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AEDE4: .4byte _080AEDE8
_080AEDE8: @ jump table
	.4byte _080AEE00 @ case 0
	.4byte _080AEED2 @ case 1
	.4byte _080AF014 @ case 2
	.4byte _080AF0BC @ case 3
	.4byte _080AF0E8 @ case 4
	.4byte _080AF128 @ case 5
_080AEE00:
	ldr r1, _080AEEC4 @ =0x081E4194
	ldr r2, _080AEEC8 @ =0x0820BE3C
	ldr r0, _080AEECC @ =0x082393E0
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AEE18
	b _080AF14E
_080AEE18:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080AEE28
	b _080AF14E
_080AEE28:
	adds r4, r5, #0
	adds r4, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldrh r1, [r5, #0x14]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	adds r2, r5, #0
	adds r2, #0x52
	movs r3, #0xa
	strh r3, [r2]
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AEE90
	rsbs r0, r3, #0
	strh r0, [r2]
_080AEE90:
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r2]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x10
	adds r1, #4
	strh r0, [r1]
	ldr r0, [r6, #0x20]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080AEED0
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	movs r0, #2
	strb r0, [r5, #0xa]
	b _080AF156
	.align 2, 0
_080AEEC4: .4byte 0x081E4194
_080AEEC8: .4byte 0x0820BE3C
_080AEECC: .4byte 0x082393E0
_080AEED0:
	strb r1, [r5, #0xa]
_080AEED2:
	ldrb r0, [r5, #0x10]
	ldrb r1, [r6, #0x10]
	cmp r0, r1
	beq _080AEEDC
	b _080AF01C
_080AEEDC:
	adds r1, r6, #0
	adds r1, #0x6d
	ldrb r0, [r1]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080AEEEE
	b _080AF156
_080AEEEE:
	ldrb r0, [r1]
	lsls r0, r0, #2
	ldr r1, _080AEF54 @ =0x0811937C
	adds r7, r0, r1
	ldrh r1, [r7]
	add r4, sp, #0x18
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_0806C3F8
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
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r4]
	ldrh r1, [r1]
	adds r0, r0, r1
	movs r1, #0x42
	adds r1, r1, r5
	mov ip, r1
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r2, r5, #0
	adds r2, #0x46
	strh r0, [r2]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AEF58
	movs r1, #2
	ldrsb r1, [r7, r1]
	mov r3, ip
	ldrh r0, [r3]
	subs r0, r0, r1
	b _080AEF64
	.align 2, 0
_080AEF54: .4byte 0x0811937C
_080AEF58:
	movs r0, #2
	ldrsb r0, [r7, r0]
	mov r1, ip
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r3, ip
_080AEF64:
	strh r0, [r3]
	movs r0, #3
	ldrsb r0, [r7, r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r0, [r6, #0x20]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080AEF7C
	b _080AF156
_080AEF7C:
	strb r1, [r5, #0xa]
	movs r0, #0x89
	bl PlaySong
	ldr r2, _080AEFCC @ =sub_080AF740
	ldr r3, _080AEFD0 @ =sub_080AF784
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804277C
	adds r0, r5, #0
	ldr r1, _080AEFD4 @ =0x0808FCFC
	bl sub_08042884
	adds r0, r5, #0
	ldr r1, _080AEFD4 @ =0x0808FCFC
	bl sub_080428F0
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_0806CD38
	ldr r1, [r5, #0x40]
	subs r0, r0, r1
	cmp r0, #0
	bge _080AEFDC
	adds r0, r5, #0
	bl sub_0806CD38
	ldr r1, [r5, #0x40]
	subs r1, r1, r0
	asrs r1, r1, #6
	ldr r0, _080AEFD8 @ =0xFFFEC000
	subs r2, r0, r1
	b _080AEFEC
	.align 2, 0
_080AEFCC: .4byte sub_080AF740
_080AEFD0: .4byte sub_080AF784
_080AEFD4: .4byte 0x0808FCFC
_080AEFD8: .4byte 0xFFFEC000
_080AEFDC:
	adds r0, r5, #0
	bl sub_0806CD38
	ldr r1, [r5, #0x40]
	subs r0, r0, r1
	asrs r0, r0, #6
	ldr r1, _080AF00C @ =0xFFFEC000
	subs r2, r1, r0
_080AEFEC:
	str r2, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AF006
	rsbs r0, r2, #0
	str r0, [r5, #0x48]
_080AF006:
	ldr r0, _080AF010 @ =0xFFFE0000
	str r0, [r5, #0x4c]
	b _080AF156
	.align 2, 0
_080AF00C: .4byte 0xFFFEC000
_080AF010: .4byte 0xFFFE0000
_080AF014:
	ldrb r0, [r5, #0x10]
	ldrb r3, [r6, #0x10]
	cmp r0, r3
	beq _080AF022
_080AF01C:
	movs r0, #5
	strb r0, [r5, #0xa]
	b _080AF156
_080AF022:
	ldrb r0, [r6, #0xa]
	cmp r0, #3
	bne _080AF02C
	strb r0, [r5, #0xa]
	b _080AF156
_080AF02C:
	adds r0, r6, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AF03C
	cmp r0, #3
	beq _080AF05A
	b _080AF156
_080AF03C:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	b _080AF156
_080AF05A:
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
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
	adds r2, r5, #0
	adds r2, #0x52
	ldr r0, _080AF0B8 @ =0x0000FFF6
	strh r0, [r2]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AF096
	movs r0, #0xa
	strh r0, [r2]
_080AF096:
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r2]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x10
	adds r1, #4
	strh r0, [r1]
	movs r0, #1
	strb r0, [r5, #0xa]
	b _080AF156
	.align 2, 0
_080AF0B8: .4byte 0x0000FFF6
_080AF0BC:
	movs r2, #0x80
	lsls r2, r2, #8
	str r2, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AF0D4
	rsbs r0, r2, #0
	str r0, [r5, #0x48]
_080AF0D4:
	ldr r0, _080AF124 @ =0xFFFD8000
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	movs r0, #0x89
	bl PlaySong
	movs r0, #4
	strb r0, [r5, #0xa]
_080AF0E8:
	ldr r1, [r5, #0x48]
	cmp r1, #0
	bge _080AF0F0
	adds r1, #0x3f
_080AF0F0:
	asrs r1, r1, #6
	ldr r0, [r5, #0x20]
	adds r0, r0, r1
	str r0, [r5, #0x20]
	adds r0, r5, #0
	movs r1, #0x3c
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	bl sub_0806D384
	adds r0, r5, #0
	bl sub_0806D3C0
	adds r0, r5, #0
	bl sub_0806D3CC
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080AF156
	b _080AF140
	.align 2, 0
_080AF124: .4byte 0xFFFD8000
_080AF128:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	movs r3, #0xc0
	lsls r3, r3, #0xc
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_080AF140:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080AF14E:
	adds r0, r5, #0
	bl EntityDelete
	b _080AF18A
_080AF156:
	ldr r0, [r5, #0x20]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	ldrb r0, [r5, #0xa]
	cmp r0, #5
	beq _080AF184
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
_080AF184:
	adds r0, r5, #0
	bl sub_0803F17C
_080AF18A:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AF194
sub_080AF194: @ 0x080AF194
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #4
	bls _080AF1A0
	b _080AF298
_080AF1A0:
	lsls r0, r0, #2
	ldr r1, _080AF1AC @ =_080AF1B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AF1AC: .4byte _080AF1B0
_080AF1B0: @ jump table
	.4byte _080AF1C4 @ case 0
	.4byte _080AF1E6 @ case 1
	.4byte _080AF224 @ case 2
	.4byte _080AF230 @ case 3
	.4byte _080AF274 @ case 4
_080AF1C4:
	ldr r0, [r4, #0x20]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080AF1E0
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _080AF1E0
	movs r0, #1
	strb r0, [r4, #0xb]
	b _080AF298
_080AF1E0:
	movs r0, #3
	strb r0, [r4, #0xb]
	b _080AF298
_080AF1E6:
	ldr r0, _080AF220 @ =sub_080AED28
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080AF20C
	str r4, [r2, #0x18]
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x10]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrh r0, [r4, #0x34]
	strh r0, [r2, #0x34]
	movs r0, #0x11
	strh r0, [r2, #0x14]
_080AF20C:
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r4, #0xb]
	b _080AF298
	.align 2, 0
_080AF220: .4byte sub_080AED28
_080AF224:
	ldr r0, [r4, #0x20]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x20]
	b _080AF274
_080AF230:
	ldr r0, _080AF270 @ =sub_080AED28
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080AF25E
	str r4, [r2, #0x18]
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x10]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrh r0, [r4, #0x34]
	strh r0, [r2, #0x34]
	ldr r0, [r4, #0x20]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x20]
	movs r0, #9
	strh r0, [r2, #0x14]
_080AF25E:
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #4
	strb r0, [r4, #0xb]
	b _080AF298
	.align 2, 0
_080AF270: .4byte sub_080AED28
_080AF274:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AF298
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080AF298:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AF2A0
sub_080AF2A0: @ 0x080AF2A0
	push {r4, lr}
	adds r4, r0, #0
	movs r3, #0x80
	lsls r3, r3, #8
	ldrb r0, [r4, #0xb]
	cmp r0, #5
	bls _080AF2B0
	b _080AF44A
_080AF2B0:
	lsls r0, r0, #2
	ldr r1, _080AF2BC @ =_080AF2C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AF2BC: .4byte _080AF2C0
_080AF2C0: @ jump table
	.4byte _080AF2D8 @ case 0
	.4byte _080AF338 @ case 1
	.4byte _080AF384 @ case 2
	.4byte _080AF3CC @ case 3
	.4byte _080AF3FC @ case 4
	.4byte _080AF418 @ case 5
_080AF2D8:
	ldr r2, _080AF328 @ =0x08528608
	adds r0, r4, #0
	adds r1, r3, #0
	movs r3, #0xc
	bl sub_0806CAF8
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xc8
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	bne _080AF30A
	b _080AF44A
_080AF30A:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	bl RandomNumberGenerator
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080AF32C
	movs r0, #1
	strb r0, [r4, #0xb]
	b _080AF44A
	.align 2, 0
_080AF328: .4byte 0x08528608
_080AF32C:
	strb r1, [r4, #0xb]
	movs r0, #0x14
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #4
	b _080AF3EE
_080AF338:
	movs r3, #0x80
	lsls r3, r3, #9
	ldr r2, _080AF380 @ =0x08528608
	adds r0, r4, #0
	adds r1, r3, #0
	movs r3, #0xc
	bl sub_0806CAF8
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _080AF44A
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r4, #0xb]
	b _080AF44A
	.align 2, 0
_080AF380: .4byte 0x08528608
_080AF384:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #2
	bne _080AF396
	ldr r0, [r4, #0x20]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x20]
_080AF396:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AF44A
	ldr r0, [r4, #0x20]
	movs r1, #6
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x20]
	movs r0, #5
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x3c
	strb r0, [r4, #0xd]
	b _080AF44A
_080AF3CC:
	movs r3, #0x80
	lsls r3, r3, #9
	ldr r2, _080AF3F8 @ =0x08528608
	adds r0, r4, #0
	adds r1, r3, #0
	movs r3, #0xc
	bl sub_0806CAF8
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080AF42C
	movs r0, #4
	strb r0, [r4, #0xb]
	movs r0, #0x32
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #3
_080AF3EE:
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080AF44A
	.align 2, 0
_080AF3F8: .4byte 0x08528608
_080AF3FC:
	rsbs r1, r3, #0
	ldr r2, _080AF414 @ =0x08528608
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0806CAF8
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	bne _080AF42C
	strb r1, [r4, #0xb]
	b _080AF44A
	.align 2, 0
_080AF414: .4byte 0x08528608
_080AF418:
	rsbs r1, r3, #0
	ldr r2, _080AF434 @ =0x08528608
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0806CAF8
	ldrb r0, [r4, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	beq _080AF438
_080AF42C:
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080AF44A
	.align 2, 0
_080AF434: .4byte 0x08528608
_080AF438:
	strb r1, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080AF44A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AF450
sub_080AF450: @ 0x080AF450
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _080AF466
	cmp r0, #1
	beq _080AF560
	b _080AF564
_080AF466:
	movs r0, #0x6b
	bl PlaySong
	movs r6, #0xa
	ldr r0, [r5, #0x20]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080AF47A
	movs r6, #0xb
_080AF47A:
	movs r0, #0x58
	adds r0, r0, r5
	mov sb, r0
	cmp r6, #0x10
	bgt _080AF53A
	movs r1, #0xf
	mov r8, r1
_080AF488:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080AF54C @ =sub_0806C5AC
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080AF534
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	bl RandomNumberGenerator
	mov r7, r8
	ands r0, r7
	subs r0, #8
	lsls r0, r0, #0xe
	str r0, [r4, #0x48]
	bl RandomNumberGenerator
	ands r0, r7
	subs r0, #8
	lsls r0, r0, #0xc
	ldr r1, _080AF550 @ =0xFFFD8000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, _080AF554 @ =0x081E4194
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	ldr r1, _080AF558 @ =0x082393E0
	bl sub_0803B924
	mov r7, sb
	ldrb r0, [r7]
	adds r3, r4, #0
	adds r3, #0x58
	movs r2, #0x40
	ands r2, r0
	ldrb r0, [r3]
	movs r7, #0x41
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r0, _080AF55C @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	bl RandomNumberGenerator
	mov r1, r8
	ands r0, r1
	adds r0, #0x28
	strb r0, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xb]
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
_080AF534:
	adds r6, #1
	cmp r6, #0x10
	ble _080AF488
_080AF53A:
	mov r7, sb
	ldrb r0, [r7]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r7]
	movs r0, #1
	strb r0, [r5, #0xb]
	b _080AF564
	.align 2, 0
_080AF54C: .4byte sub_0806C5AC
_080AF550: .4byte 0xFFFD8000
_080AF554: .4byte 0x081E4194
_080AF558: .4byte 0x082393E0
_080AF55C: .4byte sub_0803B9D0
_080AF560:
	movs r0, #1
	b _080AF566
_080AF564:
	movs r0, #0
_080AF566:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start EnemyWaiterSkeletonCreate
EnemyWaiterSkeletonCreate: @ 0x080AF574
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080AF5AC @ =0x081E4194
	ldr r2, _080AF5B0 @ =0x0820BE3C
	ldr r0, _080AF5B4 @ =0x082393E0
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AF5A4
	ldr r0, [r4, #0x20]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x20]
	ldr r0, _080AF5B8 @ =sub_080AEC0C
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	bne _080AF5BC
_080AF5A4:
	adds r0, r4, #0
	bl EntityDelete
	b _080AF63E
	.align 2, 0
_080AF5AC: .4byte 0x081E4194
_080AF5B0: .4byte 0x0820BE3C
_080AF5B4: .4byte 0x082393E0
_080AF5B8: .4byte sub_080AEC0C
_080AF5BC:
	str r4, [r2, #0x18]
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x10]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrh r0, [r4, #0x34]
	strh r0, [r2, #0x34]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080AF5FC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AF600
	movs r0, #4
	strb r0, [r4, #0xa]
	b _080AF63E
	.align 2, 0
_080AF5FC: .4byte gEwramData
_080AF600:
	adds r0, r4, #0
	bl sub_0806B04C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	ldr r1, _080AF648 @ =sub_0806E1B8
	ldr r2, _080AF64C @ =sub_080AF6FC
	adds r0, r4, #0
	bl sub_0806D244
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #1
	movs r2, #0
	strh r0, [r1]
	adds r3, r4, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	strb r2, [r4, #0xa]
_080AF63E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AF648: .4byte sub_0806E1B8
_080AF64C: .4byte sub_080AF6FC

	thumb_func_start EnemyWaiterSkeletonUpdate
EnemyWaiterSkeletonUpdate: @ 0x080AF650
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080AF6F6
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _080AF6EA
	lsls r0, r0, #2
	ldr r1, _080AF66C @ =_080AF670
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AF66C: .4byte _080AF670
_080AF670: @ jump table
	.4byte _080AF684 @ case 0
	.4byte _080AF6C0 @ case 1
	.4byte _080AF6C8 @ case 2
	.4byte _080AF6D0 @ case 3
	.4byte _080AF6E2 @ case 4
_080AF684:
	adds r0, r4, #0
	bl sub_0806BC40
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	bne _080AF6EA
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _080AF6EA
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080AF6EA
_080AF6C0:
	adds r0, r4, #0
	bl sub_080AF194
	b _080AF6EA
_080AF6C8:
	adds r0, r4, #0
	bl sub_080AF2A0
	b _080AF6EA
_080AF6D0:
	adds r0, r4, #0
	bl sub_080AF450
	cmp r0, #0
	beq _080AF6F6
	adds r0, r4, #0
	bl EntityDelete
	b _080AF6F6
_080AF6E2:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080AF6F6
_080AF6EA:
	adds r0, r4, #0
	bl sub_0806E314
	adds r0, r4, #0
	bl sub_0806DF20
_080AF6F6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AF6FC
sub_080AF6FC: @ 0x080AF6FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080AF738
	adds r0, r4, #0
	bl sub_080683BC
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
	movs r1, #0
	movs r0, #0x28
	strb r0, [r4, #0xd]
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080AF738:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AF740
sub_080AF740: @ 0x080AF740
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r5, [r4, #0x18]
	mov r0, sp
	movs r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	mov r2, sp
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	strh r0, [r2]
	mov r0, sp
	strh r1, [r0, #6]
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	ldrb r0, [r5, #0x10]
	ldrb r4, [r4, #0x10]
	cmp r0, r4
	bne _080AF77C
	ldr r0, [r5, #0x20]
	movs r1, #8
	orrs r0, r1
	str r0, [r5, #0x20]
_080AF77C:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AF784
sub_080AF784: @ 0x080AF784
	movs r1, #0
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_080AF78C
sub_080AF78C: @ 0x080AF78C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r4, r1, #0
	mov r0, sp
	movs r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	strh r0, [r1]
	movs r5, #1
	movs r0, #1
	strh r0, [r1, #6]
	ldr r0, [r6, #0x40]
	str r0, [sp, #8]
	ldr r0, [r6, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	str r4, [r6, #0x18]
	ldr r0, [r6, #0x40]
	ldr r1, [r4, #0x40]
	subs r0, r0, r1
	str r0, [r6, #0x50]
	ldr r0, [r6, #0x44]
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r6, #0x54]
	strb r5, [r6, #0xa]
	movs r0, #0x1e
	strb r0, [r6, #0xd]
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080AF7EC
sub_080AF7EC: @ 0x080AF7EC
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r5, [r4, #0x18]
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080AF806
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _080AF806
	movs r0, #2
	strb r0, [r4, #0xa]
_080AF806:
	ldr r0, _080AF830 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080AF834 @ =0x000004BE
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080AF81C
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _080AF85E
_080AF81C:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080AF838
	adds r0, r4, #0
	bl EntityDelete
	b _080AF8C4
	.align 2, 0
_080AF830: .4byte gEwramData
_080AF834: .4byte 0x000004BE
_080AF838:
	ldrb r2, [r4, #0xa]
	cmp r2, #1
	beq _080AF868
	cmp r2, #1
	bgt _080AF848
	cmp r2, #0
	beq _080AF84E
	b _080AF8C4
_080AF848:
	cmp r2, #2
	beq _080AF89C
	b _080AF8C4
_080AF84E:
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r4, #0
	bl sub_0806E120
	adds r0, r4, #0
	bl sub_0806D3C0
_080AF85E:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _080AF8C4
_080AF868:
	ldr r0, [r5, #0x40]
	ldr r1, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r4, #0x54]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080AF88E
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _080AF8C4
	strb r2, [r4, #0xf]
	b _080AF8C4
_080AF88E:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _080AF8C4
_080AF89C:
	ldr r1, [r4, #0x48]
	lsls r1, r1, #3
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, [r4, #0x44]
	ldr r2, _080AF8CC @ =0xFFEA0000
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r2, r4, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
	adds r0, r4, #0
	bl EntityDelete
_080AF8C4:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AF8CC: .4byte 0xFFEA0000

	thumb_func_start sub_080AF8D0
sub_080AF8D0: @ 0x080AF8D0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806BC40
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	bne _080AF928
	adds r0, r4, #0
	movs r1, #0xf0
	movs r2, #0x23
	bl sub_0806E29C
	cmp r0, #0
	beq _080AF928
	movs r0, #0x14
	ldrsb r0, [r4, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r2, r0, #1
	ldrb r0, [r4, #0x14]
	adds r0, #1
	strb r0, [r4, #0x14]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _080AF906
	strb r5, [r4, #0x14]
_080AF906:
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	ldr r1, _080AF930 @ =0x08528614
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x1c]
	adds r1, r2, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080AF928:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AF930: .4byte 0x08528614

	thumb_func_start sub_080AF934
sub_080AF934: @ 0x080AF934
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, [r6, #0x1c]
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	beq _080AF948
	cmp r0, #1
	bne _080AF946
	b _080AFA58
_080AF946:
	b _080AFA96
_080AF948:
	movs r0, #0
	ldrsb r0, [r7, r0]
	adds r1, r6, #0
	adds r1, #0x6e
	ldrb r1, [r1]
	cmp r0, r1
	bne _080AFA22
	adds r0, r6, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AFA22
	ldr r0, _080AFA3C @ =sub_080AF7EC
	bl sub_0806DFF8
	adds r5, r0, #0
	cmp r5, #0
	beq _080AFA1E
	movs r0, #0x85
	bl PlaySong
	ldr r0, _080AFA40 @ =0x081E419C
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080AFA44 @ =0x0823A52C
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_0803B924
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x19
	strb r0, [r1]
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
	ldr r0, _080AFA48 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x46
	movs r0, #1
	ldrsb r0, [r7, r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	movs r0, #1
	strh r0, [r5, #0x34]
	ldr r2, _080AFA4C @ =sub_080AF78C
	ldr r3, _080AFA50 @ =sub_080AFD8C
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804277C
	ldr r4, _080AFA54 @ =0x0202E8EE
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
_080AFA1E:
	adds r7, #4
	str r7, [r6, #0x1c]
_080AFA22:
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AFA96
	movs r0, #1
	strb r0, [r6, #0xb]
	movs r0, #0x20
	strb r0, [r6, #0xd]
	b _080AFA96
	.align 2, 0
_080AFA3C: .4byte sub_080AF7EC
_080AFA40: .4byte 0x081E419C
_080AFA44: .4byte 0x0823A52C
_080AFA48: .4byte sub_0803B9D0
_080AFA4C: .4byte sub_080AF78C
_080AFA50: .4byte sub_080AFD8C
_080AFA54: .4byte 0x0202E8EE
_080AFA58:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	beq _080AFA66
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080AFA96
_080AFA66:
	movs r2, #0x30
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bne _080AFA82
	strb r1, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080AFA96
_080AFA82:
	movs r0, #2
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080AFA96:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080AFA9C
sub_080AFA9C: @ 0x080AFA9C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r6, [r4, #0xb]
	cmp r6, #0
	beq _080AFAAC
	cmp r6, #1
	beq _080AFB34
	b _080AFB8A
_080AFAAC:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r4, #0
	adds r5, #0x58
	cmp r0, #0x80
	bls _080AFAD6
	strb r6, [r4, #0xd]
	ldrb r2, [r5]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
_080AFAD6:
	movs r1, #0x80
	lsls r1, r1, #7
	ldr r2, _080AFB30 @ =0x08528620
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0806CAF8
	ldrb r1, [r5]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080AFB08
	adds r0, r4, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080AFB1A
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080AFB8A
_080AFB08:
	adds r0, r4, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080AFB8A
_080AFB1A:
	adds r0, r4, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	bgt _080AFB8A
	movs r0, #1
	strb r0, [r4, #0xb]
	b _080AFB8A
	.align 2, 0
_080AFB30: .4byte 0x08528620
_080AFB34:
	ldr r1, _080AFB90 @ =0xFFFF4000
	ldr r2, _080AFB94 @ =0x08528620
	adds r0, r4, #0
	movs r3, #0xd
	bl sub_0806CAF8
	adds r0, r4, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x63
	ble _080AFB8A
	movs r0, #0x14
	ldrsb r0, [r4, r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r2, r0, #1
	ldrb r0, [r4, #0x14]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0x14]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _080AFB6A
	strb r1, [r4, #0x14]
_080AFB6A:
	strb r6, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	ldr r1, _080AFB98 @ =0x08528614
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x1c]
	adds r1, r2, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080AFB8A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AFB90: .4byte 0xFFFF4000
_080AFB94: .4byte 0x08528620
_080AFB98: .4byte 0x08528614

	thumb_func_start sub_080AFB9C
sub_080AFB9C: @ 0x080AFB9C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x6b
	bl PlaySong
	movs r6, #5
_080AFBA8:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080AFC68 @ =sub_0806C5AC
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080AFC5A
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #0xd
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x20]
	muls r0, r1, r0
	str r0, [r4, #0x48]
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	lsls r1, r1, #0xc
	ldr r7, _080AFC6C @ =0xFFFC8000
	adds r1, r1, r7
	str r1, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, _080AFC70 @ =0x081E419C
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	ldr r1, _080AFC74 @ =0x0823A52C
	bl sub_0803B924
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x58
	movs r2, #0x40
	ands r2, r0
	ldrb r0, [r3]
	movs r7, #0x41
	rsbs r7, r7, #0
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r0, _080AFC78 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x28
	strb r0, [r4, #0xd]
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
_080AFC5A:
	adds r6, #1
	cmp r6, #0xb
	ble _080AFBA8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AFC68: .4byte sub_0806C5AC
_080AFC6C: .4byte 0xFFFC8000
_080AFC70: .4byte 0x081E419C
_080AFC74: .4byte 0x0823A52C
_080AFC78: .4byte sub_0803B9D0

	thumb_func_start EnemySkullArcherCreate
EnemySkullArcherCreate: @ 0x080AFC7C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080AFCA0 @ =0x081E419C
	ldr r2, _080AFCA4 @ =0x0820B78C
	ldr r0, _080AFCA8 @ =0x0823A52C
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AFCAC
	adds r0, r4, #0
	bl EntityDelete
	b _080AFD34
	.align 2, 0
_080AFCA0: .4byte 0x081E419C
_080AFCA4: .4byte 0x0820B78C
_080AFCA8: .4byte 0x0823A52C
_080AFCAC:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080AFCD4 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AFCD8
	movs r0, #4
	strb r0, [r4, #0xa]
	b _080AFD34
	.align 2, 0
_080AFCD4: .4byte gEwramData
_080AFCD8:
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r1, _080AFD18 @ =sub_0806E1B8
	ldr r2, _080AFD1C @ =sub_080AFD3C
	adds r0, r4, #0
	bl sub_0806D244
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #1
	movs r3, #0
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080AFD20
	strb r3, [r4, #0xa]
	b _080AFD34
	.align 2, 0
_080AFD18: .4byte sub_0806E1B8
_080AFD1C: .4byte sub_080AFD3C
_080AFD20:
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r3, [r4, #0xc]
	strb r3, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080AFD34:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AFD3C
sub_080AFD3C: @ 0x080AFD3C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080AFD86
	adds r0, r4, #0
	bl sub_080683BC
	movs r2, #1
	str r2, [r4, #0x20]
	ldr r1, [r4, #0x40]
	ldr r0, [r5, #0x40]
	cmp r1, r0
	bge _080AFD60
	rsbs r0, r2, #0
	str r0, [r4, #0x20]
_080AFD60:
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
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080AFD86:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080AFD8C
sub_080AFD8C: @ 0x080AFD8C
	movs r1, #0
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start EnemySkullArcherUpdate
EnemySkullArcherUpdate: @ 0x080AFD94
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080AFE02
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _080AFDF6
	lsls r0, r0, #2
	ldr r1, _080AFDB0 @ =_080AFDB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080AFDB0: .4byte _080AFDB4
_080AFDB4: @ jump table
	.4byte _080AFDC8 @ case 0
	.4byte _080AFDD0 @ case 1
	.4byte _080AFDD8 @ case 2
	.4byte _080AFDE0 @ case 3
	.4byte _080AFDEE @ case 4
_080AFDC8:
	adds r0, r4, #0
	bl sub_080AF8D0
	b _080AFDF6
_080AFDD0:
	adds r0, r4, #0
	bl sub_080AF934
	b _080AFDF6
_080AFDD8:
	adds r0, r4, #0
	bl sub_080AFA9C
	b _080AFDF6
_080AFDE0:
	adds r0, r4, #0
	bl sub_080AFB9C
	adds r0, r4, #0
	bl EntityDelete
	b _080AFE02
_080AFDEE:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080AFE02
_080AFDF6:
	adds r0, r4, #0
	bl sub_0806E314
	adds r0, r4, #0
	bl sub_0806DF20
_080AFE02:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AFE08
sub_080AFE08: @ 0x080AFE08
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	beq _080AFE3A
	bl RandomNumberGenerator2
	ands r0, r5
	cmp r0, #0
	bne _080AFE3A
	ldr r0, [r4, #0x18]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080AFE2C
	movs r0, #0
	b _080AFE86
_080AFE2C:
	adds r0, r4, #0
	movs r1, #0xa0
	movs r2, #0x78
	bl sub_0806E29C
	cmp r0, #0
	beq _080AFE3E
_080AFE3A:
	movs r0, #1
	b _080AFE86
_080AFE3E:
	adds r0, r4, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AFE70
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x50
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_08002058
	b _080AFE7E
_080AFE70:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x50
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_0800207C
_080AFE7E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080AFE86:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080AFE8C
sub_080AFE8C: @ 0x080AFE8C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080AFEE4
	cmp r0, #1
	bgt _080AFEA2
	cmp r0, #0
	beq _080AFEA8
	b _080AFF6C
_080AFEA2:
	cmp r0, #2
	beq _080AFF54
	b _080AFF6C
_080AFEA8:
	movs r0, #0x80
	lsls r0, r0, #0xa
	bl sub_0802D5EC
	ldr r1, _080AFED8 @ =0xFFFF8000
	adds r2, r0, r1
	str r2, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080AFEC8
	rsbs r0, r2, #0
	str r0, [r4, #0x48]
_080AFEC8:
	bl RandomNumberGenerator
	ldr r1, _080AFEDC @ =0x00001FFF
	ands r1, r0
	lsls r1, r1, #4
	ldr r0, _080AFEE0 @ =0xFFFF0000
	subs r0, r0, r1
	b _080AFF28
	.align 2, 0
_080AFED8: .4byte 0xFFFF8000
_080AFEDC: .4byte 0x00001FFF
_080AFEE0: .4byte 0xFFFF0000
_080AFEE4:
	adds r0, r4, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, _080AFF34 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _080AFF38 @ =0x0000A094
	adds r2, r2, r1
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
	adds r1, #4
	bl sub_080020A0
	cmp r0, #0
	beq _080AFF3C
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	adds r0, #0x40
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #1
	rsbs r0, r0, #0
_080AFF28:
	str r0, [r4, #0x4c]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _080AFF6C
	.align 2, 0
_080AFF34: .4byte gEwramData
_080AFF38: .4byte 0x0000A094
_080AFF3C:
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
	b _080AFF6A
_080AFF54:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	movs r3, #0xc0
	lsls r3, r3, #6
	adds r1, r1, r3
_080AFF6A:
	str r1, [r4, #0x4c]
_080AFF6C:
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xc0
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08068AD4
	cmp r0, #0
	bne _080AFF90
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080AFF90:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080AFF98
sub_080AFF98: @ 0x080AFF98
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
	cmp r0, #0x63
	bgt _080AFFEC
	ldr r1, [r6, #0x18]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080AFFEC
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #0x18]
_080AFFEC:
	movs r3, #0x34
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bgt _080B0056
	adds r0, r6, #0
	bl sub_080683BC
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
	movs r0, #3
	strb r0, [r6, #0xa]
	adds r0, r6, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, [r6, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x18]
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _080B0056
	movs r0, #0
	bl sub_08034498
	ldr r0, _080B005C @ =gEwramData
	ldr r1, [r0]
	ldr r3, _080B0060 @ =0x0000037E
	adds r1, r1, r3
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
_080B0056:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B005C: .4byte gEwramData
_080B0060: .4byte 0x0000037E

	thumb_func_start sub_080B0064
sub_080B0064: @ 0x080B0064
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r4, [r6, #0x14]
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _080B0082
	ldrb r0, [r4, #0x10]
	ldrb r1, [r6, #0x11]
	cmp r0, r1
	beq _080B0082
	movs r0, #2
	strb r0, [r6, #0xa]
_080B0082:
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _080B010C
	cmp r0, #1
	bgt _080B0092
	cmp r0, #0
	beq _080B009E
	b _080B0098
_080B0092:
	cmp r0, #2
	bne _080B0098
	b _080B01FC
_080B0098:
	adds r5, r6, #0
	adds r5, #0x58
	b _080B0212
_080B009E:
	ldr r1, _080B0138 @ =0x081E41A4
	ldr r2, _080B013C @ =0x0820B7B0
	ldr r0, _080B0140 @ =0x0823AE10
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B00B6
	b _080B020A
_080B00B6:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _080B00C6
	b _080B020A
_080B00C6:
	adds r2, r6, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	movs r1, #9
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_080B010C:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	bne _080B014A
	ldrb r0, [r4, #0x14]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080B0144
	movs r3, #0
	strb r3, [r6, #0xd]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	strh r3, [r6, #0x18]
	b _080B0236
	.align 2, 0
_080B0138: .4byte 0x081E41A4
_080B013C: .4byte 0x0820B7B0
_080B0140: .4byte 0x0823AE10
_080B0144:
	ldrb r0, [r6, #0xd]
	cmp r0, #6
	bls _080B0158
_080B014A:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _080B0236
_080B0158:
	adds r0, #1
	strb r0, [r6, #0xd]
	adds r5, r6, #0
	adds r5, #0x58
	ldrb r1, [r5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	ldrb r0, [r4, #0x14]
	subs r0, #4
	strb r0, [r6, #0xb]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x10
	adds r1, #4
	strh r0, [r1]
	ldr r1, _080B01F0 @ =0xFFFFFC00
	adds r0, r1, #0
	ldrh r1, [r6, #0x18]
	adds r0, r0, r1
	strh r0, [r6, #0x18]
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	mov r8, r0
	ldr r4, _080B01F4 @ =0xFFFFA000
	add r4, r8
	ldr r0, _080B01F8 @ =0x0000FFFF
	ands r4, r0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r7, r1, #3
	adds r0, r4, #0
	bl sub_080009E4
	lsls r2, r0, #6
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B01E0
	rsbs r7, r7, #0
	mov r0, r8
	rsbs r0, r0, #0
	mov r8, r0
_080B01E0:
	ldr r0, [r6, #0x40]
	adds r0, r0, r7
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	adds r0, r0, r2
	str r0, [r6, #0x44]
	b _080B0212
	.align 2, 0
_080B01F0: .4byte 0xFFFFFC00
_080B01F4: .4byte 0xFFFFA000
_080B01F8: .4byte 0x0000FFFF
_080B01FC:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B020A:
	adds r0, r6, #0
	bl EntityDelete
	b _080B0236
_080B0212:
	ldrb r0, [r6, #0xd]
	lsls r0, r0, #0xb
	movs r1, #0xa0
	lsls r1, r1, #9
	subs r1, r1, r0
	movs r2, #0x90
	lsls r2, r2, #9
	ldrb r0, [r5]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #1
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	mov r0, r8
	bl sub_0803E058
_080B0236:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B0244
sub_080B0244: @ 0x080B0244
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r7, [r6, #0x14]
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _080B0262
	ldrb r0, [r7, #0x10]
	ldrb r1, [r6, #0x11]
	cmp r0, r1
	beq _080B0262
	adds r0, r6, #0
	bl EntityDelete
	b _080B02CA
_080B0262:
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _080B026E
	cmp r0, #1
	beq _080B0298
	b _080B02CA
_080B026E:
	ldr r2, _080B02D4 @ =sub_080B0CFC
	adds r0, r6, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080B02D8 @ =0x1414F6F6
	adds r0, r6, #0
	bl sub_08042884
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_080B0298:
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	ldr r1, _080B02DC @ =0xFFFFC000
	adds r5, r0, r1
	bl sub_080009E4
	adds r4, r0, #0
	lsls r4, r4, #4
	adds r0, r5, #0
	bl sub_080009E4
	lsls r0, r0, #4
	ldr r1, [r7, #0x40]
	adds r1, r1, r4
	str r1, [r6, #0x40]
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	str r1, [r6, #0x44]
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	bne _080B02CA
	mov r0, sp
	adds r1, r6, #0
	bl sub_080421AC
_080B02CA:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B02D4: .4byte sub_080B0CFC
_080B02D8: .4byte 0x1414F6F6
_080B02DC: .4byte 0xFFFFC000

	thumb_func_start sub_080B02E0
sub_080B02E0: @ 0x080B02E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov r8, r0
	movs r1, #0x1e
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _080B0332
	mov r2, r8
	movs r4, #0x34
	ldrsh r0, [r2, r4]
	cmp r0, #0
	bgt _080B0308
	movs r0, #1
	strh r0, [r6, #0x1e]
_080B0308:
	movs r7, #0x1e
	ldrsh r0, [r6, r7]
	cmp r0, #0
	bne _080B0332
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bne _080B0332
	mov r1, r8
	ldrb r0, [r1, #0x10]
	ldrb r2, [r6, #0x11]
	cmp r0, r2
	bne _080B0332
	ldr r0, [r1, #0x18]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B0332
	strb r1, [r6, #0xa]
	movs r0, #0x69
	bl PlaySong
_080B0332:
	ldrb r0, [r6, #0xa]
	cmp r0, #6
	bls _080B033A
	b _080B07D2
_080B033A:
	lsls r0, r0, #2
	ldr r1, _080B0344 @ =_080B0348
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B0344: .4byte _080B0348
_080B0348: @ jump table
	.4byte _080B0364 @ case 0
	.4byte _080B040C @ case 1
	.4byte _080B050C @ case 2
	.4byte _080B0540 @ case 3
	.4byte _080B0564 @ case 4
	.4byte _080B0750 @ case 5
	.4byte _080B07BC @ case 6
_080B0364:
	ldr r1, _080B0424 @ =0x081E41A4
	ldr r2, _080B0428 @ =0x0820B7B0
	ldr r0, _080B042C @ =0x0823AE10
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B037C
	b _080B07CA
_080B037C:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r0, #0
	bge _080B038C
	b _080B07CA
_080B038C:
	ldr r0, _080B0430 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080B03C6
	adds r4, r6, #0
	adds r4, #0x3c
	ldrb r0, [r4]
	lsrs r1, r0, #2
	adds r0, r0, r1
	strb r0, [r4]
	ldr r0, _080B0434 @ =sub_080B0244
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080B03C6
	str r6, [r2, #0x14]
	ldrb r0, [r6, #0x10]
	strb r0, [r2, #0x11]
	ldrb r1, [r4]
	adds r0, r2, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrh r0, [r6, #0x34]
	strh r0, [r2, #0x34]
_080B03C6:
	adds r2, r6, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r5, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	movs r1, #8
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	mov r0, r8
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_080B040C:
	mov r4, r8
	ldrb r0, [r4, #0x10]
	ldrb r7, [r6, #0x11]
	cmp r0, r7
	beq _080B0418
	b _080B07B6
_080B0418:
	mov r1, r8
	ldrb r0, [r1, #0xa]
	cmp r0, #3
	bne _080B0438
	strb r0, [r6, #0xa]
	b _080B07D2
	.align 2, 0
_080B0424: .4byte 0x081E41A4
_080B0428: .4byte 0x0820B7B0
_080B042C: .4byte 0x0823AE10
_080B0430: .4byte gEwramData
_080B0434: .4byte sub_080B0244
_080B0438:
	mov r2, r8
	ldr r0, [r2, #0x18]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B044A
	movs r0, #2
	strb r0, [r6, #0xa]
	b _080B07D2
_080B044A:
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
	add r4, sp, #8
	mov r0, r8
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806C3F8
	mov r1, r8
	adds r1, #0x42
	add r0, sp, #8
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r3, r6, #0
	adds r3, #0x42
	strh r0, [r3]
	mov r1, r8
	adds r1, #0x46
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r2, r6, #0
	adds r2, #0x46
	strh r0, [r2]
	ldr r1, _080B04A8 @ =0x085286C8
	mov r0, r8
	adds r0, #0x6d
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	bne _080B04B0
	b _080B07D2
	.align 2, 0
_080B04A8: .4byte 0x085286C8
_080B04AC:
	adds r4, r1, #0
	b _080B04D4
_080B04B0:
	mov r4, r8
	ldrb r5, [r4, #0x14]
	movs r7, #0
	ldrsh r0, [r1, r7]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _080B04D2
_080B04C0:
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r5, r0
	ble _080B04AC
	adds r1, #0xc
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, r4
	bne _080B04C0
_080B04D2:
	movs r4, #0
_080B04D4:
	cmp r4, #0
	bne _080B04DA
	b _080B07D2
_080B04DA:
	ldr r0, [r4, #4]
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B04F6
	movs r1, #8
	ldrsb r1, [r4, r1]
	ldrh r0, [r3]
	subs r0, r0, r1
	b _080B04FE
_080B04F6:
	movs r0, #8
	ldrsb r0, [r4, r0]
	ldrh r1, [r3]
	adds r0, r0, r1
_080B04FE:
	strh r0, [r3]
	movs r0, #9
	ldrsb r0, [r4, r0]
	ldrh r4, [r2]
	adds r0, r0, r4
	strh r0, [r2]
	b _080B07D2
_080B050C:
	movs r0, #0x86
	bl PlaySong
	ldr r2, _080B0538 @ =0xFFFF8000
	str r2, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B0528
	rsbs r0, r2, #0
	str r0, [r6, #0x48]
_080B0528:
	ldr r0, _080B053C @ =0xFFFBE000
	str r0, [r6, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r6, #0x54]
	movs r0, #0xf2
	lsls r0, r0, #8
	b _080B0556
	.align 2, 0
_080B0538: .4byte 0xFFFF8000
_080B053C: .4byte 0xFFFBE000
_080B0540:
	adds r1, r6, #0
	adds r1, #0x4a
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080B0560 @ =0xFFFD0000
	str r0, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x54]
	movs r0, #0xf8
	lsls r0, r0, #8
_080B0556:
	strh r0, [r6, #0x1c]
	movs r0, #4
	strb r0, [r6, #0xa]
	b _080B07D2
	.align 2, 0
_080B0560: .4byte 0xFFFD0000
_080B0564:
	ldrh r0, [r6, #0x1c]
	ldrh r7, [r6, #0x18]
	adds r0, r0, r7
	strh r0, [r6, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D384
	adds r0, r6, #0
	bl sub_0806D3AC
	ldr r1, [r6, #0x4c]
	ldr r0, _080B05B4 @ =0x0002FFFF
	cmp r1, r0
	bgt _080B0586
	b _080B07D2
_080B0586:
	movs r0, #0xc0
	lsls r0, r0, #0xb
	cmp r1, r0
	ble _080B05B8
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080B05B8
	movs r1, #0x1e
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _080B05A4
	b _080B07B6
_080B05A4:
	mov r2, r8
	ldr r0, [r2, #0x18]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x18]
	b _080B07B6
	.align 2, 0
_080B05B4: .4byte 0x0002FFFF
_080B05B8:
	ldrh r4, [r6, #0x18]
	ldr r7, _080B061C @ =0xFFFF7000
	adds r1, r4, r7
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	bls _080B05C8
	b _080B07D2
_080B05C8:
	movs r0, #0x18
	ldrsh r4, [r6, r0]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B05DC
	rsbs r4, r4, #0
_080B05DC:
	adds r0, r6, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r1, _080B0620 @ =0xFFFFC000
	adds r4, r4, r1
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r4, r2
	bl sub_080009E4
	lsls r5, r0, #4
	adds r0, r4, #0
	bl sub_080009E4
	lsls r2, r0, #4
	lsls r0, r7, #0x10
	asrs r4, r0, #0x10
	cmp r5, #0
	bge _080B0624
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	subs r0, r4, r0
	b _080B0628
	.align 2, 0
_080B061C: .4byte 0xFFFF7000
_080B0620: .4byte 0xFFFFC000
_080B0624:
	asrs r0, r5, #0x10
	adds r0, r4, r0
_080B0628:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r7, r0, #0
	mov r4, sb
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r2, #0
	bge _080B0640
	rsbs r0, r2, #0
	asrs r0, r0, #0x10
	subs r0, r1, r0
	b _080B0644
_080B0640:
	asrs r0, r2, #0x10
	adds r0, r1, r0
_080B0644:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r4, r7, #0x10
	asrs r0, r4, #0x10
	mov r7, sb
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r1, #0xa
	bl sub_08001D94
	lsls r5, r0, #0x10
	mov sl, r4
	cmp r5, #0
	bne _080B0664
	b _080B07D2
_080B0664:
	movs r0, #0x7f
	bl PlaySong
	ldr r0, _080B0678 @ =0x081C15F4
	bl sub_0803AFB8
	adds r4, r0, #0
	movs r7, #0
	str r5, [sp, #0xc]
	b _080B0700
	.align 2, 0
_080B0678: .4byte 0x081C15F4
_080B067C:
	ldr r1, _080B073C @ =0x0820ED60
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_0803B924
	bl RandomNumberGenerator
	lsrs r0, r0, #4
	movs r1, #3
	bl Mod
	adds r0, #0x40
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	movs r0, #4
	bl sub_0802D5EC
	mov r1, sl
	asrs r2, r1, #0x10
	adds r2, r2, r0
	ldr r0, _080B0740 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080B0744 @ =0x0000A094
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	subs r2, r2, r0
	adds r0, r5, #0
	adds r0, #0x42
	strh r2, [r0]
	ldrh r1, [r1, #0xa]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	subs r0, #8
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	adds r3, r5, #0
	adds r3, #0x58
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
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
	ldr r0, _080B0748 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r7, #1
_080B0700:
	cmp r7, #3
	bgt _080B0714
	ldr r2, _080B074C @ =sub_080AFE8C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	bne _080B067C
_080B0714:
	mov r4, r8
	ldrb r0, [r4, #0x10]
	ldrb r7, [r6, #0x11]
	cmp r0, r7
	bne _080B0728
	ldr r0, [r4, #0x18]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x18]
_080B0728:
	ldr r0, [r6, #0x44]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	movs r0, #5
	strb r0, [r6, #0xa]
	movs r0, #0xc0
	strb r0, [r6, #0xd]
	b _080B07D2
	.align 2, 0
_080B073C: .4byte 0x0820ED60
_080B0740: .4byte gEwramData
_080B0744: .4byte 0x0000A094
_080B0748: .4byte sub_0803B9D0
_080B074C: .4byte sub_080AFE8C
_080B0750:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	bne _080B07B6
	ldrb r0, [r6, #0xd]
	cmp r0, #0x20
	bne _080B0766
	movs r0, #1
	strb r0, [r6, #0xf]
_080B0766:
	ldrb r0, [r6, #0xf]
	cmp r0, #0
	beq _080B07AA
	ldrb r1, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080B07AA
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	bl sub_0802D5EC
	lsls r0, r0, #0xd
	ldr r5, [r6, #0x40]
	adds r5, r5, r0
	adds r0, r4, #0
	bl sub_0802D5EC
	lsls r0, r0, #0xd
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r0, r0, r2
	ldr r4, [r6, #0x44]
	adds r4, r4, r0
	bl RandomNumberGenerator
	movs r2, #1
	ands r2, r0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #8
	bl sub_08045CEC
_080B07AA:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080B07B6
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080B07D2
_080B07B6:
	movs r0, #6
	strb r0, [r6, #0xa]
	b _080B07D2
_080B07BC:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B07CA:
	adds r0, r6, #0
	bl EntityDelete
	b _080B0804
_080B07D2:
	movs r7, #0x18
	ldrsh r4, [r6, r7]
	adds r3, r6, #0
	adds r3, #0x58
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B07E6
	rsbs r4, r4, #0
_080B07E6:
	movs r1, #0
	strh r4, [r6, #0x1a]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r0, [r3]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	str r1, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0803E058
_080B0804:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B0814
sub_080B0814: @ 0x080B0814
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806BC40
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B082C
	adds r0, r4, #0
	bl sub_0806BC40
_080B082C:
	adds r0, r4, #0
	movs r1, #0xc8
	movs r2, #0x78
	bl sub_0806E29C
	cmp r0, #0
	bne _080B0844
	adds r0, r4, #0
	bl sub_0806D54C
	cmp r0, #0
	beq _080B0862
_080B0844:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080AFE08
	adds r1, r0, #0
	cmp r1, #0
	beq _080B088A
	ldr r0, [r4, #0x18]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B0892
	movs r1, #0
	movs r0, #1
	b _080B088C
_080B0862:
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r4, #0
	movs r2, #0x78
	bl sub_0806E29C
	cmp r0, #0
	bne _080B087C
	adds r0, r4, #0
	bl sub_0806D54C
	cmp r0, #0
	beq _080B0892
_080B087C:
	adds r0, r4, #0
	movs r1, #0x3f
	bl sub_080AFE08
	adds r1, r0, #0
	cmp r1, #0
	bne _080B0892
_080B088A:
	movs r0, #2
_080B088C:
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080B0892:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B0898
sub_080B0898: @ 0x080B0898
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #4
	bhi _080B0956
	lsls r0, r0, #2
	ldr r1, _080B08AC @ =_080B08B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B08AC: .4byte _080B08B0
_080B08B0: @ jump table
	.4byte _080B08C4 @ case 0
	.4byte _080B08D4 @ case 1
	.4byte _080B08F2 @ case 2
	.4byte _080B0924 @ case 3
	.4byte _080B0956 @ case 4
_080B08C4:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	b _080B0954
_080B08D4:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B0956
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #2
	b _080B0954
_080B08F2:
	movs r1, #0x80
	lsls r1, r1, #8
	ldr r2, _080B0920 @ =0x085286F8
	adds r0, r4, #0
	movs r3, #0xd
	bl sub_0806CAF8
	adds r0, r4, #0
	movs r1, #0x64
	movs r2, #0x50
	bl sub_0806E29C
	cmp r0, #0
	beq _080B0956
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #3
	b _080B0954
	.align 2, 0
_080B0920: .4byte 0x085286F8
_080B0924:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #3
	bne _080B0934
	movs r0, #0x86
	bl PlaySong
_080B0934:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B0956
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xc]
_080B0954:
	strb r0, [r4, #0xb]
_080B0956:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B095C
sub_080B095C: @ 0x080B095C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #5
	bls _080B0968
	b _080B0ACE
_080B0968:
	lsls r0, r0, #2
	ldr r1, _080B0974 @ =_080B0978
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B0974: .4byte _080B0978
_080B0978: @ jump table
	.4byte _080B0990 @ case 0
	.4byte _080B09C6 @ case 1
	.4byte _080B09DE @ case 2
	.4byte _080B0A0E @ case 3
	.4byte _080B0A7A @ case 4
	.4byte _080B0A9C @ case 5
_080B0990:
	ldr r1, [r4, #0x18]
	movs r5, #2
	ands r5, r1
	cmp r5, #0
	bne _080B09AE
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r4, #0xb]
	strb r5, [r4, #0xd]
	b _080B0ACE
_080B09AE:
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	b _080B0ACC
_080B09C6:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B0ACE
	movs r0, #2
	strb r0, [r4, #0xb]
	movs r0, #8
	strb r0, [r4, #0xd]
	b _080B0ACE
_080B09DE:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080B0A82
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #0xc
	movs r3, #1
	bl sub_080458E4
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #6
	movs r3, #0
	bl sub_080458E4
	b _080B0ACE
_080B0A0E:
	ldrb r1, [r4, #0xd]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0xa
	movs r1, #0xd0
	lsls r1, r1, #0xa
	subs r1, r1, r0
	ldr r2, _080B0A5C @ =0x085286F8
	adds r0, r4, #0
	movs r3, #0xc
	bl sub_0806CAF8
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x18
	bne _080B0A40
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_080B0A40:
	ldrb r0, [r4, #0xd]
	cmp r0, #0x28
	bls _080B0ACE
	ldr r0, [r4, #0x18]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080B0A60
	movs r0, #4
	strb r0, [r4, #0xb]
	movs r0, #0x30
	strb r0, [r4, #0xd]
	b _080B0ACE
	.align 2, 0
_080B0A5C: .4byte 0x085286F8
_080B0A60:
	movs r0, #5
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, [r4, #0x18]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x18]
	b _080B0ACE
_080B0A7A:
	ldrb r0, [r4, #0xd]
	adds r5, r0, #0
	cmp r5, #0
	beq _080B0A88
_080B0A82:
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080B0ACE
_080B0A88:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r5, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080B0ACE
_080B0A9C:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #3
	bne _080B0AAC
	movs r0, #0x86
	bl PlaySong
_080B0AAC:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B0ACE
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xc]
_080B0ACC:
	strb r0, [r4, #0xb]
_080B0ACE:
	pop {r4, r5}
	pop {r0}
	bx r0
