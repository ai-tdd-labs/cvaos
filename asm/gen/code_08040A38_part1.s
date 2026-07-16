	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start Object04Update
Object04Update: @ 0x0804E8C4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _0804E914 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804E918 @ =0x00013110
	adds r0, r0, r1
	ldr r4, [r0]
	movs r1, #0x20
	rsbs r1, r1, #0
	movs r3, #0x98
	lsls r3, r3, #1
	movs r0, #0xd0
	str r0, [sp]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08068AD4
	movs r3, #0
	cmp r0, #0
	bne _0804E8F0
	movs r3, #1
_0804E8F0:
	adds r2, r6, #0
	adds r2, #0x58
	lsls r3, r3, #5
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldrb r0, [r6, #0xa]
	cmp r0, #0x15
	bls _0804E90A
	b _0804EC24
_0804E90A:
	lsls r0, r0, #2
	ldr r1, _0804E91C @ =_0804E920
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804E914: .4byte gEwramData
_0804E918: .4byte 0x00013110
_0804E91C: .4byte _0804E920
_0804E920: @ jump table
	.4byte _0804E978 @ case 0
	.4byte _0804EC24 @ case 1
	.4byte _0804EAE8 @ case 2
	.4byte _0804EC24 @ case 3
	.4byte _0804EC24 @ case 4
	.4byte _0804EC24 @ case 5
	.4byte _0804EC24 @ case 6
	.4byte _0804EC24 @ case 7
	.4byte _0804EC24 @ case 8
	.4byte _0804EC24 @ case 9
	.4byte _0804EAFA @ case 10
	.4byte _0804EBA8 @ case 11
	.4byte _0804EC24 @ case 12
	.4byte _0804EC24 @ case 13
	.4byte _0804EC24 @ case 14
	.4byte _0804EC24 @ case 15
	.4byte _0804EC24 @ case 16
	.4byte _0804EC24 @ case 17
	.4byte _0804EC24 @ case 18
	.4byte _0804EC24 @ case 19
	.4byte _0804EBE8 @ case 20
	.4byte _0804EA90 @ case 21
_0804E978:
	adds r0, r6, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	adds r0, #0x42
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r0, r2, r0
	adds r0, #0x28
	cmp r0, #0x4f
	bhi _0804EA0C
	ldr r0, _0804EA00 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804EA04 @ =0x0000A094
	adds r0, r0, r1
	movs r3, #6
	ldrsh r5, [r0, r3]
	adds r5, r2, r5
	adds r1, r6, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r4, [r1, r2]
	movs r3, #0xa
	ldrsh r0, [r0, r3]
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
	ldr r0, [r6, #0x14]
	cmp r0, #0
	bne _0804E9EE
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xc0
	str r0, [sp]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0804E9EE
	ldr r0, _0804EA08 @ =0x00000113
	bl PlaySong
_0804E9EE:
	ldr r0, [r6, #0x14]
	adds r0, #2
	str r0, [r6, #0x14]
	cmp r0, #0x2f
	bgt _0804E9FA
	b _0804EC24
_0804E9FA:
	movs r0, #0x30
	str r0, [r6, #0x14]
	b _0804EC24
	.align 2, 0
_0804EA00: .4byte gEwramData
_0804EA04: .4byte 0x0000A094
_0804EA08: .4byte 0x00000113
_0804EA0C:
	ldr r3, [r6, #0x14]
	cmp r3, #2
	bgt _0804EA60
	ldr r0, _0804EA58 @ =gEwramData
	ldr r1, [r0]
	ldr r4, _0804EA5C @ =0x0000A094
	adds r1, r1, r4
	movs r4, #6
	ldrsh r0, [r1, r4]
	adds r5, r2, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r4, #0
	ldrsh r2, [r0, r4]
	movs r4, #0xa
	ldrsh r0, [r1, r4]
	adds r4, r2, r0
	cmp r3, #0
	beq _0804EA50
	adds r1, r4, #0
	subs r1, #8
	adds r0, r5, #0
	bl sub_08002200
	adds r1, r4, #0
	subs r1, #0x18
	adds r0, r5, #0
	bl sub_08002200
	adds r1, r4, #0
	subs r1, #0x28
	adds r0, r5, #0
	bl sub_08002200
_0804EA50:
	movs r0, #0
	str r0, [r6, #0x14]
	b _0804EC24
	.align 2, 0
_0804EA58: .4byte gEwramData
_0804EA5C: .4byte 0x0000A094
_0804EA60:
	cmp r3, #0x30
	bne _0804EA82
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xc0
	str r0, [sp]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0804EA82
	ldr r0, _0804EA8C @ =0x00000113
	bl PlaySong
_0804EA82:
	ldr r0, [r6, #0x14]
	subs r0, #2
	str r0, [r6, #0x14]
	b _0804EC24
	.align 2, 0
_0804EA8C: .4byte 0x00000113
_0804EA90:
	ldr r0, [r6, #0x14]
	adds r0, #1
	str r0, [r6, #0x14]
	cmp r0, #0x2f
	bgt _0804EA9C
	b _0804EC24
_0804EA9C:
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r5, [r0, r1]
	ldr r0, _0804EAE0 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0804EAE4 @ =0x0000A094
	adds r1, r1, r2
	movs r3, #6
	ldrsh r0, [r1, r3]
	adds r5, r5, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
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
	b _0804EC1E
	.align 2, 0
_0804EAE0: .4byte gEwramData
_0804EAE4: .4byte 0x0000A094
_0804EAE8:
	ldrb r0, [r6, #0x1a]
	movs r1, #0x20
	cmp r0, #0
	beq _0804EAF2
	movs r1, #0x10
_0804EAF2:
	movs r0, #1
	bl SetPlayerInput
	b _0804EC24
_0804EAFA:
	ldrb r0, [r6, #0x1a]
	movs r1, #0x10
	cmp r0, #0
	beq _0804EB04
	movs r1, #0x20
_0804EB04:
	movs r0, #1
	bl SetPlayerInput
	ldrb r0, [r6, #0x1a]
	cmp r0, #0
	bne _0804EB38
	ldr r2, _0804EB30 @ =gEwramData
	ldr r0, [r2]
	ldr r4, _0804EB34 @ =0x00013110
	adds r0, r0, r4
	ldr r0, [r0]
	adds r0, #0x42
	movs r1, #0
	ldrsh r3, [r0, r1]
	adds r1, r6, #0
	adds r1, #0x42
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, #0x18
	cmp r3, r0
	ble _0804EB58
	b _0804EB5E
	.align 2, 0
_0804EB30: .4byte gEwramData
_0804EB34: .4byte 0x00013110
_0804EB38:
	ldr r2, _0804EB9C @ =gEwramData
	ldr r0, [r2]
	ldr r1, _0804EBA0 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r1, r6, #0
	adds r1, #0x42
	movs r4, #0
	ldrsh r0, [r1, r4]
	subs r0, #0x18
	movs r4, #0
	cmp r3, r0
	blt _0804EB5A
_0804EB58:
	movs r4, #1
_0804EB5A:
	cmp r4, #0
	bne _0804EC24
_0804EB5E:
	movs r0, #0
	ldrsh r5, [r1, r0]
	ldr r1, [r2]
	ldr r2, _0804EBA4 @ =0x0000A094
	adds r1, r1, r2
	movs r3, #6
	ldrsh r0, [r1, r3]
	adds r5, r5, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
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
	b _0804EC18
	.align 2, 0
_0804EB9C: .4byte gEwramData
_0804EBA0: .4byte 0x00013110
_0804EBA4: .4byte 0x0000A094
_0804EBA8:
	movs r0, #1
	movs r1, #0
	bl SetPlayerInput
	ldr r0, [r6, #0x14]
	subs r0, #1
	str r0, [r6, #0x14]
	cmp r0, #0
	bne _0804EC24
	ldr r0, _0804EBD8 @ =gEwramData
	ldr r1, [r0]
	ldr r4, _0804EBDC @ =0x0000042C
	adds r1, r1, r4
	ldr r0, [r1]
	ldr r2, _0804EBE0 @ =0xFFFFFEFE
	ands r0, r2
	str r0, [r1]
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #1
	ble _0804EBE4
	movs r0, #0x63
	b _0804EC22
	.align 2, 0
_0804EBD8: .4byte gEwramData
_0804EBDC: .4byte 0x0000042C
_0804EBE0: .4byte 0xFFFFFEFE
_0804EBE4:
	movs r0, #0x14
	b _0804EC22
_0804EBE8:
	ldr r0, _0804EC2C @ =gEwramData
	ldr r2, [r0]
	ldr r3, _0804EC30 @ =0x0000037E
	adds r0, r2, r3
	ldrh r0, [r0]
	movs r4, #0x32
	ldrsh r1, [r6, r4]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804EC24
	ldr r1, _0804EC34 @ =0x0000042C
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0804EC18
	movs r0, #0x82
	lsls r0, r0, #5
	bl sub_08013F6C
_0804EC18:
	ldr r0, _0804EC38 @ =0x00000113
	bl PlaySong
_0804EC1E:
	ldrb r0, [r6, #0xa]
	adds r0, #1
_0804EC22:
	strb r0, [r6, #0xa]
_0804EC24:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804EC2C: .4byte gEwramData
_0804EC30: .4byte 0x0000037E
_0804EC34: .4byte 0x0000042C
_0804EC38: .4byte 0x00000113

	thumb_func_start Object06Create
Object06Create: @ 0x0804EC3C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	bl sub_0804DF3C
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x28
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0804ECBC @ =gDisplayRegisters
	adds r2, r1, #0
	adds r2, #0x42
	movs r0, #0x3f
	strb r0, [r2]
	adds r1, #0x43
	movs r0, #0x2f
	strb r0, [r1]
	ldr r4, _0804ECC0 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _0804ECC4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #0x1c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, #0x46
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #0x22
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0x38
	bl sub_08068AD4
	cmp r0, #0
	bne _0804ECA8
	ldr r2, [r4]
	ldr r1, _0804ECC8 @ =0x0000037E
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	beq _0804ECCC
_0804ECA8:
	movs r0, #0x30
	str r0, [r6, #0x14]
	movs r0, #0xa
	strb r0, [r6, #0xa]
	movs r0, #1
	movs r1, #0
	bl SetPlayerInput
	b _0804ED28
	.align 2, 0
_0804ECBC: .4byte gDisplayRegisters
_0804ECC0: .4byte gEwramData
_0804ECC4: .4byte 0x00013110
_0804ECC8: .4byte 0x0000037E
_0804ECCC:
	adds r0, r6, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r5, [r0, r3]
	ldr r0, _0804ED1C @ =0x0000A094
	adds r1, r2, r0
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
	str r7, [r6, #0x14]
	movs r3, #0x30
	ldrsh r0, [r6, r3]
	cmp r0, #1
	beq _0804ED20
	cmp r0, #3
	beq _0804ED24
	strb r7, [r6, #0xa]
	b _0804ED28
	.align 2, 0
_0804ED1C: .4byte 0x0000A094
_0804ED20:
	movs r0, #0x14
	b _0804ED26
_0804ED24:
	movs r0, #0x63
_0804ED26:
	strb r0, [r6, #0xa]
_0804ED28:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Object06Update
Object06Update: @ 0x0804ED30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	movs r1, #0x20
	rsbs r1, r1, #0
	movs r3, #0x98
	lsls r3, r3, #1
	movs r0, #0xd0
	str r0, [sp]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08068AD4
	movs r2, #0
	cmp r0, #0
	bne _0804ED5A
	movs r2, #1
_0804ED5A:
	adds r0, r7, #0
	adds r0, #0x58
	lsls r2, r2, #5
	ldrb r1, [r0]
	movs r3, #0x21
	rsbs r3, r3, #0
	ands r3, r1
	orrs r3, r2
	strb r3, [r0]
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	bne _0804ED74
	b _0804EF14
_0804ED74:
	cmp r0, #1
	bgt _0804ED7E
	cmp r0, #0
	beq _0804ED8C
	b _0804EFFA
_0804ED7E:
	cmp r0, #2
	bne _0804ED84
	b _0804EF38
_0804ED84:
	cmp r0, #3
	bne _0804ED8A
	b _0804EFE8
_0804ED8A:
	b _0804EFFA
_0804ED8C:
	ldr r1, _0804EEF0 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0804EEF4 @ =0x0000037E
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r3, #1
	mov sl, r3
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _0804EDA4
	b _0804EF32
_0804EDA4:
	bl sub_0803D408
	cmp r0, #0
	bne _0804EDB4
	bl sub_0803D270
	bl sub_0803CED4
_0804EDB4:
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	mov r4, sl
	ands r0, r4
	cmp r0, #0
	beq _0804EDEA
	movs r0, #0x80
	lsls r0, r0, #0xc
	bl sub_0802D5EC
	ldr r4, [r7, #0x40]
	adds r4, r4, r0
	bl RandomNumberGenerator
	movs r1, #0x30
	bl __umodsi3
	subs r0, #0x30
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x10
	movs r3, #5
	bl sub_08045CEC
_0804EDEA:
	movs r0, #0x80
	lsls r0, r0, #0xb
	mov sb, r0
	bl sub_0802D5EC
	ldr r1, [r7, #0x40]
	mov r8, r1
	add r8, r0
	add r8, sb
	bl RandomNumberGenerator
	movs r1, #0x30
	bl __umodsi3
	subs r0, #0x30
	lsls r0, r0, #0x10
	ldr r6, [r7, #0x44]
	adds r6, r6, r0
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r5, #0
	bl sub_0802D5EC
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #5
	adds r4, r4, r2
	adds r0, r5, #0
	bl sub_0802D5EC
	adds r3, r0, #0
	movs r0, #7
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_08045B44
	cmp r0, #0
	beq _0804EE46
	adds r1, r0, #0
	adds r1, #0x5c
	movs r0, #0xe
	strb r0, [r1]
_0804EE46:
	ldr r3, _0804EEF0 @ =gEwramData
	ldr r0, [r3]
	ldr r4, _0804EEF8 @ =0x00013110
	mov r8, r4
	add r0, r8
	ldr r2, [r0]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804EE5E
	b _0804EFFA
_0804EE5E:
	adds r0, r2, #0
	adds r0, #0x42
	ldrh r1, [r0]
	subs r1, #0x1c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, #4
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #0x22
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0x38
	bl sub_08068AD4
	cmp r0, #0
	bne _0804EE82
	b _0804EFFA
_0804EE82:
	ldr r0, _0804EEFC @ =0x00000111
	bl PlaySong
	movs r6, #0x80
	lsls r6, r6, #7
	movs r5, #0x80
	lsls r5, r5, #9
	str r5, [sp]
	movs r4, #0x10
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #1
	movs r2, #1
	adds r3, r6, #0
	bl sub_0803D18C
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #1
	movs r2, #1
	adds r3, r6, #0
	bl sub_0803CDF0
	ldr r4, _0804EEF0 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0804EF00 @ =0x000131D6
	adds r0, r1, r2
	mov r3, sl
	strh r3, [r0]
	ldr r4, _0804EF04 @ =0x000131D4
	adds r2, r1, r4
	movs r0, #3
	strh r0, [r2]
	ldr r0, _0804EF08 @ =0x000131D8
	adds r3, r1, r0
	mov r4, r8
	adds r2, r1, r4
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	movs r4, #0x80
	lsls r4, r4, #0xc
	adds r0, r0, r4
	str r0, [r3]
	ldr r0, _0804EF0C @ =0x000131DC
	adds r1, r1, r0
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	str r0, [r1]
	ldr r1, _0804EF10 @ =0xFFFF0000
	mov r0, sb
	bl sub_08021248
	b _0804EFFA
	.align 2, 0
_0804EEF0: .4byte gEwramData
_0804EEF4: .4byte 0x0000037E
_0804EEF8: .4byte 0x00013110
_0804EEFC: .4byte 0x00000111
_0804EF00: .4byte 0x000131D6
_0804EF04: .4byte 0x000131D4
_0804EF08: .4byte 0x000131D8
_0804EF0C: .4byte 0x000131DC
_0804EF10: .4byte 0xFFFF0000
_0804EF14:
	movs r0, #0x40
	ands r3, r0
	movs r1, #0x10
	cmp r3, #0
	beq _0804EF20
	movs r1, #0x20
_0804EF20:
	movs r0, #1
	bl SetPlayerInput
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _0804EF32
	subs r0, #1
	strb r0, [r7, #0xd]
	b _0804EFFA
_0804EF32:
	movs r0, #2
	strb r0, [r7, #0xa]
	b _0804EFFA
_0804EF38:
	ldr r0, _0804EFD4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804EFD8 @ =0x000004CC
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0804EF5C
	ands r3, r2
	movs r1, #0x10
	cmp r3, #0
	beq _0804EF56
	movs r1, #0x20
_0804EF56:
	movs r0, #1
	bl SetPlayerInput
_0804EF5C:
	ldr r0, [r7, #0x14]
	cmp r0, #0
	bne _0804EFA4
	adds r0, r7, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r5, [r0, r2]
	ldr r0, _0804EFD4 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _0804EFDC @ =0x0000A094
	adds r1, r1, r3
	movs r4, #6
	ldrsh r0, [r1, r4]
	adds r5, r5, r0
	adds r0, r7, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
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
_0804EFA4:
	ldr r0, [r7, #0x14]
	adds r0, #1
	str r0, [r7, #0x14]
	cmp r0, #0x2f
	ble _0804EFFA
	ldr r0, _0804EFD4 @ =gEwramData
	ldr r2, [r0]
	ldr r4, _0804EFE0 @ =0x0000042C
	adds r3, r2, r4
	ldr r0, [r3]
	ldr r1, _0804EFE4 @ =0xFFFFFEFE
	ands r0, r1
	str r0, [r3]
	ldr r0, _0804EFD8 @ =0x000004CC
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804EFFA
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	b _0804EFFA
	.align 2, 0
_0804EFD4: .4byte gEwramData
_0804EFD8: .4byte 0x000004CC
_0804EFDC: .4byte 0x0000A094
_0804EFE0: .4byte 0x0000042C
_0804EFE4: .4byte 0xFFFFFEFE
_0804EFE8:
	movs r0, #0x40
	ands r3, r0
	movs r1, #0x10
	cmp r3, #0
	beq _0804EFF4
	movs r1, #0x20
_0804EFF4:
	movs r0, #1
	bl SetPlayerInput
_0804EFFA:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Object05Create
Object05Create: @ 0x0804F00C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_0804DF3C
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x7d
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	subs r0, #0xf6
	ands r0, r1
	movs r1, #0x38
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0804F078 @ =gDisplayRegisters
	adds r2, r1, #0
	adds r2, #0x42
	movs r0, #0x3f
	strb r0, [r2]
	adds r1, #0x43
	movs r0, #0x2f
	strb r0, [r1]
	ldr r0, _0804F07C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804F080 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, #0x1c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, #0x46
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #0x22
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x38
	bl sub_08068AD4
	cmp r0, #0
	beq _0804F06E
	movs r0, #0x30
	str r0, [r4, #0x14]
_0804F06E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804F078: .4byte gDisplayRegisters
_0804F07C: .4byte gEwramData
_0804F080: .4byte 0x00013110

	thumb_func_start Object05Update
Object05Update: @ 0x0804F084
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0804F114 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804F118 @ =0x00013110
	adds r0, r0, r1
	ldr r5, [r0]
	movs r1, #0x20
	rsbs r1, r1, #0
	movs r3, #0x98
	lsls r3, r3, #1
	movs r0, #0xd0
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08068AD4
	movs r3, #0
	cmp r0, #0
	bne _0804F0B0
	movs r3, #1
_0804F0B0:
	adds r2, r4, #0
	adds r2, #0x58
	lsls r3, r3, #5
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0804F158
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r5, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	adds r0, #0x28
	cmp r0, #0x4f
	bhi _0804F120
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0804F104
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xc0
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0804F104
	ldr r0, _0804F11C @ =0x00000113
	bl PlaySong
_0804F104:
	ldr r0, [r4, #0x14]
	adds r0, #2
	str r0, [r4, #0x14]
	cmp r0, #0x2f
	ble _0804F158
	movs r0, #0x30
	b _0804F156
	.align 2, 0
_0804F114: .4byte gEwramData
_0804F118: .4byte 0x00013110
_0804F11C: .4byte 0x00000113
_0804F120:
	ldr r0, [r4, #0x14]
	cmp r0, #0x30
	bne _0804F144
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xc0
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0804F144
	ldr r0, _0804F150 @ =0x00000113
	bl PlaySong
_0804F144:
	ldr r0, [r4, #0x14]
	cmp r0, #2
	bgt _0804F154
	movs r0, #0
	b _0804F156
	.align 2, 0
_0804F150: .4byte 0x00000113
_0804F154:
	subs r0, #2
_0804F156:
	str r0, [r4, #0x14]
_0804F158:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0804F160
sub_0804F160: @ 0x0804F160
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0804F170
	cmp r0, #1
	beq _0804F224
	b _0804F36E
_0804F170:
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0804F1AC
	ldr r0, _0804F1A0 @ =0x081CBE5C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0804F1CC
	ldr r0, _0804F1A4 @ =0x08209EE8
	bl sub_080681D8
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r3, #0
	blt _0804F1CC
	ldr r1, _0804F1A8 @ =0x0820FE44
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	b _0804F1EE
	.align 2, 0
_0804F1A0: .4byte 0x081CBE5C
_0804F1A4: .4byte 0x08209EE8
_0804F1A8: .4byte 0x0820FE44
_0804F1AC:
	cmp r0, #2
	bne _0804F1EE
	ldr r0, _0804F1DC @ =0x081CBEB4
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0804F1CC
	ldr r0, _0804F1E0 @ =0x0820A100
	bl sub_080681D8
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r3, #0
	bge _0804F1E4
_0804F1CC:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0804F36E
	.align 2, 0
_0804F1DC: .4byte 0x081CBEB4
_0804F1E0: .4byte 0x0820A100
_0804F1E4:
	ldr r1, _0804F21C @ =0x08210DB0
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
_0804F1EE:
	ldrb r1, [r4, #0x1c]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x6e
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _0804F220 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0804F36E
	.align 2, 0
_0804F21C: .4byte 0x08210DB0
_0804F220: .4byte sub_0803B9D0
_0804F224:
	ldr r0, _0804F260 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0804F264 @ =0x000004BE
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0804F2BA
	ldr r2, [r4, #0x14]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r2, r3
	str r1, [r4, #0x14]
	ldrb r0, [r4, #0x1c]
	cmp r0, #3
	beq _0804F26C
	ldr r0, [r4, #0x50]
	str r0, [r4, #0x48]
	adds r0, r1, #0
	bl sub_080009E4
	ldr r1, [r4, #0x54]
	muls r1, r0, r1
	cmp r1, #0
	bge _0804F25A
	ldr r0, _0804F268 @ =0x0000FFFF
	adds r1, r1, r0
_0804F25A:
	asrs r2, r1, #0x10
	b _0804F2A4
	.align 2, 0
_0804F260: .4byte gEwramData
_0804F264: .4byte 0x000004BE
_0804F268: .4byte 0x0000FFFF
_0804F26C:
	ldr r0, [r4, #0x18]
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r3, #0x90
	lsls r3, r3, #7
	adds r0, r2, r3
	bl sub_080009E4
	ldr r1, [r4, #0x50]
	muls r0, r1, r0
	cmp r0, #0
	bge _0804F28C
	ldr r1, _0804F318 @ =0x00000FFF
	adds r0, r0, r1
_0804F28C:
	asrs r0, r0, #0xc
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x18]
	bl sub_080009E4
	ldr r1, [r4, #0x54]
	muls r1, r0, r1
	cmp r1, #0
	bge _0804F2A2
	ldr r3, _0804F318 @ =0x00000FFF
	adds r1, r1, r3
_0804F2A2:
	asrs r2, r1, #0xc
_0804F2A4:
	str r2, [r4, #0x4c]
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	adds r0, r0, r2
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0803F17C
_0804F2BA:
	ldr r1, _0804F31C @ =0x0852559C
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #2
	adds r3, r0, r1
	ldr r0, _0804F320 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804F324 @ =0x0000A094
	adds r2, r0, r1
	ldr r1, [r3]
	ldr r0, [r2, #0xc]
	muls r1, r0, r1
	cmp r1, #0
	bge _0804F2D6
	adds r1, #0xff
_0804F2D6:
	asrs r1, r1, #8
	ldr r0, [r4, #0x40]
	subs r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, [r3]
	ldr r0, [r2, #0x10]
	muls r0, r1, r0
	cmp r0, #0
	bge _0804F2EA
	adds r0, #0xff
_0804F2EA:
	asrs r1, r0, #8
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x44]
	adds r5, r4, #0
	adds r5, #0x42
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r6, #0x88
	lsls r6, r6, #1
	cmp r0, r6
	ble _0804F32C
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r0, r1
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	ldr r0, _0804F328 @ =0x0000FFE0
	b _0804F36C
	.align 2, 0
_0804F318: .4byte 0x00000FFF
_0804F31C: .4byte 0x0852559C
_0804F320: .4byte gEwramData
_0804F324: .4byte 0x0000A094
_0804F328: .4byte 0x0000FFE0
_0804F32C:
	movs r2, #0x20
	rsbs r2, r2, #0
	cmp r0, r2
	bge _0804F348
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r0, r1
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	strh r6, [r5]
	b _0804F36E
_0804F348:
	adds r1, r4, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0xc0
	ble _0804F35C
	ldr r0, _0804F358 @ =0x0000FFF0
	b _0804F362
	.align 2, 0
_0804F358: .4byte 0x0000FFF0
_0804F35C:
	cmp r0, r2
	bge _0804F36E
	movs r0, #0xb0
_0804F362:
	strh r0, [r1]
	bl RandomNumberGenerator
	movs r1, #0xbf
	ands r0, r1
_0804F36C:
	strh r0, [r5]
_0804F36E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0804F374
sub_0804F374: @ 0x0804F374
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	movs r1, #0
	mov r8, r1
	ldr r1, _0804F3C4 @ =0x085255AC
	movs r3, #0x32
	ldrsh r2, [r7, r3]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldr r1, [r2]
	cmp r8, r1
	blt _0804F394
	b _0804F4EA
_0804F394:
	movs r0, #0x3f
	mov sb, r0
_0804F398:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _0804F3C8 @ =sub_0804F160
	bl EntityCreateInRange
	adds r6, r0, #0
	cmp r6, #0
	bne _0804F3AA
	b _0804F4D4
_0804F3AA:
	ldrb r0, [r7, #0x10]
	movs r4, #0
	strb r0, [r6, #0x1d]
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r0, r1
	strb r0, [r6, #0x1c]
	cmp r0, #8
	bls _0804F3CC
	movs r0, #2
	b _0804F3EC
	.align 2, 0
_0804F3C4: .4byte 0x085255AC
_0804F3C8: .4byte sub_0804F160
_0804F3CC:
	cmp r0, #5
	bls _0804F3DC
	movs r0, #1
	strb r0, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x1a
	b _0804F3F4
_0804F3DC:
	cmp r0, #1
	bls _0804F3EA
	strb r4, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x19
	b _0804F3F4
_0804F3EA:
	movs r0, #3
_0804F3EC:
	strb r0, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0x1d
_0804F3F4:
	strb r0, [r1]
	ldrb r0, [r6, #0x1c]
	cmp r0, #3
	beq _0804F458
	bl RandomNumberGenerator
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #2
	ldr r2, _0804F44C @ =0x0000FFE0
	adds r0, r0, r2
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r0, r1
	adds r0, #1
	adds r1, r6, #0
	adds r1, #0x46
	strh r0, [r1]
	bl RandomNumberGenerator
	ldr r1, _0804F450 @ =0x00003FFF
	ands r1, r0
	movs r3, #0xc0
	lsls r3, r3, #8
	adds r1, r1, r3
	ldrb r0, [r6, #0x1c]
	lsrs r1, r0
	str r1, [r6, #0x50]
	bl RandomNumberGenerator
	ldr r1, _0804F454 @ =0x00001FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r1, r2
	ldrb r3, [r6, #0x1c]
	lsrs r1, r3
	str r1, [r6, #0x54]
	b _0804F4B2
	.align 2, 0
_0804F44C: .4byte 0x0000FFE0
_0804F450: .4byte 0x00003FFF
_0804F454: .4byte 0x00001FFF
_0804F458:
	bl RandomNumberGenerator
	mov r1, sb
	ands r0, r1
	adds r0, #0x8c
	ldr r1, _0804F4F8 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _0804F4FC @ =0x0000A094
	adds r1, r1, r2
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x12
	subs r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	bl RandomNumberGenerator
	mov r3, sb
	ands r0, r3
	adds r0, #0x21
	adds r1, r6, #0
	adds r1, #0x46
	strh r0, [r1]
	bl RandomNumberGenerator
	movs r5, #0x7f
	ands r0, r5
	lsls r0, r0, #4
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r0, r4
	str r0, [r6, #0x50]
	bl RandomNumberGenerator
	ands r0, r5
	lsls r0, r0, #4
	adds r0, r0, r4
	str r0, [r6, #0x54]
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	lsls r1, r1, #0xc
	str r1, [r6, #0x18]
_0804F4B2:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804F4C6
	ldr r0, [r6, #0x50]
	rsbs r0, r0, #0
	str r0, [r6, #0x50]
_0804F4C6:
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r2, #0x1f
	ands r1, r2
	lsls r1, r1, #0xc
	str r1, [r6, #0x14]
_0804F4D4:
	movs r1, #1
	add r8, r1
	ldr r1, _0804F500 @ =0x085255AC
	movs r3, #0x32
	ldrsh r2, [r7, r3]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldr r1, [r2]
	cmp r8, r1
	bge _0804F4EA
	b _0804F398
_0804F4EA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804F4F8: .4byte gEwramData
_0804F4FC: .4byte 0x0000A094
_0804F500: .4byte 0x085255AC

	thumb_func_start sub_0804F504
sub_0804F504: @ 0x0804F504
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _0804F514
	cmp r0, #1
	beq _0804F57C
	b _0804F5AE
_0804F514:
	ldr r0, _0804F540 @ =0x081CBE5C
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	cmp r4, #0
	blt _0804F530
	ldr r0, _0804F544 @ =0x08209EE8
	bl sub_080681D8
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r3, #0
	bge _0804F548
_0804F530:
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0804F5AE
	.align 2, 0
_0804F540: .4byte 0x081CBE5C
_0804F544: .4byte 0x08209EE8
_0804F548:
	ldr r1, _0804F5B4 @ =0x0820FE44
	adds r0, r7, #0
	adds r2, r4, #0
	bl sub_0803B924
	ldrb r0, [r7, #0x18]
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	subs r1, #9
	movs r0, #0x1e
	strb r0, [r1]
	ldr r0, _0804F5B8 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r2, r7, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0804F57C:
	ldr r0, [r7, #0x50]
	str r0, [r7, #0x48]
	ldr r5, [r7, #0x40]
	adds r5, r5, r0
	str r5, [r7, #0x40]
	ldr r6, [r7, #0x44]
	ldr r0, [r7, #0x4c]
	adds r6, r6, r0
	str r6, [r7, #0x44]
	ldr r0, _0804F5BC @ =gEwramData
	ldr r4, [r0]
	ldr r0, _0804F5C0 @ =0x0000A094
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	movs r1, #0xc
	bl __divsi3
	subs r5, r5, r0
	str r5, [r7, #0x40]
	ldr r0, [r4, #0x10]
	movs r1, #0xc
	bl __divsi3
	subs r6, r6, r0
	str r6, [r7, #0x44]
_0804F5AE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F5B4: .4byte 0x0820FE44
_0804F5B8: .4byte sub_0803B9D0
_0804F5BC: .4byte gEwramData
_0804F5C0: .4byte 0x0000A094

	thumb_func_start sub_0804F5C4
sub_0804F5C4: @ 0x0804F5C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	ldr r0, _0804F67C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0804F680 @ =0x0000A094
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	movs r7, #0
_0804F5DE:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _0804F684 @ =sub_0804F504
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0804F666
	ldr r1, _0804F688 @ =0x085255DC
	lsls r0, r7, #2
	adds r2, r0, r1
	ldrb r0, [r2, #2]
	strb r0, [r4, #0x18]
	ldrb r0, [r2]
	adds r0, #0x50
	mov ip, r0
	ldr r0, _0804F67C @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0804F680 @ =0x0000A094
	adds r5, r0, r3
	movs r6, #6
	ldrsh r1, [r5, r6]
	mov r3, r8
	ldrb r0, [r3]
	muls r1, r0, r1
	cmp r1, #0
	bge _0804F616
	adds r1, #0x3f
_0804F616:
	asrs r1, r1, #6
	ldr r6, _0804F68C @ =0x085255C4
	mov sl, r6
	mov r3, sb
	movs r6, #0x32
	ldrsh r0, [r3, r6]
	lsls r0, r0, #2
	add r0, sl
	mov r3, ip
	subs r1, r3, r1
	ldrh r0, [r0]
	adds r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x42
	strh r1, [r3]
	ldrb r3, [r2, #1]
	movs r6, #0xa
	ldrsh r1, [r5, r6]
	mov r2, r8
	ldrb r0, [r2, #1]
	muls r0, r1, r0
	cmp r0, #0
	bge _0804F646
	adds r0, #0x3f
_0804F646:
	asrs r2, r0, #6
	mov r5, sb
	movs r6, #0x32
	ldrsh r1, [r5, r6]
	lsls r1, r1, #2
	mov r0, sl
	adds r0, #2
	adds r1, r1, r0
	subs r2, r3, r2
	ldrh r1, [r1]
	adds r2, r2, r1
	adds r3, r4, #0
	adds r3, #0x46
	strh r2, [r3]
	movs r0, #0x80
	str r0, [r4, #0x50]
_0804F666:
	adds r7, #1
	cmp r7, #3
	ble _0804F5DE
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F67C: .4byte gEwramData
_0804F680: .4byte 0x0000A094
_0804F684: .4byte sub_0804F504
_0804F688: .4byte 0x085255DC
_0804F68C: .4byte 0x085255C4

	thumb_func_start sub_0804F690
sub_0804F690: @ 0x0804F690
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	lsls r0, r0, #3
	ldr r1, _0804F6E0 @ =0x08525D9C
	adds r5, r0, r1
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #3
	ldr r1, [r5, #4]
	adds r1, r1, r0
	ldrh r0, [r4, #0x12]
	adds r0, #1
	ldrh r1, [r1, #6]
	bl Mod
	adds r1, r0, #0
	strh r1, [r4, #0x12]
	lsls r1, r1, #0x10
	cmp r1, #0
	bne _0804F6DA
	ldrh r0, [r4, #0x10]
	adds r0, #1
	ldrh r1, [r5]
	bl Mod
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #3
	ldr r1, [r5, #4]
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r1, #4]
	ldrh r3, [r5, #2]
	movs r2, #1
	bl sub_0803C918
_0804F6DA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0804F6E0: .4byte 0x08525D9C

	thumb_func_start Object07Create
Object07Create: @ 0x0804F6E4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #4
	bhi _0804F768
	lsls r0, r0, #2
	ldr r1, _0804F6FC @ =_0804F700
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804F6FC: .4byte _0804F700
_0804F700: @ jump table
	.4byte _0804F714 @ case 0
	.4byte _0804F722 @ case 1
	.4byte _0804F728 @ case 2
	.4byte _0804F730 @ case 3
	.4byte _0804F75C @ case 4
_0804F714:
	adds r0, r4, #0
	bl sub_0804F374
	adds r0, r4, #0
	bl sub_0804F5C4
	b _0804F768
_0804F722:
	movs r0, #0
	str r0, [r4, #0x10]
	b _0804F768
_0804F728:
	adds r0, r4, #0
	bl sub_0804F374
	b _0804F768
_0804F730:
	ldr r0, _0804F750 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0804F754 @ =0x000004C4
	adds r1, r2, r0
	movs r0, #0
	str r0, [r1]
	ldr r1, _0804F758 @ =0x0000042C
	adds r2, r2, r1
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r2]
	bl sub_0803C674
	b _0804F768
	.align 2, 0
_0804F750: .4byte gEwramData
_0804F754: .4byte 0x000004C4
_0804F758: .4byte 0x0000042C
_0804F75C:
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0804F768
	bl sub_08013EEC
_0804F768:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Object07Update
Object07Update: @ 0x0804F770
	push {lr}
	movs r2, #0x30
	ldrsh r1, [r0, r2]
	cmp r1, #1
	beq _0804F78A
	cmp r1, #1
	bgt _0804F784
	cmp r1, #0
	beq _0804F790
	b _0804F79A
_0804F784:
	cmp r1, #2
	beq _0804F790
	b _0804F79A
_0804F78A:
	bl sub_0804F690
	b _0804F79A
_0804F790:
	ldr r0, _0804F7A0 @ =gDisplayRegisters
	adds r0, #0x48
	movs r1, #0xe4
	lsls r1, r1, #4
	strh r1, [r0]
_0804F79A:
	pop {r0}
	bx r0
	.align 2, 0
_0804F7A0: .4byte gDisplayRegisters

	thumb_func_start sub_0804F7A4
sub_0804F7A4: @ 0x0804F7A4
	push {r4, r5, r6, lr}
	ldr r5, _0804F7E8 @ =gEwramData
	ldr r0, [r5]
	ldr r6, _0804F7EC @ =0x00013110
	adds r0, r0, r6
	ldr r0, [r0]
	bl GetEntityRoomXPositionInteger
	ldr r2, [r5]
	adds r1, r2, #0
	adds r1, #0x8c
	ldrb r4, [r1]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x19
	asrs r0, r0, #8
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r2, r2, r6
	ldr r0, [r2]
	bl GetEntityRoomYPositionInteger
	ldr r1, [r5]
	adds r1, #0x8c
	ldrh r1, [r1]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x19
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0804F7F0 @ =0x08525FBC
	movs r3, #0
	b _0804F810
	.align 2, 0
_0804F7E8: .4byte gEwramData
_0804F7EC: .4byte 0x00013110
_0804F7F0: .4byte 0x08525FBC
_0804F7F4:
	ldrh r0, [r2]
	cmp r0, r4
	bne _0804F804
	ldrh r0, [r2, #2]
	cmp r0, r1
	bne _0804F804
	adds r0, r3, #0
	b _0804F81A
_0804F804:
	lsls r0, r3, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r3, r0, #0x18
	adds r2, #8
_0804F810:
	ldr r0, [r2, #4]
	cmp r0, #0
	bne _0804F7F4
	movs r0, #1
	rsbs r0, r0, #0
_0804F81A:
	lsls r1, r0, #0x18
	asrs r3, r1, #0x18
	cmp r3, #0
	blt _0804F840
	ldr r0, _0804F848 @ =gEwramData
	ldr r2, [r0]
	asrs r0, r1, #0x1d
	lsls r0, r0, #2
	movs r1, #0xde
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r3
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_0804F840:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804F848: .4byte gEwramData

	thumb_func_start sub_0804F84C
sub_0804F84C: @ 0x0804F84C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x15
	ldr r1, _0804F858 @ =0x08525FBC
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0804F858: .4byte 0x08525FBC

	thumb_func_start sub_0804F85C
sub_0804F85C: @ 0x0804F85C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0804F86C @ =0x08525FBC
	movs r3, #0
	b _0804F88E
	.align 2, 0
_0804F86C: .4byte 0x08525FBC
_0804F870:
	ldrh r0, [r2]
	cmp r0, r4
	bne _0804F882
	ldrh r0, [r2, #2]
	cmp r0, r1
	bne _0804F882
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	b _0804F898
_0804F882:
	lsls r0, r3, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r3, r0, #0x18
	adds r2, #8
_0804F88E:
	ldr r0, [r2, #4]
	cmp r0, #0
	bne _0804F870
	movs r0, #1
	rsbs r0, r0, #0
_0804F898:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804F8A0
sub_0804F8A0: @ 0x0804F8A0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0804F8C0 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0804F8C4 @ =0x00013110
	adds r0, r2, r1
	ldr r5, [r0]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0804F908
	cmp r0, #1
	bgt _0804F8C8
	cmp r0, #0
	beq _0804F8CE
	b _0804F988
	.align 2, 0
_0804F8C0: .4byte gEwramData
_0804F8C4: .4byte 0x00013110
_0804F8C8:
	cmp r0, #2
	beq _0804F970
	b _0804F988
_0804F8CE:
	bl RandomNumberGenerator
	ldr r1, _0804F8FC @ =0x00001FFF
	ands r1, r0
	lsls r1, r1, #4
	ldr r3, _0804F900 @ =0xFFFF8000
	adds r2, r1, r3
	str r2, [r4, #0x48]
	ldr r1, [r4, #0x40]
	ldr r0, [r5, #0x40]
	cmp r1, r0
	bge _0804F8EA
	rsbs r0, r2, #0
	str r0, [r4, #0x48]
_0804F8EA:
	bl RandomNumberGenerator
	ldr r1, _0804F904 @ =0x00003FFF
	ands r1, r0
	rsbs r1, r1, #0
	lsls r1, r1, #4
	str r1, [r4, #0x4c]
	b _0804F94C
	.align 2, 0
_0804F8FC: .4byte 0x00001FFF
_0804F900: .4byte 0xFFFF8000
_0804F904: .4byte 0x00003FFF
_0804F908:
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r3, _0804F954 @ =0x0000A094
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
	adds r1, #4
	bl sub_080020A0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804F958
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
	str r0, [r4, #0x4c]
_0804F94C:
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0804F988
	.align 2, 0
_0804F954: .4byte 0x0000A094
_0804F958:
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
	b _0804F986
_0804F970:
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
_0804F986:
	str r1, [r4, #0x4c]
_0804F988:
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
	bne _0804F9AC
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0804F9AC:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0804F9B4
sub_0804F9B4: @ 0x0804F9B4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0804F9C6
	cmp r0, #1
	beq _0804FA46
	b _0804FA50
_0804F9C6:
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	ldr r0, _0804FA00 @ =0x08526064
	adds r3, r3, r0
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0804FA04 @ =0x08526004
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldrb r3, [r3, #2]
	ldr r0, [r0, #8]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804FA08
	adds r0, r4, #0
	bl EntityDelete
	b _0804FA74
	.align 2, 0
_0804FA00: .4byte 0x08526064
_0804FA04: .4byte 0x08526004
_0804FA08:
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	bl RandomNumberGenerator
	ldr r1, _0804FA7C @ =0x00001FFF
	ands r1, r0
	lsls r1, r1, #4
	movs r0, #0x80
	lsls r0, r0, #0xa
	adds r1, r1, r0
	str r1, [r4, #0x48]
	bl RandomNumberGenerator
	ldr r1, _0804FA80 @ =0x00003FFF
	ands r1, r0
	lsls r1, r1, #4
	ldr r0, _0804FA84 @ =0xFFFF0000
	subs r0, r0, r1
	str r0, [r4, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_0804FA46:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
_0804FA50:
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
	bne _0804FA74
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0804FA74:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804FA7C: .4byte 0x00001FFF
_0804FA80: .4byte 0x00003FFF
_0804FA84: .4byte 0xFFFF0000

	thumb_func_start sub_0804FA88
sub_0804FA88: @ 0x0804FA88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	str r1, [sp]
	ldr r0, _0804FAB0 @ =0x081C15F4
	bl sub_0803AFB8
	mov sl, r0
	movs r7, #0x10
	rsbs r7, r7, #0
_0804FAA4:
	movs r6, #3
	movs r0, #0x10
	adds r0, r0, r7
	mov sb, r0
	b _0804FB44
	.align 2, 0
_0804FAB0: .4byte 0x081C15F4
_0804FAB4:
	movs r1, #6
	lsls r3, r1, #0x18
	adds r0, r5, #0
	ldr r1, _0804FB6C @ =0x0820ED60
	mov r2, sl
	asrs r3, r3, #0x18
	bl sub_0803B924
	bl RandomNumberGenerator
	lsrs r0, r0, #4
	movs r1, #3
	bl Mod
	adds r0, #0x40
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x42
	ldrh r0, [r0]
	subs r1, #0x23
	strh r0, [r1]
	mov r0, r8
	adds r0, #0x46
	ldrh r0, [r0]
	ldr r3, [sp]
	adds r0, r0, r3
	adds r0, r0, r7
	adds r1, #4
	strh r0, [r1]
	bl RandomNumberGenerator
	lsrs r0, r0, #7
	movs r1, #1
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0x58
	lsls r0, r0, #6
	ldrb r1, [r4]
	movs r3, #0x41
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	bl RandomNumberGenerator
	lsrs r0, r0, #7
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #7
	ldrb r2, [r4]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x15
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0804FB70 @ =sub_0803B9D0
	str r0, [r5, #4]
	subs r6, #1
	cmp r6, #0
	ble _0804FB54
_0804FB44:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _0804FB74 @ =sub_0804F8A0
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	bne _0804FAB4
_0804FB54:
	mov r7, sb
	cmp r7, #0x10
	ble _0804FAA4
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804FB6C: .4byte 0x0820ED60
_0804FB70: .4byte sub_0803B9D0
_0804FB74: .4byte sub_0804F8A0

	thumb_func_start sub_0804FB78
sub_0804FB78: @ 0x0804FB78
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _0804FB88
	cmp r0, #1
	beq _0804FB9A
	b _0804FC98
_0804FB88:
	ldr r0, _0804FC00 @ =0x081C15F4
	bl sub_0803AFB8
	str r0, [r6, #0x18]
	movs r0, #0x20
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_0804FB9A:
	ldrb r1, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0804FC7A
	ldr r2, _0804FC04 @ =sub_080503E0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r7, r0, #0
	cmp r7, #0
	beq _0804FC7A
	ldr r1, _0804FC08 @ =0x0820ED60
	ldr r2, [r6, #0x18]
	movs r3, #6
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r7, #0
	bl sub_0803F17C
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldrb r0, [r6, #0x14]
	cmp r0, #1
	blt _0804FC38
	cmp r0, #2
	bgt _0804FC0C
	movs r0, #0x20
	bl sub_0802D5EC
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r1, [r1]
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x42
	strh r1, [r0]
	movs r0, #0x40
	b _0804FC26
	.align 2, 0
_0804FC00: .4byte 0x081C15F4
_0804FC04: .4byte sub_080503E0
_0804FC08: .4byte 0x0820ED60
_0804FC0C:
	cmp r0, #4
	bgt _0804FC38
	movs r0, #0x40
	bl sub_0802D5EC
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r1, [r1]
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x42
	strh r1, [r0]
	movs r0, #0x20
_0804FC26:
	bl sub_0802D5EC
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x46
	strh r1, [r0]
_0804FC38:
	bl RandomNumberGenerator
	lsrs r0, r0, #7
	movs r5, #1
	ands r0, r5
	adds r4, r7, #0
	adds r4, #0x58
	lsls r0, r0, #6
	ldrb r2, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	bl RandomNumberGenerator
	lsrs r0, r0, #7
	ands r0, r5
	lsls r0, r0, #7
	ldrb r2, [r4]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0804FC88 @ =sub_0803B9D0
	str r0, [r7, #4]
	strb r5, [r7, #0xf]
_0804FC7A:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _0804FC8C
	subs r0, #1
	strb r0, [r6, #0xd]
	b _0804FC98
	.align 2, 0
_0804FC88: .4byte sub_0803B9D0
_0804FC8C:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0804FC98:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0804FCA0
sub_0804FCA0: @ 0x0804FCA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r1, #0x30
	ldrsh r0, [r7, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0804FCD8 @ =0x08526064
	adds r6, r1, r0
	movs r3, #4
	ldrsb r3, [r6, r3]
	mov sb, r3
	movs r0, #5
	ldrsb r0, [r6, r0]
	mov sl, r0
	ldrb r0, [r7, #0x14]
	cmp r0, #4
	bls _0804FCCE
	b _0804FE0A
_0804FCCE:
	lsls r0, r0, #2
	ldr r1, _0804FCDC @ =_0804FCE0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804FCD8: .4byte 0x08526064
_0804FCDC: .4byte _0804FCE0
_0804FCE0: @ jump table
	.4byte _0804FDA4 @ case 0
	.4byte _0804FCFA @ case 1
	.4byte _0804FCF4 @ case 2
	.4byte _0804FD50 @ case 3
	.4byte _0804FD50 @ case 4
_0804FCF4:
	movs r1, #0x10
	rsbs r1, r1, #0
	add sb, r1
_0804FCFA:
	ldrb r0, [r6, #7]
	rsbs r1, r0, #0
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r5, r1, #1
	lsrs r0, r0, #1
	cmp r5, r0
	blt _0804FD0C
	b _0804FE0A
_0804FD0C:
	adds r0, r7, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, _0804FD48 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _0804FD4C @ =0x0000A094
	adds r2, r2, r1
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	add r0, sb
	adds r1, r7, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	add r1, sl
	subs r1, r1, r5
	bl sub_08002200
	adds r5, #0x10
	ldrb r0, [r6, #7]
	lsrs r0, r0, #1
	cmp r5, r0
	blt _0804FD0C
	b _0804FE0A
	.align 2, 0
_0804FD48: .4byte gEwramData
_0804FD4C: .4byte 0x0000A094
_0804FD50:
	ldrb r0, [r6, #6]
	rsbs r1, r0, #0
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r5, r1, #1
	lsrs r0, r0, #1
	cmp r5, r0
	bge _0804FE0A
_0804FD60:
	adds r0, r7, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0804FD9C @ =gEwramData
	ldr r2, [r1]
	ldr r3, _0804FDA0 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	add r0, sb
	subs r0, r0, r5
	adds r1, r7, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	add r1, sl
	bl sub_08002200
	adds r5, #0x10
	ldrb r0, [r6, #6]
	lsrs r0, r0, #1
	cmp r5, r0
	blt _0804FD60
	b _0804FE0A
	.align 2, 0
_0804FD9C: .4byte gEwramData
_0804FDA0: .4byte 0x0000A094
_0804FDA4:
	ldrb r0, [r6, #6]
	rsbs r1, r0, #0
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r5, r1, #1
	b _0804FE04
_0804FDB0:
	ldrb r0, [r6, #7]
	rsbs r1, r0, #0
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r4, r1, #1
	lsrs r0, r0, #1
	movs r1, #0x10
	adds r1, r1, r5
	mov r8, r1
	cmp r4, r0
	bge _0804FE00
_0804FDC6:
	adds r0, r7, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, _0804FE18 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _0804FE1C @ =0x0000A094
	adds r2, r2, r1
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	add r0, sb
	adds r0, r0, r5
	adds r1, r7, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	add r1, sl
	adds r1, r1, r4
	bl sub_08002200
	adds r4, #0x10
	ldrb r0, [r6, #7]
	lsrs r0, r0, #1
	cmp r4, r0
	blt _0804FDC6
_0804FE00:
	mov r5, r8
	ldrb r0, [r6, #6]
_0804FE04:
	lsrs r0, r0, #1
	cmp r5, r0
	blt _0804FDB0
_0804FE0A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804FE18: .4byte gEwramData
_0804FE1C: .4byte 0x0000A094

	thumb_func_start sub_0804FE20
sub_0804FE20: @ 0x0804FE20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r1, #0x30
	ldrsh r0, [r7, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0804FE58 @ =0x08526064
	adds r6, r1, r0
	movs r3, #4
	ldrsb r3, [r6, r3]
	mov sb, r3
	movs r0, #5
	ldrsb r0, [r6, r0]
	mov sl, r0
	ldrb r0, [r7, #0x14]
	cmp r0, #4
	bls _0804FE4E
	b _0804FF8A
_0804FE4E:
	lsls r0, r0, #2
	ldr r1, _0804FE5C @ =_0804FE60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804FE58: .4byte 0x08526064
_0804FE5C: .4byte _0804FE60
_0804FE60: @ jump table
	.4byte _0804FF24 @ case 0
	.4byte _0804FE7A @ case 1
	.4byte _0804FE74 @ case 2
	.4byte _0804FED0 @ case 3
	.4byte _0804FED0 @ case 4
_0804FE74:
	movs r1, #0x10
	rsbs r1, r1, #0
	add sb, r1
_0804FE7A:
	ldrb r0, [r6, #7]
	rsbs r1, r0, #0
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r5, r1, #1
	lsrs r0, r0, #1
	cmp r5, r0
	blt _0804FE8C
	b _0804FF8A
_0804FE8C:
	adds r0, r7, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, _0804FEC8 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _0804FECC @ =0x0000A094
	adds r2, r2, r1
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	add r0, sb
	adds r1, r7, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	add r1, sl
	subs r1, r1, r5
	bl sub_08002248
	adds r5, #0x10
	ldrb r0, [r6, #7]
	lsrs r0, r0, #1
	cmp r5, r0
	blt _0804FE8C
	b _0804FF8A
	.align 2, 0
_0804FEC8: .4byte gEwramData
_0804FECC: .4byte 0x0000A094
_0804FED0:
	ldrb r0, [r6, #6]
	rsbs r1, r0, #0
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r5, r1, #1
	lsrs r0, r0, #1
	cmp r5, r0
	bge _0804FF8A
_0804FEE0:
	adds r0, r7, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0804FF1C @ =gEwramData
	ldr r2, [r1]
	ldr r3, _0804FF20 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	add r0, sb
	subs r0, r0, r5
	adds r1, r7, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	add r1, sl
	bl sub_08002248
	adds r5, #0x10
	ldrb r0, [r6, #6]
	lsrs r0, r0, #1
	cmp r5, r0
	blt _0804FEE0
	b _0804FF8A
	.align 2, 0
_0804FF1C: .4byte gEwramData
_0804FF20: .4byte 0x0000A094
_0804FF24:
	ldrb r0, [r6, #6]
	rsbs r1, r0, #0
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r5, r1, #1
	b _0804FF84
_0804FF30:
	ldrb r0, [r6, #7]
	rsbs r1, r0, #0
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r4, r1, #1
	lsrs r0, r0, #1
	movs r1, #0x10
	adds r1, r1, r5
	mov r8, r1
	cmp r4, r0
	bge _0804FF80
_0804FF46:
	adds r0, r7, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, _0804FF98 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _0804FF9C @ =0x0000A094
	adds r2, r2, r1
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	add r0, sb
	adds r0, r0, r5
	adds r1, r7, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	add r1, sl
	adds r1, r1, r4
	bl sub_08002248
	adds r4, #0x10
	ldrb r0, [r6, #7]
	lsrs r0, r0, #1
	cmp r4, r0
	blt _0804FF46
_0804FF80:
	mov r5, r8
	ldrb r0, [r6, #6]
_0804FF84:
	lsrs r0, r0, #1
	cmp r5, r0
	blt _0804FF30
_0804FF8A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804FF98: .4byte gEwramData
_0804FF9C: .4byte 0x0000A094

	thumb_func_start Object08Create
Object08Create: @ 0x0804FFA0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldrh r3, [r7, #0x32]
	lsls r1, r3, #0x10
	cmp r1, #0
	beq _0804FFCE
	ldr r0, _0805001C @ =gEwramData
	ldr r2, [r0]
	asrs r0, r1, #0x15
	lsls r0, r0, #2
	movs r1, #0xd1
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #0x1f
	ands r0, r3
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08050014
_0804FFCE:
	movs r0, #0x30
	ldrsh r1, [r7, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08050020 @ =0x08526064
	adds r6, r0, r1
	ldrh r0, [r6]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _08050024 @ =0x08526004
	adds r4, r4, r0
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r6, #8]
	adds r0, r7, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r1, [r4]
	ldr r2, [r4, #4]
	ldrb r3, [r6, #2]
	ldr r0, [r4, #8]
	str r0, [sp]
	adds r0, r7, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08050028
_08050014:
	adds r0, r7, #0
	bl EntityDelete
	b _08050084
	.align 2, 0
_0805001C: .4byte gEwramData
_08050020: .4byte 0x08526064
_08050024: .4byte 0x08526004
_08050028:
	ldrb r0, [r6, #3]
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrb r3, [r6, #6]
	rsbs r4, r3, #0
	lsrs r0, r4, #0x1f
	adds r4, r4, r0
	asrs r4, r4, #1
	movs r5, #0xff
	ands r4, r5
	ldrb r2, [r6, #7]
	rsbs r0, r2, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ands r0, r5
	lsls r0, r0, #8
	adds r4, r4, r0
	lsls r3, r3, #0x10
	adds r4, r4, r3
	lsls r2, r2, #0x18
	adds r4, r4, r2
	ldrb r0, [r6, #9]
	strb r0, [r7, #0x14]
	adds r0, r7, #0
	bl sub_0804FCA0
	adds r0, r7, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080428F0
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #3
	strh r0, [r7, #0x34]
_08050084:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Object08Update
Object08Update: @ 0x0805008C
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0805009C
	b _080501C2
_0805009C:
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl sub_08021E38
	cmp r0, #0
	beq _080500D4
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080500D4
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	movs r2, #0xc
	movs r3, #6
	bl sub_08045CEC
	adds r1, r0, #0
	cmp r1, #0
	beq _080500D4
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, #0x5c
	strb r0, [r1]
_080500D4:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _080501C2
	mov r0, sp
	adds r1, r5, #0
	bl sub_080421AC
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0x1a
	ands r0, r1
	cmp r0, #0
	beq _080501C2
	ldr r0, _0805014C @ =0x081C15F4
	bl sub_0803AFB8
	ldr r2, _08050150 @ =sub_0804FB78
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r2, r0, #0
	cmp r2, #0
	beq _08050134
	ldrb r0, [r5, #0x14]
	strb r0, [r2, #0x14]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r2, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r1, #0x1a
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, #4
	strh r0, [r1]
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_08050134:
	movs r3, #0x34
	ldrsh r0, [r5, r3]
	cmp r0, #0
	beq _08050154
	movs r0, #0xd3
	bl PlaySong
	ldrh r0, [r5, #0x34]
	subs r0, #1
	strh r0, [r5, #0x34]
	b _080501C2
	.align 2, 0
_0805014C: .4byte 0x081C15F4
_08050150: .4byte sub_0804FB78
_08050154:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0804FA88
	movs r0, #0xab
	bl PlaySong
	adds r0, r5, #0
	bl sub_0804FE20
	ldr r0, _080501CC @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r5, #0x32]
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
	adds r0, r5, #0
	bl GetEntityRoomXPositionInteger
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl GetEntityRoomYPositionInteger
	adds r1, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r2, [r5, #0x14]
	adds r0, r4, #0
	bl sub_08012154
	cmp r0, #0
	blt _080501B6
	bl sub_08012048
_080501B6:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080501C2:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080501CC: .4byte gEwramData

	thumb_func_start Object09Create
Object09Create: @ 0x080501D0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08050248 @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r5, #0x32]
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
	bne _08050240
	movs r0, #0x30
	ldrsh r1, [r5, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805024C @ =0x08526064
	adds r6, r0, r1
	ldrh r0, [r6]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _08050250 @ =0x08526004
	adds r4, r4, r0
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r6, #8]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r1, [r4]
	ldr r2, [r4, #4]
	ldrb r3, [r6, #2]
	ldr r0, [r4, #8]
	str r0, [sp]
	adds r0, r5, #0
	bl sub_0806E0D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08050254
_08050240:
	adds r0, r5, #0
	bl EntityDelete
	b _08050266
	.align 2, 0
_08050248: .4byte gEwramData
_0805024C: .4byte 0x08526064
_08050250: .4byte 0x08526004
_08050254:
	ldrb r0, [r6, #3]
	adds r1, r5, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrb r0, [r6, #9]
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_0804FCA0
_08050266:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Object09Update
Object09Update: @ 0x08050270
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl sub_08021E38
	cmp r0, #0
	beq _080502B4
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080502B4
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	movs r2, #0xc
	movs r3, #6
	bl sub_08045CEC
	adds r1, r0, #0
	cmp r1, #0
	beq _080502B4
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, #0x5c
	strb r0, [r1]
_080502B4:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080502BC
	b _080503CC
_080502BC:
	ldr r0, _08050304 @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r5, #0x32]
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
	beq _080503CC
	movs r0, #0x30
	ldrsh r1, [r5, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08050308 @ =0x08526064
	adds r0, r0, r1
	ldrb r0, [r0, #9]
	cmp r0, #0
	beq _0805030C
	adds r0, r5, #0
	movs r1, #0
	bl sub_0804FA88
	movs r1, #0x59
	adds r1, r1, r5
	mov sb, r1
	b _08050388
	.align 2, 0
_08050304: .4byte gEwramData
_08050308: .4byte 0x08526064
_0805030C:
	movs r7, #1
	rsbs r7, r7, #0
	movs r3, #0x59
	adds r3, r3, r5
	mov sb, r3
_08050316:
	movs r6, #3
	rsbs r6, r6, #0
	adds r0, r7, #1
	mov r8, r0
	b _08050364
_08050320:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #4
	bl sub_0802D5EC
	adds r1, r5, #0
	adds r1, #0x42
	lsls r2, r7, #3
	ldrh r1, [r1]
	subs r1, r1, r2
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	movs r0, #4
	bl sub_0802D5EC
	adds r1, r5, #0
	adds r1, #0x46
	lsls r2, r6, #3
	adds r2, #0x20
	ldrh r1, [r1]
	subs r1, r1, r2
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
	ldrh r0, [r5, #0x30]
	strh r0, [r4, #0x30]
	adds r6, #1
_08050364:
	cmp r6, #3
	bgt _08050378
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _080503DC @ =sub_0804F9B4
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	bne _08050320
_08050378:
	mov r7, r8
	cmp r7, #1
	ble _08050316
	movs r1, #0x20
	rsbs r1, r1, #0
	adds r0, r5, #0
	bl sub_0804FA88
_08050388:
	movs r0, #0xab
	bl PlaySong
	adds r0, r5, #0
	bl sub_0804FE20
	adds r0, r5, #0
	bl GetEntityRoomXPositionInteger
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl GetEntityRoomYPositionInteger
	adds r1, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r2, [r5, #0x14]
	adds r0, r4, #0
	bl sub_08012154
	cmp r0, #0
	blt _080503C0
	bl sub_08012048
_080503C0:
	mov r1, sb
	ldrb r0, [r1]
	movs r1, #8
	orrs r0, r1
	mov r3, sb
	strb r0, [r3]
_080503CC:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080503DC: .4byte sub_0804F9B4

	thumb_func_start sub_080503E0
sub_080503E0: @ 0x080503E0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080503F2
	cmp r0, #1
	beq _08050410
	b _08050418
_080503F2:
	bl RandomNumberGenerator
	movs r1, #0xff
	ands r1, r0
	lsls r1, r1, #4
	ldr r0, _0805040C @ =0xFFFF4000
	subs r0, r0, r1
	str r0, [r4, #0x4c]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _08050418
	.align 2, 0
_0805040C: .4byte 0xFFFF4000
_08050410:
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_08050418:
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
	bne _0805043C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0805043C:
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _08050452
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08050452:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Object0ACreate
Object0ACreate: @ 0x0805045C
	push {lr}
	adds r3, r0, #0
	ldr r0, _08050480 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08050484 @ =0x0000037E
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r2, #0x32
	ldrsh r1, [r3, r2]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08050488
	adds r0, r3, #0
	bl EntityDelete
	b _080504B2
	.align 2, 0
_08050480: .4byte gEwramData
_08050484: .4byte 0x0000037E
_08050488:
	ldrh r0, [r3, #0x30]
	adds r1, r3, #0
	adds r1, #0x36
	movs r2, #0
	strb r0, [r1]
	ldrb r1, [r1]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080504B8 @ =0x080E9644
	adds r0, r0, r1
	ldrh r1, [r0, #0xc]
	strh r1, [r3, #0x34]
	strh r2, [r3, #0x30]
	strh r2, [r3, #0x32]
	ldr r1, [r0, #4]
	str r1, [r3]
	ldr r1, [r0]
	adds r0, r3, #0
	bl _call_via_r1
_080504B2:
	pop {r0}
	bx r0
	.align 2, 0
_080504B8: .4byte 0x080E9644

	thumb_func_start Object0AUpdate
Object0AUpdate: @ 0x080504BC
	bx lr
	.align 2, 0

	thumb_func_start Object0BCreate
Object0BCreate: @ 0x080504C0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	bl sub_08012078
	cmp r0, #0
	bne _080504D8
	adds r0, r4, #0
	bl EntityDelete
	b _08050502
_080504D8:
	ldrh r0, [r4, #0x30]
	adds r1, r4, #0
	adds r1, #0x36
	movs r2, #0
	strb r0, [r1]
	ldrb r1, [r1]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08050508 @ =0x080E9644
	adds r0, r0, r1
	ldrh r1, [r0, #0xc]
	strh r1, [r4, #0x34]
	strh r2, [r4, #0x30]
	strh r2, [r4, #0x32]
	ldr r1, [r0, #4]
	str r1, [r4]
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_08050502:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050508: .4byte 0x080E9644

	thumb_func_start Object0BUpdate
Object0BUpdate: @ 0x0805050C
	bx lr
	.align 2, 0

	thumb_func_start sub_08050510
sub_08050510: @ 0x08050510
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r5, #0xc0
	lsls r5, r5, #0xa
	ldr r0, _08050560 @ =gEwramData
	ldr r3, [r0]
	ldr r1, _08050564 @ =0x00013260
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08050540
	ldr r2, _08050568 @ =0x00013110
	adds r0, r3, r2
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080505C2
_08050540:
	ldr r0, _08050568 @ =0x00013110
	adds r4, r3, r0
	ldr r2, [r4]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r1, [r4]
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	beq _0805056C
	movs r0, #1
	strb r0, [r1, #0x1e]
	b _080505C2
	.align 2, 0
_08050560: .4byte gEwramData
_08050564: .4byte 0x00013260
_08050568: .4byte 0x00013110
_0805056C:
	ldr r2, _080505AC @ =0x000131D6
	adds r1, r3, r2
	movs r0, #1
	strh r0, [r1]
	ldr r0, _080505B0 @ =0x000131D4
	adds r1, r3, r0
	movs r0, #3
	strh r0, [r1]
	adds r2, #2
	adds r1, r3, r2
	ldr r0, [r4]
	ldr r0, [r0, #0x40]
	movs r2, #0x80
	lsls r2, r2, #0xc
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _080505B4 @ =0x000131DC
	adds r1, r3, r0
	ldr r0, [r4]
	ldr r0, [r0, #0x44]
	str r0, [r1]
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _080505B8
	rsbs r4, r5, #0
	adds r0, r4, #0
	adds r1, r4, #0
	bl sub_08021248
	str r4, [r6, #0x48]
	b _080505C2
	.align 2, 0
_080505AC: .4byte 0x000131D6
_080505B0: .4byte 0x000131D4
_080505B4: .4byte 0x000131DC
_080505B8:
	ldr r1, _080505C8 @ =0xFFFD0000
	adds r0, r5, #0
	bl sub_08021248
	str r5, [r6, #0x48]
_080505C2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080505C8: .4byte 0xFFFD0000

	thumb_func_start Object0CUpdate
Object0CUpdate: @ 0x080505CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r1, _08050684 @ =0x085261FC
	movs r2, #0x30
	ldrsh r0, [r7, r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r6, [r0]
	ldr r5, _08050688 @ =gEwramData
	ldr r0, [r5]
	ldr r4, _0805068C @ =0x00013110
	adds r0, r0, r4
	ldr r0, [r0]
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0
	str r0, [r7, #0x48]
	ldrh r0, [r6]
	cmp r0, #3
	beq _08050660
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	lsls r5, r1, #0x10
_08050614:
	movs r1, #8
	ldrsh r0, [r6, r1]
	cmp r4, r0
	blt _08050658
	movs r2, #8
	ldrsh r0, [r6, r2]
	ldrh r1, [r6, #0xc]
	adds r0, r0, r1
	cmp r4, r0
	bgt _08050658
	asrs r2, r5, #0x10
	movs r1, #0xa
	ldrsh r0, [r6, r1]
	cmp r2, r0
	blt _08050658
	movs r1, #0xa
	ldrsh r0, [r6, r1]
	ldrh r1, [r6, #0xe]
	adds r0, r0, r1
	movs r1, #1
	cmp r2, r0
	ble _08050642
	movs r1, #0
_08050642:
	cmp r1, #0
	beq _08050658
	ldr r0, _08050690 @ =0x08526208
	ldrh r1, [r6]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r7, #0
	adds r1, r6, #0
	bl _call_via_r2
_08050658:
	adds r6, #0x10
	ldrh r0, [r6]
	cmp r0, #3
	bne _08050614
_08050660:
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08050678
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
	bl sub_080220B4
_08050678:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050684: .4byte 0x085261FC
_08050688: .4byte gEwramData
_0805068C: .4byte 0x00013110
_08050690: .4byte 0x08526208

	thumb_func_start sub_08050694
sub_08050694: @ 0x08050694
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _080506B8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080506BC @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080506B4
	ldr r0, [r2, #4]
	str r0, [r3, #0x48]
_080506B4:
	pop {r0}
	bx r0
	.align 2, 0
_080506B8: .4byte gEwramData
_080506BC: .4byte 0x00013110

	thumb_func_start sub_080506C0
sub_080506C0: @ 0x080506C0
	push {lr}
	ldr r0, _080506E4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080506E8 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080506E0
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r1, r0
	str r1, [r2, #0x10]
_080506E0:
	pop {r0}
	bx r0
	.align 2, 0
_080506E4: .4byte gEwramData
_080506E8: .4byte 0x00013110

	thumb_func_start sub_080506EC
sub_080506EC: @ 0x080506EC
	ldr r0, [r0, #0x48]
	bx lr

	thumb_func_start Object0CCreate
Object0CCreate: @ 0x080506F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805070C @ =0x08118520
	bl sub_08022088
	adds r4, #0x59
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805070C: .4byte 0x08118520

	thumb_func_start Object0DCreate
Object0DCreate: @ 0x08050710
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _08050740 @ =0x081CBE74
	ldr r2, _08050744 @ =0x08209F54
	ldr r0, _08050748 @ =0x0821017C
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_0806E0D0
	cmp r0, #0
	beq _08050738
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _0805074C
_08050738:
	adds r0, r4, #0
	bl EntityDelete
	b _080507B0
	.align 2, 0
_08050740: .4byte 0x081CBE74
_08050744: .4byte 0x08209F54
_08050748: .4byte 0x0821017C
_0805074C:
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
	adds r5, r4, #0
	adds r5, #0x59
	ldrb r0, [r5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x16
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080507B8 @ =0x122006F0
	adds r0, r4, #0
	bl sub_080428F0
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r3, #2
	orrs r0, r3
	movs r1, #0xfb
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r5]
	orrs r0, r3
	strb r0, [r5]
_080507B0:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080507B8: .4byte 0x122006F0

