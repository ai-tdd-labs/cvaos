	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_080809C0
sub_080809C0: @ 0x080809C0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080809E4 @ =0x08118EFB
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldrb r0, [r4, #0xb]
	cmp r0, #0x29
	bls _080809D8
	b _08080D50
_080809D8:
	lsls r0, r0, #2
	ldr r1, _080809E8 @ =_080809EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080809E4: .4byte 0x08118EFB
_080809E8: .4byte _080809EC
_080809EC: @ jump table
	.4byte _08080A94 @ case 0
	.4byte _08080AB4 @ case 1
	.4byte _08080AD0 @ case 2
	.4byte _08080AF8 @ case 3
	.4byte _08080B1E @ case 4
	.4byte _08080B3A @ case 5
	.4byte _08080B62 @ case 6
	.4byte _08080D50 @ case 7
	.4byte _08080D50 @ case 8
	.4byte _08080D50 @ case 9
	.4byte _08080D50 @ case 10
	.4byte _08080D50 @ case 11
	.4byte _08080D50 @ case 12
	.4byte _08080D50 @ case 13
	.4byte _08080D50 @ case 14
	.4byte _08080D50 @ case 15
	.4byte _08080D50 @ case 16
	.4byte _08080D50 @ case 17
	.4byte _08080D50 @ case 18
	.4byte _08080D50 @ case 19
	.4byte _08080B7C @ case 20
	.4byte _08080B98 @ case 21
	.4byte _08080BC0 @ case 22
	.4byte _08080CC2 @ case 23
	.4byte _08080BE8 @ case 24
	.4byte _08080C08 @ case 25
	.4byte _08080C30 @ case 26
	.4byte _08080CC2 @ case 27
	.4byte _08080C58 @ case 28
	.4byte _08080C76 @ case 29
	.4byte _08080C9C @ case 30
	.4byte _08080CC2 @ case 31
	.4byte _08080CE0 @ case 32
	.4byte _08080D50 @ case 33
	.4byte _08080D50 @ case 34
	.4byte _08080D50 @ case 35
	.4byte _08080D50 @ case 36
	.4byte _08080D50 @ case 37
	.4byte _08080D50 @ case 38
	.4byte _08080D50 @ case 39
	.4byte _08080CF4 @ case 40
	.4byte _08080D3A @ case 41
_08080A94:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _08080AA4
	b _08080D50
_08080AA4:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [r4, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r4, #0xd]
	b _08080AEE
_08080AB4:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080AC8
	b _08080D50
_08080AC8:
	ldr r0, [r4, #0x24]
	add r0, sp
	ldrb r0, [r0]
	b _08080AE6
_08080AD0:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080AE4
	b _08080D50
_08080AE4:
	movs r0, #0x28
_08080AE6:
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_08080AEE:
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	b _08080D50
_08080AF8:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080B06
	b _08080D50
_08080B06:
	ldr r0, [r4, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	b _08080D50
_08080B1E:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080B32
	b _08080D50
_08080B32:
	ldr r0, [r4, #0x24]
	add r0, sp
	ldrb r0, [r0]
	b _08080B50
_08080B3A:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080B4E
	b _08080D50
_08080B4E:
	movs r0, #0x28
_08080B50:
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	b _08080D50
_08080B62:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080B70
	b _08080D50
_08080B70:
	ldr r0, [r4, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r4, #0xd]
	movs r1, #1
	b _08080D06
_08080B7C:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _08080B8C
	b _08080D50
_08080B8C:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x14
	strb r0, [r4, #0xd]
	b _08080BDE
_08080B98:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080BAC
	b _08080D50
_08080BAC:
	movs r0, #4
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #8
	strb r0, [r1]
	b _08080D50
_08080BC0:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080BD4
	b _08080D50
_08080BD4:
	movs r0, #4
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_08080BDE:
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #6
	strb r0, [r1]
	b _08080D50
_08080BE8:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080BFC
	b _08080D50
_08080BFC:
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x14
	strb r0, [r4, #0xd]
	b _08080C4E
_08080C08:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080C1C
	b _08080D50
_08080C1C:
	movs r0, #4
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #9
	strb r0, [r1]
	b _08080D50
_08080C30:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08080C44
	b _08080D50
_08080C44:
	movs r0, #4
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_08080C4E:
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	b _08080D50
_08080C58:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08080D50
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x14
	strb r0, [r4, #0xd]
	b _08080CB8
_08080C76:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08080D50
	movs r0, #4
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0xa
	strb r0, [r1]
	b _08080D50
_08080C9C:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08080D50
	movs r0, #4
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_08080CB8:
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	b _08080D50
_08080CC2:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08080D50
	movs r0, #0x14
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _08080D50
_08080CE0:
	adds r0, r4, #0
	bl sub_0808197C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08080D50
	b _08080CFC
_08080CF4:
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	cmp r0, #1
	ble _08080D10
_08080CFC:
	ldr r0, [r4, #0x24]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r4, #0xd]
	movs r1, #2
_08080D06:
	strb r1, [r4, #0xb]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	b _08080D50
_08080D10:
	bl RandomNumberGenerator
	movs r1, #0x3c
	bl __umodsi3
	adds r5, r0, #0
	cmp r5, #0
	bne _08080D50
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_080819E0
	strb r5, [r4, #0xd]
	ldrb r0, [r4, #0x19]
	adds r0, #1
	strb r0, [r4, #0x19]
	b _08080D50
_08080D3A:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08080D50
	movs r1, #0
	movs r0, #0x28
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
_08080D50:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08080D58
sub_08080D58: @ 0x08080D58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r3, r1, #0
	ldr r0, [r0, #0x1c]
	str r0, [sp]
	ldr r1, _08080DBC @ =0x08527048
	mov r0, sl
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r4, [r1]
	ldr r1, _08080DC0 @ =0x08527354
	adds r0, r0, r1
	ldr r0, [r0]
	mov sb, r0
	lsls r0, r3, #5
	ldr r2, [sp]
	adds r1, r0, r2
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _08080E84
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bne _08080E84
	mov r2, sl
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	str r2, [sp, #4]
	cmp r0, #0
	beq _08080DC4
	lsls r1, r3, #1
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	rsbs r7, r0, #0
	adds r0, r1, #0
	b _08080DD0
	.align 2, 0
_08080DBC: .4byte 0x08527048
_08080DC0: .4byte 0x08527354
_08080DC4:
	lsls r0, r3, #1
	adds r1, r0, r4
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r7, r1, #0x10
_08080DD0:
	adds r0, r0, r4
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r2, r0, #0x10
	lsls r0, r3, #5
	mov r8, r0
	ldr r6, [sp]
	add r6, r8
	ldr r4, [r6]
	subs r7, r7, r4
	ldr r5, [r6, #4]
	subs r2, r2, r5
	mov r0, sl
	ldrb r1, [r0, #0xd]
	adds r0, r7, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	bl __divsi3
	adds r4, r4, r0
	str r4, [r6]
	mov r0, sl
	ldrb r1, [r0, #0xd]
	ldr r2, [sp, #8]
	adds r0, r2, #0
	bl __divsi3
	adds r5, r5, r0
	str r5, [r6, #4]
	mov r5, r8
	ldr r3, [sp, #0xc]
	cmp r3, #1
	beq _08080E2E
	cmp r3, #3
	beq _08080E2A
	cmp r3, #4
	beq _08080E2A
	cmp r3, #5
	beq _08080E2A
	cmp r3, #8
	beq _08080E2A
	cmp r3, #0xa
	beq _08080E2A
	b _08080F72
_08080E2A:
	cmp r3, #1
	bne _08080E34
_08080E2E:
	mov r1, sb
	ldr r7, [r1]
	b _08080E64
_08080E34:
	cmp r3, #3
	bne _08080E3E
	mov r2, sb
	ldr r7, [r2, #4]
	b _08080E64
_08080E3E:
	cmp r3, #4
	bne _08080E48
	mov r0, sb
	ldr r7, [r0, #8]
	b _08080E64
_08080E48:
	cmp r3, #5
	bne _08080E52
	mov r1, sb
	ldr r7, [r1, #0xc]
	b _08080E64
_08080E52:
	cmp r3, #8
	bne _08080E5C
	mov r2, sb
	ldr r7, [r2, #0x10]
	b _08080E64
_08080E5C:
	cmp r3, #0xa
	bne _08080E64
	mov r0, sb
	ldr r7, [r0, #0x14]
_08080E64:
	ldr r2, [sp, #4]
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08080E76
	movs r0, #0x80
	lsls r0, r0, #0xa
	subs r7, r0, r7
_08080E76:
	ldr r0, [sp]
	adds r5, r5, r0
	ldr r4, [r5, #8]
	subs r7, r7, r4
	mov r2, sl
	ldrb r1, [r2, #0xd]
	b _08080F68
_08080E84:
	lsls r5, r3, #5
	ldr r0, [sp]
	adds r6, r5, r0
	ldr r7, [r6, #0xc]
	ldr r4, [r6, #0x10]
	subs r7, r7, r4
	mov r2, sl
	ldrb r1, [r2, #0xd]
	adds r0, r7, #0
	str r3, [sp, #0xc]
	bl __divsi3
	adds r4, r4, r0
	str r4, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #7
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_080009E4
	adds r7, r0, #0
	ldr r0, [r6, #0x10]
	bl sub_080009E4
	adds r2, r0, #0
	ldr r1, [r6, #0x1c]
	adds r0, r7, #0
	str r2, [sp, #8]
	bl sub_0803E86C
	adds r7, r0, #0
	ldr r1, [r6, #0x1c]
	ldr r2, [sp, #8]
	adds r0, r2, #0
	bl sub_0803E86C
	adds r2, r0, #0
	ldr r1, [r6, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x18
	ldr r3, [sp, #0xc]
	cmp r1, r0
	bne _08080EEC
	ldr r0, [r6, #0x18]
	lsls r0, r0, #5
	ldr r1, [sp]
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, r1, r7
	str r1, [r6]
	ldr r0, [r0, #4]
	b _08080EF2
_08080EEC:
	adds r0, r1, r7
	str r0, [r6]
	ldr r0, [r6, #0x18]
_08080EF2:
	adds r0, r0, r2
	str r0, [r6, #4]
	cmp r3, #1
	beq _08080F12
	cmp r3, #3
	beq _08080F0E
	cmp r3, #4
	beq _08080F0E
	cmp r3, #5
	beq _08080F0E
	cmp r3, #8
	beq _08080F0E
	cmp r3, #0xa
	bne _08080F72
_08080F0E:
	cmp r3, #1
	bne _08080F18
_08080F12:
	mov r2, sb
	ldr r7, [r2]
	b _08080F48
_08080F18:
	cmp r3, #3
	bne _08080F22
	mov r0, sb
	ldr r7, [r0, #4]
	b _08080F48
_08080F22:
	cmp r3, #4
	bne _08080F2C
	mov r1, sb
	ldr r7, [r1, #8]
	b _08080F48
_08080F2C:
	cmp r3, #5
	bne _08080F36
	mov r2, sb
	ldr r7, [r2, #0xc]
	b _08080F48
_08080F36:
	cmp r3, #8
	bne _08080F40
	mov r0, sb
	ldr r7, [r0, #0x10]
	b _08080F48
_08080F40:
	cmp r3, #0xa
	bne _08080F48
	mov r1, sb
	ldr r7, [r1, #0x14]
_08080F48:
	mov r0, sl
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08080F5C
	movs r0, #0x80
	lsls r0, r0, #0xa
	subs r7, r0, r7
_08080F5C:
	ldr r2, [sp]
	adds r5, r5, r2
	ldr r4, [r5, #8]
	subs r7, r7, r4
	mov r0, sl
	ldrb r1, [r0, #0xd]
_08080F68:
	adds r0, r7, #0
	bl __divsi3
	adds r4, r4, r0
	str r4, [r5, #8]
_08080F72:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08080F84
sub_08080F84: @ 0x08080F84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x58
	ldrb r4, [r5]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1f
	bl sub_0806CF2C
	cmp r4, r0
	beq _0808100C
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
	ldr r1, [r6, #0x1c]
	movs r0, #0x20
	adds r0, r0, r1
	mov ip, r0
	movs r7, #0x60
	adds r7, r7, r1
	mov sb, r7
	adds r6, r1, #0
	adds r6, #0x80
	adds r5, r1, #0
	adds r5, #0xa0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r1, r0
	movs r7, #0xa0
	lsls r7, r7, #1
	adds r2, r1, r7
	adds r3, r2, #0
	movs r0, #0x80
	lsls r0, r0, #0xa
	mov r8, r0
_08080FE0:
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
	cmp r1, ip
	beq _08080FFE
	cmp r1, sb
	beq _08080FFE
	cmp r1, r6
	beq _08080FFE
	cmp r1, r5
	beq _08080FFE
	cmp r1, r4
	beq _08080FFE
	cmp r1, r2
	bne _08081006
_08080FFE:
	ldr r0, [r1, #8]
	mov r7, r8
	subs r0, r7, r0
	str r0, [r1, #8]
_08081006:
	adds r1, #0x20
	cmp r1, r3
	ble _08080FE0
_0808100C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08081018
sub_08081018: @ 0x08081018
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	str r1, [sp]
	mov sb, r3
	ldr r1, [sp, #0x24]
	ldr r0, [r0, #0x1c]
	mov r8, r0
	ldr r3, [sp]
	lsls r0, r3, #5
	mov r3, r8
	adds r7, r0, r3
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #0x14]
	str r2, [r7, #0x18]
	cmp r1, #0
	beq _0808104A
	str r1, [r7, #0x1c]
	lsls r3, r2, #5
	b _0808107E
_0808104A:
	lsls r4, r2, #5
	mov r0, r8
	adds r2, r4, r0
	ldr r1, [r2]
	ldr r0, [r7]
	subs r5, r1, r0
	ldr r1, [r2, #4]
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
	str r0, [r7, #0x1c]
	adds r3, r4, #0
_0808107E:
	ldr r1, [sp]
	lsls r4, r1, #5
	mov r0, r8
	adds r2, r4, r0
	add r3, r8
	ldr r1, [r2]
	ldr r0, [r3]
	subs r5, r1, r0
	ldr r1, [r2, #4]
	ldr r0, [r3, #4]
	subs r6, r1, r0
	cmp r5, #0
	bge _080810A4
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _080810A6
_080810A4:
	asrs r2, r5, #0x10
_080810A6:
	cmp r6, #0
	bge _080810B6
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080810B8
_080810B6:
	asrs r1, r6, #0x10
_080810B8:
	adds r0, r2, #0
	bl ArcTan2
	mov r1, r8
	adds r3, r4, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r0, r1
	str r2, [r3, #0x10]
	ldr r0, _080810EC @ =0x0000FFFF
	cmp sb, r0
	ble _080810FE
	mov r0, sl
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080810F0
	movs r0, #0xa0
	lsls r0, r0, #0xa
	mov r1, sb
	subs r0, r0, r1
	b _080810F2
	.align 2, 0
_080810EC: .4byte 0x0000FFFF
_080810F0:
	mov r0, sb
_080810F2:
	str r0, [r3, #0xc]
	mov r3, r8
	adds r1, r4, r3
	ldr r0, [r1, #0xc]
	str r0, [r1, #0x10]
	b _08081118
_080810FE:
	mov r0, sl
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08081112
	mov r1, sb
	subs r0, r2, r1
	b _08081116
_08081112:
	mov r1, sb
	adds r0, r2, r1
_08081116:
	str r0, [r3, #0xc]
_08081118:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08081128
sub_08081128: @ 0x08081128
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x50
	bne _0808113C
	ldr r0, _08081138 @ =0x081CBFB4
	b _0808113E
	.align 2, 0
_08081138: .4byte 0x081CBFB4
_0808113C:
	ldr r0, _08081150 @ =0x081CBFAC
_0808113E:
	movs r1, #0
	bl sub_0803B800
	adds r6, r0, #0
	cmp r6, #0
	bge _08081154
	movs r0, #0
	b _080811B8
	.align 2, 0
_08081150: .4byte 0x081CBFAC
_08081154:
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x35
	bne _08081168
	ldr r0, _08081164 @ =0x0820A6FC
	movs r1, #0
	b _08081180
	.align 2, 0
_08081164: .4byte 0x0820A6FC
_08081168:
	cmp r0, #0x65
	bne _08081178
	ldr r0, _08081174 @ =0x0820A6FC
	movs r1, #1
	b _08081180
	.align 2, 0
_08081174: .4byte 0x0820A6FC
_08081178:
	cmp r0, #0x22
	bne _08081194
	ldr r0, _08081190 @ =0x0820A6FC
	movs r1, #2
_08081180:
	bl sub_08068264
	adds r1, r5, #0
	adds r1, #0x2c
	strb r0, [r1]
	adds r4, r1, #0
	b _080811A6
	.align 2, 0
_08081190: .4byte 0x0820A6FC
_08081194:
	adds r4, r5, #0
	adds r4, #0x2c
	cmp r0, #0x50
	bne _080811A6
	ldr r0, _080811C0 @ =0x0820A6FC
	movs r1, #3
	bl sub_08068264
	strb r0, [r4]
_080811A6:
	ldr r1, _080811C4 @ =0x08219804
	ldrb r3, [r4]
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_0803B924
	ldr r0, _080811C8 @ =sub_0803B9D0
	str r0, [r5, #4]
	movs r0, #1
_080811B8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080811C0: .4byte 0x0820A6FC
_080811C4: .4byte 0x08219804
_080811C8: .4byte sub_0803B9D0

	thumb_func_start sub_080811CC
sub_080811CC: @ 0x080811CC
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
	bgt _08081242
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x71
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
	movs r0, #0x4a
	strb r0, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
_08081242:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08081248
sub_08081248: @ 0x08081248
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
	movs r1, #1
	strh r1, [r0, #6]
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	movs r0, #0x18
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _0808127A
	cmp r0, #1
	beq _08081284
	b _080812AE
_0808127A:
	mov r0, sp
	strh r1, [r0, #6]
	bl sub_08021654
	b _080812AE
_08081284:
	mov r1, sp
	movs r0, #3
	strh r0, [r1, #6]
	mov r0, sp
	bl sub_08021654
	ldr r2, _080812BC @ =0xFFFD0000
	ldr r0, _080812C0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080812C4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	ble _080812A6
	rsbs r2, r2, #0
_080812A6:
	ldr r1, _080812C8 @ =0xFFFA0000
	adds r0, r2, #0
	bl sub_08021248
_080812AE:
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080812BC: .4byte 0xFFFD0000
_080812C0: .4byte gEwramData
_080812C4: .4byte 0x00013110
_080812C8: .4byte 0xFFFA0000

	thumb_func_start sub_080812CC
sub_080812CC: @ 0x080812CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r6, [r5, #0x1c]
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080812E2
	b _080815E2
_080812E2:
	cmp r6, #0
	bne _080812E8
	b _080815AC
_080812E8:
	ldr r0, [r6]
	cmp r0, #0
	bne _080812F0
	b _080815AC
_080812F0:
	adds r0, r6, #0
	adds r0, #0x36
	adds r1, r5, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08081302
	b _080815AC
_08081302:
	ldr r7, [r6, #0x1c]
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
	adds r0, r6, #0
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
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r1, [r6, #0x40]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r1, [r6, #0x44]
	ldr r0, [r0, #4]
	adds r1, r1, r0
	str r1, [r5, #0x44]
	movs r0, #0
	ldrsb r0, [r2, r0]
	mov sb, r3
	mov r8, r2
	cmp r0, #0
	beq _08081378
	cmp r0, #2
	beq _08081378
	cmp r0, #7
	beq _08081378
	cmp r0, #9
	bne _080813E4
_08081378:
	ldrb r1, [r6, #0xa]
	cmp r1, #0
	bne _08081384
	ldrb r0, [r6, #0xb]
	cmp r0, #0x13
	bhi _080813E0
_08081384:
	adds r0, r5, #0
	adds r0, #0x21
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #5
	adds r2, r2, r7
	ldr r4, [r2]
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r1, [r0]
	subs r4, r4, r1
	ldr r3, [r2, #4]
	ldr r0, [r0, #4]
	subs r3, r3, r0
	cmp r4, #0
	bge _080813B6
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _080813B8
_080813B6:
	asrs r2, r4, #0x10
_080813B8:
	cmp r3, #0
	bge _080813C8
	rsbs r0, r3, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080813CA
_080813C8:
	asrs r1, r3, #0x10
_080813CA:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080813DC @ =0xFFFFC000
	adds r0, r0, r2
	b _08081408
	.align 2, 0
_080813DC: .4byte 0xFFFFC000
_080813E0:
	str r1, [r5, #0x48]
	b _0808140A
_080813E4:
	cmp r0, #1
	beq _080813FC
	cmp r0, #3
	beq _080813FC
	cmp r0, #4
	beq _080813FC
	cmp r0, #5
	beq _080813FC
	cmp r0, #8
	beq _080813FC
	cmp r0, #0xa
	bne _0808140A
_080813FC:
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r0, [r0, #8]
_08081408:
	str r0, [r5, #0x48]
_0808140A:
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	bne _0808146C
	movs r4, #0
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xb]
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	subs r1, #0x80
	str r1, [r5, #0x14]
	ldr r0, [r5, #0x48]
	str r0, [r5, #0x18]
	str r4, [r5, #0x50]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	str r4, [r5, #0x48]
	str r4, [r5, #0x4c]
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	adds r0, r1, #0
	adds r0, #0x46
	strb r0, [r5, #0xd]
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	beq _08081452
	cmp r0, #0xa
	bne _0808145A
_08081452:
	adds r0, r1, #0
	adds r0, #0x32
	strb r0, [r5, #0xd]
	b _080816AC
_0808145A:
	cmp r0, #2
	beq _08081464
	cmp r0, #9
	beq _08081464
	b _080816AC
_08081464:
	adds r0, r1, #0
	adds r0, #0x3c
	strb r0, [r5, #0xd]
	b _080816AC
_0808146C:
	movs r3, #0x22
	ldrsh r0, [r6, r3]
	mov r1, r8
	movs r2, #0
	ldrsb r2, [r1, r2]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808155C
	lsls r0, r2, #5
	adds r0, r0, r7
	ldr r0, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r0, r2
	bl sub_080009E4
	adds r4, r0, #0
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	adds r3, r0, #0
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080814C8
	lsls r0, r4, #4
	cmp r0, #0
	bge _080814C0
	rsbs r0, r0, #0
	b _080814D6
_080814C0:
	asrs r0, r0, #0x10
	adds r0, #4
	rsbs r0, r0, #0
	b _080814DA
_080814C8:
	lsls r0, r4, #4
	cmp r0, #0
	bge _080814D6
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080814D8
_080814D6:
	asrs r0, r0, #0x10
_080814D8:
	subs r0, #4
_080814DA:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080814F8 @ =0xFFFFFF00
	ldr r1, [sp, #0x18]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x18]
	lsls r0, r3, #4
	cmp r0, #0
	bge _080814FC
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080814FE
	.align 2, 0
_080814F8: .4byte 0xFFFFFF00
_080814FC:
	asrs r0, r0, #0x10
_080814FE:
	subs r0, #4
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x10
	ldr r2, _08081550 @ =0xFFFF00FF
	ldr r0, [sp, #0x18]
	ands r0, r2
	orrs r0, r1
	ldr r1, _08081554 @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	ldr r1, _08081558 @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [sp, #0x18]
	add r4, sp, #0x18
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
	strb r0, [r2]
	add r0, sp, #8
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_080429D0
	b _0808156C
	.align 2, 0
_08081550: .4byte 0xFFFF00FF
_08081554: .4byte 0xFF00FFFF
_08081558: .4byte 0x00FFFFFF
_0808155C:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
_0808156C:
	mov r3, r8
	ldrb r0, [r3]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #5
	bls _0808158C
	asrs r0, r2, #0x18
	cmp r0, #7
	beq _0808158C
	cmp r0, #8
	beq _0808158C
	cmp r0, #9
	beq _0808158C
	cmp r0, #0xa
	beq _0808158C
	b _080816AC
_0808158C:
	ldr r0, [r5, #0x48]
	movs r2, #0x80
	lsls r2, r2, #9
	mov r3, sb
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
	b _080816AC
_080815AC:
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #5
	bls _080815CC
	asrs r0, r1, #0x18
	cmp r0, #7
	beq _080815CC
	cmp r0, #8
	beq _080815CC
	cmp r0, #9
	beq _080815CC
	cmp r0, #0xa
	bne _080815DA
_080815CC:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080815DA:
	adds r0, r5, #0
	bl EntityDelete
	b _080816AC
_080815E2:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _080815F8
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080815F8:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x31
	bhi _0808162C
	movs r1, #0xe0
	lsls r1, r1, #0xb
	adds r0, r5, #0
	bl sub_0806D3D8
	ldrb r0, [r5, #0xd]
	bl sub_0806D518
	adds r3, r5, #0
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
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x18]
_0808162C:
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r1, [r0]
	lsls r2, r1, #0x18
	lsrs r1, r2, #0x18
	mov r8, r0
	cmp r1, #5
	bls _0808164E
	asrs r1, r2, #0x18
	cmp r1, #7
	beq _0808164E
	cmp r1, #8
	beq _0808164E
	cmp r1, #9
	beq _0808164E
	cmp r1, #0xa
	bne _0808166E
_0808164E:
	ldr r0, [r5, #0x18]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r5, #0
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
_0808166E:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080816AC
	mov r1, r8
	ldrb r0, [r1]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #5
	bls _08081698
	asrs r0, r2, #0x18
	cmp r0, #7
	beq _08081698
	cmp r0, #8
	beq _08081698
	cmp r0, #9
	beq _08081698
	cmp r0, #0xa
	bne _080816A6
_08081698:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080816A6:
	adds r0, r5, #0
	bl EntityDelete
_080816AC:
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080816BC
sub_080816BC: @ 0x080816BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r0, _080816F4 @ =0x0808FCFC
	str r0, [sp]
	ldr r2, _080816F8 @ =sub_080817B0
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08081792
	ldr r0, _080816FC @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	bge _08081700
	adds r0, r4, #0
	bl EntityDelete
	b _08081792
	.align 2, 0
_080816F4: .4byte 0x0808FCFC
_080816F8: .4byte sub_080817B0
_080816FC: .4byte 0x081C15F4
_08081700:
	ldr r1, _080817A0 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x42
	strb r0, [r1]
	ldr r0, _080817A4 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldr r2, _080817A8 @ =sub_080818A4
	ldr r3, _080817AC @ =sub_080818D0
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
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
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
_08081792:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080817A0: .4byte 0x0820ED60
_080817A4: .4byte sub_0803B9D0
_080817A8: .4byte sub_080818A4
_080817AC: .4byte sub_080818D0

	thumb_func_start sub_080817B0
sub_080817B0: @ 0x080817B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r7, r0, #0
	ldr r5, [r7, #0x14]
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	bne _08081896
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _08081808 @ =0xFFFC0000
	adds r0, r7, #0
	bl sub_0806D288
	adds r4, r0, #0
	adds r0, r7, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	bne _0808187C
	movs r0, #0xc
	mov r8, r0
	mov r1, r8
	ands r1, r4
	mov r8, r1
	cmp r1, #0
	beq _0808180C
	ldr r3, [r7, #0x4c]
	cmp r3, #0
	bge _080817F2
	rsbs r3, r3, #0
_080817F2:
	rsbs r3, r3, #0
	str r3, [r7, #0x4c]
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	ldr r2, [r7, #0x48]
	adds r4, r7, #0
	adds r4, #0x5c
	ldrb r4, [r4]
	str r4, [sp]
	movs r4, #2
	b _08081876
	.align 2, 0
_08081808: .4byte 0xFFFC0000
_0808180C:
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq _0808188C
	ldr r1, [r7, #0x48]
	asrs r0, r1, #2
	subs r0, r0, r1
	str r0, [r7, #0x48]
	bl RandomNumberGenerator
	ldr r4, _08081884 @ =0x0001FFFF
	ands r0, r4
	ldr r1, _08081888 @ =0xFFFF0000
	adds r6, r0, r1
	bl RandomNumberGenerator
	ands r0, r4
	ldr r1, _08081888 @ =0xFFFF0000
	adds r4, r0, r1
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	ldr r2, [r7, #0x48]
	adds r2, r2, r6
	ldr r3, [r7, #0x4c]
	adds r3, r3, r4
	adds r5, r7, #0
	adds r5, #0x5c
	ldrb r4, [r5]
	str r4, [sp]
	movs r4, #1
	str r4, [sp, #4]
	bl sub_0806DCC4
	bl RandomNumberGenerator
	ldr r4, _08081884 @ =0x0001FFFF
	ands r0, r4
	ldr r1, _08081888 @ =0xFFFF0000
	adds r6, r0, r1
	bl RandomNumberGenerator
	ands r0, r4
	ldr r1, _08081888 @ =0xFFFF0000
	adds r4, r0, r1
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	ldr r2, [r7, #0x48]
	adds r2, r2, r6
	ldr r3, [r7, #0x4c]
	adds r3, r3, r4
	ldrb r4, [r5]
	str r4, [sp]
	mov r4, r8
_08081876:
	str r4, [sp, #4]
	bl sub_0806DCC4
_0808187C:
	adds r0, r7, #0
	bl EntityDelete
	b _08081896
	.align 2, 0
_08081884: .4byte 0x0001FFFF
_08081888: .4byte 0xFFFF0000
_0808188C:
	add r0, sp, #8
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_080429D0
_08081896:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080818A4
sub_080818A4: @ 0x080818A4
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

	thumb_func_start sub_080818D0
sub_080818D0: @ 0x080818D0
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
	ldr r4, _08081974 @ =0x0001FFFF
	mov sl, r4
	ands r0, r4
	ldr r5, _08081978 @ =0xFFFF0000
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
_08081974: .4byte 0x0001FFFF
_08081978: .4byte 0xFFFF0000

	thumb_func_start sub_0808197C
sub_0808197C: @ 0x0808197C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _08081996
	movs r4, #0
_08081988:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08080D58
	adds r4, #1
	cmp r4, #0xa
	ble _08081988
_08081996:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0808199C
sub_0808199C: @ 0x0808199C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080819BC
	movs r4, #0
_080819AA:
	adds r0, r6, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r5, #0
	bl sub_08080D58
	adds r4, #1
	cmp r4, #0xa
	ble _080819AA
_080819BC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080819C4
sub_080819C4: @ 0x080819C4
	ldr r0, [r0, #0x1c]
	lsls r1, r1, #5
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_080819D4
sub_080819D4: @ 0x080819D4
	push {lr}
	ldr r0, [r0, #0x1c]
	bl sub_080811CC
	pop {r0}
	bx r0

	thumb_func_start sub_080819E0
sub_080819E0: @ 0x080819E0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r0, _08081A68 @ =sub_08081A78
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _08081A60
	ldr r0, [r5, #0x40]
	adds r0, r0, r6
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r7
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08081A6C @ =0x081CBFB4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08081A70 @ =0x08219804
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
	adds r0, r4, #0
	bl sub_0803F17C
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
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08081A74 @ =sub_0803B9D0
	str r0, [r4, #4]
_08081A60:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08081A68: .4byte sub_08081A78
_08081A6C: .4byte 0x081CBFB4
_08081A70: .4byte 0x08219804
_08081A74: .4byte sub_0803B9D0

	thumb_func_start sub_08081A78
sub_08081A78: @ 0x08081A78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F17C
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08081A94
	adds r0, r4, #0
	bl EntityDelete
_08081A94:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08081A9C
sub_08081A9C: @ 0x08081A9C
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

	thumb_func_start EnemyIronGolemUpdate
EnemyIronGolemUpdate: @ 0x08081AC8
	push {lr}
	bl EnemyGolemUpdate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyIronGolemCreate
EnemyIronGolemCreate: @ 0x08081AD4
	push {lr}
	bl EnemyGolemCreate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyWoodenGolemUpdate
EnemyWoodenGolemUpdate: @ 0x08081AE0
	push {lr}
	bl EnemyGolemUpdate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyWoodenGolemCreate
EnemyWoodenGolemCreate: @ 0x08081AEC
	push {lr}
	bl EnemyGolemCreate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyFleshGolemUpdate
EnemyFleshGolemUpdate: @ 0x08081AF8
	push {lr}
	bl EnemyGolemUpdate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyFleshGolemCreate
EnemyFleshGolemCreate: @ 0x08081B04
	push {lr}
	bl EnemyGolemCreate
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyHeadhunterUpdate
EnemyHeadhunterUpdate: @ 0x08081B10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r5, r0, #0
	ldr r0, _08081B74 @ =0x08118F14
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x34]
	str r1, [sp, #0x38]
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _08081B44
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
	beq _08081B44
	adds r0, r5, #0
	bl sub_08021924
_08081B44:
	ldrb r0, [r5, #0x1a]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r5, #0x1a]
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _08081B5A
	adds r0, r5, #0
	bl sub_0806AE54
_08081B5A:
	adds r0, r5, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _08081B78
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _08081B78
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	b _08081C08
	.align 2, 0
_08081B74: .4byte 0x08118F14
_08081B78:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _08081B9A
	cmp r0, #1
	bgt _08081B88
	cmp r0, #0
	beq _08081B92
	b _08081BB2
_08081B88:
	cmp r0, #2
	beq _08081BA2
	cmp r0, #3
	beq _08081BAA
	b _08081BB2
_08081B92:
	adds r0, r5, #0
	bl sub_08081EBC
	b _08081BB2
_08081B9A:
	adds r0, r5, #0
	bl sub_08082FFC
	b _08081BB2
_08081BA2:
	adds r0, r5, #0
	bl sub_08083860
	b _08081BB2
_08081BAA:
	adds r0, r5, #0
	bl sub_0803F17C
	b _08081C08
_08081BB2:
	adds r2, r5, #0
	adds r2, #0x65
	ldrb r7, [r2]
	ldrb r1, [r5, #0x1a]
	movs r0, #2
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08081BDE
	add r4, sp, #0x34
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	ldrb r0, [r5, #0x1b]
	strb r0, [r4, #4]
	adds r0, r5, #0
	bl sub_0803F17C
	b _08081BE4
_08081BDE:
	adds r0, r5, #0
	bl sub_0803F17C
_08081BE4:
	ldrb r6, [r6]
	cmp r7, r6
	beq _08081BF0
	adds r0, r5, #0
	bl sub_0806B1FC
_08081BF0:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _08081C08
	ldrb r1, [r5, #0x1a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08081C08
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
_08081C08:
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start EnemyHeadhunterCreate
EnemyHeadhunterCreate: @ 0x08081C10
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _08081CC4 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08081CC8 @ =0x0000A094
	adds r0, r0, r2
	mov r8, r0
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _08081C48
	ldr r4, _08081CCC @ =0x000004CC
	adds r0, r2, r4
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08081C48
	ldr r1, _08081CD0 @ =0x0000037E
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08081C48
	b _08081EAC
_08081C48:
	adds r0, r6, #0
	bl sub_08083A40
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08081C56
	b _08081EAC
_08081C56:
	adds r0, r6, #0
	bl sub_0806B04C
	ldr r2, _08081CC4 @ =gEwramData
	ldr r0, [r2]
	ldr r4, _08081CCC @ =0x000004CC
	adds r0, r0, r4
	ldrb r1, [r0]
	movs r3, #3
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08081C7A
	adds r1, r6, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	adds r0, #0x14
	strb r0, [r1]
_08081C7A:
	ldr r0, [r2]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08081CD4
	strb r3, [r6, #0xa]
	adds r0, r6, #0
	movs r1, #9
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	adds r0, r6, #0
	adds r0, #0x22
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x2c
	strb r0, [r1]
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
	b _08081EB2
	.align 2, 0
_08081CC4: .4byte gEwramData
_08081CC8: .4byte 0x0000A094
_08081CCC: .4byte 0x000004CC
_08081CD0: .4byte 0x0000037E
_08081CD4:
	adds r0, r6, #0
	bl sub_0806D260
	cmp r0, #1
	ble _08081CF4
	ldr r2, _08081CEC @ =sub_08086418
	ldr r3, _08081CF0 @ =sub_08086458
	adds r0, r6, #0
	movs r1, #8
	bl sub_080427B8
	b _08081D00
	.align 2, 0
_08081CEC: .4byte sub_08086418
_08081CF0: .4byte sub_08086458
_08081CF4:
	ldr r2, _08081D3C @ =sub_08086418
	ldr r3, _08081D40 @ =sub_08086458
	adds r0, r6, #0
	movs r1, #8
	bl sub_0804277C
_08081D00:
	adds r0, r6, #0
	bl sub_0806B1FC
	adds r0, r6, #0
	bl sub_0806AF98
	movs r7, #2
_08081D0E:
	ldr r0, _08081D44 @ =sub_08083FD0
	bl sub_0806DFF8
	adds r5, r0, #0
	cmp r5, #0
	bne _08081D1C
	b _08081EAC
_08081D1C:
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r2, [r6, #0x1c]
	cmp r7, #1
	beq _08081D90
	cmp r7, #1
	bgt _08081D48
	cmp r7, #0
	beq _08081D4E
	b _08081E16
	.align 2, 0
_08081D3C: .4byte sub_08086418
_08081D40: .4byte sub_08086458
_08081D44: .4byte sub_08083FD0
_08081D48:
	cmp r7, #2
	beq _08081DD4
	b _08081E16
_08081D4E:
	adds r4, r6, #0
	adds r4, #0x20
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	ldr r1, _08081D88 @ =0x0821C190
	bl sub_0803B924
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r5, #0
	ldr r1, _08081D8C @ =0x085273D8
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	mov r0, r8
	ldrh r1, [r0, #6]
	movs r0, #0xf0
	subs r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r2, r8
	ldrh r1, [r2, #0xa]
	movs r0, #0x7c
	b _08081E0E
	.align 2, 0
_08081D88: .4byte 0x0821C190
_08081D8C: .4byte 0x085273D8
_08081D90:
	adds r4, r6, #0
	adds r4, #0x21
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	ldr r1, _08081DCC @ =0x0821C190
	bl sub_0803B924
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r5, #0
	ldr r1, _08081DD0 @ =0x085273E0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	mov r4, r8
	ldrh r1, [r4, #6]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r4, #0xa]
	movs r0, #0x80
	b _08081E0E
	.align 2, 0
_08081DCC: .4byte 0x0821C190
_08081DD0: .4byte 0x085273E0
_08081DD4:
	adds r4, r6, #0
	adds r4, #0x22
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r0, r5, #0
	ldr r1, _08081E98 @ =0x0821C190
	bl sub_0803B924
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r5, #0
	ldr r1, _08081E9C @ =0x085273F0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	mov r4, r8
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r4, #0xa]
	movs r0, #0x60
_08081E0E:
	subs r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
_08081E16:
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08081EA0 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x58
	movs r2, #0x40
	ands r2, r0
	ldrb r0, [r3]
	movs r4, #0x41
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	str r6, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x20
	strb r7, [r0]
	adds r0, r5, #0
	bl sub_0803F17C
	subs r7, #1
	cmp r7, #0
	blt _08081E64
	b _08081D0E
_08081E64:
	movs r0, #0
	strb r0, [r6, #0xa]
	adds r0, r6, #0
	movs r1, #0x17
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	adds r0, r6, #0
	bl sub_08034498
	ldr r0, _08081EA4 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08081EA8 @ =0x0000042C
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	movs r0, #0x10
	bl sub_08013CF0
	b _08081EB2
	.align 2, 0
_08081E98: .4byte 0x0821C190
_08081E9C: .4byte 0x085273F0
_08081EA0: .4byte sub_0803B9D0
_08081EA4: .4byte gEwramData
_08081EA8: .4byte 0x0000042C
_08081EAC:
	adds r0, r6, #0
	bl EntityDelete
_08081EB2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08081EBC
sub_08081EBC: @ 0x08081EBC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, _08081EE4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08081EE8 @ =0x0000A094
	adds r6, r0, r1
	ldrb r0, [r7, #0xb]
	cmp r0, #0x33
	bls _08081EDA
	bl _08082E92
_08081EDA:
	lsls r0, r0, #2
	ldr r1, _08081EEC @ =_08081EF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08081EE4: .4byte gEwramData
_08081EE8: .4byte 0x0000A094
_08081EEC: .4byte _08081EF0
_08081EF0: @ jump table
	.4byte _08081FC0 @ case 0
	.4byte _08081FE8 @ case 1
	.4byte _08082082 @ case 2
	.4byte _080820C2 @ case 3
	.4byte _0808223C @ case 4
	.4byte _08082266 @ case 5
	.4byte _08082284 @ case 6
	.4byte _08082294 @ case 7
	.4byte _080822A6 @ case 8
	.4byte _080822D4 @ case 9
	.4byte _08082332 @ case 10
	.4byte _0808239C @ case 11
	.4byte _080823D0 @ case 12
	.4byte _08082E92 @ case 13
	.4byte _08082E92 @ case 14
	.4byte _08082E92 @ case 15
	.4byte _08082E92 @ case 16
	.4byte _08082E92 @ case 17
	.4byte _08082E92 @ case 18
	.4byte _08082E92 @ case 19
	.4byte _08082528 @ case 20
	.4byte _08082578 @ case 21
	.4byte _080825F8 @ case 22
	.4byte _08082650 @ case 23
	.4byte _080826D0 @ case 24
	.4byte _08082744 @ case 25
	.4byte _08082798 @ case 26
	.4byte _08082836 @ case 27
	.4byte _08082880 @ case 28
	.4byte _080828E0 @ case 29
	.4byte _080828F2 @ case 30
	.4byte _08082984 @ case 31
	.4byte _080829C6 @ case 32
	.4byte _08082A68 @ case 33
	.4byte _08082E92 @ case 34
	.4byte _08082E92 @ case 35
	.4byte _08082E92 @ case 36
	.4byte _08082E92 @ case 37
	.4byte _08082E92 @ case 38
	.4byte _08082E92 @ case 39
	.4byte _08082A86 @ case 40
	.4byte _08082BEA @ case 41
	.4byte _08082C2E @ case 42
	.4byte _08082D40 @ case 43
	.4byte _08082E92 @ case 44
	.4byte _08082E92 @ case 45
	.4byte _08082E92 @ case 46
	.4byte _08082E92 @ case 47
	.4byte _08082E92 @ case 48
	.4byte _08082E92 @ case 49
	.4byte _08082D4E @ case 50
	.4byte _08082E56 @ case 51
_08081FC0:
	adds r0, r7, #0
	bl sub_08082EA0
	cmp r0, #0
	bne _08081FCE
	bl _08082E92
_08081FCE:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xc]
	movs r0, #1
	strb r0, [r7, #0x18]
	movs r0, #0x64
	strb r0, [r7, #0xd]
	adds r0, r7, #0
	movs r1, #0x18
	bl _08082B9A
_08081FE8:
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _08082040
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _08082052
	subs r0, #1
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xd]
	bl sub_0806D518
	cmp r0, #0
	beq _08082016
	adds r2, r7, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
	b _08082032
_08082016:
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
_08082032:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _08082052
	ldrb r0, [r7, #0xc]
	adds r0, #1
	strb r0, [r7, #0xc]
	b _08082052
_08082040:
	adds r2, r7, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
_08082052:
	ldrb r0, [r7, #0x1a]
	movs r1, #1
	orrs r1, r0
	strb r1, [r7, #0x1a]
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x18
	beq _08082068
	bl _08082E92
_08082068:
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0808207A
	bl _08082E92
_0808207A:
	adds r0, r7, #0
	movs r1, #0
	bl _08082B9A
_08082082:
	ldrb r0, [r7, #0xc]
	cmp r0, #1
	bne _080820AA
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
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
_080820AA:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1b
	bhi _080820BC
	bl _08082E92
_080820BC:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	b _0808227A
_080820C2:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08082168
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
	movs r0, #0
	strb r0, [r7, #0xd]
	strb r0, [r7, #0xc]
	str r0, [r7, #0x50]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r7, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08082110
	movs r0, #0xc0
	lsls r0, r0, #7
	b _08082112
_08082110:
	ldr r0, _08082164 @ =0xFFFFA000
_08082112:
	str r0, [r7, #0x48]
	adds r6, r7, #0
	adds r6, #0x42
	ldrh r0, [r6]
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r5, r7, #0
	adds r5, #0x46
	ldrh r1, [r5]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x10
	movs r3, #0x50
	bl sub_0806CFFC
	adds r4, r0, #0
	cmp r4, #0
	bne _08082168
	ldrh r0, [r6]
	subs r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _08082168
	movs r0, #1
	strb r0, [r7, #0xa]
	strb r4, [r7, #0xb]
	strb r4, [r7, #0xc]
	strb r4, [r7, #0xd]
	bl _08082E92
	.align 2, 0
_08082164: .4byte 0xFFFFA000
_08082168:
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	bne _080821AA
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x3c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x78
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _080821AA
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xd]
	adds r2, r7, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	b _080826C8
_080821AA:
	ldrb r5, [r7, #0xc]
	cmp r5, #0
	bne _08082226
	movs r0, #0x19
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _080821DC
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x1e
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x3c
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _08082226
_080821DC:
	movs r4, #1
	movs r0, #1
	strb r0, [r7, #0xc]
	strb r5, [r7, #0x19]
	adds r0, r7, #0
	bl sub_0806CF2C
	adds r3, r7, #0
	adds r3, #0x58
	ands r0, r4
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	strb r5, [r7, #0xd]
	str r5, [r7, #0x50]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r7, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08082220
	ldr r0, _0808221C @ =0xFFFF8000
	b _08082224
	.align 2, 0
_0808221C: .4byte 0xFFFF8000
_08082220:
	movs r0, #0x80
	lsls r0, r0, #8
_08082224:
	str r0, [r7, #0x48]
_08082226:
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _08082238 @ =0xFFE00000
	adds r0, r7, #0
	bl sub_0806D288
	bl _08082E92
	.align 2, 0
_08082238: .4byte 0xFFE00000
_0808223C:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x11
	bhi _0808224E
	bl _08082E92
_0808224E:
	adds r0, r7, #0
	movs r1, #2
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	bl _08082E90
_08082266:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _08082278
	bl _08082E92
_08082278:
	movs r0, #3
_0808227A:
	strb r0, [r7, #0xb]
	movs r0, #0x3c
	strb r0, [r7, #0xd]
	bl _08082E92
_08082284:
	ldrb r0, [r7, #0x1a]
	movs r1, #1
	orrs r1, r0
	strb r1, [r7, #0x1a]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	bl _08082E90
_08082294:
	ldrb r0, [r7, #0x1a]
	movs r1, #1
	movs r2, #0
	orrs r1, r0
	strb r1, [r7, #0x1a]
	strb r2, [r7, #0xd]
	strb r2, [r7, #0xc]
	bl _08082E92
_080822A6:
	ldrb r1, [r7, #0x1a]
	movs r0, #1
	movs r2, #0
	orrs r0, r1
	strb r0, [r7, #0x1a]
	strb r2, [r7, #0xc]
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1b
	bhi _080822C4
	bl _08082E92
_080822C4:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strb r2, [r7, #0xd]
	adds r0, r7, #0
	movs r1, #0x1a
	bl _08082B9A
_080822D4:
	ldrb r0, [r7, #0x1a]
	movs r1, #1
	orrs r1, r0
	strb r1, [r7, #0x1a]
	movs r0, #2
	strb r0, [r7, #0x18]
	ldrb r2, [r7, #0xc]
	adds r0, r2, #0
	cmp r0, #0
	bne _08082310
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bhi _080822FA
	bl _08082E92
_080822FA:
	adds r0, r2, #1
	strb r0, [r7, #0xc]
	movs r0, #0x5a
	strb r0, [r7, #0xd]
	ldr r0, _0808230C @ =0x000001CF
	bl PlaySong
	bl _08082E92
	.align 2, 0
_0808230C: .4byte 0x000001CF
_08082310:
	cmp r0, #1
	beq _08082316
	b _080826BA
_08082316:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _08082320
	bl _08082E92
_08082320:
	subs r0, #1
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xd]
	bl sub_0806D518
	cmp r0, #0
	beq _08082330
	b _08082676
_08082330:
	b _0808268A
_08082332:
	movs r0, #0
	str r0, [r7, #0x50]
	str r0, [r7, #0x48]
	str r0, [r7, #0x4c]
	ldr r0, _0808236C @ =0xFFFFF000
	str r0, [r7, #0x54]
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
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08082370
	ldrb r1, [r7, #0x1a]
	movs r0, #4
	orrs r0, r1
	b _08082378
	.align 2, 0
_0808236C: .4byte 0xFFFFF000
_08082370:
	ldrb r1, [r7, #0x1a]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
_08082378:
	strb r0, [r7, #0x1a]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
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
_0808239C:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, #0
	bl sub_0806D3D8
	ldr r0, [r7, #0x44]
	ldr r1, [r6, #8]
	adds r0, r0, r1
	ldr r1, _080823CC @ =0x006FFFFF
	cmp r0, r1
	ble _080823B6
	bl _08082E92
_080823B6:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #6
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	bl _08082E92
	.align 2, 0
_080823CC: .4byte 0x006FFFFF
_080823D0:
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
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0808241A
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0808240C
	strb r1, [r7, #0xa]
	movs r0, #0xa
	bl _08082E90
_0808240C:
	bl RandomNumberGenerator
	movs r1, #0x1e
	bl __umodsi3
	adds r0, #0x3c
	strb r0, [r7, #0xd]
_0808241A:
	ldrb r2, [r7, #0x1a]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0808244C
	ldr r0, [r7, #0x44]
	ldr r1, [r6, #8]
	adds r0, r0, r1
	ldr r1, _08082438 @ =0x0071FFFF
	cmp r0, r1
	bgt _0808243C
	movs r0, #0xc0
	lsls r0, r0, #4
	str r0, [r7, #0x54]
	b _08082470
	.align 2, 0
_08082438: .4byte 0x0071FFFF
_0808243C:
	ldr r0, _08082448 @ =0xFFFFF400
	str r0, [r7, #0x54]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r2
	b _0808246E
	.align 2, 0
_08082448: .4byte 0xFFFFF400
_0808244C:
	ldr r0, [r7, #0x44]
	ldr r1, [r6, #8]
	adds r0, r0, r1
	movs r1, #0xdc
	lsls r1, r1, #0xf
	cmp r0, r1
	ble _08082464
	ldr r0, _08082460 @ =0xFFFFF400
	str r0, [r7, #0x54]
	b _08082470
	.align 2, 0
_08082460: .4byte 0xFFFFF400
_08082464:
	movs r0, #0xc0
	lsls r0, r0, #4
	str r0, [r7, #0x54]
	movs r0, #8
	orrs r0, r2
_0808246E:
	strb r0, [r7, #0x1a]
_08082470:
	ldrb r1, [r7, #0x1a]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080824CC
	ldr r3, [r7, #0x40]
	ldr r0, [r6, #4]
	adds r2, r3, r0
	ldr r0, _08082490 @ =0x00BFFFFF
	cmp r2, r0
	bgt _08082494
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #0x1a]
	b _0808251A
	.align 2, 0
_08082490: .4byte 0x00BFFFFF
_08082494:
	ldr r0, _080824B4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080824B8 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	subs r0, r0, r3
	movs r1, #0xc0
	lsls r1, r1, #0xe
	cmp r0, r1
	ble _080824C4
	ldr r0, _080824BC @ =0x013FFFFF
	cmp r2, r0
	ble _08082514
	ldr r0, _080824C0 @ =0xFFFFFA00
	b _08082518
	.align 2, 0
_080824B4: .4byte gEwramData
_080824B8: .4byte 0x00013110
_080824BC: .4byte 0x013FFFFF
_080824C0: .4byte 0xFFFFFA00
_080824C4:
	ldr r0, _080824C8 @ =0xFFFFFA00
	b _08082518
	.align 2, 0
_080824C8: .4byte 0xFFFFFA00
_080824CC:
	ldr r3, [r7, #0x40]
	ldr r0, [r6, #4]
	adds r2, r3, r0
	movs r0, #0xa0
	lsls r0, r0, #0x11
	cmp r2, r0
	ble _080824E2
	movs r0, #4
	orrs r0, r1
	strb r0, [r7, #0x1a]
	b _0808251A
_080824E2:
	ldr r0, _08082504 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08082508 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	subs r0, r0, r3
	ldr r1, _0808250C @ =0xFFD00000
	cmp r0, r1
	bge _08082514
	movs r0, #0xc0
	lsls r0, r0, #0x10
	cmp r2, r0
	ble _08082514
	ldr r0, _08082510 @ =0xFFFFFA00
	b _08082518
	.align 2, 0
_08082504: .4byte gEwramData
_08082508: .4byte 0x00013110
_0808250C: .4byte 0xFFD00000
_08082510: .4byte 0xFFFFFA00
_08082514:
	movs r0, #0xc0
	lsls r0, r0, #3
_08082518:
	str r0, [r7, #0x50]
_0808251A:
	movs r1, #0xc0
	lsls r1, r1, #9
	adds r0, r7, #0
	bl sub_0806D3D8
	bl _08082E92
_08082528:
	ldrb r1, [r7, #0x1a]
	movs r0, #1
	movs r3, #0
	orrs r0, r1
	strb r0, [r7, #0x1a]
	str r3, [r7, #0x48]
	str r3, [r7, #0x50]
	str r3, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	ldr r2, [r7, #0x40]
	ldr r0, [r6, #4]
	adds r0, r2, r0
	ldr r1, _0808256C @ =0x0067FFFF
	cmp r0, r1
	bgt _08082550
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r7, #0x48]
_08082550:
	ldr r0, [r6, #4]
	adds r0, r2, r0
	ldr r1, _08082570 @ =0x01970000
	cmp r0, r1
	ble _0808255E
	ldr r0, _08082574 @ =0xFFFFC000
	str r0, [r7, #0x48]
_0808255E:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strb r3, [r7, #0xc]
	bl _08082E92
	.align 2, 0
_0808256C: .4byte 0x0067FFFF
_08082570: .4byte 0x01970000
_08082574: .4byte 0xFFFFC000
_08082578:
	ldrb r1, [r7, #0x1a]
	movs r0, #1
	movs r4, #0
	orrs r0, r1
	strb r0, [r7, #0x1a]
	strb r4, [r7, #0xd]
	movs r1, #0xc0
	lsls r1, r1, #0xb
	adds r0, r7, #0
	bl sub_0806D3D8
	ldr r0, [r7, #0x44]
	ldr r1, [r6, #8]
	adds r0, r0, r1
	ldr r1, _080825EC @ =0x00B3FFFF
	cmp r0, r1
	bgt _0808259E
	bl _08082E92
_0808259E:
	str r4, [r7, #0x48]
	str r4, [r7, #0x50]
	str r4, [r7, #0x4c]
	str r4, [r7, #0x54]
	ldr r1, [r6, #8]
	movs r0, #0xc0
	lsls r0, r0, #0x10
	subs r0, r0, r1
	str r0, [r7, #0x44]
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	beq _080825BA
	bl _08082E92
_080825BA:
	adds r0, #1
	strb r0, [r7, #0xc]
	adds r0, r7, #0
	movs r1, #0x1b
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _080825F0 @ =0xFFF50000
	cmp r0, #0
	beq _080825DE
	movs r1, #0xb0
	lsls r1, r1, #0xc
_080825DE:
	ldr r2, _080825F4 @ =0xFFE30000
	adds r0, r7, #0
	movs r3, #1
	bl sub_08084760
	bl _08082E92
	.align 2, 0
_080825EC: .4byte 0x00B3FFFF
_080825F0: .4byte 0xFFF50000
_080825F4: .4byte 0xFFE30000
_080825F8:
	ldrb r1, [r7, #0x1a]
	movs r0, #1
	movs r2, #0
	orrs r0, r1
	strb r0, [r7, #0x1a]
	strb r2, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x1b
	bne _08082628
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08082628
	adds r0, r7, #0
	movs r1, #0x1c
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
_08082628:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1b
	bhi _0808263A
	bl _08082E92
_0808263A:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xc]
	movs r0, #0x78
	strb r0, [r7, #0xd]
	movs r0, #3
	strb r0, [r7, #0x18]
	bl _08082E92
_08082650:
	ldrb r0, [r7, #0x1a]
	movs r1, #1
	orrs r1, r0
	strb r1, [r7, #0x1a]
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _080826BA
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _08082668
	bl _08082E92
_08082668:
	subs r0, #1
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xd]
	bl sub_0806D518
	cmp r0, #0
	beq _0808268A
_08082676:
	adds r2, r7, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
	b _080826A6
_0808268A:
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
_080826A6:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _080826B0
	bl _08082E92
_080826B0:
	ldrb r0, [r7, #0xc]
	adds r0, #1
	strb r0, [r7, #0xc]
	bl _08082E92
_080826BA:
	adds r2, r7, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
_080826C8:
	orrs r0, r1
	strb r0, [r2]
	bl _08082E92
_080826D0:
	movs r0, #0
	str r0, [r7, #0x50]
	str r0, [r7, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x54]
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
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _0808272A
	ldrb r1, [r7, #0x1a]
	movs r0, #4
	orrs r0, r1
	b _08082732
_0808272A:
	ldrb r1, [r7, #0x1a]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
_08082732:
	strb r0, [r7, #0x1a]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xd]
	movs r0, #0x72
	bl PlaySong
_08082744:
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
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _08082794 @ =0xFFE00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bhi _0808277C
	b _08082E92
_0808277C:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r4, #0
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #0xa
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r7, #0xd]
	b _08082E92
	.align 2, 0
_08082794: .4byte 0xFFE00000
_08082798:
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
	movs r0, #0x40
	ands r1, r0
	ldr r0, _0808280C @ =0xFFFF0000
	cmp r1, #0
	beq _080827C2
	movs r0, #0x80
	lsls r0, r0, #9
_080827C2:
	str r0, [r7, #0x48]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _08082810 @ =0xFFE00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	adds r0, #1
	movs r4, #0
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _08082814
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x3c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x96
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x78
	movs r3, #0x96
	bl sub_0806CFFC
	cmp r0, #0
	beq _08082814
	ldrb r0, [r7, #0xb]
	adds r0, #1
	b _08082822
	.align 2, 0
_0808280C: .4byte 0xFFFF0000
_08082810: .4byte 0xFFE00000
_08082814:
	ldrb r0, [r7, #0xd]
	cmp r0, #0x77
	bhi _0808281C
	b _08082E92
_0808281C:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r4, #0
_08082822:
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	movs r1, #0xb
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	strb r4, [r7, #0xd]
	str r4, [r7, #0x48]
	b _08082E92
_08082836:
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _08082878 @ =0xFFE00000
	adds r0, r7, #0
	bl sub_0806D288
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _08082852
	b _08082E92
_08082852:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r2, #0
	strb r0, [r7, #0xb]
	strb r2, [r7, #0xd]
	ldrb r1, [r7, #0x1a]
	movs r0, #2
	orrs r0, r1
	strb r0, [r7, #0x1a]
	movs r0, #0x39
	strb r0, [r7, #0x1b]
	str r2, [r7, #0x50]
	str r2, [r7, #0x48]
	ldr r0, _0808287C @ =0xFFFB0000
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x54]
	b _08082E92
	.align 2, 0
_08082878: .4byte 0xFFE00000
_0808287C: .4byte 0xFFFB0000
_08082880:
	ldrb r1, [r7, #0x1a]
	movs r0, #2
	orrs r0, r1
	strb r0, [r7, #0x1a]
	movs r0, #0x39
	strb r0, [r7, #0x1b]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _080828DC @ =0xFFC80000
	adds r0, r7, #0
	bl sub_0806D288
	adds r1, r0, #0
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080828A4
	b _08082E92
_080828A4:
	adds r0, r7, #0
	movs r1, #0xe
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	ldrb r1, [r7, #0x1a]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #0x1a]
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0xf
	subs r0, r0, r1
	str r0, [r7, #0x44]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x14
	strb r0, [r7, #0xd]
	b _08082D32
	.align 2, 0
_080828DC: .4byte 0xFFC80000
_080828E0:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080828EE
	b _08082E92
_080828EE:
	movs r0, #0x1e
	b _08082E90
_080828F2:
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
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #2
	bgt _08082950
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	movs r1, #0
	movs r0, #0x1f
	strb r0, [r7, #0xb]
	str r1, [r7, #0x50]
	str r1, [r7, #0x4c]
	str r1, [r7, #0x54]
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _0808294C @ =0xFFFE0000
	cmp r0, #0
	beq _08082946
	movs r1, #0x80
	lsls r1, r1, #0xa
_08082946:
	str r1, [r7, #0x48]
	b _08082DB2
	.align 2, 0
_0808294C: .4byte 0xFFFE0000
_08082950:
	cmp r1, #3
	bne _08082958
	movs r0, #0x1d
	b _08082B90
_08082958:
	cmp r1, #4
	bne _08082976
	movs r1, #0
	movs r0, #0x20
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xc]
	str r1, [r7, #0x50]
	str r1, [r7, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	b _08082E92
_08082976:
	movs r0, #0
	movs r1, #1
	strb r1, [r7, #0xa]
	movs r1, #0x1e
	strb r1, [r7, #0xb]
	strb r0, [r7, #0xd]
	b _08082E92
_08082984:
	adds r0, r7, #0
	bl sub_0806D3C0
	ldr r0, [r7, #0x40]
	ldr r1, [r6, #4]
	adds r2, r0, r1
	ldr r0, _080829A0 @ =0x0066FFFF
	cmp r2, r0
	bgt _080829A4
	adds r0, #1
	subs r0, r0, r1
	str r0, [r7, #0x40]
	movs r0, #0x1e
	b _08082E90
	.align 2, 0
_080829A0: .4byte 0x0066FFFF
_080829A4:
	movs r0, #0xcc
	lsls r0, r0, #0x11
	cmp r2, r0
	ble _080829B4
	subs r0, r0, r1
	str r0, [r7, #0x40]
	movs r0, #0x1e
	b _08082E90
_080829B4:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080829C2
	b _08082E92
_080829C2:
	movs r0, #0x1e
	b _08082E90
_080829C6:
	ldrb r1, [r7, #0x1a]
	movs r0, #2
	orrs r0, r1
	strb r0, [r7, #0x1a]
	ldr r0, [r7, #0x44]
	ldr r1, [r6, #8]
	adds r0, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xf
	cmp r0, r1
	bgt _080829E2
	movs r0, #0x3b
	strb r0, [r7, #0x1b]
	b _08082A06
_080829E2:
	movs r0, #0x39
	strb r0, [r7, #0x1b]
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _08082A06
	adds r0, #1
	strb r0, [r7, #0xc]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r7, #0x44]
	movs r1, #0xc0
	lsls r1, r1, #0xd
	adds r0, r0, r1
	str r0, [r7, #0x44]
_08082A06:
	movs r1, #0xc0
	lsls r1, r1, #0xb
	adds r0, r7, #0
	bl sub_0806D3D8
	ldr r0, [r7, #0x44]
	ldr r2, [r6, #8]
	adds r0, r0, r2
	ldr r1, _08082A64 @ =0x00BEFFFF
	cmp r0, r1
	bgt _08082A1E
	b _08082E92
_08082A1E:
	adds r1, #1
	subs r1, r1, r2
	str r1, [r7, #0x44]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r2, #0
	strb r0, [r7, #0xb]
	strb r2, [r7, #0xc]
	movs r0, #0xe
	strb r0, [r7, #0xd]
	ldr r0, [r7, #0x40]
	movs r6, #0x80
	lsls r6, r6, #0xe
	adds r5, r7, #0
	adds r5, #0x5c
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	movs r4, #1
	str r4, [sp, #4]
	adds r2, r6, #0
	movs r3, #0
	bl sub_0806DA6C
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	str r4, [sp, #4]
	adds r2, r6, #0
	movs r3, #0
	bl sub_0806DA6C
	b _08082D32
	.align 2, 0
_08082A64: .4byte 0x00BEFFFF
_08082A68:
	ldrb r1, [r7, #0x1a]
	movs r0, #2
	orrs r0, r1
	strb r0, [r7, #0x1a]
	movs r0, #0x3b
	strb r0, [r7, #0x1b]
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08082A82
	b _08082E92
_08082A82:
	movs r0, #0x28
	b _08082E90
_08082A86:
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
	mov r8, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #7
	ands r1, r0
	adds r5, r4, #0
	cmp r1, #2
	bgt _08082B88
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	adds r2, r0, #0
	cmp r2, #0
	bne _08082B3C
	ldr r0, [r7, #0x40]
	ldr r1, [r6, #4]
	adds r1, r0, r1
	ldr r0, _08082AF0 @ =0x00C6FFFF
	cmp r1, r0
	bgt _08082AFC
	movs r0, #0x2a
	strb r0, [r7, #0xb]
	str r2, [r7, #0x50]
	ldrb r1, [r5]
	mov r0, r8
	ands r0, r1
	strb r0, [r5]
	ldr r0, _08082AF4 @ =0xFFFD0000
	str r0, [r7, #0x48]
	ldr r0, _08082AF8 @ =0xFFFC0000
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	b _08082E28
	.align 2, 0
_08082AF0: .4byte 0x00C6FFFF
_08082AF4: .4byte 0xFFFD0000
_08082AF8: .4byte 0xFFFC0000
_08082AFC:
	movs r0, #0x9c
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _08082B3C
	movs r0, #0x2a
	strb r0, [r7, #0xb]
	str r2, [r7, #0x50]
	ldrb r0, [r5]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r5]
	movs r1, #0x40
	ands r0, r1
	ldr r1, _08082B34 @ =0xFFFD0000
	cmp r0, #0
	beq _08082B20
	movs r1, #0xc0
	lsls r1, r1, #0xa
_08082B20:
	str r1, [r7, #0x48]
	ldr r0, _08082B38 @ =0xFFFC0000
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	ldrb r0, [r7, #0x1a]
	movs r1, #2
	b _08082E2C
	.align 2, 0
_08082B34: .4byte 0xFFFD0000
_08082B38: .4byte 0xFFFC0000
_08082B3C:
	adds r0, r7, #0
	movs r1, #0xc
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	movs r4, #0
	movs r0, #0x29
	strb r0, [r7, #0xb]
	adds r0, r7, #0
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
	str r4, [r7, #0x50]
	str r4, [r7, #0x4c]
	str r4, [r7, #0x54]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _08082B84 @ =0xFFFE0000
	cmp r0, #0
	beq _08082B7C
	movs r1, #0x80
	lsls r1, r1, #0xa
_08082B7C:
	str r1, [r7, #0x48]
	movs r0, #0x10
	strb r0, [r7, #0xd]
	b _08082E92
	.align 2, 0
_08082B84: .4byte 0xFFFE0000
_08082B88:
	subs r0, r1, #3
	cmp r0, #1
	bhi _08082BA4
	movs r0, #0x21
_08082B90:
	strb r0, [r7, #0xb]
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	adds r0, r7, #0
	movs r1, #0xe
_08082B9A:
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	b _08082E92
_08082BA4:
	cmp r1, #5
	bne _08082BD0
	movs r1, #0
	movs r0, #0x1c
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xd]
	str r1, [r7, #0x50]
	str r1, [r7, #0x48]
	ldr r0, _08082BCC @ =0xFFFB0000
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x54]
	ldrb r1, [r7, #0x1a]
	movs r0, #2
	orrs r0, r1
	strb r0, [r7, #0x1a]
	movs r0, #0x39
	strb r0, [r7, #0x1b]
	b _08082E92
	.align 2, 0
_08082BCC: .4byte 0xFFFB0000
_08082BD0:
	movs r1, #0
	movs r0, #1
	strb r0, [r7, #0xa]
	movs r0, #0x14
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xd]
	ldrb r1, [r7, #0x1a]
	movs r0, #2
	orrs r0, r1
	strb r0, [r7, #0x1a]
	movs r0, #0x3b
	strb r0, [r7, #0x1b]
	b _08082E92
_08082BEA:
	adds r0, r7, #0
	bl sub_0806D3C0
	ldr r0, [r7, #0x40]
	ldr r1, [r6, #4]
	adds r2, r0, r1
	ldr r0, _08082C08 @ =0x0066FFFF
	cmp r2, r0
	bgt _08082C0C
	adds r0, #1
	subs r0, r0, r1
	str r0, [r7, #0x40]
	movs r0, #0x28
	b _08082E90
	.align 2, 0
_08082C08: .4byte 0x0066FFFF
_08082C0C:
	movs r0, #0xcc
	lsls r0, r0, #0x11
	cmp r2, r0
	ble _08082C1C
	subs r0, r0, r1
	str r0, [r7, #0x40]
	movs r0, #0x28
	b _08082E90
_08082C1C:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08082C2A
	b _08082E92
_08082C2A:
	movs r0, #0x28
	b _08082E90
_08082C2E:
	ldrb r0, [r7, #0x1a]
	movs r4, #2
	movs r5, #0
	orrs r0, r4
	strb r0, [r7, #0x1a]
	movs r0, #0x3a
	strb r0, [r7, #0x1b]
	movs r1, #0xc0
	lsls r1, r1, #0xb
	adds r0, r7, #0
	bl sub_0806D3D8
	ldr r0, [r7, #0x44]
	ldr r2, [r6, #8]
	adds r1, r0, r2
	ldr r0, _08082C98 @ =0x00BEFFFF
	cmp r1, r0
	ble _08082C9C
	movs r1, #0xbf
	lsls r1, r1, #0x10
	subs r1, r1, r2
	str r1, [r7, #0x44]
	movs r0, #0x21
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xc]
	movs r0, #0xe
	strb r0, [r7, #0xd]
	ldr r0, [r7, #0x40]
	movs r6, #0x80
	lsls r6, r6, #0xe
	adds r5, r7, #0
	adds r5, #0x5c
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	movs r4, #1
	str r4, [sp, #4]
	adds r2, r6, #0
	movs r3, #0
	bl sub_0806DA6C
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	ldrb r2, [r5]
	subs r2, #1
	str r2, [sp]
	str r4, [sp, #4]
	adds r2, r6, #0
	movs r3, #0
	bl sub_0806DA6C
	b _08082D32
	.align 2, 0
_08082C98: .4byte 0x00BEFFFF
_08082C9C:
	movs r0, #0x9e
	lsls r0, r0, #0xf
	cmp r1, r0
	bgt _08082CD8
	movs r0, #0x80
	lsls r0, r0, #0xf
	subs r0, r0, r2
	str r0, [r7, #0x44]
	adds r0, r7, #0
	movs r1, #0xe
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	ldrb r1, [r7, #0x1a]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #0x1a]
	movs r0, #0x1d
	strb r0, [r7, #0xb]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x14
	strb r0, [r7, #0xd]
	b _08082D32
_08082CD8:
	ldr r0, [r7, #0x40]
	ldr r1, [r6, #4]
	adds r2, r0, r1
	ldr r0, _08082D08 @ =0x0068FFFF
	cmp r2, r0
	bgt _08082D0C
	movs r0, #0xc6
	lsls r0, r0, #0xf
	subs r0, r0, r1
	str r0, [r7, #0x40]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x14
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0x1a]
	orrs r0, r4
	strb r0, [r7, #0x1a]
	movs r0, #0x45
	strb r0, [r7, #0x1b]
	adds r0, #0xea
	bl PlaySong
	b _08082E92
	.align 2, 0
_08082D08: .4byte 0x0068FFFF
_08082D0C:
	movs r0, #0xcb
	lsls r0, r0, #0x11
	cmp r2, r0
	bgt _08082D16
	b _08082E92
_08082D16:
	movs r0, #0xce
	lsls r0, r0, #0x11
	subs r0, r0, r1
	str r0, [r7, #0x40]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x14
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0x1a]
	orrs r0, r4
	strb r0, [r7, #0x1a]
	movs r0, #0x45
	strb r0, [r7, #0x1b]
_08082D32:
	ldr r0, _08082D3C @ =0x0000012F
	bl PlaySong
	b _08082E92
	.align 2, 0
_08082D3C: .4byte 0x0000012F
_08082D40:
	ldrb r1, [r7, #0x1a]
	movs r0, #2
	orrs r0, r1
	strb r0, [r7, #0x1a]
	movs r0, #0x45
	strb r0, [r7, #0x1b]
	b _08082E82
_08082D4E:
	ldrb r0, [r7, #0x1a]
	movs r5, #2
	movs r1, #0
	mov sb, r1
	movs r4, #0
	orrs r0, r5
	strb r0, [r7, #0x1a]
	movs r0, #0x45
	mov r8, r0
	mov r1, r8
	strb r1, [r7, #0x1b]
	bl RandomNumberGenerator
	movs r1, #7
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #2
	bgt _08082DB8
	adds r0, r7, #0
	movs r1, #0x11
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	ldrb r1, [r7, #0x1a]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #0x1a]
	movs r0, #0x33
	strb r0, [r7, #0xb]
	str r4, [r7, #0x50]
	str r4, [r7, #0x48]
	str r4, [r7, #0x54]
	ldr r0, [r7, #0x44]
	ldr r1, [r6, #8]
	adds r0, r0, r1
	movs r1, #0x98
	lsls r1, r1, #0x10
	cmp r0, r1
	ble _08082DAC
	ldr r0, _08082DA8 @ =0xFFFF0000
	b _08082DB0
	.align 2, 0
_08082DA8: .4byte 0xFFFF0000
_08082DAC:
	movs r0, #0x80
	lsls r0, r0, #9
_08082DB0:
	str r0, [r7, #0x4c]
_08082DB2:
	movs r0, #0x14
	strb r0, [r7, #0xd]
	b _08082E92
_08082DB8:
	cmp r1, #3
	bne _08082DC6
	movs r0, #0x2b
	strb r0, [r7, #0xb]
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	b _08082E4A
_08082DC6:
	cmp r1, #4
	bne _08082E40
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08082DE4
	ldr r0, [r7, #0x40]
	ldr r1, _08082DE0 @ =0xFFFB0000
	b _08082DEA
	.align 2, 0
_08082DE0: .4byte 0xFFFB0000
_08082DE4:
	ldr r0, [r7, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #0xb
_08082DEA:
	adds r0, r0, r1
	str r0, [r7, #0x40]
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
	movs r0, #0
	str r0, [r7, #0x50]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _08082E38 @ =0xFFFD0000
	cmp r0, #0
	beq _08082E18
	movs r1, #0xc0
	lsls r1, r1, #0xa
_08082E18:
	str r1, [r7, #0x48]
	ldr r0, _08082E3C @ =0xFFFC8000
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	movs r0, #0x2a
	strb r0, [r7, #0xb]
_08082E28:
	ldrb r1, [r7, #0x1a]
	movs r0, #2
_08082E2C:
	orrs r0, r1
	strb r0, [r7, #0x1a]
	movs r0, #0x3a
	strb r0, [r7, #0x1b]
	b _08082E92
	.align 2, 0
_08082E38: .4byte 0xFFFD0000
_08082E3C: .4byte 0xFFFC8000
_08082E40:
	movs r0, #1
	strb r0, [r7, #0xa]
	movs r0, #0x28
	strb r0, [r7, #0xb]
	strb r4, [r7, #0xd]
_08082E4A:
	ldrb r0, [r7, #0x1a]
	orrs r0, r5
	strb r0, [r7, #0x1a]
	mov r0, r8
	strb r0, [r7, #0x1b]
	b _08082E92
_08082E56:
	adds r0, r7, #0
	bl sub_0806D3CC
	ldr r0, [r7, #0x44]
	ldr r1, [r6, #8]
	adds r2, r0, r1
	ldr r0, _08082E70 @ =0x0067FFFF
	cmp r2, r0
	bgt _08082E74
	adds r0, #1
	subs r0, r0, r1
	str r0, [r7, #0x44]
	b _08082E8E
	.align 2, 0
_08082E70: .4byte 0x0067FFFF
_08082E74:
	movs r0, #0xbf
	lsls r0, r0, #0x10
	cmp r2, r0
	ble _08082E82
	subs r0, r0, r1
	str r0, [r7, #0x44]
	b _08082E8E
_08082E82:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08082E92
_08082E8E:
	movs r0, #0x32
_08082E90:
	strb r0, [r7, #0xb]
_08082E92:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

