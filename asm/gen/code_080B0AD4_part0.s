	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_080B0AD4
sub_080B0AD4: @ 0x080B0AD4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _080B0B3C @ =0x081E41A4
	ldr r2, _080B0B40 @ =0x0820B7B0
	lsls r3, r5, #0x18
	lsrs r3, r3, #0x18
	ldr r0, _080B0B44 @ =0x0823AE10
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B0B32
	strb r5, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806B04C
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #0x13
	strb r1, [r0]
	ldr r0, _080B0B48 @ =sub_080B02E0
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	beq _080B0B32
	str r4, [r2, #0x14]
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x11]
	adds r5, r4, #0
	adds r5, #0x3c
	ldrb r1, [r5]
	adds r0, r2, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrh r0, [r4, #0x34]
	strh r0, [r2, #0x34]
	ldr r0, _080B0B4C @ =sub_080B0064
	bl sub_0806DFF8
	adds r2, r0, #0
	cmp r2, #0
	bne _080B0B50
_080B0B32:
	adds r0, r4, #0
	bl EntityDelete
	b _080B0BD6
	.align 2, 0
_080B0B3C: .4byte 0x081E41A4
_080B0B40: .4byte 0x0820B7B0
_080B0B44: .4byte 0x0823AE10
_080B0B48: .4byte sub_080B02E0
_080B0B4C: .4byte sub_080B0064
_080B0B50:
	str r4, [r2, #0x14]
	ldrb r0, [r4, #0x10]
	strb r0, [r2, #0x11]
	ldrb r1, [r5]
	adds r0, r2, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrh r0, [r4, #0x34]
	strh r0, [r2, #0x34]
	ldr r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080B0B94 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B0B98
	movs r0, #4
	strb r0, [r4, #0xa]
	b _080B0BD6
	.align 2, 0
_080B0B94: .4byte gEwramData
_080B0B98:
	ldr r1, _080B0BE0 @ =sub_080B0CCC
	ldr r2, _080B0BE4 @ =sub_080AFF98
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
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080B0BD6
	adds r0, r4, #0
	bl sub_08034498
_080B0BD6:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B0BE0: .4byte sub_080B0CCC
_080B0BE4: .4byte sub_080AFF98

	thumb_func_start sub_080B0BE8
sub_080B0BE8: @ 0x080B0BE8
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r1, #0x10
	rsbs r1, r1, #0
	bl sub_0806E4F8
	adds r0, r4, #0
	movs r1, #6
	bl sub_0806D128
	cmp r0, #0
	bne _080B0C08
	adds r0, r4, #0
	bl sub_08021924
_080B0C08:
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080B0C14
	adds r0, r4, #0
	bl sub_0806AE54
_080B0C14:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _080B0C2E
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080B0C2E
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080B0CC4
_080B0C2E:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _080B0CA8
	lsls r0, r0, #2
	ldr r1, _080B0C40 @ =_080B0C44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B0C40: .4byte _080B0C44
_080B0C44: @ jump table
	.4byte _080B0C58 @ case 0
	.4byte _080B0C88 @ case 1
	.4byte _080B0C90 @ case 2
	.4byte _080B0C98 @ case 3
	.4byte _080B0CA0 @ case 4
_080B0C58:
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080B0C78
	ldr r0, _080B0C80 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080B0C84 @ =0x000004CC
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080B0C78
	movs r0, #0x10
	bl sub_08013CF0
_080B0C78:
	adds r0, r4, #0
	bl sub_080B0814
	b _080B0CA8
	.align 2, 0
_080B0C80: .4byte gEwramData
_080B0C84: .4byte 0x000004CC
_080B0C88:
	adds r0, r4, #0
	bl sub_080B0898
	b _080B0CA8
_080B0C90:
	adds r0, r4, #0
	bl sub_080B095C
	b _080B0CA8
_080B0C98:
	adds r0, r4, #0
	bl sub_08079294
	b _080B0CA8
_080B0CA0:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080B0CC4
_080B0CA8:
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080B0CB6
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080B0CB6:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0806DF20
_080B0CC4:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B0CCC
sub_080B0CCC: @ 0x080B0CCC
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

	thumb_func_start sub_080B0CFC
sub_080B0CFC: @ 0x080B0CFC
	push {lr}
	sub sp, #0x10
	mov r1, sp
	movs r2, #0
	movs r3, #1
	strh r3, [r1, #2]
	strh r2, [r1, #4]
	mov r2, sp
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

	thumb_func_start EnemyMinotaurCreate
EnemyMinotaurCreate: @ 0x080B0D2C
	push {lr}
	movs r1, #0
	bl sub_080B0AD4
	pop {r0}
	bx r0

	thumb_func_start EnemyMinotaurUpdate
EnemyMinotaurUpdate: @ 0x080B0D38
	push {lr}
	bl sub_080B0BE8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyRedMinotaurCreate
EnemyRedMinotaurCreate: @ 0x080B0D44
	push {lr}
	movs r1, #1
	bl sub_080B0AD4
	pop {r0}
	bx r0

	thumb_func_start EnemyRedMinotaurUpdate
EnemyRedMinotaurUpdate: @ 0x080B0D50
	push {lr}
	bl sub_080B0BE8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B0D5C
sub_080B0D5C: @ 0x080B0D5C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080B0DA8
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _080B0D96
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
	movs r0, #2
	strb r0, [r5, #0xa]
	b _080B0DA8
_080B0D96:
	ldr r0, _080B0DBC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080B0DC0 @ =0x000004BE
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080B0DA8
	b _080B0F14
_080B0DA8:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _080B0DB0
	b _080B0EBC
_080B0DB0:
	cmp r0, #1
	bgt _080B0DC4
	cmp r0, #0
	beq _080B0DCC
	b _080B0EC6
	.align 2, 0
_080B0DBC: .4byte gEwramData
_080B0DC0: .4byte 0x000004BE
_080B0DC4:
	cmp r0, #2
	bne _080B0DCA
	b _080B0ECC
_080B0DCA:
	b _080B0EC6
_080B0DCC:
	ldr r1, _080B0EA0 @ =0x081E41AC
	ldr r2, _080B0EA4 @ =0x0820B7F4
	ldr r0, _080B0EA8 @ =0x0823C290
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B0EDA
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	blt _080B0EDA
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
	adds r6, r5, #0
	adds r6, #0x59
	ldrb r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x14
	strb r0, [r1]
	ldrb r0, [r6]
	movs r1, #2
	orrs r0, r1
	strb r0, [r6]
	ldr r0, _080B0EAC @ =0xFFFD8000
	str r0, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r5, #0x50]
	str r0, [r5, #0x18]
	ldrb r0, [r5, #0xc]
	adds r6, r4, #0
	cmp r0, #1
	bne _080B0E56
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r0, [r1]
	subs r0, #0x14
	strh r0, [r1]
	ldr r0, [r5, #0x18]
	rsbs r0, r0, #0
	str r0, [r5, #0x18]
_080B0E56:
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B0E72
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x50]
	rsbs r0, r0, #0
	str r0, [r5, #0x50]
	ldr r0, [r5, #0x18]
	rsbs r0, r0, #0
	str r0, [r5, #0x18]
_080B0E72:
	movs r4, #1
	strb r4, [r5, #0xa]
	movs r0, #0x86
	bl PlaySong
	strh r4, [r5, #0x34]
	ldr r2, _080B0EB0 @ =sub_0806E1E8
	ldr r3, _080B0EB4 @ =sub_080B13BC
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804277C
	ldr r4, _080B0EB8 @ =0x1010F8F8
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	b _080B0EE2
	.align 2, 0
_080B0EA0: .4byte 0x081E41AC
_080B0EA4: .4byte 0x0820B7F4
_080B0EA8: .4byte 0x0823C290
_080B0EAC: .4byte 0xFFFD8000
_080B0EB0: .4byte sub_0806E1E8
_080B0EB4: .4byte sub_080B13BC
_080B0EB8: .4byte 0x1010F8F8
_080B0EBC:
	movs r1, #0xa0
	lsls r1, r1, #0xa
	adds r0, r5, #0
	bl sub_0806D430
_080B0EC6:
	adds r6, r5, #0
	adds r6, #0x58
	b _080B0EE2
_080B0ECC:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B0EDA:
	adds r0, r5, #0
	bl EntityDelete
	b _080B0F14
_080B0EE2:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r1, [r6]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080B0F14
	movs r0, #2
	strb r0, [r5, #0xa]
_080B0F14:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B0F1C
sub_080B0F1C: @ 0x080B0F1C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xb]
	cmp r2, #0
	bne _080B1024
	adds r0, #0x6e
	ldrh r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x11
	bne _080B0F66
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080B0F66
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0x30
	ldrsh r1, [r4, r3]
	cmp r0, r1
	ble _080B0F66
	strb r2, [r4, #0xd]
	adds r3, r4, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080B0F66:
	ldrb r0, [r5]
	movs r1, #9
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0xb
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r1, r2
	cmp r0, #6
	bls _080B0F84
	movs r1, #0
_080B0F84:
	ldr r2, _080B102C @ =0x08528708
	adds r0, r4, #0
	movs r3, #0x14
	bl sub_0806CAF8
	adds r1, r0, #0
	movs r3, #0x30
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _080B0FBA
	movs r0, #0x1b
	ands r0, r1
	cmp r0, #8
	beq _080B0FBA
	adds r3, r4, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080B0FBA:
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B1024
	ldrb r0, [r5]
	cmp r0, #0x11
	bne _080B1024
	adds r5, r4, #0
	adds r5, #0x58
	ldrb r1, [r5]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080B0FF2
	adds r0, r4, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080B1004
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080B1014
_080B0FF2:
	adds r0, r4, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080B1014
_080B1004:
	adds r0, r4, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	cmp r0, #0x63
	ble _080B1016
_080B1014:
	movs r1, #0
_080B1016:
	cmp r1, #0
	beq _080B1024
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080B1024:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B102C: .4byte 0x08528708

	thumb_func_start sub_080B1030
sub_080B1030: @ 0x080B1030
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xb]
	cmp r4, #1
	beq _080B1082
	cmp r4, #1
	bgt _080B1044
	cmp r4, #0
	beq _080B1052
	b _080B11D4
_080B1044:
	cmp r4, #2
	bne _080B104A
	b _080B117A
_080B104A:
	cmp r4, #3
	bne _080B1050
	b _080B11C0
_080B1050:
	b _080B11D4
_080B1052:
	bl RandomNumberGenerator
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _080B106E
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	strb r4, [r5, #0xc]
	b _080B107C
_080B106E:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	strb r6, [r5, #0xc]
_080B107C:
	movs r0, #1
	strb r0, [r5, #0xb]
	b _080B11D4
_080B1082:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r1, [r0]
	movs r0, #0x83
	lsls r0, r0, #2
	cmp r1, r0
	bne _080B10FC
	ldr r0, _080B116C @ =sub_080B0D5C
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _080B10FC
	ldr r6, _080B1170 @ =0x0000FFE8
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
	subs r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
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
	beq _080B10DE
	movs r6, #0x18
_080B10DE:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov r2, ip
	ldrh r2, [r2]
	adds r0, r0, r2
	mov r1, ip
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrb r0, [r5, #0xc]
	strb r0, [r4, #0xc]
_080B10FC:
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B11D4
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080B1132
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080B1144
	ldrb r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080B1154
_080B1132:
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080B1154
_080B1144:
	adds r0, r5, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	cmp r0, #0x63
	ble _080B1156
_080B1154:
	movs r1, #0
_080B1156:
	cmp r1, #0
	beq _080B1174
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r5, #0xb]
	b _080B11D4
	.align 2, 0
_080B116C: .4byte sub_080B0D5C
_080B1170: .4byte 0x0000FFE8
_080B1174:
	movs r0, #3
	strb r0, [r5, #0xb]
	b _080B11D4
_080B117A:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	movs r1, #9
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0xb
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r1, r2
	cmp r0, #6
	bls _080B119C
	movs r1, #0
_080B119C:
	rsbs r1, r1, #0
	ldr r2, _080B11BC @ =0x08528708
	adds r0, r5, #0
	movs r3, #0x14
	bl sub_0806CAF8
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B11D4
	movs r0, #0
	strb r0, [r5, #0xb]
	b _080B11D4
	.align 2, 0
_080B11BC: .4byte 0x08528708
_080B11C0:
	movs r0, #0
	strb r0, [r5, #0xa]
	strb r0, [r5, #0xc]
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080B11D4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B11DC
sub_080B11DC: @ 0x080B11DC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xb]
	cmp r4, #0
	beq _080B11EC
	cmp r4, #1
	beq _080B1210
	b _080B12B8
_080B11EC:
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r5, #0xb]
	ldr r0, _080B120C @ =0xFFD80000
	str r0, [r5, #0x4c]
	str r4, [r5, #0x48]
	movs r0, #0x6f
	bl PlaySong
	b _080B12B8
	.align 2, 0
_080B120C: .4byte 0xFFD80000
_080B1210:
	ldrb r0, [r5, #0xd]
	adds r2, r0, #1
	strb r2, [r5, #0xd]
	ldr r1, [r5, #0x44]
	ldr r0, [r5, #0x4c]
	adds r6, r1, r0
	movs r1, #0x90
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	ldr r3, [r5, #0x48]
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r0, r3, r1
	str r0, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B1240
	movs r0, #1
	b _080B12BA
_080B1240:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bhi _080B12B8
	ands r2, r4
	cmp r2, #0
	bne _080B1286
	movs r1, #0x90
	lsls r1, r1, #8
	adds r0, r3, r1
	bl sub_080009E4
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_0802D5EC
	lsls r4, r4, #4
	ldr r1, [r5, #0x40]
	adds r1, r1, r4
	adds r4, r1, r0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #1
	movs r3, #8
	bl sub_08045CEC
	adds r1, r0, #0
	cmp r1, #0
	beq _080B1286
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1, #0x4c]
	ldr r0, _080B12C0 @ =0xFFFFF000
	str r0, [r1, #0x54]
_080B1286:
	ldrb r1, [r5, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080B12B8
	movs r0, #0x6e
	bl PlaySong
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x40]
	adds r4, r1, r0
	movs r0, #4
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	adds r6, r6, r0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x10
	movs r3, #6
	bl sub_08045CEC
_080B12B8:
	movs r0, #0
_080B12BA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B12C0: .4byte 0xFFFFF000

	thumb_func_start EnemyAxeArmorCreate
EnemyAxeArmorCreate: @ 0x080B12C4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080B12E8 @ =0x081E41AC
	ldr r2, _080B12EC @ =0x0820B7F4
	ldr r0, _080B12F0 @ =0x0823C290
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B12F4
	adds r0, r4, #0
	bl EntityDelete
	b _080B1360
	.align 2, 0
_080B12E8: .4byte 0x081E41AC
_080B12EC: .4byte 0x0820B7F4
_080B12F0: .4byte 0x0823C290
_080B12F4:
	adds r0, r4, #0
	bl sub_0806B04C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080B132C @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B1330
	movs r0, #3
	strb r0, [r4, #0xa]
	b _080B1360
	.align 2, 0
_080B132C: .4byte gEwramData
_080B1330:
	ldr r1, _080B1368 @ =sub_0806E1B8
	ldr r2, _080B136C @ =sub_080B1370
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
_080B1360:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B1368: .4byte sub_0806E1B8
_080B136C: .4byte sub_080B1370

	thumb_func_start sub_080B1370
sub_080B1370: @ 0x080B1370
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	bl sub_0806BC40
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080B13B6
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
	movs r1, #0
	movs r0, #2
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
_080B13B6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B13BC
sub_080B13BC: @ 0x080B13BC
	movs r1, #0
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start EnemyAxeArmorUpdate
EnemyAxeArmorUpdate: @ 0x080B13C4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080B1420
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B13F2
	cmp r0, #1
	bgt _080B13E0
	cmp r0, #0
	beq _080B13EA
	b _080B1414
_080B13E0:
	cmp r0, #2
	beq _080B13FA
	cmp r0, #3
	beq _080B140C
	b _080B1414
_080B13EA:
	adds r0, r4, #0
	bl sub_080B0F1C
	b _080B1414
_080B13F2:
	adds r0, r4, #0
	bl sub_080B1030
	b _080B1414
_080B13FA:
	adds r0, r4, #0
	bl sub_080B11DC
	cmp r0, #0
	beq _080B1414
	adds r0, r4, #0
	bl EntityDelete
	b _080B1420
_080B140C:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080B1420
_080B1414:
	adds r0, r4, #0
	bl sub_0806E314
	adds r0, r4, #0
	bl sub_0806DF20
_080B1420:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B1428
sub_080B1428: @ 0x080B1428
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080B143A
	cmp r0, #1
	beq _080B148A
	b _080B1494
_080B143A:
	ldr r1, _080B1458 @ =0x081E41B4
	ldr r2, _080B145C @ =0x0820B818
	ldr r0, _080B1460 @ =0x0823D78C
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B1464
	adds r0, r4, #0
	bl EntityDelete
	b _080B14AA
	.align 2, 0
_080B1458: .4byte 0x081E41B4
_080B145C: .4byte 0x0820B818
_080B1460: .4byte 0x0823D78C
_080B1464:
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080B148A:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
_080B1494:
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080B14AA
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080B14AA:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B14B4
sub_080B14B4: @ 0x080B14B4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080B14CA
	cmp r0, #2
	beq _080B154C
	adds r4, r5, #0
	adds r4, #0x58
	b _080B1570
_080B14CA:
	ldr r1, _080B153C @ =0x081E41B4
	ldr r2, _080B1540 @ =0x0820B818
	ldr r0, _080B1544 @ =0x0823D78C
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B1568
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	blt _080B1568
	ldr r0, _080B1548 @ =sub_080B23C4
	str r0, [r5, #4]
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
	adds r6, r5, #0
	adds r6, #0x59
	ldrb r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #7
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r0, [r6]
	movs r1, #2
	orrs r0, r1
	strb r0, [r6]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	b _080B1570
	.align 2, 0
_080B153C: .4byte 0x081E41B4
_080B1540: .4byte 0x0820B818
_080B1544: .4byte 0x0823D78C
_080B1548: .4byte sub_080B23C4
_080B154C:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B1568
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B1568:
	adds r0, r5, #0
	bl EntityDelete
	b _080B15DE
_080B1570:
	ldr r0, [r5, #0x20]
	movs r1, #0xc0
	lsls r1, r1, #0xf
	cmp r0, r1
	ble _080B157C
	adds r0, r1, #0
_080B157C:
	movs r1, #3
	bl __divsi3
	cmp r0, #0
	bge _080B1588
	adds r0, #0x1f
_080B1588:
	asrs r6, r0, #5
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	lsls r0, r0, #5
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x14]
	bl sub_080009E4
	lsls r1, r0, #5
	str r1, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bge _080B15AE
	ldr r2, _080B15E8 @ =0x0000FFFF
	adds r0, r0, r2
_080B15AE:
	asrs r0, r0, #0x10
	muls r0, r6, r0
	str r0, [r5, #0x18]
	adds r0, r1, #0
	cmp r0, #0
	bge _080B15BE
	ldr r1, _080B15E8 @ =0x0000FFFF
	adds r0, r0, r1
_080B15BE:
	asrs r0, r0, #0x10
	muls r0, r6, r0
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	ldrb r1, [r4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r6, #0
	movs r3, #0
	bl sub_0803E058
_080B15DE:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B15E8: .4byte 0x0000FFFF

	thumb_func_start sub_080B15EC
sub_080B15EC: @ 0x080B15EC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r6, #0
	beq _080B1670
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bge _080B160E
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	adds r0, r1, r0
	b _080B1612
_080B160E:
	asrs r0, r0, #0x10
	subs r0, r1, r0
_080B1612:
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bge _080B162C
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	adds r0, r1, r0
	b _080B1630
_080B162C:
	asrs r0, r0, #0x10
	subs r0, r1, r0
_080B1630:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r6, #0x14]
	ldr r0, [r5, #0x40]
	ldr r1, [r4, #0x18]
	subs r0, r0, r1
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, [r5, #0x44]
	ldr r2, [r4, #0x1c]
	subs r1, r1, r2
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	str r0, [r6, #0x20]
	ldr r1, [r4, #0x18]
	str r1, [r6, #0x40]
	ldr r1, [r4, #0x1c]
	str r1, [r6, #0x44]
	b _080B1672
_080B1670:
	movs r0, #0
_080B1672:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080B1678
sub_080B1678: @ 0x080B1678
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	mov r8, r0
	ldr r1, [r5, #0x18]
	str r1, [sp, #0x18]
	ldr r2, [r5, #0x40]
	str r2, [sp, #0x1c]
	ldr r3, [r5, #0x44]
	str r3, [sp, #0x20]
	ldrb r0, [r5, #0xa]
	cmp r0, #5
	bhi _080B174E
	adds r0, r1, #0
	adds r1, r5, #0
	mov r2, r8
	bl sub_080B15EC
	adds r4, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0xf
	cmp r4, r0
	bgt _080B16C8
	mov r4, r8
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080B16D2
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B1718
	b _080B16D2
_080B16C8:
	mov r2, r8
	ldr r0, [r2, #0x14]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x14]
_080B16D2:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B16EC
	ldr r0, [r5, #0x2c]
	ldr r3, _080B16E8 @ =0xFFFF0000
	adds r0, r0, r3
	b _080B16F4
	.align 2, 0
_080B16E8: .4byte 0xFFFF0000
_080B16EC:
	ldr r0, [r5, #0x2c]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
_080B16F4:
	str r0, [r5, #0x2c]
	ldrb r0, [r5, #0xa]
	cmp r0, #5
	bne _080B1700
	movs r0, #0
	str r0, [r5, #0x2c]
_080B1700:
	movs r1, #0
	movs r0, #6
	strb r0, [r5, #0xa]
	ldr r0, [r5, #0x2c]
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x30]
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r5, #0x54]
	str r1, [r5, #0x50]
	b _080B174E
_080B1718:
	mov r1, r8
	ldr r0, [r1, #0x14]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B174E
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B1740
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B1740:
	ldr r1, [r5, #0x18]
	cmp r1, #0
	bne _080B1748
	b _080B1E9A
_080B1748:
	movs r0, #2
	strb r0, [r1, #0xa]
	b _080B1E9A
_080B174E:
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
	ldr r0, _080B177C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080B1780 @ =0x000004BE
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _080B1768
	b _080B1F04
_080B1768:
	ldrb r0, [r5, #0xa]
	cmp r0, #7
	bls _080B1770
	b _080B1EA6
_080B1770:
	lsls r0, r0, #2
	ldr r1, _080B1784 @ =_080B1788
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B177C: .4byte gEwramData
_080B1780: .4byte 0x000004BE
_080B1784: .4byte _080B1788
_080B1788: @ jump table
	.4byte _080B17A8 @ case 0
	.4byte _080B1882 @ case 1
	.4byte _080B19D8 @ case 2
	.4byte _080B1A4A @ case 3
	.4byte _080B1B42 @ case 4
	.4byte _080B1D14 @ case 5
	.4byte _080B1DB8 @ case 6
	.4byte _080B1E76 @ case 7
_080B17A8:
	ldr r1, _080B18A8 @ =0x081E41B4
	ldr r2, _080B18AC @ =0x0820B818
	ldr r0, _080B18B0 @ =0x0823D78C
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B17C0
	b _080B1E9A
_080B17C0:
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r0, #0
	bge _080B17D0
	b _080B1E9A
_080B17D0:
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r4, r5, #0
	adds r4, #0x58
	movs r0, #0x1f
	ands r6, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r4]
	adds r6, r5, #0
	adds r6, #0x59
	ldrb r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	ldr r0, _080B18B4 @ =sub_080B14B4
	bl sub_0806DFF8
	str r0, [sp, #0x18]
	str r0, [r5, #0x18]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r5, #0x1c]
	movs r2, #0x80
	str r2, [r5, #0x20]
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B1830
	movs r0, #0
	str r0, [r5, #0x1c]
	rsbs r0, r2, #0
	str r0, [r5, #0x20]
_080B1830:
	mov r4, r8
	ldr r0, [r4, #0x18]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x1c]
	str r0, [r5, #0x44]
	ldr r2, _080B18B8 @ =sub_080B240C
	adds r0, r5, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	ldr r4, _080B18BC @ =0x1818F4F4
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	ldrb r0, [r6]
	movs r1, #2
	orrs r0, r1
	strb r0, [r6]
	adds r0, r5, #0
	movs r1, #0x60
	movs r2, #0xc
	movs r3, #2
	bl sub_080458E4
	adds r0, r5, #0
	movs r1, #0x60
	movs r2, #6
	movs r3, #2
	bl sub_080458E4
	movs r0, #0x74
	bl PlaySong
	movs r0, #1
	strb r0, [r5, #0xa]
_080B1882:
	ldr r0, [r5, #0x28]
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	cmp r1, #0
	bge _080B18C0
	ldr r0, [r5, #0x28]
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	rsbs r4, r1, #0
	b _080B18CE
	.align 2, 0
_080B18A8: .4byte 0x081E41B4
_080B18AC: .4byte 0x0820B818
_080B18B0: .4byte 0x0823D78C
_080B18B4: .4byte sub_080B14B4
_080B18B8: .4byte sub_080B240C
_080B18BC: .4byte 0x1818F4F4
_080B18C0:
	ldr r0, [r5, #0x28]
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	asrs r4, r1, #0x10
_080B18CE:
	ldr r0, [r5, #0x28]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5, #0x28]
	ldr r2, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	adds r2, r2, r1
	str r2, [r5, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, r1
	ble _080B1902
	str r1, [r5, #0x28]
	ldr r0, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x54]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _080B18FA
	str r1, [r5, #0x54]
_080B18FA:
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x54]
	adds r0, r0, r1
	b _080B190A
_080B1902:
	adds r0, r2, #0
	bl sub_080009E4
	muls r0, r4, r0
_080B190A:
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	adds r1, r4, #0
	muls r1, r0, r1
	str r1, [r5, #0x48]
	mov r3, r8
	ldr r0, [r3, #0x18]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r3, #0x1c]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	adds r0, r5, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl GetEntityRoomYPositionInteger
	lsls r1, r4, #0x10
	asrs r7, r1, #0x10
	adds r1, r7, #0
	subs r1, #0x10
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	adds r0, r1, #0
	adds r1, r6, #0
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	beq _080B1968
	lsls r1, r4, #0x10
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	movs r0, #0
	str r0, [r5, #0x28]
	b _080B1984
_080B1968:
	adds r0, r7, #0
	adds r0, #0x10
	adds r1, r6, #0
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	beq _080B198A
	lsls r0, r3, #0x10
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	str r4, [r5, #0x28]
_080B1984:
	movs r0, #2
	strb r0, [r5, #0xa]
	b _080B1EA6
_080B198A:
	adds r1, r6, #0
	adds r1, #0x10
	adds r0, r7, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r3, [sp, #0x24]
	bl sub_08001D94
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	ldr r3, [sp, #0x24]
	cmp r1, #0
	beq _080B19AC
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_080B19AC:
	asrs r0, r2, #0x10
	cmp r0, #0
	bne _080B19B4
	b _080B1EA6
_080B19B4:
	lsls r1, r0, #0x10
	ldr r0, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	ldr r1, [r5, #0x28]
	ldr r0, _080B19D0 @ =0x00003FFF
	cmp r1, r0
	bgt _080B19CA
	ldr r0, _080B19D4 @ =0xFFFD0000
	str r0, [r5, #0x54]
	str r3, [r5, #0x28]
_080B19CA:
	str r3, [r5, #0x28]
	b _080B1A44
	.align 2, 0
_080B19D0: .4byte 0x00003FFF
_080B19D4: .4byte 0xFFFD0000
_080B19D8:
	ldr r0, [r5, #0x54]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r0, r0, r4
	str r0, [r5, #0x54]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _080B19EC
	str r1, [r5, #0x54]
_080B19EC:
	ldr r2, [r5, #0x4c]
	ldr r0, [r5, #0x54]
	adds r2, r2, r0
	str r2, [r5, #0x4c]
	mov r1, r8
	ldr r0, [r1, #0x18]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	mov r3, r8
	ldr r0, [r3, #0x1c]
	adds r0, r0, r2
	str r0, [r5, #0x44]
	adds r0, r5, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl GetEntityRoomYPositionInteger
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #0xd
	adds r1, r1, r4
	asrs r1, r1, #0x10
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _080B1A3A
	lsls r1, r2, #0x10
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_080B1A3A:
	cmp r2, #0
	bne _080B1A40
	b _080B1EA6
_080B1A40:
	movs r0, #0
	str r0, [r5, #0x28]
_080B1A44:
	movs r0, #3
	strb r0, [r5, #0xa]
	b _080B1EA6
_080B1A4A:
	ldr r0, [r5, #0x54]
	movs r1, #0x80
	lsls r1, r1, #7
	mov sl, r1
	add r0, sl
	str r0, [r5, #0x54]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _080B1A60
	str r1, [r5, #0x54]
_080B1A60:
	ldr r2, [r5, #0x4c]
	ldr r0, [r5, #0x54]
	adds r2, r2, r0
	str r2, [r5, #0x4c]
	mov r3, r8
	ldr r0, [r3, #0x18]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r3, #0x1c]
	adds r0, r0, r2
	str r0, [r5, #0x44]
	adds r0, r5, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl GetEntityRoomYPositionInteger
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #0xd
	adds r1, r1, r4
	asrs r1, r1, #0x10
	bl sub_08001D94
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	beq _080B1AAC
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_080B1AAC:
	asrs r2, r2, #0x10
	mov sb, r2
	cmp r2, #0
	bne _080B1AB6
	b _080B1EA6
_080B1AB6:
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r7, [r0, r1]
	adds r0, #4
	ldrh r0, [r0]
	adds r0, #0x10
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r4, r0, #0x1f
	ldr r2, _080B1B24 @ =sub_080B1428
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r3, r0, #0
	cmp r3, #0
	beq _080B1B04
	movs r0, #5
	strb r0, [r3, #0x14]
	adds r0, r3, #0
	adds r0, #0x42
	strh r7, [r0]
	adds r0, #4
	strh r6, [r0]
	movs r0, #1
	adds r3, #0x58
	eors r4, r0
	lsls r2, r4, #6
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
_080B1B04:
	movs r0, #0x82
	lsls r0, r0, #1
	bl PlaySong
	ldr r1, [r5, #0x54]
	ldr r0, _080B1B28 @ =0x00007FFF
	cmp r1, r0
	bgt _080B1B2C
	movs r1, #0
	movs r0, #4
	strb r0, [r5, #0xa]
	mov r2, sl
	str r2, [r5, #0x54]
	str r1, [r5, #0x4c]
	b _080B1EA6
	.align 2, 0
_080B1B24: .4byte sub_080B1428
_080B1B28: .4byte 0x00007FFF
_080B1B2C:
	rsbs r0, r1, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r5, #0x54]
	mov r3, sb
	lsls r1, r3, #0x10
	ldr r0, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	b _080B1EA6
_080B1B42:
	ldrb r0, [r5, #0xd]
	adds r6, r5, #0
	adds r6, #0x58
	movs r4, #0x42
	adds r4, r4, r5
	mov sl, r4
	cmp r0, #3
	bhi _080B1B9E
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov sb, r0
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #0x10
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	ldrb r0, [r6]
	lsls r0, r0, #0x19
	lsrs r4, r0, #0x1f
	ldr r2, _080B1C64 @ =sub_080B1428
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r3, r0, #0
	cmp r3, #0
	beq _080B1B9E
	movs r0, #5
	strb r0, [r3, #0x14]
	adds r0, r3, #0
	adds r0, #0x42
	mov r2, sb
	strh r2, [r0]
	adds r0, #4
	strh r7, [r0]
	movs r0, #1
	adds r3, #0x58
	eors r4, r0
	lsls r2, r4, #6
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
_080B1B9E:
	ldrb r1, [r5, #0xd]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080B1BAE
	movs r0, #0x73
	bl PlaySong
_080B1BAE:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	ldr r1, [r5, #0x28]
	ldr r0, _080B1C68 @ =0x0003FFFF
	cmp r1, r0
	bgt _080B1BC4
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, r3
	str r0, [r5, #0x28]
_080B1BC4:
	ldr r1, [r5, #0x28]
	rsbs r1, r1, #0
	ldr r2, _080B1C6C @ =0x08528720
	adds r0, r5, #0
	movs r3, #8
	bl sub_0806CAF8
	adds r3, r0, #0
	movs r2, #3
	ands r0, r2
	cmp r0, #0
	beq _080B1BEA
	mov r4, r8
	ldr r0, [r4, #0x14]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x14]
	movs r0, #5
	strb r0, [r5, #0xa]
_080B1BEA:
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _080B1C4A
	ldrb r1, [r5, #0xd]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080B1C4A
	mov r0, sl
	movs r1, #0
	ldrsh r7, [r0, r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #0x10
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r4, r0, #0x1f
	ldr r2, _080B1C64 @ =sub_080B1428
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r3, r0, #0
	cmp r3, #0
	beq _080B1C4A
	movs r0, #4
	strb r0, [r3, #0x14]
	adds r0, r3, #0
	adds r0, #0x42
	strh r7, [r0]
	adds r0, #4
	strh r6, [r0]
	movs r0, #1
	adds r3, #0x58
	eors r4, r0
	lsls r2, r4, #6
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
_080B1C4A:
	mov r0, r8
	adds r0, #0x42
	movs r3, #0
	ldrsh r2, [r0, r3]
	mov r4, sl
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r1, r2, r0
	cmp r1, #0
	blt _080B1C70
	cmp r1, #0x2f
	ble _080B1C78
	b _080B1EA6
	.align 2, 0
_080B1C64: .4byte sub_080B1428
_080B1C68: .4byte 0x0003FFFF
_080B1C6C: .4byte 0x08528720
_080B1C70:
	subs r0, r0, r2
	cmp r0, #0x2f
	ble _080B1C78
	b _080B1EA6
_080B1C78:
	mov r2, r8
	ldr r0, [r2, #0x14]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x14]
	movs r0, #5
	strb r0, [r5, #0xa]
	mov r3, sl
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r0, [r2, #0x18]
	cmp r0, #0
	bge _080B1C9A
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	adds r0, r1, r0
	b _080B1C9E
_080B1C9A:
	asrs r0, r0, #0x10
	subs r0, r1, r0
_080B1C9E:
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r4, r8
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bge _080B1CBA
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	adds r0, r1, r0
	b _080B1CBE
_080B1CBA:
	asrs r0, r0, #0x10
	subs r0, r1, r0
_080B1CBE:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x40]
	mov r2, r8
	ldr r1, [r2, #0x18]
	subs r0, r0, r1
	asrs r0, r0, #0x10
	adds r3, r0, #0
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r1, [r5, #0x44]
	ldr r2, [r2, #0x1c]
	subs r1, r1, r2
	asrs r1, r1, #0x10
	adds r4, r1, #0
	muls r4, r1, r4
	adds r1, r4, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	str r0, [r5, #0x24]
	lsls r0, r0, #1
	movs r1, #3
	bl __divsi3
	str r0, [r5, #0x24]
	movs r0, #0
	str r0, [r5, #0x20]
	strb r0, [r5, #0xd]
	ldr r0, _080B1D10 @ =0x00000103
	bl PlaySong
	b _080B1EA6
	.align 2, 0
_080B1D10: .4byte 0x00000103
_080B1D14:
	ldr r0, [r5, #0x24]
	ldr r1, _080B1D5C @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r5, #0x24]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080B1D40
	ldrb r0, [r5, #0xd]
	subs r4, r0, #4
	cmp r4, #3
	bgt _080B1D40
	lsls r0, r4, #0xc
	bl sub_080009E4
	lsls r0, r0, #3
	ldr r1, [r5, #0x24]
	adds r1, r1, r0
	str r1, [r5, #0x24]
_080B1D40:
	ldr r1, [r5, #0x24]
	ldr r0, _080B1D60 @ =0x0001FFFF
	cmp r1, r0
	bgt _080B1D4C
	adds r0, #1
	str r0, [r5, #0x24]
_080B1D4C:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bge _080B1D64
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r4, r0, #0
	b _080B1D66
	.align 2, 0
_080B1D5C: .4byte 0xFFFF0000
_080B1D60: .4byte 0x0001FFFF
_080B1D64:
	asrs r4, r0, #0x10
_080B1D66:
	ldr r0, [r5, #0x1c]
	bl sub_080009E4
	muls r0, r4, r0
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	bl sub_080009E4
	adds r1, r4, #0
	muls r1, r0, r1
	str r1, [r5, #0x48]
	mov r3, r8
	ldr r0, [r3, #0x18]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r3, #0x1c]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x20]
	ldr r4, _080B1DB4 @ =0xFFFFFEC0
	adds r0, r0, r4
	str r0, [r5, #0x20]
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B1DAC
	rsbs r4, r4, #0
_080B1DAC:
	ldr r0, [r5, #0x1c]
	adds r0, r0, r4
	str r0, [r5, #0x1c]
	b _080B1EA6
	.align 2, 0
_080B1DB4: .4byte 0xFFFFFEC0
_080B1DB8:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _080B1DCA
	str r0, [sp, #0x18]
	movs r1, #0
	movs r0, #2
	ldr r2, [sp, #0x18]
	strb r0, [r2, #0xa]
	str r1, [r5, #0x18]
_080B1DCA:
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	bne _080B1E8C
	ldr r1, [r5, #0x28]
	ldr r2, _080B1DFC @ =0x08528720
	adds r0, r5, #0
	movs r3, #2
	bl sub_0806CAF8
	adds r3, r0, #0
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _080B1E00
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bgt _080B1E18
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	b _080B1E1C
	.align 2, 0
_080B1DFC: .4byte 0x08528720
_080B1E00:
	movs r2, #0x20
	adds r1, r3, #0
	ands r1, r2
	cmp r1, #0
	beq _080B1E24
	ldr r0, [r5, #0x28]
	cmp r0, #0
	ble _080B1E18
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r0, r2
	b _080B1E1C
_080B1E18:
	ldr r4, _080B1E20 @ =0xFFFFE000
	adds r0, r0, r4
_080B1E1C:
	str r0, [r5, #0x28]
	b _080B1E50
	.align 2, 0
_080B1E20: .4byte 0xFFFFE000
_080B1E24:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	blt _080B1E3C
	ldr r4, _080B1E38 @ =0xFFFFFF00
	adds r0, r0, r4
	str r0, [r5, #0x28]
	cmp r0, #0
	bgt _080B1E50
	b _080B1E48
	.align 2, 0
_080B1E38: .4byte 0xFFFFFF00
_080B1E3C:
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [r5, #0x28]
	cmp r0, #0
	ble _080B1E50
_080B1E48:
	str r1, [r5, #0x28]
	strb r2, [r5, #0xd]
	movs r0, #7
	strb r0, [r5, #0xa]
_080B1E50:
	ldr r2, [r5, #0x28]
	adds r0, r2, #0
	cmp r2, #0
	bge _080B1E5A
	adds r0, #0x3f
_080B1E5A:
	asrs r0, r0, #6
	ldr r1, [r5, #0x14]
	adds r1, r1, r0
	str r1, [r5, #0x14]
	movs r0, #3
	ands r0, r3
	cmp r0, #0
	beq _080B1EA6
	rsbs r0, r2, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r5, #0x28]
	b _080B1EA6
_080B1E76:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #2
	orrs r1, r0
	strb r1, [r2]
	movs r0, #1
	strb r0, [r5, #0xf]
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _080B1EA2
_080B1E8C:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B1E9A:
	adds r0, r5, #0
	bl EntityDelete
	b _080B1F04
_080B1EA2:
	subs r0, #1
	strb r0, [r5, #0xd]
_080B1EA6:
	ldrb r0, [r5, #0xa]
	adds r6, r5, #0
	adds r6, #0x58
	cmp r0, #5
	bhi _080B1EDA
	ldr r0, [sp, #0x18]
	adds r1, r5, #0
	mov r2, r8
	bl sub_080B15EC
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B1ED0
	ldr r0, [r5, #0x14]
	ldr r1, _080B1ECC @ =0xFFFFD100
	adds r0, r0, r1
	b _080B1ED8
	.align 2, 0
_080B1ECC: .4byte 0xFFFFD100
_080B1ED0:
	ldr r0, [r5, #0x14]
	movs r2, #0xbc
	lsls r2, r2, #6
	adds r0, r0, r2
_080B1ED8:
	str r0, [r5, #0x14]
_080B1EDA:
	ldr r0, [r5, #0x40]
	ldr r3, [sp, #0x1c]
	subs r0, r0, r3
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x44]
	ldr r4, [sp, #0x20]
	subs r0, r0, r4
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	ldrb r1, [r6]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
_080B1F04:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B1F14
sub_080B1F14: @ 0x080B1F14
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _080B1F4C
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _080B1F38
	movs r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080B1F48
_080B1F38:
	movs r0, #2
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080B1F48:
	movs r0, #0
	strb r0, [r5, #0xd]
_080B1F4C:
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080B1FE8
	cmp r0, #2
	bne _080B2050
	adds r4, r5, #0
	adds r4, #0x6e
	ldrb r0, [r4]
	movs r1, #9
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #0xd
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r1, r2
	cmp r0, #6
	bls _080B1F74
	movs r1, #0
_080B1F74:
	ldr r2, _080B2058 @ =0x08528714
	adds r0, r5, #0
	movs r3, #0x14
	bl sub_0806CAF8
	adds r6, r0, #0
	ldrh r0, [r4]
	cmp r0, #0x11
	bne _080B1FB6
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0x30
	ldrsh r1, [r5, r2]
	cmp r0, r1
	ble _080B1FB6
	movs r0, #0
	strb r0, [r5, #0xd]
	adds r3, r5, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080B1FB6:
	movs r0, #0x1b
	ands r0, r6
	cmp r0, #8
	beq _080B1FD8
	adds r3, r5, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080B1FD8:
	adds r0, r5, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B2050
	ldrb r0, [r4]
	cmp r0, #0x11
	bne _080B2050
_080B1FE8:
	adds r0, r5, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	ble _080B2046
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080B201E
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080B2030
	ldrb r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080B2040
_080B201E:
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080B2040
_080B2030:
	adds r0, r5, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	cmp r0, #0x8b
	ble _080B2042
_080B2040:
	movs r1, #0
_080B2042:
	cmp r1, #0
	beq _080B2050
_080B2046:
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xc]
	strb r1, [r5, #0xb]
_080B2050:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B2058: .4byte 0x08528714

	thumb_func_start sub_080B205C
sub_080B205C: @ 0x080B205C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _080B209C
	cmp r0, #1
	bgt _080B2070
	cmp r0, #0
	beq _080B2076
	b _080B2142
_080B2070:
	cmp r0, #2
	beq _080B2100
	b _080B2142
_080B2076:
	adds r0, r4, #0
	bl sub_0806BC40
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r4, #0xb]
	str r0, [r4, #0x14]
	ldr r0, _080B2098 @ =0x0000FFEC
	strh r0, [r4, #0x20]
	subs r0, #0x10
	strh r0, [r4, #0x22]
	b _080B2142
	.align 2, 0
_080B2098: .4byte 0x0000FFEC
_080B209C:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r1, [r0]
	movs r0, #0x86
	lsls r0, r0, #1
	cmp r1, r0
	bne _080B20E2
	ldr r0, _080B20FC @ =sub_080B1678
	bl sub_0806DFF8
	adds r5, r0, #0
	cmp r5, #0
	beq _080B20E2
	str r4, [r5, #0x10]
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
	adds r0, #0x3c
	ldrb r0, [r0]
	lsrs r1, r0, #2
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x3c
	strb r0, [r1]
_080B20E2:
	ldr r0, [r4, #0x14]
	movs r5, #2
	ands r0, r5
	cmp r0, #0
	beq _080B2142
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	strb r5, [r4, #0xb]
	b _080B2142
	.align 2, 0
_080B20FC: .4byte sub_080B1678
_080B2100:
	ldrh r2, [r4, #0x20]
	movs r0, #0x20
	ldrsh r1, [r4, r0]
	movs r0, #0xa
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080B2112
	adds r0, r2, #1
	strh r0, [r4, #0x20]
_080B2112:
	ldrh r2, [r4, #0x22]
	movs r0, #0x22
	ldrsh r1, [r4, r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080B2124
	adds r0, r2, #1
	strh r0, [r4, #0x22]
_080B2124:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B2142
	movs r0, #0
	str r0, [r4, #0x14]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0806BC40
_080B2142:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B2148
sub_080B2148: @ 0x080B2148
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xb]
	cmp r4, #0
	beq _080B2158
	cmp r4, #1
	beq _080B217C
	b _080B2220
_080B2158:
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r5, #0xb]
	ldr r0, _080B2178 @ =0xFFD80000
	str r0, [r5, #0x4c]
	str r4, [r5, #0x48]
	movs r0, #0x6f
	bl PlaySong
	b _080B2220
	.align 2, 0
_080B2178: .4byte 0xFFD80000
_080B217C:
	ldrb r1, [r5, #0xd]
	adds r1, #1
	strb r1, [r5, #0xd]
	ldr r2, [r5, #0x44]
	ldr r0, [r5, #0x4c]
	adds r6, r2, r0
	movs r2, #0x90
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r5, #0x4c]
	ldr r2, [r5, #0x48]
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r0, r2, r3
	str r0, [r5, #0x48]
	ands r1, r4
	cmp r1, #0
	bne _080B21D8
	movs r1, #0x90
	lsls r1, r1, #8
	adds r0, r2, r1
	bl sub_080009E4
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_0802D5EC
	lsls r4, r4, #4
	ldr r1, [r5, #0x40]
	adds r1, r1, r4
	adds r4, r1, r0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #1
	movs r3, #7
	bl sub_08045CEC
	adds r1, r0, #0
	cmp r1, #0
	beq _080B21D8
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1, #0x4c]
	ldr r0, _080B221C @ =0xFFFFF000
	str r0, [r1, #0x54]
_080B21D8:
	ldrb r1, [r5, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080B220A
	movs r0, #0x6e
	bl PlaySong
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x40]
	adds r4, r1, r0
	movs r0, #4
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	adds r6, r6, r0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x10
	movs r3, #7
	bl sub_08045CEC
_080B220A:
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B2220
	movs r0, #1
	b _080B2222
	.align 2, 0
_080B221C: .4byte 0xFFFFF000
_080B2220:
	movs r0, #0
_080B2222:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start EnemyDiscArmorCreate
EnemyDiscArmorCreate: @ 0x080B2228
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080B224C @ =0x081E41B4
	ldr r2, _080B2250 @ =0x0820B818
	ldr r0, _080B2254 @ =0x0823D78C
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B2258
	adds r0, r4, #0
	bl EntityDelete
	b _080B22C4
	.align 2, 0
_080B224C: .4byte 0x081E41B4
_080B2250: .4byte 0x0820B818
_080B2254: .4byte 0x0823D78C
_080B2258:
	adds r0, r4, #0
	bl sub_0806B04C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080B2290 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B2294
	movs r0, #3
	strb r0, [r4, #0xa]
	b _080B22C4
	.align 2, 0
_080B2290: .4byte gEwramData
_080B2294:
	ldr r1, _080B22CC @ =sub_0806E1B8
	ldr r2, _080B22D0 @ =sub_080B2370
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
_080B22C4:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B22CC: .4byte sub_0806E1B8
_080B22D0: .4byte sub_080B2370

	thumb_func_start EnemyDiscArmorUpdate
EnemyDiscArmorUpdate: @ 0x080B22D4
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0x22
	ldrsh r3, [r4, r0]
	movs r0, #0x20
	ldrsh r2, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B22F6
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080B22F6:
	lsls r1, r2, #0x10
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	lsls r1, r3, #0x10
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080B2368
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B2332
	cmp r0, #1
	bgt _080B2320
	cmp r0, #0
	beq _080B232A
	b _080B2354
_080B2320:
	cmp r0, #2
	beq _080B233A
	cmp r0, #3
	beq _080B234C
	b _080B2354
_080B232A:
	adds r0, r4, #0
	bl sub_080B1F14
	b _080B2354
_080B2332:
	adds r0, r4, #0
	bl sub_080B205C
	b _080B2354
_080B233A:
	adds r0, r4, #0
	bl sub_080B2148
	cmp r0, #0
	beq _080B2354
	adds r0, r4, #0
	bl EntityDelete
	b _080B2368
_080B234C:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080B2368
_080B2354:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080B2362
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080B2362:
	adds r0, r4, #0
	bl sub_0806DF20
_080B2368:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B2370
sub_080B2370: @ 0x080B2370
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080B2384
	adds r0, r4, #0
	bl sub_0806BC40
_080B2384:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080B23BE
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
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080B23BE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B23C4
sub_080B23C4: @ 0x080B23C4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x40]
	ldr r7, [r4, #0x44]
	ldr r0, [r4, #0x18]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r0, r6, r0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x1c]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r0, r7, r0
	str r0, [r4, #0x44]
	movs r5, #3
_080B23E6:
	adds r0, r4, #0
	bl sub_0803AC40
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x1c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	subs r5, #1
	cmp r5, #0
	bne _080B23E6
	str r6, [r4, #0x40]
	str r7, [r4, #0x44]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B240C
sub_080B240C: @ 0x080B240C
	push {lr}
	sub sp, #0x10
	mov r1, sp
	movs r2, #0
	movs r3, #1
	strh r3, [r1, #2]
	strh r2, [r1, #4]
	mov r2, sp
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

	thumb_func_start sub_080B243C
sub_080B243C: @ 0x080B243C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	beq _080B248E
	movs r2, #0x34
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _080B2476
	cmp r1, #3
	beq _080B248E
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #1
	bl sub_08045A98
	movs r0, #3
	strb r0, [r4, #0xa]
_080B2476:
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080B248E
	ldr r0, _080B24A0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080B24A4 @ =0x000004BE
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _080B248E
	b _080B2642
_080B248E:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B2558
	cmp r0, #1
	bgt _080B24A8
	cmp r0, #0
	beq _080B24B6
	b _080B2628
	.align 2, 0
_080B24A0: .4byte gEwramData
_080B24A4: .4byte 0x000004BE
_080B24A8:
	cmp r0, #2
	bne _080B24AE
	b _080B25EC
_080B24AE:
	cmp r0, #3
	bne _080B24B4
	b _080B2620
_080B24B4:
	b _080B2628
_080B24B6:
	ldr r1, _080B25B8 @ =0x081E41BC
	ldr r2, _080B25BC @ =0x0820B83C
	ldr r0, _080B25C0 @ =0x0823EC00
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B24CE
	b _080B2634
_080B24CE:
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	ldr r2, _080B25C4 @ =sub_080B2F64
	ldr r3, _080B25C8 @ =sub_080B2F5C
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
	ldr r1, _080B25CC @ =0x3030E8E8
	adds r0, r4, #0
	bl sub_08042884
	ldr r1, _080B25D0 @ =0x1010F8F8
	adds r0, r4, #0
	bl sub_080428F0
	adds r1, r4, #0
	adds r1, #0x72
	ldrb r0, [r1]
	movs r5, #2
	orrs r0, r5
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #6
	ldr r1, _080B25D4 @ =0xFFFFE000
	subs r2, r1, r0
	str r2, [r4, #0x18]
	ldr r0, [r4, #0x44]
	ldr r1, _080B25D8 @ =0xFFC60000
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B2534
	rsbs r0, r2, #0
	str r0, [r4, #0x18]
_080B2534:
	ldr r0, _080B25DC @ =0xFFFD8000
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r0, [r2]
	lsrs r1, r0, #2
	adds r0, r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r5
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0xa]
_080B2558:
	ldrb r1, [r4, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080B257E
	ldr r2, _080B25E0 @ =sub_080B2FC4
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r1, r0, #0
	cmp r1, #0
	beq _080B257E
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x40]
	ldr r0, [r4, #0x44]
	ldr r2, _080B25E4 @ =0xFFF80000
	adds r0, r0, r2
	str r0, [r1, #0x44]
_080B257E:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldr r1, [r4, #0x18]
	ldr r2, _080B25E8 @ =0x08528738
	adds r0, r4, #0
	movs r3, #2
	bl sub_0806CAF8
	adds r2, r0, #0
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _080B25A6
	ldr r0, [r4, #0x18]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
_080B25A6:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _080B2628
	movs r0, #2
	strb r0, [r4, #0xa]
	movs r0, #0x10
	strb r0, [r4, #0xd]
	b _080B2628
	.align 2, 0
_080B25B8: .4byte 0x081E41BC
_080B25BC: .4byte 0x0820B83C
_080B25C0: .4byte 0x0823EC00
_080B25C4: .4byte sub_080B2F64
_080B25C8: .4byte sub_080B2F5C
_080B25CC: .4byte 0x3030E8E8
_080B25D0: .4byte 0x1010F8F8
_080B25D4: .4byte 0xFFFFE000
_080B25D8: .4byte 0xFFC60000
_080B25DC: .4byte 0xFFFD8000
_080B25E0: .4byte sub_080B2FC4
_080B25E4: .4byte 0xFFF80000
_080B25E8: .4byte 0x08528738
_080B25EC:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080B25F8
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080B2628
_080B25F8:
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	bl sub_08045A98
	movs r0, #3
	strb r0, [r4, #0xa]
	b _080B2628
_080B2620:
	movs r0, #0x76
	bl PlaySong
	b _080B2634
_080B2628:
	adds r0, r4, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _080B263C
_080B2634:
	adds r0, r4, #0
	bl EntityDelete
	b _080B2642
_080B263C:
	adds r0, r4, #0
	bl sub_0803F17C
_080B2642:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B264C
sub_080B264C: @ 0x080B264C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B26F4
	cmp r0, #1
	bgt _080B2662
	cmp r0, #0
	beq _080B2668
	b _080B276C
_080B2662:
	cmp r0, #2
	beq _080B2754
	b _080B276C
_080B2668:
	ldr r1, _080B2688 @ =0x081E41BC
	ldr r2, _080B268C @ =0x0820B83C
	ldr r0, _080B2690 @ =0x0823FFD8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #1
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B2694
	adds r0, r4, #0
	bl EntityDelete
	b _080B2790
	.align 2, 0
_080B2688: .4byte 0x081E41BC
_080B268C: .4byte 0x0820B83C
_080B2690: .4byte 0x0823FFD8
_080B2694:
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #3
	ands r1, r0
	cmp r1, #2
	ble _080B26A4
	movs r1, #2
_080B26A4:
	adds r1, #4
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	movs r0, #0x80
	lsls r0, r0, #9
	bl sub_0802D5EC
	ldr r1, _080B26E8 @ =0xFFFFC000
	adds r2, r0, r1
	str r2, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B26D6
	rsbs r0, r2, #0
	str r0, [r4, #0x48]
_080B26D6:
	bl RandomNumberGenerator
	ldr r1, _080B26EC @ =0x00001FFF
	ands r1, r0
	lsls r1, r1, #4
	ldr r0, _080B26F0 @ =0xFFFF0000
	subs r0, r0, r1
	b _080B2728
	.align 2, 0
_080B26E8: .4byte 0xFFFFC000
_080B26EC: .4byte 0x00001FFF
_080B26F0: .4byte 0xFFFF0000
_080B26F4:
	adds r0, r4, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, _080B2734 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _080B2738 @ =0x0000A094
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
	beq _080B273C
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #1
	rsbs r0, r0, #0
_080B2728:
	str r0, [r4, #0x4c]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _080B276C
	.align 2, 0
_080B2734: .4byte gEwramData
_080B2738: .4byte 0x0000A094
_080B273C:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	movs r0, #0x80
	lsls r0, r0, #7
	adds r1, r1, r0
	b _080B276A
_080B2754:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r1, r3
_080B276A:
	str r1, [r4, #0x4c]
_080B276C:
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
	bne _080B2790
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080B2790:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B2798
sub_080B2798: @ 0x080B2798
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r5, r0, #0
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	ldrb r1, [r5, #0xa]
	cmp r1, #0
	beq _080B27D8
	movs r2, #0x34
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _080B27C0
	cmp r1, #2
	beq _080B27D8
	movs r0, #2
	strb r0, [r5, #0xa]
_080B27C0:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _080B27D8
	ldr r0, _080B27E8 @ =gEwramData
	ldr r0, [r0]
	ldr r7, _080B27EC @ =0x000004BE
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080B27D8
	b _080B296A
_080B27D8:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080B2894
	cmp r0, #1
	bgt _080B27F0
	cmp r0, #0
	beq _080B27F6
	b _080B2958
	.align 2, 0
_080B27E8: .4byte gEwramData
_080B27EC: .4byte 0x000004BE
_080B27F0:
	cmp r0, #2
	beq _080B28D4
	b _080B2958
_080B27F6:
	ldr r1, _080B28AC @ =0x081E41BC
	ldr r2, _080B28B0 @ =0x0820B83C
	ldr r0, _080B28B4 @ =0x0823FFD8
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B280E
	b _080B2946
_080B280E:
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	ldr r2, _080B28B8 @ =sub_080B2F94
	ldr r3, _080B28BC @ =sub_080B2F5C
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804277C
	ldr r4, _080B28C0 @ =0x2020F0F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r0, r5, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #6
	ldr r1, _080B28C4 @ =0xFFFFE000
	subs r2, r1, r0
	str r2, [r5, #0x18]
	ldr r0, [r5, #0x44]
	ldr r7, _080B28C8 @ =0xFFC60000
	adds r0, r0, r7
	str r0, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B2870
	rsbs r0, r2, #0
	str r0, [r5, #0x18]
_080B2870:
	ldr r0, _080B28CC @ =0xFFFE0000
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	adds r2, r5, #0
	adds r2, #0x3c
	ldrb r0, [r2]
	lsrs r1, r0, #2
	adds r0, r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r5, #0xa]
_080B2894:
	ldr r1, [r5, #0x18]
	ldr r2, _080B28D0 @ =0x08528738
	adds r0, r5, #0
	movs r3, #2
	bl sub_0806CAF8
	cmp r0, #0
	beq _080B2958
	movs r0, #2
	strb r0, [r5, #0xa]
	b _080B2958
	.align 2, 0
_080B28AC: .4byte 0x081E41BC
_080B28B0: .4byte 0x0820B83C
_080B28B4: .4byte 0x0823FFD8
_080B28B8: .4byte sub_080B2F94
_080B28BC: .4byte sub_080B2F5C
_080B28C0: .4byte 0x2020F0F0
_080B28C4: .4byte 0xFFFFE000
_080B28C8: .4byte 0xFFC60000
_080B28CC: .4byte 0xFFFE0000
_080B28D0: .4byte 0x08528738
_080B28D4:
	movs r0, #0x80
	bl PlaySong
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #0xd
	mov r8, r0
	b _080B2932
_080B28E4:
	mov r0, r8
	bl sub_0802D5EC
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	mov r0, r8
	bl sub_0802D5EC
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	ldr r2, _080B2950 @ =0xFFF80000
	adds r1, r1, r2
	str r1, [r4, #0x44]
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	adds r3, r4, #0
	adds r3, #0x58
	lsls r0, r0, #6
	ldrb r1, [r3]
	movs r7, #0x41
	rsbs r7, r7, #0
	adds r2, r7, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r6, #1
_080B2932:
	cmp r6, #7
	bgt _080B2946
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080B2954 @ =sub_080B264C
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	bne _080B28E4
_080B2946:
	adds r0, r5, #0
	bl EntityDelete
	b _080B296A
	.align 2, 0
_080B2950: .4byte 0xFFF80000
_080B2954: .4byte sub_080B264C
_080B2958:
	adds r0, r5, #0
	movs r1, #3
	bl sub_0806D128
	cmp r0, #0
	beq _080B296A
	adds r0, r5, #0
	bl EntityDelete
_080B296A:
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B2978
sub_080B2978: @ 0x080B2978
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xb]
	cmp r2, #0
	bne _080B2A74
	adds r0, #0x6e
	ldrh r1, [r0]
	adds r5, r0, #0
	cmp r1, #9
	bne _080B29C2
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080B29C2
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0x30
	ldrsh r1, [r4, r3]
	cmp r0, r1
	ble _080B29C2
	strb r2, [r4, #0xd]
	adds r3, r4, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080B29C2:
	ldrb r0, [r5]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #0xe
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r1, r2
	cmp r0, #3
	bls _080B29DC
	movs r1, #0
_080B29DC:
	ldr r2, _080B2A7C @ =0x0852872C
	adds r0, r4, #0
	movs r3, #0x14
	bl sub_0806CAF8
	adds r1, r0, #0
	movs r3, #0x30
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _080B2A12
	movs r0, #0x1b
	ands r0, r1
	cmp r0, #8
	beq _080B2A12
	adds r3, r4, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080B2A12:
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B2A74
	ldrb r0, [r5]
	cmp r0, #9
	bne _080B2A74
	adds r5, r4, #0
	adds r5, #0x58
	ldrb r1, [r5]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080B2A48
	adds r0, r4, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080B2A54
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080B2A64
_080B2A48:
	adds r0, r4, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080B2A64
_080B2A54:
	adds r0, r4, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	cmp r0, #0x63
	ble _080B2A66
_080B2A64:
	movs r1, #0
_080B2A66:
	cmp r1, #0
	beq _080B2A74
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080B2A74:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B2A7C: .4byte 0x0852872C

	thumb_func_start sub_080B2A80
sub_080B2A80: @ 0x080B2A80
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080B2AB2
	cmp r0, #1
	bgt _080B2A94
	cmp r0, #0
	beq _080B2AA0
	b _080B2BD0
_080B2A94:
	cmp r0, #2
	beq _080B2B7A
	cmp r0, #3
	bne _080B2A9E
	b _080B2BBC
_080B2A9E:
	b _080B2BD0
_080B2AA0:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r5, #0xb]
	b _080B2BD0
_080B2AB2:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #7
	bne _080B2B06
	movs r0, #0x88
	bl PlaySong
	ldr r0, _080B2B70 @ =sub_080B243C
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _080B2B06
	ldrb r0, [r5, #0x10]
	strb r0, [r4, #0x10]
	str r5, [r4, #0x14]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
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
	ldrh r0, [r5, #0x34]
	strh r0, [r4, #0x34]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
_080B2B06:
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B2BD0
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080B2B3A
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080B2B46
	ldrb r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080B2B56
_080B2B3A:
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080B2B56
_080B2B46:
	adds r0, r5, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	cmp r0, #0x63
	ble _080B2B58
_080B2B56:
	movs r1, #0
_080B2B58:
	cmp r1, #0
	beq _080B2B74
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #2
	strb r0, [r5, #0xb]
	b _080B2BD0
	.align 2, 0
_080B2B70: .4byte sub_080B243C
_080B2B74:
	movs r0, #3
	strb r0, [r5, #0xb]
	b _080B2BD0
_080B2B7A:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #0xe
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r1, r2
	cmp r0, #3
	bls _080B2B98
	movs r1, #0
_080B2B98:
	rsbs r1, r1, #0
	ldr r2, _080B2BB8 @ =0x0852872C
	adds r0, r5, #0
	movs r3, #0x14
	bl sub_0806CAF8
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B2BD0
	movs r0, #0
	strb r0, [r5, #0xb]
	b _080B2BD0
	.align 2, 0
_080B2BB8: .4byte 0x0852872C
_080B2BBC:
	movs r0, #0
	strb r0, [r5, #0xa]
	strb r0, [r5, #0xc]
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080B2BD0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B2BD8
sub_080B2BD8: @ 0x080B2BD8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _080B2C04
	cmp r0, #1
	bgt _080B2BEC
	cmp r0, #0
	beq _080B2BF2
	b _080B2CD2
_080B2BEC:
	cmp r0, #2
	beq _080B2CBE
	b _080B2CD2
_080B2BF2:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r5, #0xb]
	b _080B2CD2
_080B2C04:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #7
	bne _080B2C58
	movs r0, #0x88
	bl PlaySong
	ldr r0, _080B2CB4 @ =sub_080B2798
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _080B2C58
	ldrb r0, [r5, #0x10]
	strb r0, [r4, #0x10]
	str r5, [r4, #0x14]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
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
	ldrh r0, [r5, #0x34]
	strh r0, [r4, #0x34]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
_080B2C58:
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B2CD2
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080B2C8C
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080B2C98
	ldrb r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080B2CA8
_080B2C8C:
	adds r0, r5, #0
	bl sub_0806BBC4
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080B2CA8
_080B2C98:
	adds r0, r5, #0
	bl sub_0806D044
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	cmp r0, #0x63
	ble _080B2CAA
_080B2CA8:
	movs r1, #0
_080B2CAA:
	cmp r1, #0
	beq _080B2CB8
	movs r0, #0
	strb r0, [r5, #0xb]
	b _080B2CD2
	.align 2, 0
_080B2CB4: .4byte sub_080B2798
_080B2CB8:
	movs r0, #2
	strb r0, [r5, #0xb]
	b _080B2CD2
_080B2CBE:
	movs r0, #0
	strb r0, [r5, #0xa]
	strb r0, [r5, #0xc]
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_080B2CD2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B2CD8
sub_080B2CD8: @ 0x080B2CD8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xb]
	cmp r4, #0
	beq _080B2CE8
	cmp r4, #1
	beq _080B2D0C
	b _080B2DB0
_080B2CE8:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r5, #0xb]
	ldr r0, _080B2D08 @ =0xFFD80000
	str r0, [r5, #0x4c]
	str r4, [r5, #0x48]
	movs r0, #0x6f
	bl PlaySong
	b _080B2DB0
	.align 2, 0
_080B2D08: .4byte 0xFFD80000
_080B2D0C:
	ldrb r1, [r5, #0xd]
	adds r1, #1
	strb r1, [r5, #0xd]
	ldr r2, [r5, #0x44]
	ldr r0, [r5, #0x4c]
	adds r6, r2, r0
	movs r7, #0x80
	lsls r7, r7, #8
	adds r0, r0, r7
	str r0, [r5, #0x4c]
	ldr r2, [r5, #0x48]
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r0, r2, r3
	str r0, [r5, #0x48]
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _080B2D66
	movs r1, #0x90
	lsls r1, r1, #8
	adds r0, r2, r1
	bl sub_080009E4
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_0802D5EC
	lsls r4, r4, #4
	ldr r1, [r5, #0x40]
	adds r1, r1, r4
	adds r4, r1, r0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0xf
	movs r3, #7
	bl sub_08045CEC
	adds r1, r0, #0
	cmp r1, #0
	beq _080B2D66
	str r7, [r1, #0x4c]
	ldr r0, _080B2DAC @ =0xFFFFE000
	str r0, [r1, #0x54]
_080B2D66:
	ldrb r1, [r5, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080B2D98
	movs r0, #0x72
	bl PlaySong
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x40]
	adds r4, r1, r0
	movs r0, #4
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	adds r6, r6, r0
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x10
	movs r3, #6
	bl sub_08045CEC
_080B2D98:
	adds r0, r5, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B2DB0
	movs r0, #1
	b _080B2DB2
	.align 2, 0
_080B2DAC: .4byte 0xFFFFE000
_080B2DB0:
	movs r0, #0
_080B2DB2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start EnemyBomberArmorCreate
EnemyBomberArmorCreate: @ 0x080B2DB8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080B2DDC @ =0x081E41BC
	ldr r2, _080B2DE0 @ =0x0820B83C
	ldr r0, _080B2DE4 @ =0x0823EC00
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B2DE8
	adds r0, r4, #0
	bl EntityDelete
	b _080B2E56
	.align 2, 0
_080B2DDC: .4byte 0x081E41BC
_080B2DE0: .4byte 0x0820B83C
_080B2DE4: .4byte 0x0823EC00
_080B2DE8:
	adds r0, r4, #0
	bl sub_0806B04C
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080B2E20 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B2E24
	movs r0, #3
	strb r0, [r4, #0xa]
	b _080B2E56
	.align 2, 0
_080B2E20: .4byte gEwramData
_080B2E24:
	ldr r2, _080B2E60 @ =sub_0806E1B8
	ldr r3, _080B2E64 @ =sub_080B2F10
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
_080B2E56:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B2E60: .4byte sub_0806E1B8
_080B2E64: .4byte sub_080B2F10

	thumb_func_start EnemyRockArmorCreate
EnemyRockArmorCreate: @ 0x080B2E68
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080B2E8C @ =0x081E41BC
	ldr r2, _080B2E90 @ =0x0820B83C
	ldr r0, _080B2E94 @ =0x0823FFD8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #1
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B2E98
	adds r0, r4, #0
	bl EntityDelete
	b _080B2EFE
	.align 2, 0
_080B2E8C: .4byte 0x081E41BC
_080B2E90: .4byte 0x0820B83C
_080B2E94: .4byte 0x0823FFD8
_080B2E98:
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x13
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0806B04C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080B2ED4 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _080B2ED8
	movs r0, #3
	strb r0, [r4, #0xa]
	b _080B2EFE
	.align 2, 0
_080B2ED4: .4byte gEwramData
_080B2ED8:
	ldr r2, _080B2F08 @ =sub_0806E1B8
	ldr r3, _080B2F0C @ =sub_080B2F10
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	strb r5, [r4, #0xa]
_080B2EFE:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B2F08: .4byte sub_0806E1B8
_080B2F0C: .4byte sub_080B2F10

	thumb_func_start sub_080B2F10
sub_080B2F10: @ 0x080B2F10
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	bl sub_0806BC40
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080B2F56
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
	movs r1, #0
	movs r0, #2
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
_080B2F56:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080B2F5C
sub_080B2F5C: @ 0x080B2F5C
	movs r1, #0
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_080B2F64
sub_080B2F64: @ 0x080B2F64
	push {lr}
	sub sp, #0x10
	mov r2, sp
	movs r3, #0
	movs r1, #2
	strh r1, [r2, #2]
	mov r1, sp
	strh r3, [r1, #4]
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	strh r1, [r2]
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

	thumb_func_start sub_080B2F94
sub_080B2F94: @ 0x080B2F94
	push {lr}
	sub sp, #0x10
	mov r1, sp
	movs r2, #0
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	mov r2, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	strh r1, [r2]
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
	.align 2, 0

	thumb_func_start sub_080B2FC4
sub_080B2FC4: @ 0x080B2FC4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080B3022
	ldr r1, _080B2FF0 @ =0x081E41BC
	ldr r2, _080B2FF4 @ =0x0820B83C
	ldr r0, _080B2FF8 @ =0x0823EC00
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B2FFC
	adds r0, r4, #0
	bl EntityDelete
	b _080B3038
	.align 2, 0
_080B2FF0: .4byte 0x081E41BC
_080B2FF4: .4byte 0x0820B83C
_080B2FF8: .4byte 0x0823EC00
_080B2FFC:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080B3022:
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080B3038
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080B3038:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start EnemyBomberArmorUpdate
EnemyBomberArmorUpdate: @ 0x080B3040
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080B309C
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B306E
	cmp r0, #1
	bgt _080B305C
	cmp r0, #0
	beq _080B3066
	b _080B3090
_080B305C:
	cmp r0, #2
	beq _080B3076
	cmp r0, #3
	beq _080B3088
	b _080B3090
_080B3066:
	adds r0, r4, #0
	bl sub_080B2978
	b _080B3090
_080B306E:
	adds r0, r4, #0
	bl sub_080B2A80
	b _080B3090
_080B3076:
	adds r0, r4, #0
	bl sub_080B2CD8
	cmp r0, #0
	beq _080B3090
	adds r0, r4, #0
	bl EntityDelete
	b _080B309C
_080B3088:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080B309C
_080B3090:
	adds r0, r4, #0
	bl sub_0806E314
	adds r0, r4, #0
	bl sub_0806DF20
_080B309C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyRockArmorUpdate
EnemyRockArmorUpdate: @ 0x080B30A4
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _080B310A
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B30D4
	cmp r0, #1
	bgt _080B30C2
	cmp r0, #0
	beq _080B30CC
	b _080B30F6
_080B30C2:
	cmp r0, #2
	beq _080B30DC
	cmp r0, #3
	beq _080B30EE
	b _080B30F6
_080B30CC:
	adds r0, r4, #0
	bl sub_080B2978
	b _080B30F6
_080B30D4:
	adds r0, r4, #0
	bl sub_080B2BD8
	b _080B30F6
_080B30DC:
	adds r0, r4, #0
	bl sub_080B2CD8
	cmp r0, #0
	beq _080B30F6
	adds r0, r4, #0
	bl EntityDelete
	b _080B310A
_080B30EE:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080B310A
_080B30F6:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080B3104
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080B3104:
	adds r0, r4, #0
	bl sub_0806DF20
_080B310A:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B3114
sub_080B3114: @ 0x080B3114
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080B3126
	cmp r0, #1
	beq _080B316C
	b _080B31D0
_080B3126:
	ldr r0, _080B314C @ =0x081193DC
	adds r3, r0, #0
	adds r3, #0x10
	ldr r1, [r0, #0x10]
	ldr r2, [r3, #4]
	ldr r0, [r3, #8]
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B3150
	adds r0, r4, #0
	bl EntityDelete
	b _080B31E8
	.align 2, 0
_080B314C: .4byte 0x081193DC
_080B3150:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x1b
	strb r0, [r1]
	subs r1, #9
	movs r0, #9
	strb r0, [r1]
	movs r0, #0x80
	strb r0, [r4, #0xd]
	ldr r0, _080B31B8 @ =0xFFFFC000
	str r0, [r4, #0x4c]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080B316C:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _080B31BC @ =gEwramData
	ldr r2, [r1]
	ldr r3, _080B31C0 @ =0x0000A094
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
	bl sub_08001F3C
	cmp r0, #0
	beq _080B31C4
	ldrb r1, [r4, #0xd]
	adds r0, r1, #0
	cmp r0, #0
	beq _080B31C4
	cmp r0, #0x40
	bne _080B31B2
	movs r0, #1
	strb r0, [r4, #0xf]
_080B31B2:
	subs r0, r1, #1
	strb r0, [r4, #0xd]
	b _080B31D0
	.align 2, 0
_080B31B8: .4byte 0xFFFFC000
_080B31BC: .4byte gEwramData
_080B31C0: .4byte 0x0000A094
_080B31C4:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080B31D0:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _080B31E8
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080B31E8:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B31F0
sub_080B31F0: @ 0x080B31F0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B3260
	cmp r0, #1
	bgt _080B3206
	cmp r0, #0
	beq _080B320C
	b _080B32EC
_080B3206:
	cmp r0, #2
	beq _080B3280
	b _080B32EC
_080B320C:
	ldr r0, _080B3230 @ =0x081193DC
	adds r3, r0, #0
	adds r3, #0x10
	ldr r1, [r0, #0x10]
	ldr r2, [r3, #4]
	ldr r0, [r3, #8]
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B3234
	adds r0, r4, #0
	bl EntityDelete
	b _080B32EC
	.align 2, 0
_080B3230: .4byte 0x081193DC
_080B3234:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x30
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080B3260:
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _080B32EC
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x20
	strb r0, [r4, #0xd]
	movs r0, #2
	strb r0, [r4, #0xa]
	b _080B32EC
_080B3280:
	ldrb r1, [r4, #0xd]
	cmp r1, #0
	beq _080B32E0
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080B32D4
	ldr r2, _080B32DC @ =sub_080B3114
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _080B32D4
	movs r0, #0x10
	bl sub_0802D5EC
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r1, [r1]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x42
	strh r1, [r0]
	movs r0, #8
	bl sub_0802D5EC
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r1, r1, r0
	subs r1, #0x10
	adds r0, r5, #0
	adds r0, #0x46
	strh r1, [r0]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080B32D4:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	b _080B32EC
	.align 2, 0
_080B32DC: .4byte sub_080B3114
_080B32E0:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080B32EC:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B32F4
sub_080B32F4: @ 0x080B32F4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _080B3306
	cmp r0, #1
	beq _080B339C
	b _080B33BE
_080B3306:
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #4
	ldr r1, _080B332C @ =0x081193DC
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldr r0, [r0, #8]
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B3330
	adds r0, r6, #0
	bl EntityDelete
	b _080B33BE
	.align 2, 0
_080B332C: .4byte 0x081193DC
_080B3330:
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	bne _080B333E
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #0x14
	b _080B3344
_080B333E:
	adds r1, r6, #0
	adds r1, #0x65
	movs r0, #0x1a
_080B3344:
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	subs r0, #0x10
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	bl RandomNumberGenerator
	movs r5, #1
	ands r0, r5
	adds r4, r6, #0
	adds r4, #0x58
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	bl RandomNumberGenerator
	ands r0, r5
	lsls r0, r0, #7
	ldrb r2, [r4]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x10
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_080B339C:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D3D8
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080B33B2
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080B33BE
_080B33B2:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080B33BE:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B33C8
sub_080B33C8: @ 0x080B33C8
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080B33DC
	cmp r0, #1
	beq _080B34B2
	b _080B34D2
_080B33DC:
	ldrb r0, [r5, #0x12]
	lsls r0, r0, #4
	ldr r1, _080B3404 @ =0x081193DC
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldr r0, [r0, #8]
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B3408
	adds r0, r4, #0
	bl EntityDelete
	b _080B34F6
	.align 2, 0
_080B3404: .4byte 0x081193DC
_080B3408:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	subs r0, #0x10
	ands r0, r1
	movs r6, #2
	orrs r0, r6
	strb r0, [r2]
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	beq _080B347E
	ldr r2, _080B3500 @ =sub_080B31F0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	mov ip, r0
	cmp r0, #0
	beq _080B347E
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	mov r1, ip
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r0, #0x10
	adds r1, #4
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	mov r3, ip
	adds r3, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r1, ip
	adds r1, #0x59
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
_080B347E:
	ldr r2, _080B3504 @ =sub_080B3EB0
	adds r0, r4, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080B3508 @ =0x1032F8CE
	adds r0, r4, #0
	bl sub_08042884
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x6e
	bl PlaySong
	movs r0, #8
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080B34B2:
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B34D2
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #4
	bne _080B34D2
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
_080B34D2:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	beq _080B34EA
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _080B34F6
_080B34EA:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080B34F6:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B3500: .4byte sub_080B31F0
_080B3504: .4byte sub_080B3EB0
_080B3508: .4byte 0x1032F8CE

	thumb_func_start sub_080B350C
sub_080B350C: @ 0x080B350C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r4, [r5, #0x14]
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080B3520
	cmp r0, #1
	beq _080B35B4
	b _080B3634
_080B3520:
	ldrb r0, [r4, #0x12]
	lsls r0, r0, #4
	ldr r1, _080B3548 @ =0x081193DC
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldr r0, [r0, #8]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B354C
	adds r0, r5, #0
	bl EntityDelete
	b _080B367C
	.align 2, 0
_080B3548: .4byte 0x081193DC
_080B354C:
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
	movs r2, #8
	rsbs r2, r2, #0
	movs r3, #0xc
	rsbs r3, r3, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806E350
	ldr r2, _080B3684 @ =0xFFFE0000
	str r2, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B3586
	rsbs r0, r2, #0
	str r0, [r5, #0x48]
_080B3586:
	movs r0, #0x7a
	bl PlaySong
	movs r0, #1
	strh r0, [r5, #0x34]
	ldr r2, _080B3688 @ =sub_080B3EB0
	ldr r3, _080B368C @ =sub_080B3EE0
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804277C
	ldr r4, _080B3690 @ =0x0808FCFC
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428F0
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_080B35B4:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080B362A
	ldr r2, _080B3694 @ =sub_080B32F4
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080B362A
	movs r0, #4
	bl sub_0802D5EC
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r1, [r1]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	movs r0, #8
	bl sub_0802D5EC
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	bl sub_0802D5EC
	ldr r1, [r5, #0x48]
	adds r1, r1, r0
	rsbs r0, r1, #0
	cmp r0, #0
	bge _080B360E
	adds r0, #3
_080B360E:
	asrs r0, r0, #2
	str r0, [r4, #0x48]
	ldr r0, _080B3698 @ =0xFFFFF000
	str r0, [r4, #0x4c]
	ldr r0, _080B369C @ =0xFFFFFF00
	str r0, [r4, #0x50]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0x12]
	strb r0, [r4, #0xb]
_080B362A:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	bl sub_0806D3D8
_080B3634:
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	adds r0, r5, #0
	bl sub_0803F17C
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _080B3664
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	bl sub_0806D578
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080B3664:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _080B367C
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080B367C:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B3684: .4byte 0xFFFE0000
_080B3688: .4byte sub_080B3EB0
_080B368C: .4byte sub_080B3EE0
_080B3690: .4byte 0x0808FCFC
_080B3694: .4byte sub_080B32F4
_080B3698: .4byte 0xFFFFF000
_080B369C: .4byte 0xFFFFFF00

	thumb_func_start sub_080B36A0
sub_080B36A0: @ 0x080B36A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldrb r0, [r6, #0xb]
	cmp r0, #6
	bls _080B36B2
	b _080B3946
_080B36B2:
	lsls r0, r0, #2
	ldr r1, _080B36BC @ =_080B36C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B36BC: .4byte _080B36C0
_080B36C0: @ jump table
	.4byte _080B36DC @ case 0
	.4byte _080B36EE @ case 1
	.4byte _080B3720 @ case 2
	.4byte _080B3858 @ case 3
	.4byte _080B38A8 @ case 4
	.4byte _080B38F4 @ case 5
	.4byte _080B3932 @ case 6
_080B36DC:
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #1
	strb r0, [r6, #0xb]
	b _080B3946
_080B36EE:
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080B36FE
	b _080B3946
_080B36FE:
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r1, [r6, #0x11]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080B371A
	movs r0, #2
	strb r0, [r6, #0xb]
	b _080B3946
_080B371A:
	movs r0, #3
	strb r0, [r6, #0xb]
	b _080B3946
_080B3720:
	adds r0, r6, #0
	adds r0, #0x6e
	ldrh r1, [r0]
	mov r8, r0
	cmp r1, #2
	bne _080B379C
	ldr r2, _080B3840 @ =sub_080B33C8
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _080B379C
	ldr r7, _080B3844 @ =0x0000FFFC
	adds r4, r6, #0
	adds r4, #0x58
	ldrb r0, [r4]
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
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B3764
	movs r7, #4
_080B3764:
	adds r1, r6, #0
	adds r1, #0x42
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0xa
	adds r1, #4
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
	str r6, [r5, #0x14]
_080B379C:
	mov r0, r8
	ldrh r1, [r0]
	ldr r0, _080B3848 @ =0x00002802
	movs r2, #0x6c
	adds r2, r2, r6
	mov sb, r2
	cmp r1, r0
	bne _080B3832
	movs r7, #0xc
	rsbs r7, r7, #0
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B37C0
	movs r7, #0xc
_080B37C0:
	lsls r4, r7, #1
	movs r0, #2
	mov r8, r0
_080B37C6:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080B384C @ =sub_080B32F4
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _080B3824
	movs r0, #0x10
	bl sub_0802D5EC
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r1, [r1]
	adds r1, r1, r4
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x42
	strh r1, [r0]
	movs r0, #0x10
	bl sub_0802D5EC
	adds r1, r6, #0
	adds r1, #0x46
	subs r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #7
	bl sub_0802D5EC
	ldr r1, _080B3850 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	ldr r0, _080B3854 @ =0xFFFFF800
	str r0, [r5, #0x54]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0x12]
	strb r0, [r5, #0xb]
_080B3824:
	adds r4, r4, r7
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	mov r0, r8
	cmp r0, #0
	bge _080B37C6
_080B3832:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	mov r2, sb
	ldrb r1, [r2]
	b _080B3892
	.align 2, 0
_080B3840: .4byte sub_080B33C8
_080B3844: .4byte 0x0000FFFC
_080B3848: .4byte 0x00002802
_080B384C: .4byte sub_080B32F4
_080B3850: .4byte 0xFFFFF000
_080B3854: .4byte 0xFFFFF800
_080B3858:
	adds r0, r6, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #2
	bne _080B388C
	ldr r2, _080B38A4 @ =sub_080B350C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _080B388C
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
	str r6, [r5, #0x14]
_080B388C:
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
_080B3892:
	movs r2, #4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080B3946
	movs r0, #0x20
	strb r0, [r6, #0xd]
	strb r2, [r6, #0xb]
	b _080B3946
	.align 2, 0
_080B38A4: .4byte sub_080B350C
_080B38A8:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _080B393A
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r1, [r6, #0x40]
	movs r7, #1
	cmp r1, r0
	ble _080B38BE
	movs r7, #0
_080B38BE:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	cmp r0, r7
	beq _080B38DE
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #5
	strb r0, [r6, #0xb]
	b _080B3946
_080B38DE:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #6
	strb r0, [r6, #0xb]
	movs r0, #0x80
	strb r0, [r6, #0xd]
	b _080B3946
_080B38F4:
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B3946
	adds r3, r6, #0
	adds r3, #0x58
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	strb r0, [r6, #0xa]
	strb r0, [r6, #0xc]
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080B3946
_080B3932:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	beq _080B3940
_080B393A:
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080B3946
_080B3940:
	strb r1, [r6, #0xa]
	strb r1, [r6, #0xc]
	strb r1, [r6, #0xb]
_080B3946:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B3954
sub_080B3954: @ 0x080B3954
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #0x12]
	lsls r0, r0, #4
	ldr r1, _080B3974 @ =0x081193DC
	adds r0, r0, r1
	mov r8, r0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _080B3978
	cmp r0, #1
	beq _080B3A40
	b _080B3A5A
	.align 2, 0
_080B3974: .4byte 0x081193DC
_080B3978:
	movs r0, #0x6b
	bl PlaySong
	mov r0, r8
	ldrb r6, [r0, #0xd]
	ldrb r1, [r0, #0xc]
	cmp r6, r1
	blt _080B3A28
_080B3988:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080B3A34 @ =sub_080B3EE8
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _080B3A1E
	ldrb r0, [r5, #0x12]
	lsls r0, r0, #4
	ldr r1, _080B3A38 @ =0x081193DC
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldr r0, [r0, #8]
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	adds r0, r4, #0
	adds r0, #0x65
	strb r6, [r0]
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0xd
	str r0, [r4, #0x48]
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0xc
	ldr r7, _080B3A3C @ =0xFFFD0000
	adds r0, r0, r7
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
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080B3A1E:
	subs r6, #1
	mov r0, r8
	ldrb r0, [r0, #0xc]
	cmp r6, r0
	bge _080B3988
_080B3A28:
	movs r0, #8
	strb r0, [r5, #0xd]
	movs r0, #1
	strb r0, [r5, #0xb]
	b _080B3A5A
	.align 2, 0
_080B3A34: .4byte sub_080B3EE8
_080B3A38: .4byte 0x081193DC
_080B3A3C: .4byte 0xFFFD0000
_080B3A40:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _080B3A56
	movs r0, #1
	b _080B3A5C
_080B3A56:
	subs r0, #1
	strb r0, [r5, #0xd]
_080B3A5A:
	movs r0, #0
_080B3A5C:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B3A68
sub_080B3A68: @ 0x080B3A68
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r4, [r3, #0x14]
	adds r1, r4, #0
	adds r1, #0x18
	ldrb r2, [r3, #0x11]
	cmp r2, #0
	ble _080B3AA8
	ldr r5, _080B3A98 @ =gEwramData
	subs r0, r2, #1
	adds r1, r0, r1
_080B3A7E:
	ldrb r0, [r1]
	cmp r0, #0
	beq _080B3AA0
	lsls r1, r0, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5]
	adds r1, r1, r0
	ldr r0, _080B3A9C @ =0x0000052A
	adds r1, r1, r0
	movs r5, #0
	ldrsh r2, [r1, r5]
	b _080B3AB0
	.align 2, 0
_080B3A98: .4byte gEwramData
_080B3A9C: .4byte 0x0000052A
_080B3AA0:
	subs r1, #1
	subs r2, #1
	cmp r2, #0
	bgt _080B3A7E
_080B3AA8:
	adds r0, r4, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r2, [r0, r1]
_080B3AB0:
	subs r2, #0x16
	ldr r0, [r3, #0x44]
	ldr r1, [r3, #0x4c]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	adds r1, r3, #0
	adds r1, #0x46
	ldrh r4, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	cmp r0, r2
	blt _080B3ADC
	subs r0, r2, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r4
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #0x4c]
_080B3ADC:
	ldr r0, [r3, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r3, #0x4c]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B3AEC
sub_080B3AEC: @ 0x080B3AEC
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r1, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080B3B06
	ldrb r0, [r1, #0x15]
	cmp r0, #0
	beq _080B3BA4
	adds r0, r4, #0
	bl sub_080B3A68
_080B3B06:
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080B3B20
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080B3BA4
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	b _080B3BA4
_080B3B20:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B3B6E
	cmp r0, #1
	bgt _080B3B30
	cmp r0, #0
	beq _080B3B3A
	b _080B3B90
_080B3B30:
	cmp r0, #2
	beq _080B3B76
	cmp r0, #3
	beq _080B3B88
	b _080B3B90
_080B3B3A:
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	bne _080B3B90
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x3c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0x78
	bl sub_0806CFFC
	cmp r0, #0
	beq _080B3B90
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xc]
	strb r5, [r4, #0xb]
	b _080B3B90
_080B3B6E:
	adds r0, r4, #0
	bl sub_080B36A0
	b _080B3B90
_080B3B76:
	adds r0, r4, #0
	bl sub_080B3954
	cmp r0, #0
	beq _080B3B90
	adds r0, r4, #0
	bl EntityDelete
	b _080B3BA4
_080B3B88:
	adds r0, r4, #0
	bl sub_0803F17C
	b _080B3BA4
_080B3B90:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080B3B9E
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_080B3B9E:
	adds r0, r4, #0
	bl sub_0803F17C
_080B3BA4:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B3BAC
sub_080B3BAC: @ 0x080B3BAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	mov sl, r1
	movs r0, #0
	str r0, [sp, #4]
	lsls r0, r1, #4
	ldr r1, _080B3C04 @ =0x081193DC
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldr r0, [r0, #8]
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B3BDE
	b _080B3D82
_080B3BDE:
	ldr r1, [sp, #4]
	str r1, [r7, #4]
	ldr r0, _080B3C08 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080B3C0C
	adds r0, r7, #0
	bl sub_0806AF98
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _080B3C10
	.align 2, 0
_080B3C04: .4byte 0x081193DC
_080B3C08: .4byte gEwramData
_080B3C0C:
	movs r0, #2
	strh r0, [r7, #0x30]
_080B3C10:
	movs r2, #0x30
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bgt _080B3C1C
	movs r0, #1
	b _080B3C22
_080B3C1C:
	cmp r0, #8
	ble _080B3C24
	movs r0, #8
_080B3C22:
	strh r0, [r7, #0x30]
_080B3C24:
	ldr r0, [r7, #0x44]
	str r0, [sp, #8]
	movs r1, #0x18
	adds r1, r1, r7
	mov r8, r1
	movs r2, #1
	mov sb, r2
	mov r0, r8
	str r0, [sp, #0xc]
	b _080B3D26
_080B3C38:
	ldrb r0, [r6, #0x10]
	mov r1, r8
	strb r0, [r1]
	mov r0, sb
	subs r0, #1
	strb r0, [r6, #0x11]
	str r7, [r6, #0x14]
	mov r2, sl
	strb r2, [r6, #0x12]
	mov r0, sl
	lsls r3, r0, #4
	ldr r0, _080B3CF4 @ =0x081193DC
	adds r3, r3, r0
	ldr r1, [r3]
	ldr r2, [r3, #4]
	ldr r0, [r3, #8]
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_0806E0D0
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x36
	strb r0, [r1]
	adds r0, r6, #0
	bl sub_0806B04C
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
	adds r5, r7, #0
	adds r5, #0x58
	ldrb r0, [r5]
	adds r4, r6, #0
	adds r4, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r3, [r4]
	movs r2, #0x41
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4]
	ldrb r3, [r5]
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	ands r2, r3
	orrs r2, r1
	strb r2, [r5]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x44]
	ldr r0, [r7, #0x44]
	ldr r1, _080B3CF8 @ =0xFFEA0000
	adds r0, r0, r1
	str r0, [r7, #0x44]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080B3CFC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080B3D00
	movs r0, #3
	strb r0, [r6, #0xa]
	b _080B3D20
	.align 2, 0
_080B3CF4: .4byte 0x081193DC
_080B3CF8: .4byte 0xFFEA0000
_080B3CFC: .4byte gEwramData
_080B3D00:
	strb r0, [r6, #0xa]
	ldr r2, _080B3D8C @ =sub_0806E1B8
	ldr r3, _080B3D90 @ =sub_080B3E70
	adds r0, r6, #0
	movs r1, #8
	bl sub_0804277C
	ldr r4, _080B3D94 @ =0x141CECF2
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042884
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428F0
_080B3D20:
	movs r2, #1
	add sb, r2
	add r8, r2
_080B3D26:
	movs r1, #0x30
	ldrsh r0, [r7, r1]
	cmp sb, r0
	bgt _080B3D44
	ldr r0, _080B3D98 @ =sub_080B3AEC
	bl sub_0806DFF8
	adds r6, r0, #0
	cmp r6, #0
	beq _080B3D3C
	b _080B3C38
_080B3D3C:
	mov r2, sb
	strh r2, [r7, #0x30]
	movs r0, #1
	str r0, [sp, #4]
_080B3D44:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _080B3DA4
	ldr r2, [sp, #0xc]
	mov r8, r2
	movs r1, #0x30
	ldrsh r0, [r7, r1]
	mov sb, r0
	cmp r0, #0
	ble _080B3D82
	ldr r4, _080B3D9C @ =gEwramData
_080B3D5A:
	mov r2, r8
	ldrb r0, [r2]
	lsls r1, r0, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080B3DA0 @ =0x000004E4
	adds r1, r1, r0
	ldr r0, [r4]
	adds r6, r0, r1
	adds r0, r6, #0
	bl EntityDelete
	movs r1, #1
	add r8, r1
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r0, sb
	cmp r0, #0
	bgt _080B3D5A
_080B3D82:
	adds r0, r7, #0
	bl EntityDelete
	b _080B3DBA
	.align 2, 0
_080B3D8C: .4byte sub_0806E1B8
_080B3D90: .4byte sub_080B3E70
_080B3D94: .4byte 0x141CECF2
_080B3D98: .4byte sub_080B3AEC
_080B3D9C: .4byte gEwramData
_080B3DA0: .4byte 0x000004E4
_080B3DA4:
	ldr r1, [sp, #8]
	movs r2, #0xb0
	lsls r2, r2, #0xd
	adds r0, r1, r2
	str r0, [r7, #0x44]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_080B3DBA:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B3DCC
sub_080B3DCC: @ 0x080B3DCC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	movs r7, #0
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r3, #0x98
	lsls r3, r3, #1
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0x15
	movs r1, #0xe0
	lsls r1, r1, #0x10
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_08068AD4
	cmp r0, #0
	bne _080B3E00
	strb r7, [r6, #0x15]
	b _080B3E64
_080B3E00:
	movs r0, #1
	strb r0, [r6, #0x15]
	movs r2, #0x30
	ldrsh r1, [r6, r2]
	adds r0, r1, r6
	adds r4, r0, #0
	adds r4, #0x17
	adds r5, r1, #0
	cmp r5, #0
	ble _080B3E5A
	ldr r0, _080B3E3C @ =gEwramData
	mov r8, r0
_080B3E18:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080B3E52
	adds r1, r0, #0
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080B3E40 @ =0x000004E4
	adds r0, r0, r1
	mov r2, r8
	ldr r1, [r2]
	adds r1, r1, r0
	ldrb r0, [r1, #0xa]
	cmp r0, #2
	bne _080B3E44
	movs r0, #0
	strb r0, [r4]
	b _080B3E52
	.align 2, 0
_080B3E3C: .4byte gEwramData
_080B3E40: .4byte 0x000004E4
_080B3E44:
	cmp r7, #0
	bne _080B3E52
	adds r0, r1, #0
	movs r1, #0
	bl sub_08021278
	movs r7, #1
_080B3E52:
	subs r4, #1
	subs r5, #1
	cmp r5, #0
	bgt _080B3E18
_080B3E5A:
	cmp r7, #0
	bne _080B3E64
	adds r0, r6, #0
	bl EntityDelete
_080B3E64:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080B3E70
sub_080B3E70: @ 0x080B3E70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E218
	cmp r0, #0
	beq _080B3EA8
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
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xb]
_080B3EA8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B3EB0
sub_080B3EB0: @ 0x080B3EB0
	push {lr}
	sub sp, #0x10
	mov r2, sp
	movs r3, #0
	movs r1, #2
	strh r1, [r2, #2]
	mov r1, sp
	strh r3, [r1, #4]
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	strh r1, [r2]
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

	thumb_func_start sub_080B3EE0
sub_080B3EE0: @ 0x080B3EE0
	movs r1, #0
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_080B3EE8
sub_080B3EE8: @ 0x080B3EE8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x28
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080B3F14
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080B3F14:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyBonePillarCreate
EnemyBonePillarCreate: @ 0x080B3F1C
	push {lr}
	movs r1, #0
	bl sub_080B3BAC
	pop {r0}
	bx r0

	thumb_func_start EnemyBonePillarUpdate
EnemyBonePillarUpdate: @ 0x080B3F28
	push {lr}
	bl sub_080B3DCC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyFishHeadCreate
EnemyFishHeadCreate: @ 0x080B3F34
	push {lr}
	movs r1, #1
	bl sub_080B3BAC
	pop {r0}
	bx r0

	thumb_func_start EnemyFishHeadUpdate
EnemyFishHeadUpdate: @ 0x080B3F40
	push {lr}
	bl sub_080B3DCC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B3F4C
sub_080B3F4C: @ 0x080B3F4C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r0, sp
	movs r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080B3F76
	mov r1, sp
	movs r0, #0x5a
	strh r0, [r1]
	movs r0, #3
	strh r0, [r1, #6]
	b _080B3F8C
_080B3F76:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B3F84
	mov r0, sp
	movs r1, #0x50
	b _080B3F88
_080B3F84:
	mov r0, sp
	movs r1, #0x37
_080B3F88:
	strh r1, [r0]
	strh r2, [r0, #6]
_080B3F8C:
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	mov r0, sp
	ldrh r0, [r0, #6]
	cmp r0, #3
	bne _080B3FB6
	movs r2, #0xc0
	lsls r2, r2, #0xb
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bge _080B3FAE
	rsbs r2, r2, #0
_080B3FAE:
	ldr r1, _080B3FC0 @ =0xFFFE0000
	adds r0, r2, #0
	bl sub_08021248
_080B3FB6:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B3FC0: .4byte 0xFFFE0000

	thumb_func_start sub_080B3FC4
sub_080B3FC4: @ 0x080B3FC4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, [r5, #0x14]
	movs r0, #4
	bl sub_0806C2CC
	str r0, [r5, #0x18]
	cmp r0, #0
	beq _080B4040
	movs r0, #4
	bl sub_0806C2CC
	str r0, [r5, #0x1c]
	cmp r0, #0
	beq _080B4040
	movs r0, #0x20
	bl sub_0806C2CC
	adds r6, r0, #0
	str r6, [r5, #0x20]
	cmp r6, #0
	beq _080B4040
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x1c]
	movs r3, #0
	movs r4, #0
	movs r0, #1
	strh r0, [r1]
	strh r4, [r1, #2]
	str r2, [r1, #4]
	str r4, [r1, #8]
	str r4, [r1, #0xc]
	strb r3, [r2]
	strb r3, [r2, #1]
	strb r3, [r2, #4]
	strb r3, [r2, #5]
	str r4, [r2, #8]
	str r6, [r2, #0xc]
	movs r2, #0x17
	ldrsb r2, [r7, r2]
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_0803B924
	adds r0, r5, #0
	movs r1, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, _080B403C @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_0803F17C
	movs r0, #0
	b _080B4042
	.align 2, 0
_080B403C: .4byte sub_0803B9D0
_080B4040:
	movs r0, #1
_080B4042:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080B4048
sub_080B4048: @ 0x080B4048
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	ldr r2, [r0, #0x14]
	adds r0, r2, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, _080B4084 @ =0x08244220
	ldr r6, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r6
	ldr r4, [r0, #0xc]
	mov r0, ip
	ldr r0, [r0, #0x1c]
	mov sb, r0
	mov r1, ip
	ldr r3, [r1, #0x20]
	movs r0, #0x12
	ldrsb r0, [r2, r0]
	cmp r0, #3
	bgt _080B4088
	ldrb r0, [r1, #0x13]
	cmp r0, #0
	bne _080B409A
	mov r1, ip
	adds r1, #0x5c
	movs r0, #0x1d
	b _080B409E
	.align 2, 0
_080B4084: .4byte 0x08244220
_080B4088:
	mov r5, ip
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	beq _080B4098
	mov r1, ip
	adds r1, #0x5c
	movs r0, #0x1d
	b _080B409E
_080B4098:
	mov r1, ip
_080B409A:
	adds r1, #0x5c
	movs r0, #0x1e
_080B409E:
	strb r0, [r1]
	movs r7, #0
	mov r8, r7
	mov r1, ip
	ldrb r0, [r1, #0x13]
	cmp r0, #0
	beq _080B40DC
	ldrb r0, [r6, #5]
	subs r2, r0, #1
	cmp r2, #0
	blt _080B4100
_080B40B4:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080B40D2
	adds r1, r3, #0
	adds r0, r4, #0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldrb r0, [r3]
	rsbs r0, r0, #0
	ldrb r1, [r3, #6]
	subs r0, r0, r1
	strb r0, [r3]
	adds r3, #0xc
	movs r0, #1
	add r8, r0
_080B40D2:
	adds r4, #0xc
	subs r2, #1
	cmp r2, #0
	bge _080B40B4
	b _080B4100
_080B40DC:
	ldrb r0, [r6, #5]
	subs r2, r0, #1
	cmp r2, #0
	blt _080B4100
_080B40E4:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080B40F8
	adds r1, r3, #0
	adds r0, r4, #0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	adds r3, #0xc
	movs r0, #1
	add r8, r0
_080B40F8:
	adds r4, #0xc
	subs r2, #1
	cmp r2, #0
	bge _080B40E4
_080B4100:
	mov r5, r8
	mov r1, sb
	strb r5, [r1, #5]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B4114
sub_080B4114: @ 0x080B4114
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldrh r1, [r5, #0x1e]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B412A
	movs r0, #2
	strb r0, [r4, #0xa]
_080B412A:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080B417A
	cmp r0, #1
	bgt _080B413A
	cmp r0, #0
	beq _080B4140
	b _080B41BA
_080B413A:
	cmp r0, #2
	beq _080B41A4
	b _080B41BA
_080B4140:
	adds r0, r4, #0
	bl sub_080B3FC4
	cmp r0, #0
	bne _080B41B2
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	blt _080B41B2
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
	adds r2, #1
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r4, #0xa]
_080B417A:
	adds r0, r4, #0
	bl sub_080B4048
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x5a
	movs r1, #0x78
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _080B41BA
_080B41A4:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080B41B2:
	adds r0, r4, #0
	bl EntityDelete
	b _080B41D8
_080B41BA:
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	ldr r2, [r5, #0x20]
	ldrb r3, [r4, #0x13]
	movs r1, #0
	str r1, [sp]
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_080B41D8:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080B41E0
sub_080B41E0: @ 0x080B41E0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r5, [r6, #0x18]
	movs r4, #0
	movs r7, #0
	ldrh r1, [r5, #0x1e]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B41F8
	movs r0, #5
	strb r0, [r6, #0xa]
_080B41F8:
	ldrb r0, [r6, #0xa]
	cmp r0, #5
	bls _080B4200
	b _080B433E
_080B4200:
	lsls r0, r0, #2
	ldr r1, _080B420C @ =_080B4210
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B420C: .4byte _080B4210
_080B4210: @ jump table
	.4byte _080B4228 @ case 0
	.4byte _080B426C @ case 1
	.4byte _080B433E @ case 2
	.4byte _080B433E @ case 3
	.4byte _080B433E @ case 4
	.4byte _080B4336 @ case 5
_080B4228:
	ldr r1, _080B425C @ =0x08244220
	movs r2, #0x17
	ldrsb r2, [r5, r2]
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r6, #0
	bl sub_0803B924
	ldr r0, _080B4260 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x1f
	strb r0, [r1]
	ldr r0, _080B4264 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B4268
	movs r0, #3
	strb r0, [r6, #0xa]
	b _080B433E
	.align 2, 0
_080B425C: .4byte 0x08244220
_080B4260: .4byte sub_0803B9D0
_080B4264: .4byte gEwramData
_080B4268:
	movs r0, #1
	strb r0, [r6, #0xa]
_080B426C:
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	bne _080B4276
	movs r0, #2
	strb r0, [r6, #0xa]
_080B4276:
	ldrh r1, [r5, #0x1e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B4284
	movs r0, #4
	strb r0, [r6, #0xa]
_080B4284:
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r0, r5, #0
	bl sub_0806CD38
	cmp r0, #0
	bge _080B42A4
	adds r0, r5, #0
	bl sub_0806CD38
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080B42AC
_080B42A4:
	adds r0, r5, #0
	bl sub_0806CD38
	asrs r0, r0, #0x10
_080B42AC:
	subs r0, r0, r4
	subs r0, #0x20
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r0, r5, #0
	bl sub_0806CD78
	cmp r0, #0
	bge _080B42D4
	adds r0, r5, #0
	bl sub_0806CD78
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080B42DC
_080B42D4:
	adds r0, r5, #0
	bl sub_0806CD78
	asrs r0, r0, #0x10
_080B42DC:
	subs r0, r0, r4
	subs r0, #0x10
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r7, #0
	bl ArcTan2
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	lsls r1, r0, #1
	adds r7, r1, r0
	adds r0, r4, #0
	bl sub_080009E4
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r4, r0, r1
	ldr r1, [r5, #0x20]
	cmp r7, #0
	bge _080B431A
	rsbs r0, r7, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080B431C
_080B431A:
	asrs r0, r7, #0x10
_080B431C:
	muls r0, r1, r0
	adds r7, r0, #0
	ldr r1, [r5, #0x20]
	cmp r4, #0
	bge _080B432E
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080B4330
_080B432E:
	asrs r0, r4, #0x10
_080B4330:
	muls r0, r1, r0
	adds r4, r0, #0
	b _080B433E
_080B4336:
	adds r0, r6, #0
	bl EntityDelete
	b _080B4366
_080B433E:
	ldr r0, [r5, #0x40]
	adds r0, r0, r7
	str r0, [r6, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r4
	str r0, [r6, #0x44]
	ldr r1, _080B436C @ =0x085287C4
	movs r0, #0x12
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #0x24
	adds r0, r6, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
_080B4366:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B436C: .4byte 0x085287C4

