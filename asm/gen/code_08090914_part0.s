	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_08090914
sub_08090914: @ 0x08090914
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, _0809093C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08090940 @ =0x0000A094
	adds r6, r0, r1
	ldrb r0, [r7, #0xb]
	cmp r0, #0xf
	bls _08090930
	bl _080911EA
_08090930:
	lsls r0, r0, #2
	ldr r1, _08090944 @ =_08090948
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809093C: .4byte gEwramData
_08090940: .4byte 0x0000A094
_08090944: .4byte _08090948
_08090948: @ jump table
	.4byte _08090988 @ case 0
	.4byte _08090AD2 @ case 1
	.4byte _08090B1E @ case 2
	.4byte _08090B7E @ case 3
	.4byte _08090BC8 @ case 4
	.4byte _08091086 @ case 5
	.4byte _08090C28 @ case 6
	.4byte _080911EA @ case 7
	.4byte _080911EA @ case 8
	.4byte _080911EA @ case 9
	.4byte _08090D40 @ case 10
	.4byte _08090D98 @ case 11
	.4byte _08090F5C @ case 12
	.4byte _08090FA6 @ case 13
	.4byte _08091086 @ case 14
	.4byte _080910DA @ case 15
_08090988:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x30
	beq _08090A44
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x40
	bls _08090A44
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	movs r0, #0xe
	strb r0, [r7, #0xd]
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	adds r1, #1
	adds r0, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r4, #0x80
	lsls r4, r4, #9
	movs r2, #0xa0
	lsls r2, r2, #0xc
	mov r8, r2
	str r2, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r6, #0xd0
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r5, #0xb0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	adds r3, r4, #0
	bl sub_08091624
	movs r4, #0xc0
	lsls r4, r4, #9
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #6
	adds r3, r4, #0
	bl sub_08091624
	movs r0, #0xa
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D490
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0806D4A8
	adds r0, r7, #0
	bl sub_0806D3AC
	b _080911EA
_08090A44:
	adds r2, r7, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	movs r3, #0
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x20
	strb r3, [r0]
	movs r0, #0xe
	strb r0, [r7, #0xd]
	movs r4, #0x90
	lsls r4, r4, #9
	movs r1, #0xa0
	lsls r1, r1, #0xc
	mov r8, r1
	str r1, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r6, #0xd0
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r3, #0xc8
	lsls r3, r3, #9
	movs r5, #0xb0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08091624
	movs r4, #0xb0
	lsls r4, r4, #9
	mov r2, r8
	str r2, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	movs r3, #0x88
	lsls r3, r3, #9
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #6
	bl sub_08091624
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
_08090AD2:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
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
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D490
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0806D4A8
	adds r0, r7, #0
	bl sub_0806D3AC
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _08090B1A
	b _080911EA
_08090B1A:
	movs r0, #0x12
	b _080910D0
_08090B1E:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
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
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D490
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0806D4A8
	adds r0, r7, #0
	bl sub_0806D3AC
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08090B64
	b _080911EA
_08090B64:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #8
	strb r0, [r7, #0xd]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x86
	bl PlaySong
	b _08090EE6
_08090B7E:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
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
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D490
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0806D4A8
	adds r0, r7, #0
	bl sub_0806D3AC
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08090BC4
	b _080911EA
_08090BC4:
	movs r0, #0x10
	b _080910D0
_08090BC8:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
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
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D490
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0806D4A8
	adds r0, r7, #0
	bl sub_0806D3AC
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08090C0E
	b _080911EA
_08090C0E:
	movs r0, #0x16
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	b _0809100A
_08090C28:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r5, r7, #0
	adds r5, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r5]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D490
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0806D4A8
	adds r0, r7, #0
	bl sub_0806D3AC
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r4, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08090C70
	b _080911EA
_08090C70:
	adds r0, r7, #0
	bl sub_08091F80
	movs r0, #0x16
	strb r0, [r7, #0xd]
	strb r4, [r7, #0xa]
	movs r0, #2
	strb r0, [r7, #0xb]
	strb r4, [r7, #0xc]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	str r4, [r7, #0x18]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08090CA8
	adds r0, r7, #0
	bl sub_0806CD38
	ldr r1, [r6, #4]
	ldr r2, _08090CA4 @ =0xFFD80000
	b _08090CB4
	.align 2, 0
_08090CA4: .4byte 0xFFD80000
_08090CA8:
	adds r0, r7, #0
	bl sub_0806CD38
	ldr r1, [r6, #4]
	movs r2, #0xa0
	lsls r2, r2, #0xe
_08090CB4:
	adds r1, r1, r2
	adds r0, r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl sub_0806CD78
	adds r4, r0, #0
	bl RandomNumberGenerator
	ldr r1, _08090D34 @ =0x0007FFFF
	ands r1, r0
	subs r4, r4, r1
	ldr r0, [r6, #8]
	adds r4, r4, r0
	str r4, [r7, #0x14]
	ldr r4, _08090D38 @ =0xFFFFF600
	movs r0, #0xa0
	lsls r0, r0, #0xc
	mov r8, r0
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r6, #0xd0
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	ldr r3, _08090D3C @ =0xFFFFF800
	movs r5, #0xb0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08091624
	movs r4, #0xa0
	lsls r4, r4, #4
	mov r1, r8
	str r1, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	movs r3, #0x80
	lsls r3, r3, #4
	b _08091078
	.align 2, 0
_08090D34: .4byte 0x0007FFFF
_08090D38: .4byte 0xFFFFF600
_08090D3C: .4byte 0xFFFFF800
_08090D40:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
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
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D490
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0806D4A8
	adds r0, r7, #0
	bl sub_0806D3AC
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _08090D88
	b _080911EA
_08090D88:
	movs r0, #0x3c
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xc]
	b _080911EA
_08090D98:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r4, r7, #0
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
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D490
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0806D4A8
	adds r0, r7, #0
	bl sub_0806D3AC
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r2, [r7, #0xc]
	mov r8, r4
	cmp r2, #0
	bne _08090DFC
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08090DFC
	adds r0, r2, #1
	strb r0, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	adds r1, #1
	adds r0, r7, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08090DFC:
	ldrb r0, [r7, #0xd]
	cmp r0, #0x28
	bne _08090E1C
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x48
	beq _08090E10
	cmp r0, #0x66
	bne _08090E1C
_08090E10:
	ldr r2, _08090E4C @ =0xFFD00000
	ldrb r3, [r7, #0xd]
	adds r0, r7, #0
	movs r1, #0
	bl sub_08091E20
_08090E1C:
	ldrb r0, [r7, #0xd]
	cmp r0, #0x1e
	bne _08090EC6
	adds r0, r7, #0
	bl sub_0806CD38
	ldr r1, [r7, #0x40]
	subs r6, r0, r1
	adds r0, r7, #0
	bl sub_0806CD78
	ldr r1, [r7, #0x44]
	ldr r2, _08090E50 @ =0xFFE00000
	adds r1, r1, r2
	subs r5, r0, r1
	cmp r6, #0
	bge _08090E54
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	b _08090E56
	.align 2, 0
_08090E4C: .4byte 0xFFD00000
_08090E50: .4byte 0xFFE00000
_08090E54:
	asrs r3, r6, #0x10
_08090E56:
	cmp r5, #0
	bge _08090E66
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _08090E68
_08090E66:
	asrs r1, r5, #0x10
_08090E68:
	adds r0, r3, #0
	bl ArcTan2
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_080009E4
	adds r5, r0, #0
	movs r4, #0x80
	lsls r4, r4, #0xa
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0803E86C
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0803E86C
	adds r5, r0, #0
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _08090F54 @ =0xFFFE0000
	cmp r0, #0
	beq _08090EB0
	adds r1, r4, #0
_08090EB0:
	ldr r2, _08090F58 @ =0xFFCA0000
	str r5, [sp]
	ldrb r0, [r7, #0xd]
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r3, r6, #0
	bl sub_08091C50
	movs r0, #0x78
	bl PlaySong
_08090EC6:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08090ED4
	b _080911EA
_08090ED4:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #1
	strb r0, [r7, #0xd]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
_08090EE6:
	movs r4, #0x80
	lsls r4, r4, #9
	movs r0, #0xa0
	lsls r0, r0, #0xc
	mov r8, r0
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r6, #0xd0
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r5, #0xb0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	adds r3, r4, #0
	bl sub_08091624
	movs r4, #0xc0
	lsls r4, r4, #9
	mov r1, r8
	str r1, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #6
	adds r3, r4, #0
	bl sub_08091624
	b _080911EA
	.align 2, 0
_08090F54: .4byte 0xFFFE0000
_08090F58: .4byte 0xFFCA0000
_08090F5C:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
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
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D490
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0806D4A8
	adds r0, r7, #0
	bl sub_0806D3AC
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08090FA2
	b _080911EA
_08090FA2:
	movs r0, #0x30
	b _080910D0
_08090FA6:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
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
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D490
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0806D4A8
	adds r0, r7, #0
	bl sub_0806D3AC
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08090FEC
	b _080911EA
_08090FEC:
	movs r0, #0x16
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	subs r1, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
_0809100A:
	adds r0, r7, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r4, #0x95
	lsls r4, r4, #9
	movs r2, #0xa0
	lsls r2, r2, #0xc
	mov r8, r2
	str r2, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r6, #0xd0
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r3, #0xa4
	lsls r3, r3, #9
	movs r5, #0xb0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08091624
	movs r4, #0xab
	lsls r4, r4, #9
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	movs r3, #0x9c
	lsls r3, r3, #9
_08091078:
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #6
	bl sub_08091624
	b _080911EA
_08091086:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
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
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D490
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0806D4A8
	adds r0, r7, #0
	bl sub_0806D3AC
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _080910CE
	b _080911EA
_080910CE:
	movs r0, #8
_080910D0:
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _080911EA
_080910DA:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r4, r7, #0
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
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D490
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0806D4A8
	adds r0, r7, #0
	bl sub_0806D3AC
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r5, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080911EA
	adds r0, r7, #0
	bl sub_08091F80
	movs r0, #0x16
	strb r0, [r7, #0xd]
	strb r5, [r7, #0xa]
	movs r1, #1
	strb r1, [r7, #0xb]
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	str r5, [r7, #0x18]
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08091154
	adds r0, r7, #0
	bl sub_0806CD38
	ldr r1, [r6, #4]
	ldr r2, _08091150 @ =0xFFD80000
	b _08091160
	.align 2, 0
_08091150: .4byte 0xFFD80000
_08091154:
	adds r0, r7, #0
	bl sub_0806CD38
	ldr r1, [r6, #4]
	movs r2, #0xa0
	lsls r2, r2, #0xe
_08091160:
	adds r1, r1, r2
	adds r0, r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl sub_0806CD78
	adds r4, r0, #0
	bl RandomNumberGenerator
	ldr r1, _080911F8 @ =0x0007FFFF
	ands r1, r0
	subs r4, r4, r1
	ldr r0, [r6, #8]
	adds r4, r4, r0
	str r4, [r7, #0x14]
	ldr r4, _080911FC @ =0xFFFFF600
	movs r0, #0xa0
	lsls r0, r0, #0xc
	mov r8, r0
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r6, #0xd0
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	ldr r3, _08091200 @ =0xFFFFF800
	movs r5, #0xb0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08091624
	movs r4, #0xa0
	lsls r4, r4, #4
	mov r1, r8
	str r1, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	movs r3, #0x80
	lsls r3, r3, #4
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #6
	bl sub_08091624
_080911EA:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080911F8: .4byte 0x0007FFFF
_080911FC: .4byte 0xFFFFF600
_08091200: .4byte 0xFFFFF800

	thumb_func_start sub_08091204
sub_08091204: @ 0x08091204
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldrb r0, [r7, #0xb]
	cmp r0, #4
	bls _08091216
	b _0809141A
_08091216:
	lsls r0, r0, #2
	ldr r1, _08091220 @ =_08091224
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08091220: .4byte _08091224
_08091224: @ jump table
	.4byte _08091238 @ case 0
	.4byte _08091368 @ case 1
	.4byte _080912CC @ case 2
	.4byte _08091368 @ case 3
	.4byte _08091388 @ case 4
_08091238:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	adds r1, #1
	adds r0, r7, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0x16
	strb r0, [r7, #0xd]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_08091F80
	ldr r4, _080912C4 @ =0xFFFFF600
	movs r0, #0xa0
	lsls r0, r0, #0xc
	mov r8, r0
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r6, #0xd0
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	ldr r3, _080912C8 @ =0xFFFFF800
	movs r5, #0xb0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08091624
	movs r4, #0xa0
	lsls r4, r4, #4
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	movs r3, #0x80
	lsls r3, r3, #4
	b _08091352
	.align 2, 0
_080912C4: .4byte 0xFFFFF600
_080912C8: .4byte 0xFFFFF800
_080912CC:
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080912E0
	b _0809141A
_080912E0:
	movs r0, #0x16
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	movs r4, #0xa0
	lsls r4, r4, #4
	movs r0, #0xa0
	lsls r0, r0, #0xc
	mov r8, r0
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r6, #0xd0
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r3, #0x80
	lsls r3, r3, #4
	movs r5, #0xb0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08091624
	ldr r4, _08091360 @ =0xFFFFF600
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	ldr r3, _08091364 @ =0xFFFFF800
_08091352:
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #6
	bl sub_08091624
	b _0809141A
	.align 2, 0
_08091360: .4byte 0xFFFFF600
_08091364: .4byte 0xFFFFF800
_08091368:
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bgt _0809141A
	movs r0, #8
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _0809141A
_08091388:
	adds r0, r7, #0
	bl sub_08091ED8
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0809141A
	movs r0, #0x16
	strb r0, [r7, #0xd]
	movs r1, #1
	strb r1, [r7, #0xb]
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r7, #0
	bl sub_08091F9C
	ldr r4, _08091428 @ =0xFFFFF600
	movs r0, #0xa0
	lsls r0, r0, #0xc
	mov r8, r0
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	movs r6, #0xd0
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08091624
	ldr r3, _0809142C @ =0xFFFFF800
	movs r5, #0xb0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08091624
	movs r4, #0xa0
	lsls r4, r4, #4
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #4
	adds r3, r4, #0
	bl sub_08091624
	movs r3, #0x80
	lsls r3, r3, #4
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #7
	movs r2, #6
	bl sub_08091624
_0809141A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08091428: .4byte 0xFFFFF600
_0809142C: .4byte 0xFFFFF800

	thumb_func_start sub_08091430
sub_08091430: @ 0x08091430
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08091448 @ =0x081CC014
	movs r1, #0
	bl sub_0803B800
	adds r6, r0, #0
	cmp r6, #0
	bge _0809144C
	movs r0, #0
	b _080914B0
	.align 2, 0
_08091448: .4byte 0x081CC014
_0809144C:
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x30
	bne _08091460
	ldr r0, _0809145C @ =0x0820A9A0
	movs r1, #2
	b _08091478
	.align 2, 0
_0809145C: .4byte 0x0820A9A0
_08091460:
	cmp r0, #0x68
	bne _08091470
	ldr r0, _0809146C @ =0x0820A9A0
	movs r1, #3
	b _08091478
	.align 2, 0
_0809146C: .4byte 0x0820A9A0
_08091470:
	cmp r0, #0x48
	bne _0809148C
	ldr r0, _08091488 @ =0x0820A9A0
	movs r1, #0
_08091478:
	bl sub_08068264
	adds r1, r5, #0
	adds r1, #0x2c
	strb r0, [r1]
	adds r4, r1, #0
	b _0809149E
	.align 2, 0
_08091488: .4byte 0x0820A9A0
_0809148C:
	adds r4, r5, #0
	adds r4, #0x2c
	cmp r0, #0x66
	bne _0809149E
	ldr r0, _080914B8 @ =0x0820A9A0
	movs r1, #1
	bl sub_08068264
	strb r0, [r4]
_0809149E:
	ldr r1, _080914BC @ =0x08220A38
	ldrb r3, [r4]
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_0803B924
	ldr r0, _080914C0 @ =sub_08092048
	str r0, [r5, #4]
	movs r0, #1
_080914B0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080914B8: .4byte 0x0820A9A0
_080914BC: .4byte 0x08220A38
_080914C0: .4byte sub_08092048

	thumb_func_start sub_080914C4
sub_080914C4: @ 0x080914C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	ldr r0, [r0, #0x1c]
	str r0, [sp]
	ldr r1, _08091570 @ =0x08527C1C
	mov r0, sb
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r2, [r1]
	ldr r1, _08091574 @ =0x08527CD0
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	movs r0, #0x2c
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, [sp]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _08091578
	mov r1, r8
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bne _08091578
	mov r1, sl
	lsls r0, r1, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r6, r1, #0x10
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r7, r0, #0x10
	mov r0, r8
	ldr r4, [r0]
	subs r6, r6, r4
	ldr r5, [r0, #4]
	subs r7, r7, r5
	mov r0, sb
	ldrb r1, [r0, #0xd]
	adds r0, r6, #0
	bl __divsi3
	adds r4, r4, r0
	mov r1, r8
	str r4, [r1]
	mov r0, sb
	ldrb r1, [r0, #0xd]
	adds r0, r7, #0
	bl __divsi3
	adds r5, r5, r0
	mov r1, r8
	str r5, [r1, #4]
	mov r1, sl
	lsls r0, r1, #2
	ldr r1, [sp, #4]
	adds r0, r0, r1
	ldr r6, [r0]
	mov r0, r8
	ldr r4, [r0, #8]
	subs r6, r6, r4
	mov r0, sb
	ldrb r1, [r0, #0xd]
	adds r0, r6, #0
	bl __divsi3
	adds r4, r4, r0
	mov r1, r8
	str r4, [r1, #8]
	b _08091612
	.align 2, 0
_08091570: .4byte 0x08527C1C
_08091574: .4byte 0x08527CD0
_08091578:
	movs r0, #0x2c
	mov r8, r0
	adds r1, r0, #0
	mov r0, sl
	muls r0, r1, r0
	ldr r1, [sp]
	adds r5, r0, r1
	ldr r6, [r5, #0x10]
	ldr r4, [r5, #0x14]
	subs r6, r6, r4
	mov r0, sb
	ldrb r1, [r0, #0xd]
	adds r0, r6, #0
	bl __divsi3
	adds r4, r4, r0
	str r4, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r4, r4, r1
	adds r0, r4, #0
	bl sub_080009E4
	adds r6, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_080009E4
	adds r7, r0, #0
	ldr r1, [r5, #0x28]
	adds r0, r6, #0
	bl sub_0803E86C
	adds r6, r0, #0
	ldr r1, [r5, #0x28]
	adds r0, r7, #0
	bl sub_0803E86C
	adds r7, r0, #0
	ldr r1, [r5, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _080915E2
	ldr r0, [r5, #0x1c]
	mov r1, r8
	muls r1, r0, r1
	ldr r0, [sp]
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r6
	str r0, [r5]
	ldr r0, [r1, #4]
	b _080915E8
_080915E2:
	adds r0, r1, r6
	str r0, [r5]
	ldr r0, [r5, #0x1c]
_080915E8:
	adds r0, r0, r7
	str r0, [r5, #4]
	mov r1, sl
	lsls r0, r1, #2
	ldr r1, [sp, #4]
	adds r0, r0, r1
	ldr r6, [r0]
	movs r0, #0x2c
	mov r5, sl
	muls r5, r0, r5
	ldr r0, [sp]
	adds r5, r5, r0
	ldr r4, [r5, #8]
	subs r6, r6, r4
	mov r0, sb
	ldrb r1, [r0, #0xd]
	adds r0, r6, #0
	bl __divsi3
	adds r4, r4, r0
	str r4, [r5, #8]
_08091612:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08091624
sub_08091624: @ 0x08091624
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r1
	adds r7, r2, #0
	mov sb, r3
	ldr r2, [sp, #0x20]
	ldr r0, [r0, #0x1c]
	mov r8, r0
	movs r1, #0x2c
	mov r0, sl
	muls r0, r1, r0
	mov r3, r8
	adds r6, r0, r3
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r6, #0x18]
	str r7, [r6, #0x1c]
	cmp r2, #0
	beq _08091654
	str r2, [r6, #0x28]
	b _08091686
_08091654:
	adds r0, r7, #0
	muls r0, r1, r0
	add r0, r8
	ldr r2, [r0]
	ldr r1, [r6]
	subs r4, r2, r1
	ldr r1, [r0, #4]
	ldr r0, [r6, #4]
	subs r5, r1, r0
	adds r0, r4, #0
	adds r1, r4, #0
	bl sub_0803E86C
	adds r4, r0, #0
	adds r0, r5, #0
	adds r1, r5, #0
	bl sub_0803E86C
	adds r5, r0, #0
	adds r0, r4, r5
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #8
	str r0, [r6, #0x28]
_08091686:
	movs r0, #0x2c
	mov r2, sl
	muls r2, r0, r2
	add r2, r8
	adds r1, r7, #0
	muls r1, r0, r1
	add r1, r8
	ldr r3, [r2]
	ldr r0, [r1]
	subs r4, r3, r0
	ldr r2, [r2, #4]
	ldr r0, [r1, #4]
	subs r5, r2, r0
	cmp r4, #0
	bge _080916B0
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _080916B2
_080916B0:
	asrs r2, r4, #0x10
_080916B2:
	cmp r5, #0
	bge _080916C2
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080916C4
_080916C2:
	asrs r1, r5, #0x10
_080916C4:
	adds r0, r2, #0
	bl ArcTan2
	movs r1, #0x2c
	mov r2, sl
	muls r2, r1, r2
	adds r1, r2, #0
	mov r3, r8
	adds r2, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r3, r0, r1
	str r3, [r2, #0x14]
	mov r1, sb
	cmp r1, #0
	bge _080916EA
	rsbs r1, r1, #0
_080916EA:
	ldr r0, _080916F4 @ =0x0000FFFF
	cmp r1, r0
	ble _080916F8
	mov r0, sb
	b _080916FC
	.align 2, 0
_080916F4: .4byte 0x0000FFFF
_080916F8:
	mov r1, sb
	adds r0, r3, r1
_080916FC:
	str r0, [r2, #0x10]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809170C
sub_0809170C: @ 0x0809170C
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r6, r0, #0
	mov r8, r1
	adds r4, r2, #0
	ldr r5, [r6, #0x1c]
	ldr r0, [r5, #0x40]
	mov sb, r0
	ldr r0, [r5, #0x44]
	mov sl, r0
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	ldrh r0, [r4, #4]
	bl sub_08021530
	adds r3, r0, #0
	ldr r0, [r6, #0x1c]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	mov r1, r8
	adds r2, r4, #0
	bl sub_0806B7D8
	adds r4, r0, #0
	mov r0, sb
	str r0, [r5, #0x40]
	mov r0, sl
	str r0, [r5, #0x44]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08042B8C
	ldr r5, [r6, #0x1c]
	adds r1, r5, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	ldrh r0, [r5, #0x34]
	subs r0, r0, r4
	strh r0, [r5, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080917A6
	adds r0, r5, #0
	bl sub_080683BC
	movs r0, #0x72
	bl PlaySong
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
	movs r0, #0x28
	strb r0, [r5, #0xd]
	movs r0, #2
	strb r0, [r5, #0xa]
	movs r0, #0
	strb r0, [r5, #0xb]
_080917A6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080917B4
sub_080917B4: @ 0x080917B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r6, r0, #0
	ldr r0, [r6, #0x1c]
	mov r8, r0
	add r4, sp, #0x18
	ldr r1, _08091844 @ =0x08119034
	adds r0, r4, #0
	movs r2, #8
	bl memcpy
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _080917DA
	b _08091B60
_080917DA:
	mov r1, r8
	cmp r1, #0
	bne _080917E2
	b _08091B28
_080917E2:
	ldr r0, [r1]
	cmp r0, #0
	bne _080917EA
	b _08091B28
_080917EA:
	mov r0, r8
	adds r0, #0x36
	adds r1, r6, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080917FC
	b _08091B28
_080917FC:
	mov r2, r8
	ldr r7, [r2, #0x1c]
	mov r0, r8
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
	mov r0, r8
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08091848
	mov r0, r8
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08091848
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r2, [r0]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	b _08091852
	.align 2, 0
_08091844: .4byte 0x08119034
_08091848:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
_08091852:
	strb r1, [r0]
	str r0, [sp, #0x28]
	adds r2, r6, #0
	adds r2, #0x20
	movs r0, #0
	ldrsb r0, [r2, r0]
	movs r3, #0x2c
	muls r0, r3, r0
	adds r0, r0, r7
	mov r5, r8
	ldr r1, [r5, #0x40]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r6, #0x40]
	movs r0, #0
	ldrsb r0, [r2, r0]
	muls r0, r3, r0
	adds r0, r0, r7
	ldr r1, [r5, #0x44]
	ldr r0, [r0, #4]
	adds r1, r1, r0
	str r1, [r6, #0x44]
	movs r0, #0
	ldrsb r0, [r2, r0]
	mov sb, r2
	cmp r0, #2
	beq _0809188C
	cmp r0, #6
	bne _080918EC
_0809188C:
	adds r0, r6, #0
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r0, #0
	muls r2, r3, r2
	adds r2, r2, r7
	ldr r5, [r2]
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	muls r0, r3, r0
	adds r0, r0, r7
	ldr r1, [r0]
	subs r5, r5, r1
	ldr r3, [r2, #4]
	ldr r0, [r0, #4]
	subs r3, r3, r0
	cmp r5, #0
	bge _080918C2
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _080918C4
_080918C2:
	asrs r2, r5, #0x10
_080918C4:
	cmp r3, #0
	bge _080918D4
	rsbs r0, r3, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080918D6
_080918D4:
	asrs r1, r3, #0x10
_080918D6:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080918E8 @ =0xFFFFC000
	adds r0, r0, r2
	b _0809190A
	.align 2, 0
_080918E8: .4byte 0xFFFFC000
_080918EC:
	cmp r0, #0
	beq _080918FC
	cmp r0, #3
	beq _080918FC
	cmp r0, #4
	beq _080918FC
	cmp r0, #7
	bne _0809190C
_080918FC:
	mov r3, sb
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r0, #0x2c
	muls r0, r1, r0
	adds r0, r0, r7
	ldr r0, [r0, #8]
_0809190A:
	str r0, [r6, #0x48]
_0809190C:
	mov r5, r8
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _0809192E
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xb]
	ldr r0, [r6, #0x48]
	str r0, [r6, #0x18]
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r6, #0xd]
	b _08091C3E
_0809192E:
	mov r2, r8
	movs r3, #0x22
	ldrsh r0, [r2, r3]
	mov r5, sb
	movs r2, #0
	ldrsb r2, [r5, r2]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08091946
	b _08091AD8
_08091946:
	movs r0, #8
	str r0, [sp, #0x24]
	movs r4, #0x2c
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r7
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	bl sub_080009E4
	adds r5, r0, #0
	mov r2, sb
	movs r0, #0
	ldrsb r0, [r2, r0]
	muls r0, r4, r0
	adds r0, r0, r7
	ldr r0, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r0, r3
	bl sub_080009E4
	adds r3, r0, #0
	ldr r0, [sp, #0x28]
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08091996
	lsls r0, r5, #3
	cmp r0, #0
	bge _0809198E
	rsbs r0, r0, #0
	b _080919A4
_0809198E:
	asrs r0, r0, #0x10
	adds r0, #4
	rsbs r0, r0, #0
	b _080919A8
_08091996:
	lsls r0, r5, #3
	cmp r0, #0
	bge _080919A4
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080919A6
_080919A4:
	asrs r0, r0, #0x10
_080919A6:
	subs r0, #4
_080919A8:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080919C8 @ =0xFFFFFF00
	ldr r1, [sp, #0x20]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r0, r3, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _080919CC
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080919CE
	.align 2, 0
_080919C8: .4byte 0xFFFFFF00
_080919CC:
	asrs r0, r0, #0x10
_080919CE:
	subs r0, #4
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x10
	ldr r2, _08091A58 @ =0xFFFF00FF
	ldr r0, [sp, #0x20]
	ands r0, r2
	orrs r0, r1
	ldr r1, _08091A5C @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	ldr r1, _08091A60 @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [sp, #0x20]
	add r4, sp, #0x20
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428B4
	adds r0, r6, #0
	adds r0, #0x65
	ldrb r0, [r0]
	mov sl, r4
	cmp r0, #3
	bne _08091AA6
	movs r2, #0x14
	str r2, [sp, #0x24]
	mov r3, sb
	movs r0, #0
	ldrsb r0, [r3, r0]
	movs r4, #0x2c
	muls r0, r4, r0
	adds r0, r0, r7
	ldr r0, [r0, #8]
	movs r5, #0x80
	lsls r5, r5, #8
	adds r0, r0, r5
	bl sub_080009E4
	adds r5, r0, #0
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	muls r0, r4, r0
	adds r0, r0, r7
	ldr r0, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	adds r3, r0, #0
	ldr r0, [sp, #0x28]
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08091A6C
	ldr r1, [sp, #0x24]
	adds r0, r5, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _08091A64
	rsbs r0, r0, #0
	b _08091A7E
	.align 2, 0
_08091A58: .4byte 0xFFFF00FF
_08091A5C: .4byte 0xFF00FFFF
_08091A60: .4byte 0x00FFFFFF
_08091A64:
	asrs r0, r0, #0x10
	adds r0, #4
	rsbs r0, r0, #0
	b _08091A82
_08091A6C:
	ldr r1, [sp, #0x24]
	adds r0, r5, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _08091A7E
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08091A80
_08091A7E:
	asrs r0, r0, #0x10
_08091A80:
	subs r0, #4
_08091A82:
	mov r2, sl
	strb r0, [r2]
	ldr r5, [sp, #0x24]
	adds r0, r3, #0
	muls r0, r5, r0
	cmp r0, #0
	bge _08091A98
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08091A9A
_08091A98:
	asrs r0, r0, #0x10
_08091A9A:
	subs r0, #4
	mov r1, sl
	strb r0, [r1, #1]
	movs r0, #0xc
	strb r0, [r1, #2]
	strb r0, [r1, #3]
_08091AA6:
	adds r0, r6, #0
	mov r1, sl
	bl sub_08042848
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #0xfb
	ands r0, r1
	strb r0, [r2]
	mov r0, r8
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08091AE8
	add r0, sp, #8
	adds r1, r6, #0
	mov r2, r8
	bl sub_080429D0
	b _08091AE8
_08091AD8:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
_08091AE8:
	mov r2, sb
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08091B08
	cmp r0, #2
	beq _08091B08
	cmp r0, #3
	beq _08091B08
	cmp r0, #4
	beq _08091B08
	cmp r0, #6
	beq _08091B08
	cmp r0, #7
	beq _08091B08
	b _08091C3E
_08091B08:
	ldr r0, [r6, #0x48]
	movs r2, #0x80
	lsls r2, r2, #9
	ldr r3, [sp, #0x28]
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
	b _08091C3E
_08091B28:
	adds r0, r6, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08091B4A
	cmp r0, #2
	beq _08091B4A
	cmp r0, #3
	beq _08091B4A
	cmp r0, #4
	beq _08091B4A
	cmp r0, #6
	beq _08091B4A
	cmp r0, #7
	bne _08091B58
_08091B4A:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_08091B58:
	adds r0, r6, #0
	bl EntityDelete
	b _08091C3E
_08091B60:
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	bne _08091B76
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_08091B76:
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
	ldrb r1, [r6, #0xd]
	adds r0, r1, #0
	subs r0, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r3, [sp, #0x28]
	cmp r0, #0x14
	bhi _08091BC2
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08091BC2
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r2, r6, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_08091BC2:
	adds r0, r6, #0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sb, r0
	cmp r1, #0
	beq _08091BE4
	cmp r1, #2
	beq _08091BE4
	cmp r1, #3
	beq _08091BE4
	cmp r1, #4
	beq _08091BE4
	cmp r1, #6
	beq _08091BE4
	cmp r1, #7
	bne _08091C02
_08091BE4:
	ldr r0, [r6, #0x18]
	movs r2, #0x80
	lsls r2, r2, #9
	ldr r5, [sp, #0x28]
	ldrb r1, [r5]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r1, #7
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_08091C02:
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08091C3E
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08091C2C
	cmp r0, #2
	beq _08091C2C
	cmp r0, #3
	beq _08091C2C
	cmp r0, #4
	beq _08091C2C
	cmp r0, #6
	beq _08091C2C
	cmp r0, #7
	bne _08091C38
_08091C2C:
	ldr r2, [sp, #0x28]
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_08091C38:
	adds r0, r6, #0
	bl EntityDelete
_08091C3E:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08091C50
sub_08091C50: @ 0x08091C50
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #0x24]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r2, _08091D3C @ =sub_08091D54
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, _08091D40 @ =0x0A0AFBFB
	str r0, [sp]
	cmp r4, #0
	beq _08091D2C
	ldr r0, [r5, #0x40]
	adds r0, r0, r6
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r7
	str r0, [r4, #0x44]
	mov r0, r8
	str r0, [r4, #0x48]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x4c]
	str r6, [r4, #0x14]
	str r7, [r4, #0x18]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #2
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08091D44 @ =0x081CC014
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _08091D48 @ =0x08220A38
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r2, _08091D4C @ =sub_08091FE8
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
	movs r0, #4
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	mov r0, sb
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, #0x16
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	str r5, [r4, #0x1c]
	subs r2, #0x19
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08091D50 @ =sub_0803B9D0
	str r0, [r4, #4]
_08091D2C:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08091D3C: .4byte sub_08091D54
_08091D40: .4byte 0x0A0AFBFB
_08091D44: .4byte 0x081CC014
_08091D48: .4byte 0x08220A38
_08091D4C: .4byte sub_08091FE8
_08091D50: .4byte sub_0803B9D0

	thumb_func_start sub_08091D54
sub_08091D54: @ 0x08091D54
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r3, [r5, #0x1c]
	ldr r0, _08091D80 @ =0x1818F4F4
	str r0, [sp, #0x10]
	ldrb r2, [r5, #0xd]
	cmp r2, #0
	bne _08091D84
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r5, #0
	bl sub_0806D3D8
	b _08091DEE
	.align 2, 0
_08091D80: .4byte 0x1818F4F4
_08091D84:
	subs r2, #1
	strb r2, [r5, #0xd]
	ldr r0, [r3, #0x40]
	ldr r1, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r3, #0x44]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	lsls r2, r2, #0x18
	cmp r2, #0
	bne _08091DC0
	movs r0, #0x95
	lsls r0, r0, #1
	bl PlaySong
	ldr r4, _08091E04 @ =0x00007FFF
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #0x10
	bl sub_080458E4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #6
	movs r3, #0x10
	bl sub_080458E4
_08091DC0:
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x48
	beq _08091DCE
	cmp r0, #0x66
	bne _08091DEE
_08091DCE:
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	ldrb r1, [r5, #0xd]
	cmp r0, r1
	bne _08091DEE
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	add r1, sp, #0x10
	adds r0, r5, #0
	bl sub_08042848
_08091DEE:
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806D128
	cmp r0, #0
	beq _08091E08
	adds r0, r5, #0
	bl EntityDelete
	b _08091E16
	.align 2, 0
_08091E04: .4byte 0x00007FFF
_08091E08:
	adds r0, r5, #0
	bl sub_0803F17C
	mov r0, sp
	adds r1, r5, #0
	bl sub_080421AC
_08091E16:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08091E20
sub_08091E20: @ 0x08091E20
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	ldr r2, _08091EC8 @ =sub_08092018
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08091EBC
	ldr r0, [r5, #0x40]
	adds r0, r0, r6
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r7
	str r0, [r4, #0x44]
	str r6, [r4, #0x14]
	str r7, [r4, #0x18]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08091ECC @ =0x081CC014
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _08091ED0 @ =0x08220A38
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	mov r0, r8
	strb r0, [r4, #0xd]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	str r5, [r4, #0x1c]
	subs r2, #0x19
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08091ED4 @ =sub_0803B9D0
	str r0, [r4, #4]
_08091EBC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08091EC8: .4byte sub_08092018
_08091ECC: .4byte 0x081CC014
_08091ED0: .4byte 0x08220A38
_08091ED4: .4byte sub_0803B9D0

	thumb_func_start sub_08091ED8
sub_08091ED8: @ 0x08091ED8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _08091EF2
	movs r4, #0
_08091EE4:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080914C4
	adds r4, #1
	cmp r4, #7
	ble _08091EE4
_08091EF2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08091EF8
sub_08091EF8: @ 0x08091EF8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _08091F18
	movs r4, #0
_08091F06:
	adds r0, r6, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r5, #0
	bl sub_080914C4
	adds r4, #1
	cmp r4, #7
	ble _08091F06
_08091F18:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08091F20
sub_08091F20: @ 0x08091F20
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x58
	ldrb r4, [r5]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1f
	bl sub_0806CF2C
	cmp r4, r0
	beq _08091F6A
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
	movs r3, #0x80
	lsls r3, r3, #0xa
	ldr r1, [r6, #0x1c]
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r2, r1, r0
_08091F58:
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r0, [r1, #8]
	subs r0, r3, r0
	str r0, [r1, #8]
	adds r1, #0x2c
	cmp r1, r2
	ble _08091F58
_08091F6A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08091F70
sub_08091F70: @ 0x08091F70
	ldr r2, [r0, #0x1c]
	movs r0, #0x2c
	muls r0, r1, r0
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	bx lr

	thumb_func_start sub_08091F80
sub_08091F80: @ 0x08091F80
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r2, r1, r0
_08091F8A:
	ldr r0, [r1]
	str r0, [r1, #0x20]
	ldr r0, [r1, #4]
	str r0, [r1, #0x24]
	adds r1, #0x2c
	cmp r1, r2
	ble _08091F8A
	pop {r0}
	bx r0

	thumb_func_start sub_08091F9C
sub_08091F9C: @ 0x08091F9C
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r2, r1, r0
_08091FA6:
	ldr r0, [r1, #0x20]
	str r0, [r1]
	ldr r0, [r1, #0x24]
	str r0, [r1, #4]
	adds r1, #0x2c
	cmp r1, r2
	ble _08091FA6
	pop {r0}
	bx r0

	thumb_func_start sub_08091FB8
sub_08091FB8: @ 0x08091FB8
	push {lr}
	sub sp, #0x10
	mov r2, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r3, #0
	strh r1, [r2]
	mov r1, sp
	movs r2, #1
	strh r2, [r1, #2]
	strh r3, [r1, #4]
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

	thumb_func_start sub_08091FE8
sub_08091FE8: @ 0x08091FE8
	push {lr}
	sub sp, #0x10
	mov r2, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r3, #0
	strh r1, [r2]
	movs r1, #2
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

	thumb_func_start sub_08092018
sub_08092018: @ 0x08092018
	push {lr}
	sub sp, #0x10
	adds r3, r0, #0
	ldr r2, [r3, #0x1c]
	ldr r0, [r2, #0x40]
	ldr r1, [r3, #0x14]
	adds r0, r0, r1
	str r0, [r3, #0x40]
	ldr r0, [r2, #0x44]
	ldr r1, [r3, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	ldrb r0, [r3, #0xd]
	subs r0, #1
	strb r0, [r3, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08092042
	adds r0, r3, #0
	bl EntityDelete
_08092042:
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_08092048
sub_08092048: @ 0x08092048
	push {lr}
	adds r1, r0, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0809205E
	adds r0, r1, #0
	bl sub_0803B9D0
_0809205E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08092064
sub_08092064: @ 0x08092064
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

	thumb_func_start sub_08092090
sub_08092090: @ 0x08092090
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
	bl sub_080920D8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080920D8
sub_080920D8: @ 0x080920D8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	ldrh r0, [r4, #0x34]
	subs r0, r0, r3
	strh r0, [r4, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08092124
	adds r0, r4, #0
	bl sub_080683BC
	movs r0, #0x72
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
	movs r0, #0x28
	strb r0, [r4, #0xd]
	movs r0, #2
	strb r0, [r4, #0xa]
	movs r0, #0
	strb r0, [r4, #0xb]
_08092124:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyFlameDemonUpdate
EnemyFlameDemonUpdate: @ 0x0809212C
	push {lr}
	bl EnemyDevilUpdate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyFlameDemonCreate
EnemyFlameDemonCreate: @ 0x08092138
	push {lr}
	bl EnemyDevilCreate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyArcDemonUpdate
EnemyArcDemonUpdate: @ 0x08092144
	push {lr}
	bl EnemyDevilUpdate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyArcDemonCreate
EnemyArcDemonCreate: @ 0x08092150
	push {lr}
	bl EnemyDevilCreate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyDemonLordUpdate
EnemyDemonLordUpdate: @ 0x0809215C
	push {lr}
	bl EnemyDevilUpdate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyDemonLordCreate
EnemyDemonLordCreate: @ 0x08092168
	push {lr}
	bl EnemyDevilCreate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyZombieOfficerUpdate
EnemyZombieOfficerUpdate: @ 0x08092174
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r5, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	beq _08092188
	b _08092344
_08092188:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080921AC
	cmp r0, #1
	bgt _08092198
	cmp r0, #0
	beq _080921A4
	b _08092338
_08092198:
	cmp r0, #2
	beq _080921B4
	cmp r0, #3
	bne _080921A2
	b _08092330
_080921A2:
	b _08092338
_080921A4:
	adds r0, r5, #0
	bl sub_080923E4
	b _08092338
_080921AC:
	adds r0, r5, #0
	bl sub_080924AC
	b _08092338
_080921B4:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x28
	beq _080921BC
	b _0809231C
_080921BC:
	bl RandomNumberGenerator
	ldr r4, _080921F0 @ =0x000FFFFF
	ands r0, r4
	ldr r1, _080921F4 @ =0xFFF80000
	adds r6, r0, r1
	bl RandomNumberGenerator
	ands r0, r4
	ldr r1, _080921F8 @ =0xFFFF0000
	subs r7, r1, r0
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	beq _08092204
	bl RandomNumberGenerator
	ldr r1, _080921FC @ =0x00007FFF
	ands r1, r0
	ldr r0, _08092200 @ =0xFFFF8000
	subs r4, r0, r1
	b _08092212
	.align 2, 0
_080921F0: .4byte 0x000FFFFF
_080921F4: .4byte 0xFFF80000
_080921F8: .4byte 0xFFFF0000
_080921FC: .4byte 0x00007FFF
_08092200: .4byte 0xFFFF8000
_08092204:
	bl RandomNumberGenerator
	ldr r1, _0809226C @ =0x00007FFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	adds r4, r1, r0
_08092212:
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #9
	bl __umodsi3
	rsbs r0, r0, #0
	ldr r1, _08092270 @ =0xFFFE8000
	adds r0, r0, r1
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080925B4
	bl RandomNumberGenerator
	ldr r1, _08092274 @ =0x000FFFFF
	ands r1, r0
	ldr r0, _08092278 @ =0xFFF80000
	adds r6, r1, r0
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xd
	bl __umodsi3
	rsbs r7, r0, #0
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08092280
	bl RandomNumberGenerator
	ldr r1, _0809226C @ =0x00007FFF
	ands r1, r0
	ldr r0, _0809227C @ =0xFFFF8000
	subs r4, r0, r1
	b _0809228E
	.align 2, 0
_0809226C: .4byte 0x00007FFF
_08092270: .4byte 0xFFFE8000
_08092274: .4byte 0x000FFFFF
_08092278: .4byte 0xFFF80000
_0809227C: .4byte 0xFFFF8000
_08092280:
	bl RandomNumberGenerator
	ldr r1, _080922DC @ =0x00007FFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	adds r4, r1, r0
_0809228E:
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #9
	bl __umodsi3
	rsbs r0, r0, #0
	ldr r1, _080922E0 @ =0xFFFE8000
	adds r0, r0, r1
	str r0, [sp]
	movs r0, #0x11
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080925B4
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r6, _080922E4 @ =0xFFFA0000
	cmp r0, #0
	beq _080922C8
	movs r6, #0xc0
	lsls r6, r6, #0xb
_080922C8:
	ldr r7, _080922E8 @ =0xFFF30000
	cmp r0, #0
	beq _080922F0
	bl RandomNumberGenerator
	ldr r1, _080922DC @ =0x00007FFF
	ands r1, r0
	ldr r0, _080922EC @ =0xFFFF8000
	subs r4, r0, r1
	b _080922FE
	.align 2, 0
_080922DC: .4byte 0x00007FFF
_080922E0: .4byte 0xFFFE8000
_080922E4: .4byte 0xFFFA0000
_080922E8: .4byte 0xFFF30000
_080922EC: .4byte 0xFFFF8000
_080922F0:
	bl RandomNumberGenerator
	ldr r1, _08092324 @ =0x00007FFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	adds r4, r1, r0
_080922FE:
	bl RandomNumberGenerator
	ldr r1, _08092328 @ =0x0000FFFF
	ands r1, r0
	ldr r0, _0809232C @ =0xFFFF0000
	subs r0, r0, r1
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_080925B4
_0809231C:
	adds r0, r5, #0
	bl sub_0806AEAC
	b _08092338
	.align 2, 0
_08092324: .4byte 0x00007FFF
_08092328: .4byte 0x0000FFFF
_0809232C: .4byte 0xFFFF0000
_08092330:
	adds r0, r5, #0
	bl sub_0803F17C
	b _08092344
_08092338:
	adds r0, r5, #0
	bl sub_0806DF20
	adds r0, r5, #0
	bl sub_0806E314
_08092344:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start EnemyZombieOfficerCreate
EnemyZombieOfficerCreate: @ 0x08092350
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08092680
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08092366
	adds r0, r4, #0
	bl EntityDelete
	b _080923D4
_08092366:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _08092394 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08092398
	movs r0, #3
	b _080923D2
	.align 2, 0
_08092394: .4byte gEwramData
_08092398:
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _080923B8
	ldr r2, _080923B0 @ =sub_080926CC
	ldr r3, _080923B4 @ =sub_0809252C
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _080923C4
	.align 2, 0
_080923B0: .4byte sub_080926CC
_080923B4: .4byte sub_0809252C
_080923B8:
	ldr r2, _080923DC @ =sub_080926CC
	ldr r3, _080923E0 @ =sub_0809252C
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_080923C4:
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	movs r0, #0
_080923D2:
	strb r0, [r4, #0xa]
_080923D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080923DC: .4byte sub_080926CC
_080923E0: .4byte sub_0809252C

	thumb_func_start sub_080923E4
sub_080923E4: @ 0x080923E4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0809249C
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #3
	beq _08092400
	cmp r1, #7
	bne _08092472
_08092400:
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r6, [r0]
	cmp r6, #0
	bne _08092472
	adds r0, r4, #0
	bl sub_0806CF2C
	adds r5, r4, #0
	adds r5, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r5]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x32
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x40
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x64
	movs r3, #0x46
	bl sub_0806CFFC
	cmp r0, #0
	beq _08092452
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r6, [r4, #0xb]
	b _0809249C
_08092452:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08092462
	movs r0, #0xa0
	lsls r0, r0, #8
	b _08092464
_08092462:
	ldr r0, _080924A4 @ =0xFFFF6000
_08092464:
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
_08092472:
	ldrb r0, [r7]
	cmp r0, #2
	beq _0809247C
	cmp r0, #6
	bne _08092488
_0809247C:
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _08092488
	str r0, [r4, #0x48]
_08092488:
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _080924A8 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08069A00
_0809249C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080924A4: .4byte 0xFFFF6000
_080924A8: .4byte 0xFFE00000

	thumb_func_start sub_080924AC
sub_080924AC: @ 0x080924AC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	beq _080924BC
	cmp r5, #1
	beq _080924D0
	b _08092522
_080924BC:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _08092522
_080924D0:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #4
	bne _080924E0
	movs r0, #0x85
	bl PlaySong
_080924E0:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	ands r5, r0
	cmp r5, #0
	beq _08092522
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08092512
	movs r0, #0xa0
	lsls r0, r0, #8
	b _08092514
_08092512:
	ldr r0, _08092528 @ =0xFFFF6000
_08092514:
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
_08092522:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08092528: .4byte 0xFFFF6000

	thumb_func_start sub_0809252C
sub_0809252C: @ 0x0809252C
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
	bgt _080925AE
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x70
	bl PlaySong
	adds r0, r6, #0
	movs r1, #2
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
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
_080925AE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080925B4
sub_080925B4: @ 0x080925B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _08092650 @ =sub_08092660
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08092646
	ldr r0, [r5, #0x40]
	adds r0, r0, r6
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r7
	str r0, [r4, #0x44]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x1c]
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
	ldr r0, _08092654 @ =0x081CC01C
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08092658 @ =0x08220F84
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	ldr r0, [sp, #0x1c]
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r4, #0x54]
	mov r0, r8
	str r0, [r4, #0x48]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x4c]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0809265C @ =sub_0803B9D0
	str r0, [r4, #4]
_08092646:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092650: .4byte sub_08092660
_08092654: .4byte 0x081CC01C
_08092658: .4byte 0x08220F84
_0809265C: .4byte sub_0803B9D0

	thumb_func_start sub_08092660
sub_08092660: @ 0x08092660
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #0xc
	bl sub_0806D3D8
	ldr r1, [r4, #0x44]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	ble _0809267A
	adds r0, r4, #0
	bl EntityDelete
_0809267A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08092680
sub_08092680: @ 0x08092680
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080926B4 @ =0x081CC01C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080926C4
	ldr r0, _080926B8 @ =0x0820AA24
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _080926BC @ =0x08220F84
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _080926C0 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080926C6
	.align 2, 0
_080926B4: .4byte 0x081CC01C
_080926B8: .4byte 0x0820AA24
_080926BC: .4byte 0x08220F84
_080926C0: .4byte sub_0803B9D0
_080926C4:
	movs r0, #0
_080926C6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080926CC
sub_080926CC: @ 0x080926CC
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

	thumb_func_start EnemyZombieSoldierUpdate
EnemyZombieSoldierUpdate: @ 0x080926F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x38
	adds r5, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	beq _0809270C
	b _0809285C
_0809270C:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _08092730
	cmp r0, #1
	bgt _0809271C
	cmp r0, #0
	beq _08092728
	b _08092850
_0809271C:
	cmp r0, #2
	beq _08092738
	cmp r0, #3
	bne _08092726
	b _08092848
_08092726:
	b _08092850
_08092728:
	adds r0, r5, #0
	bl sub_080928FC
	b _08092850
_08092730:
	adds r0, r5, #0
	bl sub_08092A28
	b _08092850
_08092738:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x28
	bne _08092836
	bl RandomNumberGenerator
	ldr r4, _08092774 @ =0x000FFFFF
	ands r0, r4
	ldr r1, _08092778 @ =0xFFF80000
	adds r7, r0, r1
	bl RandomNumberGenerator
	ands r0, r4
	ldr r1, _0809277C @ =0xFFFF0000
	subs r6, r1, r0
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	beq _08092788
	bl RandomNumberGenerator
	ldr r1, _08092780 @ =0x00007FFF
	ands r1, r0
	ldr r0, _08092784 @ =0xFFFF8000
	subs r4, r0, r1
	b _08092796
	.align 2, 0
_08092774: .4byte 0x000FFFFF
_08092778: .4byte 0xFFF80000
_0809277C: .4byte 0xFFFF0000
_08092780: .4byte 0x00007FFF
_08092784: .4byte 0xFFFF8000
_08092788:
	bl RandomNumberGenerator
	ldr r1, _080927F0 @ =0x00007FFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	adds r4, r1, r0
_08092796:
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #9
	bl __umodsi3
	rsbs r0, r0, #0
	ldr r1, _080927F4 @ =0xFFFE8000
	adds r0, r0, r1
	str r0, [sp]
	movs r0, #0x13
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_08092FCC
	bl RandomNumberGenerator
	ldr r1, _080927F8 @ =0x000FFFFF
	ands r1, r0
	ldr r0, _080927FC @ =0xFFF80000
	adds r7, r1, r0
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xd
	bl __umodsi3
	rsbs r6, r0, #0
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08092804
	bl RandomNumberGenerator
	ldr r1, _080927F0 @ =0x00007FFF
	ands r1, r0
	ldr r0, _08092800 @ =0xFFFF8000
	subs r4, r0, r1
	b _08092812
	.align 2, 0
_080927F0: .4byte 0x00007FFF
_080927F4: .4byte 0xFFFE8000
_080927F8: .4byte 0x000FFFFF
_080927FC: .4byte 0xFFF80000
_08092800: .4byte 0xFFFF8000
_08092804:
	bl RandomNumberGenerator
	ldr r1, _08092840 @ =0x00007FFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	adds r4, r1, r0
_08092812:
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #9
	bl __umodsi3
	rsbs r0, r0, #0
	ldr r1, _08092844 @ =0xFFFE8000
	adds r0, r0, r1
	str r0, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_08092FCC
_08092836:
	adds r0, r5, #0
	bl sub_0806AEAC
	b _08092850
	.align 2, 0
_08092840: .4byte 0x00007FFF
_08092844: .4byte 0xFFFE8000
_08092848:
	adds r0, r5, #0
	bl sub_0803F17C
	b _0809285C
_08092850:
	adds r0, r5, #0
	bl sub_0806DF20
	adds r0, r5, #0
	bl sub_0806E314
_0809285C:
	add sp, #0x38
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start EnemyZombieSoldierCreate
EnemyZombieSoldierCreate: @ 0x08092868
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08093100
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809287E
	adds r0, r4, #0
	bl EntityDelete
	b _080928EC
_0809287E:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _080928AC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080928B0
	movs r0, #3
	b _080928EA
	.align 2, 0
_080928AC: .4byte gEwramData
_080928B0:
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _080928D0
	ldr r2, _080928C8 @ =sub_0809314C
	ldr r3, _080928CC @ =sub_08092B38
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _080928DC
	.align 2, 0
_080928C8: .4byte sub_0809314C
_080928CC: .4byte sub_08092B38
_080928D0:
	ldr r2, _080928F4 @ =sub_0809314C
	ldr r3, _080928F8 @ =sub_08092B38
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_080928DC:
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	movs r0, #0
_080928EA:
	strb r0, [r4, #0xa]
_080928EC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080928F4: .4byte sub_0809314C
_080928F8: .4byte sub_08092B38

	thumb_func_start sub_080928FC
sub_080928FC: @ 0x080928FC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	beq _08092910
	b _08092A10
_08092910:
	adds r0, r7, #0
	adds r0, #0x6e
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #1
	beq _08092920
	cmp r1, #5
	bne _080929E4
_08092920:
	adds r0, r7, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	mov r8, r0
	cmp r0, #0
	bne _080929E4
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r4, r7, #0
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
	adds r6, r7, #0
	adds r6, #0x42
	ldrh r0, [r6]
	subs r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r5, r7, #0
	adds r5, #0x46
	ldrh r1, [r5]
	subs r1, #0x40
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0x46
	bl sub_0806CFFC
	cmp r0, #0
	beq _08092986
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x3f
	bhi _08092986
	movs r0, #1
	strb r0, [r7, #0xa]
	mov r0, r8
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #1
	b _080929BA
_08092986:
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x1f
	bhi _080929C4
	ldrh r0, [r6]
	subs r0, #0x6e
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5]
	subs r1, #0x40
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xdc
	movs r3, #0x46
	bl sub_0806CFFC
	cmp r0, #0
	beq _080929C4
	movs r0, #1
	strb r0, [r7, #0xa]
	movs r0, #0xa
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #2
_080929BA:
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _08092A10
_080929C4:
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080929D4
	movs r0, #0x80
	lsls r0, r0, #7
	b _080929D6
_080929D4:
	ldr r0, _08092A20 @ =0xFFFFC000
_080929D6:
	str r0, [r7, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r7, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r7, #0x54]
_080929E4:
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _080929F0
	cmp r0, #4
	bne _080929FC
_080929F0:
	adds r0, r7, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080929FC
	str r0, [r7, #0x48]
_080929FC:
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _08092A24 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r7, #0
	bl sub_08069A00
_08092A10:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092A20: .4byte 0xFFFFC000
_08092A24: .4byte 0xFFE00000

	thumb_func_start sub_08092A28
sub_08092A28: @ 0x08092A28
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r4, [r5, #0xb]
	cmp r4, #1
	beq _08092A4E
	cmp r4, #1
	bgt _08092A3E
	cmp r4, #0
	beq _08092A48
	b _08092B2E
_08092A3E:
	cmp r4, #0xa
	beq _08092A6C
	cmp r4, #0xb
	beq _08092B00
	b _08092B2E
_08092A48:
	movs r0, #1
	strb r0, [r5, #0xb]
	b _08092B2E
_08092A4E:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #2
	bne _08092A5E
	movs r0, #0x85
	bl PlaySong
_08092A5E:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	beq _08092B2E
	b _08092B0E
_08092A6C:
	adds r0, r5, #0
	bl sub_0806CF2C
	adds r4, r5, #0
	adds r4, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r1, [r4]
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r4]
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #0xa
	bne _08092B2E
	movs r7, #0x40
	ands r2, r7
	ldr r6, _08092ACC @ =0xFFF00000
	cmp r2, #0
	beq _08092AA0
	movs r6, #0x80
	lsls r6, r6, #0xd
_08092AA0:
	adds r0, r5, #0
	bl sub_0806CD38
	ldr r1, [r5, #0x40]
	adds r1, r1, r6
	subs r0, r0, r1
	movs r1, #0x2c
	bl __divsi3
	adds r3, r0, #0
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08092AD4
	ldr r0, _08092AD0 @ =0x00013FFF
	cmp r3, r0
	ble _08092ADC
	movs r3, #0xa0
	lsls r3, r3, #9
	b _08092ADC
	.align 2, 0
_08092ACC: .4byte 0xFFF00000
_08092AD0: .4byte 0x00013FFF
_08092AD4:
	ldr r0, _08092AF4 @ =0xFFFEC000
	cmp r3, r0
	bgt _08092ADC
	adds r3, r0, #0
_08092ADC:
	ldr r0, _08092AF8 @ =0xFFFE0000
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	ldr r2, _08092AFC @ =0xFFDB0000
	bl sub_08092BC0
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _08092B2E
	.align 2, 0
_08092AF4: .4byte 0xFFFEC000
_08092AF8: .4byte 0xFFFE0000
_08092AFC: .4byte 0xFFDB0000
_08092B00:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08092B2E
_08092B0E:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r5, #0xa]
	strb r0, [r5, #0xb]
	str r0, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
_08092B2E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08092B38
sub_08092B38: @ 0x08092B38
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
	bgt _08092BBA
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
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
_08092BBA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08092BC0
sub_08092BC0: @ 0x08092BC0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _08092CB0 @ =sub_08092CCC
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, _08092CB4 @ =0x0404FEFE
	str r0, [sp]
	cmp r4, #0
	beq _08092CA2
	ldr r0, [r5, #0x40]
	adds r0, r0, r6
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r7
	str r0, [r4, #0x44]
	mov r0, r8
	str r0, [r4, #0x48]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
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
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08092CB8 @ =0x081CC024
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _08092CBC @ =0x082215C4
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x12
	strb r0, [r1]
	ldr r2, _08092CC0 @ =sub_08093098
	ldr r3, _08092CC4 @ =sub_080930E0
	adds r0, r4, #0
	movs r1, #8
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
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	subs r2, #0x19
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08092CC8 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #0
	strb r0, [r4, #0xd]
_08092CA2:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092CB0: .4byte sub_08092CCC
_08092CB4: .4byte 0x0404FEFE
_08092CB8: .4byte 0x081CC024
_08092CBC: .4byte 0x082215C4
_08092CC0: .4byte sub_08093098
_08092CC4: .4byte sub_080930E0
_08092CC8: .4byte sub_0803B9D0

	thumb_func_start sub_08092CCC
sub_08092CCC: @ 0x08092CCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r6, r0, #0
	ldr r0, _08092D30 @ =0x1818F4F4
	str r0, [sp, #0x20]
	ldrb r7, [r6, #0xa]
	cmp r7, #0
	bne _08092D4C
	ldr r0, [r6, #0x4c]
	movs r1, #3
	bl __divsi3
	adds r1, r0, #0
	ldr r2, _08092D34 @ =0xFFFC0000
	adds r0, r6, #0
	bl sub_08069770
	adds r4, r0, #0
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _08092D1A
	ldr r0, [r6, #0x4c]
	rsbs r0, r0, #0
	str r0, [r6, #0x4c]
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08092D22
	ldr r0, _08092D38 @ =0x0000011B
	bl PlaySong
_08092D1A:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _08092D3C
_08092D22:
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0x76
	bl PlaySong
	b _08092FBA
	.align 2, 0
_08092D30: .4byte 0x1818F4F4
_08092D34: .4byte 0xFFFC0000
_08092D38: .4byte 0x0000011B
_08092D3C:
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806D128
	cmp r0, #0
	beq _08092D4A
	b _08092F84
_08092D4A:
	b _08092FA4
_08092D4C:
	cmp r7, #1
	bne _08092E30
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _08092E2C @ =0x0000FFFF
	ands r4, r0
	movs r1, #0x80
	lsls r1, r1, #7
	mov sl, r1
	adds r0, r4, r1
	bl sub_080009E4
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_080009E4
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #9
	mov sb, r2
	adds r0, r5, #0
	mov r1, sb
	bl sub_0803E86C
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_0803E86C
	adds r4, r0, #0
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	movs r3, #0x5c
	adds r3, r3, r6
	mov r8, r3
	ldrb r2, [r3]
	str r2, [sp]
	str r7, [sp, #4]
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0806D894
	ldrb r0, [r6, #0xd]
	cmp r0, #3
	bne _08092DD6
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	mov r3, r8
	ldrb r2, [r3]
	str r2, [sp]
	str r7, [sp, #4]
	movs r2, #7
	str r2, [sp, #8]
	movs r2, #5
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_0806D930
_08092DD6:
	ldrb r0, [r6, #0xd]
	ands r7, r0
	cmp r7, #0
	beq _08092E20
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _08092E2C @ =0x0000FFFF
	ands r4, r0
	mov r1, sl
	adds r0, r4, r1
	bl sub_080009E4
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_080009E4
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl sub_0803E86C
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_0803E86C
	adds r4, r0, #0
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	mov r3, r8
	ldrb r2, [r3]
	str r2, [sp]
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0806D644
_08092E20:
	ldrb r0, [r6, #0xd]
	cmp r0, #6
	bhi _08092E28
	b _08092FBA
_08092E28:
	b _08092F84
	.align 2, 0
_08092E2C: .4byte 0x0000FFFF
_08092E30:
	cmp r7, #2
	beq _08092E36
	b _08092FBA
_08092E36:
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bhi _08092F10
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _08092F8C @ =0x0000FFFF
	ands r4, r0
	movs r1, #0x80
	lsls r1, r1, #7
	mov sl, r1
	adds r0, r4, r1
	bl sub_080009E4
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_080009E4
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #9
	mov sb, r2
	adds r0, r5, #0
	mov r1, sb
	bl sub_0803E86C
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_0803E86C
	adds r4, r0, #0
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	adds r7, r6, #0
	adds r7, #0x5c
	ldrb r2, [r7]
	str r2, [sp]
	movs r3, #1
	mov r8, r3
	str r3, [sp, #4]
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0806D894
	ldrb r0, [r6, #0xd]
	cmp r0, #3
	bne _08092EC6
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	ldrb r2, [r7]
	str r2, [sp]
	mov r2, r8
	str r2, [sp, #4]
	movs r2, #7
	str r2, [sp, #8]
	movs r2, #5
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0
	bl sub_0806D930
_08092EC6:
	ldrb r1, [r6, #0xd]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08092F10
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r3, _08092F8C @ =0x0000FFFF
	ands r4, r3
	mov r1, sl
	adds r0, r4, r1
	bl sub_080009E4
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_080009E4
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl sub_0803E86C
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_0803E86C
	adds r4, r0, #0
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	ldrb r2, [r7]
	str r2, [sp]
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0806D644
_08092F10:
	ldrb r0, [r6, #0xd]
	cmp r0, #0xe
	bhi _08092F7E
	lsrs r0, r0, #1
	movs r1, #0xfe
	subs r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08092F90 @ =0xFFFFFF00
	ldr r3, [sp, #0x20]
	ands r3, r2
	orrs r3, r0
	ldrb r0, [r6, #0xd]
	lsrs r0, r0, #1
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x10
	ldr r0, _08092F94 @ =0xFFFF00FF
	ands r3, r0
	orrs r3, r1
	str r3, [sp, #0x20]
	add r0, sp, #0x20
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r4, r0, #0
	cmp r2, #0
	bge _08092F48
	rsbs r2, r2, #0
_08092F48:
	lsls r0, r2, #0x19
	lsrs r0, r0, #8
	ldr r2, _08092F98 @ =0xFF00FFFF
	ands r2, r3
	orrs r2, r0
	str r2, [sp, #0x20]
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08092F60
	rsbs r0, r0, #0
_08092F60:
	lsls r1, r0, #0x19
	ldr r0, _08092F9C @ =0x00FFFFFF
	ands r2, r0
	orrs r2, r1
	str r2, [sp, #0x20]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042848
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
_08092F7E:
	ldrb r0, [r6, #0xd]
	cmp r0, #0x17
	bls _08092FA0
_08092F84:
	adds r0, r6, #0
	bl EntityDelete
	b _08092FBA
	.align 2, 0
_08092F8C: .4byte 0x0000FFFF
_08092F90: .4byte 0xFFFFFF00
_08092F94: .4byte 0xFFFF00FF
_08092F98: .4byte 0xFF00FFFF
_08092F9C: .4byte 0x00FFFFFF
_08092FA0:
	cmp r0, #0x12
	bhi _08092FAE
_08092FA4:
	add r0, sp, #0x10
	adds r1, r6, #0
	bl sub_080421AC
	b _08092FBA
_08092FAE:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_08092FBA:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08092FCC
sub_08092FCC: @ 0x08092FCC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _08093068 @ =sub_08093078
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0809305E
	ldr r0, [r5, #0x40]
	adds r0, r0, r6
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r7
	str r0, [r4, #0x44]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x1c]
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
	ldr r0, _0809306C @ =0x081CC024
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08093070 @ =0x082215C4
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	ldr r0, [sp, #0x1c]
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r4, #0x54]
	mov r0, r8
	str r0, [r4, #0x48]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x4c]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08093074 @ =sub_0803B9D0
	str r0, [r4, #4]
_0809305E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08093068: .4byte sub_08093078
_0809306C: .4byte 0x081CC024
_08093070: .4byte 0x082215C4
_08093074: .4byte sub_0803B9D0

	thumb_func_start sub_08093078
sub_08093078: @ 0x08093078
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #0xc
	bl sub_0806D3D8
	ldr r1, [r4, #0x44]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	ble _08093092
	adds r0, r4, #0
	bl EntityDelete
_08093092:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08093098
sub_08093098: @ 0x08093098
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r1, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r2, #0
	strh r0, [r1]
	movs r0, #2
	strh r0, [r1, #2]
	mov r0, sp
	strh r2, [r0, #4]
	movs r0, #1
	strh r0, [r1, #6]
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080930D6
	movs r0, #1
	strb r0, [r4, #0xa]
	movs r0, #0
	strb r0, [r4, #0xd]
	movs r0, #0x76
	bl PlaySong
_080930D6:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080930E0
sub_080930E0: @ 0x080930E0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r2, #4]
	bl sub_08021530
	movs r0, #0x76
	bl PlaySong
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	strb r1, [r4, #0xd]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08093100
sub_08093100: @ 0x08093100
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08093134 @ =0x081CC024
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _08093144
	ldr r0, _08093138 @ =0x0820AA48
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0809313C @ =0x082215C4
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08093140 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _08093146
	.align 2, 0
_08093134: .4byte 0x081CC024
_08093138: .4byte 0x0820AA48
_0809313C: .4byte 0x082215C4
_08093140: .4byte sub_0803B9D0
_08093144:
	movs r0, #0
_08093146:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809314C
sub_0809314C: @ 0x0809314C
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

	thumb_func_start EnemyCurlyCreate
EnemyCurlyCreate: @ 0x08093178
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08093540
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809318E
	adds r0, r4, #0
	bl EntityDelete
	b _08093208
_0809318E:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _080931BC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080931C0
	movs r0, #3
	strb r0, [r4, #0xa]
	b _08093208
	.align 2, 0
_080931BC: .4byte gEwramData
_080931C0:
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _080931E0
	ldr r2, _080931D8 @ =sub_08093674
	ldr r3, _080931DC @ =sub_080935E8
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _080931EC
	.align 2, 0
_080931D8: .4byte sub_08093674
_080931DC: .4byte sub_080935E8
_080931E0:
	ldr r2, _08093210 @ =sub_08093674
	ldr r3, _08093214 @ =sub_080935E8
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_080931EC:
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	movs r0, #0
	strb r0, [r4, #0xa]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
_08093208:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08093210: .4byte sub_08093674
_08093214: .4byte sub_080935E8

	thumb_func_start sub_08093218
sub_08093218: @ 0x08093218
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08093234 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08093238 @ =0x0000A094
	adds r7, r0, r1
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0809323C
	cmp r0, #1
	bne _08093232
	b _08093388
_08093232:
	b _08093454
	.align 2, 0
_08093234: .4byte gEwramData
_08093238: .4byte 0x0000A094
_0809323C:
	adds r0, r4, #0
	bl sub_0806D54C
	cmp r0, #0
	beq _0809324E
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _08093454
_0809324E:
	adds r1, r4, #0
	adds r1, #0x6e
	ldrb r0, [r1]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r1, #0
	cmp r0, #3
	bls _080932C4
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080932D0
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809327E
	movs r1, #0x80
	lsls r1, r1, #8
	b _08093280
_0809327E:
	ldr r1, _080932C0 @ =0xFFFF8000
_08093280:
	adds r0, r4, #0
	bl sub_0806AC5C
	str r0, [r4, #0x48]
	ldrb r5, [r6]
	cmp r5, #1
	bne _080932D0
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x32
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x40
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x64
	movs r3, #0x46
	bl sub_0806CFFC
	cmp r0, #0
	beq _080932D0
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x5f
	bhi _080932D0
	b _0809340E
	.align 2, 0
_080932C0: .4byte 0xFFFF8000
_080932C4:
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080932D0
	str r0, [r4, #0x48]
_080932D0:
	ldrh r0, [r6]
	cmp r0, #4
	bne _080932DC
	movs r0, #0x85
	bl PlaySong
_080932DC:
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0809332C @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08069A00
	adds r5, r0, #0
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	bne _080932FC
	b _08093454
_080932FC:
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #6
	ldrsh r0, [r7, r2]
	adds r3, r1, r0
	adds r0, r4, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	adds r6, r1, r0
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08093330
	adds r3, #1
	b _08093332
	.align 2, 0
_0809332C: .4byte 0xFFE00000
_08093330:
	subs r3, #1
_08093332:
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	bne _08093354
	adds r0, r3, #0
	adds r1, r6, #0
	bl sub_0806B1A0
	cmp r0, #0
	bne _08093354
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806D188
	cmp r0, #0
	bne _08093354
	b _08093454
_08093354:
	ldrb r2, [r7]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08093378
	movs r1, #0x80
	lsls r1, r1, #8
	b _0809337A
_08093378:
	ldr r1, _08093384 @ =0xFFFF8000
_0809337A:
	adds r0, r4, #0
	bl sub_0806AC5C
	str r0, [r4, #0x48]
	b _08093454
	.align 2, 0
_08093384: .4byte 0xFFFF8000
_08093388:
	adds r1, r4, #0
	adds r1, #0x6e
	ldrb r0, [r1]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r1, #0
	cmp r0, #3
	bls _08093428
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _08093434
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
	beq _080933CE
	movs r1, #0x80
	lsls r1, r1, #8
	b _080933D0
_080933CE:
	ldr r1, _08093424 @ =0xFFFF8000
_080933D0:
	adds r0, r4, #0
	bl sub_0806AC5C
	str r0, [r4, #0x48]
	ldrb r5, [r6]
	cmp r5, #1
	bne _08093434
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x32
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x40
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x64
	movs r3, #0x46
	bl sub_0806CFFC
	cmp r0, #0
	beq _08093434
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x5f
	bhi _08093434
_0809340E:
	movs r0, #0
	strb r5, [r4, #0xa]
	strb r0, [r4, #0xb]
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _08093454
	.align 2, 0
_08093424: .4byte 0xFFFF8000
_08093428:
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _08093434
	str r0, [r4, #0x48]
_08093434:
	ldrh r0, [r6]
	cmp r0, #4
	bne _08093440
	movs r0, #0x85
	bl PlaySong
_08093440:
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0809345C @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08069A00
_08093454:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809345C: .4byte 0xFFE00000

	thumb_func_start sub_08093460
sub_08093460: @ 0x08093460
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r1, [r4, #0xb]
	cmp r1, #0
	bne _08093536
	ldrb r0, [r4, #0xd]
	cmp r0, #7
	bhi _080934A0
	adds r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809348A
	movs r1, #0x80
	lsls r1, r1, #9
	b _0809348C
_0809348A:
	ldr r1, _0809349C @ =0xFFFF0000
_0809348C:
	adds r0, r4, #0
	bl sub_0806AC5C
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	b _080934A2
	.align 2, 0
_0809349C: .4byte 0xFFFF0000
_080934A0:
	str r1, [r4, #0x48]
_080934A2:
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _080934F0 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08069A00
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08093510
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080934F4
	movs r1, #0x80
	lsls r1, r1, #8
	b _080934F6
	.align 2, 0
_080934F0: .4byte 0xFFE00000
_080934F4:
	ldr r1, _0809350C @ =0xFFFF8000
_080934F6:
	adds r0, r4, #0
	bl sub_0806AC5C
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	b _08093536
	.align 2, 0
_0809350C: .4byte 0xFFFF8000
_08093510:
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _08093536
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #4
	beq _08093530
	cmp r0, #7
	beq _08093530
	cmp r0, #0xa
	beq _08093530
	cmp r0, #0xd
	bne _08093536
_08093530:
	movs r0, #0x85
	bl PlaySong
_08093536:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08093540
sub_08093540: @ 0x08093540
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08093558 @ =0x081CC02C
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	cmp r4, #0
	bge _0809355C
	movs r0, #0
	b _080935DE
	.align 2, 0
_08093558: .4byte 0x081CC02C
_0809355C:
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x2b
	bne _08093570
	ldr r0, _0809356C @ =0x0820AA6C
	movs r1, #1
	b _08093574
	.align 2, 0
_0809356C: .4byte 0x0820AA6C
_08093570:
	ldr r0, _080935CC @ =0x0820AA6C
	movs r1, #0
_08093574:
	bl sub_08068264
	adds r1, r6, #0
	adds r1, #0x2c
	strb r0, [r1]
	adds r0, r1, #0
	ldr r1, _080935D0 @ =0x0822184C
	ldrb r3, [r0]
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
	bne _080935D8
	adds r0, r7, #0
	subs r0, #0xc
	cmp r0, #1
	bhi _080935D8
	ldr r0, _080935D4 @ =sub_0806CCE8
	b _080935DA
	.align 2, 0
_080935CC: .4byte 0x0820AA6C
_080935D0: .4byte 0x0822184C
_080935D4: .4byte sub_0806CCE8
_080935D8:
	ldr r0, _080935E4 @ =sub_0803B9D0
_080935DA:
	str r0, [r6, #4]
	movs r0, #1
_080935DE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080935E4: .4byte sub_0803B9D0

	thumb_func_start sub_080935E8
sub_080935E8: @ 0x080935E8
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
	bgt _0809366A
	adds r0, r6, #0
	bl sub_080683BC
	ldr r0, _08093670 @ =0x000001C3
	bl PlaySong
	adds r0, r6, #0
	movs r1, #2
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
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
_0809366A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08093670: .4byte 0x000001C3

	thumb_func_start sub_08093674
sub_08093674: @ 0x08093674
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

	thumb_func_start EnemyCurlyUpdate
EnemyCurlyUpdate: @ 0x080936A0
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080936F4
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080936D0
	cmp r0, #1
	bgt _080936BE
	cmp r0, #0
	beq _080936C8
	b _080936E8
_080936BE:
	cmp r0, #2
	beq _080936D8
	cmp r0, #3
	beq _080936E0
	b _080936E8
_080936C8:
	adds r0, r4, #0
	bl sub_08093218
	b _080936E8
_080936D0:
	adds r0, r4, #0
	bl sub_08093460
	b _080936E8
_080936D8:
	adds r0, r4, #0
	bl sub_0806AEAC
	b _080936E8
_080936E0:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080936F4
_080936E8:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_080936F4:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start EnemyDurgaUpdate
EnemyDurgaUpdate: @ 0x080936FC
	push {lr}
	bl EnemyCurlyUpdate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyDurgaCreate
EnemyDurgaCreate: @ 0x08093708
	push {lr}
	bl EnemyCurlyCreate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyMedusaHeadUpdate
EnemyMedusaHeadUpdate: @ 0x08093714
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _08093756
	cmp r0, #2
	beq _08093742
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
	beq _08093742
	adds r0, r5, #0
	bl sub_08021924
_08093742:
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08093756
	movs r0, #2
	strb r0, [r5, #0xa]
	movs r0, #1
	strb r0, [r5, #0xd]
_08093756:
	adds r0, r5, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _08093772
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _08093768
	b _080938E0
_08093768:
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	b _080938E0
_08093772:
	ldrb r0, [r5, #0xa]
	cmp r0, #4
	bls _0809377A
	b _080938D4
_0809377A:
	lsls r0, r0, #2
	ldr r1, _08093784 @ =_08093788
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08093784: .4byte _08093788
_08093788: @ jump table
	.4byte _0809379C @ case 0
	.4byte _080937A4 @ case 1
	.4byte _080937AC @ case 2
	.4byte _080937E8 @ case 3
	.4byte _080938CC @ case 4
_0809379C:
	adds r0, r5, #0
	bl sub_08093A3C
	b _080938D4
_080937A4:
	adds r0, r5, #0
	bl sub_08093BCC
	b _080938D4
_080937AC:
	adds r0, r5, #0
	bl sub_0806AEAC
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080937C2
	b _080938D4
_080937C2:
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	bne _080937CA
	b _080938D4
_080937CA:
	ldr r0, [r1]
	cmp r0, #0
	bne _080937D2
	b _080938D4
_080937D2:
	adds r0, r1, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x39
	bne _080938D4
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _080938D4
	subs r0, #1
	str r0, [r1, #0x18]
	b _080938D4
_080937E8:
	movs r0, #0xf0
	lsls r0, r0, #0xf
	str r0, [r5, #0x40]
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	cmp r1, #0
	bne _080938E0
	movs r0, #0x30
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x18]
	cmp r0, r1
	bge _080938E0
	ldr r2, _08093830 @ =EntityUpdateNothing
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080938E0
	ldr r0, [r5, #0x18]
	adds r0, #1
	str r0, [r5, #0x18]
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x67
	bgt _08093834
	movs r0, #0x80
	lsls r0, r0, #0x11
	b _08093856
	.align 2, 0
_08093830: .4byte EntityUpdateNothing
_08093834:
	adds r0, r5, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x88
	bgt _08093854
	adds r0, r5, #0
	bl sub_0806CEC0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08093854
	movs r0, #0x80
	lsls r0, r0, #0x11
	b _08093856
_08093854:
	ldr r0, _080938C0 @ =0xFFF00000
_08093856:
	str r0, [r4, #0x40]
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	adds r1, #0x40
	adds r0, r4, #0
	adds r0, #0x46
	movs r2, #0
	strh r1, [r0]
	adds r3, r4, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x37
	strb r2, [r0]
	adds r3, r5, #0
	adds r3, #0x36
	ldrb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	ldrh r1, [r5, #0x32]
	movs r0, #1
	ands r0, r1
	strh r0, [r4, #0x32]
	ldr r0, _080938C4 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r2, _080938C8 @ =0x080E9644
	ldrb r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	strh r0, [r4, #0x34]
	ldrb r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xe]
	strh r0, [r4, #0x2e]
	ldr r0, [r5]
	str r0, [r4]
	adds r0, r4, #0
	bl EnemyMedusaHeadCreate
	str r5, [r4, #0x1c]
	b _080938E0
	.align 2, 0
_080938C0: .4byte 0xFFF00000
_080938C4: .4byte sub_0803B9D0
_080938C8: .4byte 0x080E9644
_080938CC:
	adds r0, r5, #0
	bl sub_0803F17C
	b _080938E0
_080938D4:
	adds r0, r5, #0
	bl sub_0803F17C
	adds r0, r5, #0
	bl sub_0806E314
_080938E0:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start EnemyMedusaHeadCreate
EnemyMedusaHeadCreate: @ 0x080938E8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08093908 @ =0x0A0AFBFB
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08093B68
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809390C
	adds r0, r4, #0
	bl EntityDelete
	b _08093A2C
	.align 2, 0
_08093908: .4byte 0x0A0AFBFB
_0809390C:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _0809393C @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08093940
	movs r0, #4
	strb r0, [r4, #0xa]
	b _08093A2C
	.align 2, 0
_0809393C: .4byte gEwramData
_08093940:
	adds r0, r4, #0
	adds r0, #0x5c
	movs r5, #3
	strb r5, [r0]
	ldr r2, _080939A0 @ =sub_08093BF0
	ldr r3, _080939A4 @ =sub_08093AE0
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
	adds r0, r4, #0
	mov r1, sp
	bl sub_08042848
	adds r0, r4, #0
	mov r1, sp
	bl sub_080428B4
	adds r3, r4, #0
	adds r3, #0x72
	ldrb r1, [r3]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r3]
	ldrh r1, [r4, #0x32]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080939A8
	strb r5, [r4, #0xa]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	b _08093A2C
	.align 2, 0
_080939A0: .4byte sub_08093BF0
_080939A4: .4byte sub_08093AE0
_080939A8:
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
	ands r1, r6
	cmp r1, #0
	beq _080939E4
	bl RandomNumberGenerator
	ldr r1, _080939E0 @ =0x00003FFF
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r4, #0x48]
	b _080939F2
	.align 2, 0
_080939E0: .4byte 0x00003FFF
_080939E4:
	bl RandomNumberGenerator
	ldr r1, _08093A34 @ =0x00003FFF
	ands r1, r0
	ldr r0, _08093A38 @ =0xFFFF4000
	subs r0, r0, r1
	str r0, [r4, #0x48]
_080939F2:
	movs r0, #0xc0
	lsls r0, r0, #4
	str r0, [r4, #0x54]
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	adds r0, r4, #0
	adds r0, #0x20
	movs r2, #0
	strb r1, [r0]
	adds r5, r4, #0
	adds r5, #0x21
	strb r2, [r5]
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	adds r1, #0x2d
	adds r0, r4, #0
	adds r0, #0x22
	strb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strb r0, [r5]
_08093A2C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08093A34: .4byte 0x00003FFF
_08093A38: .4byte 0xFFFF4000

	thumb_func_start sub_08093A3C
sub_08093A3C: @ 0x08093A3C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08093AD8
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r3, r0, #0
	cmp r1, #0
	beq _08093A5C
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x54]
	subs r0, r0, r1
	b _08093A62
_08093A5C:
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x54]
	adds r0, r0, r1
_08093A62:
	str r0, [r4, #0x4c]
	adds r2, r4, #0
	adds r2, #0x21
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x22
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _08093A8C
	movs r0, #0
	strb r0, [r2]
	ldrb r0, [r3]
	movs r1, #1
	eors r0, r1
	strb r0, [r3]
_08093A8C:
	adds r0, r4, #0
	bl sub_0806D3AC
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	blt _08093AC2
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	bne _08093AD8
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _08093AB4
	adds r0, r4, #0
	movs r1, #1
	b _08093AB8
_08093AB4:
	adds r0, r4, #0
	movs r1, #0
_08093AB8:
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _08093AD8
_08093AC2:
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #2
	beq _08093AD8
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08093AD8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08093AE0
sub_08093AE0: @ 0x08093AE0
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
	bgt _08093B62
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x72
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
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
_08093B62:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08093B68
sub_08093B68: @ 0x08093B68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08093B80 @ =0x081CC034
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	bge _08093B84
	movs r0, #0
	b _08093BBA
	.align 2, 0
_08093B80: .4byte 0x081CC034
_08093B84:
	ldrh r1, [r4, #0x32]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08093B98
	ldr r0, _08093B94 @ =0x0820AAB0
	movs r1, #1
	b _08093B9C
	.align 2, 0
_08093B94: .4byte 0x0820AAB0
_08093B98:
	ldr r0, _08093BC0 @ =0x0820AAB0
	movs r1, #0
_08093B9C:
	bl sub_08068264
	adds r1, r4, #0
	adds r1, #0x2c
	strb r0, [r1]
	adds r0, r1, #0
	ldr r1, _08093BC4 @ =0x08221978
	ldrb r3, [r0]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08093BC8 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
_08093BBA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08093BC0: .4byte 0x0820AAB0
_08093BC4: .4byte 0x08221978
_08093BC8: .4byte sub_0803B9D0

	thumb_func_start sub_08093BCC
sub_08093BCC: @ 0x08093BCC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08093BE8
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_08093BE8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08093BF0
sub_08093BF0: @ 0x08093BF0
	push {lr}
	sub sp, #0x10
	adds r2, r0, #0
	mov r1, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	strh r0, [r1]
	ldrh r0, [r2, #0x32]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08093C12
	mov r1, sp
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #2]
	b _08093C16
_08093C12:
	mov r0, sp
	strh r1, [r0, #2]
_08093C16:
	mov r1, sp
	movs r0, #0
	strh r0, [r1, #4]
	movs r0, #1
	strh r0, [r1, #6]
	ldr r0, [r2, #0x40]
	str r0, [sp, #8]
	ldr r0, [r2, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start EnemySuccubusUpdate
EnemySuccubusUpdate: @ 0x08093C34
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _08093C6A
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	bne _08093D1A
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
	beq _08093C6A
	adds r0, r4, #0
	bl sub_08021924
_08093C6A:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08093C84
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _08093C92
_08093C84:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08093C92:
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _08093CB4
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _08093D1A
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08093D1A
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _08093D1A
_08093CB4:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08093CD6
	cmp r0, #1
	bgt _08093CC4
	cmp r0, #0
	beq _08093CCE
	b _08093CEE
_08093CC4:
	cmp r0, #2
	beq _08093CDE
	cmp r0, #3
	beq _08093CE6
	b _08093CEE
_08093CCE:
	adds r0, r4, #0
	bl sub_08093E04
	b _08093CEE
_08093CD6:
	adds r0, r4, #0
	bl sub_08094238
	b _08093CEE
_08093CDE:
	adds r0, r4, #0
	bl sub_0806AEAC
	b _08093CEE
_08093CE6:
	adds r0, r4, #0
	bl sub_0803F17C
	b _08093D1A
_08093CEE:
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r5, r0
	beq _08093D04
	adds r0, r4, #0
	bl sub_0806B1FC
_08093D04:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _08093D1A
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08093D1A
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
_08093D1A:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemySuccubusCreate
EnemySuccubusCreate: @ 0x08093D24
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080946C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08093D3A
	adds r0, r4, #0
	bl EntityDelete
	b _08093DFC
_08093D3A:
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _08093D7C @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08093D80
	movs r0, #3
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	b _08093DFC
	.align 2, 0
_08093D7C: .4byte gEwramData
_08093D80:
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _08093DA0
	ldr r2, _08093D98 @ =sub_08094710
	ldr r3, _08093D9C @ =sub_08094620
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _08093DAC
	.align 2, 0
_08093D98: .4byte sub_08094710
_08093D9C: .4byte sub_08094620
_08093DA0:
	ldr r2, _08093DD4 @ =sub_08094710
	ldr r3, _08093DD8 @ =sub_08094620
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_08093DAC:
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	adds r0, r4, #0
	adds r0, #0x5c
	movs r5, #0
	movs r1, #9
	strb r1, [r0]
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08093DDC
	strb r5, [r4, #0xa]
	movs r0, #1
	strb r0, [r4, #0x1a]
	strb r5, [r4, #0xb]
	b _08093DF0
	.align 2, 0
_08093DD4: .4byte sub_08094710
_08093DD8: .4byte sub_08094620
_08093DDC:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r4, #0xb]
	strb r5, [r4, #0x1a]
	strb r5, [r4, #0x1b]
_08093DF0:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r4, #0x54]
_08093DFC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08093E04
sub_08093E04: @ 0x08093E04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #4
	bls _08093E16
	b _08094226
_08093E16:
	lsls r0, r0, #2
	ldr r1, _08093E20 @ =_08093E24
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08093E20: .4byte _08093E24
_08093E24: @ jump table
	.4byte _08093E38 @ case 0
	.4byte _08093ED4 @ case 1
	.4byte _08093F12 @ case 2
	.4byte _08094070 @ case 3
	.4byte _080941E0 @ case 4
_08093E38:
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
	adds r4, r5, #0
	adds r4, #0x21
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08093E8E
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x5a
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x40
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xb4
	movs r3, #0x46
	bl sub_0806CFFC
	cmp r0, #0
	beq _08093E8E
	movs r0, #1
	strb r0, [r4]
	ldr r0, _08093ED0 @ =0x000001C7
	bl PlaySong
_08093E8E:
	movs r0, #0x18
	ldrsb r0, [r5, r0]
	cmp r0, #1
	beq _08093EBC
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x1e
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x40
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x3c
	movs r3, #0x46
	bl sub_0806CFFC
	cmp r0, #0
	bne _08093EBC
	b _08094226
_08093EBC:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _08094226
	.align 2, 0
_08093ED0: .4byte 0x000001C7
_08093ED4:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #5
	bne _08093EE6
	movs r0, #0xe4
	lsls r0, r0, #1
	bl PlaySong
_08093EE6:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08093EF6
	b _08094226
_08093EF6:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	strb r1, [r5, #0x1a]
	strb r1, [r5, #0x1b]
	b _08094226
_08093F12:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r5, #0
	adds r6, #0x58
	cmp r0, #0x1d
	bls _08093F52
	movs r0, #0
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	bl sub_0806CF2C
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r6]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08093F4E
	movs r0, #0xc0
	lsls r0, r0, #7
	b _08093F50
_08093F4E:
	ldr r0, _08093FBC @ =0xFFFFA000
_08093F50:
	str r0, [r5, #0x48]
_08093F52:
	ldrb r4, [r6]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1f
	adds r0, r5, #0
	bl sub_0806CEC0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r5, #0
	adds r7, #0x42
	movs r1, #0x46
	adds r1, r1, r5
	mov r8, r1
	cmp r4, r0
	bne _08094004
	ldrh r0, [r7]
	subs r0, #0x32
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x64
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	beq _08094004
	bl sub_080212C8
	adds r1, r0, #0
	movs r0, #0x60
	ands r1, r0
	cmp r1, #0
	beq _08094002
	movs r0, #0x19
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _08094004
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08094002
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08093FC4
	ldr r0, _08093FC0 @ =0xFFFD8000
	b _08093FC8
	.align 2, 0
_08093FBC: .4byte 0xFFFFA000
_08093FC0: .4byte 0xFFFD8000
_08093FC4:
	movs r0, #0xa0
	lsls r0, r0, #0xa
_08093FC8:
	str r0, [r5, #0x48]
	movs r1, #0
	movs r0, #4
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	adds r0, r5, #0
	movs r1, #0x38
	movs r2, #0xc
	movs r3, #0x10
	bl sub_080458E4
	adds r0, r5, #0
	movs r1, #0x38
	movs r2, #6
	movs r3, #0x10
	bl sub_080458E4
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x2f
	bls _08093FF8
	b _08094226
_08093FF8:
	movs r0, #0xe4
	lsls r0, r0, #1
	bl PlaySong
	b _08094226
_08094002:
	strb r1, [r5, #0x19]
_08094004:
	movs r6, #0x80
	lsls r6, r6, #9
	ldr r2, _08094054 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xb
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08069A00
	ldrh r0, [r7]
	subs r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	ldrh r1, [r2]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0xa0
	bl sub_0806CFFC
	adds r4, r0, #0
	cmp r4, #0
	beq _08094058
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08094048
	b _080941D8
_08094048:
	movs r0, #0
	movs r1, #3
	strb r1, [r5, #0xb]
	strb r0, [r5, #0xd]
	str r6, [r5, #0x4c]
	b _080941A6
	.align 2, 0
_08094054: .4byte 0xFFE00000
_08094058:
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806B120
	cmp r0, #0
	bne _08094066
	b _08094226
_08094066:
	movs r0, #3
	strb r0, [r5, #0xb]
	strb r4, [r5, #0xd]
	str r6, [r5, #0x4c]
	b _080941A6
_08094070:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r5, #0
	adds r6, #0x58
	cmp r0, #0x1d
	bls _080940B6
	movs r0, #0
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	bl sub_0806CF2C
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r6]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _080940B0
	ldr r0, _080940AC @ =0xFFFFA000
	b _080940B4
	.align 2, 0
_080940AC: .4byte 0xFFFFA000
_080940B0:
	movs r0, #0xc0
	lsls r0, r0, #7
_080940B4:
	str r0, [r5, #0x48]
_080940B6:
	ldrb r4, [r6]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1f
	adds r0, r5, #0
	bl sub_0806CEC0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r5, #0
	adds r7, #0x42
	movs r1, #0x46
	adds r1, r1, r5
	mov r8, r1
	cmp r4, r0
	bne _0809414E
	ldrh r0, [r7]
	subs r0, #0x32
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x64
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	beq _0809414E
	bl sub_080212C8
	adds r1, r0, #0
	movs r0, #0x60
	ands r1, r0
	cmp r1, #0
	beq _0809414C
	movs r0, #0x19
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0809414E
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809414C
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08094124
	ldr r0, _08094120 @ =0xFFFD8000
	b _08094128
	.align 2, 0
_08094120: .4byte 0xFFFD8000
_08094124:
	movs r0, #0xa0
	lsls r0, r0, #0xa
_08094128:
	str r0, [r5, #0x48]
	movs r1, #0
	movs r0, #4
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	adds r0, r5, #0
	movs r1, #0x38
	movs r2, #0xc
	movs r3, #0x10
	bl sub_080458E4
	adds r0, r5, #0
	movs r1, #0x38
	movs r2, #6
	movs r3, #0x10
	bl sub_080458E4
	b _08094226
_0809414C:
	strb r1, [r5, #0x19]
_0809414E:
	movs r4, #0x80
	lsls r4, r4, #9
	ldr r2, _0809418C @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xb
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08069A00
	ldrh r0, [r7]
	subs r0, #0x46
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	ldrh r1, [r2]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x8c
	movs r3, #0xa0
	bl sub_0806CFFC
	adds r1, r0, #0
	cmp r1, #0
	bne _08094190
	movs r0, #2
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	b _080941A4
	.align 2, 0
_0809418C: .4byte 0xFFE00000
_08094190:
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806B120
	cmp r0, #0
	beq _080941AE
	movs r0, #0
	movs r1, #2
	strb r1, [r5, #0xb]
	strb r0, [r5, #0xd]
_080941A4:
	str r4, [r5, #0x4c]
_080941A6:
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	b _08094226
_080941AE:
	ldrh r0, [r7]
	subs r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	ldrh r1, [r2]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	beq _08094226
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08094226
_080941D8:
	strb r1, [r5, #0xa]
	strb r0, [r5, #0xb]
	strb r0, [r5, #0xd]
	b _08094226
_080941E0:
	adds r0, r5, #0
	movs r1, #0x18
	bl sub_0806D490
	movs r4, #0x80
	lsls r4, r4, #9
	ldr r2, _08094234 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xb
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08069A00
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806B120
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bls _08094226
	movs r0, #0
	movs r1, #2
	strb r1, [r5, #0xb]
	strb r0, [r5, #0xd]
	str r4, [r5, #0x4c]
	movs r1, #0xc0
	lsls r1, r1, #5
	str r1, [r5, #0x54]
	strb r0, [r5, #0x19]
_08094226:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08094234: .4byte 0xFFE00000

	thumb_func_start sub_08094238
sub_08094238: @ 0x08094238
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	ldrb r0, [r7, #0xb]
	cmp r0, #0xb
	bls _0809424E
	b _0809460C
_0809424E:
	lsls r0, r0, #2
	ldr r1, _08094258 @ =_0809425C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08094258: .4byte _0809425C
_0809425C: @ jump table
	.4byte _0809428C @ case 0
	.4byte _080942E8 @ case 1
	.4byte _0809437C @ case 2
	.4byte _0809460C @ case 3
	.4byte _0809460C @ case 4
	.4byte _0809460C @ case 5
	.4byte _0809460C @ case 6
	.4byte _0809460C @ case 7
	.4byte _0809460C @ case 8
	.4byte _0809460C @ case 9
	.4byte _08094400 @ case 10
	.4byte _080945B8 @ case 11
_0809428C:
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _080942E4 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xb
	movs r0, #8
	str r0, [sp]
	adds r0, r7, #0
	bl sub_08069A00
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806B120
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bhi _080942C0
	b _0809460C
_080942C0:
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xb]
	str r1, [r7, #0x48]
	strb r1, [r7, #0xd]
	movs r0, #0xe3
	lsls r0, r0, #1
	bl PlaySong
	b _0809460C
	.align 2, 0
_080942E4: .4byte 0xFFE00000
_080942E8:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r4, r7, #0
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
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _08094344 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xb
	movs r0, #8
	str r0, [sp]
	adds r0, r7, #0
	bl sub_08069A00
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806B120
	adds r0, r7, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08094334
	b _0809460C
_08094334:
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08094348
	movs r0, #0xc0
	lsls r0, r0, #0xa
	b _0809434A
	.align 2, 0
_08094344: .4byte 0xFFE00000
_08094348:
	ldr r0, _08094378 @ =0xFFFD0000
_0809434A:
	str r0, [r7, #0x48]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xd]
	movs r0, #1
	strb r0, [r7, #0x1c]
	strb r1, [r7, #0x1d]
	adds r0, r7, #0
	movs r1, #0x38
	movs r2, #0xc
	movs r3, #0x10
	bl sub_080458E4
	adds r0, r7, #0
	movs r1, #0x38
	movs r2, #6
	movs r3, #0x10
	bl sub_080458E4
	b _0809460C
	.align 2, 0
_08094378: .4byte 0xFFFD0000
_0809437C:
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D490
	movs r5, #0x80
	lsls r5, r5, #9
	ldr r2, _080943C4 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xb
	movs r0, #8
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08069A00
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806B120
	movs r4, #0x1d
	ldrsb r4, [r7, r4]
	cmp r4, #0
	beq _080943C8
	movs r2, #0
	movs r0, #0xa
	strb r0, [r7, #0xb]
	movs r0, #0x10
	strb r0, [r7, #0xd]
	strb r2, [r7, #0x1f]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x14
	strb r0, [r1]
	strb r2, [r7, #0x1e]
	b _0809460C
	.align 2, 0
_080943C4: .4byte 0xFFE00000
_080943C8:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _080943D8
	b _0809460C
_080943D8:
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r7, #0xa]
	movs r0, #2
	strb r0, [r7, #0xb]
	strb r4, [r7, #0xd]
	str r5, [r7, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r7, #0x54]
	strb r4, [r7, #0x1c]
	strb r4, [r7, #0x1f]
	adds r0, r7, #0
	adds r0, #0x20
	strb r4, [r0]
	b _0809460C
_08094400:
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r4, r7, #0
	adds r4, #0x58
	movs r5, #1
	ands r0, r5
	lsls r0, r0, #6
	ldrb r3, [r4]
	movs r2, #0x41
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r4]
	ldr r6, _080944F4 @ =gEwramData
	ldr r0, [r6]
	ldr r3, _080944F8 @ =0x00013168
	adds r0, r0, r3
	ldr r0, [r0]
	lsls r1, r1, #0x19
	adds r0, #0x58
	lsrs r1, r1, #0x1f
	ands r1, r5
	lsls r1, r1, #6
	ldrb r3, [r0]
	ands r2, r3
	orrs r2, r1
	strb r2, [r0]
	ldrb r0, [r7, #0xd]
	mov sb, r0
	mov sl, r4
	mov r1, sb
	cmp r1, #0
	beq _08094494
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	movs r2, #0xc0
	lsls r2, r2, #0xc
	cmp r0, #0
	beq _08094456
	ldr r2, _080944FC @ =0xFFF40000
_08094456:
	ldr r0, [r6]
	ldr r3, _08094500 @ =0x00013110
	adds r0, r0, r3
	ldr r1, [r0]
	ldr r0, [r1, #0x40]
	adds r0, r0, r2
	ldr r6, [r7, #0x40]
	subs r2, r0, r6
	ldr r4, [r1, #0x44]
	ldr r5, [r7, #0x44]
	subs r4, r4, r5
	ldrb r0, [r7, #0xd]
	mov r8, r0
	adds r0, r2, #0
	mov r1, r8
	bl __divsi3
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, r8
	str r2, [sp, #0x14]
	bl __divsi3
	ldr r2, [sp, #0x14]
	adds r6, r6, r2
	str r6, [r7, #0x40]
	adds r5, r5, r0
	str r5, [r7, #0x44]
	mov r0, sb
	subs r0, #1
	strb r0, [r7, #0xd]
_08094494:
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r0, [r1]
	adds r0, #1
	movs r2, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x2c
	ble _08094508
	strb r2, [r1]
	ldrb r0, [r7, #0x1f]
	adds r0, #1
	strb r0, [r7, #0x1f]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	bgt _08094524
	add r1, sp, #4
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	strh r0, [r1]
	movs r0, #1
	strh r0, [r1, #2]
	adds r0, r1, #0
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	ldr r0, [r7, #0x40]
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x44]
	str r0, [sp, #0x10]
	adds r0, r1, #0
	bl sub_08021654
	movs r0, #0x7b
	bl PlaySong
	mov r3, sl
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	ldr r2, _08094504 @ =0xFFFF0000
	cmp r0, #0
	beq _0809451E
	movs r2, #0x80
	lsls r2, r2, #9
	b _0809451E
	.align 2, 0
_080944F4: .4byte gEwramData
_080944F8: .4byte 0x00013168
_080944FC: .4byte 0xFFF40000
_08094500: .4byte 0x00013110
_08094504: .4byte 0xFFFF0000
_08094508:
	cmp r0, #0xa
	bne _08094524
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #9
	cmp r0, #0
	beq _0809451E
	ldr r2, _0809457C @ =0xFFFF0000
_0809451E:
	ldr r0, [r7, #0x40]
	adds r0, r0, r2
	str r0, [r7, #0x40]
_08094524:
	ldr r0, _08094580 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1e]
	ldr r0, _08094584 @ =0x000003FF
	ands r0, r1
	cmp r0, #0
	beq _08094540
	ldrb r1, [r7, #0x1e]
	movs r0, #0x1e
	ldrsb r0, [r7, r0]
	cmp r0, #0x63
	bgt _08094540
	adds r0, r1, #1
	strb r0, [r7, #0x1e]
_08094540:
	movs r0, #0xe
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0801D028
	cmp r0, #0
	bne _08094560
	movs r0, #0x1f
	ldrsb r0, [r7, r0]
	cmp r0, #4
	bgt _08094560
	movs r0, #0x1e
	ldrsb r0, [r7, r0]
	cmp r0, #0x1d
	ble _0809460C
_08094560:
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	mov r3, sl
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809458C
	ldr r0, _08094588 @ =0xFFFD8000
	b _08094590
	.align 2, 0
_0809457C: .4byte 0xFFFF0000
_08094580: .4byte gEwramData
_08094584: .4byte 0x000003FF
_08094588: .4byte 0xFFFD8000
_0809458C:
	movs r0, #0xa0
	lsls r0, r0, #0xa
_08094590:
	str r0, [r7, #0x48]
	movs r1, #0
	str r1, [r7, #0x50]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r7, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r7, #0x54]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xd]
	movs r0, #1
	strb r0, [r7, #0x19]
	strb r1, [r7, #0x1c]
	strb r1, [r7, #0x1d]
	strb r1, [r7, #0x1b]
	strb r1, [r7, #0x1e]
	b _0809460C
_080945B8:
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D490
	movs r4, #0x80
	lsls r4, r4, #9
	ldr r2, _0809461C @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xb
	movs r0, #8
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08069A00
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806B120
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bls _0809460C
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r7, #0xa]
	movs r1, #2
	strb r1, [r7, #0xb]
	strb r0, [r7, #0xd]
	str r4, [r7, #0x4c]
	movs r1, #0xc0
	lsls r1, r1, #5
	str r1, [r7, #0x54]
	strb r0, [r7, #0x19]
_0809460C:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809461C: .4byte 0xFFE00000

	thumb_func_start sub_08094620
sub_08094620: @ 0x08094620
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
	movs r4, #1
	strb r4, [r6, #0x18]
	ldrh r0, [r6, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	movs r0, #0x1a
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _08094672
	strb r4, [r6, #0x1b]
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _080946BC
	strh r4, [r6, #0x34]
_08094672:
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _080946BC
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0xe6
	lsls r0, r0, #1
	bl PlaySong
	adds r0, r6, #0
	movs r1, #9
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
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
_080946BC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080946C4
sub_080946C4: @ 0x080946C4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080946F8 @ =0x081CC03C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _08094708
	ldr r0, _080946FC @ =0x0820AAF4
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08094700 @ =0x08222EFC
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08094704 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0809470A
	.align 2, 0
_080946F8: .4byte 0x081CC03C
_080946FC: .4byte 0x0820AAF4
_08094700: .4byte 0x08222EFC
_08094704: .4byte sub_0803B9D0
_08094708:
	movs r0, #0
_0809470A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08094710
sub_08094710: @ 0x08094710
	push {lr}
	sub sp, #0x10
	adds r2, r0, #0
	movs r3, #0x1c
	ldrsb r3, [r2, r3]
	cmp r3, #0
	bne _0809473E
	mov r1, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	strh r0, [r1]
	mov r0, sp
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	ldr r0, [r2, #0x40]
	str r0, [sp, #8]
	ldr r0, [r2, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	b _08094748
_0809473E:
	movs r1, #0
	movs r0, #1
	strb r0, [r2, #0x1d]
	strb r0, [r2, #0x1b]
	strb r1, [r2, #0x1e]
_08094748:
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyLilithUpdate
EnemyLilithUpdate: @ 0x08094750
	push {r4, r5, r6, lr}
	sub sp, #0x34
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _08094786
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	bne _08094810
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
	beq _08094786
	adds r0, r5, #0
	bl sub_08021924
_08094786:
	adds r0, r5, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080947A8
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _08094810
	movs r0, #0x1b
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _08094810
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	b _08094810
_080947A8:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080947CA
	cmp r0, #1
	bgt _080947B8
	cmp r0, #0
	beq _080947C2
	b _080947E2
_080947B8:
	cmp r0, #2
	beq _080947D2
	cmp r0, #3
	beq _080947DA
	b _080947E2
_080947C2:
	adds r0, r5, #0
	bl sub_080948DC
	b _080947E2
_080947CA:
	adds r0, r5, #0
	bl sub_08094D28
	b _080947E2
_080947D2:
	adds r0, r5, #0
	bl sub_0806AEAC
	b _080947E2
_080947DA:
	adds r0, r5, #0
	bl sub_0803F17C
	b _08094810
_080947E2:
	adds r6, r5, #0
	adds r6, #0x65
	ldrb r4, [r6]
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r6, [r6]
	cmp r4, r6
	beq _080947FA
	adds r0, r5, #0
	bl sub_0806B1FC
_080947FA:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _08094810
	movs r0, #0x1b
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _08094810
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
_08094810:
	add sp, #0x34
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start EnemyLilithCreate
EnemyLilithCreate: @ 0x08094818
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080952A0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809482E
	adds r0, r4, #0
	bl EntityDelete
	b _080948CC
_0809482E:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _08094870 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08094874
	movs r0, #3
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	b _080948CC
	.align 2, 0
_08094870: .4byte gEwramData
_08094874:
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _08094894
	ldr r2, _0809488C @ =sub_080952EC
	ldr r3, _08094890 @ =sub_08095000
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _080948A0
	.align 2, 0
_0809488C: .4byte sub_080952EC
_08094890: .4byte sub_08095000
_08094894:
	ldr r2, _080948D4 @ =sub_080952EC
	ldr r3, _080948D8 @ =sub_08095000
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_080948A0:
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	movs r0, #0
	strb r0, [r4, #0xa]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r4, #0x1b]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r4, #0x54]
_080948CC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080948D4: .4byte sub_080952EC
_080948D8: .4byte sub_08095000

	thumb_func_start sub_080948DC
sub_080948DC: @ 0x080948DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	ldrb r0, [r6, #0xb]
	cmp r0, #4
	bls _080948EE
	b _08094D16
_080948EE:
	lsls r0, r0, #2
	ldr r1, _080948F8 @ =_080948FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080948F8: .4byte _080948FC
_080948FC: @ jump table
	.4byte _08094910 @ case 0
	.4byte _08094970 @ case 1
	.4byte _0809499A @ case 2
	.4byte _08094B0A @ case 3
	.4byte _08094CCC @ case 4
_08094910:
	adds r0, r6, #0
	bl sub_0806CF2C
	adds r4, r6, #0
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
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x32
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x64
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	bne _08094952
	b _08094D16
_08094952:
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r1, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	b _08094A6E
_08094970:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08094980
	b _08094D16
_08094980:
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r6, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	strb r1, [r6, #0x1b]
	b _08094D16
_0809499A:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r6, #0
	adds r5, #0x58
	cmp r0, #0x3b
	bls _080949C8
	adds r0, r6, #0
	bl sub_0806CF2C
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r5]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	movs r0, #0
	strb r0, [r6, #0xd]
_080949C8:
	ldrb r4, [r5]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1f
	adds r0, r6, #0
	bl sub_0806CEC0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r6, #0
	adds r7, #0x42
	movs r1, #0x46
	adds r1, r1, r6
	mov r8, r1
	cmp r4, r0
	bne _08094A7A
	ldrh r0, [r7]
	subs r0, #0x32
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x64
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _08094A7A
	bl sub_080212C8
	adds r1, r0, #0
	movs r0, #0x60
	ands r1, r0
	cmp r1, #0
	beq _08094A78
	movs r0, #0x19
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _08094A7A
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08094A78
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08094A38
	ldr r0, _08094A34 @ =0xFFFD8000
	b _08094A3C
	.align 2, 0
_08094A34: .4byte 0xFFFD8000
_08094A38:
	movs r0, #0xa0
	lsls r0, r0, #0xa
_08094A3C:
	str r0, [r6, #0x48]
	movs r1, #0
	movs r0, #4
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	str r1, [r6, #0x50]
	adds r0, r6, #0
	movs r1, #0x38
	movs r2, #0xc
	movs r3, #0x10
	bl sub_080458E4
	adds r0, r6, #0
	movs r1, #0x38
	movs r2, #6
	movs r3, #0x10
	bl sub_080458E4
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x2f
	bls _08094A6E
	b _08094D16
_08094A6E:
	movs r0, #0xe4
	lsls r0, r0, #1
	bl PlaySong
	b _08094D16
_08094A78:
	strb r1, [r6, #0x19]
_08094A7A:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08094A8A
	movs r0, #0x80
	lsls r0, r0, #4
	b _08094A8C
_08094A8A:
	ldr r0, _08094AD8 @ =0xFFFFF800
_08094A8C:
	str r0, [r6, #0x50]
	movs r5, #0x80
	lsls r5, r5, #9
	ldr r2, _08094ADC @ =0xFFE00000
	movs r3, #0xc0
	lsls r3, r3, #7
	movs r0, #8
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08069A00
	ldrh r0, [r7]
	subs r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	ldrh r1, [r2]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0x50
	bl sub_0806CFFC
	adds r4, r0, #0
	cmp r4, #0
	beq _08094AE0
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08094AD2
	b _08094C7A
_08094AD2:
	movs r0, #0
	movs r1, #3
	b _08094C42
	.align 2, 0
_08094AD8: .4byte 0xFFFFF800
_08094ADC: .4byte 0xFFE00000
_08094AE0:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806B120
	adds r2, r0, #0
	cmp r2, #0
	beq _08094AF6
	movs r0, #3
	strb r0, [r6, #0xb]
	strb r4, [r6, #0xd]
	b _08094C46
_08094AF6:
	ldrb r0, [r6, #0x18]
	adds r1, r0, #1
	strb r1, [r6, #0x18]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3b
	bgt _08094B06
	b _08094D16
_08094B06:
	strb r2, [r6, #0x18]
	b _08094C94
_08094B0A:
	adds r0, r6, #0
	bl sub_0806CF2C
	adds r5, r6, #0
	adds r5, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r1, [r5]
	movs r4, #0x41
	rsbs r4, r4, #0
	ands r4, r1
	orrs r4, r0
	strb r4, [r5]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1f
	adds r0, r6, #0
	bl sub_0806CEC0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r6, #0
	adds r7, #0x42
	movs r1, #0x46
	adds r1, r1, r6
	mov r8, r1
	cmp r4, r0
	bne _08094BC0
	ldrh r0, [r7]
	subs r0, #0x32
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x64
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _08094BC0
	bl sub_080212C8
	adds r1, r0, #0
	movs r0, #0x60
	ands r1, r0
	cmp r1, #0
	beq _08094BBE
	movs r0, #0x19
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _08094BC0
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08094BBE
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08094B94
	ldr r0, _08094B90 @ =0xFFFD8000
	b _08094B98
	.align 2, 0
_08094B90: .4byte 0xFFFD8000
_08094B94:
	movs r0, #0xa0
	lsls r0, r0, #0xa
_08094B98:
	str r0, [r6, #0x48]
	movs r1, #0
	movs r0, #4
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	str r1, [r6, #0x50]
	adds r0, r6, #0
	movs r1, #0x38
	movs r2, #0xc
	movs r3, #0x10
	bl sub_080458E4
	adds r0, r6, #0
	movs r1, #0x38
	movs r2, #6
	movs r3, #0x10
	bl sub_080458E4
	b _08094D16
_08094BBE:
	strb r1, [r6, #0x19]
_08094BC0:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08094BD4
	ldr r0, _08094BD0 @ =0xFFFFF800
	b _08094BD8
	.align 2, 0
_08094BD0: .4byte 0xFFFFF800
_08094BD4:
	movs r0, #0x80
	lsls r0, r0, #4
_08094BD8:
	str r0, [r6, #0x50]
	movs r5, #0x80
	lsls r5, r5, #9
	ldr r2, _08094C24 @ =0xFFE00000
	movs r3, #0xc0
	lsls r3, r3, #7
	movs r0, #8
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08069A00
	ldrh r0, [r7]
	subs r0, #0x46
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	ldrh r1, [r2]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x8c
	movs r3, #0x50
	bl sub_0806CFFC
	adds r4, r0, #0
	cmp r4, #0
	bne _08094C32
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08094C28
	movs r0, #2
	strb r0, [r6, #0xb]
	strb r4, [r6, #0xd]
	b _08094C46
	.align 2, 0
_08094C24: .4byte 0xFFE00000
_08094C28:
	strb r1, [r6, #0xa]
	movs r0, #0xa
	strb r0, [r6, #0xb]
	strb r4, [r6, #0xd]
	b _08094D16
_08094C32:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806B120
	cmp r0, #0
	beq _08094C50
	movs r0, #0
	movs r1, #2
_08094C42:
	strb r1, [r6, #0xb]
	strb r0, [r6, #0xd]
_08094C46:
	str r5, [r6, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r6, #0x54]
	b _08094D16
_08094C50:
	ldrh r0, [r7]
	subs r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	ldrh r1, [r2]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _08094C82
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08094C82
_08094C7A:
	strb r1, [r6, #0xa]
	strb r0, [r6, #0xb]
	strb r0, [r6, #0xd]
	b _08094D16
_08094C82:
	ldrb r0, [r6, #0x18]
	adds r1, r0, #1
	strb r1, [r6, #0x18]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3b
	ble _08094D16
	movs r0, #0
	strb r0, [r6, #0x18]
_08094C94:
	ldrh r0, [r7]
	subs r0, #0xc8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	ldrh r1, [r2]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xc8
	lsls r2, r2, #1
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _08094D16
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08094D16
	strb r0, [r6, #0xa]
	movs r0, #0xa
	strb r0, [r6, #0xb]
	strb r1, [r6, #0xd]
	b _08094D16
_08094CCC:
	adds r0, r6, #0
	movs r1, #0x18
	bl sub_0806D490
	movs r4, #0x80
	lsls r4, r4, #9
	ldr r2, _08094D24 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xb
	movs r0, #8
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08069A00
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806B120
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bls _08094D16
	movs r0, #0
	movs r1, #2
	strb r1, [r6, #0xb]
	strb r0, [r6, #0xd]
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
	str r4, [r6, #0x4c]
	movs r1, #0xc0
	lsls r1, r1, #5
	str r1, [r6, #0x54]
	strb r0, [r6, #0x19]
_08094D16:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08094D24: .4byte 0xFFE00000

	thumb_func_start sub_08094D28
sub_08094D28: @ 0x08094D28
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0xc
	bls _08094D36
	b _08094FF2
_08094D36:
	lsls r0, r0, #2
	ldr r1, _08094D40 @ =_08094D44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08094D40: .4byte _08094D44
_08094D44: @ jump table
	.4byte _08094D78 @ case 0
	.4byte _08094D90 @ case 1
	.4byte _08094E0C @ case 2
	.4byte _08094EB8 @ case 3
	.4byte _08094FF2 @ case 4
	.4byte _08094FF2 @ case 5
	.4byte _08094FF2 @ case 6
	.4byte _08094FF2 @ case 7
	.4byte _08094FF2 @ case 8
	.4byte _08094FF2 @ case 9
	.4byte _08094F18 @ case 10
	.4byte _08094F30 @ case 11
	.4byte _08094F80 @ case 12
_08094D78:
	adds r0, r5, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	str r1, [r5, #0x50]
	strb r1, [r5, #0xd]
_08094D90:
	adds r0, r5, #0
	movs r1, #0x18
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _08094DD4 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xb
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806B120
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08094DC0
	b _08094FF2
_08094DC0:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08094DD8
	movs r0, #0xc0
	lsls r0, r0, #0xa
	b _08094DDA
	.align 2, 0
_08094DD4: .4byte 0xFFE00000
_08094DD8:
	ldr r0, _08094E08 @ =0xFFFD0000
_08094DDA:
	str r0, [r5, #0x48]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #0xb]
	strb r4, [r5, #0xd]
	adds r0, r5, #0
	movs r1, #0x38
	movs r2, #8
	movs r3, #0x10
	bl sub_080458E4
	adds r0, r5, #0
	movs r1, #0x38
	movs r2, #4
	movs r3, #0x10
	bl sub_080458E4
	strb r4, [r5, #0x1a]
	movs r0, #0x85
	bl PlaySong
	b _08094FF2
	.align 2, 0
_08094E08: .4byte 0xFFFD0000
_08094E0C:
	adds r0, r5, #0
	movs r1, #0x18
	bl sub_0806D490
	movs r4, #0x80
	lsls r4, r4, #9
	ldr r2, _08094E80 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xb
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08069A00
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806B120
	movs r0, #0x1a
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _08094E42
	adds r1, r5, #0
	adds r1, #0x6f
	movs r0, #0x64
	strb r0, [r1]
_08094E42:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #0xc
	bhi _08094E4E
	b _08094FF2
_08094E4E:
	adds r0, r5, #0
	bl sub_0806CF2C
	adds r2, r5, #0
	adds r2, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #6
	ldrb r1, [r2]
	movs r3, #0x41
	rsbs r3, r3, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r2]
	movs r1, #0x1a
	ldrsb r1, [r5, r1]
	cmp r1, #0
	beq _08094EA2
	movs r0, #0x40
	ands r3, r0
	cmp r3, #0
	beq _08094E88
	ldr r0, _08094E84 @ =0xFFFE0000
	b _08094E8C
	.align 2, 0
_08094E80: .4byte 0xFFE00000
_08094E84: .4byte 0xFFFE0000
_08094E88:
	movs r0, #0x80
	lsls r0, r0, #0xa
_08094E8C:
	str r0, [r5, #0x48]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	str r1, [r5, #0x50]
	adds r0, r5, #0
	adds r0, #0x6f
	strb r1, [r0]
	b _08094FF2
_08094EA2:
	strb r1, [r5, #0xa]
	movs r0, #3
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	str r1, [r5, #0x48]
	str r1, [r5, #0x50]
	str r4, [r5, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	b _08094F06
_08094EB8:
	adds r0, r5, #0
	movs r1, #0x18
	bl sub_0806D490
	movs r4, #0x80
	lsls r4, r4, #9
	ldr r2, _08094F14 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xb
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08069A00
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806B120
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _08094EEE
	b _08094FF2
_08094EEE:
	movs r0, #0
	strb r0, [r5, #0xa]
	movs r1, #2
	strb r1, [r5, #0xb]
	strb r0, [r5, #0xd]
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
	str r4, [r5, #0x4c]
	movs r1, #0xc0
	lsls r1, r1, #5
	str r1, [r5, #0x54]
	strb r0, [r5, #0x19]
_08094F06:
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _08094FF2
	.align 2, 0
_08094F14: .4byte 0xFFE00000
_08094F18:
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	str r1, [r5, #0x50]
	strb r1, [r5, #0xd]
_08094F30:
	adds r0, r5, #0
	movs r1, #0x18
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _08094F78 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xb
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806B120
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #4
	bls _08094FF2
	ldr r2, _08094F7C @ =0xFFE40000
	adds r0, r5, #0
	movs r1, #0
	bl sub_0809508C
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x7b
	bl PlaySong
	b _08094FF2
	.align 2, 0
_08094F78: .4byte 0xFFE00000
_08094F7C: .4byte 0xFFE40000
_08094F80:
	adds r0, r5, #0
	movs r1, #0x18
	bl sub_0806D490
	movs r4, #0x80
	lsls r4, r4, #9
	ldr r2, _08094FFC @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xb
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08069A00
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806B120
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08094FF2
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
	movs r1, #0
	strb r1, [r5, #0xa]
	movs r0, #2
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	str r1, [r5, #0x48]
	str r1, [r5, #0x50]
	str r4, [r5, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08094FF2:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08094FFC: .4byte 0xFFE00000

	thumb_func_start sub_08095000
sub_08095000: @ 0x08095000
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
	bgt _08095084
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0xe6
	lsls r0, r0, #1
	bl PlaySong
	adds r0, r6, #0
	movs r1, #9
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
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
_08095084:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809508C
sub_0809508C: @ 0x0809508C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r2, _08095154 @ =sub_080951A0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, _08095158 @ =0x0A0AFBFB
	str r0, [sp]
	cmp r4, #0
	beq _08095196
	ldr r0, [r5, #0x40]
	adds r0, r0, r6
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r7
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #2
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _0809515C @ =0x081CC03C
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _08095160 @ =0x08222EFC
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x36
	strb r0, [r1]
	ldr r2, _08095164 @ =sub_08095250
	ldr r3, _08095168 @ =sub_08095288
	adds r0, r4, #0
	movs r1, #8
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
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	subs r2, #0x19
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0809516C @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08095170
	movs r0, #0
	str r0, [r4, #0x1c]
	movs r0, #0x15
	b _08095178
	.align 2, 0
_08095154: .4byte sub_080951A0
_08095158: .4byte 0x0A0AFBFB
_0809515C: .4byte 0x081CC03C
_08095160: .4byte 0x08222EFC
_08095164: .4byte sub_08095250
_08095168: .4byte sub_08095288
_0809516C: .4byte sub_0803B9D0
_08095170:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x1c]
	movs r0, #7
_08095178:
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl sub_080458E4
	str r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080458E4
	str r0, [r4, #0x18]
_08095196:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080951A0
sub_080951A0: @ 0x080951A0
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r2, [r4, #0xa]
	cmp r2, #1
	beq _0809521C
	cmp r2, #1
	bgt _080951B6
	cmp r2, #0
	beq _080951C0
	b _080951BA
_080951B6:
	cmp r2, #2
	beq _0809521C
_080951BA:
	adds r2, r4, #0
	adds r2, #0x59
	b _08095228
_080951C0:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xe
	bhi _080951DA
	ldr r0, [r4, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r4, #0x1c]
	b _080951EC
_080951DA:
	cmp r1, #0x1c
	bhi _080951EC
	ldr r0, [r4, #0x1c]
	ldr r3, _08095218 @ =0xFFFFFC00
	adds r0, r0, r3
	str r0, [r4, #0x1c]
	cmp r1, #0x1b
	bls _080951EC
	strb r2, [r4, #0xd]
_080951EC:
	ldr r1, [r4, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r4, #0
	bl sub_0806D2F8
	adds r0, r4, #0
	bl sub_0806D3AC
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806D128
	adds r2, r4, #0
	adds r2, #0x59
	cmp r0, #0
	beq _08095228
	b _08095220
	.align 2, 0
_08095218: .4byte 0xFFFFFC00
_0809521C:
	adds r2, r4, #0
	adds r2, #0x59
_08095220:
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_08095228:
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08095246
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0809523C
	bl sub_08045E38
_0809523C:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _08095246
	bl sub_08045E38
_08095246:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08095250
sub_08095250: @ 0x08095250
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r1, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r5, #0
	movs r2, #0
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r1, #2]
	mov r0, sp
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xb]
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08095288
sub_08095288: @ 0x08095288
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r2, #4]
	bl sub_08021530
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080952A0
sub_080952A0: @ 0x080952A0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080952D4 @ =0x081CC03C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080952E4
	ldr r0, _080952D8 @ =0x0820AAF4
	movs r1, #1
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _080952DC @ =0x08222EFC
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _080952E0 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080952E6
	.align 2, 0
_080952D4: .4byte 0x081CC03C
_080952D8: .4byte 0x0820AAF4
_080952DC: .4byte 0x08222EFC
_080952E0: .4byte sub_0803B9D0
_080952E4:
	movs r0, #0
_080952E6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080952EC
sub_080952EC: @ 0x080952EC
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
	movs r3, #1
	movs r1, #1
	strh r1, [r2, #6]
	ldr r1, [r0, #0x40]
	str r1, [sp, #8]
	ldr r1, [r0, #0x44]
	str r1, [sp, #0xc]
	strb r3, [r0, #0x1a]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start EnemyCreakingSkullUpdate
EnemyCreakingSkullUpdate: @ 0x08095320
	push {r4, r5, lr}
	sub sp, #0x38
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0809536C
	adds r0, r4, #0
	movs r1, #6
	bl sub_0806D128
	cmp r0, #0
	beq _08095342
	b _08095486
_08095342:
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
	beq _08095360
	adds r0, r4, #0
	bl sub_08021924
_08095360:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0809536C
	adds r0, r4, #0
	bl sub_0806AE54
_0809536C:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _0809537C
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _080953DC
_0809537C:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0809539E
	cmp r0, #1
	bgt _0809538C
	cmp r0, #0
	beq _08095396
	b _080953DC
_0809538C:
	cmp r0, #2
	beq _080953A6
	cmp r0, #3
	beq _080953D4
	b _080953DC
_08095396:
	adds r0, r4, #0
	bl sub_08095898
	b _080953DC
_0809539E:
	adds r0, r4, #0
	bl sub_08096A94
	b _080953DC
_080953A6:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	adds r2, r4, #0
	adds r2, #0x59
	cmp r0, #0
	bgt _080953BE
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080953BE:
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08095486
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _08095486
	bl sub_0806C250
	b _08095486
_080953D4:
	adds r0, r4, #0
	bl sub_08097A14
	b _08095486
_080953DC:
	ldr r3, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08095400
	adds r0, r3, #0
	adds r0, #0xf0
	ldr r0, [r0]
	cmp r0, #0
	bge _080953FA
	rsbs r0, r0, #0
	b _08095412
_080953FA:
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08095414
_08095400:
	adds r0, r3, #0
	adds r0, #0xf0
	ldr r0, [r0]
	cmp r0, #0
	bge _08095412
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08095414
_08095412:
	asrs r0, r0, #0x10
_08095414:
	subs r0, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08095438 @ =0xFFFFFF00
	ldr r1, [sp, #0x34]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x34]
	adds r0, r3, #0
	adds r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	bge _0809543C
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0809543E
	.align 2, 0
_08095438: .4byte 0xFFFFFF00
_0809543C:
	asrs r0, r0, #0x10
_0809543E:
	subs r0, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, _08095490 @ =0xFFFF00FF
	ldr r2, [sp, #0x34]
	ands r2, r1
	orrs r2, r0
	ldr r0, _08095494 @ =0xFF00FFFF
	ands r2, r0
	movs r0, #0xb0
	lsls r0, r0, #0xe
	orrs r2, r0
	str r2, [sp, #0x34]
	add r5, sp, #0x34
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08095466
	rsbs r0, r0, #0
_08095466:
	lsls r1, r0, #0x18
	ldr r0, _08095498 @ =0x00FFFFFF
	ands r2, r0
	orrs r2, r1
	str r2, [sp, #0x34]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08042848
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080428B4
	adds r0, r4, #0
	bl sub_0806E314
_08095486:
	add sp, #0x38
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08095490: .4byte 0xFFFF00FF
_08095494: .4byte 0xFF00FFFF
_08095498: .4byte 0x00FFFFFF

	thumb_func_start EnemyCreakingSkullCreate
EnemyCreakingSkullCreate: @ 0x0809549C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	adds r5, r0, #0
	ldr r0, _080956E8 @ =gEwramData
	mov r8, r0
	ldr r4, _080956EC @ =0x0811903C
	add r0, sp, #8
	adds r1, r4, #0
	movs r2, #0xd
	bl memcpy
	add r0, sp, #0x18
	adds r1, r4, #0
	movs r2, #0xd
	bl memcpy
	add r6, sp, #0x28
	ldr r1, _080956F0 @ =0x08119049
	adds r0, r6, #0
	movs r2, #0xd
	bl memcpy
	add r7, sp, #0x38
	ldr r1, _080956F4 @ =0x08119056
	adds r0, r7, #0
	movs r2, #0xd
	bl memcpy
	add r4, sp, #0x48
	ldr r1, _080956F8 @ =0x08119063
	adds r0, r4, #0
	movs r2, #0xd
	bl memcpy
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08095514
	mov r4, r8
	ldr r2, [r4]
	ldr r6, _080956FC @ =0x000004CC
	adds r0, r2, r6
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08095514
	ldr r1, _08095700 @ =0x0000037E
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08095514
	b _0809584E
_08095514:
	adds r0, r5, #0
	bl sub_08098E00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08095522
	b _0809584E
_08095522:
	movs r0, #0x9c
	bl sub_0806C2CC
	str r0, [r5, #0x1c]
	cmp r0, #0
	bne _08095530
	b _0809584E
_08095530:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	adds r4, r5, #0
	adds r4, #0x20
	movs r0, #0
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_0806B04C
	ldr r0, _080956E8 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080956FC @ =0x000004CC
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	str r4, [sp, #0x5c]
	cmp r0, #0
	beq _0809557A
	movs r4, #0xfa
	lsls r4, r4, #2
	adds r0, r4, #0
	ldrh r6, [r5, #0x34]
	adds r0, r0, r6
	strh r0, [r5, #0x34]
	adds r1, r5, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	adds r0, #0x14
	strb r0, [r1]
_0809557A:
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x58]
	ldr r1, [r5, #0x1c]
	mov r8, r1
	movs r2, #0
	mov sb, r2
	movs r4, #0x80
	lsls r4, r4, #9
	mov sl, r4
_0809558E:
	mov r0, sp
	add r0, sb
	adds r0, #0x38
	movs r7, #0
	ldrsb r7, [r0, r7]
	ldr r0, _08095704 @ =sub_0809808C
	bl sub_0806DFF8
	adds r6, r0, #0
	cmp r6, #0
	bne _080955A6
	b _08095724
_080955A6:
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, _08095708 @ =0x081CC044
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	adds r4, r5, #0
	adds r4, #0x2c
	ldrb r3, [r4]
	adds r0, r6, #0
	ldr r1, _0809570C @ =0x082232B8
	bl sub_0803B924
	movs r0, #0x36
	adds r0, r0, r5
	mov ip, r0
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x36
	strb r0, [r1]
	ldrb r1, [r4]
	adds r0, r6, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r3, r6, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r2, #3
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r3]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r4, #0x21
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldr r0, _08095710 @ =sub_0803B9D0
	str r0, [r6, #4]
	str r5, [r6, #0x1c]
	adds r0, r6, #0
	adds r0, #0x20
	strb r7, [r0]
	mov r0, sp
	adds r0, r0, r7
	adds r0, #0x28
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x21
	strb r0, [r1]
	ldr r0, [r5, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r6, #0x44]
	ldr r1, [sp, #0x58]
	adds r0, r1, r7
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x65
	strb r0, [r1]
	mov r4, ip
	str r4, [sp, #0x60]
	adds r4, r2, #0
	cmp r7, #2
	bls _0809564C
	cmp r7, #8
	beq _0809564C
	cmp r7, #0xb
	bne _08095698
_0809564C:
	movs r0, #1
	str r3, [sp, #0x64]
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r3, [sp, #0x64]
	cmp r0, #0
	bge _08095660
	b _08095848
_08095660:
	movs r0, #0x1f
	ands r2, r0
	ldrb r0, [r4]
	movs r1, #0x20
	rsbs r1, r1, #0
	mov ip, r1
	mov r1, ip
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	ldrb r0, [r3]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
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
	mov r1, sl
	mov r2, sl
	bl sub_0803E058
_08095698:
	ldr r0, _080956E8 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080956B4
	adds r0, r6, #0
	movs r1, #8
	ldr r2, _08095714 @ =sub_08098C54
	ldr r3, _08095718 @ =sub_08098C84
	bl sub_0804277C
_080956B4:
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #4
	add r0, r8
	str r6, [r0, #0x2c]
	movs r2, #1
	add sb, r2
	mov r4, sb
	cmp r4, #0xc
	bgt _080956CA
	b _0809558E
_080956CA:
	ldr r6, [r5, #0x1c]
	mov r8, r6
	ldr r0, _0809571C @ =0x08527FD8
	ldr r2, [sp, #0x5c]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #2
	adds r0, r1, r0
	ldr r3, [r0]
	ldr r0, _08095720 @ =0x085280B0
	adds r1, r1, r0
	ldr r4, [r1]
	movs r7, #0
	b _0809572C
	.align 2, 0
_080956E8: .4byte gEwramData
_080956EC: .4byte 0x0811903C
_080956F0: .4byte 0x08119049
_080956F4: .4byte 0x08119056
_080956F8: .4byte 0x08119063
_080956FC: .4byte 0x000004CC
_08095700: .4byte 0x0000037E
_08095704: .4byte sub_0809808C
_08095708: .4byte 0x081CC044
_0809570C: .4byte 0x082232B8
_08095710: .4byte sub_0803B9D0
_08095714: .4byte sub_08098C54
_08095718: .4byte sub_08098C84
_0809571C: .4byte 0x08527FD8
_08095720: .4byte 0x085280B0
_08095724:
	ldr r0, [r5, #0x1c]
	bl sub_0806C250
	b _0809584E
_0809572C:
	lsls r1, r7, #1
	adds r0, r1, r7
	lsls r0, r0, #4
	mov r6, r8
	adds r2, r0, r6
	adds r1, r1, r3
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r2]
	movs r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r2, #4]
	cmp r7, #2
	bne _08095752
	ldr r0, [r4]
	str r0, [r6, #0x68]
	b _08095758
_08095752:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r2, #8]
_08095758:
	adds r7, #1
	cmp r7, #0xc
	ble _0809572C
	movs r0, #1
	mov r8, r0
	mov r1, r8
	strb r1, [r5, #0xd]
	ldr r3, _08095800 @ =0xFFFFC000
	movs r6, #0xf8
	lsls r6, r6, #0xd
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0xc
	movs r2, #0xb
	bl sub_08097D84
	ldr r3, _08095804 @ =0xFFFFF800
	movs r7, #0xf0
	lsls r7, r7, #0xd
	str r7, [sp]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_08097D84
	movs r3, #0xc0
	lsls r3, r3, #7
	movs r4, #0xe0
	lsls r4, r4, #0xd
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #1
	bl sub_08097D84
	adds r0, r5, #0
	add r1, sp, #0x48
	bl sub_08098BE0
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0xc
	movs r2, #0xb
	movs r3, #0
	bl sub_08097D84
	str r7, [sp]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08097D84
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #1
	movs r3, #0
	bl sub_08097D84
	mov r2, r8
	strb r2, [r5, #0xd]
	adds r0, r5, #0
	add r1, sp, #0x48
	bl sub_08098BE0
	ldr r0, _08095808 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _0809580C
	movs r0, #3
	strb r0, [r5, #0xa]
	movs r0, #0x14
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xd]
	b _0809587E
	.align 2, 0
_08095800: .4byte 0xFFFFC000
_08095804: .4byte 0xFFFFF800
_08095808: .4byte gEwramData
_0809580C:
	ldr r2, _0809583C @ =sub_08098E74
	ldr r3, _08095840 @ =sub_08098EA4
	adds r0, r5, #0
	movs r1, #8
	bl sub_0804277C
	adds r0, r5, #0
	bl sub_08097D1C
	adds r0, r5, #0
	bl sub_0806AF98
	strb r4, [r5, #0xa]
	movs r0, #0x14
	strb r0, [r5, #0xb]
	adds r0, #0xf2
	strh r0, [r5, #0x22]
	ldr r6, [sp, #0x60]
	ldrb r0, [r6]
	cmp r0, #0x21
	beq _08095844
	cmp r0, #0x5c
	beq _08095856
	b _0809585A
	.align 2, 0
_0809583C: .4byte sub_08098E74
_08095840: .4byte sub_08098EA4
_08095844:
	str r4, [r5, #0x24]
	b _0809585A
_08095848:
	adds r0, r6, #0
	bl EntityDelete
_0809584E:
	adds r0, r5, #0
	bl EntityDelete
	b _0809587E
_08095856:
	mov r0, r8
	str r0, [r5, #0x24]
_0809585A:
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _0809587E
	adds r0, r5, #0
	bl sub_08034498
	ldr r0, _08095890 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08095894 @ =0x0000042C
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #2
	orrs r0, r2
	str r0, [r1]
	movs r0, #0x11
	bl sub_08013CF0
_0809587E:
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08095890: .4byte gEwramData
_08095894: .4byte 0x0000042C

	thumb_func_start sub_08095898
sub_08095898: @ 0x08095898
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r7, r0, #0
	ldr r0, _08095910 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08095914 @ =0x0000A094
	adds r1, r1, r0
	mov sl, r1
	ldr r1, _08095918 @ =0x08119070
	add r0, sp, #0x14
	movs r2, #2
	bl memcpy
	add r2, sp, #0x18
	mov sb, r2
	ldr r1, _0809591C @ =0x08119072
	mov r0, sb
	movs r2, #2
	bl memcpy
	add r3, sp, #0x1c
	mov r8, r3
	ldr r1, _08095920 @ =0x08119074
	mov r0, r8
	movs r2, #2
	bl memcpy
	add r6, sp, #0x20
	ldr r4, _08095924 @ =0x08119076
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	add r5, sp, #0x24
	ldr r1, _08095928 @ =0x08119063
	adds r0, r5, #0
	movs r2, #0xd
	bl memcpy
	add r0, sp, #0x34
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldrb r0, [r7, #0xb]
	cmp r0, #0x18
	bls _08095904
	bl _08096A7E
_08095904:
	lsls r0, r0, #2
	ldr r1, _0809592C @ =_08095930
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08095910: .4byte gEwramData
_08095914: .4byte 0x0000A094
_08095918: .4byte 0x08119070
_0809591C: .4byte 0x08119072
_08095920: .4byte 0x08119074
_08095924: .4byte 0x08119076
_08095928: .4byte 0x08119063
_0809592C: .4byte _08095930
_08095930: @ jump table
	.4byte _08095994 @ case 0
	.4byte _08095A30 @ case 1
	.4byte _08095B48 @ case 2
	.4byte _08095C30 @ case 3
	.4byte _08095EFC @ case 4
	.4byte _08095F58 @ case 5
	.4byte _08095FA8 @ case 6
	.4byte _080961D0 @ case 7
	.4byte _08096230 @ case 8
	.4byte _08096278 @ case 9
	.4byte _08096430 @ case 10
	.4byte _08096580 @ case 11
	.4byte _0809668C @ case 12
	.4byte _08096A7E @ case 13
	.4byte _08096A7E @ case 14
	.4byte _08096A7E @ case 15
	.4byte _08096A7E @ case 16
	.4byte _08096A7E @ case 17
	.4byte _08096A7E @ case 18
	.4byte _08096A7E @ case 19
	.4byte _080968AC @ case 20
	.4byte _080968FE @ case 21
	.4byte _08096928 @ case 22
	.4byte _08096952 @ case 23
	.4byte _0809697C @ case 24
_08095994:
	adds r0, r7, #0
	bl sub_08097D1C
	adds r0, r7, #0
	movs r1, #0xc8
	movs r2, #0xa0
	bl sub_0806E29C
	cmp r0, #0
	bne _080959B6
	adds r0, r7, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _080959B6
	bl _08096A7E
_080959B6:
	movs r1, #0
	movs r0, #2
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xc]
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x14
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	ldr r4, _08095A28 @ =0xFFFFF000
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_08097D84
	ldr r3, _08095A2C @ =0xFFFFF800
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	bl sub_08097D84
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	adds r3, r4, #0
	bl sub_08097D84
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08095A1A
	bl _08096A64
_08095A1A:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	subs r1, #4
	movs r0, #0xc8
	lsls r0, r0, #0xd
	bl _08096A6C
	.align 2, 0
_08095A28: .4byte 0xFFFFF000
_08095A2C: .4byte 0xFFFFF800
_08095A30:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08098BE0
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _08095A84 @ =0xFFD00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0x19]
	subs r0, #1
	strb r0, [r7, #0x19]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08095A58
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
_08095A58:
	ldrb r1, [r7, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08095AD8
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08095A90
	ldr r4, _08095A88 @ =0xFFDD0000
	bl RandomNumberGenerator
	ldr r1, _08095A8C @ =0x00003FFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	adds r5, r1, r0
	b _08095AA0
	.align 2, 0
_08095A84: .4byte 0xFFD00000
_08095A88: .4byte 0xFFDD0000
_08095A8C: .4byte 0x00003FFF
_08095A90:
	movs r4, #0x8c
	lsls r4, r4, #0xe
	bl RandomNumberGenerator
	ldr r1, _08095AF4 @ =0x00003FFF
	ands r1, r0
	ldr r0, _08095AF8 @ =0xFFFFC000
	subs r5, r0, r1
_08095AA0:
	bl RandomNumberGenerator
	ldr r1, _08095AF4 @ =0x00003FFF
	ands r1, r0
	ldr r0, _08095AF8 @ =0xFFFFC000
	subs r6, r0, r1
	bl RandomNumberGenerator
	movs r3, #0
	ldr r0, [r7, #0x40]
	adds r0, r0, r4
	ldr r1, [r7, #0x44]
	adds r2, r7, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	str r3, [sp, #4]
	movs r2, #0x10
	str r2, [sp, #8]
	movs r2, #0xf
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp, #0x10]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0806D9CC
_08095AD8:
	ldrb r1, [r7, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08095B10
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08095AFC
	movs r0, #0x8c
	lsls r0, r0, #1
	bl PlaySong
	b _08095B10
	.align 2, 0
_08095AF4: .4byte 0x00003FFF
_08095AF8: .4byte 0xFFFFC000
_08095AFC:
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x3f
	bhi _08095B10
	movs r0, #0x8c
	lsls r0, r0, #1
	bl PlaySong
_08095B10:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08095B20
	bl _08096A7E
_08095B20:
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x14
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xa
	strb r0, [r1]
	ldrb r0, [r7, #0xd]
	lsrs r0, r0, #1
	strb r0, [r7, #0x19]
	ldr r3, _08095B44 @ =0xFFFFF000
	bl _08096544
	.align 2, 0
_08095B44: .4byte 0xFFFFF000
_08095B48:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08098BE0
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _08095B9C @ =0xFFD00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0x19]
	subs r0, #1
	strb r0, [r7, #0x19]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08095B70
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
_08095B70:
	ldrb r1, [r7, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08095BF0
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08095BA8
	ldr r4, _08095BA0 @ =0xFFDD0000
	bl RandomNumberGenerator
	ldr r1, _08095BA4 @ =0x00003FFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	adds r5, r1, r0
	b _08095BB8
	.align 2, 0
_08095B9C: .4byte 0xFFD00000
_08095BA0: .4byte 0xFFDD0000
_08095BA4: .4byte 0x00003FFF
_08095BA8:
	movs r4, #0x8c
	lsls r4, r4, #0xe
	bl RandomNumberGenerator
	ldr r1, _08095C10 @ =0x00003FFF
	ands r1, r0
	ldr r0, _08095C14 @ =0xFFFFC000
	subs r5, r0, r1
_08095BB8:
	bl RandomNumberGenerator
	ldr r1, _08095C10 @ =0x00003FFF
	ands r1, r0
	ldr r0, _08095C14 @ =0xFFFFC000
	subs r6, r0, r1
	bl RandomNumberGenerator
	movs r3, #0
	ldr r0, [r7, #0x40]
	adds r0, r0, r4
	ldr r1, [r7, #0x44]
	adds r2, r7, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	str r3, [sp, #4]
	movs r2, #0x10
	str r2, [sp, #8]
	movs r2, #0xf
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp, #0x10]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0806D9CC
_08095BF0:
	ldrb r1, [r7, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08095BFC
	b _08096244
_08095BFC:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08095C18
	movs r0, #0x8c
	lsls r0, r0, #1
	bl PlaySong
	b _08096244
	.align 2, 0
_08095C10: .4byte 0x00003FFF
_08095C14: .4byte 0xFFFFC000
_08095C18:
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x3f
	bls _08095C26
	b _08096244
_08095C26:
	movs r0, #0x8c
	lsls r0, r0, #1
	bl PlaySong
	b _08096244
_08095C30:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08095C48
	bl _08096A7E
_08095C48:
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _08095C5E
	adds r0, #1
	strb r0, [r7, #0xc]
	movs r0, #1
	strb r0, [r7, #0xd]
	movs r3, #0x98
	lsls r3, r3, #9
	bl _080966B4
_08095C5E:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x21
	bne _08095C78
	bl RandomNumberGenerator2
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x1f
	bhi _08095C78
	bl _08096736
_08095C78:
	adds r0, r7, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r7, #0
	adds r2, #0x42
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	str r2, [sp, #0x38]
	cmp r0, #0
	bge _08095C94
	rsbs r0, r0, #0
_08095C94:
	cmp r0, #0x63
	bgt _08095D44
	bl RandomNumberGenerator2
	movs r4, #0x7f
	ands r0, r4
	cmp r0, #0x3f
	bhi _08095CA6
	b _0809600C
_08095CA6:
	bl RandomNumberGenerator2
	ands r0, r4
	cmp r0, #0x3f
	bhi _08095D44
	adds r0, r7, #0
	bl sub_08097D1C
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x14
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08095CDA
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	subs r1, #4
	movs r0, #0xc8
	lsls r0, r0, #0xd
	b _08095CE2
_08095CDA:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	subs r1, #4
	ldr r0, _08095D40 @ =0xFFE70000
_08095CE2:
	bl __divsi3
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	movs r0, #0xa
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #9
	strb r0, [r1]
	ldrb r0, [r7, #0xd]
	lsrs r0, r0, #1
	strb r0, [r7, #0x19]
	movs r3, #0x80
	lsls r3, r3, #5
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xb
	bl sub_08097D84
	movs r4, #0xc0
	lsls r4, r4, #5
_08095D18:
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08097D84
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	adds r3, r4, #0
	bl sub_08097D84
	bl _08096A72
	.align 2, 0
_08095D40: .4byte 0xFFE70000
_08095D44:
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D188
	adds r4, r0, #0
	movs r0, #0x58
	adds r0, r0, r7
	mov sb, r0
	cmp r4, #0
	ble _08095DA2
	subs r4, #1
	adds r0, r7, #0
	bl sub_08097D1C
	cmp r4, #0
	bne _08095D70
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08095D80
_08095D70:
	cmp r4, #1
	bne _08095DA2
	mov r3, sb
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08095DA2
_08095D80:
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x14
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08095CDA
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	subs r1, #4
	movs r0, #0xc8
	lsls r0, r0, #0xd
	b _08095CE2
_08095DA2:
	adds r0, r7, #0
	bl sub_08097D1C
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x18
	ldrb r0, [r0]
	movs r6, #0
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r5, r7, #0
	adds r5, #0x20
	movs r0, #8
	strb r0, [r5]
	movs r3, #0x80
	lsls r3, r3, #5
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xb
	bl sub_08097D84
	movs r4, #0x80
	lsls r4, r4, #4
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08097D84
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	adds r3, r4, #0
	bl sub_08097D84
	str r6, [r7, #0x48]
	mov r2, sb
	ldrb r1, [r2]
	movs r3, #0x40
	mov r8, r3
	mov r0, r8
	ands r0, r1
	movs r4, #0x32
	rsbs r4, r4, #0
	cmp r0, #0
	beq _08095E16
	movs r4, #0x32
_08095E16:
	adds r0, r7, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x38]
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	cmp r0, #0
	bge _08095E2E
	rsbs r0, r0, #0
_08095E2E:
	adds r6, r7, #0
	adds r6, #0x46
	cmp r0, #0x31
	ble _08095E5E
	ldr r1, [sp, #0x38]
	ldrh r0, [r1]
	mov r2, sl
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r3, sl
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _08095E5E
	bl _08096A72
_08095E5E:
	mov r0, sb
	ldrb r1, [r0]
	mov r0, r8
	ands r0, r1
	movs r4, #0x32
	cmp r0, #0
	beq _08095E6E
	subs r4, #0x64
_08095E6E:
	ldr r1, [sp, #0x38]
	ldrh r0, [r1]
	mov r2, sl
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r3, sl
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	beq _08095E96
	bl _08096A72
_08095E96:
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x14
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	mov r0, sb
	ldrb r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08095EB8
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	subs r1, #4
	movs r0, #0xc8
	lsls r0, r0, #0xd
	b _08095EC0
_08095EB8:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	subs r1, #4
	ldr r0, _08095EF8 @ =0xFFE70000
_08095EC0:
	bl __divsi3
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	movs r0, #0xa
	strb r0, [r7, #0xb]
	movs r0, #9
	strb r0, [r5]
	ldrb r0, [r7, #0xd]
	lsrs r0, r0, #1
	strb r0, [r7, #0x19]
	movs r3, #0x80
	lsls r3, r3, #5
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xb
	bl sub_08097D84
	movs r4, #0xc0
	lsls r4, r4, #5
	bl _0809687C
	.align 2, 0
_08095EF8: .4byte 0xFFE70000
_08095EFC:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08098BE0
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _08095F50 @ =0xFFD00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08095F20
	bl _08096A7E
_08095F20:
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
	movs r0, #7
	strb r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #5
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xb
	bl sub_08097D84
	ldr r4, _08095F54 @ =0xFFFFF800
	b _08096556
	.align 2, 0
_08095F50: .4byte 0xFFD00000
_08095F54: .4byte 0xFFFFF800
_08095F58:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08098BE0
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _08095FA4 @ =0xFFD00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _08095F7E
	bl _08096A7E
_08095F7E:
	ldr r0, [r7, #0x24]
	adds r0, r6, r0
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xc]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #7
	strb r0, [r1]
	movs r0, #0x7c
	bl PlaySong
	bl _08096A7E
	.align 2, 0
_08095FA4: .4byte 0xFFD00000
_08095FA8:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08095FC0
	bl _08096A7E
_08095FC0:
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _08095FC8
	b _080966A8
_08095FC8:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x21
	bne _08095FE0
	bl RandomNumberGenerator2
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x1f
	bhi _08095FE0
	b _08096736
_08095FE0:
	adds r0, r7, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r7, #0
	adds r2, #0x42
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	str r2, [sp, #0x38]
	cmp r0, #0
	bge _08095FFC
	rsbs r0, r0, #0
_08095FFC:
	cmp r0, #0x63
	bgt _08096060
	bl RandomNumberGenerator2
	movs r4, #0x7f
	ands r0, r4
	cmp r0, #0x3f
	bhi _08096018
_0809600C:
	movs r1, #0
	movs r0, #1
	strb r0, [r7, #0xa]
	strb r1, [r7, #0xb]
	bl _08096A7E
_08096018:
	bl RandomNumberGenerator2
	ands r0, r4
	cmp r0, #0x3f
	bhi _08096060
	adds r0, r7, #0
	bl sub_08097D1C
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x14
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r7, #0xd]
	str r1, [r7, #0x48]
	movs r0, #7
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #8
	strb r0, [r1]
	ldr r3, _0809605C @ =0xFFFFF000
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xb
	bl sub_08097D84
	movs r4, #0x80
	lsls r4, r4, #4
	b _08095D18
	.align 2, 0
_0809605C: .4byte 0xFFFFF000
_08096060:
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0806D188
	adds r4, r0, #0
	movs r0, #0x58
	adds r0, r0, r7
	mov sb, r0
	cmp r4, #0
	ble _080960D4
	subs r4, #1
	adds r0, r7, #0
	bl sub_08097D1C
	cmp r4, #0
	bne _0809608C
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809609C
_0809608C:
	cmp r4, #1
	bne _080960D4
	mov r3, sb
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080960D4
_0809609C:
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x14
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r7, #0xd]
	str r1, [r7, #0x48]
	movs r0, #7
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #8
	strb r0, [r1]
	ldr r3, _080960D0 @ =0xFFFFF000
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xb
	bl sub_08097D84
	movs r4, #0x80
	lsls r4, r4, #4
	b _08095D18
	.align 2, 0
_080960D0: .4byte 0xFFFFF000
_080960D4:
	adds r0, r7, #0
	bl sub_08097D1C
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x14
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	movs r0, #1
	strb r0, [r7, #0xb]
	adds r5, r7, #0
	adds r5, #0x20
	movs r0, #9
	strb r0, [r5]
	ldrb r0, [r7, #0xd]
	lsrs r0, r0, #1
	strb r0, [r7, #0x19]
	ldr r3, _08096148 @ =0xFFFFF000
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xb
	bl sub_08097D84
	movs r4, #0xc0
	lsls r4, r4, #5
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08097D84
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	adds r3, r4, #0
	bl sub_08097D84
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809614C
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	subs r1, #4
	movs r0, #0xc8
	lsls r0, r0, #0xd
	b _08096154
	.align 2, 0
_08096148: .4byte 0xFFFFF000
_0809614C:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	subs r1, #4
	ldr r0, _080961CC @ =0xFFE70000
_08096154:
	bl __divsi3
	str r0, [r7, #0x48]
	mov r2, sb
	ldrb r1, [r2]
	movs r3, #0x40
	mov r8, r3
	mov r0, r8
	ands r0, r1
	movs r4, #0x32
	rsbs r4, r4, #0
	cmp r0, #0
	beq _08096170
	movs r4, #0x32
_08096170:
	adds r0, r7, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x38]
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	cmp r0, #0
	bge _08096188
	rsbs r0, r0, #0
_08096188:
	adds r6, r7, #0
	adds r6, #0x46
	cmp r0, #0x31
	ble _080961B6
	ldrh r0, [r2]
	mov r1, sl
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, sl
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _080961B6
	bl _08096A72
_080961B6:
	mov r3, sb
	ldrb r1, [r3]
	mov r0, r8
	ands r0, r1
	movs r4, #0x32
	cmp r0, #0
	beq _080961C6
	subs r4, #0x64
_080961C6:
	ldr r1, [sp, #0x38]
	b _08096838
	.align 2, 0
_080961CC: .4byte 0xFFE70000
_080961D0:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08098BE0
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _08096224 @ =0xFFD00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080961F4
	bl _08096A7E
_080961F4:
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x14
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	ldr r3, _08096228 @ =0xFFFFF000
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xb
	bl sub_08097D84
	ldr r4, _0809622C @ =0xFFFFF800
	b _08096556
	.align 2, 0
_08096224: .4byte 0xFFD00000
_08096228: .4byte 0xFFFFF000
_0809622C: .4byte 0xFFFFF800
_08096230:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08098BE0
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _08096274 @ =0xFFD00000
	adds r0, r7, #0
	bl sub_0806D288
_08096244:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _08096256
	bl _08096A7E
_08096256:
	ldr r0, [r7, #0x24]
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xc]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	bl _08096A7E
	.align 2, 0
_08096274: .4byte 0xFFD00000
_08096278:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08096290
	bl _08096A7E
_08096290:
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _080962A4
	adds r0, #1
	strb r0, [r7, #0xc]
	movs r0, #1
	strb r0, [r7, #0xd]
	movs r3, #0x98
	lsls r3, r3, #9
	b _080966B4
_080962A4:
	bl RandomNumberGenerator2
	movs r4, #0x7f
	ands r0, r4
	cmp r0, #0x3f
	bhi _080962D0
	adds r0, r7, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _080962CA
	rsbs r0, r0, #0
_080962CA:
	cmp r0, #0x63
	bgt _080962E6
	b _08096718
_080962D0:
	bl RandomNumberGenerator2
	ands r0, r4
	cmp r0, #0x1f
	bhi _080962E6
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x21
	bne _080962E6
	b _08096736
_080962E6:
	adds r0, r7, #0
	bl sub_08097D1C
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x14
	ldrb r0, [r0]
	movs r6, #0
	strb r0, [r7, #0xd]
	movs r0, #4
	strb r0, [r7, #0xb]
	adds r5, r7, #0
	adds r5, #0x20
	movs r0, #8
	strb r0, [r5]
	movs r3, #0x80
	lsls r3, r3, #5
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xb
	bl sub_08097D84
	movs r4, #0x80
	lsls r4, r4, #4
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08097D84
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	adds r3, r4, #0
	bl sub_08097D84
	str r6, [r7, #0x48]
	movs r3, #0x58
	adds r3, r3, r7
	mov sb, r3
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	movs r4, #0x32
	rsbs r4, r4, #0
	cmp r0, #0
	beq _08096358
	movs r4, #0x32
_08096358:
	adds r0, r7, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x42
	adds r1, r1, r7
	mov r8, r1
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _08096374
	rsbs r0, r0, #0
_08096374:
	adds r6, r7, #0
	adds r6, #0x46
	cmp r0, #0x31
	ble _080963A2
	mov r3, r8
	ldrh r0, [r3]
	mov r1, sl
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, sl
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _080963A2
	b _08096A72
_080963A2:
	mov r3, sb
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	movs r4, #0x32
	cmp r0, #0
	beq _080963B2
	subs r4, #0x64
_080963B2:
	mov r1, r8
	ldrh r0, [r1]
	mov r2, sl
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r3, sl
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	beq _080963D8
	b _08096A72
_080963D8:
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080963F0
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	subs r1, #4
	movs r0, #0xc8
	lsls r0, r0, #0xd
	b _080963F8
_080963F0:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	subs r1, #4
	ldr r0, _0809642C @ =0xFFE70000
_080963F8:
	bl __divsi3
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
	movs r0, #0xa
	strb r0, [r7, #0xb]
	movs r0, #9
	strb r0, [r5]
	ldrb r0, [r7, #0xd]
	lsrs r0, r0, #1
	strb r0, [r7, #0x19]
	movs r3, #0x80
	lsls r3, r3, #5
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xb
	bl sub_08097D84
	movs r4, #0xc0
	lsls r4, r4, #5
	b _0809687C
	.align 2, 0
_0809642C: .4byte 0xFFE70000
_08096430:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08098BE0
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _08096480 @ =0xFFD00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0x19]
	subs r0, #1
	strb r0, [r7, #0x19]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08096458
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
_08096458:
	ldrb r1, [r7, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080964DA
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08096490
	ldr r4, _08096484 @ =0xFFDD0000
	bl RandomNumberGenerator
	ldr r1, _08096488 @ =0x00003FFF
	ands r1, r0
	ldr r0, _0809648C @ =0xFFFFC000
	subs r5, r0, r1
	b _080964A2
	.align 2, 0
_08096480: .4byte 0xFFD00000
_08096484: .4byte 0xFFDD0000
_08096488: .4byte 0x00003FFF
_0809648C: .4byte 0xFFFFC000
_08096490:
	movs r4, #0x8c
	lsls r4, r4, #0xe
	bl RandomNumberGenerator
	ldr r1, _080964F8 @ =0x00003FFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	adds r5, r1, r0
_080964A2:
	bl RandomNumberGenerator
	ldr r1, _080964F8 @ =0x00003FFF
	ands r1, r0
	ldr r0, _080964FC @ =0xFFFFC000
	subs r6, r0, r1
	bl RandomNumberGenerator
	movs r3, #0
	ldr r0, [r7, #0x40]
	adds r0, r0, r4
	ldr r1, [r7, #0x44]
	adds r2, r7, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	str r3, [sp, #4]
	movs r2, #0x10
	str r2, [sp, #8]
	movs r2, #0xf
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp, #0x10]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0806D9CC
_080964DA:
	ldrb r1, [r7, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08096514
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08096500
	movs r0, #0x8c
	lsls r0, r0, #1
	bl PlaySong
	b _08096514
	.align 2, 0
_080964F8: .4byte 0x00003FFF
_080964FC: .4byte 0xFFFFC000
_08096500:
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x3f
	bhi _08096514
	movs r0, #0x8c
	lsls r0, r0, #1
	bl PlaySong
_08096514:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08096522
	b _08096A7E
_08096522:
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x14
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xc
	strb r0, [r1]
	ldrb r0, [r7, #0xd]
	lsrs r0, r0, #1
	strb r0, [r7, #0x19]
	movs r3, #0x80
	lsls r3, r3, #5
_08096544:
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xb
	bl sub_08097D84
	ldr r4, _0809657C @ =0xFFFFE800
_08096556:
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08097D84
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	adds r3, r4, #0
	bl sub_08097D84
	b _08096A7E
	.align 2, 0
_0809657C: .4byte 0xFFFFE800
_08096580:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08098BE0
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _080965D0 @ =0xFFD00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0x19]
	subs r0, #1
	strb r0, [r7, #0x19]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080965A8
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #7
	strb r0, [r1]
_080965A8:
	ldrb r1, [r7, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0809662A
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080965E0
	ldr r4, _080965D4 @ =0xFFDD0000
	bl RandomNumberGenerator
	ldr r1, _080965D8 @ =0x00003FFF
	ands r1, r0
	ldr r0, _080965DC @ =0xFFFFC000
	subs r5, r0, r1
	b _080965F2
	.align 2, 0
_080965D0: .4byte 0xFFD00000
_080965D4: .4byte 0xFFDD0000
_080965D8: .4byte 0x00003FFF
_080965DC: .4byte 0xFFFFC000
_080965E0:
	movs r4, #0x8c
	lsls r4, r4, #0xe
	bl RandomNumberGenerator
	ldr r1, _08096648 @ =0x00003FFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	adds r5, r1, r0
_080965F2:
	bl RandomNumberGenerator
	ldr r1, _08096648 @ =0x00003FFF
	ands r1, r0
	ldr r0, _0809664C @ =0xFFFFC000
	subs r6, r0, r1
	bl RandomNumberGenerator
	movs r3, #0
	ldr r0, [r7, #0x40]
	adds r0, r0, r4
	ldr r1, [r7, #0x44]
	adds r2, r7, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	str r3, [sp, #4]
	movs r2, #0x10
	str r2, [sp, #8]
	movs r2, #0xf
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp, #0x10]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0806D9CC
_0809662A:
	ldrb r1, [r7, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08096664
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08096650
	movs r0, #0x8c
	lsls r0, r0, #1
	bl PlaySong
	b _08096664
	.align 2, 0
_08096648: .4byte 0x00003FFF
_0809664C: .4byte 0xFFFFC000
_08096650:
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x3f
	bhi _08096664
	movs r0, #0x8c
	lsls r0, r0, #1
	bl PlaySong
_08096664:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _08096674
	b _08096A7E
_08096674:
	ldr r0, [r7, #0x24]
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #7
	strb r0, [r1]
	b _08096A7E
_0809668C:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080966A2
	b _08096A7E
_080966A2:
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _080966EE
_080966A8:
	adds r0, #1
	strb r0, [r7, #0xc]
	movs r0, #1
	strb r0, [r7, #0xd]
	movs r3, #0xa8
	lsls r3, r3, #9
_080966B4:
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xb
	bl sub_08097D84
	movs r3, #0xb8
	lsls r3, r3, #9
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	bl sub_08097D84
	movs r3, #0xe8
	lsls r3, r3, #9
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_08097D84
	b _08096A7E
_080966EE:
	bl RandomNumberGenerator2
	movs r4, #0x7f
	ands r0, r4
	cmp r0, #0x3f
	bhi _08096722
	adds r0, r7, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _08096714
	rsbs r0, r0, #0
_08096714:
	cmp r0, #0x63
	bgt _08096740
_08096718:
	movs r0, #1
	strb r0, [r7, #0xa]
	movs r0, #0
	strb r0, [r7, #0xb]
	b _08096A7E
_08096722:
	bl RandomNumberGenerator2
	ands r0, r4
	cmp r0, #0x1f
	bhi _08096740
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x21
	bne _08096740
_08096736:
	movs r0, #1
	strb r0, [r7, #0xa]
	movs r0, #0x14
	strb r0, [r7, #0xb]
	b _08096A7E
_08096740:
	adds r0, r7, #0
	bl sub_08097D1C
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x14
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	movs r0, #1
	strb r0, [r7, #0xb]
	adds r5, r7, #0
	adds r5, #0x20
	movs r0, #9
	strb r0, [r5]
	ldrb r0, [r7, #0xd]
	lsrs r0, r0, #1
	strb r0, [r7, #0x19]
	ldr r3, _080967B8 @ =0xFFFFF000
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xb
	bl sub_08097D84
	movs r4, #0xc0
	lsls r4, r4, #5
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08097D84
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	adds r3, r4, #0
	bl sub_08097D84
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	beq _080967BC
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	subs r1, #4
	movs r0, #0xc8
	lsls r0, r0, #0xd
	b _080967C4
	.align 2, 0
_080967B8: .4byte 0xFFFFF000
_080967BC:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	subs r1, #4
	ldr r0, _080968A4 @ =0xFFE70000
_080967C4:
	bl __divsi3
	str r0, [r7, #0x48]
	mov r3, sb
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	movs r4, #0x32
	rsbs r4, r4, #0
	cmp r0, #0
	beq _080967DC
	movs r4, #0x32
_080967DC:
	adds r0, r7, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x42
	adds r1, r1, r7
	mov r8, r1
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _080967F8
	rsbs r0, r0, #0
_080967F8:
	adds r6, r7, #0
	adds r6, #0x46
	cmp r0, #0x31
	ble _08096826
	mov r3, r8
	ldrh r0, [r3]
	mov r1, sl
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, sl
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _08096826
	b _08096A72
_08096826:
	mov r3, sb
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	movs r4, #0x32
	cmp r0, #0
	beq _08096836
	subs r4, #0x64
_08096836:
	mov r1, r8
_08096838:
	ldrh r0, [r1]
	mov r2, sl
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r3, sl
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	beq _0809685C
	b _08096A72
_0809685C:
	str r0, [r7, #0x48]
	movs r0, #7
	strb r0, [r7, #0xb]
	movs r0, #8
	strb r0, [r5]
	ldr r3, _080968A8 @ =0xFFFFF000
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xb
	bl sub_08097D84
	movs r4, #0x80
	lsls r4, r4, #4
_0809687C:
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08097D84
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	adds r3, r4, #0
	bl sub_08097D84
	b _08096A72
	.align 2, 0
_080968A4: .4byte 0xFFE70000
_080968A8: .4byte 0xFFFFF000
_080968AC:
	adds r0, r7, #0
	bl sub_08097D1C
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xb
	movs r3, #0
	bl sub_08097D84
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08097D84
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	movs r3, #0
	bl sub_08097D84
	movs r2, #0
	movs r0, #0xe
	strb r0, [r7, #0xd]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strb r2, [r7, #0xc]
_080968FE:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08096914
	b _08096A7E
_08096914:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x18
	strb r0, [r7, #0xd]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	b _08096A7E
_08096928:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0809693E
	b _08096A7E
_0809693E:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0xe
	strb r0, [r7, #0xd]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	b _08096A7E
_08096952:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08096968
	b _08096A7E
_08096968:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x18
	strb r0, [r7, #0xd]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	b _08096A7E
_0809697C:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08096A7E
	adds r0, r7, #0
	bl sub_08097D1C
	movs r3, #0xa0
	lsls r3, r3, #9
	movs r0, #0xf8
	lsls r0, r0, #0xd
	mov r8, r0
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xb
	bl sub_08097D84
	movs r3, #0xbc
	lsls r3, r3, #9
	movs r6, #0xf0
	lsls r6, r6, #0xd
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	bl sub_08097D84
	movs r3, #0xf0
	lsls r3, r3, #9
	movs r5, #0xe0
	lsls r5, r5, #0xd
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_08097D84
	movs r0, #0x15
	strb r0, [r7, #0xb]
	movs r0, #0xe
	strb r0, [r7, #0xd]
	adds r4, r7, #0
	adds r4, #0x20
	movs r0, #1
	strb r0, [r4]
	adds r0, r7, #0
	movs r1, #0xfa
	movs r2, #0xa0
	bl sub_0806E29C
	cmp r0, #0
	bne _080969FC
	adds r0, r7, #0
	bl sub_0806D54C
	cmp r0, #1
	bne _08096A7E
_080969FC:
	movs r0, #2
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xc]
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x14
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	movs r0, #5
	strb r0, [r4]
	ldr r4, _08096A5C @ =0xFFFFF000
	mov r1, r8
	str r1, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xb
	adds r3, r4, #0
	bl sub_08097D84
	ldr r3, _08096A60 @ =0xFFFFF800
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	bl sub_08097D84
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	adds r3, r4, #0
	bl sub_08097D84
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08096A64
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	subs r1, #4
	movs r0, #0xc8
	lsls r0, r0, #0xd
	b _08096A6C
	.align 2, 0
_08096A5C: .4byte 0xFFFFF000
_08096A60: .4byte 0xFFFFF800
_08096A64:
	ldrb r1, [r7, #0xd]
	lsls r1, r1, #1
	subs r1, #4
	ldr r0, _08096A90 @ =0xFFE70000
_08096A6C:
	bl __divsi3
	str r0, [r7, #0x48]
_08096A72:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r7, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r7, #0x54]
_08096A7E:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08096A90: .4byte 0xFFE70000

	thumb_func_start sub_08096A94
sub_08096A94: @ 0x08096A94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	adds r7, r0, #0
	ldr r4, _08096AF4 @ =0x08119078
	add r0, sp, #0x14
	adds r1, r4, #0
	movs r2, #3
	bl memcpy
	add r0, sp, #0x18
	mov r8, r0
	ldr r1, _08096AF8 @ =0x0811907B
	movs r2, #3
	bl memcpy
	add r6, sp, #0x1c
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #3
	bl memcpy
	add r5, sp, #0x20
	ldr r1, _08096AFC @ =0x0811907E
	adds r0, r5, #0
	movs r2, #3
	bl memcpy
	add r4, sp, #0x24
	ldr r1, _08096B00 @ =0x08119063
	adds r0, r4, #0
	movs r2, #0xd
	bl memcpy
	ldrb r0, [r7, #0xb]
	cmp r0, #0x25
	bls _08096AE8
	bl _08097A04
_08096AE8:
	lsls r0, r0, #2
	ldr r1, _08096B04 @ =_08096B08
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08096AF4: .4byte 0x08119078
_08096AF8: .4byte 0x0811907B
_08096AFC: .4byte 0x0811907E
_08096B00: .4byte 0x08119063
_08096B04: .4byte _08096B08
_08096B08: @ jump table
	.4byte _08096BA0 @ case 0
	.4byte _08096C16 @ case 1
	.4byte _08096C36 @ case 2
	.4byte _08096C5A @ case 3
	.4byte _08096C84 @ case 4
	.4byte _08096DC0 @ case 5
	.4byte _08096F38 @ case 6
	.4byte _08096F66 @ case 7
	.4byte _080973E0 @ case 8
	.4byte _080976DC @ case 9
	.4byte _08097A04 @ case 10
	.4byte _08096F90 @ case 11
	.4byte _08096FEA @ case 12
	.4byte _0809700E @ case 13
	.4byte _08097070 @ case 14
	.4byte _080971C4 @ case 15
	.4byte _0809733C @ case 16
	.4byte _0809738E @ case 17
	.4byte _080973E0 @ case 18
	.4byte _0809742C @ case 19
	.4byte _0809744C @ case 20
	.4byte _080974C0 @ case 21
	.4byte _080974D6 @ case 22
	.4byte _0809784C @ case 23
	.4byte _080975AC @ case 24
	.4byte _08097694 @ case 25
	.4byte _080976BE @ case 26
	.4byte _080976DC @ case 27
	.4byte _08097A04 @ case 28
	.4byte _08097A04 @ case 29
	.4byte _08097A04 @ case 30
	.4byte _08097738 @ case 31
	.4byte _08097774 @ case 32
	.4byte _0809784C @ case 33
	.4byte _0809786E @ case 34
	.4byte _0809795C @ case 35
	.4byte _08097984 @ case 36
	.4byte _080979AC @ case 37
_08096BA0:
	adds r0, r7, #0
	bl sub_08097D1C
	adds r0, r7, #0
	bl sub_08098C1C
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #5
	bne _08096BC2
	movs r4, #0
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #1
	b _08096BCA
_08096BC2:
	movs r4, #0
	movs r0, #0x11
	strb r0, [r1]
	movs r0, #0xb
_08096BCA:
	strb r0, [r7, #0xb]
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xb
	movs r3, #0
	bl sub_08097D84
	movs r3, #0xa0
	lsls r3, r3, #7
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	bl sub_08097D84
	movs r3, #0x80
	lsls r3, r3, #5
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_08097D84
	strb r4, [r7, #0x18]
	ldr r0, [r7, #0x24]
	add r0, sp
	adds r0, #0x14
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	bl _08097A04
_08096C16:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08096C2E
	bl _08097A04
_08096C2E:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xe
	b _08096FAE
_08096C36:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08096C4E
	bl _08097A04
_08096C4E:
	movs r0, #4
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _08097368
_08096C5A:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08096C72
	bl _08097A04
_08096C72:
	movs r0, #0xe
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xf
	b _08097036
_08096C84:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08096C9C
	bl _08097A04
_08096C9C:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08097D84
	movs r3, #0x80
	lsls r3, r3, #3
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_08097D84
	movs r1, #0
	mov sl, r1
	adds r2, r7, #0
	adds r2, #0x58
	str r2, [sp, #0x3c]
	adds r5, r7, #0
	adds r5, #0x5c
	str r5, [sp, #0x34]
_08096CE4:
	ldr r6, [sp, #0x3c]
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08096D0C
	movs r0, #0x98
	lsls r0, r0, #0xf
	mov sb, r0
	movs r6, #0xc0
	lsls r6, r6, #0xc
	bl RandomNumberGenerator
	ldr r1, _08096D08 @ =0x00007FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #9
	b _08096D1E
	.align 2, 0
_08096D08: .4byte 0x00007FFF
_08096D0C:
	ldr r5, _08096DA4 @ =0xFFB40000
	mov sb, r5
	ldr r6, _08096DA8 @ =0xFFF40000
	bl RandomNumberGenerator
	ldr r1, _08096DAC @ =0x00007FFF
	ands r0, r1
	rsbs r0, r0, #0
	ldr r2, _08096DB0 @ =0xFFFF0000
_08096D1E:
	adds r4, r0, r2
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r5, _08096DAC @ =0x00007FFF
	ands r3, r5
	ldr r0, _08096DB4 @ =0xFFFF8000
	subs r3, r0, r3
	ldr r0, [r7, #0x40]
	add r0, sb
	mov r1, sl
	muls r1, r6, r1
	mov r8, r1
	add r0, r8
	ldr r1, [r7, #0x44]
	ldr r5, [sp, #0x34]
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #8
	str r2, [sp, #8]
	movs r2, #0xf
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp, #0x10]
	adds r2, r4, #0
	bl sub_0806D9CC
	bl RandomNumberGenerator
	adds r6, r0, #0
	ldr r5, _08096DB8 @ =0x0000FFFF
	ands r6, r5
	ldr r0, _08096DB4 @ =0xFFFF8000
	adds r6, r6, r0
	bl RandomNumberGenerator
	adds r4, r0, #0
	ands r4, r5
	rsbs r4, r4, #0
	ldr r1, _08096DBC @ =0xFFFD0000
	adds r4, r4, r1
	bl RandomNumberGenerator
	movs r3, #1
	ands r3, r0
	ldr r0, [r7, #0x40]
	add r0, sb
	add r0, r8
	ldr r1, [r7, #0x44]
	ldr r5, [sp, #0x34]
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806DCC4
	movs r6, #1
	add sl, r6
	mov r0, sl
	cmp r0, #2
	ble _08096CE4
	b _08097192
	.align 2, 0
_08096DA4: .4byte 0xFFB40000
_08096DA8: .4byte 0xFFF40000
_08096DAC: .4byte 0x00007FFF
_08096DB0: .4byte 0xFFFF0000
_08096DB4: .4byte 0xFFFF8000
_08096DB8: .4byte 0x0000FFFF
_08096DBC: .4byte 0xFFFD0000
_08096DC0:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08096DDC
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_08096DDC:
	ldrb r0, [r7, #0xd]
	cmp r0, #3
	bhi _08096DE4
	b _08096EEC
_08096DE4:
	movs r1, #0
	mov sl, r1
	adds r2, r7, #0
	adds r2, #0x58
	str r2, [sp, #0x3c]
	movs r5, #0x5c
	adds r5, r5, r7
	mov r8, r5
	ldr r5, _08096E10 @ =0xFFFF8000
_08096DF6:
	ldr r6, [sp, #0x3c]
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08096E14
	movs r0, #0x98
	lsls r0, r0, #0xf
	mov sb, r0
	movs r6, #0xc0
	lsls r6, r6, #0xc
	b _08096E1A
	.align 2, 0
_08096E10: .4byte 0xFFFF8000
_08096E14:
	ldr r1, _08096E84 @ =0xFFB40000
	mov sb, r1
	ldr r6, _08096E88 @ =0xFFF40000
_08096E1A:
	bl RandomNumberGenerator
	ldr r2, _08096E8C @ =0x0000FFFF
	ands r0, r2
	adds r4, r0, r5
	bl RandomNumberGenerator
	ldr r1, _08096E8C @ =0x0000FFFF
	ands r0, r1
	subs r3, r5, r0
	ldr r0, [r7, #0x40]
	add r0, sb
	mov r1, sl
	muls r1, r6, r1
	adds r0, r0, r1
	ldr r1, [r7, #0x44]
	mov r6, r8
	ldrb r2, [r6]
	subs r2, #1
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #0x10
	str r2, [sp, #8]
	movs r2, #0xf
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp, #0x10]
	adds r2, r4, #0
	bl sub_0806D9CC
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #3
	ble _08096DF6
	movs r2, #0
	mov sl, r2
_08096E66:
	ldr r5, [sp, #0x3c]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08096E90
	movs r6, #0xe0
	lsls r6, r6, #0xf
	mov sb, r6
	movs r6, #0x80
	lsls r6, r6, #0xd
	movs r4, #0x80
	lsls r4, r4, #8
	b _08096E98
	.align 2, 0
_08096E84: .4byte 0xFFB40000
_08096E88: .4byte 0xFFF40000
_08096E8C: .4byte 0x0000FFFF
_08096E90:
	ldr r0, _08096F24 @ =0xFF900000
	mov sb, r0
	ldr r6, _08096F28 @ =0xFFF00000
	ldr r4, _08096F2C @ =0xFFFF8000
_08096E98:
	bl RandomNumberGenerator
	adds r5, r0, #0
	ldr r1, _08096F30 @ =0x0000FFFF
	ands r5, r1
	ldr r2, _08096F2C @ =0xFFFF8000
	adds r0, r4, r2
	adds r5, r5, r0
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _08096F30 @ =0x0000FFFF
	ands r4, r0
	rsbs r4, r4, #0
	ldrb r0, [r7, #0xd]
	subs r0, #2
	lsls r0, r0, #0x10
	subs r4, r4, r0
	bl RandomNumberGenerator
	movs r3, #1
	ands r3, r0
	ldr r0, [r7, #0x40]
	add r0, sb
	mov r1, sl
	muls r1, r6, r1
	adds r0, r0, r1
	ldr r1, [r7, #0x44]
	mov r6, r8
	ldrb r2, [r6]
	subs r2, #1
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0806DCC4
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #0
	ble _08096E66
_08096EEC:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08096EFC
	bl _08097A04
_08096EFC:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xf
	strb r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08097D84
	ldr r3, _08096F34 @ =0xFFFFFC00
	b _080973CE
	.align 2, 0
_08096F24: .4byte 0xFF900000
_08096F28: .4byte 0xFFF00000
_08096F2C: .4byte 0xFFFF8000
_08096F30: .4byte 0x0000FFFF
_08096F34: .4byte 0xFFFFFC00
_08096F38:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08096F50
	bl _08097A04
_08096F50:
	ldr r0, [r7, #0x24]
	adds r0, r6, r0
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xf
	b _08097366
_08096F66:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08096F7E
	bl _08097A04
_08096F7E:
	movs r0, #0x32
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #5
	b _080973B4
_08096F90:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08096FA8
	bl _08097A04
_08096FA8:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x12
_08096FAE:
	strb r0, [r1]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	ldr r0, [r7, #0x24]
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	movs r4, #0x80
	lsls r4, r4, #2
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_08097D84
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	adds r3, r4, #0
	bl sub_08097D84
	bl _08097A04
_08096FEA:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08097002
	bl _08097A04
_08097002:
	movs r0, #2
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _08097368
_0809700E:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08097026
	bl _08097A04
_08097026:
	movs r0, #0xe
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x13
_08097036:
	strb r0, [r1]
	ldr r3, _08097068 @ =0xFFFFA600
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	bl sub_08097D84
	ldr r3, _0809706C @ =0xFFFF8E00
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_08097D84
	movs r0, #0x86
	bl PlaySong
	bl _08097A04
	.align 2, 0
_08097068: .4byte 0xFFFFA600
_0809706C: .4byte 0xFFFF8E00
_08097070:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08097088
	bl _08097A04
_08097088:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x14
	strb r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08097D84
	movs r3, #0x80
	lsls r3, r3, #3
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_08097D84
	movs r2, #0
	mov sl, r2
	adds r5, r7, #0
	adds r5, #0x58
	str r5, [sp, #0x3c]
	adds r6, r7, #0
	adds r6, #0x5c
	str r6, [sp, #0x38]
_080970D0:
	ldr r0, [sp, #0x3c]
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080970FC
	movs r1, #0x98
	lsls r1, r1, #0xf
	mov sb, r1
	movs r6, #0xc0
	lsls r6, r6, #0xc
	bl RandomNumberGenerator
	ldr r2, _080970F8 @ =0x00007FFF
	ands r0, r2
	movs r5, #0x80
	lsls r5, r5, #9
	adds r4, r0, r5
	b _08097110
	.align 2, 0
_080970F8: .4byte 0x00007FFF
_080970FC:
	ldr r6, _080971A8 @ =0xFFB40000
	mov sb, r6
	ldr r6, _080971AC @ =0xFFF40000
	bl RandomNumberGenerator
	ldr r1, _080971B0 @ =0x00007FFF
	ands r0, r1
	rsbs r0, r0, #0
	ldr r2, _080971B4 @ =0xFFFF0000
	adds r4, r0, r2
_08097110:
	bl RandomNumberGenerator
	adds r3, r0, #0
	ldr r5, _080971B0 @ =0x00007FFF
	ands r3, r5
	ldr r0, _080971B8 @ =0xFFFF8000
	subs r3, r0, r3
	ldr r0, [r7, #0x40]
	add r0, sb
	mov r1, sl
	muls r1, r6, r1
	mov r8, r1
	add r0, r8
	ldr r1, [r7, #0x44]
	ldr r5, [sp, #0x38]
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #8
	str r2, [sp, #8]
	movs r2, #0xf
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp, #0x10]
	adds r2, r4, #0
	bl sub_0806D9CC
	bl RandomNumberGenerator
	adds r6, r0, #0
	ldr r5, _080971BC @ =0x0000FFFF
	ands r6, r5
	ldr r0, _080971B8 @ =0xFFFF8000
	adds r6, r6, r0
	bl RandomNumberGenerator
	adds r4, r0, #0
	ands r4, r5
	rsbs r4, r4, #0
	ldr r1, _080971C0 @ =0xFFFD0000
	adds r4, r4, r1
	bl RandomNumberGenerator
	movs r3, #1
	ands r3, r0
	ldr r0, [r7, #0x40]
	add r0, sb
	add r0, r8
	ldr r1, [r7, #0x44]
	ldr r5, [sp, #0x38]
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806DCC4
	movs r6, #1
	add sl, r6
	mov r0, sl
	cmp r0, #2
	ble _080970D0
_08097192:
	movs r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_08011F7C
	movs r0, #0x80
	bl PlaySong
	bl _08097A04
	.align 2, 0
_080971A8: .4byte 0xFFB40000
_080971AC: .4byte 0xFFF40000
_080971B0: .4byte 0x00007FFF
_080971B4: .4byte 0xFFFF0000
_080971B8: .4byte 0xFFFF8000
_080971BC: .4byte 0x0000FFFF
_080971C0: .4byte 0xFFFD0000
_080971C4:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080971E0
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_08011F7C
_080971E0:
	ldrb r0, [r7, #0xd]
	cmp r0, #3
	bhi _080971E8
	b _080972F0
_080971E8:
	movs r1, #0
	mov sl, r1
	adds r2, r7, #0
	adds r2, #0x58
	str r2, [sp, #0x3c]
	movs r5, #0x5c
	adds r5, r5, r7
	mov r8, r5
	ldr r5, _08097214 @ =0xFFFF8000
_080971FA:
	ldr r6, [sp, #0x3c]
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08097218
	movs r0, #0xa0
	lsls r0, r0, #0xf
	mov sb, r0
	movs r6, #0xc0
	lsls r6, r6, #0xc
	b _0809721E
	.align 2, 0
_08097214: .4byte 0xFFFF8000
_08097218:
	ldr r1, _08097288 @ =0xFFB00000
	mov sb, r1
	ldr r6, _0809728C @ =0xFFF40000
_0809721E:
	bl RandomNumberGenerator
	ldr r2, _08097290 @ =0x0000FFFF
	ands r0, r2
	adds r4, r0, r5
	bl RandomNumberGenerator
	ldr r1, _08097290 @ =0x0000FFFF
	ands r0, r1
	subs r3, r5, r0
	ldr r0, [r7, #0x40]
	add r0, sb
	mov r1, sl
	muls r1, r6, r1
	adds r0, r0, r1
	ldr r1, [r7, #0x44]
	mov r6, r8
	ldrb r2, [r6]
	subs r2, #1
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #0x10
	str r2, [sp, #8]
	movs r2, #0xf
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp, #0x10]
	adds r2, r4, #0
	bl sub_0806D9CC
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #3
	ble _080971FA
	movs r2, #0
	mov sl, r2
_0809726A:
	ldr r5, [sp, #0x3c]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08097294
	movs r6, #0xe0
	lsls r6, r6, #0xf
	mov sb, r6
	movs r6, #0x80
	lsls r6, r6, #0xd
	movs r4, #0x80
	lsls r4, r4, #8
	b _0809729C
	.align 2, 0
_08097288: .4byte 0xFFB00000
_0809728C: .4byte 0xFFF40000
_08097290: .4byte 0x0000FFFF
_08097294:
	ldr r0, _08097328 @ =0xFF900000
	mov sb, r0
	ldr r6, _0809732C @ =0xFFF00000
	ldr r4, _08097330 @ =0xFFFF8000
_0809729C:
	bl RandomNumberGenerator
	adds r5, r0, #0
	ldr r1, _08097334 @ =0x0000FFFF
	ands r5, r1
	ldr r2, _08097330 @ =0xFFFF8000
	adds r0, r4, r2
	adds r5, r5, r0
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _08097334 @ =0x0000FFFF
	ands r4, r0
	rsbs r4, r4, #0
	ldrb r0, [r7, #0xd]
	subs r0, #2
	lsls r0, r0, #0x10
	subs r4, r4, r0
	bl RandomNumberGenerator
	movs r3, #1
	ands r3, r0
	ldr r0, [r7, #0x40]
	add r0, sb
	mov r1, sl
	muls r1, r6, r1
	adds r0, r0, r1
	ldr r1, [r7, #0x44]
	mov r6, r8
	ldrb r2, [r6]
	subs r2, #1
	str r2, [sp]
	str r3, [sp, #4]
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0806DCC4
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #0
	ble _0809726A
_080972F0:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080972FE
	b _08097A04
_080972FE:
	movs r0, #6
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x13
	strb r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08097D84
	ldr r3, _08097338 @ =0xFFFFFC00
	b _080973CE
	.align 2, 0
_08097328: .4byte 0xFF900000
_0809732C: .4byte 0xFFF00000
_08097330: .4byte 0xFFFF8000
_08097334: .4byte 0x0000FFFF
_08097338: .4byte 0xFFFFFC00
_0809733C:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08097352
	b _08097A04
_08097352:
	ldr r0, [r7, #0x24]
	adds r0, r6, r0
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x13
_08097366:
	strb r0, [r1]
_08097368:
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08097D84
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	movs r3, #0
	bl sub_08097D84
	b _08097A04
_0809738E:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080973A4
	b _08097A04
_080973A4:
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #7
_080973B4:
	strb r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #4
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	bl sub_08097D84
	movs r3, #0xc0
	lsls r3, r3, #7
_080973CE:
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_08097D84
	b _08097A04
_080973E0:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _080973F8
	b _08097A04
_080973F8:
	movs r0, #0xa
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r3, #0xb8
	lsls r3, r3, #9
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	bl sub_08097EC4
	movs r3, #0xe8
	lsls r3, r3, #9
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_08097EC4
	b _08097A04
_0809742C:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08097444
	b _08097A04
_08097444:
	movs r0, #1
	strb r0, [r7, #0xd]
	movs r0, #6
	b _080976FA
_0809744C:
	adds r0, r7, #0
	bl sub_08097D1C
	adds r0, r7, #0
	bl sub_08098C1C
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #5
	bne _0809746E
	movs r4, #0
	movs r0, #0x16
	strb r0, [r1]
	movs r0, #0x15
	b _08097476
_0809746E:
	movs r4, #0
	movs r0, #0x1a
	strb r0, [r1]
	movs r0, #0x1f
_08097476:
	strb r0, [r7, #0xb]
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #0xb
	movs r3, #0
	bl sub_08097D84
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08097D84
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	movs r3, #0
	bl sub_08097D84
	strb r4, [r7, #0x18]
	ldr r0, [r7, #0x24]
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xd]
	lsrs r0, r0, #1
	strb r0, [r7, #0x19]
	b _08097A04
_080974C0:
	ldrb r0, [r7, #0x19]
	subs r0, #1
	strb r0, [r7, #0x19]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080974CE
	b _0809774C
_080974CE:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x15
	b _0809774A
_080974D6:
	ldrb r0, [r7, #0xd]
	bl sub_0806D518
	cmp r0, #1
	bne _0809756A
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08097518
	ldr r0, [r7, #0x40]
	ldr r2, _08097510 @ =0xFFF50000
	adds r6, r0, r2
	bl RandomNumberGenerator
	movs r1, #0xa0
	lsls r1, r1, #0xe
	bl __umodsi3
	subs r0, r6, r0
	movs r5, #0xc0
	lsls r5, r5, #0xc
	adds r5, r5, r0
	mov sb, r5
	ldr r0, [r7, #0x40]
	ldr r1, _08097514 @ =0xFFF10000
	b _0809753A
	.align 2, 0
_08097510: .4byte 0xFFF50000
_08097514: .4byte 0xFFF10000
_08097518:
	ldr r0, [r7, #0x40]
	movs r2, #0xb0
	lsls r2, r2, #0xc
	adds r6, r0, r2
	bl RandomNumberGenerator
	movs r1, #0xa0
	lsls r1, r1, #0xe
	bl __umodsi3
	adds r0, r6, r0
	ldr r5, _08097598 @ =0xFFF40000
	adds r5, r5, r0
	mov sb, r5
	ldr r0, [r7, #0x40]
	movs r1, #0xf0
	lsls r1, r1, #0xc
_0809753A:
	adds r4, r0, r1
	ldr r0, [r7, #0x44]
	ldr r2, _0809759C @ =0xFFD50000
	adds r5, r0, r2
	bl RandomNumberGenerator
	ldr r1, _080975A0 @ =0x001FFFFF
	ands r1, r0
	subs r1, r5, r1
	ldr r0, _080975A4 @ =0xFFF80000
	adds r1, r1, r0
	ldr r0, [r7, #0x44]
	ldr r2, _080975A8 @ =0xFFD10000
	adds r3, r0, r2
	str r3, [sp]
	mov r0, sb
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08098CF0
_0809756A:
	ldrb r1, [r7, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0809757A
	movs r0, #0x84
	bl PlaySong
_0809757A:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08097588
	b _08097A04
_08097588:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0xa
	strb r0, [r7, #0xd]
	movs r0, #5
	strb r0, [r7, #0x19]
	b _080976B4
	.align 2, 0
_08097598: .4byte 0xFFF40000
_0809759C: .4byte 0xFFD50000
_080975A0: .4byte 0x001FFFFF
_080975A4: .4byte 0xFFF80000
_080975A8: .4byte 0xFFD10000
_080975AC:
	ldrb r0, [r7, #0xd]
	bl sub_0806D518
	cmp r0, #1
	bne _0809761C
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080975DE
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xb
	bl __umodsi3
	ldr r1, [r7, #0x40]
	adds r0, r0, r1
	movs r1, #0xe8
	lsls r1, r1, #0xd
	adds r1, r1, r0
	mov sb, r1
	b _080975F4
_080975DE:
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xb
	bl __umodsi3
	ldr r1, [r7, #0x40]
	adds r0, r0, r1
	ldr r2, _08097658 @ =0xFFDD0000
	adds r2, r2, r0
	mov sb, r2
_080975F4:
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xb
	bl __umodsi3
	ldr r1, [r7, #0x44]
	adds r0, r0, r1
	ldr r5, _0809765C @ =0xFFE10000
	adds r1, r0, r5
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	str r0, [sp]
	mov r0, sb
	movs r2, #0
	movs r3, #0
	bl sub_0806D6CC
_0809761C:
	ldrb r1, [r7, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0809762E
	movs r0, #0x97
	lsls r0, r0, #1
	bl PlaySong
_0809762E:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0809763C
	b _08097A04
_0809763C:
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08097660
	movs r6, #0x90
	lsls r6, r6, #0xe
	mov sb, r6
	movs r3, #0xc0
	lsls r3, r3, #0xa
	b _08097666
	.align 2, 0
_08097658: .4byte 0xFFDD0000
_0809765C: .4byte 0xFFE10000
_08097660:
	ldr r0, _08097688 @ =0xFFDC0000
	mov sb, r0
	ldr r3, _0809768C @ =0xFFFD0000
_08097666:
	ldr r2, _08097690 @ =0xFFE70000
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	mov r1, sb
	bl sub_0809884C
	movs r0, #3
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x18
	b _08097944
	.align 2, 0
_08097688: .4byte 0xFFDC0000
_0809768C: .4byte 0xFFFD0000
_08097690: .4byte 0xFFE70000
_08097694:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080976AA
	b _08097A04
_080976AA:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x1e
	strb r0, [r7, #0xd]
_080976B4:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x17
	strb r0, [r1]
	b _08097A04
_080976BE:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080976D4
	b _08097A04
_080976D4:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #5
	b _0809799E
_080976DC:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080976F4
	b _08097A04
_080976F4:
	movs r0, #1
	strb r0, [r7, #0xd]
	movs r0, #3
_080976FA:
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xc]
	strb r1, [r7, #0xa]
	adds r0, r7, #0
	bl sub_08098C38
	movs r3, #0xb8
	lsls r3, r3, #9
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	bl sub_08097D84
	movs r3, #0xe8
	lsls r3, r3, #9
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_08097D84
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	b _08097A04
_08097738:
	ldrb r0, [r7, #0x19]
	subs r0, #1
	strb r0, [r7, #0x19]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0809774C
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x19
_0809774A:
	strb r0, [r1]
_0809774C:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08097762
	b _08097A04
_08097762:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x29
	strb r0, [r7, #0xd]
	movs r0, #0x77
	bl PlaySong
	b _08097A04
_08097774:
	ldrb r0, [r7, #0xd]
	bl sub_0806D518
	cmp r0, #1
	bne _0809780A
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080977B8
	ldr r0, [r7, #0x40]
	ldr r1, _080977B0 @ =0xFFF50000
	adds r6, r0, r1
	bl RandomNumberGenerator
	movs r1, #0xa0
	lsls r1, r1, #0xe
	bl __umodsi3
	subs r0, r6, r0
	movs r2, #0xc0
	lsls r2, r2, #0xc
	adds r2, r2, r0
	mov sb, r2
	ldr r0, [r7, #0x40]
	ldr r5, _080977B4 @ =0xFFF10000
	b _080977DA
	.align 2, 0
_080977B0: .4byte 0xFFF50000
_080977B4: .4byte 0xFFF10000
_080977B8:
	ldr r0, [r7, #0x40]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	adds r6, r0, r1
	bl RandomNumberGenerator
	movs r1, #0xa0
	lsls r1, r1, #0xe
	bl __umodsi3
	adds r0, r6, r0
	ldr r2, _08097838 @ =0xFFF40000
	adds r2, r2, r0
	mov sb, r2
	ldr r0, [r7, #0x40]
	movs r5, #0xf0
	lsls r5, r5, #0xc
_080977DA:
	adds r4, r0, r5
	ldr r0, [r7, #0x44]
	ldr r1, _0809783C @ =0xFFD50000
	adds r5, r0, r1
	bl RandomNumberGenerator
	ldr r1, _08097840 @ =0x001FFFFF
	ands r1, r0
	subs r1, r5, r1
	ldr r2, _08097844 @ =0xFFF80000
	adds r1, r1, r2
	ldr r0, [r7, #0x44]
	ldr r2, _08097848 @ =0xFFD10000
	adds r3, r0, r2
	str r3, [sp]
	mov r0, sb
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08098CF0
_0809780A:
	ldrb r1, [r7, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0809781A
	movs r0, #0x84
	bl PlaySong
_0809781A:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08097828
	b _08097A04
_08097828:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0xa
	strb r0, [r7, #0xd]
	movs r0, #5
	strb r0, [r7, #0x19]
	b _0809797A
	.align 2, 0
_08097838: .4byte 0xFFF40000
_0809783C: .4byte 0xFFD50000
_08097840: .4byte 0x001FFFFF
_08097844: .4byte 0xFFF80000
_08097848: .4byte 0xFFD10000
_0809784C:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08097862
	b _08097A04
_08097862:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x28
	strb r0, [r7, #0xd]
	b _08097A04
_0809786E:
	ldrb r0, [r7, #0xd]
	bl sub_0806D518
	cmp r0, #1
	bne _080978DE
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080978A0
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xb
	bl __umodsi3
	ldr r1, [r7, #0x40]
	adds r0, r0, r1
	movs r1, #0xe8
	lsls r1, r1, #0xd
	adds r1, r1, r0
	mov sb, r1
	b _080978B6
_080978A0:
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xb
	bl __umodsi3
	ldr r1, [r7, #0x40]
	adds r0, r0, r1
	ldr r2, _08097918 @ =0xFFDD0000
	adds r2, r2, r0
	mov sb, r2
_080978B6:
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xb
	bl __umodsi3
	ldr r1, [r7, #0x44]
	adds r0, r0, r1
	ldr r5, _0809791C @ =0xFFE10000
	adds r1, r0, r5
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	str r0, [sp]
	mov r0, sb
	movs r2, #0
	movs r3, #0
	bl sub_0806D6CC
_080978DE:
	ldrb r1, [r7, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080978EE
	movs r0, #0x77
	bl PlaySong
_080978EE:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080978FC
	b _08097A04
_080978FC:
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08097920
	movs r6, #0x90
	lsls r6, r6, #0xe
	mov sb, r6
	movs r3, #0xc0
	lsls r3, r3, #0xa
	b _08097926
	.align 2, 0
_08097918: .4byte 0xFFDD0000
_0809791C: .4byte 0xFFE10000
_08097920:
	ldr r0, _08097950 @ =0xFFDC0000
	mov sb, r0
	ldr r3, _08097954 @ =0xFFFD0000
_08097926:
	ldr r2, _08097958 @ =0xFFE70000
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	mov r1, sb
	bl sub_0809884C
	movs r0, #3
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1c
_08097944:
	strb r0, [r1]
	movs r0, #0x7a
	bl PlaySong
	b _08097A04
	.align 2, 0
_08097950: .4byte 0xFFDC0000
_08097954: .4byte 0xFFFD0000
_08097958: .4byte 0xFFE70000
_0809795C:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08097A04
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x1e
	strb r0, [r7, #0xd]
_0809797A:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0x1b
	strb r0, [r1]
	b _08097A04
_08097984:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08097A04
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #7
_0809799E:
	strb r0, [r1]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x3c
	strb r0, [r7, #0xd]
	b _08097A04
_080979AC:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08097A04
	movs r0, #1
	strb r0, [r7, #0xd]
	movs r0, #6
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xc]
	strb r1, [r7, #0xa]
	adds r0, r7, #0
	bl sub_08098C38
	movs r3, #0xb8
	lsls r3, r3, #9
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	bl sub_08097D84
	movs r3, #0xe8
	lsls r3, r3, #9
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_08097D84
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08098BE0
_08097A04:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08097A14
sub_08097A14: @ 0x08097A14
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r1, _08097A38 @ =0x08119063
	add r0, sp, #4
	movs r2, #0xd
	bl memcpy
	ldrb r0, [r4, #0xb]
	cmp r0, #0x18
	bls _08097A2C
	b _08097B8C
_08097A2C:
	lsls r0, r0, #2
	ldr r1, _08097A3C @ =_08097A40
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08097A38: .4byte 0x08119063
_08097A3C: .4byte _08097A40
_08097A40: @ jump table
	.4byte _08097AA4 @ case 0
	.4byte _08097B8C @ case 1
	.4byte _08097B8C @ case 2
	.4byte _08097B8C @ case 3
	.4byte _08097B8C @ case 4
	.4byte _08097B8C @ case 5
	.4byte _08097B8C @ case 6
	.4byte _08097B8C @ case 7
	.4byte _08097B8C @ case 8
	.4byte _08097B8C @ case 9
	.4byte _08097B8C @ case 10
	.4byte _08097B8C @ case 11
	.4byte _08097B8C @ case 12
	.4byte _08097B8C @ case 13
	.4byte _08097B8C @ case 14
	.4byte _08097B8C @ case 15
	.4byte _08097B8C @ case 16
	.4byte _08097B8C @ case 17
	.4byte _08097B8C @ case 18
	.4byte _08097B8C @ case 19
	.4byte _08097AA8 @ case 20
	.4byte _08097ABA @ case 21
	.4byte _08097AE0 @ case 22
	.4byte _08097B06 @ case 23
	.4byte _08097B2C @ case 24
_08097AA4:
	movs r0, #0x14
	strb r0, [r4, #0xb]
_08097AA8:
	movs r0, #0xe
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_08097ABA:
	adds r0, r4, #0
	add r1, sp, #4
	bl sub_08098BE0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08097B8C
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x18
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #2
	b _08097B8A
_08097AE0:
	adds r0, r4, #0
	add r1, sp, #4
	bl sub_08098BE0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08097B8C
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0xe
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #3
	b _08097B8A
_08097B06:
	adds r0, r4, #0
	add r1, sp, #4
	bl sub_08098BE0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08097B8C
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x18
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0
	b _08097B8A
_08097B2C:
	adds r0, r4, #0
	add r1, sp, #4
	bl sub_08098BE0
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08097B8C
	movs r3, #0xa0
	lsls r3, r3, #9
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #0xb
	bl sub_08097D84
	movs r3, #0xbc
	lsls r3, r3, #9
	movs r0, #0xf0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_08097D84
	movs r3, #0xf0
	lsls r3, r3, #9
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_08097D84
	movs r0, #0x15
	strb r0, [r4, #0xb]
	movs r0, #0xe
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #1
_08097B8A:
	strb r0, [r1]
_08097B8C:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08097B94
sub_08097B94: @ 0x08097B94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	mov r8, r1
	ldr r0, [r0, #0x1c]
	mov sl, r0
	ldr r1, _08097BF8 @ =0x08527FD8
	mov r0, sb
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r5, [r1]
	ldr r1, _08097BFC @ =0x085280B0
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp]
	mov r1, r8
	lsls r3, r1, #1
	adds r0, r3, r1
	lsls r0, r0, #4
	mov r2, sl
	adds r1, r0, r2
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bne _08097C54
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bne _08097C54
	mov r2, sb
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	str r2, [sp, #4]
	cmp r0, #0
	beq _08097C00
	adds r0, r3, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	rsbs r7, r0, #0
	b _08097C0A
	.align 2, 0
_08097BF8: .4byte 0x08527FD8
_08097BFC: .4byte 0x085280B0
_08097C00:
	adds r0, r3, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r7, r0, #0x10
_08097C0A:
	mov r0, r8
	lsls r4, r0, #1
	adds r0, r4, r5
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r3, r0, #0x10
	add r4, r8
	lsls r4, r4, #4
	add r4, sl
	ldr r5, [r4]
	subs r7, r7, r5
	ldr r6, [r4, #4]
	subs r3, r3, r6
	mov r2, sb
	ldrb r1, [r2, #0xd]
	adds r0, r7, #0
	str r3, [sp, #8]
	bl __divsi3
	adds r5, r5, r0
	str r5, [r4]
	mov r0, sb
	ldrb r1, [r0, #0xd]
	ldr r3, [sp, #8]
	adds r0, r3, #0
	bl __divsi3
	adds r6, r6, r0
	str r6, [r4, #4]
	mov r1, r8
	cmp r1, #2
	bne _08097D0A
	ldr r2, [sp]
	ldr r7, [r2]
	ldr r0, [sp, #4]
	b _08097CE4
_08097C54:
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #4
	mov r2, sl
	adds r5, r0, r2
	ldr r7, [r5, #0x10]
	ldr r4, [r5, #0x14]
	subs r7, r7, r4
	mov r0, sb
	ldrb r1, [r0, #0xd]
	adds r0, r7, #0
	bl __divsi3
	adds r4, r4, r0
	str r4, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r4, r4, r1
	adds r0, r4, #0
	bl sub_080009E4
	adds r7, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_080009E4
	adds r3, r0, #0
	ldr r1, [r5, #0x28]
	adds r0, r7, #0
	str r3, [sp, #8]
	bl sub_0803E86C
	adds r7, r0, #0
	ldr r1, [r5, #0x28]
	ldr r3, [sp, #8]
	adds r0, r3, #0
	bl sub_0803E86C
	adds r3, r0, #0
	ldr r1, [r5, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _08097CCC
	ldr r1, [r5, #0x1c]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	add r0, sl
	ldr r1, [r0]
	ldr r2, _08097CC8 @ =0xFFFF0000
	ands r1, r2
	adds r1, r1, r7
	str r1, [r5]
	ldr r0, [r0, #4]
	ands r0, r2
	b _08097CD2
	.align 2, 0
_08097CC8: .4byte 0xFFFF0000
_08097CCC:
	adds r0, r1, r7
	str r0, [r5]
	ldr r0, [r5, #0x1c]
_08097CD2:
	adds r0, r0, r3
	str r0, [r5, #4]
	mov r2, r8
	cmp r2, #2
	bne _08097D0A
	ldr r0, [sp]
	ldr r7, [r0]
	mov r0, sb
	adds r0, #0x58
_08097CE4:
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08097CF4
	movs r0, #0x80
	lsls r0, r0, #0xa
	subs r7, r0, r7
_08097CF4:
	mov r1, sl
	ldr r4, [r1, #0x68]
	subs r7, r7, r4
	mov r2, sb
	ldrb r1, [r2, #0xd]
	adds r0, r7, #0
	bl __divsi3
	adds r4, r4, r0
	mov r0, sl
	str r4, [r0, #0x68]
_08097D0A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08097D1C
sub_08097D1C: @ 0x08097D1C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x58
	ldrb r4, [r5]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1f
	bl sub_0806CF2C
	cmp r4, r0
	beq _08097D7E
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
	movs r7, #0x80
	lsls r7, r7, #0xa
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0x60
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r4, r1, r0
	adds r0, #0x90
	adds r3, r1, r0
	adds r0, #0x30
	adds r2, r1, r0
_08097D60:
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
	cmp r1, r5
	bls _08097D72
	cmp r1, r4
	beq _08097D72
	cmp r1, r3
	bne _08097D78
_08097D72:
	ldr r0, [r1, #8]
	subs r0, r7, r0
	str r0, [r1, #8]
_08097D78:
	adds r1, #0x30
	cmp r1, r2
	ble _08097D60
_08097D7E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08097D84
sub_08097D84: @ 0x08097D84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	mov r8, r2
	mov sb, r3
	ldr r1, [sp, #0x28]
	ldr r0, [r0, #0x1c]
	mov sl, r0
	ldr r2, [sp, #4]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	mov r2, sl
	adds r7, r0, r2
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #0x18]
	mov r0, r8
	str r0, [r7, #0x1c]
	cmp r1, #0
	beq _08097DBE
	str r1, [r7, #0x28]
	lsls r0, r0, #1
	b _08097DF6
_08097DBE:
	mov r1, r8
	lsls r4, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #4
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
	str r0, [r7, #0x28]
	adds r0, r4, #0
_08097DF6:
	ldr r2, [sp, #4]
	lsls r4, r2, #1
	adds r2, r4, r2
	lsls r2, r2, #4
	add r2, sl
	add r0, r8
	lsls r0, r0, #4
	add r0, sl
	ldr r3, [r2]
	ldr r1, [r0]
	subs r5, r3, r1
	ldr r1, [r2, #4]
	ldr r0, [r0, #4]
	subs r6, r1, r0
	cmp r5, #0
	bge _08097E22
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _08097E24
_08097E22:
	asrs r2, r5, #0x10
_08097E24:
	cmp r6, #0
	bge _08097E34
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _08097E36
_08097E34:
	asrs r1, r6, #0x10
_08097E36:
	adds r0, r2, #0
	bl ArcTan2
	ldr r2, [sp, #4]
	adds r1, r4, r2
	lsls r1, r1, #4
	mov r2, sl
	adds r3, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r0, r1
	str r2, [r3, #0x14]
	ldr r0, _08097E78 @ =0x0000FFFF
	cmp sb, r0
	ble _08097E98
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08097E86
	movs r0, #0xc0
	lsls r0, r0, #9
	cmp sb, r0
	ble _08097E7C
	movs r0, #0xe0
	lsls r0, r0, #0xa
	mov r1, sb
	subs r0, r0, r1
	b _08097E88
	.align 2, 0
_08097E78: .4byte 0x0000FFFF
_08097E7C:
	movs r0, #0xa0
	lsls r0, r0, #0xa
	mov r2, sb
	subs r0, r0, r2
	b _08097E88
_08097E86:
	mov r0, sb
_08097E88:
	str r0, [r3, #0x10]
	ldr r1, [sp, #4]
	adds r0, r4, r1
	lsls r0, r0, #4
	add r0, sl
	ldr r1, [r0, #0x10]
	str r1, [r0, #0x14]
	b _08097EB2
_08097E98:
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08097EAC
	mov r1, sb
	subs r0, r2, r1
	b _08097EB0
_08097EAC:
	mov r1, sb
	adds r0, r2, r1
_08097EB0:
	str r0, [r3, #0x10]
_08097EB2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08097EC4
sub_08097EC4: @ 0x08097EC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	mov r8, r2
	mov sb, r3
	ldr r1, [sp, #0x28]
	ldr r0, [r0, #0x1c]
	mov sl, r0
	ldr r2, [sp, #4]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	mov r2, sl
	adds r7, r0, r2
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #0x18]
	mov r0, r8
	str r0, [r7, #0x1c]
	cmp r1, #0
	beq _08097EFE
	str r1, [r7, #0x28]
	lsls r0, r0, #1
	b _08097F36
_08097EFE:
	mov r1, r8
	lsls r4, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #4
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
	str r0, [r7, #0x28]
	adds r0, r4, #0
_08097F36:
	ldr r2, [sp, #4]
	lsls r4, r2, #1
	adds r2, r4, r2
	lsls r2, r2, #4
	add r2, sl
	add r0, r8
	lsls r0, r0, #4
	add r0, sl
	ldr r3, [r2]
	ldr r1, [r0]
	subs r5, r3, r1
	ldr r1, [r2, #4]
	ldr r0, [r0, #4]
	subs r6, r1, r0
	cmp r5, #0
	bge _08097F62
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _08097F64
_08097F62:
	asrs r2, r5, #0x10
_08097F64:
	cmp r6, #0
	bge _08097F74
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _08097F76
_08097F74:
	asrs r1, r6, #0x10
_08097F76:
	adds r0, r2, #0
	bl ArcTan2
	ldr r2, [sp, #4]
	adds r1, r4, r2
	lsls r1, r1, #4
	mov r2, sl
	adds r4, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r0, r1
	str r2, [r4, #0x14]
	mov r1, sb
	cmp r1, #0
	bge _08097F9A
	rsbs r1, r1, #0
_08097F9A:
	ldr r0, _08097FC0 @ =0x0000FFFF
	cmp r1, r0
	ble _08097FD2
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08097FCE
	movs r0, #0xc0
	lsls r0, r0, #9
	cmp sb, r0
	ble _08097FC4
	movs r0, #0xe0
	lsls r0, r0, #0xa
	mov r1, sb
	subs r0, r0, r1
	b _08097FEA
	.align 2, 0
_08097FC0: .4byte 0x0000FFFF
_08097FC4:
	movs r0, #0xa0
	lsls r0, r0, #0xa
	mov r2, sb
	subs r0, r0, r2
	b _08097FEA
_08097FCE:
	mov r0, sb
	b _08097FEA
_08097FD2:
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08097FE6
	mov r1, sb
	subs r0, r2, r1
	b _08097FEA
_08097FE6:
	mov r1, sb
	adds r0, r2, r1
_08097FEA:
	str r0, [r4, #0x10]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08097FFC
sub_08097FFC: @ 0x08097FFC
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
	bl sub_080344AC
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _08098080
	adds r0, r4, #0
	bl sub_080683BC
	movs r0, #0x6b
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
	movs r0, #0x64
	strb r0, [r4, #0xd]
	movs r0, #2
	strb r0, [r4, #0xa]
	movs r0, #0
	strb r0, [r4, #0xb]
	movs r2, #0x30
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _08098080
	movs r0, #0
	bl sub_08034498
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	ldr r2, _08098088 @ =0xFFE00000
	adds r1, r1, r2
	bl sub_080D6450
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0xb
	movs r3, #0x60
	bl sub_080D6EF8
_08098080:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08098088: .4byte 0xFFE00000

	thumb_func_start sub_0809808C
sub_0809808C: @ 0x0809808C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r5, r0, #0
	ldr r0, [r5, #0x1c]
	mov sb, r0
	add r4, sp, #0x18
	ldr r1, _080981A4 @ =0x08119081
	adds r0, r4, #0
	movs r2, #0xd
	bl memcpy
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080980B2
	b _08098530
_080980B2:
	mov r1, sb
	cmp r1, #0
	bne _080980BA
	b _0809850E
_080980BA:
	ldr r0, [r1]
	cmp r0, #0
	bne _080980C2
	b _0809850E
_080980C2:
	mov r0, sb
	adds r0, #0x36
	adds r6, r5, #0
	adds r6, #0x36
	ldrb r0, [r0]
	ldrb r2, [r6]
	cmp r0, r2
	beq _080980D4
	b _0809850E
_080980D4:
	ldr r7, [r1, #0x1c]
	mov r0, sb
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
	mov r0, sb
	adds r0, #0x58
	ldrb r0, [r0]
	subs r3, #2
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	adds r2, r5, #0
	adds r2, #0x20
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r7
	mov r4, sb
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r1, [r4, #0x44]
	ldr r0, [r0, #4]
	adds r1, r1, r0
	str r1, [r5, #0x44]
	ldrb r0, [r6]
	mov sl, r3
	mov r8, r2
	cmp r0, #0x5c
	bne _08098156
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #5
	bne _08098156
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
_08098156:
	mov r1, r8
	ldrb r0, [r1]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #1
	bls _08098168
	asrs r0, r1, #0x18
	cmp r0, #0xb
	bne _080981F4
_08098168:
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r7
	ldr r6, [r1]
	mov r3, r8
	movs r2, #0
	ldrsb r2, [r3, r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r2, [r0]
	subs r6, r6, r2
	ldr r1, [r1, #4]
	ldr r0, [r0, #4]
	subs r1, r1, r0
	cmp r6, #0
	bge _080981A8
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _080981AA
	.align 2, 0
_080981A4: .4byte 0x08119081
_080981A8:
	asrs r2, r6, #0x10
_080981AA:
	cmp r1, #0
	bge _080981BA
	rsbs r0, r1, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080981BC
_080981BA:
	asrs r1, r1, #0x10
_080981BC:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r4, sl
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080981D6
	str r2, [r5, #0x48]
	b _080981DC
_080981D6:
	ldr r1, _080981F0 @ =0xFFFF8000
	adds r0, r2, r1
	str r0, [r5, #0x48]
_080981DC:
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r7
	ldr r0, [r5, #0x48]
	str r0, [r1, #8]
	b _0809820E
	.align 2, 0
_080981F0: .4byte 0xFFFF8000
_080981F4:
	cmp r0, #2
	beq _080981FC
	cmp r0, #8
	bne _0809820E
_080981FC:
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r7
	ldr r0, [r1, #8]
	str r0, [r5, #0x48]
_0809820E:
	mov r4, sb
	ldrb r1, [r4, #0xa]
	cmp r1, #2
	bne _08098278
	movs r6, #0
	movs r0, #1
	strb r0, [r5, #0xa]
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #8
	bne _08098230
	strb r1, [r5, #0xa]
	ldr r0, [r4, #0x44]
	ldr r3, _0809826C @ =0xFFF60000
	adds r0, r0, r3
	str r0, [r5, #0x14]
_08098230:
	strb r6, [r5, #0xb]
	ldr r0, [r5, #0x48]
	str r0, [r5, #0x18]
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	subs r1, #0x80
	str r1, [r5, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	str r6, [r5, #0x50]
	bl RandomNumberGenerator
	ldr r1, _08098270 @ =0x00003FFF
	ands r1, r0
	ldr r4, _08098274 @ =0xFFFFE000
	adds r1, r1, r4
	str r1, [r5, #0x48]
	str r6, [r5, #0x4c]
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	add r0, sp
	adds r0, #0x18
	ldrb r0, [r0]
	strb r0, [r5, #0xd]
	b _0809879A
	.align 2, 0
_0809826C: .4byte 0xFFF60000
_08098270: .4byte 0x00003FFF
_08098274: .4byte 0xFFFFE000
_08098278:
	mov r2, sb
	movs r3, #0x22
	ldrsh r0, [r2, r3]
	mov r4, r8
	movs r2, #0
	ldrsb r2, [r4, r2]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08098290
	b _080984C6
_08098290:
	adds r0, r2, #0
	cmp r0, #8
	bne _08098310
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080982B0
	ldr r0, _080982AC @ =0xFFFFFF00
	ldr r1, [sp, #0x28]
	ands r1, r0
	movs r0, #0xee
	b _080982B8
	.align 2, 0
_080982AC: .4byte 0xFFFFFF00
_080982B0:
	ldr r0, _08098300 @ =0xFFFFFF00
	ldr r1, [sp, #0x28]
	ands r1, r0
	movs r0, #0xec
_080982B8:
	orrs r1, r0
	str r1, [sp, #0x28]
	ldr r1, _08098304 @ =0xFFFF00FF
	ldr r0, [sp, #0x28]
	ands r0, r1
	movs r1, #0xea
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, _08098308 @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0xf0
	lsls r1, r1, #0xd
	orrs r0, r1
	ldr r1, _0809830C @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [sp, #0x28]
	add r4, sp, #0x28
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042848
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428B4
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	b _080984B8
	.align 2, 0
_08098300: .4byte 0xFFFFFF00
_08098304: .4byte 0xFFFF00FF
_08098308: .4byte 0xFF00FFFF
_0809830C: .4byte 0x00FFFFFF
_08098310:
	cmp r0, #1
	bne _080983E4
	ldrb r0, [r5, #0xd]
	movs r1, #3
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	str r0, [sp, #0x2c]
	mov r3, sl
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08098362
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r0, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r0, r4
	rsbs r0, r0, #0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	adds r6, r0, #0
	mov r2, r8
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r0, [r0, #8]
	adds r0, r0, r4
	rsbs r0, r0, #0
	b _0809838E
_08098362:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r0, [r0, #8]
	movs r3, #0xc0
	lsls r3, r3, #8
	adds r0, r0, r3
	bl sub_080009E4
	adds r6, r0, #0
	mov r4, r8
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
_0809838E:
	bl sub_080009E4
	adds r1, r0, #0
	ldr r2, [sp, #0x2c]
	adds r0, r6, #0
	muls r0, r2, r0
	cmp r0, #0
	bge _080983A6
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080983A8
_080983A6:
	asrs r0, r0, #0x10
_080983A8:
	subs r2, r0, #3
	add r0, sp, #0x28
	strb r2, [r0]
	ldr r3, [sp, #0x2c]
	muls r1, r3, r1
	adds r2, r0, #0
	cmp r1, #0
	bge _080983C0
	rsbs r0, r1, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080983C2
_080983C0:
	asrs r0, r1, #0x10
_080983C2:
	subs r0, #3
	strb r0, [r2, #1]
	movs r0, #6
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_08042848
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #0xfb
	ands r0, r1
	b _080984B8
_080983E4:
	cmp r0, #2
	bne _080984D6
	ldrb r1, [r5, #0xd]
	movs r0, #3
	ands r0, r1
	adds r0, #1
	movs r1, #0xd
	adds r4, r0, #0
	muls r4, r1, r4
	str r4, [sp, #0x2c]
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08098438
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r0, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r0, r4
	rsbs r0, r0, #0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	adds r6, r0, #0
	mov r2, r8
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r0, [r0, #8]
	adds r0, r0, r4
	rsbs r0, r0, #0
	b _08098464
_08098438:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r0, [r0, #8]
	movs r3, #0xc0
	lsls r3, r3, #8
	adds r0, r0, r3
	bl sub_080009E4
	adds r6, r0, #0
	mov r4, r8
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
_08098464:
	bl sub_080009E4
	adds r1, r0, #0
	ldr r2, [sp, #0x2c]
	adds r0, r6, #0
	muls r0, r2, r0
	cmp r0, #0
	bge _0809847C
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0809847E
_0809847C:
	asrs r0, r0, #0x10
_0809847E:
	subs r2, r0, #3
	add r0, sp, #0x28
	strb r2, [r0]
	ldr r3, [sp, #0x2c]
	muls r1, r3, r1
	adds r2, r0, #0
	cmp r1, #0
	bge _08098496
	rsbs r0, r1, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08098498
_08098496:
	asrs r0, r1, #0x10
_08098498:
	subs r0, #3
	strb r0, [r2, #1]
	movs r0, #6
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_08042848
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #4
	orrs r0, r1
_080984B8:
	strb r0, [r2]
	add r0, sp, #8
	adds r1, r5, #0
	mov r2, sb
	bl sub_080429D0
	b _080984D6
_080984C6:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
_080984D6:
	mov r4, r8
	ldrb r0, [r4]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #2
	bls _080984EE
	asrs r0, r2, #0x18
	cmp r0, #8
	beq _080984EE
	cmp r0, #0xb
	beq _080984EE
	b _0809879A
_080984EE:
	ldr r0, [r5, #0x48]
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
	b _0809879A
_0809850E:
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #2
	bls _08098528
	asrs r0, r1, #0x18
	cmp r0, #8
	beq _08098528
	cmp r0, #0xb
	beq _08098528
	b _08098638
_08098528:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	b _08098630
_08098530:
	cmp r0, #1
	beq _08098536
	b _08098644
_08098536:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0809854C
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_0809854C:
	ldrb r0, [r5, #0xd]
	bl sub_0806D518
	adds r2, r5, #0
	adds r2, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	ldrb r1, [r2]
	movs r4, #0x21
	rsbs r4, r4, #0
	ands r4, r1
	orrs r4, r0
	strb r4, [r2]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	mov sl, r2
	movs r1, #0x20
	adds r1, r1, r5
	mov r8, r1
	cmp r0, #0x5c
	bne _08098588
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #5
	bne _08098588
	movs r0, #0x20
	orrs r4, r0
	strb r4, [r2]
_08098588:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x32
	bhi _080985A0
	movs r1, #0xc0
	lsls r1, r1, #0xb
	adds r0, r5, #0
	bl sub_0806D3D8
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x18]
_080985A0:
	mov r2, sb
	movs r3, #0x30
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bne _080985DC
	ldrb r1, [r5, #0xd]
	adds r0, r1, #0
	subs r0, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bhi _080985DC
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080985DC
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	ldr r4, _08098640 @ =0xFFFC0000
	adds r1, r1, r4
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_080985DC:
	mov r1, r8
	ldrb r0, [r1]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #2
	bls _080985EE
	asrs r0, r1, #0x18
	cmp r0, #0xb
	bne _0809860C
_080985EE:
	ldr r0, [r5, #0x18]
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
_0809860C:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0809861A
	b _0809879A
_0809861A:
	mov r4, r8
	ldrb r0, [r4]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #2
	bls _0809862C
	asrs r0, r2, #0x18
	cmp r0, #0xb
	bne _08098638
_0809862C:
	mov r1, sl
	ldrb r0, [r1]
_08098630:
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_08098638:
	adds r0, r5, #0
	bl EntityDelete
	b _0809879A
	.align 2, 0
_08098640: .4byte 0xFFFC0000
_08098644:
	cmp r0, #2
	beq _0809864A
	b _0809879A
_0809864A:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _08098660
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_08098660:
	adds r1, r5, #0
	adds r1, #0x58
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldrb r0, [r5, #0xb]
	mov sl, r1
	cmp r0, #1
	bne _080986A0
	ldrb r0, [r5, #0xd]
	cmp r0, #0x32
	bhi _080986A0
	movs r1, #0xc0
	lsls r1, r1, #0xb
	adds r0, r5, #0
	bl sub_0806D3D8
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x14]
	cmp r0, r1
	blt _080986A0
	str r1, [r5, #0x44]
	movs r0, #0
	str r0, [r5, #0x4c]
	str r0, [r5, #0x54]
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_080986A0:
	mov r2, sb
	movs r3, #0x30
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bne _080986DC
	ldrb r1, [r5, #0xd]
	adds r0, r1, #0
	subs r0, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bhi _080986DC
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080986DC
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	ldr r4, _0809871C @ =0xFFFC0000
	adds r1, r1, r4
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_080986DC:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080986EC
	movs r0, #1
	strb r0, [r5, #0xd]
_080986EC:
	ldrb r0, [r5, #0xb]
	adds r1, r0, #0
	cmp r1, #2
	bne _08098738
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0
	strb r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x17
	strb r0, [r1]
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08098720
	ldr r0, [r5, #0x40]
	movs r1, #0x88
	lsls r1, r1, #0xd
	adds r0, r0, r1
	b _08098726
	.align 2, 0
_0809871C: .4byte 0xFFFC0000
_08098720:
	ldr r0, [r5, #0x40]
	ldr r2, _08098734 @ =0xFFEF0000
	adds r0, r0, r2
_08098726:
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r0, r0, r3
	str r0, [r5, #0x44]
	b _0809877C
	.align 2, 0
_08098734: .4byte 0xFFEF0000
_08098738:
	cmp r1, #3
	bne _0809877C
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0809874C
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x7c
	bl PlaySong
_0809874C:
	mov r4, sl
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809876C
	ldr r1, [r5, #0x18]
	movs r0, #0xe0
	lsls r0, r0, #8
	cmp r1, r0
	ble _0809877C
	ldr r2, _08098768 @ =0xFFFFFC00
	adds r0, r1, r2
	b _0809877A
	.align 2, 0
_08098768: .4byte 0xFFFFFC00
_0809876C:
	ldr r1, [r5, #0x18]
	ldr r0, _080987AC @ =0x00011FFF
	cmp r1, r0
	bgt _0809877C
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r1, r3
_0809877A:
	str r0, [r5, #0x18]
_0809877C:
	ldr r0, [r5, #0x18]
	movs r2, #0x80
	lsls r2, r2, #9
	mov r4, sl
	ldrb r1, [r4]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r1, #7
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_0809879A:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080987AC: .4byte 0x00011FFF

	thumb_func_start sub_080987B0
sub_080987B0: @ 0x080987B0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _080987D0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080987D4 @ =0x0000A094
	adds r2, r0, r1
	ldrb r0, [r5, #0xd]
	subs r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r1, #0x18
	cmp r0, #0
	bgt _080987D8
	adds r0, r5, #0
	bl EntityDelete
	b _08098846
	.align 2, 0
_080987D0: .4byte gEwramData
_080987D4: .4byte 0x0000A094
_080987D8:
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08098800
	ldr r1, [r5, #0x40]
	ldr r0, [r2, #4]
	adds r7, r1, r0
	ldr r0, [r5, #0x1c]
	subs r7, r0, r7
	ldr r1, [r5, #0x44]
	ldr r0, [r2, #8]
	adds r6, r1, r0
	ldr r0, [r5, #0x20]
	subs r6, r0, r6
	cmp r3, #1
	beq _0809883A
	ldrb r4, [r5, #0xd]
	subs r4, #1
	lsls r4, r4, #1
	b _08098826
_08098800:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x35
	strb r0, [r1]
	ldr r1, [r5, #0x40]
	ldr r0, [r2, #4]
	adds r7, r1, r0
	ldr r0, [r5, #0x14]
	subs r7, r0, r7
	ldr r1, [r5, #0x44]
	ldr r0, [r2, #8]
	adds r6, r1, r0
	ldr r0, [r5, #0x18]
	subs r6, r0, r6
	ldrb r0, [r5, #0xd]
	cmp r0, #1
	beq _0809883A
	adds r4, r0, #0
	subs r4, #1
_08098826:
	adds r0, r7, #0
	adds r1, r4, #0
	bl __divsi3
	adds r7, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl __divsi3
	adds r6, r0, #0
_0809883A:
	ldr r0, [r5, #0x40]
	adds r0, r0, r7
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r6
	str r0, [r5, #0x44]
_08098846:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809884C
sub_0809884C: @ 0x0809884C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r5, r0, #0
	mov r8, r1
	mov sb, r2
	str r3, [sp, #0x18]
	ldr r0, _0809889C @ =0x0808FCFC
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r0, #0x58
	str r0, [sp, #0x1c]
	movs r1, #0x5c
	adds r1, r1, r5
	mov sl, r1
	movs r4, #0
	movs r7, #7
_08098874:
	bl RandomNumberGenerator
	ldr r1, _080988A0 @ =0x0001FFFF
	ands r1, r0
	ldr r0, _080988A4 @ =0xFFFF0000
	adds r6, r1, r0
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080988AC
	bl RandomNumberGenerator
	ldr r1, _080988A8 @ =0x00007FFF
	ands r1, r0
	rsbs r1, r1, #0
	subs r3, r1, r4
	b _080988B6
	.align 2, 0
_0809889C: .4byte 0x0808FCFC
_080988A0: .4byte 0x0001FFFF
_080988A4: .4byte 0xFFFF0000
_080988A8: .4byte 0x00007FFF
_080988AC:
	bl RandomNumberGenerator
	ldr r1, _08098910 @ =0x00007FFF
	ands r1, r0
	adds r3, r1, r4
_080988B6:
	ldr r0, [r5, #0x40]
	add r0, r8
	ldr r1, [r5, #0x44]
	add r1, sb
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #0x14
	str r2, [sp, #8]
	movs r2, #0xf
	str r2, [sp, #0xc]
	movs r2, #6
	str r2, [sp, #0x10]
	adds r2, r3, #0
	adds r3, r6, #0
	bl sub_0806D9CC
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r4, r4, r1
	subs r7, #1
	cmp r7, #0
	bge _08098874
	ldr r2, _08098914 @ =sub_080989DC
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080989BC
	ldr r0, _08098918 @ =0x081CC044
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	bge _0809891C
	adds r0, r4, #0
	bl EntityDelete
	b _080989BC
	.align 2, 0
_08098910: .4byte 0x00007FFF
_08098914: .4byte sub_080989DC
_08098918: .4byte 0x081CC044
_0809891C:
	ldr r1, _080989CC @ =0x082232B8
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r0, _080989D0 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r2, _080989D4 @ =sub_08098DB4
	ldr r3, _080989D8 @ =sub_08098DF0
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0804277C
	adds r0, r4, #0
	add r1, sp, #0x14
	bl sub_08042848
	adds r0, r4, #0
	add r1, sp, #0x14
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
	mov r1, sl
	ldrb r0, [r1]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	str r5, [r4, #0x14]
	ldr r0, [r5, #0x40]
	add r0, r8
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	add r0, sb
	str r0, [r4, #0x44]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x48]
	ldr r0, [sp, #0x40]
	str r0, [r4, #0x4c]
	ldr r1, [sp, #0x1c]
	ldrb r0, [r1]
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
_080989BC:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080989CC: .4byte 0x082232B8
_080989D0: .4byte sub_0803B9D0
_080989D4: .4byte sub_08098DB4
_080989D8: .4byte sub_08098DF0

	thumb_func_start sub_080989DC
sub_080989DC: @ 0x080989DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _080989F8
	cmp r0, #1
	bne _080989F6
	b _08098AFE
_080989F6:
	b _08098BAC
_080989F8:
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	bne _08098A1C
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08098A1C
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_08098A1C:
	adds r0, r7, #0
	bl sub_0806D3AC
	adds r0, r7, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _08098A36
	adds r0, r7, #0
	bl EntityDelete
	b _08098BAC
_08098A36:
	adds r0, r7, #0
	bl sub_0803F17C
	add r0, sp, #8
	adds r1, r7, #0
	bl sub_080421AC
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08098A54
	b _08098BAC
_08098A54:
	ldr r0, [r7, #0x18]
	bl sub_080009E4
	lsls r0, r0, #1
	mov r8, r0
	ldr r0, [r7, #0x18]
	bl sub_080009E4
	lsls r6, r0, #1
	movs r0, #0x80
	lsls r0, r0, #0xa
	adds r6, r6, r0
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08098A90
	ldr r0, [r7, #0x18]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	rsbs r0, r0, #0
	lsls r5, r0, #2
	movs r3, #0xc0
	lsls r3, r3, #0xc
	b _08098AA0
_08098A90:
	ldr r0, [r7, #0x18]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	lsls r5, r0, #2
	ldr r3, _08098ACC @ =0xFFF40000
_08098AA0:
	adds r5, r5, r3
	ldrh r4, [r7, #0x18]
	ldr r0, _08098AD0 @ =0xFFFFBFFF
	adds r1, r4, r0
	ldr r0, _08098AD4 @ =0x00007FFE
	cmp r1, r0
	bhi _08098AD8
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r1, r1, r6
	adds r2, r7, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	adds r2, #1
	str r2, [sp]
	movs r2, #0
	mov r3, r8
	bl sub_0806D6CC
	b _08098AF2
	.align 2, 0
_08098ACC: .4byte 0xFFF40000
_08098AD0: .4byte 0xFFFFBFFF
_08098AD4: .4byte 0x00007FFE
_08098AD8:
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldr r1, [r7, #0x44]
	adds r1, r1, r6
	adds r2, r7, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	movs r2, #0
	mov r3, r8
	bl sub_0806D6CC
_08098AF2:
	ldr r0, [r7, #0x18]
	movs r1, #0x90
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r7, #0x18]
	b _08098BAC
_08098AFE:
	movs r3, #0x80
	lsls r3, r3, #9
	mov r8, r3
	movs r0, #0x5c
	adds r0, r0, r7
	mov sb, r0
	movs r1, #2
	mov sl, r1
_08098B0E:
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r3, _08098BBC @ =0x0000FFFF
	ands r4, r3
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_080009E4
	adds r6, r0, #0
	adds r0, r5, #0
	mov r1, r8
	bl sub_0803E86C
	adds r5, r0, #0
	adds r0, r6, #0
	mov r1, r8
	bl sub_0803E86C
	adds r6, r0, #0
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	mov r3, sb
	ldrb r2, [r3]
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0806D894
	bl RandomNumberGenerator
	adds r4, r0, #0
	ldr r0, _08098BBC @ =0x0000FFFF
	ands r4, r0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_080009E4
	adds r6, r0, #0
	adds r0, r5, #0
	mov r1, r8
	bl sub_0803E86C
	adds r5, r0, #0
	adds r0, r6, #0
	mov r1, r8
	bl sub_0803E86C
	adds r6, r0, #0
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	mov r3, sb
	ldrb r2, [r3]
	str r2, [sp]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0806D644
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
	mov r1, sl
	cmp r1, #0
	bge _08098B0E
	adds r0, r7, #0
	bl EntityDelete
_08098BAC:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08098BBC: .4byte 0x0000FFFF

	thumb_func_start sub_08098BC0
sub_08098BC0: @ 0x08098BC0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _08098BDA
	movs r4, #0
_08098BCC:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08097B94
	adds r4, #1
	cmp r4, #0xc
	ble _08098BCC
_08098BDA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08098BE0
sub_08098BE0: @ 0x08098BE0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _08098C00
	movs r4, #0
_08098BEE:
	adds r0, r6, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r5, #0
	bl sub_08097B94
	adds r4, #1
	cmp r4, #0xc
	ble _08098BEE
_08098C00:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08098C08
sub_08098C08: @ 0x08098C08
	ldr r2, [r0, #0x1c]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0

	thumb_func_start sub_08098C1C
sub_08098C1C: @ 0x08098C1C
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xc
_08098C22:
	ldr r0, [r1]
	str r0, [r1, #0x20]
	ldr r0, [r1, #4]
	str r0, [r1, #0x24]
	adds r1, #0x30
	subs r2, #1
	cmp r2, #0
	bge _08098C22
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08098C38
sub_08098C38: @ 0x08098C38
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0xc
_08098C3E:
	ldr r0, [r1, #0x20]
	str r0, [r1]
	ldr r0, [r1, #0x24]
	str r0, [r1, #4]
	adds r1, #0x30
	subs r2, #1
	cmp r2, #0
	bge _08098C3E
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08098C54
sub_08098C54: @ 0x08098C54
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

	thumb_func_start sub_08098C84
sub_08098C84: @ 0x08098C84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r5, [r6, #0x1c]
	ldr r0, [r5, #0x40]
	mov sb, r0
	ldr r1, [r5, #0x44]
	mov sl, r1
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	ldrh r0, [r2, #4]
	bl sub_08021530
	adds r3, r0, #0
	ldr r0, [r6, #0x1c]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r1, r7, #0
	mov r2, r8
	bl sub_0806B7D8
	adds r4, r0, #0
	mov r0, sb
	str r0, [r5, #0x40]
	mov r1, sl
	str r1, [r5, #0x44]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08042B8C
	ldr r0, [r6, #0x1c]
	adds r1, r7, #0
	mov r2, r8
	adds r3, r4, #0
	bl sub_08097FFC
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08098CF0
sub_08098CF0: @ 0x08098CF0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r0, _08098D9C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08098DA0 @ =0x0000A094
	adds r5, r0, r1
	ldr r2, _08098DA4 @ =sub_080987B0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08098D90
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x40]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x44]
	mov r0, sb
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, [r5, #4]
	adds r0, r6, r0
	str r0, [r4, #0x14]
	ldr r0, [r5, #8]
	adds r0, r7, r0
	str r0, [r4, #0x18]
	ldr r0, [r5, #4]
	add r0, r8
	str r0, [r4, #0x1c]
	ldr r1, [r5, #8]
	ldr r0, [sp, #0x1c]
	adds r0, r0, r1
	str r0, [r4, #0x20]
	ldr r0, _08098DA8 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08098DAC @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x66
	strb r0, [r1]
	mov r0, sb
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
	movs r0, #0x14
	strb r0, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08098DB0 @ =sub_0803B9D0
	str r0, [r4, #4]
_08098D90:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08098D9C: .4byte gEwramData
_08098DA0: .4byte 0x0000A094
_08098DA4: .4byte sub_080987B0
_08098DA8: .4byte 0x081C15F4
_08098DAC: .4byte 0x0820ED60
_08098DB0: .4byte sub_0803B9D0

	thumb_func_start sub_08098DB4
sub_08098DB4: @ 0x08098DB4
	push {r4, r5, lr}
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
	mov r1, sp
	movs r5, #1
	movs r0, #1
	strh r0, [r1, #6]
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	strb r5, [r4, #0xa]
	movs r0, #0x76
	bl PlaySong
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08098DF0
sub_08098DF0: @ 0x08098DF0
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xa]
	movs r0, #0x76
	bl PlaySong
	pop {r0}
	bx r0

	thumb_func_start sub_08098E00
sub_08098E00: @ 0x08098E00
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08098E18 @ =0x081CC044
	movs r1, #0
	bl sub_0803B800
	adds r6, r0, #0
	cmp r6, #0
	bge _08098E1C
	movs r0, #0
	b _08098E60
	.align 2, 0
_08098E18: .4byte 0x081CC044
_08098E1C:
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x21
	bne _08098E3C
	ldr r0, _08098E38 @ =0x0820AB38
	movs r1, #0
	bl sub_08068264
	adds r1, r5, #0
	adds r1, #0x2c
	strb r0, [r1]
	adds r4, r1, #0
	b _08098E4E
	.align 2, 0
_08098E38: .4byte 0x0820AB38
_08098E3C:
	adds r4, r5, #0
	adds r4, #0x2c
	cmp r0, #0x5c
	bne _08098E4E
	ldr r0, _08098E68 @ =0x0820AB38
	movs r1, #1
	bl sub_08068264
	strb r0, [r4]
_08098E4E:
	ldr r1, _08098E6C @ =0x082232B8
	ldrb r3, [r4]
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_0803B924
	ldr r0, _08098E70 @ =sub_0803B9D0
	str r0, [r5, #4]
	movs r0, #1
_08098E60:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08098E68: .4byte 0x0820AB38
_08098E6C: .4byte 0x082232B8
_08098E70: .4byte sub_0803B9D0

	thumb_func_start sub_08098E74
sub_08098E74: @ 0x08098E74
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

	thumb_func_start sub_08098EA4
sub_08098EA4: @ 0x08098EA4
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
	bl sub_08097FFC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start EnemyGiantSkeletonUpdate
EnemyGiantSkeletonUpdate: @ 0x08098EEC
	push {lr}
	bl EnemyCreakingSkullUpdate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyGiantSkeletonCreate
EnemyGiantSkeletonCreate: @ 0x08098EF8
	push {lr}
	bl EnemyCreakingSkullCreate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyMimicUpdate
EnemyMimicUpdate: @ 0x08098F04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r0, _08098F34 @ =0x08119090
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	movs r0, #0
	strb r0, [r5, #0x18]
	adds r0, r5, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _08098FB2
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _08098F46
	cmp r0, #1
	bgt _08098F38
	cmp r0, #0
	beq _08098F3E
	b _08098F5C
	.align 2, 0
_08098F34: .4byte 0x08119090
_08098F38:
	cmp r0, #2
	beq _08098F4E
	b _08098F5C
_08098F3E:
	adds r0, r5, #0
	bl sub_080990D8
	b _08098F5C
_08098F46:
	adds r0, r5, #0
	bl sub_0806AEAC
	b _08098F5C
_08098F4E:
	adds r0, r5, #0
	bl sub_08099480
	adds r0, r5, #0
	bl sub_0803F17C
	b _08098FB2
_08098F5C:
	adds r2, r5, #0
	adds r2, #0x65
	ldrb r7, [r2]
	ldrb r1, [r5, #0x18]
	movs r0, #2
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08098F88
	add r4, sp, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F0E4
	ldrb r0, [r5, #0x19]
	strb r0, [r4, #4]
	adds r0, r5, #0
	bl sub_0803F17C
	b _08098F8E
_08098F88:
	adds r0, r5, #0
	bl sub_0803F17C
_08098F8E:
	ldrb r6, [r6]
	cmp r7, r6
	beq _08098F9A
	adds r0, r5, #0
	bl sub_0806B1FC
_08098F9A:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _08098FB2
	ldrb r1, [r5, #0x18]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08098FB2
	mov r0, sp
	adds r1, r5, #0
	bl sub_080421AC
_08098FB2:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyMimicCreate
EnemyMimicCreate: @ 0x08098FBC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08098FDC @ =0x0E10F2F8
	str r0, [sp]
	adds r0, r6, #0
	bl sub_08099430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08098FE0
	adds r0, r6, #0
	bl EntityDelete
	b _080990CE
	.align 2, 0
_08098FDC: .4byte 0x0E10F2F8
_08098FE0:
	adds r0, r6, #0
	bl sub_0806B04C
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08099020 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08099024
	movs r0, #2
	strb r0, [r6, #0xa]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	b _080990CE
	.align 2, 0
_08099020: .4byte gEwramData
_08099024:
	adds r0, r6, #0
	bl sub_0806D260
	cmp r0, #1
	ble _08099044
	ldr r2, _0809903C @ =sub_080994B0
	ldr r3, _08099040 @ =sub_0809922C
	adds r0, r6, #0
	movs r1, #8
	bl sub_080427B8
	b _08099050
	.align 2, 0
_0809903C: .4byte sub_080994B0
_08099040: .4byte sub_0809922C
_08099044:
	ldr r2, _08099098 @ =sub_080994B0
	ldr r3, _0809909C @ =sub_0809922C
	adds r0, r6, #0
	movs r1, #8
	bl sub_0804277C
_08099050:
	movs r0, #0x30
	ldrsh r4, [r6, r0]
	cmp r4, #0
	beq _080990A0
	ldrb r0, [r6, #0x18]
	movs r5, #2
	movs r4, #0
	orrs r0, r5
	strb r0, [r6, #0x18]
	strb r4, [r6, #0x19]
	adds r0, r6, #0
	adds r0, #0x65
	strb r4, [r0]
	adds r0, r6, #0
	mov r1, sp
	bl sub_080428B4
	adds r0, r6, #0
	mov r1, sp
	bl sub_08042848
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	orrs r0, r5
	strb r0, [r2]
	strb r4, [r6, #0xa]
	movs r0, #3
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	bl sub_0806AF98
	b _080990CE
	.align 2, 0
_08099098: .4byte sub_080994B0
_0809909C: .4byte sub_0809922C
_080990A0:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	ldrb r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	bl sub_080992C8
	adds r0, r6, #0
	bl sub_0806B1FC
	strb r4, [r6, #0xa]
	strb r4, [r6, #0xb]
_080990CE:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

