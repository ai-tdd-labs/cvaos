	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_080C0A1C
sub_080C0A1C: @ 0x080C0A1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldrh r0, [r5, #0x20]
	mov sb, r0
	ldrb r1, [r5, #0x11]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C0A5A
	movs r0, #0xfe
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r5, #0x11]
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r3, _080C0A90 @ =0xFFFE8000
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	bl sub_080C04C8
_080C0A5A:
	ldrb r2, [r5, #0x11]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080C0A84
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C0A84
	movs r0, #0xfd
	ands r0, r2
	strb r0, [r5, #0x11]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080C0A84:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _080C0A94
	cmp r0, #1
	beq _080C0AF0
	b _080C0B6C
	.align 2, 0
_080C0A90: .4byte 0xFFFE8000
_080C0A94:
	movs r2, #0x80
	lsls r2, r2, #7
	str r2, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C0AAC
	rsbs r0, r2, #0
	str r0, [r5, #0x14]
_080C0AAC:
	ldr r1, [r5, #0x18]
	ldr r0, _080C0AEC @ =0x0000FFFF
	cmp r1, r0
	bgt _080C0ABC
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r5, #0x18]
_080C0ABC:
	ldrb r0, [r5, #0x12]
	adds r4, r0, #0
	cmp r4, #0
	bne _080C0B72
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _080C0B6C
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	cmp r1, #3
	bhi _080C0B6C
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0xb4
	bl sub_0806E29C
	cmp r0, #0
	beq _080C0B6C
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xb]
	b _080C0F04
	.align 2, 0
_080C0AEC: .4byte 0x0000FFFF
_080C0AF0:
	mov r3, sb
	lsls r4, r3, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	ldr r1, [r5, #0x14]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r5, #0x48]
	adds r0, r4, #0
	bl sub_080009E4
	ldr r1, [r5, #0x14]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	bl sub_0806D3C0
	adds r0, r5, #0
	bl sub_0806D3CC
	ldr r1, _080C0B64 @ =0x08528922
	ldrb r0, [r5, #0x13]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	mov sb, r0
	ldr r1, [r5, #0x18]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _080C0B42
	ldr r2, _080C0B68 @ =0xFFFFFE00
	adds r0, r1, r2
	str r0, [r5, #0x18]
_080C0B42:
	adds r0, r5, #0
	adds r0, #0x20
	ldrh r1, [r5, #0x22]
	mov r2, sb
	bl sub_080686CC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C0B56
	b _080C0F04
_080C0B56:
	movs r0, #0
	strb r0, [r5, #0xb]
	ldrb r0, [r5, #0x13]
	strb r0, [r5, #0xc]
	movs r0, #0x18
	strb r0, [r5, #0x12]
	b _080C0F04
	.align 2, 0
_080C0B64: .4byte 0x08528922
_080C0B68: .4byte 0xFFFFFE00
_080C0B6C:
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	beq _080C0B76
_080C0B72:
	subs r0, #1
	strb r0, [r5, #0x12]
_080C0B76:
	adds r0, r5, #0
	bl sub_0806D3C0
	adds r0, r5, #0
	bl sub_0806D3CC
	mov r3, sb
	lsls r4, r3, #0x10
	asrs r4, r4, #0x10
	movs r0, #0x80
	lsls r0, r0, #7
	adds r6, r4, r0
	adds r0, r6, #0
	bl sub_080009E4
	ldr r1, [r5, #0x14]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r5, #0x48]
	adds r0, r4, #0
	bl sub_080009E4
	ldr r1, [r5, #0x14]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r0, r1, r0
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r5, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r0, r6, #0
	bl sub_080009E4
	lsls r1, r0, #3
	adds r1, r1, r0
	cmp r1, #0
	bge _080C0BE8
	adds r0, r6, #0
	bl sub_080009E4
	lsls r1, r0, #3
	adds r1, r1, r0
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	b _080C0BF2
_080C0BE8:
	adds r0, r6, #0
	bl sub_080009E4
	lsls r1, r0, #3
	adds r1, r1, r0
_080C0BF2:
	lsrs r0, r1, #0x10
	adds r6, r0, #0
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #3
	adds r1, r1, r0
	cmp r1, #0
	bge _080C0C1E
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #3
	adds r1, r1, r0
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	b _080C0C28
_080C0C1E:
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #3
	adds r1, r1, r0
_080C0C28:
	lsrs r0, r1, #0x10
	adds r7, r0, #0
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bgt _080C0C3E
	lsls r0, r6, #0x10
	rsbs r0, r0, #0
	lsrs r6, r0, #0x10
	lsls r0, r7, #0x10
	rsbs r0, r0, #0
	lsrs r7, r0, #0x10
_080C0C3E:
	ldr r0, _080C0C80 @ =0x08528922
	ldrb r1, [r5, #0xc]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldr r2, _080C0C84 @ =0xFFFFC000
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov sb, r3
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bge _080C0C88
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	b _080C0C92
	.align 2, 0
_080C0C80: .4byte 0x08528922
_080C0C84: .4byte 0xFFFFC000
_080C0C88:
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
_080C0C92:
	lsrs r1, r1, #0x10
	str r1, [sp]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	bge _080C0CBE
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	b _080C0CC8
_080C0CBE:
	adds r0, r4, #0
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
_080C0CC8:
	lsrs r2, r1, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_080C06A8
	ldrb r1, [r5, #0xc]
	cmp r1, #1
	bne _080C0CFA
	b _080C0E1E
_080C0CFA:
	cmp r1, #1
	bgt _080C0D04
	cmp r1, #0
	beq _080C0D10
	b _080C0F04
_080C0D04:
	cmp r1, #2
	beq _080C0D98
	cmp r1, #3
	bne _080C0D0E
	b _080C0E76
_080C0D0E:
	b _080C0F04
_080C0D10:
	cmp r0, #0
	beq _080C0D36
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	beq _080C0D1C
	b _080C0F04
_080C0D1C:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _080C0D2C
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r5, #0
	movs r1, #3
	b _080C0ECE
_080C0D2C:
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r5, #0
	movs r1, #1
	b _080C0ECE
_080C0D36:
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	beq _080C0D3E
	b _080C0F04
_080C0D3E:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _080C0D6E
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	bl sub_08002058
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C0D68
	b _080C0F04
_080C0D68:
	adds r0, r5, #0
	movs r1, #1
	b _080C0ECC
_080C0D6E:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	bl sub_0800207C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C0D92
	b _080C0F04
_080C0D92:
	adds r0, r5, #0
	movs r1, #3
	b _080C0ECC
_080C0D98:
	cmp r0, #0
	beq _080C0DBE
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	beq _080C0DA4
	b _080C0F04
_080C0DA4:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _080C0DB4
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r5, #0
	movs r1, #1
	b _080C0ECE
_080C0DB4:
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r5, #0
	movs r1, #3
	b _080C0ECE
_080C0DBE:
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	beq _080C0DC6
	b _080C0F04
_080C0DC6:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _080C0DF6
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	bl sub_0800207C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C0DF0
	b _080C0F04
_080C0DF0:
	adds r0, r5, #0
	movs r1, #3
	b _080C0ECC
_080C0DF6:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	bl sub_08002058
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080C0F04
	adds r0, r5, #0
	movs r1, #1
	b _080C0ECC
_080C0E1E:
	cmp r0, #0
	beq _080C0E42
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	bne _080C0F04
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _080C0E38
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r5, #0
	movs r1, #0
	b _080C0ECE
_080C0E38:
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r5, #0
	movs r1, #2
	b _080C0ECE
_080C0E42:
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	bne _080C0F04
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _080C0EA6
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	bl sub_08001C1C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080C0F04
	adds r0, r5, #0
	movs r1, #2
	b _080C0ECC
_080C0E76:
	cmp r0, #0
	beq _080C0E9A
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	bne _080C0F04
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _080C0E90
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r5, #0
	movs r1, #2
	b _080C0ECE
_080C0E90:
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r5, #0
	movs r1, #0
	b _080C0ECE
_080C0E9A:
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	bne _080C0F04
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _080C0ED6
_080C0EA6:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	bl sub_080C05D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080C0F04
	adds r0, r5, #0
	movs r1, #0
_080C0ECC:
	movs r2, #0
_080C0ECE:
	movs r3, #0
	bl sub_080C0630
	b _080C0F04
_080C0ED6:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	bl sub_08001C1C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080C0F04
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_080C0630
_080C0F04:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080C0F14
sub_080C0F14: @ 0x080C0F14
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0x80
	lsls r5, r5, #8
	ldrb r0, [r4, #0xb]
	cmp r0, #4
	bls _080C0F24
	b _080C10AE
_080C0F24:
	lsls r0, r0, #2
	ldr r1, _080C0F30 @ =_080C0F34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C0F30: .4byte _080C0F34
_080C0F34: @ jump table
	.4byte _080C0F48 @ case 0
	.4byte _080C0F58 @ case 1
	.4byte _080C0FD8 @ case 2
	.4byte _080C1058 @ case 3
	.4byte _080C108C @ case 4
_080C0F48:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r4, #0xb]
_080C0F58:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C0F68
	b _080C10AE
_080C0F68:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r1, [r4, #0x11]
	movs r2, #0
	movs r0, #4
	orrs r0, r1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	beq _080C0F94
	cmp r0, #2
	bgt _080C0F8E
	cmp r0, #1
	beq _080C0F9A
	b _080C0FC6
_080C0F8E:
	cmp r0, #3
	beq _080C0FAC
	b _080C0FC6
_080C0F94:
	str r2, [r4, #0x14]
	str r2, [r4, #0x4c]
	b _080C0FC6
_080C0F9A:
	bl RandomNumberGenerator
	ldr r1, _080C0FA8 @ =0x00001FFF
	ands r1, r0
	adds r1, r5, r1
	rsbs r1, r1, #0
	b _080C0FB6
	.align 2, 0
_080C0FA8: .4byte 0x00001FFF
_080C0FAC:
	bl RandomNumberGenerator
	ldr r1, _080C1000 @ =0x00001FFF
	ands r1, r0
	adds r1, r5, r1
_080C0FB6:
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #8
	bl sub_0802D5EC
	ldr r1, _080C1004 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
_080C0FC6:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl PlaySong
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	movs r0, #2
	strb r0, [r4, #0xb]
_080C0FD8:
	ldr r1, [r4, #0x14]
	ldr r2, _080C1008 @ =0x08528914
	adds r0, r4, #0
	movs r3, #0x22
	bl sub_0806CAF8
	adds r1, r0, #0
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080C1010
	ldr r3, _080C100C @ =0xFFFE0000
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	bl sub_080C04C8
	movs r0, #0
	strb r0, [r4, #0xc]
	b _080C104A
	.align 2, 0
_080C1000: .4byte 0x00001FFF
_080C1004: .4byte 0xFFFF0000
_080C1008: .4byte 0x08528914
_080C100C: .4byte 0xFFFE0000
_080C1010:
	movs r5, #1
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _080C1034
	movs r2, #0x80
	lsls r2, r2, #9
	ldr r3, _080C1030 @ =0xFFFE8000
	adds r0, r4, #0
	movs r1, #3
	bl sub_080C04C8
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
	b _080C10AE
	.align 2, 0
_080C1030: .4byte 0xFFFE8000
_080C1034:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080C10AE
	ldr r2, _080C1050 @ =0xFFFF0000
	ldr r3, _080C1054 @ =0xFFFE8000
	adds r0, r4, #0
	movs r1, #3
	bl sub_080C04C8
	strb r5, [r4, #0xc]
_080C104A:
	movs r0, #3
	strb r0, [r4, #0xb]
	b _080C10AE
	.align 2, 0
_080C1050: .4byte 0xFFFF0000
_080C1054: .4byte 0xFFFE8000
_080C1058:
	ldr r0, _080C10B4 @ =0x00000163
	bl PlaySong
	ldr r1, _080C10B8 @ =0x08528922
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x20]
	ldrb r1, [r4, #0x11]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r4, #0x11]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_080C06A8
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #4
	strb r0, [r4, #0xb]
_080C108C:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C10AE
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	strb r0, [r4, #0x12]
_080C10AE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C10B4: .4byte 0x00000163
_080C10B8: .4byte 0x08528922

	thumb_func_start sub_080C10BC
sub_080C10BC: @ 0x080C10BC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r1, #0x20
	ldrsh r0, [r6, r1]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r7, r0, r1
	ldrb r4, [r6, #0xb]
	cmp r4, #0
	beq _080C10D6
	cmp r4, #1
	beq _080C10FE
	b _080C11B8
_080C10D6:
	movs r0, #0x70
	bl PlaySong
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r1, [r6, #0x11]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C10FA
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x54]
	strh r4, [r6, #0x20]
_080C10FA:
	movs r0, #1
	strb r0, [r6, #0xb]
_080C10FE:
	ldrb r1, [r6, #0x11]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C113E
	ldr r1, [r6, #0x14]
	ldr r2, _080C11A4 @ =0x08528914
	adds r0, r6, #0
	movs r3, #0x22
	bl sub_0806CAF8
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _080C113E
	ldrb r1, [r6, #0x11]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0
	strb r0, [r6, #0x11]
	str r1, [r6, #0x14]
	ldr r1, [r6, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #9
	subs r0, r0, r1
	asrs r0, r0, #8
	movs r1, #0xa0
	lsls r1, r1, #3
	muls r1, r0, r1
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
_080C113E:
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	ble _080C11B4
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r7, r1
	bl sub_080009E4
	asrs r0, r0, #8
	movs r4, #0x12
	adds r5, r0, #0
	muls r5, r4, r5
	adds r0, r7, #0
	bl sub_080009E4
	asrs r0, r0, #8
	adds r1, r0, #0
	muls r1, r4, r1
	ldr r0, [r6, #0x40]
	adds r0, r0, r5
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C1188
	ldr r3, _080C11A8 @ =0xFFFE0000
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	bl sub_080C04C8
_080C1188:
	ldrb r1, [r6, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080C1198
	ldr r0, _080C11AC @ =0x00000165
	bl PlaySong
_080C1198:
	ldr r0, [r6, #0x1c]
	ldr r1, _080C11B0 @ =0xFFFFFC00
	adds r0, r0, r1
	str r0, [r6, #0x1c]
	b _080C11B8
	.align 2, 0
_080C11A4: .4byte 0x08528914
_080C11A8: .4byte 0xFFFE0000
_080C11AC: .4byte 0x00000165
_080C11B0: .4byte 0xFFFFFC00
_080C11B4:
	movs r0, #1
	b _080C11BA
_080C11B8:
	movs r0, #0
_080C11BA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start EnemySlimeCreate
EnemySlimeCreate: @ 0x080C11C0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r1, _080C11FC @ =0x08260320
	ldr r2, _080C1200 @ =0x082664DC
	ldrh r3, [r6, #0x32]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, _080C1204 @ =0x0826798C
	str r0, [sp]
	adds r0, r6, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C11F4
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080C1208
_080C11F4:
	adds r0, r6, #0
	bl EntityDelete
	b _080C133A
	.align 2, 0
_080C11FC: .4byte 0x08260320
_080C1200: .4byte 0x082664DC
_080C1204: .4byte 0x0826798C
_080C1208:
	adds r5, r6, #0
	adds r5, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r5]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	adds r4, r6, #0
	adds r4, #0x59
	ldrb r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4]
	movs r7, #0
	strh r7, [r6, #0x20]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r6, #0x18]
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	bl sub_0806B04C
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	ldr r0, _080C1288 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	mov r8, r5
	mov sb, r4
	cmp r0, #0
	beq _080C128C
	movs r1, #0x20
	ldrsh r0, [r6, r1]
	ldr r1, [r6, #0x18]
	ldr r2, [r6, #0x1c]
	ldrb r4, [r5]
	lsls r3, r4, #0x19
	lsrs r3, r3, #0x1f
	str r7, [sp]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1b
	str r4, [sp, #4]
	bl sub_0803E058
	movs r0, #3
	strb r0, [r6, #0xa]
	b _080C133A
	.align 2, 0
_080C1288: .4byte gEwramData
_080C128C:
	ldr r2, _080C12BC @ =sub_080C13DC
	ldr r3, _080C12C0 @ =sub_080C140C
	adds r0, r6, #0
	movs r1, #8
	bl sub_0804277C
	ldr r4, _080C12C4 @ =0x1010F8F8
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042884
	movs r3, #0x30
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bne _080C12C8
	adds r0, r6, #0
	bl sub_0806AF98
	b _080C130E
	.align 2, 0
_080C12BC: .4byte sub_080C13DC
_080C12C0: .4byte sub_080C140C
_080C12C4: .4byte 0x1010F8F8
_080C12C8:
	adds r7, r6, #0
	adds r7, #0x46
	adds r5, r7, #0
_080C12CE:
	adds r0, r6, #0
	bl GetEntityRoomXPositionInteger
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	bl GetEntityRoomYPositionInteger
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080C12FC
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r5]
	b _080C12CE
_080C12FC:
	ldrh r0, [r7]
	adds r0, #5
	adds r0, r1, r0
	strh r0, [r7]
	movs r0, #2
	strb r0, [r6, #0xc]
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r6, #0x20]
_080C130E:
	movs r1, #0x20
	ldrsh r0, [r6, r1]
	ldr r1, [r6, #0x18]
	ldr r2, [r6, #0x1c]
	mov r3, r8
	ldrb r4, [r3]
	lsls r3, r4, #0x19
	lsrs r3, r3, #0x1f
	movs r5, #0
	str r5, [sp]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1b
	str r4, [sp, #4]
	bl sub_0803E058
	mov r1, sb
	ldrb r0, [r1]
	movs r1, #2
	orrs r0, r1
	mov r3, sb
	strb r0, [r3]
	strb r5, [r6, #0xa]
_080C133A:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start EnemySlimeUpdate
EnemySlimeUpdate: @ 0x080C1348
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080C13D4
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	beq _080C1378
	cmp r0, #1
	bgt _080C1366
	cmp r0, #0
	beq _080C1370
	b _080C13A8
_080C1366:
	cmp r0, #2
	beq _080C1380
	cmp r0, #3
	beq _080C13A0
	b _080C13A8
_080C1370:
	adds r0, r6, #0
	bl sub_080C0A1C
	b _080C13A8
_080C1378:
	adds r0, r6, #0
	bl sub_080C0F14
	b _080C13A8
_080C1380:
	adds r0, r6, #0
	bl sub_080C10BC
	cmp r0, #0
	beq _080C13A8
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r6, #0
	bl EntityDelete
	b _080C13D4
_080C13A0:
	adds r0, r6, #0
	bl sub_0803F17C
	b _080C13D4
_080C13A8:
	movs r1, #0x20
	ldrsh r0, [r6, r1]
	ldr r1, [r6, #0x18]
	ldr r2, [r6, #0x1c]
	adds r3, r6, #0
	adds r3, #0x58
	ldrb r4, [r3]
	lsls r3, r4, #0x19
	lsrs r3, r3, #0x1f
	movs r5, #0
	str r5, [sp]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1b
	str r4, [sp, #4]
	bl sub_0803E058
	adds r0, r6, #0
	bl sub_0806E314
	adds r0, r6, #0
	bl sub_0803F17C
_080C13D4:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C13DC
sub_080C13DC: @ 0x080C13DC
	push {lr}
	sub sp, #0x10
	mov r2, sp
	movs r3, #0
	movs r1, #0x40
	strh r1, [r2, #2]
	mov r1, sp
	strh r3, [r1, #4]
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	strh r1, [r2]
	mov r1, sp
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

	thumb_func_start sub_080C140C
sub_080C140C: @ 0x080C140C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r3, [r4, #0x11]
	movs r0, #1
	orrs r0, r3
	strb r0, [r4, #0x11]
	adds r0, r4, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080C144C
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
	movs r0, #2
	strb r0, [r4, #0xa]
	movs r0, #0
	strb r0, [r4, #0xb]
_080C144C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C1454
sub_080C1454: @ 0x080C1454
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #0xb
	bl sub_0806D3D8
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r3, #0x98
	lsls r3, r3, #1
	movs r0, #0xe0
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08068AD4
	cmp r0, #0
	bne _080C1486
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080C1486:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyAltairCreate
EnemyAltairCreate: @ 0x080C1490
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080C1C54
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C14A0
	b _080C15C2
_080C14A0:
	adds r1, r4, #0
	adds r1, #0x5c
	movs r5, #0
	movs r0, #3
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0806B04C
	str r5, [r4, #0x14]
	strb r5, [r4, #0x1d]
	ldr r0, _080C14D8 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C14DC
	movs r0, #4
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080C15C2
	.align 2, 0
_080C14D8: .4byte gEwramData
_080C14DC:
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080C1504
	movs r0, #5
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
	b _080C15C2
_080C1504:
	ldr r1, _080C1524 @ =sub_080C1D0C
	ldr r2, _080C1528 @ =sub_080C19E0
	adds r0, r4, #0
	bl sub_0806D244
	movs r2, #0x30
	ldrsh r0, [r4, r2]
	cmp r0, #2
	bne _080C152C
	adds r0, r4, #0
	adds r0, #0x4a
	ldrh r0, [r0]
	rsbs r0, r0, #0
	subs r0, #0x10
	b _080C153E
	.align 2, 0
_080C1524: .4byte sub_080C1D0C
_080C1528: .4byte sub_080C19E0
_080C152C:
	cmp r0, #3
	bne _080C1544
	adds r1, r4, #0
	adds r1, #0x4a
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
_080C153E:
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
_080C1544:
	bl RandomNumberGenerator
	adds r2, r4, #0
	adds r2, #0x46
	movs r1, #0x1f
	ands r1, r0
	ldr r0, _080C1578 @ =0x0000FFF0
	adds r1, r1, r0
	ldrh r0, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	adds r0, r4, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C157C
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _080C1588
	.align 2, 0
_080C1578: .4byte 0x0000FFF0
_080C157C:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
_080C1588:
	ldr r1, [r4, #0x20]
	ldrb r0, [r1, #0x19]
	cmp r0, #1
	bhi _080C15B6
	cmp r1, #0
	beq _080C15B6
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bne _080C15A2
	adds r0, r4, #0
	movs r1, #0x18
	b _080C15AA
_080C15A2:
	cmp r0, #2
	bne _080C15C2
	adds r0, r4, #0
	movs r1, #0x4a
_080C15AA:
	movs r2, #0xff
	movs r3, #0xff
	bl sub_080C1A64
	cmp r0, #0
	bne _080C15C2
_080C15B6:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080C15C2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start EnemyAltairUpdate
EnemyAltairUpdate: @ 0x080C15C8
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r1, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _080C15DE
	adds r0, r4, #0
	bl sub_080C1CDC
	b _080C168C
_080C15DE:
	cmp r0, #5
	bne _080C15EA
	adds r0, r4, #0
	bl sub_080C1940
	b _080C168C
_080C15EA:
	ldr r0, [r1]
	cmp r0, #0
	bne _080C15F2
	str r0, [r4, #0x14]
_080C15F2:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080C15FE
	adds r0, r4, #0
	bl sub_0806AE54
_080C15FE:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _080C160E
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _080C1622
_080C160E:
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C162C
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080C162C
	cmp r0, #2
	beq _080C162C
_080C1622:
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080C168C
_080C162C:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080C1638
	cmp r0, #2
	beq _080C1640
	b _080C1646
_080C1638:
	adds r0, r4, #0
	bl sub_080C1694
	b _080C1646
_080C1640:
	adds r0, r4, #0
	bl sub_080C1898
_080C1646:
	adds r0, r4, #0
	bl sub_0806DF20
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080C165A
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080C165A:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080C168C
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _080C168C
	ldr r0, [r1]
	cmp r0, #0
	beq _080C168C
	adds r0, r1, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x2c
	bne _080C168C
	ldrh r2, [r1, #0x1e]
	movs r3, #0x1e
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080C168C
	subs r0, r2, #1
	strh r0, [r1, #0x1e]
_080C168C:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C1694
sub_080C1694: @ 0x080C1694
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x14]
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bls _080C16A2
	b _080C1852
_080C16A2:
	lsls r0, r0, #2
	ldr r1, _080C16AC @ =_080C16B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C16AC: .4byte _080C16B0
_080C16B0: @ jump table
	.4byte _080C16C8 @ case 0
	.4byte _080C1712 @ case 1
	.4byte _080C17B4 @ case 2
	.4byte _080C17CE @ case 3
	.4byte _080C1830 @ case 4
	.4byte _080C184A @ case 5
_080C16C8:
	cmp r6, #0
	beq _080C16DC
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	b _080C16EA
_080C16DC:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #1
_080C16EA:
	strb r0, [r5, #0x18]
	movs r2, #0xa0
	lsls r2, r2, #8
	str r2, [r5, #0x48]
	movs r0, #0
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080C1708
	rsbs r0, r2, #0
	str r0, [r5, #0x48]
_080C1708:
	movs r0, #0x30
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_080C1712:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	cmp r6, #0
	bne _080C1720
	b _080C1852
_080C1720:
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	ldr r0, [r5, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r5, #0x44]
	movs r1, #0x98
	lsls r1, r1, #0xd
	adds r0, r0, r1
	str r0, [r6, #0x44]
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r0, [r4]
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
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080C1778
	cmp r7, #0x50
	ble _080C176E
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	cmp r1, #0
	bne _080C1796
	b _080C1792
_080C176E:
	movs r0, #4
	rsbs r0, r0, #0
	cmp r7, r0
	bge _080C1796
	b _080C1792
_080C1778:
	movs r0, #0x50
	rsbs r0, r0, #0
	cmp r7, r0
	bge _080C178E
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	cmp r1, #0
	bne _080C1796
	b _080C1792
_080C178E:
	cmp r7, #4
	ble _080C1796
_080C1792:
	movs r0, #1
	strb r0, [r5, #0x1d]
_080C1796:
	ldrb r0, [r5, #0x1d]
	cmp r0, #1
	bne _080C1852
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x21
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xae
	bhi _080C1852
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	b _080C182A
_080C17B4:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r1, #0
	movs r0, #2
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
_080C17CE:
	ldr r1, [r5, #0x40]
	ldr r0, [r5, #0x48]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	cmp r6, #0
	beq _080C1800
	str r1, [r6, #0x40]
	ldr r0, [r5, #0x44]
	movs r3, #0x88
	lsls r3, r3, #0xd
	adds r0, r0, r3
	str r0, [r6, #0x44]
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
_080C1800:
	ldrb r0, [r5, #0x18]
	cmp r0, #2
	bne _080C1852
	adds r0, r5, #0
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #7
	bne _080C1852
	adds r0, r5, #0
	adds r0, #0x6f
	ldrb r1, [r0]
	cmp r1, #0
	bne _080C1852
	cmp r6, #0
	beq _080C1824
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
_080C1824:
	strb r1, [r5, #0x1c]
	ldrb r0, [r5, #0xb]
	adds r0, #1
_080C182A:
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	b _080C1852
_080C1830:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
_080C184A:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_080C1852:
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, #8
	movs r3, #0
	ldrsh r1, [r0, r3]
	rsbs r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _080C1872
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	ble _080C1892
_080C1872:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _080C1892
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	bhi _080C1892
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r0, #0
	strb r0, [r1, #0xd]
_080C1892:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080C1898
sub_080C1898: @ 0x080C1898
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x14]
	ldrb r3, [r5, #0xb]
	cmp r3, #0
	beq _080C18AA
	cmp r3, #1
	beq _080C191A
	b _080C193A
_080C18AA:
	cmp r1, #0
	beq _080C18C2
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _080C18C2
	ldrb r2, [r1, #0xa]
	adds r0, r2, #0
	cmp r0, #0xff
	beq _080C18C2
	movs r0, #0xff
	strb r0, [r1, #0xa]
	strb r3, [r1, #0xb]
_080C18C2:
	movs r7, #1
	movs r6, #4
_080C18C6:
	adds r0, r5, #0
	bl sub_080C1D38
	adds r4, r0, #0
	cmp r4, #0
	beq _080C18E6
	bl RandomNumberGenerator
	ands r0, r7
	cmp r0, #0
	beq _080C18E6
	adds r0, r4, #0
	movs r1, #0
	bl sub_080C1DF0
	b _080C18EE
_080C18E6:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080C1DF0
_080C18EE:
	subs r6, #1
	cmp r6, #0
	bge _080C18C6
	movs r0, #0x72
	bl PlaySong
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r5, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #8
	str r0, [r5, #0x4c]
	movs r0, #0x3f
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_080C191A:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	movs r2, #0x80
	lsls r2, r2, #0xd
	movs r3, #0xc0
	lsls r3, r3, #0xc
	adds r0, r5, #0
	movs r1, #0xf
	bl sub_0806BE74
_080C193A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080C1940
sub_080C1940: @ 0x080C1940
	push {r4, r5, lr}
	adds r4, r0, #0
	bl RandomNumberGenerator
	adds r5, r0, #0
	movs r0, #0x3f
	ands r5, r0
	cmp r5, #0
	bne _080C19CE
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bgt _080C19CE
	ldr r2, _080C19D4 @ =EntityUpdateNothing
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r3, r0, #0
	cmp r3, #0
	beq _080C19CE
	ldr r0, [r4, #0x44]
	str r0, [r3, #0x44]
	adds r2, r3, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x37
	strb r5, [r0]
	adds r5, r4, #0
	adds r5, #0x36
	ldrb r0, [r5]
	adds r1, r3, #0
	adds r1, #0x36
	strb r0, [r1]
	ldrh r1, [r4, #0x1e]
	movs r0, #1
	ands r0, r1
	adds r0, #2
	strh r0, [r3, #0x30]
	ldrh r0, [r4, #0x32]
	strh r0, [r3, #0x32]
	ldr r0, _080C19D8 @ =sub_0803B9D0
	str r0, [r3, #4]
	ldr r2, _080C19DC @ =0x080E9644
	ldrb r1, [r5]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	strh r0, [r3, #0x34]
	ldrb r1, [r5]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xe]
	strh r0, [r3, #0x2e]
	ldr r0, [r4]
	str r0, [r3]
	str r4, [r3, #0x20]
	adds r0, r3, #0
	bl EnemyAltairCreate
	ldrh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1e]
_080C19CE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C19D4: .4byte EntityUpdateNothing
_080C19D8: .4byte sub_0803B9D0
_080C19DC: .4byte 0x080E9644

	thumb_func_start sub_080C19E0
sub_080C19E0: @ 0x080C19E0
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
	movs r4, #0
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
	bgt _080C1A5E
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
	movs r0, #0x32
	strb r0, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
	str r4, [r6, #0x48]
	str r4, [r6, #0x50]
	str r4, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x54]
_080C1A5E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C1A64
sub_080C1A64: @ 0x080C1A64
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	movs r7, #0
	ldr r2, _080C1B40 @ =EntityUpdateNothing
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	str r4, [r5, #0x14]
	cmp r4, #0
	beq _080C1B32
	movs r0, #1
	strb r0, [r5, #0x1c]
	ldr r1, [r5, #0x40]
	str r1, [r4, #0x40]
	ldr r0, [r5, #0x44]
	movs r2, #0x98
	lsls r2, r2, #0xd
	adds r0, r0, r2
	str r0, [r4, #0x44]
	movs r2, #0
	ldr r0, _080C1B44 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _080C1B48 @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _080C1AB8
	movs r2, #1
_080C1AB8:
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #1
	ands r1, r2
	lsls r1, r1, #6
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
	mov r0, sb
	strh r0, [r4, #0x30]
	mov r2, r8
	strh r2, [r4, #0x32]
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x37
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x36
	strb r6, [r0]
	ldr r0, _080C1B4C @ =sub_0803B9D0
	str r0, [r4, #4]
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _080C1B50 @ =0x080E9644
	adds r0, r0, r1
	ldrh r1, [r0, #0xc]
	strh r1, [r4, #0x34]
	ldr r1, [r0, #4]
	str r1, [r4]
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, [r4]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r7, r0, #0x1f
	ldr r1, [r5, #0x20]
	cmp r1, #0
	beq _080C1B32
	ldrb r0, [r1, #0x19]
	adds r0, #1
	strb r0, [r1, #0x19]
	ldrb r0, [r4, #0x19]
	adds r0, #1
	strb r0, [r4, #0x19]
	ldr r0, [r5, #0x20]
	ldrh r0, [r0, #0x10]
	strh r0, [r4, #0x12]
_080C1B32:
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080C1B40: .4byte EntityUpdateNothing
_080C1B44: .4byte gEwramData
_080C1B48: .4byte 0x00013110
_080C1B4C: .4byte sub_0803B9D0
_080C1B50: .4byte 0x080E9644

	thumb_func_start sub_080C1B54
sub_080C1B54: @ 0x080C1B54
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, [r6, #0x10]
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	beq _080C1BF8
	cmp r0, #2
	ble _080C1B6A
	cmp r0, #3
	beq _080C1C40
	b _080C1C4C
_080C1B6A:
	cmp r0, #0
	blt _080C1C4C
	adds r1, r6, #0
	adds r1, #0x5c
	movs r5, #2
	movs r0, #2
	strb r0, [r1]
	bl RandomNumberGenerator
	adds r2, r7, #0
	adds r2, #0x42
	movs r1, #0x1f
	ands r1, r0
	ldr r0, _080C1BE8 @ =0x0000FFF0
	adds r1, r1, r0
	ldrh r2, [r2]
	adds r1, r1, r2
	adds r0, r6, #0
	adds r0, #0x42
	movs r4, #0
	strh r1, [r0]
	bl RandomNumberGenerator
	adds r2, r7, #0
	adds r2, #0x46
	movs r1, #0xf
	ands r1, r0
	ldr r0, _080C1BEC @ =0x0000FFF8
	adds r1, r1, r0
	ldrh r2, [r2]
	adds r1, r1, r2
	adds r0, r6, #0
	adds r0, #0x46
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #0x4c]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xd]
	bl RandomNumberGenerator
	ldr r1, _080C1BF0 @ =0x00003FFF
	ands r1, r0
	ldr r0, _080C1BF4 @ =0xFFFFE000
	adds r1, r1, r0
	strh r1, [r6, #0x24]
	movs r0, #0xd0
	lsls r0, r0, #4
	strh r0, [r6, #0x26]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	adds r1, #0x40
	strh r1, [r6, #0x14]
	adds r1, r6, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r5
	strb r0, [r1]
	b _080C1C4C
	.align 2, 0
_080C1BE8: .4byte 0x0000FFF0
_080C1BEC: .4byte 0x0000FFF8
_080C1BF0: .4byte 0x00003FFF
_080C1BF4: .4byte 0xFFFFE000
_080C1BF8:
	ldrh r0, [r6, #0x16]
	bl sub_080009E4
	cmp r0, #0
	bge _080C1C04
	adds r0, #3
_080C1C04:
	asrs r1, r0, #2
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldrh r0, [r6, #0x14]
	ldrh r1, [r6, #0x16]
	adds r0, r0, r1
	strh r0, [r6, #0x16]
	lsls r1, r0, #0x10
	cmp r1, #0
	bge _080C1C2C
	ldr r0, _080C1C28 @ =0x9FFF0000
	b _080C1C2E
	.align 2, 0
_080C1C28: .4byte 0x9FFF0000
_080C1C2C:
	ldr r0, _080C1C3C @ =0x1FFF0000
_080C1C2E:
	cmp r1, r0
	bls _080C1C4C
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	b _080C1C4C
	.align 2, 0
_080C1C3C: .4byte 0x1FFF0000
_080C1C40:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080C1C4C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C1C54
sub_080C1C54: @ 0x080C1C54
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r7, _080C1CB8 @ =0x0820BD70
	ldr r0, _080C1CBC @ =0x0824B660
	mov r8, r0
	ldr r6, _080C1CC0 @ =0x081F4234
	adds r0, r6, #0
	bl sub_0803AFB8
	adds r5, r0, #0
	cmp r5, #0
	bge _080C1C7E
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080C1CC8
_080C1C7E:
	adds r0, r7, #0
	bl sub_080681D8
	adds r1, r4, #0
	adds r1, #0x2c
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080C1CC8
	ldrb r3, [r1]
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080C1CC4 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080C1CD0
	.align 2, 0
_080C1CB8: .4byte 0x0820BD70
_080C1CBC: .4byte 0x0824B660
_080C1CC0: .4byte 0x081F4234
_080C1CC4: .4byte sub_0803B9D0
_080C1CC8:
	adds r0, r4, #0
	bl EntityDelete
	movs r0, #0
_080C1CD0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C1CDC
sub_080C1CDC: @ 0x080C1CDC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080C1CEC
	cmp r0, #1
	beq _080C1CFE
	b _080C1D04
_080C1CEC:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C1CFE:
	adds r0, r4, #0
	bl sub_0803F17C
_080C1D04:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C1D0C
sub_080C1D0C: @ 0x080C1D0C
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

	thumb_func_start sub_080C1D38
sub_080C1D38: @ 0x080C1D38
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _080C1D60 @ =sub_080C1B54
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080C1D66
	bl sub_080C1D70
	cmp r0, #0
	bne _080C1D64
	adds r0, r4, #0
	bl EntityDelete
	movs r0, #0
	b _080C1D68
	.align 2, 0
_080C1D60: .4byte sub_080C1B54
_080C1D64:
	str r5, [r4, #0x10]
_080C1D66:
	adds r0, r4, #0
_080C1D68:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C1D70
sub_080C1D70: @ 0x080C1D70
	push {lr}
	bl sub_080C1D88
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C1D88
sub_080C1D88: @ 0x080C1D88
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, _080C1DD0 @ =0x0820BD70
	ldr r7, _080C1DD4 @ =0x0824B660
	ldr r0, _080C1DD8 @ =0x081F4234
	bl sub_0803AFB8
	adds r5, r0, #0
	cmp r5, #0
	blt _080C1DE0
	adds r0, r6, #0
	bl sub_080681D8
	adds r1, r4, #0
	adds r1, #0x2c
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080C1DE0
	ldrb r3, [r1]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_0803B924
	cmp r0, #0
	beq _080C1DE0
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #9
	strb r0, [r1]
	ldr r0, _080C1DDC @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080C1DE8
	.align 2, 0
_080C1DD0: .4byte 0x0820BD70
_080C1DD4: .4byte 0x0824B660
_080C1DD8: .4byte 0x081F4234
_080C1DDC: .4byte sub_0803B9D0
_080C1DE0:
	adds r0, r4, #0
	bl EntityDelete
	movs r0, #0
_080C1DE8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C1DF0
sub_080C1DF0: @ 0x080C1DF0
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0
	bne _080C1E00
	strh r1, [r2, #0x16]
	b _080C1E06
_080C1E00:
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r2, #0x16]
_080C1E06:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyFleamanCreate
EnemyFleamanCreate: @ 0x080C1E0C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080C1E88
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C1E7A
	adds r1, r4, #0
	adds r1, #0x5c
	movs r5, #0
	movs r0, #0x14
	strb r0, [r1]
	movs r6, #1
	strb r6, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _080C1E50 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _080C1E54
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080C1E7A
	.align 2, 0
_080C1E50: .4byte gEwramData
_080C1E54:
	ldrh r1, [r4, #0x30]
	ldrh r0, [r4, #0x32]
	ands r0, r1
	cmp r0, #0xff
	bne _080C1E62
	strb r6, [r4, #0x14]
	b _080C1E64
_080C1E62:
	strb r2, [r4, #0x14]
_080C1E64:
	ldr r1, _080C1E80 @ =sub_080C242C
	ldr r2, _080C1E84 @ =sub_080C2458
	adds r0, r4, #0
	bl sub_0806D244
	ldrb r0, [r4, #0x14]
	cmp r0, #1
	beq _080C1E7A
	adds r0, r4, #0
	bl sub_0806AF98
_080C1E7A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C1E80: .4byte sub_080C242C
_080C1E84: .4byte sub_080C2458

	thumb_func_start sub_080C1E88
sub_080C1E88: @ 0x080C1E88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r7, _080C1EF8 @ =0x0820BD94
	ldr r0, _080C1EFC @ =0x0824B92C
	mov r8, r0
	ldr r6, _080C1F00 @ =0x081F423C
	adds r0, r6, #0
	bl sub_0803AFB8
	adds r5, r0, #0
	cmp r5, #0
	bge _080C1EB2
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080C1F0A
_080C1EB2:
	adds r0, r7, #0
	bl sub_080681D8
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080C1F0A
	adds r0, r4, #0
	adds r0, #0x2c
	strb r1, [r0]
	ldrb r3, [r0]
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_0803B924
	cmp r0, #0
	beq _080C1F0A
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	cmp r0, #0
	beq _080C1F08
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080C1F04 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080C1F12
	.align 2, 0
_080C1EF8: .4byte 0x0820BD94
_080C1EFC: .4byte 0x0824B92C
_080C1F00: .4byte 0x081F423C
_080C1F04: .4byte sub_0803B9D0
_080C1F08:
	strb r0, [r4, #0x15]
_080C1F0A:
	adds r0, r4, #0
	bl EntityDelete
	movs r0, #0
_080C1F12:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start EnemyFleamanUpdate
EnemyFleamanUpdate: @ 0x080C1F1C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080C1F4E
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080C1F34
	cmp r0, #1
	beq _080C1F46
	b _080C1FB4
_080C1F34:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C1F46:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080C1FB4
_080C1F4E:
	cmp r0, #0xff
	beq _080C1F58
	adds r0, r4, #0
	bl sub_0806AE54
_080C1F58:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _080C1F68
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	bne _080C1F7C
_080C1F68:
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C1F86
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080C1F86
	cmp r0, #0xff
	beq _080C1F86
_080C1F7C:
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080C1FB4
_080C1F86:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080C1F92
	cmp r0, #0xff
	beq _080C1F9A
	b _080C1FA0
_080C1F92:
	adds r0, r4, #0
	bl sub_080C1FBC
	b _080C1FA0
_080C1F9A:
	adds r0, r4, #0
	bl sub_080C2388
_080C1FA0:
	adds r0, r4, #0
	bl sub_0806DF20
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	beq _080C1FB4
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080C1FB4:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C1FBC
sub_080C1FBC: @ 0x080C1FBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r2, _080C1FF0 @ =gEwramData
	movs r0, #0x12
	ldrsh r1, [r5, r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C1FF4 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	ldrb r0, [r5, #0xb]
	cmp r0, #6
	bls _080C1FE4
	b _080C2378
_080C1FE4:
	lsls r0, r0, #2
	ldr r1, _080C1FF8 @ =_080C1FFC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C1FF0: .4byte gEwramData
_080C1FF4: .4byte 0x000004E4
_080C1FF8: .4byte _080C1FFC
_080C1FFC: @ jump table
	.4byte _080C2018 @ case 0
	.4byte _080C205E @ case 1
	.4byte _080C2072 @ case 2
	.4byte _080C20E2 @ case 3
	.4byte _080C2120 @ case 4
	.4byte _080C2254 @ case 5
	.4byte _080C2254 @ case 6
_080C2018:
	adds r1, r5, #0
	adds r1, #0x5c
	movs r4, #0
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0x15]
	adds r2, r5, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #8
	str r2, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080C2054
	rsbs r0, r2, #0
	str r0, [r5, #0x48]
_080C2054:
	ldrb r0, [r5, #0x14]
	cmp r0, #1
	beq _080C205C
	movs r0, #4
_080C205C:
	strb r0, [r5, #0xb]
_080C205E:
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x4c]
	str r0, [r5, #0x54]
	cmp r6, #0
	beq _080C206C
	b _080C2378
_080C206C:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	b _080C2376
_080C2072:
	ldrb r0, [r5, #0x15]
	cmp r0, #3
	beq _080C20A0
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r1, #0
	movs r0, #3
	strb r0, [r5, #0x15]
	adds r2, r5, #0
	adds r2, #0x6f
	strb r1, [r2]
	adds r1, r5, #0
	adds r1, #0x6e
	strb r0, [r1]
	subs r2, #3
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_080C20A0:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x54]
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r5, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_08002028
	cmp r0, #0
	bne _080C20D0
	b _080C2378
_080C20D0:
	adds r0, r5, #0
	bl sub_0806AF98
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	b _080C2378
_080C20E2:
	adds r0, r5, #0
	adds r0, #0x6f
	movs r4, #0
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	adds r2, r5, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bhi _080C210A
	b _080C2378
_080C210A:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0x15]
	b _080C2378
_080C2120:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C2142
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r2, [r0]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	b _080C214C
_080C2142:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
_080C214C:
	strb r1, [r0]
	adds r6, r0, #0
	bl RandomNumberGenerator
	movs r1, #0x1e
	bl __umodsi3
	cmp r0, #0xd
	bhi _080C21A4
	lsls r0, r0, #2
	ldr r1, _080C2168 @ =_080C216C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C2168: .4byte _080C216C
_080C216C: @ jump table
	.4byte _080C21D4 @ case 0
	.4byte _080C21D4 @ case 1
	.4byte _080C21D4 @ case 2
	.4byte _080C21D4 @ case 3
	.4byte _080C21D4 @ case 4
	.4byte _080C21D4 @ case 5
	.4byte _080C21D4 @ case 6
	.4byte _080C21D4 @ case 7
	.4byte _080C21D4 @ case 8
	.4byte _080C21D4 @ case 9
	.4byte _080C21F8 @ case 10
	.4byte _080C220C @ case 11
	.4byte _080C220C @ case 12
	.4byte _080C220C @ case 13
_080C21A4:
	movs r4, #0
	str r4, [r5, #0x48]
	ldr r0, _080C21D0 @ =0xFFFD0000
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	adds r0, #0x6f
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x6e
	movs r0, #1
	strb r0, [r1]
	b _080C222C
	.align 2, 0
_080C21D0: .4byte 0xFFFD0000
_080C21D4:
	movs r0, #0xd0
	lsls r0, r0, #8
	str r0, [r5, #0x48]
	ldr r0, _080C21F4 @ =0xFFFD0000
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #6
	b _080C223A
	.align 2, 0
_080C21F4: .4byte 0xFFFD0000
_080C21F8:
	movs r0, #0xd0
	lsls r0, r0, #9
	str r0, [r5, #0x48]
	ldr r0, _080C2208 @ =0xFFFD0000
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	b _080C221A
	.align 2, 0
_080C2208: .4byte 0xFFFD0000
_080C220C:
	movs r0, #0xd0
	lsls r0, r0, #8
	str r0, [r5, #0x48]
	ldr r0, _080C2250 @ =0xFFFB0000
	str r0, [r5, #0x4c]
	movs r0, #0xf0
	lsls r0, r0, #6
_080C221A:
	str r0, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r5, #0x15]
_080C222C:
	adds r2, r5, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #5
_080C223A:
	strb r0, [r5, #0xb]
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C2248
	b _080C2378
_080C2248:
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	b _080C2378
	.align 2, 0
_080C2250: .4byte 0xFFFB0000
_080C2254:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r2, [r5, #0x54]
	adds r1, r1, r2
	str r1, [r5, #0x4c]
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bne _080C22C8
	cmn r1, r2
	blt _080C2294
	cmp r1, r2
	bgt _080C2294
	adds r1, r5, #0
	adds r1, #0x6f
	movs r0, #0
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x6e
	movs r1, #2
	movs r0, #2
	strb r0, [r2]
	subs r2, #2
	ldrb r0, [r2]
	orrs r1, r0
	strb r1, [r2]
	b _080C22C8
_080C2294:
	adds r2, r5, #0
	adds r2, #0x6e
	ldrb r0, [r2]
	cmp r0, #0
	bne _080C22AC
	adds r1, r5, #0
	adds r1, #0x6f
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2]
	subs r2, #2
	b _080C22C0
_080C22AC:
	cmp r0, #2
	bne _080C22C8
	adds r1, r5, #0
	adds r1, #0x6f
	movs r0, #0
	strb r0, [r1]
	movs r0, #3
	strb r0, [r2]
	adds r2, r5, #0
	adds r2, #0x6c
_080C22C0:
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_080C22C8:
	adds r0, r5, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r0, r5, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov sl, r1
	asrs r0, r0, #0x10
	mov r8, r0
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r7, r0, #0x10
	adds r1, r7, #0
	subs r1, #0xa
	mov r0, r8
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r6, r5, #0
	adds r6, #0x46
	cmp r1, #0
	beq _080C2306
	ldrh r0, [r6]
	adds r0, r1, r0
	strh r0, [r6]
_080C2306:
	ldr r0, [r5, #0x48]
	adds r4, r5, #0
	adds r4, #0x42
	cmp r0, #0
	ble _080C232A
	mov r0, r8
	adds r0, #8
	adds r1, r7, #0
	subs r1, #8
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080C232A
	ldrh r0, [r4]
	adds r0, r1, r0
	strh r0, [r4]
_080C232A:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bge _080C2352
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, #8
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, #8
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080C2352
	ldrh r0, [r4]
	adds r0, r1, r0
	strh r0, [r4]
_080C2352:
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	bl sub_08002028
	cmp r0, #0
	beq _080C2378
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bne _080C2374
	adds r1, r5, #0
	adds r1, #0x6f
	movs r0, #0
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
_080C2374:
	movs r0, #4
_080C2376:
	strb r0, [r5, #0xb]
_080C2378:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C2388
sub_080C2388: @ 0x080C2388
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _080C23EA
	cmp r5, #1
	bgt _080C240E
	cmp r5, #0
	bne _080C240E
	movs r0, #0x72
	bl PlaySong
	adds r0, r4, #0
	bl sub_080683BC
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r4, #0x15]
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
	movs r0, #0x32
	strb r0, [r4, #0xd]
	movs r0, #0xff
	strb r0, [r4, #0xa]
	str r5, [r4, #0x48]
	str r5, [r4, #0x50]
	str r5, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	movs r0, #1
	strb r0, [r4, #0xb]
_080C23EA:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	beq _080C240A
	ldr r2, _080C2424 @ =gEwramData
	movs r0, #0x12
	ldrsh r1, [r4, r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C2428 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	ldrb r0, [r1, #0x19]
	subs r0, #1
	strb r0, [r1, #0x19]
_080C240A:
	movs r0, #2
	strb r0, [r4, #0xb]
_080C240E:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r3, #0xc0
	lsls r3, r3, #0xb
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_0806BE74
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C2424: .4byte gEwramData
_080C2428: .4byte 0x000004E4

	thumb_func_start sub_080C242C
sub_080C242C: @ 0x080C242C
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

	thumb_func_start sub_080C2458
sub_080C2458: @ 0x080C2458
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
	bgt _080C24A4
	movs r0, #0
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	bl sub_080C2388
_080C24A4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyRipperCreate
EnemyRipperCreate: @ 0x080C24AC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080C24D0 @ =0x0820BD94
	ldr r0, _080C24D4 @ =0x0824B92C
	ldr r1, _080C24D8 @ =0x081F423C
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #1
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C24DC
	adds r0, r4, #0
	bl EntityDelete
	b _080C2546
	.align 2, 0
_080C24D0: .4byte 0x0820BD94
_080C24D4: .4byte 0x0824B92C
_080C24D8: .4byte 0x081F423C
_080C24DC:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _080C2514 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _080C2518
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
	b _080C2546
	.align 2, 0
_080C2514: .4byte gEwramData
_080C2518:
	movs r3, #1
	strb r3, [r4, #0xa]
	strb r2, [r4, #0xc]
	strb r2, [r4, #0xb]
	ldrh r1, [r4, #0x30]
	ldrh r0, [r4, #0x32]
	ands r0, r1
	cmp r0, #0xff
	bne _080C252E
	strb r3, [r4, #0x14]
	b _080C2530
_080C252E:
	strb r2, [r4, #0x14]
_080C2530:
	ldr r1, _080C2550 @ =sub_0806E1B8
	ldr r2, _080C2554 @ =sub_080C2D70
	adds r0, r4, #0
	bl sub_0806D244
	ldrb r0, [r4, #0x14]
	cmp r0, #1
	beq _080C2546
	adds r0, r4, #0
	bl sub_0806AF98
_080C2546:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C2550: .4byte sub_0806E1B8
_080C2554: .4byte sub_080C2D70

	thumb_func_start EnemyRipperUpdate
EnemyRipperUpdate: @ 0x080C2558
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080C258A
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080C2570
	cmp r0, #1
	beq _080C2582
	b _080C25F0
_080C2570:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080C2582:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080C25F0
_080C258A:
	cmp r0, #0xff
	beq _080C2594
	adds r0, r4, #0
	bl sub_0806AE54
_080C2594:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _080C25A4
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	bne _080C25B8
_080C25A4:
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C25C2
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080C25C2
	cmp r0, #0xff
	beq _080C25C2
_080C25B8:
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080C25F0
_080C25C2:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080C25CE
	cmp r0, #0xff
	beq _080C25D6
	b _080C25DC
_080C25CE:
	adds r0, r4, #0
	bl sub_080C25F8
	b _080C25DC
_080C25D6:
	adds r0, r4, #0
	bl sub_080C2A18
_080C25DC:
	adds r0, r4, #0
	bl sub_0806DF20
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	beq _080C25F0
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080C25F0:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C25F8
sub_080C25F8: @ 0x080C25F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r2, _080C262C @ =gEwramData
	movs r0, #0x12
	ldrsh r1, [r5, r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C2630 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r6, r1, r0
	ldrb r0, [r5, #0xb]
	cmp r0, #6
	bls _080C2620
	b _080C29FE
_080C2620:
	lsls r0, r0, #2
	ldr r1, _080C2634 @ =_080C2638
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C262C: .4byte gEwramData
_080C2630: .4byte 0x000004E4
_080C2634: .4byte _080C2638
_080C2638: @ jump table
	.4byte _080C2654 @ case 0
	.4byte _080C268E @ case 1
	.4byte _080C26A2 @ case 2
	.4byte _080C2712 @ case 3
	.4byte _080C2750 @ case 4
	.4byte _080C285C @ case 5
	.4byte _080C285C @ case 6
_080C2654:
	adds r1, r5, #0
	adds r1, #0x5c
	movs r4, #0
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0x15]
	movs r2, #0x80
	lsls r2, r2, #8
	str r2, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080C2684
	rsbs r0, r2, #0
	str r0, [r5, #0x48]
_080C2684:
	ldrb r0, [r5, #0x14]
	cmp r0, #1
	beq _080C268C
	movs r0, #4
_080C268C:
	strb r0, [r5, #0xb]
_080C268E:
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x4c]
	str r0, [r5, #0x54]
	cmp r6, #0
	beq _080C269C
	b _080C29FE
_080C269C:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	b _080C29FC
_080C26A2:
	ldrb r0, [r5, #0x15]
	cmp r0, #3
	beq _080C26D0
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r1, #0
	movs r0, #3
	strb r0, [r5, #0x15]
	adds r2, r5, #0
	adds r2, #0x6f
	strb r1, [r2]
	adds r1, r5, #0
	adds r1, #0x6e
	strb r0, [r1]
	subs r2, #3
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_080C26D0:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x54]
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r5, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_08002028
	cmp r0, #0
	bne _080C2700
	b _080C29FE
_080C2700:
	adds r0, r5, #0
	bl sub_0806AF98
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	b _080C29FE
_080C2712:
	adds r0, r5, #0
	adds r0, #0x6f
	movs r4, #0
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	adds r2, r5, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bhi _080C273A
	b _080C29FE
_080C273A:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0x15]
	b _080C29FE
_080C2750:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C2772
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r2, [r0]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	b _080C277C
_080C2772:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
_080C277C:
	strb r1, [r0]
	adds r6, r0, #0
	bl RandomNumberGenerator
	movs r1, #6
	bl __umodsi3
	adds r4, r0, #0
	cmp r4, #3
	beq _080C27BC
	cmp r4, #3
	blo _080C2798
	cmp r4, #4
	beq _080C27E0
_080C2798:
	movs r0, #0xd0
	lsls r0, r0, #8
	str r0, [r5, #0x48]
	ldr r0, _080C27B8 @ =0xFFFD0000
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #6
	b _080C280E
	.align 2, 0
_080C27B8: .4byte 0xFFFD0000
_080C27BC:
	movs r0, #0xd0
	lsls r0, r0, #9
	str r0, [r5, #0x48]
	ldr r0, _080C27DC @ =0xFFFD0000
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0x15]
	b _080C2800
	.align 2, 0
_080C27DC: .4byte 0xFFFD0000
_080C27E0:
	movs r0, #0xd0
	lsls r0, r0, #8
	str r0, [r5, #0x48]
	ldr r0, _080C2858 @ =0xFFFD0000
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r5, #0x15]
_080C2800:
	adds r2, r5, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #5
_080C280E:
	strb r0, [r5, #0xb]
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080C2820
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
_080C2820:
	adds r0, r5, #0
	bl sub_0806BD64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080C2830
	rsbs r0, r0, #0
_080C2830:
	cmp r0, #0x3f
	ble _080C2836
	b _080C29FE
_080C2836:
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r5, #0
	adds r1, #0x4a
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	subs r0, #1
	cmp r0, #0xee
	bls _080C2850
	b _080C29FE
_080C2850:
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	b _080C29FE
	.align 2, 0
_080C2858: .4byte 0xFFFD0000
_080C285C:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r2, [r5, #0x54]
	adds r1, r1, r2
	str r1, [r5, #0x4c]
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bne _080C294E
	ldrb r0, [r5, #0x15]
	cmp r0, #3
	bne _080C28D6
	cmn r1, r2
	blt _080C28A2
	cmp r1, r2
	bgt _080C28A2
	adds r1, r5, #0
	adds r1, #0x6f
	movs r0, #0
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x6e
	movs r1, #2
	movs r0, #2
	strb r0, [r2]
	subs r2, #2
	ldrb r0, [r2]
	orrs r1, r0
	strb r1, [r2]
	b _080C28D6
_080C28A2:
	adds r2, r5, #0
	adds r2, #0x6e
	ldrb r0, [r2]
	cmp r0, #0
	bne _080C28BA
	adds r1, r5, #0
	adds r1, #0x6f
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2]
	subs r2, #2
	b _080C28CE
_080C28BA:
	cmp r0, #2
	bne _080C28D6
	adds r1, r5, #0
	adds r1, #0x6f
	movs r0, #0
	strb r0, [r1]
	movs r0, #3
	strb r0, [r2]
	adds r2, r5, #0
	adds r2, #0x6c
_080C28CE:
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_080C28D6:
	ldrb r0, [r5, #0x15]
	cmp r0, #1
	bne _080C2912
	adds r7, r5, #0
	adds r7, #0x6e
	ldr r4, _080C2A0C @ =0x0000FFFF
	ldrh r6, [r7]
	cmp r6, #3
	bne _080C28F6
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r6, [r5, #0x15]
_080C28F6:
	ldrh r0, [r7]
	ands r4, r0
	cmp r4, #2
	bne _080C2912
	adds r4, r5, #0
	adds r4, #0x20
	ldrb r0, [r4]
	cmp r0, #0
	beq _080C2912
	adds r0, r5, #0
	bl sub_080C2ABC
	movs r0, #0
	strb r0, [r4]
_080C2912:
	ldrb r0, [r5, #0x15]
	cmp r0, #3
	bne _080C294E
	bl RandomNumberGenerator
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	bne _080C294E
	ldr r0, [r5, #0x4c]
	ldr r1, _080C2A10 @ =0x00001FFF
	adds r0, r0, r1
	ldr r1, _080C2A14 @ =0x00003FFE
	cmp r0, r1
	bhi _080C294E
	adds r1, r5, #0
	adds r1, #0x20
	ldrb r0, [r1]
	cmp r0, #0
	bne _080C294E
	movs r4, #1
	strb r4, [r1]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	strb r4, [r5, #0x15]
_080C294E:
	adds r0, r5, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r0, r5, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r7, r0, #0x10
	adds r1, r7, #0
	subs r1, #0xa
	mov r0, r8
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r6, r5, #0
	adds r6, #0x46
	cmp r1, #0
	beq _080C298C
	ldrh r0, [r6]
	adds r0, r1, r0
	strh r0, [r6]
_080C298C:
	ldr r0, [r5, #0x48]
	adds r4, r5, #0
	adds r4, #0x42
	cmp r0, #0
	ble _080C29B0
	mov r0, r8
	adds r0, #8
	adds r1, r7, #0
	subs r1, #8
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080C29B0
	ldrh r0, [r4]
	adds r0, r1, r0
	strh r0, [r4]
_080C29B0:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bge _080C29D8
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, #8
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, #8
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080C29D8
	ldrh r0, [r4]
	adds r0, r1, r0
	strh r0, [r4]
_080C29D8:
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	bl sub_08002028
	cmp r0, #0
	beq _080C29FE
	ldrb r0, [r5, #0xb]
	cmp r0, #5
	bne _080C29FA
	adds r1, r5, #0
	adds r1, #0x6f
	movs r0, #0
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
_080C29FA:
	movs r0, #4
_080C29FC:
	strb r0, [r5, #0xb]
_080C29FE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C2A0C: .4byte 0x0000FFFF
_080C2A10: .4byte 0x00001FFF
_080C2A14: .4byte 0x00003FFE

	thumb_func_start sub_080C2A18
sub_080C2A18: @ 0x080C2A18
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _080C2A7A
	cmp r5, #1
	bgt _080C2A9E
	cmp r5, #0
	bne _080C2A9E
	movs r0, #0x72
	bl PlaySong
	adds r0, r4, #0
	bl sub_080683BC
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r4, #0x15]
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
	movs r0, #0x32
	strb r0, [r4, #0xd]
	movs r0, #0xff
	strb r0, [r4, #0xa]
	str r5, [r4, #0x48]
	str r5, [r4, #0x50]
	str r5, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	movs r0, #1
	strb r0, [r4, #0xb]
_080C2A7A:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	beq _080C2A9A
	ldr r2, _080C2AB4 @ =gEwramData
	movs r0, #0x12
	ldrsh r1, [r4, r0]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C2AB8 @ =0x000004E4
	adds r0, r0, r1
	ldr r1, [r2]
	adds r1, r1, r0
	ldrb r0, [r1, #0x19]
	subs r0, #1
	strb r0, [r1, #0x19]
_080C2A9A:
	movs r0, #2
	strb r0, [r4, #0xb]
_080C2A9E:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r3, #0xc0
	lsls r3, r3, #0xb
	adds r0, r4, #0
	movs r1, #0xf
	bl sub_0806BE74
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C2AB4: .4byte gEwramData
_080C2AB8: .4byte 0x000004E4

	thumb_func_start sub_080C2ABC
sub_080C2ABC: @ 0x080C2ABC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080C2B58 @ =0x0820BD94
	mov r8, r0
	ldr r6, _080C2B5C @ =0x0824B92C
	ldr r7, _080C2B60 @ =0x081F423C
	ldr r2, _080C2B64 @ =sub_080C2B74
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _080C2B4A
	str r6, [sp]
	adds r1, r7, #0
	mov r2, r8
	movs r3, #1
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C2AF6
	adds r0, r5, #0
	bl EntityDelete
_080C2AF6:
	str r4, [r5, #0x24]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsrs r1, r0, #3
	subs r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x3c
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0xb
	strb r0, [r1]
	ldr r2, _080C2B68 @ =sub_080C2D20
	ldr r3, _080C2B6C @ =sub_080C2DC4
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804277C
	ldr r4, _080C2B70 @ =0x0808FCFC
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
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
_080C2B4A:
	adds r0, r5, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080C2B58: .4byte 0x0820BD94
_080C2B5C: .4byte 0x0824B92C
_080C2B60: .4byte 0x081F423C
_080C2B64: .4byte sub_080C2B74
_080C2B68: .4byte sub_080C2D20
_080C2B6C: .4byte sub_080C2DC4
_080C2B70: .4byte 0x0808FCFC

	thumb_func_start sub_080C2B74
sub_080C2B74: @ 0x080C2B74
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r5, [r4, #0x24]
	bl sub_0806AE54
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _080C2B94
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	beq _080C2B94
	cmp r0, #6
	bne _080C2BAC
_080C2B94:
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C2BB6
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080C2BB6
	cmp r0, #5
	beq _080C2BB6
	cmp r0, #6
	beq _080C2BB6
_080C2BAC:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _080C2D18
_080C2BB6:
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bls _080C2BBE
	b _080C2CE8
_080C2BBE:
	lsls r0, r0, #2
	ldr r1, _080C2BC8 @ =_080C2BCC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C2BC8: .4byte _080C2BCC
_080C2BCC: @ jump table
	.4byte _080C2BE8 @ case 0
	.4byte _080C2BEE @ case 1
	.4byte _080C2C04 @ case 2
	.4byte _080C2C4C @ case 3
	.4byte _080C2C72 @ case 4
	.4byte _080C2C88 @ case 5
	.4byte _080C2CB6 @ case 6
_080C2BE8:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080C2BEE:
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r4, #0x48]
	movs r1, #0
	str r1, [r4, #0x4c]
	movs r0, #0x50
	str r0, [r4, #0x50]
	str r1, [r4, #0x54]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080C2C04:
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
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C2C2E
	ldr r0, [r4, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	b _080C2C32
_080C2C2E:
	ldr r0, [r4, #0x40]
	ldr r1, _080C2C84 @ =0xFFF40000
_080C2C32:
	adds r0, r0, r1
	ldr r1, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, _080C2C84 @ =0xFFF40000
	adds r0, r0, r1
	ldr r1, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080C2C4C:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080C2C66
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x50]
	rsbs r0, r0, #0
	str r0, [r4, #0x50]
_080C2C66:
	movs r0, #0x89
	bl PlaySong
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080C2C72:
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	b _080C2CE8
	.align 2, 0
_080C2C84: .4byte 0xFFF40000
_080C2C88:
	ldrb r2, [r4, #0xb]
	adds r1, r2, #0
	cmp r1, #0
	bne _080C2CA6
	str r1, [r4, #0x50]
	str r1, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x54]
	adds r0, r2, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
_080C2CA6:
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x54]
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r1, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x44]
	b _080C2CE8
_080C2CB6:
	ldrb r2, [r4, #0xb]
	adds r1, r2, #0
	cmp r1, #0
	bne _080C2CCE
	str r1, [r4, #0x54]
	str r1, [r4, #0x50]
	str r1, [r4, #0x4c]
	movs r0, #5
	strb r0, [r4, #0xd]
	adds r0, r2, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xc]
_080C2CCE:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080C2CE8
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080C2CE8:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
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
	bne _080C2D18
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080C2D18:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C2D20
sub_080C2D20: @ 0x080C2D20
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	mov r2, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r4, #0
	movs r1, #0
	strh r0, [r2]
	mov r0, sp
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, [r5, #0x40]
	str r0, [sp, #8]
	ldr r0, [r5, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	adds r1, r5, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #6
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C2D70
sub_080C2D70: @ 0x080C2D70
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
	bgt _080C2DBC
	movs r0, #0
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	bl sub_080C2A18
_080C2DBC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C2DC4
sub_080C2DC4: @ 0x080C2DC4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x2d
	movs r4, #0
	movs r0, #8
	strb r0, [r1]
	movs r0, #0x9d
	lsls r0, r0, #1
	bl PlaySong
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #5
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xb]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start EnemyGhostDancerCreate
EnemyGhostDancerCreate: @ 0x080C2DF8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080C2E74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C2E64
	adds r1, r4, #0
	adds r1, #0x5c
	movs r5, #0
	movs r0, #3
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0806B04C
	movs r3, #1
	strb r3, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	ldr r0, _080C2E38 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080C2E3C
	movs r0, #5
	strb r0, [r4, #0xa]
	b _080C2E64
	.align 2, 0
_080C2E38: .4byte gEwramData
_080C2E3C:
	movs r2, #0
	strh r0, [r4, #0x14]
	strb r2, [r4, #0x16]
	strb r3, [r4, #0x17]
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	strb r2, [r4, #0x18]
	strb r2, [r4, #0x19]
	ldr r1, _080C2E6C @ =sub_080C339C
	ldr r2, _080C2E70 @ =sub_080C32EC
	adds r0, r4, #0
	bl sub_0806D244
_080C2E64:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C2E6C: .4byte sub_080C339C
_080C2E70: .4byte sub_080C32EC

	thumb_func_start sub_080C2E74
sub_080C2E74: @ 0x080C2E74
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r7, _080C2EE8 @ =0x0820BDD8
	ldr r0, _080C2EEC @ =0x0824BC84
	mov r8, r0
	ldr r6, _080C2EF0 @ =0x081F4244
	adds r0, r6, #0
	bl sub_0803AFB8
	adds r5, r0, #0
	cmp r5, #0
	bge _080C2E9E
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080C2EF8
_080C2E9E:
	ldrh r1, [r4, #0x30]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r7, #0
	bl sub_08068264
	adds r1, r4, #0
	adds r1, #0x2c
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080C2EF8
	ldrb r3, [r1]
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_0803B924
	cmp r0, #0
	beq _080C2EF8
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	cmp r0, #0
	beq _080C2EF8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080C2EF4 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080C2F00
	.align 2, 0
_080C2EE8: .4byte 0x0820BDD8
_080C2EEC: .4byte 0x0824BC84
_080C2EF0: .4byte 0x081F4244
_080C2EF4: .4byte sub_0803B9D0
_080C2EF8:
	adds r0, r4, #0
	bl EntityDelete
	movs r0, #0
_080C2F00:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

