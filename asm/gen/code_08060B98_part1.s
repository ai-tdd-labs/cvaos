	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_08069A00
sub_08069A00: @ 0x08069A00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	mov sl, r1
	mov sb, r2
	mov r8, r3
	ldr r0, [sp, #0x20]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _08069AF4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08069AF8 @ =0x0000A094
	adds r5, r0, r1
	movs r6, #0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _08069A2E
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08069AB8
_08069A2E:
	adds r0, r4, #0
	mov r1, r8
	bl sub_0806D430
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bge _08069A76
	movs r2, #6
	ldrsh r0, [r5, r2]
	adds r1, r4, #0
	adds r1, #0x42
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r0, r1
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	movs r2, #0xa
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	adds r2, #0x46
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	subs r1, #0xa
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069A76
	lsls r1, r0, #0x10
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	movs r6, #2
_08069A76:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	ble _08069AB8
	movs r1, #6
	ldrsh r0, [r5, r1]
	adds r1, r4, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, r0, r1
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r5, r3]
	adds r2, r4, #0
	adds r2, #0x46
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	subs r1, #0xa
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069AB8
	lsls r0, r0, #0x10
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	movs r0, #1
	orrs r6, r0
_08069AB8:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _08069AC4
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _08069B60
_08069AC4:
	adds r0, r4, #0
	mov r1, r8
	bl sub_0806D460
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bge _08069B1A
	movs r1, #6
	ldrsh r0, [r5, r1]
	adds r1, r4, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r2, r0, r1
	movs r3, #0xa
	ldrsh r1, [r5, r3]
	ldr r0, [r4, #0x44]
	add r0, sb
	cmp r0, #0
	bge _08069AFC
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r1, r1, r0
	b _08069B00
	.align 2, 0
_08069AF4: .4byte gEwramData
_08069AF8: .4byte 0x0000A094
_08069AFC:
	asrs r0, r0, #0x10
	adds r1, r1, r0
_08069B00:
	adds r0, r2, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069B1A
	lsls r0, r0, #0x10
	ldr r1, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x44]
	movs r0, #8
	orrs r6, r0
_08069B1A:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	ble _08069B60
	movs r1, #6
	ldrsh r0, [r5, r1]
	adds r1, r4, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r5, r3]
	adds r2, r4, #0
	adds r2, #0x46
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069B60
	lsls r1, r0, #0x10
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #0
	strh r0, [r1]
	mov r0, sl
	str r0, [r4, #0x4c]
	movs r0, #4
	orrs r6, r0
_08069B60:
	adds r0, r6, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08069B70
sub_08069B70: @ 0x08069B70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sl, r2
	mov sb, r3
	ldr r0, _08069BC8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08069BCC @ =0x0000A094
	adds r7, r0, r1
	movs r2, #0
	mov r8, r2
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D430
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _08069BD0
	movs r3, #6
	ldrsh r0, [r7, r3]
	adds r5, r6, #0
	adds r5, #0x42
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	adds r4, r6, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069C08
	movs r1, #2
	b _08069BFE
	.align 2, 0
_08069BC8: .4byte gEwramData
_08069BCC: .4byte 0x0000A094
_08069BD0:
	adds r5, r6, #0
	adds r5, #0x42
	adds r4, r6, #0
	adds r4, #0x46
	cmp r0, #0
	ble _08069C08
	movs r2, #6
	ldrsh r0, [r7, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069C08
	movs r1, #1
_08069BFE:
	mov r8, r1
	lsls r1, r0, #0x10
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x40]
_08069C08:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D460
	mov r2, sb
	cmp r2, #0
	beq _08069C58
	movs r3, #6
	ldrsh r0, [r7, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r2, r0, r1
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	ldr r0, [r6, #0x44]
	add r0, sl
	cmp r0, #0
	bge _08069C36
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r1, r1, r0
	b _08069C3A
_08069C36:
	asrs r0, r0, #0x10
	adds r1, r1, r0
_08069C3A:
	adds r0, r2, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08069C58
	movs r0, #8
	mov r2, r8
	orrs r2, r0
	mov r8, r2
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
_08069C58:
	movs r3, #6
	ldrsh r0, [r7, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08069C88
	movs r0, #4
	mov r2, r8
	orrs r2, r0
	mov r8, r2
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
_08069C88:
	ldrh r0, [r5]
	ldrh r3, [r7, #6]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r0, #0xa
	ldrsh r1, [r7, r0]
	ldr r0, [r6, #0x44]
	add r0, sl
	cmp r0, #0
	bge _08069CA6
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r0, r1, r0
	b _08069CAA
_08069CA6:
	asrs r0, r0, #0x10
	adds r0, r1, r0
_08069CAA:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl sub_0806D0B8
	cmp r0, #3
	bne _08069CC0
	movs r0, #0x80
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_08069CC0:
	ldrh r0, [r5]
	ldrh r2, [r7, #6]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4]
	ldrh r7, [r7, #0xa]
	adds r1, r1, r7
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #3
	bne _08069CE4
	movs r0, #0x40
	mov r3, r8
	orrs r3, r0
	mov r8, r3
_08069CE4:
	mov r0, r8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08069CF4
sub_08069CF4: @ 0x08069CF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	mov sl, r2
	str r3, [sp]
	ldr r0, _08069D40 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08069D44 @ =0x0000A094
	adds r7, r0, r1
	movs r2, #0
	mov sb, r2
	adds r0, r5, #0
	ldr r1, [sp, #0x24]
	bl sub_0806D430
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bgt _08069D94
	movs r3, #6
	ldrsh r2, [r7, r3]
	adds r1, r5, #0
	adds r1, #0x42
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r2, r2, r0
	mov r8, r1
	cmp r6, #0
	bge _08069D48
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	adds r2, r2, r0
	b _08069D4C
	.align 2, 0
_08069D40: .4byte gEwramData
_08069D44: .4byte 0x0000A094
_08069D48:
	asrs r0, r6, #0x10
	subs r2, r2, r0
_08069D4C:
	movs r0, #0xa
	ldrsh r1, [r7, r0]
	adds r4, r5, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r1, r1, r0
	adds r0, r2, #0
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08069D78
	movs r0, #2
	mov r2, sb
	orrs r2, r0
	mov sb, r2
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_08069D78:
	movs r3, #6
	ldrsh r1, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r1, r1, r0
	cmp r6, #0
	bge _08069D8E
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	b _08069DFA
_08069D8E:
	asrs r0, r6, #0x10
	subs r2, r1, r0
	b _08069DFC
_08069D94:
	movs r0, #6
	ldrsh r2, [r7, r0]
	adds r1, r5, #0
	adds r1, #0x42
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r2, r2, r0
	mov r8, r1
	cmp r6, #0
	bge _08069DB0
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	subs r2, r2, r0
	b _08069DB4
_08069DB0:
	asrs r0, r6, #0x10
	adds r2, r2, r0
_08069DB4:
	movs r0, #0xa
	ldrsh r1, [r7, r0]
	adds r4, r5, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r1, r1, r0
	adds r0, r2, #0
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08069DE0
	movs r0, #1
	mov r2, sb
	orrs r2, r0
	mov sb, r2
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
_08069DE0:
	movs r3, #6
	ldrsh r1, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r1, r1, r0
	cmp r6, #0
	bge _08069DF8
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	subs r2, r1, r0
	b _08069DFC
_08069DF8:
	asrs r0, r6, #0x10
_08069DFA:
	adds r2, r1, r0
_08069DFC:
	movs r0, #0xa
	ldrsh r1, [r7, r0]
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r1, r1, r0
	adds r0, r2, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069E1C
	lsls r1, r0, #0x10
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
_08069E1C:
	adds r0, r5, #0
	ldr r1, [sp, #0x24]
	bl sub_0806D460
	ldr r0, [sp]
	cmp r0, #0
	beq _08069E6C
	movs r1, #6
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r2, r0, r1
	movs r0, #0xa
	ldrsh r1, [r7, r0]
	ldr r0, [r5, #0x44]
	add r0, sl
	cmp r0, #0
	bge _08069E4A
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r1, r1, r0
	b _08069E4E
_08069E4A:
	asrs r0, r0, #0x10
	adds r1, r1, r0
_08069E4E:
	adds r0, r2, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08069E6C
	movs r0, #8
	mov r2, sb
	orrs r2, r0
	mov sb, r2
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
_08069E6C:
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	ble _08069EA4
	movs r3, #6
	ldrsh r0, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08069EA4
	movs r0, #4
	mov r2, sb
	orrs r2, r0
	mov sb, r2
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
_08069EA4:
	mov r3, r8
	ldrh r0, [r3]
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	ldr r0, [r5, #0x44]
	add r0, sl
	cmp r0, #0
	bge _08069EC4
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r0, r1, r0
	b _08069EC8
_08069EC4:
	asrs r0, r0, #0x10
	adds r0, r1, r0
_08069EC8:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl sub_0806D0B8
	cmp r0, #3
	bne _08069EDE
	movs r0, #0x80
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_08069EDE:
	mov r2, r8
	ldrh r0, [r2]
	ldrh r3, [r7, #6]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4]
	ldrh r7, [r7, #0xa]
	adds r1, r1, r7
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #3
	bne _08069F04
	movs r0, #0x40
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_08069F04:
	mov r0, sb
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08069F18
sub_08069F18: @ 0x08069F18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	str r1, [sp]
	mov sl, r2
	mov sb, r3
	ldr r0, _08069F74 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08069F78 @ =0x0000A094
	adds r7, r0, r1
	movs r2, #0
	mov r8, r2
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D430
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _08069F7C
	movs r3, #6
	ldrsh r0, [r7, r3]
	adds r5, r6, #0
	adds r5, #0x42
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	adds r4, r6, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069FB4
	movs r1, #2
	b _08069FAA
	.align 2, 0
_08069F74: .4byte gEwramData
_08069F78: .4byte 0x0000A094
_08069F7C:
	adds r5, r6, #0
	adds r5, #0x42
	adds r4, r6, #0
	adds r4, #0x46
	cmp r0, #0
	ble _08069FB4
	movs r2, #6
	ldrsh r0, [r7, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069FB4
	movs r1, #1
_08069FAA:
	mov r8, r1
	lsls r1, r0, #0x10
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x40]
_08069FB4:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r6, #0
	bl sub_0806D460
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	bgt _0806A010
	mov r2, sb
	cmp r2, #0
	beq _0806A00A
	movs r3, #6
	ldrsh r0, [r7, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r2, r0, r1
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	ldr r0, [r6, #0x44]
	add r0, sl
	cmp r0, #0
	bge _08069FE8
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r1, r1, r0
	b _08069FEC
_08069FE8:
	asrs r0, r0, #0x10
	adds r1, r1, r0
_08069FEC:
	adds r0, r2, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _0806A00A
	movs r0, #8
	mov r2, r8
	orrs r2, r0
	mov r8, r2
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
_0806A00A:
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	blt _0806A044
_0806A010:
	movs r3, #6
	ldrsh r0, [r7, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _0806A044
	movs r0, #4
	mov r2, r8
	orrs r2, r0
	mov r8, r2
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldr r3, [sp]
	str r3, [r6, #0x4c]
_0806A044:
	ldrh r0, [r5]
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	ldr r0, [r6, #0x44]
	add r0, sl
	cmp r0, #0
	bge _0806A062
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r0, r1, r0
	b _0806A066
_0806A062:
	asrs r0, r0, #0x10
	adds r0, r1, r0
_0806A066:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl sub_0806D0B8
	cmp r0, #3
	bne _0806A07C
	movs r0, #0x80
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_0806A07C:
	ldrh r0, [r5]
	ldrh r2, [r7, #6]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4]
	ldrh r7, [r7, #0xa]
	adds r1, r1, r7
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #3
	bne _0806A0A0
	movs r0, #0x40
	mov r3, r8
	orrs r3, r0
	mov r8, r3
_0806A0A0:
	mov r0, r8
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806A0B4
sub_0806A0B4: @ 0x0806A0B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	mov sl, r2
	mov sb, r3
	ldr r0, _0806A114 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806A118 @ =0x0000A094
	adds r6, r0, r1
	movs r2, #0
	mov r8, r2
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D430
	ldr r0, [r7, #0x48]
	cmp r0, #0
	bge _0806A11C
	movs r3, #6
	ldrsh r0, [r6, r3]
	adds r5, r7, #0
	adds r5, #0x42
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r6, r3]
	adds r4, r7, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r1, r1, #0x1f
	mov r8, r1
	movs r0, #2
	ands r1, r0
	mov r8, r1
	b _0806A14A
	.align 2, 0
_0806A114: .4byte gEwramData
_0806A118: .4byte 0x0000A094
_0806A11C:
	adds r5, r7, #0
	adds r5, #0x42
	adds r4, r7, #0
	adds r4, #0x46
	cmp r0, #0
	ble _0806A14A
	movs r2, #6
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	movs r2, #0xa
	ldrsh r1, [r6, r2]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08002058
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806A14A
	movs r0, #1
	mov r8, r0
_0806A14A:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D460
	mov r1, sb
	cmp r1, #0
	beq _0806A190
	movs r2, #6
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r2, r0, r1
	movs r0, #0xa
	ldrsh r1, [r6, r0]
	ldr r0, [r7, #0x44]
	add r0, sl
	cmp r0, #0
	bge _0806A178
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r1, r1, r0
	b _0806A17C
_0806A178:
	asrs r0, r0, #0x10
	adds r1, r1, r0
_0806A17C:
	adds r0, r2, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806A190
	movs r0, #8
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_0806A190:
	movs r2, #6
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	movs r2, #0xa
	ldrsh r1, [r6, r2]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806A1B6
	movs r0, #4
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_0806A1B6:
	ldrh r0, [r5]
	ldrh r2, [r6, #6]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r3, #0xa
	ldrsh r1, [r6, r3]
	ldr r0, [r7, #0x44]
	add r0, sl
	cmp r0, #0
	bge _0806A1D4
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r0, r1, r0
	b _0806A1D8
_0806A1D4:
	asrs r0, r0, #0x10
	adds r0, r1, r0
_0806A1D8:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl sub_0806D0B8
	cmp r0, #3
	bne _0806A1EE
	movs r0, #0x80
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_0806A1EE:
	ldrh r0, [r5]
	ldrh r2, [r6, #6]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4]
	ldrh r6, [r6, #0xa]
	adds r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #3
	bne _0806A212
	movs r0, #0x40
	mov r3, r8
	orrs r3, r0
	mov r8, r3
_0806A212:
	mov r0, r8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806A224
sub_0806A224: @ 0x0806A224
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	mov sb, r0
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x6c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x14]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x20]
	ldr r0, _0806A5FC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806A600 @ =0x0000A094
	adds r7, r0, r1
	movs r2, #0
	mov sl, r2
	mov r0, sb
	ldr r1, [sp, #0x70]
	bl sub_0806D430
	mov r3, sb
	ldr r0, [r3, #0x48]
	cmp r0, #0
	ble _0806A26E
	b _0806A378
_0806A26E:
	movs r4, #6
	ldrsh r0, [r7, r4]
	movs r1, #0x42
	add r1, sb
	mov r8, r1
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, r0, r1
	ldr r3, [sp, #0x14]
	lsls r6, r3, #0x10
	asrs r4, r6, #0x10
	str r4, [sp, #0x24]
	adds r0, r0, r4
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	mov r5, sb
	adds r5, #0x46
	movs r3, #0
	ldrsh r2, [r5, r3]
	adds r1, r1, r2
	ldr r2, [sp, #0x18]
	lsls r4, r2, #0x10
	asrs r3, r4, #0x10
	str r3, [sp, #0x28]
	adds r1, r1, r3
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x2c]
	str r6, [sp, #0x40]
	adds r6, r5, #0
	str r4, [sp, #0x44]
	cmp r0, #0
	beq _0806A2FA
	mov r4, r8
	ldrh r0, [r4]
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	ldr r2, [sp, #0x24]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	ldrh r3, [r7, #0xa]
	adds r1, r1, r3
	ldr r4, [sp, #0x28]
	adds r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r1, r1, #0x1f
	mov sl, r1
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	mov sl, r1
	ldr r2, [sp, #0x2c]
	lsls r1, r2, #0x10
	mov r3, sb
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	str r0, [r3, #0x40]
	movs r0, #2
	mov r4, sl
	orrs r4, r0
	mov sl, r4
_0806A2FA:
	movs r1, #6
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r4, [sp, #0x24]
	adds r0, r0, r4
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r2, [r6, r3]
	adds r1, r1, r2
	ldr r4, [sp, #0x28]
	adds r1, r1, r4
	ldr r2, [sp, #0x20]
	adds r1, r1, r2
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _0806A36E
	mov r3, r8
	ldrh r0, [r3]
	ldrh r4, [r7, #6]
	adds r0, r0, r4
	ldr r1, [sp, #0x24]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	ldrh r2, [r7, #0xa]
	adds r1, r1, r2
	ldr r3, [sp, #0x28]
	adds r1, r3, r1
	ldr r4, [sp, #0x20]
	adds r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0806A35C
	movs r0, #0x80
	lsls r0, r0, #2
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_0806A35C:
	lsls r0, r5, #0x10
	mov r2, sb
	ldr r1, [r2, #0x40]
	adds r1, r1, r0
	str r1, [r2, #0x40]
	movs r0, #2
	mov r3, sl
	orrs r3, r0
	mov sl, r3
_0806A36E:
	mov r4, sb
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bge _0806A378
	b _0806A48A
_0806A378:
	movs r1, #6
	ldrsh r0, [r7, r1]
	movs r2, #0x42
	add r2, sb
	mov r8, r2
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r4, [sp, #0x14]
	lsls r6, r4, #0x10
	asrs r1, r6, #0x10
	str r1, [sp, #0x30]
	adds r0, r0, r1
	ldr r2, [sp, #0x1c]
	adds r0, r0, r2
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	mov r5, sb
	adds r5, #0x46
	movs r4, #0
	ldrsh r2, [r5, r4]
	adds r1, r1, r2
	ldr r2, [sp, #0x18]
	lsls r4, r2, #0x10
	asrs r3, r4, #0x10
	str r3, [sp, #0x34]
	adds r1, r1, r3
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x38]
	str r6, [sp, #0x40]
	adds r6, r5, #0
	str r4, [sp, #0x44]
	cmp r0, #0
	beq _0806A40A
	mov r4, r8
	ldrh r0, [r4]
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	ldr r2, [sp, #0x30]
	adds r0, r2, r0
	ldr r3, [sp, #0x1c]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	ldrh r4, [r7, #0xa]
	adds r1, r1, r4
	ldr r2, [sp, #0x34]
	adds r1, r2, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0806A3F6
	movs r0, #0x80
	lsls r0, r0, #3
	mov r3, sl
	orrs r3, r0
	mov sl, r3
_0806A3F6:
	ldr r4, [sp, #0x38]
	lsls r0, r4, #0x10
	mov r2, sb
	ldr r1, [r2, #0x40]
	adds r1, r1, r0
	str r1, [r2, #0x40]
	movs r0, #1
	mov r3, sl
	orrs r3, r0
	mov sl, r3
_0806A40A:
	movs r4, #6
	ldrsh r0, [r7, r4]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r4, [sp, #0x40]
	asrs r5, r4, #0x10
	adds r0, r0, r5
	ldr r1, [sp, #0x1c]
	adds r0, r0, r1
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r2, [r6, r3]
	adds r1, r1, r2
	ldr r2, [sp, #0x44]
	asrs r4, r2, #0x10
	adds r1, r1, r4
	ldr r3, [sp, #0x20]
	adds r1, r1, r3
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x3c]
	cmp r0, #0
	beq _0806A48A
	mov r1, r8
	ldrh r0, [r1]
	ldrh r2, [r7, #6]
	adds r0, r0, r2
	adds r0, r5, r0
	ldr r3, [sp, #0x1c]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	ldrh r2, [r7, #0xa]
	adds r1, r1, r2
	adds r1, r4, r1
	ldr r3, [sp, #0x20]
	adds r1, r3, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0806A476
	movs r0, #0x80
	lsls r0, r0, #1
	mov r4, sl
	orrs r4, r0
	mov sl, r4
_0806A476:
	ldr r1, [sp, #0x3c]
	lsls r0, r1, #0x10
	mov r2, sb
	ldr r1, [r2, #0x40]
	adds r1, r1, r0
	str r1, [r2, #0x40]
	movs r0, #1
	mov r3, sl
	orrs r3, r0
	mov sl, r3
_0806A48A:
	mov r0, sb
	ldr r1, [sp, #0x70]
	bl sub_0806D460
	mov r4, sb
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bgt _0806A51E
	movs r1, #6
	ldrsh r0, [r7, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r4, [sp, #0x40]
	asrs r5, r4, #0x10
	adds r0, r0, r5
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r2, [r6, r3]
	adds r1, r1, r2
	ldr r2, [sp, #0x44]
	asrs r4, r2, #0x10
	adds r1, r1, r4
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0806A4DA
	lsls r0, r0, #0x10
	mov r3, sb
	ldr r1, [r3, #0x44]
	adds r1, r1, r0
	str r1, [r3, #0x44]
	movs r0, #8
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_0806A4DA:
	movs r2, #6
	ldrsh r0, [r7, r2]
	mov r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	adds r0, r0, r5
	ldr r3, [sp, #0x1c]
	adds r0, r0, r3
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r2, [r6, r3]
	adds r1, r1, r2
	adds r1, r1, r4
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0806A516
	lsls r0, r0, #0x10
	mov r4, sb
	ldr r1, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x44]
	movs r0, #8
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_0806A516:
	mov r2, sb
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	blt _0806A5BA
_0806A51E:
	movs r3, #6
	ldrsh r0, [r7, r3]
	mov r4, r8
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r0, r0, r1
	ldr r3, [sp, #0x40]
	asrs r1, r3, #0x10
	adds r0, r0, r1
	movs r4, #0xa
	ldrsh r1, [r7, r4]
	movs r3, #0
	ldrsh r2, [r6, r3]
	adds r1, r1, r2
	ldr r4, [sp, #0x44]
	asrs r2, r4, #0x10
	adds r1, r1, r2
	ldr r2, [sp, #0x20]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0806A56A
	lsls r1, r0, #0x10
	mov r3, sb
	ldr r0, [r3, #0x44]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	ldr r4, [sp, #0x10]
	cmp r4, #0
	beq _0806A562
	str r4, [r3, #0x4c]
_0806A562:
	movs r0, #4
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_0806A56A:
	movs r2, #6
	ldrsh r0, [r7, r2]
	mov r3, r8
	movs r4, #0
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	ldr r2, [sp, #0x40]
	asrs r1, r2, #0x10
	adds r0, r0, r1
	ldr r3, [sp, #0x1c]
	adds r0, r0, r3
	movs r4, #0xa
	ldrsh r1, [r7, r4]
	movs r3, #0
	ldrsh r2, [r6, r3]
	adds r1, r1, r2
	ldr r4, [sp, #0x44]
	asrs r2, r4, #0x10
	adds r1, r1, r2
	ldr r2, [sp, #0x20]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0806A5BA
	lsls r1, r0, #0x10
	mov r3, sb
	ldr r0, [r3, #0x44]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	ldr r4, [sp, #0x10]
	cmp r4, #0
	beq _0806A5B2
	str r4, [r3, #0x4c]
_0806A5B2:
	movs r0, #4
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_0806A5BA:
	mov r2, r8
	ldrh r0, [r2]
	ldrh r3, [r7, #6]
	adds r0, r0, r3
	ldr r4, [sp, #0x40]
	asrs r5, r4, #0x10
	adds r0, r5, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	ldrh r2, [r7, #0xa]
	adds r1, r1, r2
	ldr r3, [sp, #0x44]
	asrs r4, r3, #0x10
	adds r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	str r0, [sp]
	mov r1, r8
	ldrh r0, [r1]
	ldrh r2, [r7, #6]
	adds r0, r0, r2
	adds r0, r5, r0
	ldr r3, [sp, #0x1c]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	ldrh r2, [r7, #0xa]
	b _0806A604
	.align 2, 0
_0806A5FC: .4byte gEwramData
_0806A600: .4byte 0x0000A094
_0806A604:
	adds r1, r1, r2
	adds r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	str r0, [sp, #4]
	mov r3, r8
	ldrh r0, [r3]
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	adds r0, r5, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	ldrh r2, [r7, #0xa]
	adds r1, r1, r2
	adds r1, r4, r1
	ldr r3, [sp, #0x20]
	adds r1, r3, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	str r0, [sp, #8]
	mov r1, r8
	ldrh r0, [r1]
	ldrh r2, [r7, #6]
	adds r0, r0, r2
	adds r5, r5, r0
	ldr r3, [sp, #0x1c]
	adds r5, r3, r5
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldrh r0, [r6]
	ldrh r7, [r7, #0xa]
	adds r0, r0, r7
	adds r4, r4, r0
	ldr r0, [sp, #0x20]
	adds r4, r0, r4
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D0B8
	str r0, [sp, #0xc]
	ldr r0, [sp]
	cmp r0, #3
	bne _0806A676
	ldr r0, [sp, #4]
	cmp r0, #3
	bne _0806A676
	movs r0, #0x80
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_0806A676:
	ldr r1, [sp, #8]
	cmp r1, #3
	bne _0806A68A
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bne _0806A68A
	movs r0, #0x40
	mov r2, sl
	orrs r2, r0
	mov sl, r2
_0806A68A:
	ldr r0, [sp]
	cmp r0, #3
	bne _0806A69C
	cmp r1, #3
	bne _0806A69C
	movs r0, #0x20
	mov r3, sl
	orrs r3, r0
	mov sl, r3
_0806A69C:
	ldr r0, [sp, #4]
	cmp r0, #3
	bne _0806A6B0
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bne _0806A6B0
	movs r0, #0x10
	mov r4, sl
	orrs r4, r0
	mov sl, r4
_0806A6B0:
	mov r0, sl
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806A6C4
sub_0806A6C4: @ 0x0806A6C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov sl, r0
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x14]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x20]
	ldr r0, _0806AA88 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806AA8C @ =0x0000A094
	adds r1, r0, r1
	str r1, [sp, #0x24]
	movs r2, #0
	str r2, [sp, #0x28]
	mov r0, sl
	ldr r1, [sp, #0x58]
	bl sub_0806D430
	mov r3, sl
	ldr r0, [r3, #0x48]
	cmp r0, #0
	ble _0806A710
	b _0806A820
_0806A710:
	ldr r4, [sp, #0x24]
	movs r0, #6
	ldrsh r1, [r4, r0]
	movs r2, #0x42
	add r2, sl
	mov r8, r2
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r1, r1, r0
	ldr r4, [sp, #0x14]
	lsls r6, r4, #0x10
	asrs r0, r6, #0x10
	adds r1, r1, r0
	mov sb, r1
	ldr r0, [sp, #0x24]
	movs r2, #0xa
	ldrsh r1, [r0, r2]
	mov r5, sl
	adds r5, #0x46
	movs r3, #0
	ldrsh r0, [r5, r3]
	adds r1, r1, r0
	ldr r0, [sp, #0x18]
	lsls r4, r0, #0x10
	asrs r0, r4, #0x10
	adds r7, r1, r0
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #3
	ands r1, r0
	str r6, [sp, #0x2c]
	adds r6, r5, #0
	cmp r1, #1
	beq _0806A79A
	mov r0, sb
	adds r1, r7, #0
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _0806A79A
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	str r1, [sp, #0x28]
	lsls r1, r5, #0x10
	mov r2, sl
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	movs r0, #2
	ldr r3, [sp, #0x28]
	orrs r3, r0
	str r3, [sp, #0x28]
_0806A79A:
	ldr r1, [sp, #0x24]
	movs r2, #6
	ldrsh r0, [r1, r2]
	mov r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	ldr r3, [sp, #0x2c]
	asrs r1, r3, #0x10
	adds r0, r0, r1
	mov sb, r0
	ldr r1, [sp, #0x24]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	adds r0, r0, r1
	asrs r1, r4, #0x10
	adds r0, r0, r1
	ldr r1, [sp, #0x20]
	adds r7, r0, r1
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0806A816
	mov r0, sb
	adds r1, r7, #0
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _0806A816
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0806A804
	movs r0, #0x80
	lsls r0, r0, #2
	ldr r3, [sp, #0x28]
	orrs r3, r0
	str r3, [sp, #0x28]
_0806A804:
	lsls r0, r5, #0x10
	mov r2, sl
	ldr r1, [r2, #0x40]
	adds r1, r1, r0
	str r1, [r2, #0x40]
	movs r0, #2
	ldr r3, [sp, #0x28]
	orrs r3, r0
	str r3, [sp, #0x28]
_0806A816:
	mov r1, sl
	ldr r0, [r1, #0x48]
	cmp r0, #0
	bge _0806A820
	b _0806A92E
_0806A820:
	ldr r2, [sp, #0x24]
	movs r3, #6
	ldrsh r1, [r2, r3]
	movs r4, #0x42
	add r4, sl
	mov r8, r4
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r1, r1, r0
	ldr r3, [sp, #0x14]
	lsls r6, r3, #0x10
	asrs r0, r6, #0x10
	adds r1, r1, r0
	ldr r4, [sp, #0x1c]
	adds r1, r1, r4
	mov sb, r1
	ldr r0, [sp, #0x24]
	movs r2, #0xa
	ldrsh r1, [r0, r2]
	mov r5, sl
	adds r5, #0x46
	movs r3, #0
	ldrsh r0, [r5, r3]
	adds r1, r1, r0
	ldr r0, [sp, #0x18]
	lsls r4, r0, #0x10
	asrs r0, r4, #0x10
	adds r7, r1, r0
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #3
	ands r1, r0
	str r6, [sp, #0x2c]
	adds r6, r5, #0
	cmp r1, #1
	beq _0806A8AE
	mov r0, sb
	adds r1, r7, #0
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _0806A8AE
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0806A89C
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r2, [sp, #0x28]
	orrs r2, r0
	str r2, [sp, #0x28]
_0806A89C:
	lsls r0, r5, #0x10
	mov r3, sl
	ldr r1, [r3, #0x40]
	adds r1, r1, r0
	str r1, [r3, #0x40]
	movs r0, #1
	ldr r1, [sp, #0x28]
	orrs r1, r0
	str r1, [sp, #0x28]
_0806A8AE:
	ldr r2, [sp, #0x24]
	movs r3, #6
	ldrsh r0, [r2, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [sp, #0x2c]
	asrs r1, r2, #0x10
	adds r0, r0, r1
	ldr r3, [sp, #0x1c]
	adds r0, r0, r3
	mov sb, r0
	ldr r1, [sp, #0x24]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	adds r0, r0, r1
	asrs r1, r4, #0x10
	adds r0, r0, r1
	ldr r1, [sp, #0x20]
	adds r7, r0, r1
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0806A92E
	mov r0, sb
	adds r1, r7, #0
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _0806A92E
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0806A91C
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r3, [sp, #0x28]
	orrs r3, r0
	str r3, [sp, #0x28]
_0806A91C:
	lsls r0, r5, #0x10
	mov r2, sl
	ldr r1, [r2, #0x40]
	adds r1, r1, r0
	str r1, [r2, #0x40]
	movs r0, #1
	ldr r3, [sp, #0x28]
	orrs r3, r0
	str r3, [sp, #0x28]
_0806A92E:
	mov r0, sl
	ldr r1, [sp, #0x58]
	bl sub_0806D460
	mov r1, sl
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	bgt _0806AA3C
	ldr r2, [sp, #0x24]
	movs r3, #6
	ldrsh r0, [r2, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [sp, #0x2c]
	asrs r1, r2, #0x10
	adds r0, r0, r1
	mov sb, r0
	ldr r3, [sp, #0x24]
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r0, r0, r1
	asrs r1, r4, #0x10
	adds r7, r0, r1
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0806A9B6
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _0806A9B6
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0806A9A4
	movs r0, #0x80
	lsls r0, r0, #4
	ldr r1, [sp, #0x28]
	orrs r1, r0
	str r1, [sp, #0x28]
_0806A9A4:
	lsls r0, r5, #0x10
	mov r2, sl
	ldr r1, [r2, #0x44]
	adds r1, r1, r0
	str r1, [r2, #0x44]
	movs r0, #8
	ldr r3, [sp, #0x28]
	orrs r3, r0
	str r3, [sp, #0x28]
_0806A9B6:
	ldr r1, [sp, #0x24]
	movs r2, #6
	ldrsh r0, [r1, r2]
	mov r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	ldr r3, [sp, #0x2c]
	asrs r1, r3, #0x10
	adds r0, r0, r1
	ldr r1, [sp, #0x1c]
	adds r0, r0, r1
	mov sb, r0
	ldr r2, [sp, #0x24]
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r0, r0, r1
	asrs r1, r4, #0x10
	adds r7, r0, r1
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0806AA32
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _0806AA32
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0806AA20
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r1, [sp, #0x28]
	orrs r1, r0
	str r1, [sp, #0x28]
_0806AA20:
	lsls r0, r5, #0x10
	mov r2, sl
	ldr r1, [r2, #0x44]
	adds r1, r1, r0
	str r1, [r2, #0x44]
	movs r0, #8
	ldr r3, [sp, #0x28]
	orrs r3, r0
	str r3, [sp, #0x28]
_0806AA32:
	mov r1, sl
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	bge _0806AA3C
	b _0806AB52
_0806AA3C:
	ldr r2, [sp, #0x24]
	movs r3, #6
	ldrsh r0, [r2, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [sp, #0x2c]
	asrs r1, r2, #0x10
	adds r0, r0, r1
	mov sb, r0
	ldr r3, [sp, #0x24]
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r0, r0, r1
	asrs r1, r4, #0x10
	adds r0, r0, r1
	ldr r3, [sp, #0x20]
	adds r7, r0, r3
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0806AACA
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	b _0806AA90
	.align 2, 0
_0806AA88: .4byte gEwramData
_0806AA8C: .4byte 0x0000A094
_0806AA90:
	cmp r5, #0
	beq _0806AACA
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0806AAB0
	movs r0, #0x80
	lsls r0, r0, #2
	ldr r2, [sp, #0x28]
	orrs r2, r0
	str r2, [sp, #0x28]
_0806AAB0:
	lsls r1, r5, #0x10
	mov r3, sl
	ldr r0, [r3, #0x44]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0806AAC2
	str r0, [r3, #0x4c]
_0806AAC2:
	movs r0, #4
	ldr r1, [sp, #0x28]
	orrs r1, r0
	str r1, [sp, #0x28]
_0806AACA:
	ldr r2, [sp, #0x24]
	movs r3, #6
	ldrsh r0, [r2, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [sp, #0x2c]
	asrs r1, r2, #0x10
	adds r0, r0, r1
	ldr r3, [sp, #0x1c]
	adds r0, r0, r3
	mov sb, r0
	ldr r1, [sp, #0x24]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	adds r0, r0, r1
	asrs r1, r4, #0x10
	adds r0, r0, r1
	ldr r1, [sp, #0x20]
	adds r7, r0, r1
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0806AB52
	mov r0, sb
	adds r1, r7, #0
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _0806AB52
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	beq _0806AB38
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r3, [sp, #0x28]
	orrs r3, r0
	str r3, [sp, #0x28]
_0806AB38:
	lsls r1, r5, #0x10
	mov r2, sl
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r2, #0x44]
	ldr r3, [sp, #0x10]
	cmp r3, #0
	beq _0806AB4A
	str r3, [r2, #0x4c]
_0806AB4A:
	movs r0, #4
	ldr r1, [sp, #0x28]
	orrs r1, r0
	str r1, [sp, #0x28]
_0806AB52:
	mov r2, r8
	ldrh r0, [r2]
	ldr r3, [sp, #0x24]
	ldrh r3, [r3, #6]
	adds r0, r0, r3
	ldr r1, [sp, #0x2c]
	asrs r5, r1, #0x10
	adds r0, r5, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	ldr r2, [sp, #0x24]
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	asrs r4, r4, #0x10
	adds r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	str r0, [sp]
	mov r3, r8
	ldrh r0, [r3]
	ldr r1, [sp, #0x24]
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	adds r0, r5, r0
	ldr r2, [sp, #0x1c]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	ldr r3, [sp, #0x24]
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	adds r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	str r0, [sp, #4]
	mov r1, r8
	ldrh r0, [r1]
	ldr r2, [sp, #0x24]
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, r5, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r6]
	ldr r3, [sp, #0x24]
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	adds r1, r4, r1
	ldr r2, [sp, #0x20]
	adds r1, r2, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	str r0, [sp, #8]
	mov r3, r8
	ldrh r0, [r3]
	ldr r1, [sp, #0x24]
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	adds r5, r5, r0
	ldr r2, [sp, #0x1c]
	adds r5, r2, r5
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldrh r0, [r6]
	ldr r3, [sp, #0x24]
	ldrh r3, [r3, #0xa]
	adds r0, r0, r3
	adds r4, r4, r0
	ldr r0, [sp, #0x20]
	adds r4, r0, r4
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D0B8
	str r0, [sp, #0xc]
	ldr r0, [sp]
	cmp r0, #3
	bne _0806AC10
	ldr r0, [sp, #4]
	cmp r0, #3
	bne _0806AC10
	movs r0, #0x80
	ldr r1, [sp, #0x28]
	orrs r1, r0
	str r1, [sp, #0x28]
_0806AC10:
	ldr r1, [sp, #8]
	cmp r1, #3
	bne _0806AC24
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bne _0806AC24
	movs r0, #0x40
	ldr r2, [sp, #0x28]
	orrs r2, r0
	str r2, [sp, #0x28]
_0806AC24:
	ldr r0, [sp]
	cmp r0, #3
	bne _0806AC36
	cmp r1, #3
	bne _0806AC36
	movs r0, #0x20
	ldr r3, [sp, #0x28]
	orrs r3, r0
	str r3, [sp, #0x28]
_0806AC36:
	ldr r0, [sp, #4]
	cmp r0, #3
	bne _0806AC4A
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bne _0806AC4A
	movs r0, #0x10
	ldr r4, [sp, #0x28]
	orrs r4, r0
	str r4, [sp, #0x28]
_0806AC4A:
	ldr r0, [sp, #0x28]
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0806AC5C
sub_0806AC5C: @ 0x0806AC5C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r0, _0806ACC4 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0806ACC8 @ =0x0000A094
	adds r1, r1, r0
	adds r0, r6, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r3, #6
	ldrsh r0, [r1, r3]
	adds r7, r2, r0
	adds r0, r6, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
	adds r5, r2, r0
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0806ACDA
	adds r1, r5, #1
	adds r0, r7, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0
	beq _0806AD1C
	asrs r3, r1, #6
	movs r2, #4
	ands r2, r0
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806ACCC
	cmp r2, #0
	beq _0806ACD0
	b _0806AD1C
	.align 2, 0
_0806ACC4: .4byte gEwramData
_0806ACC8: .4byte 0x0000A094
_0806ACCC:
	cmp r2, #0
	beq _0806AD1C
_0806ACD0:
	cmp r3, #1
	beq _0806AD0A
	cmp r3, #2
	beq _0806AD12
	b _0806AD1C
_0806ACDA:
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0
	beq _0806AD1C
	asrs r3, r1, #6
	movs r2, #4
	ands r2, r0
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806ACFC
	cmp r2, #0
	beq _0806AD00
	b _0806AD1C
_0806ACFC:
	cmp r2, #0
	beq _0806AD1C
_0806AD00:
	cmp r3, #1
	beq _0806AD0A
	cmp r3, #2
	beq _0806AD12
	b _0806AD1C
_0806AD0A:
	lsrs r0, r4, #0x1f
	adds r0, r4, r0
	asrs r0, r0, #1
	b _0806AD1E
_0806AD12:
	lsls r0, r4, #1
	movs r1, #3
	bl __divsi3
	b _0806AD1E
_0806AD1C:
	adds r0, r4, #0
_0806AD1E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0806AD24
sub_0806AD24: @ 0x0806AD24
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0806AD88
	adds r0, r4, #0
	bl sub_0806AE54
	cmp r0, #0
	bne _0806ADB4
	ldr r0, _0806AD8C @ =gEwramData
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806AD7C
	ldr r1, _0806AD90 @ =0x000004BE
	adds r0, r2, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0806AD7C
	ldr r2, _0806AD94 @ =0x080E9644
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _0806AD78
	movs r1, #0
_0806AD78:
	cmp r1, #0
	bne _0806ADB4
_0806AD7C:
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0806AD98
_0806AD88:
	movs r0, #0
	b _0806ADB6
	.align 2, 0
_0806AD8C: .4byte gEwramData
_0806AD90: .4byte 0x000004BE
_0806AD94: .4byte 0x080E9644
_0806AD98:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x70
	orrs r0, r1
	strb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	adds r1, r4, #0
	adds r1, #0x2c
	strb r0, [r1]
_0806ADB4:
	movs r0, #1
_0806ADB6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0806ADBC
sub_0806ADBC: @ 0x0806ADBC
	push {lr}
	adds r3, r0, #0
	movs r1, #0x34
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _0806AE20
	adds r0, r3, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806AE4C
	ldr r0, _0806AE24 @ =gEwramData
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806AE14
	ldr r1, _0806AE28 @ =0x000004BE
	adds r0, r2, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0806AE14
	ldr r2, _0806AE2C @ =0x080E9644
	adds r0, r3, #0
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _0806AE10
	movs r1, #0
_0806AE10:
	cmp r1, #0
	bne _0806AE4C
_0806AE14:
	ldrh r1, [r3, #0x38]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0806AE30
_0806AE20:
	movs r0, #0
	b _0806AE4E
	.align 2, 0
_0806AE24: .4byte gEwramData
_0806AE28: .4byte 0x000004BE
_0806AE2C: .4byte 0x080E9644
_0806AE30:
	adds r2, r3, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x70
	orrs r0, r1
	strb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	adds r1, r3, #0
	adds r1, #0x2c
	strb r0, [r1]
_0806AE4C:
	movs r0, #1
_0806AE4E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806AE54
sub_0806AE54: @ 0x0806AE54
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x2d
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806AEA4
	subs r0, #1
	strb r0, [r1]
	movs r1, #0xff
	ands r0, r1
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0806AE84
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	b _0806AEA0
_0806AE84:
	adds r1, r2, #0
	adds r1, #0x2c
	adds r3, r2, #0
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
_0806AEA0:
	movs r0, #1
	b _0806AEA6
_0806AEA4:
	movs r0, #0
_0806AEA6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806AEAC
sub_0806AEAC: @ 0x0806AEAC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	adds r7, r0, #0
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0806AF2E
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	ldr r6, [r7, #0x40]
	ldr r5, [r7, #0x44]
	ldr r1, _0806AF44 @ =0xFFFA0000
	adds r5, r5, r1
	subs r0, #1
	mov r8, r0
	bl RandomNumberGenerator
	movs r1, #0x80
	lsls r1, r1, #0xd
	bl __umodsi3
	adds r4, r0, #0
	ldr r0, _0806AF48 @ =0xFFF80000
	adds r4, r4, r0
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xc
	bl __umodsi3
	ldr r1, _0806AF44 @ =0xFFFA0000
	adds r0, r0, r1
	adds r6, r6, r4
	adds r5, r5, r0
	ldr r2, _0806AF4C @ =sub_0806E524
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806AF2E
	str r6, [r4, #0x40]
	str r5, [r4, #0x44]
	bl RandomNumberGenerator
	movs r1, #1
	adds r3, r4, #0
	adds r3, #0x58
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x5c
	mov r1, r8
	strb r1, [r0]
_0806AF2E:
	ldrb r4, [r7, #0xd]
	adds r5, r4, #0
	ldr r1, _0806AF50 @ =0x08118CE0
	mov r0, sp
	movs r2, #0x28
	bl memcpy
	cmp r4, #0x27
	ble _0806AF54
	movs r2, #0
	b _0806AF5C
	.align 2, 0
_0806AF44: .4byte 0xFFFA0000
_0806AF48: .4byte 0xFFF80000
_0806AF4C: .4byte sub_0806E524
_0806AF50: .4byte 0x08118CE0
_0806AF54:
	mov r1, sp
	adds r0, r1, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
_0806AF5C:
	adds r3, r7, #0
	adds r3, #0x58
	movs r0, #1
	ands r2, r0
	lsls r2, r2, #5
	ldrb r1, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0806AF8A
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0806AF8A:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806AF98
sub_0806AF98: @ 0x0806AF98
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _0806AFCC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806AFD0 @ =0x0000A094
	adds r6, r0, r1
	movs r2, #6
	ldrsh r0, [r6, r2]
	adds r5, r7, #0
	adds r5, #0x42
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	movs r2, #0xa
	ldrsh r1, [r6, r2]
	adds r4, r7, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0806B006
	b _0806AFDA
	.align 2, 0
_0806AFCC: .4byte gEwramData
_0806AFD0: .4byte 0x0000A094
_0806AFD4:
	ldrh r0, [r4]
	subs r0, #8
	strh r0, [r4]
_0806AFDA:
	movs r1, #6
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r6, r3]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806AFD4
	ldrh r0, [r4]
	adds r0, #7
	strh r0, [r4]
	b _0806B024
_0806B000:
	ldrh r0, [r4]
	adds r0, #8
	strh r0, [r4]
_0806B006:
	movs r1, #6
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r6, r3]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806B000
_0806B024:
	movs r1, #6
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	movs r3, #0xa
	ldrsh r1, [r6, r3]
	movs r3, #0
	ldrsh r2, [r4, r3]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	str r1, [r7, #0x44]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806B04C
sub_0806B04C: @ 0x0806B04C
	mov ip, r0
	mov r1, ip
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	ldr r2, _0806B0A4 @ =0x080E9644
	mov r3, ip
	adds r3, #0x36
	ldrb r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	mov r1, ip
	strh r0, [r1, #0x34]
	ldrb r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xe]
	mov r1, ip
	strh r0, [r1, #0x2e]
	ldrb r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0x13]
	mov r0, ip
	adds r0, #0x3c
	strb r1, [r0]
	ldrb r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0x14]
	mov r0, ip
	adds r0, #0x3d
	strb r1, [r0]
	bx lr
	.align 2, 0
_0806B0A4: .4byte 0x080E9644

	thumb_func_start sub_0806B0A8
sub_0806B0A8: @ 0x0806B0A8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0806B0D8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806B0DC @ =0x0000A094
	adds r0, r0, r1
	ldr r2, [r0]
	adds r3, r0, #0
	adds r0, r4, #0
	adds r0, #0x42
	movs r5, #0
	ldrsh r1, [r0, r5]
	movs r5, #6
	ldrsh r0, [r3, r5]
	adds r1, r1, r0
	cmp r1, #0
	bge _0806B0CC
	adds r1, #7
_0806B0CC:
	asrs r1, r1, #3
	ldrb r0, [r2]
	cmp r0, #1
	beq _0806B0E0
	lsls r0, r0, #5
	b _0806B0E2
	.align 2, 0
_0806B0D8: .4byte gEwramData
_0806B0DC: .4byte 0x0000A094
_0806B0E0:
	movs r0, #0x1e
_0806B0E2:
	cmp r1, #0
	blt _0806B118
	cmp r1, r0
	bge _0806B118
	adds r0, r4, #0
	adds r0, #0x46
	movs r4, #0
	ldrsh r1, [r0, r4]
	movs r5, #0xa
	ldrsh r0, [r3, r5]
	adds r0, r1, r0
	cmp r0, #0
	bge _0806B0FE
	adds r0, #7
_0806B0FE:
	asrs r1, r0, #3
	ldrb r0, [r2, #1]
	cmp r0, #1
	beq _0806B10A
	lsls r0, r0, #5
	b _0806B10C
_0806B10A:
	movs r0, #0x1a
_0806B10C:
	cmp r1, #0
	blt _0806B118
	cmp r1, r0
	bge _0806B118
	movs r0, #0
	b _0806B11A
_0806B118:
	movs r0, #1
_0806B11A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806B120
sub_0806B120: @ 0x0806B120
	push {r4, r5, lr}
	mov ip, r0
	adds r2, r1, #0
	ldr r0, _0806B154 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806B158 @ =0x0000A094
	adds r0, r0, r1
	ldr r4, [r0]
	adds r3, r0, #0
	mov r0, ip
	adds r0, #0x42
	movs r5, #0
	ldrsh r1, [r0, r5]
	movs r5, #6
	ldrsh r0, [r3, r5]
	adds r1, r1, r0
	cmp r1, #0
	bge _0806B146
	adds r1, #7
_0806B146:
	asrs r1, r1, #3
	ldrb r0, [r4]
	cmp r0, #1
	beq _0806B15C
	lsls r0, r0, #5
	b _0806B15E
	.align 2, 0
_0806B154: .4byte gEwramData
_0806B158: .4byte 0x0000A094
_0806B15C:
	movs r0, #0x1e
_0806B15E:
	cmp r1, r2
	bge _0806B178
	lsls r1, r2, #3
	ldrh r0, [r3, #6]
	subs r1, r1, r0
	mov r3, ip
	adds r3, #0x42
	movs r2, #0
	strh r1, [r3]
	mov r0, ip
	adds r0, #0x40
	strh r2, [r0]
	b _0806B198
_0806B178:
	subs r0, r0, r2
	cmp r1, r0
	bgt _0806B182
	movs r0, #0
	b _0806B19A
_0806B182:
	adds r0, #1
	lsls r0, r0, #3
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	mov r2, ip
	adds r2, #0x42
	movs r1, #0
	strh r0, [r2]
	mov r0, ip
	adds r0, #0x40
	strh r1, [r0]
_0806B198:
	movs r0, #1
_0806B19A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806B1A0
sub_0806B1A0: @ 0x0806B1A0
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B1D8
	adds r1, r4, #0
	adds r1, #8
	adds r0, r5, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806B1F0
	subs r1, r4, #7
	adds r0, r5, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806B1F4
	b _0806B1F0
_0806B1D8:
	subs r1, r4, #7
	adds r0, r5, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0806B1F4
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _0806B1F4
_0806B1F0:
	movs r0, #1
	b _0806B1F6
_0806B1F4:
	movs r0, #0
_0806B1F6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806B1FC
sub_0806B1FC: @ 0x0806B1FC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x64
	ldr r0, _0806B234 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0806B238 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r5, [r0, #8]
	ldrb r0, [r0, #4]
	cmp r0, #1
	beq _0806B242
	cmp r0, #1
	bgt _0806B23C
	cmp r0, #0
	beq _0806B286
	b _0806B296
	.align 2, 0
_0806B234: .4byte gEwramData
_0806B238: .4byte 0x0001017C
_0806B23C:
	cmp r0, #2
	beq _0806B264
	b _0806B296
_0806B242:
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #0xfb
	ands r1, r0
	movs r0, #0xfd
	ands r1, r0
	strb r1, [r2]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080428B4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08042848
	b _0806B296
_0806B264:
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080428B4
	adds r1, r5, #4
	adds r0, r4, #0
	bl sub_08042848
	b _0806B296
_0806B286:
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_0806B296:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0806B29C
sub_0806B29C: @ 0x0806B29C
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0806B350 @ =0x08118D24
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0806B358
	ldr r0, _0806B354 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806B2E4
	adds r1, r5, #0
	adds r1, #0x6d
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806B2E4
	adds r1, r0, #0
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0806B2E4:
	ldr r4, _0806B354 @ =gEwramData
	ldr r0, [r4]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806B304
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	adds r1, #1
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0806B304:
	ldr r0, [r4]
	ldrh r1, [r0, #0x1e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806B320
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0806B320:
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r0, [r4]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x82
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806B3DA
	adds r0, r5, #0
	adds r0, #0x20
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, r5, #0
	mov r1, sp
	movs r3, #1
	bl sub_0803F0E4
	b _0806B3DA
	.align 2, 0
_0806B350: .4byte 0x08118D24
_0806B354: .4byte gEwramData
_0806B358:
	adds r3, r5, #0
	adds r3, #0x6f
	movs r0, #0
	strb r0, [r3]
	ldr r2, _0806B3E4 @ =gEwramData
	ldr r0, [r2]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x40
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0x21
	cmp r0, #0
	beq _0806B384
	ldrb r1, [r4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0806B380
	subs r0, r1, #1
	strb r0, [r4]
_0806B380:
	movs r0, #0x64
	strb r0, [r3]
_0806B384:
	ldr r0, [r2]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806B39A
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	movs r0, #0x64
	strb r0, [r3]
_0806B39A:
	ldr r2, [r2]
	ldrh r1, [r2, #0x1e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806B3AE
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x64
	strb r0, [r3]
_0806B3AE:
	ldrh r1, [r2, #0x1e]
	movs r0, #0x82
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806B3CE
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0806B3CE:
	ldrb r1, [r4]
	mov r0, sp
	strb r1, [r0, #4]
	adds r0, r5, #0
	bl sub_0803F17C
_0806B3DA:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806B3E4: .4byte gEwramData

	thumb_func_start sub_0806B3E8
sub_0806B3E8: @ 0x0806B3E8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0806B4EC @ =0x08118D24
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0806B4F4
	ldr r0, _0806B4F0 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806B430
	adds r1, r5, #0
	adds r1, #0x6d
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806B430
	adds r1, r0, #0
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
_0806B430:
	ldr r7, _0806B4F0 @ =gEwramData
	ldr r0, [r7]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806B450
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	adds r1, #1
	adds r0, r5, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
_0806B450:
	ldr r4, [r7]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	adds r6, r4, #0
	cmp r0, #0
	beq _0806B47A
	adds r3, r5, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1c
	subs r1, #1
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0806B47A:
	ldrh r1, [r6, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0806B4A0
	adds r3, r5, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1c
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0806B4A0:
	ldrh r1, [r4, #0x1e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806B4BA
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	adds r0, r5, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
_0806B4BA:
	adds r0, r5, #0
	bl sub_0803F17C
	ldr r0, [r7]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x82
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0806B4D0
	b _0806B5D0
_0806B4D0:
	adds r0, r5, #0
	adds r0, #0x20
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, r5, #0
	mov r1, sp
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	b _0806B5D0
	.align 2, 0
_0806B4EC: .4byte 0x08118D24
_0806B4F0: .4byte gEwramData
_0806B4F4:
	adds r3, r5, #0
	adds r3, #0x6f
	movs r0, #0
	strb r0, [r3]
	ldr r2, _0806B5D8 @ =gEwramData
	ldr r0, [r2]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x40
	ands r0, r1
	adds r6, r5, #0
	adds r6, #0x21
	cmp r0, #0
	beq _0806B520
	ldrb r1, [r6]
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _0806B51C
	subs r0, r1, #1
	strb r0, [r6]
_0806B51C:
	movs r0, #0x64
	strb r0, [r3]
_0806B520:
	ldr r0, [r2]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806B536
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	movs r0, #0x64
	strb r0, [r3]
_0806B536:
	ldr r4, [r2]
	ldrh r1, [r4, #0x1e]
	movs r0, #1
	ands r0, r1
	adds r7, r4, #0
	cmp r0, #0
	beq _0806B54C
	movs r0, #0
	strb r0, [r6]
	movs r0, #0x64
	strb r0, [r3]
_0806B54C:
	ldrh r1, [r7, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0806B572
	adds r3, r5, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1c
	subs r1, #1
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0806B572:
	ldrh r1, [r7, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0806B598
	adds r3, r5, #0
	adds r3, #0x5a
	ldrb r2, [r3]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1c
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0806B598:
	ldrh r1, [r4, #0x1e]
	movs r0, #0x82
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806B5B8
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F2C8
_0806B5B8:
	mov r4, sp
	adds r0, r5, #0
	mov r1, sp
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	ldrb r0, [r6]
	strb r0, [r4, #4]
	adds r0, r5, #0
	bl sub_0803F17C
_0806B5D0:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B5D8: .4byte gEwramData

	thumb_func_start sub_0806B5DC
sub_0806B5DC: @ 0x0806B5DC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0806B62A
	ldrb r4, [r5, #0xb]
	lsls r4, r4, #2
	ldr r0, _0806B648 @ =0x08526D0C
	adds r4, r4, r0
	ldr r0, _0806B64C @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806B650 @ =0x0820ED60
	ldrb r3, [r4, #1]
	adds r0, r5, #0
	bl sub_0803B924
	ldrb r1, [r4]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #3
	strb r0, [r1]
	ldr r0, _0806B654 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_0806B62A:
	adds r0, r5, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _0806B640
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0806B640:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806B648: .4byte 0x08526D0C
_0806B64C: .4byte 0x081C15F4
_0806B650: .4byte 0x0820ED60
_0806B654: .4byte sub_0803B9D0

	thumb_func_start sub_0806B658
sub_0806B658: @ 0x0806B658
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x20
	adds r5, r0, #0
	adds r7, r1, #0
	mov r8, r2
	mov sb, r3
	mov r6, sp
	add r4, sp, #8
	add r1, sp, #0xc
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08042030
	cmp r0, #0
	bne _0806B67E
	b _0806B7C8
_0806B67E:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806B6A4
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r6, #4]
	ldrb r1, [r4, #2]
	subs r0, r0, r1
	mov r1, sp
	strh r0, [r1]
	b _0806B6BA
_0806B6A4:
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r1, sp
	strh r0, [r1]
	ldrb r1, [r4, #2]
	adds r0, r0, r1
	strh r0, [r6, #4]
_0806B6BA:
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r6, #2]
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	strh r0, [r6, #6]
	add r5, sp, #0x10
	add r0, sp, #0x18
	add r4, sp, #0x1c
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_08042030
	adds r3, r5, #0
	cmp r0, #0
	beq _0806B7C8
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806B706
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r1, [r1]
	subs r1, r1, r0
	strh r1, [r3, #4]
	ldrb r0, [r4, #2]
	subs r1, r1, r0
	strh r1, [r3]
	b _0806B71A
_0806B706:
	adds r1, r7, #0
	adds r1, #0x42
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r3]
	ldrb r1, [r4, #2]
	adds r0, r0, r1
	strh r0, [r3, #4]
_0806B71A:
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r5, #2]
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	strh r0, [r5, #6]
	mov r0, sp
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r1, [r0, r4]
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r1, r0
	bge _0806B756
	mov r2, sp
	movs r0, #4
	ldrsh r1, [r2, r0]
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r1, r1, r0
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	ldrh r0, [r2, #4]
	subs r0, r0, r1
	b _0806B76A
_0806B756:
	movs r4, #4
	ldrsh r0, [r3, r4]
	mov r1, sp
	movs r4, #0
	ldrsh r1, [r1, r4]
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r0, r2, r0
_0806B76A:
	mov r1, r8
	strh r0, [r1]
	mov r2, sp
	movs r4, #6
	ldrsh r1, [r2, r4]
	movs r4, #2
	ldrsh r0, [r2, r4]
	subs r1, r1, r0
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	ldrh r0, [r2, #2]
	adds r0, r0, r1
	mov r1, sb
	strh r0, [r1]
	mov r2, r8
	movs r4, #0
	ldrsh r1, [r2, r4]
	ldrh r2, [r3]
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r1, r0
	blt _0806B7A2
	ldrh r2, [r3, #4]
	movs r4, #4
	ldrsh r0, [r3, r4]
	cmp r1, r0
	ble _0806B7A6
_0806B7A2:
	mov r0, r8
	strh r2, [r0]
_0806B7A6:
	ldrh r1, [r3, #2]
	mov r4, sb
	movs r0, #0
	ldrsh r2, [r4, r0]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _0806B7BA
	strh r1, [r4]
	b _0806B7C8
_0806B7BA:
	ldrh r1, [r3, #6]
	movs r4, #6
	ldrsh r0, [r3, r4]
	cmp r2, r0
	ble _0806B7C8
	mov r0, sb
	strh r1, [r0]
_0806B7C8:
	add sp, #0x20
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806B7D8
sub_0806B7D8: @ 0x0806B7D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	str r1, [sp, #8]
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	lsls r3, r3, #0x10
	mov sb, r3
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0806B860 @ =0x080E9644
	asrs r4, r3, #0x10
	ldrh r6, [r2]
	mov sl, sp
	movs r5, #0
	mov r8, r5
	adds r1, r1, r0
	str r1, [sp, #0xc]
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _0806B834
	bl sub_08023334
	cmp r0, #0
	beq _0806B834
	ldrh r0, [r0, #0x10]
	mov r8, r0
	movs r5, #1
	movs r0, #0x80
	lsls r0, r0, #5
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0806B834
	mov r2, sb
	asrs r4, r2, #0x11
_0806B834:
	ldr r0, _0806B864 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0806B868 @ =0x000004CC
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806B86C
	cmp r5, #0
	bne _0806B8A8
	movs r0, #8
	ands r0, r6
	cmp r0, #0
	beq _0806B890
	bl sub_0802D244
	movs r5, #1
	ldrh r0, [r0, #0xc]
	mov r8, r0
	b _0806B890
	.align 2, 0
_0806B860: .4byte 0x080E9644
_0806B864: .4byte gEwramData
_0806B868: .4byte 0x000004CC
_0806B86C:
	movs r0, #8
	ands r0, r6
	cmp r0, #0
	beq _0806B890
	movs r0, #1
	bl sub_08023368
	cmp r0, #0
	beq _0806B890
	ldrh r0, [r0, #0x10]
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #5
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0806B890
	asrs r4, r4, #1
_0806B890:
	cmp r5, #0
	bne _0806B8A8
	movs r0, #0x10
	ands r6, r0
	cmp r6, #0
	beq _0806B8A8
	ldr r0, _0806B8D8 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0806B8DC @ =0x000131C4
	adds r0, r0, r2
	ldrh r0, [r0]
	mov r8, r0
_0806B8A8:
	ldr r3, [sp, #0xc]
	ldrh r5, [r3, #0x1a]
	mov r0, r8
	ands r5, r0
	movs r1, #0x3d
	adds r1, r1, r7
	mov sb, r1
	cmp r5, #0
	beq _0806B990
	ldrh r0, [r7, #0x38]
	cmp r0, #0
	bne _0806B932
	movs r1, #0xfc
	lsls r1, r1, #4
	ands r1, r5
	strh r1, [r7, #0x38]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806B8E0
	movs r0, #0
	b _0806B9C0
	.align 2, 0
_0806B8D8: .4byte gEwramData
_0806B8DC: .4byte 0x000131C4
_0806B8E0:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806B912
	ldrh r0, [r7, #0x34]
	ldrh r1, [r7, #0x2e]
	strh r1, [r7, #0x34]
	strh r0, [r7, #0x2e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _0806B90A
	adds r0, r7, #0
	movs r2, #1
	bl sub_08042B8C
	b _0806B912
_0806B90A:
	adds r0, r7, #0
	movs r2, #2
	bl sub_08042B8C
_0806B912:
	ldrh r1, [r7, #0x38]
	movs r0, #0x40
	ands r0, r1
	movs r2, #0x3d
	adds r2, r2, r7
	mov sb, r2
	cmp r0, #0
	beq _0806B932
	movs r0, #0
	strb r0, [r2]
	adds r2, r7, #0
	adds r2, #0x3c
	ldrb r0, [r2]
	lsrs r1, r0, #2
	subs r0, r0, r1
	strb r0, [r2]
_0806B932:
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _0806B942
	ldrh r0, [r7, #0x34]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r4, r4, r0
_0806B942:
	movs r0, #0x3f
	ands r5, r0
	cmp r5, #0
	beq _0806B990
	cmp r5, #1
	bne _0806B954
	asrs r0, r4, #2
	adds r4, r4, r0
	b _0806B956
_0806B954:
	lsls r4, r4, #1
_0806B956:
	movs r2, #0x20
	movs r3, #0
	movs r1, #6
	adds r0, r5, #0
	ands r0, r2
	lsls r4, r4, #0x10
	mov ip, r4
	add r6, sp, #4
	mov r4, sp
	adds r4, #6
	cmp r0, #0
	beq _0806B972
	movs r3, #6
	b _0806B986
_0806B972:
	asrs r2, r2, #1
	subs r1, #1
	cmp r1, #0
	ble _0806B986
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _0806B972
	lsls r0, r1, #0x10
	lsrs r3, r0, #0x10
_0806B986:
	mov r0, sl
	strh r3, [r0]
	mov r1, ip
	lsrs r0, r1, #0x10
	b _0806BA0A
_0806B990:
	movs r5, #0x3f
	mov r2, r8
	ands r5, r2
	cmp r5, #0
	beq _0806B9C8
	ldr r3, [sp, #0xc]
	ldrh r1, [r3, #0x1c]
	ands r1, r5
	ldr r2, _0806B9B4 @ =0x0000FFFE
	ands r2, r1
	cmp r2, #0
	beq _0806B9B8
	movs r0, #2
	rsbs r0, r0, #0
	ands r5, r0
	cmp r5, r2
	bne _0806B9C8
	b _0806B9BC
	.align 2, 0
_0806B9B4: .4byte 0x0000FFFE
_0806B9B8:
	cmp r5, r1
	bne _0806B9C8
_0806B9BC:
	asrs r0, r4, #1
	subs r0, r4, r0
_0806B9C0:
	add r6, sp, #4
	mov r4, sp
	adds r4, #6
	b _0806BA0A
_0806B9C8:
	movs r2, #0x20
	movs r3, #0
	movs r1, #6
	mov r0, r8
	ands r0, r2
	lsls r4, r4, #0x10
	mov ip, r4
	add r6, sp, #4
	mov r4, sp
	adds r4, #6
	cmp r0, #0
	beq _0806B9E4
	movs r3, #6
	b _0806B9F8
_0806B9E4:
	asrs r2, r2, #1
	subs r1, #1
	cmp r1, #0
	ble _0806B9F8
	mov r0, r8
	ands r0, r2
	cmp r0, #0
	beq _0806B9E4
	lsls r0, r1, #0x10
	lsrs r3, r0, #0x10
_0806B9F8:
	mov r0, sl
	strh r3, [r0]
	cmp r3, #1
	bne _0806BA06
	movs r0, #0
	mov r1, sl
	strh r0, [r1]
_0806BA06:
	mov r2, ip
	lsrs r0, r2, #0x10
_0806BA0A:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #2
	ldr r3, _0806BAC0 @ =0x08526D0C
	adds r0, r0, r3
	ldrh r0, [r0, #2]
	bl PlaySong
	mov r0, sb
	ldrb r1, [r0]
	lsrs r1, r1, #1
	subs r1, r5, r1
	ldrb r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	subs r0, r2, r0
	muls r0, r1, r0
	asrs r5, r0, #8
	cmp r5, #0
	bgt _0806BA38
	movs r5, #1
_0806BA38:
	ldrh r1, [r7, #0x38]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0806BA4A
	lsls r5, r5, #1
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
_0806BA4A:
	mov r0, sp
	ldrh r0, [r0]
	mov sb, r0
	ldr r0, [sp, #8]
	adds r1, r7, #0
	add r2, sp, #4
	mov r3, sp
	adds r3, #6
	bl sub_0806B658
	movs r2, #0
	ldrsh r1, [r6, r2]
	mov r8, r1
	movs r3, #0
	ldrsh r6, [r4, r3]
	ldr r2, _0806BAC4 @ =sub_0806B5DC
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806BAA4
	adds r0, #0x42
	mov r1, r8
	strh r1, [r0]
	adds r0, #4
	strh r6, [r0]
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	adds r3, r4, #0
	adds r3, #0x58
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	mov r2, sb
	strh r2, [r4, #0x14]
	mov r3, sb
	strb r3, [r4, #0xb]
_0806BAA4:
	adds r0, r7, #0
	bl sub_0800EA98
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806BAC0: .4byte 0x08526D0C
_0806BAC4: .4byte sub_0806B5DC

	thumb_func_start sub_0806BAC8
sub_0806BAC8: @ 0x0806BAC8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806BB00
	ldr r0, _0806BAF8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806BAFC @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r6, [r1]
	adds r0, #0x46
	ldrh r5, [r0]
	adds r3, r4, #0
	adds r3, #0x42
	adds r2, r4, #0
	adds r2, #0x46
	b _0806BB98
	.align 2, 0
_0806BAF8: .4byte gEwramData
_0806BAFC: .4byte 0x00013110
_0806BB00:
	ldr r2, _0806BB28 @ =gEwramData
	ldr r3, [r2]
	ldr r1, _0806BB2C @ =0x000004CC
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806BB3C
	ldr r1, _0806BB30 @ =0x00013168
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806BB34
	adds r1, r4, #0
	adds r1, #0x42
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r3, r1, #0
	b _0806BB4C
	.align 2, 0
_0806BB28: .4byte gEwramData
_0806BB2C: .4byte 0x000004CC
_0806BB30: .4byte 0x00013168
_0806BB34:
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	b _0806BB48
_0806BB3C:
	ldr r1, _0806BB78 @ =0x00013118
	adds r0, r3, r1
	ldr r0, [r0]
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
_0806BB48:
	adds r3, r4, #0
	adds r3, #0x42
_0806BB4C:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r2, [r2]
	ldr r1, _0806BB7C @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806BB84
	ldr r1, _0806BB80 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806BB8A
	adds r0, r4, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	b _0806BB94
	.align 2, 0
_0806BB78: .4byte 0x00013118
_0806BB7C: .4byte 0x000004CC
_0806BB80: .4byte 0x00013168
_0806BB84:
	ldr r1, _0806BBC0 @ =0x00013118
	adds r0, r2, r1
	ldr r0, [r0]
_0806BB8A:
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r4, #0
	adds r2, #0x46
_0806BB94:
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
_0806BB98:
	ldrh r1, [r3]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r2]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806BBC0: .4byte 0x00013118

	thumb_func_start sub_0806BBC4
sub_0806BBC4: @ 0x0806BBC4
	push {lr}
	adds r3, r0, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806BBE8
	ldr r0, _0806BBE0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806BBE4 @ =0x00013110
	adds r0, r0, r1
	b _0806BC1C
	.align 2, 0
_0806BBE0: .4byte gEwramData
_0806BBE4: .4byte 0x00013110
_0806BBE8:
	ldr r0, _0806BC0C @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806BC10 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806BC18
	ldr r1, _0806BC14 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806BC1E
	ldr r1, [r3, #0x40]
	adds r0, r1, #0
	b _0806BC22
	.align 2, 0
_0806BC0C: .4byte gEwramData
_0806BC10: .4byte 0x000004CC
_0806BC14: .4byte 0x00013168
_0806BC18:
	ldr r1, _0806BC2C @ =0x00013118
	adds r0, r2, r1
_0806BC1C:
	ldr r0, [r0]
_0806BC1E:
	ldr r1, [r0, #0x40]
	ldr r0, [r3, #0x40]
_0806BC22:
	cmp r0, r1
	bge _0806BC30
	movs r0, #1
	b _0806BC3C
	.align 2, 0
_0806BC2C: .4byte 0x00013118
_0806BC30:
	cmp r0, r1
	bgt _0806BC38
	movs r0, #0
	b _0806BC3C
_0806BC38:
	movs r0, #1
	rsbs r0, r0, #0
_0806BC3C:
	pop {r1}
	bx r1

	thumb_func_start sub_0806BC40
sub_0806BC40: @ 0x0806BC40
	push {lr}
	adds r2, r0, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806BC64
	ldr r0, _0806BC5C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806BC60 @ =0x00013110
	adds r0, r0, r1
	b _0806BC98
	.align 2, 0
_0806BC5C: .4byte gEwramData
_0806BC60: .4byte 0x00013110
_0806BC64:
	ldr r0, _0806BC88 @ =gEwramData
	ldr r3, [r0]
	ldr r1, _0806BC8C @ =0x000004CC
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806BC94
	ldr r1, _0806BC90 @ =0x00013168
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806BC9A
	ldr r0, [r2, #0x40]
	adds r1, r0, #0
	b _0806BC9E
	.align 2, 0
_0806BC88: .4byte gEwramData
_0806BC8C: .4byte 0x000004CC
_0806BC90: .4byte 0x00013168
_0806BC94:
	ldr r1, _0806BCC0 @ =0x00013118
	adds r0, r3, r1
_0806BC98:
	ldr r0, [r0]
_0806BC9A:
	ldr r0, [r0, #0x40]
	ldr r1, [r2, #0x40]
_0806BC9E:
	cmp r0, r1
	beq _0806BCBA
	movs r3, #0
	cmp r1, r0
	bge _0806BCAA
	movs r3, #1
_0806BCAA:
	adds r2, #0x58
	lsls r3, r3, #6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
_0806BCBA:
	pop {r0}
	bx r0
	.align 2, 0
_0806BCC0: .4byte 0x00013118

	thumb_func_start sub_0806BCC4
sub_0806BCC4: @ 0x0806BCC4
	push {r4, lr}
	mov ip, r0
	movs r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806BCE8
	ldr r0, _0806BCE0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806BCE4 @ =0x00013110
	adds r0, r0, r1
	b _0806BD24
	.align 2, 0
_0806BCE0: .4byte gEwramData
_0806BCE4: .4byte 0x00013110
_0806BCE8:
	ldr r0, _0806BD0C @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806BD10 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806BD20
	ldr r1, _0806BD14 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806BD18
	mov r0, ip
	ldr r2, [r0, #0x40]
	adds r3, r2, #0
	b _0806BD2C
	.align 2, 0
_0806BD0C: .4byte gEwramData
_0806BD10: .4byte 0x000004CC
_0806BD14: .4byte 0x00013168
_0806BD18:
	ldr r2, [r0, #0x40]
	mov r1, ip
	ldr r3, [r1, #0x40]
	b _0806BD2C
_0806BD20:
	ldr r1, _0806BD60 @ =0x00013118
	adds r0, r2, r1
_0806BD24:
	ldr r0, [r0]
	ldr r2, [r0, #0x40]
	mov r0, ip
	ldr r3, [r0, #0x40]
_0806BD2C:
	adds r0, r3, #0
	cmp r2, r0
	beq _0806BD58
	cmp r0, r2
	bge _0806BD44
	mov r0, ip
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806BD56
_0806BD44:
	cmp r3, r2
	ble _0806BD58
	mov r0, ip
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806BD58
_0806BD56:
	movs r4, #1
_0806BD58:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806BD60: .4byte 0x00013118

	thumb_func_start sub_0806BD64
sub_0806BD64: @ 0x0806BD64
	push {lr}
	adds r3, r0, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806BD90
	ldr r0, _0806BD88 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806BD8C @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x42
	ldrh r1, [r0]
	adds r2, r3, #0
	adds r2, #0x42
	b _0806BDD8
	.align 2, 0
_0806BD88: .4byte gEwramData
_0806BD8C: .4byte 0x00013110
_0806BD90:
	ldr r0, _0806BDB8 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806BDBC @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806BDC4
	ldr r1, _0806BDC0 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806BDCA
	adds r0, r3, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	b _0806BDD4
	.align 2, 0
_0806BDB8: .4byte gEwramData
_0806BDBC: .4byte 0x000004CC
_0806BDC0: .4byte 0x00013168
_0806BDC4:
	ldr r1, _0806BDE8 @ =0x00013118
	adds r0, r2, r1
	ldr r0, [r0]
_0806BDCA:
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r3, #0
	adds r2, #0x42
_0806BDD4:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_0806BDD8:
	ldrh r0, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_0806BDE8: .4byte 0x00013118

	thumb_func_start sub_0806BDEC
sub_0806BDEC: @ 0x0806BDEC
	push {lr}
	adds r3, r0, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806BE18
	ldr r0, _0806BE10 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806BE14 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x46
	ldrh r1, [r0]
	adds r2, r3, #0
	adds r2, #0x46
	b _0806BE60
	.align 2, 0
_0806BE10: .4byte gEwramData
_0806BE14: .4byte 0x00013110
_0806BE18:
	ldr r0, _0806BE40 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806BE44 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806BE4C
	ldr r1, _0806BE48 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806BE52
	adds r0, r3, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	b _0806BE5C
	.align 2, 0
_0806BE40: .4byte gEwramData
_0806BE44: .4byte 0x000004CC
_0806BE48: .4byte 0x00013168
_0806BE4C:
	ldr r1, _0806BE70 @ =0x00013118
	adds r0, r2, r1
	ldr r0, [r0]
_0806BE52:
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r3, #0
	adds r2, #0x46
_0806BE5C:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_0806BE60:
	ldrh r0, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_0806BE70: .4byte 0x00013118

	thumb_func_start sub_0806BE74
sub_0806BE74: @ 0x0806BE74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov r8, r0
	adds r7, r2, #0
	adds r6, r3, #0
	ldrb r0, [r0, #0xd]
	bl __modsi3
	cmp r0, #0
	bne _0806BF0A
	mov r0, r8
	adds r0, #0x5c
	ldrb r0, [r0]
	mov r1, r8
	ldr r1, [r1, #0x40]
	mov sb, r1
	mov r2, r8
	ldr r5, [r2, #0x44]
	ldr r1, _0806BF24 @ =0xFFFA0000
	adds r5, r5, r1
	subs r0, #1
	mov sl, r0
	bl RandomNumberGenerator
	adds r1, r7, #0
	bl __umodsi3
	adds r4, r0, #0
	lsrs r0, r7, #0x1f
	adds r0, r7, r0
	asrs r0, r0, #1
	subs r4, r4, r0
	bl RandomNumberGenerator
	adds r1, r6, #0
	bl __umodsi3
	lsrs r1, r6, #0x1f
	adds r1, r6, r1
	asrs r1, r1, #1
	subs r0, r0, r1
	mov r2, sb
	adds r6, r2, r4
	adds r5, r5, r0
	ldr r2, _0806BF28 @ =sub_0806E524
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806BF0A
	str r6, [r4, #0x40]
	str r5, [r4, #0x44]
	bl RandomNumberGenerator
	movs r1, #1
	adds r3, r4, #0
	adds r3, #0x58
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x5c
	mov r1, sl
	strb r1, [r0]
_0806BF0A:
	mov r2, r8
	ldrb r4, [r2, #0xd]
	adds r5, r4, #0
	ldr r1, _0806BF2C @ =0x08118CE0
	mov r0, sp
	movs r2, #0x28
	bl memcpy
	cmp r4, #0x27
	ble _0806BF30
	movs r2, #0
	b _0806BF38
	.align 2, 0
_0806BF24: .4byte 0xFFFA0000
_0806BF28: .4byte sub_0806E524
_0806BF2C: .4byte 0x08118CE0
_0806BF30:
	mov r1, sp
	adds r0, r1, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
_0806BF38:
	mov r3, r8
	adds r3, #0x58
	movs r0, #1
	ands r2, r0
	lsls r2, r2, #5
	ldrb r1, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	mov r2, r8
	ldrb r0, [r2, #0xd]
	subs r0, #1
	strb r0, [r2, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0806BF68
	mov r0, r8
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0806BF68:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806BF78
sub_0806BF78: @ 0x0806BF78
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r6, r1, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806BFA4
	ldr r0, _0806BF9C @ =gEwramData
	ldr r1, [r0]
	ldr r2, _0806BFA0 @ =0x00013110
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r2, [r1, #0x40]
	adds r5, r0, #0
	b _0806BFE8
	.align 2, 0
_0806BF9C: .4byte gEwramData
_0806BFA0: .4byte 0x00013110
_0806BFA4:
	ldr r2, _0806BFCC @ =gEwramData
	ldr r3, [r2]
	ldr r1, _0806BFD0 @ =0x000004CC
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _0806BFE0
	ldr r2, _0806BFD4 @ =0x00013168
	adds r0, r3, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0806BFD8
	mov r0, ip
	ldr r4, [r0, #0x40]
	adds r2, r4, #0
	b _0806BFEC
	.align 2, 0
_0806BFCC: .4byte gEwramData
_0806BFD0: .4byte 0x000004CC
_0806BFD4: .4byte 0x00013168
_0806BFD8:
	ldr r2, [r0, #0x40]
	mov r1, ip
	ldr r4, [r1, #0x40]
	b _0806BFEC
_0806BFE0:
	ldr r2, _0806C008 @ =0x00013118
	adds r0, r3, r2
	ldr r0, [r0]
	ldr r2, [r0, #0x40]
_0806BFE8:
	mov r0, ip
	ldr r4, [r0, #0x40]
_0806BFEC:
	subs r0, r4, r2
	cmp r0, #0
	bge _0806C04C
	mov r2, ip
	adds r2, #0x3e
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806C010
	ldr r0, [r5]
	ldr r1, _0806C00C @ =0x00013110
	adds r0, r0, r1
	b _0806C03C
	.align 2, 0
_0806C008: .4byte 0x00013118
_0806C00C: .4byte 0x00013110
_0806C010:
	ldr r3, [r5]
	ldr r1, _0806C030 @ =0x000004CC
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806C038
	ldr r1, _0806C034 @ =0x00013168
	adds r0, r3, r1
	ldr r1, [r0]
	adds r0, r4, #0
	cmp r1, #0
	beq _0806C040
	ldr r0, [r1, #0x40]
	b _0806C040
	.align 2, 0
_0806C030: .4byte 0x000004CC
_0806C034: .4byte 0x00013168
_0806C038:
	ldr r1, _0806C048 @ =0x00013118
	adds r0, r3, r1
_0806C03C:
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
_0806C040:
	subs r0, r0, r4
	cmp r0, r6
	bls _0806C0A0
	b _0806C1A8
	.align 2, 0
_0806C048: .4byte 0x00013118
_0806C04C:
	mov r2, ip
	adds r2, #0x3e
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806C068
	ldr r0, [r5]
	ldr r1, _0806C064 @ =0x00013110
	adds r0, r0, r1
	b _0806C094
	.align 2, 0
_0806C064: .4byte 0x00013110
_0806C068:
	ldr r3, [r5]
	ldr r1, _0806C088 @ =0x000004CC
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806C090
	ldr r1, _0806C08C @ =0x00013168
	adds r0, r3, r1
	ldr r1, [r0]
	adds r0, r4, #0
	cmp r1, #0
	beq _0806C098
	ldr r0, [r1, #0x40]
	b _0806C098
	.align 2, 0
_0806C088: .4byte 0x000004CC
_0806C08C: .4byte 0x00013168
_0806C090:
	ldr r1, _0806C0B4 @ =0x00013118
	adds r0, r3, r1
_0806C094:
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
_0806C098:
	subs r0, r4, r0
	cmp r0, r6
	bls _0806C0A0
	b _0806C1A8
_0806C0A0:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806C0BC
	ldr r0, [r5]
	ldr r1, _0806C0B8 @ =0x00013110
	adds r0, r0, r1
	b _0806C0EC
	.align 2, 0
_0806C0B4: .4byte 0x00013118
_0806C0B8: .4byte 0x00013110
_0806C0BC:
	ldr r3, [r5]
	ldr r1, _0806C0E0 @ =0x000004CC
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806C0E8
	ldr r1, _0806C0E4 @ =0x00013168
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806C0EE
	mov r0, ip
	ldr r3, [r0, #0x44]
	adds r0, r3, #0
	b _0806C0F4
	.align 2, 0
_0806C0E0: .4byte 0x000004CC
_0806C0E4: .4byte 0x00013168
_0806C0E8:
	ldr r1, _0806C10C @ =0x00013118
	adds r0, r3, r1
_0806C0EC:
	ldr r0, [r0]
_0806C0EE:
	ldr r0, [r0, #0x44]
	mov r1, ip
	ldr r3, [r1, #0x44]
_0806C0F4:
	subs r0, r3, r0
	cmp r0, #0
	bge _0806C150
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806C114
	ldr r0, [r5]
	ldr r2, _0806C110 @ =0x00013110
	adds r0, r0, r2
	b _0806C140
	.align 2, 0
_0806C10C: .4byte 0x00013118
_0806C110: .4byte 0x00013110
_0806C114:
	ldr r2, [r5]
	ldr r1, _0806C134 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806C13C
	ldr r1, _0806C138 @ =0x00013168
	adds r0, r2, r1
	ldr r2, [r0]
	adds r0, r3, #0
	cmp r2, #0
	beq _0806C144
	ldr r0, [r2, #0x44]
	b _0806C144
	.align 2, 0
_0806C134: .4byte 0x000004CC
_0806C138: .4byte 0x00013168
_0806C13C:
	ldr r1, _0806C14C @ =0x00013118
	adds r0, r2, r1
_0806C140:
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
_0806C144:
	subs r0, r0, r3
	cmp r0, r6
	bls _0806C19E
	b _0806C1A8
	.align 2, 0
_0806C14C: .4byte 0x00013118
_0806C150:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806C168
	ldr r0, [r5]
	ldr r2, _0806C164 @ =0x00013110
	adds r0, r0, r2
	b _0806C194
	.align 2, 0
_0806C164: .4byte 0x00013110
_0806C168:
	ldr r2, [r5]
	ldr r1, _0806C188 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806C190
	ldr r1, _0806C18C @ =0x00013168
	adds r0, r2, r1
	ldr r2, [r0]
	adds r0, r3, #0
	cmp r2, #0
	beq _0806C198
	ldr r0, [r2, #0x44]
	b _0806C198
	.align 2, 0
_0806C188: .4byte 0x000004CC
_0806C18C: .4byte 0x00013168
_0806C190:
	ldr r1, _0806C1A4 @ =0x00013118
	adds r0, r2, r1
_0806C194:
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
_0806C198:
	subs r0, r3, r0
	cmp r0, r6
	bhi _0806C1A8
_0806C19E:
	movs r0, #1
	b _0806C1AA
	.align 2, 0
_0806C1A4: .4byte 0x00013118
_0806C1A8:
	movs r0, #0
_0806C1AA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0806C1B0
sub_0806C1B0: @ 0x0806C1B0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806C1DC
	ldr r1, _0806C1D4 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0806C1D8 @ =0x00013110
	b _0806C1E2
	.align 2, 0
_0806C1D4: .4byte gEwramData
_0806C1D8: .4byte 0x00013110
_0806C1DC:
	ldr r1, _0806C234 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0806C238 @ =0x00013168
_0806C1E2:
	adds r0, r0, r2
	ldr r3, [r0]
	adds r2, r1, #0
	mov r0, ip
	adds r0, #0x42
	lsrs r1, r7, #1
	ldrh r0, [r0]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, ip
	adds r0, #0x46
	lsrs r1, r6, #1
	ldrh r0, [r0]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, [r2]
	ldr r1, _0806C23C @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806C21A
	ldr r1, _0806C240 @ =0x00013118
	adds r0, r2, r1
	ldr r3, [r0]
_0806C21A:
	cmp r3, #0
	beq _0806C244
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r6, [sp]
	adds r0, r3, #0
	adds r3, r7, #0
	bl sub_08068AD4
	b _0806C246
	.align 2, 0
_0806C234: .4byte gEwramData
_0806C238: .4byte 0x00013168
_0806C23C: .4byte 0x000004CC
_0806C240: .4byte 0x00013118
_0806C244:
	movs r0, #0
_0806C246:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806C250
sub_0806C250: @ 0x0806C250
	push {r4, r5, r6, r7, lr}
	adds r1, r0, #0
	ldr r0, _0806C2A4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0806C2A8 @ =0x000143F4
	adds r3, r0, r2
	cmp r1, #0
	beq _0806C2C4
	subs r1, #4
	movs r0, #0
	strh r0, [r1]
	movs r5, #0
_0806C268:
	ldrh r4, [r3, #2]
	ldrh r0, [r3]
	adds r7, r4, #0
	cmp r0, #0
	bne _0806C2B0
	adds r1, r4, r5
	ldr r0, _0806C2AC @ =0x000001FF
	cmp r1, r0
	bgt _0806C2B0
	adds r1, r3, #0
	movs r2, #0
	movs r6, #0xff
	lsls r6, r6, #1
_0806C282:
	ldrh r0, [r1]
	cmp r0, #0
	bne _0806C298
	adds r0, r2, #1
	ldrh r1, [r1, #2]
	adds r2, r0, r1
	lsls r0, r2, #2
	adds r1, r3, r0
	adds r0, r5, r2
	cmp r0, r6
	ble _0806C282
_0806C298:
	adds r0, r7, #1
	cmp r2, r0
	ble _0806C2B0
	subs r0, r2, #1
	strh r0, [r3, #2]
	b _0806C2C4
	.align 2, 0
_0806C2A4: .4byte gEwramData
_0806C2A8: .4byte 0x000143F4
_0806C2AC: .4byte 0x000001FF
_0806C2B0:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, r5, r4
	lsls r0, r4, #2
	adds r3, r3, r0
	movs r0, #0xff
	lsls r0, r0, #1
	cmp r5, r0
	ble _0806C268
_0806C2C4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806C2CC
sub_0806C2CC: @ 0x0806C2CC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0806C328 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806C32C @ =0x000143F4
	adds r2, r0, r1
	movs r1, #0
	movs r7, #0xfe
	lsls r7, r7, #1
_0806C2E2:
	ldrh r3, [r2, #2]
	ldrh r4, [r2]
	cmp r4, #0
	bne _0806C334
	adds r0, r5, #2
	cmp r3, r0
	blt _0806C334
	adds r0, r1, #1
	strh r0, [r2]
	strh r5, [r2, #2]
	adds r0, r1, r5
	lsls r6, r5, #2
	cmp r0, r7
	bgt _0806C308
	adds r1, r2, r6
	strh r4, [r1, #4]
	subs r0, r3, r5
	subs r0, #1
	strh r0, [r1, #6]
_0806C308:
	adds r3, r2, #4
	str r4, [sp]
	ldr r2, _0806C330 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	str r3, [r2, #4]
	adds r0, r6, #0
	asrs r0, r0, #2
	movs r1, #0x85
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r3, #0
	b _0806C34A
	.align 2, 0
_0806C328: .4byte gEwramData
_0806C32C: .4byte 0x000143F4
_0806C330: .4byte 0x040000D4
_0806C334:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, r1, r3
	lsls r0, r3, #2
	adds r2, r2, r0
	movs r0, #0xff
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806C2E2
	movs r0, #0
_0806C34A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806C354
sub_0806C354: @ 0x0806C354
	push {r4, lr}
	sub sp, #4
	ldr r4, _0806C3D4 @ =gEwramData
	ldr r1, [r4]
	ldr r0, _0806C3D8 @ =0x000004C4
	adds r2, r1, r0
	ldr r0, _0806C3DC @ =0xFFFF8000
	str r0, [r2]
	adds r1, #0x92
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, [r4]
	ldr r0, _0806C3E0 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _0806C3E4 @ =0xFFBBF7FF
	ands r0, r2
	str r0, [r1]
	bl sub_08013D30
	bl sub_08013F38
	bl sub_0803D408
	cmp r0, #0
	bne _0806C38C
	bl sub_0803D270
_0806C38C:
	bl sub_0803D06C
	cmp r0, #0
	bne _0806C398
	bl sub_0803CED4
_0806C398:
	movs r0, #0
	bl sub_08034498
	bl sub_080220B4
	bl sub_08068F48
	ldr r2, [r4]
	ldr r1, _0806C3E8 @ =0x000143F4
	adds r2, r2, r1
	movs r3, #0
	str r3, [sp]
	ldr r0, _0806C3EC @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _0806C3F0 @ =0x85000200
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	strh r3, [r2]
	ldr r0, _0806C3F4 @ =0x000001FF
	strh r0, [r2, #2]
	bl sub_08012014
	bl sub_0800EB04
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806C3D4: .4byte gEwramData
_0806C3D8: .4byte 0x000004C4
_0806C3DC: .4byte 0xFFFF8000
_0806C3E0: .4byte 0x0000042C
_0806C3E4: .4byte 0xFFBBF7FF
_0806C3E8: .4byte 0x000143F4
_0806C3EC: .4byte 0x040000D4
_0806C3F0: .4byte 0x85000200
_0806C3F4: .4byte 0x000001FF

	thumb_func_start sub_0806C3F8
sub_0806C3F8: @ 0x0806C3F8
	push {r4, r5, lr}
	mov ip, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r2, ip
	adds r2, #0x64
	ldr r0, _0806C454 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0806C458 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	mov r0, ip
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r2, [r0, #5]
	adds r1, r2, #0
	ldr r3, [r0, #0xc]
	cmp r4, r2
	blt _0806C42C
	subs r4, r2, #1
_0806C42C:
	subs r1, r1, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, #0xc
	adds r3, r3, r0
	mov r2, ip
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806C45C
	movs r0, #0
	ldrsb r0, [r3, r0]
	rsbs r0, r0, #0
	ldrb r1, [r3, #6]
	subs r0, r0, r1
	b _0806C464
	.align 2, 0
_0806C454: .4byte gEwramData
_0806C458: .4byte 0x0001017C
_0806C45C:
	movs r0, #0
	ldrsb r0, [r3, r0]
	ldrb r1, [r3, #6]
	adds r0, r0, r1
_0806C464:
	strh r0, [r5]
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806C47C
	movs r0, #1
	ldrsb r0, [r3, r0]
	rsbs r0, r0, #0
	ldrb r1, [r3, #7]
	subs r0, r0, r1
	b _0806C484
_0806C47C:
	movs r0, #1
	ldrsb r0, [r3, r0]
	ldrb r3, [r3, #7]
	adds r0, r0, r3
_0806C484:
	strh r0, [r5, #2]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0806C48C
sub_0806C48C: @ 0x0806C48C
	push {r4, r5, lr}
	mov ip, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r2, ip
	adds r2, #0x64
	ldr r0, _0806C4E8 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0806C4EC @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	mov r0, ip
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r2, [r0, #5]
	adds r1, r2, #0
	ldr r3, [r0, #0xc]
	cmp r4, r2
	blt _0806C4C0
	subs r4, r2, #1
_0806C4C0:
	subs r1, r1, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, #0xc
	adds r3, r3, r0
	mov r2, ip
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806C4F0
	movs r1, #0
	ldrsb r1, [r3, r1]
	rsbs r1, r1, #0
	ldrb r0, [r3, #6]
	lsrs r0, r0, #1
	subs r1, r1, r0
	b _0806C4FA
	.align 2, 0
_0806C4E8: .4byte gEwramData
_0806C4EC: .4byte 0x0001017C
_0806C4F0:
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldrb r0, [r3, #6]
	lsrs r0, r0, #1
	adds r1, r1, r0
_0806C4FA:
	strh r1, [r5]
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806C514
	movs r1, #1
	ldrsb r1, [r3, r1]
	rsbs r1, r1, #0
	ldrb r0, [r3, #7]
	lsrs r0, r0, #1
	subs r1, r1, r0
	b _0806C51E
_0806C514:
	movs r1, #1
	ldrsb r1, [r3, r1]
	ldrb r0, [r3, #7]
	lsrs r0, r0, #1
	adds r1, r1, r0
_0806C51E:
	strh r1, [r5, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806C528
sub_0806C528: @ 0x0806C528
	push {r4, r5, lr}
	mov ip, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r2, ip
	adds r2, #0x64
	ldr r0, _0806C580 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0806C584 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	mov r0, ip
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r2, [r0, #5]
	adds r1, r2, #0
	ldr r3, [r0, #0xc]
	cmp r4, r2
	blt _0806C55C
	subs r4, r2, #1
_0806C55C:
	subs r1, r1, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, #0xc
	adds r3, r3, r0
	mov r2, ip
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806C588
	movs r0, #0
	ldrsb r0, [r3, r0]
	rsbs r0, r0, #0
	b _0806C58C
	.align 2, 0
_0806C580: .4byte gEwramData
_0806C584: .4byte 0x0001017C
_0806C588:
	movs r0, #0
	ldrsb r0, [r3, r0]
_0806C58C:
	strh r0, [r5]
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806C5A0
	movs r0, #1
	ldrsb r0, [r3, r0]
	rsbs r0, r0, #0
	b _0806C5A4
_0806C5A0:
	movs r0, #1
	ldrsb r0, [r3, r0]
_0806C5A4:
	strh r0, [r5, #2]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0806C5AC
sub_0806C5AC: @ 0x0806C5AC
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r1, #0x4f
	ldr r0, [r5, #0x48]
	muls r0, r1, r0
	movs r1, #0x50
	bl __divsi3
	movs r2, #0x80
	lsls r2, r2, #0xc
	ldr r1, [r5, #0x50]
	adds r0, r0, r1
	str r0, [r5, #0x48]
	cmp r1, #0
	blt _0806C5D4
	cmp r0, r2
	ble _0806C5DC
	str r2, [r5, #0x48]
	b _0806C5DC
_0806C5D4:
	ldr r1, _0806C5F0 @ =0xFFF80000
	cmp r0, r1
	bge _0806C5DC
	str r1, [r5, #0x48]
_0806C5DC:
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	cmp r1, #0
	blt _0806C5F4
	cmp r0, r2
	ble _0806C5FC
	str r2, [r5, #0x4c]
	b _0806C5FC
	.align 2, 0
_0806C5F0: .4byte 0xFFF80000
_0806C5F4:
	ldr r1, _0806C6DC @ =0xFFF80000
	cmp r0, r1
	bge _0806C5FC
	str r1, [r5, #0x4c]
_0806C5FC:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0806C62A
	add r4, sp, #4
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806C48C
	add r0, sp, #4
	ldrh r0, [r0]
	strh r0, [r5, #0x18]
	ldrh r0, [r4, #2]
	adds r0, #4
	strh r0, [r5, #0x1a]
_0806C62A:
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0806C6E0 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _0806C6E4 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r3, #0x18
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	movs r3, #0x1a
	ldrsh r2, [r5, r3]
	adds r1, r1, r2
	bl sub_080020A0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806C6F4
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	movs r1, #0x1a
	ldrsh r2, [r5, r1]
	lsls r2, r2, #0x10
	ldr r1, [r5, #0x44]
	adds r1, r1, r2
	ldr r2, _0806C6E8 @ =0xFFFC0000
	adds r1, r1, r2
	movs r2, #4
	movs r3, #6
	bl sub_08045CEC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806C6C4
	movs r0, #1
	strb r0, [r4, #0xf]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_0802D5EC
	adds r1, r0, #0
	ldr r3, _0806C6EC @ =0xFFFFC000
	adds r0, r1, r3
	str r0, [r4, #0x4c]
	cmp r0, #0
	bge _0806C6A6
	ldr r2, _0806C6F0 @ =0xFFFFC01F
	adds r0, r1, r2
_0806C6A6:
	asrs r0, r0, #5
	str r0, [r4, #0x54]
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_0802D5EC
	ldr r1, [r5, #0x48]
	subs r0, r0, r1
	str r0, [r4, #0x48]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0806C6C0
	adds r0, #0x3f
_0806C6C0:
	asrs r0, r0, #6
	str r0, [r4, #0x50]
_0806C6C4:
	movs r0, #0xb1
	lsls r0, r0, #1
	bl PlaySong
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _0806C718
	.align 2, 0
_0806C6DC: .4byte 0xFFF80000
_0806C6E0: .4byte gEwramData
_0806C6E4: .4byte 0x0000A094
_0806C6E8: .4byte 0xFFFC0000
_0806C6EC: .4byte 0xFFFFC000
_0806C6F0: .4byte 0xFFFFC01F
_0806C6F4:
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r3, #0x98
	lsls r3, r3, #1
	movs r0, #0xe0
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_08068AD4
	cmp r0, #0
	bne _0806C718
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0806C718:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0806C720
sub_0806C720: @ 0x0806C720
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x42
	ldr r0, _0806C76C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _0806C770 @ =0x0000A094
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r2, r4, #0
	adds r2, #0x46
	ldrh r0, [r1, #0xa]
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0x27
	ldr r0, [r4, #0x48]
	muls r0, r1, r0
	movs r1, #0x28
	bl __divsi3
	movs r2, #0x80
	lsls r2, r2, #0xc
	ldr r1, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	cmp r1, #0
	blt _0806C774
	cmp r0, r2
	ble _0806C77C
	str r2, [r4, #0x48]
	b _0806C77C
	.align 2, 0
_0806C76C: .4byte gEwramData
_0806C770: .4byte 0x0000A094
_0806C774:
	ldr r1, _0806C790 @ =0xFFF80000
	cmp r0, r1
	bge _0806C77C
	str r1, [r4, #0x48]
_0806C77C:
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x54]
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	cmp r1, #0
	blt _0806C794
	cmp r0, r2
	ble _0806C79C
	str r2, [r4, #0x4c]
	b _0806C79C
	.align 2, 0
_0806C790: .4byte 0xFFF80000
_0806C794:
	ldr r1, _0806C7EC @ =0xFFF80000
	cmp r0, r1
	bge _0806C79C
	str r1, [r4, #0x4c]
_0806C79C:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080020A0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806C822
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08001F3C
	cmp r0, #0
	bne _0806C7F4
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	ldr r2, _0806C7F0 @ =0xFFFC0000
	adds r1, r1, r2
	movs r2, #0
	movs r3, #7
	bl sub_08045CEC
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _0806C822
	.align 2, 0
_0806C7EC: .4byte 0xFFF80000
_0806C7F0: .4byte 0xFFFC0000
_0806C7F4:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #2
	bl sub_08001E58
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _0806C816
	ldr r0, [r4, #0x40]
	lsls r2, r2, #0x10
	ldr r1, [r4, #0x44]
	adds r1, r1, r2
	movs r2, #0xb
	movs r3, #6
	bl sub_08045CEC
_0806C816:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0806C822:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0806C828
sub_0806C828: @ 0x0806C828
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	str r1, [sp]
	str r3, [sp, #8]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r8, r0
	adds r5, r1, #0
	adds r5, #8
	movs r3, #0
	str r3, [sp, #0xc]
	mov sl, r3
	adds r0, r7, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xc
	ldr r0, [r7, #0x48]
	ldr r1, [r7, #0x50]
	adds r0, r0, r1
	str r0, [r7, #0x48]
	cmp r1, #0
	blt _0806C87C
	cmp r0, r3
	ble _0806C884
	str r3, [r7, #0x48]
	b _0806C884
_0806C87C:
	ldr r1, _0806C8CC @ =0xFFF80000
	cmp r0, r1
	bge _0806C884
	str r1, [r7, #0x48]
_0806C884:
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	cmp r1, #0
	bge _0806C8F4
	movs r4, #0
	adds r0, r7, #0
	adds r0, #0x3f
	str r0, [sp, #0x10]
	cmp r4, r8
	bge _0806C930
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
_0806C8A6:
	ldr r1, [sp]
	movs r2, #6
	ldrsh r0, [r1, r2]
	mov r3, sb
	subs r0, r3, r0
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r1, r6, r1
	bl sub_0800207C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0806C8D0
	adds r5, #2
	adds r4, #1
	cmp r4, r8
	blt _0806C8A6
	b _0806C930
	.align 2, 0
_0806C8CC: .4byte 0xFFF80000
_0806C8D0:
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x40]
	adds r1, r1, r0
	str r1, [r7, #0x40]
	movs r0, #1
	mov r3, sl
	orrs r3, r0
	mov sl, r3
	b _0806C930
_0806C8E2:
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x40]
	adds r1, r1, r0
	str r1, [r7, #0x40]
	movs r0, #2
	mov r4, sl
	orrs r4, r0
	mov sl, r4
	b _0806C930
_0806C8F4:
	adds r0, r7, #0
	adds r0, #0x3f
	str r0, [sp, #0x10]
	cmp r1, #0
	ble _0806C930
	movs r4, #0
	cmp r4, r8
	bge _0806C930
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
_0806C90E:
	ldr r1, [sp]
	movs r2, #6
	ldrsh r0, [r1, r2]
	add r0, sb
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r1, r6, r1
	bl sub_08002058
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0806C8E2
	adds r5, #2
	adds r4, #1
	cmp r4, r8
	blt _0806C90E
_0806C930:
	movs r2, #0x80
	lsls r2, r2, #0xc
	ldr r0, [r7, #0x4c]
	ldr r1, [r7, #0x54]
	adds r0, r0, r1
	str r0, [r7, #0x4c]
	cmp r1, #0
	blt _0806C948
	cmp r0, r2
	ble _0806C950
	str r2, [r7, #0x4c]
	b _0806C950
_0806C948:
	ldr r1, _0806C9AC @ =0xFFF80000
	cmp r0, r1
	bge _0806C950
	str r1, [r7, #0x4c]
_0806C950:
	ldr r0, [r7, #0x44]
	ldr r1, [r7, #0x4c]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	adds r0, r7, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r5, #0
	ldr r4, [sp, #0x10]
	strb r5, [r4]
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	bge _0806C9B0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp]
	movs r4, #2
	ldrsh r2, [r3, r4]
	adds r1, r1, r2
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0806C996
	b _0806CADC
_0806C996:
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	str r1, [r7, #0x44]
	movs r0, #4
	mov r1, sl
	orrs r1, r0
	mov sl, r1
	str r5, [r7, #0x4c]
	b _0806CADC
	.align 2, 0
_0806C9AC: .4byte 0xFFF80000
_0806C9B0:
	adds r0, r7, #0
	adds r0, #0x4e
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bne _0806C9C0
	ldr r4, [sp, #4]
	str r4, [sp, #0xc]
_0806C9C0:
	lsls r6, r6, #0x10
	asrs r0, r6, #0x10
	lsls r5, r2, #0x10
	asrs r1, r5, #0x10
	ldr r3, [sp]
	movs r4, #4
	ldrsh r2, [r3, r4]
	adds r1, r1, r2
	ldr r2, [sp, #0xc]
	lsls r4, r2, #0x10
	asrs r2, r4, #0x10
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r3, #2
	ldr r0, [sp, #8]
	ands r0, r3
	cmp r0, #0
	beq _0806CA30
	ldr r0, _0806CA1C @ =gUnk_03002CB0
	ldr r1, _0806CA20 @ =0x0000100D
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #0
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _0806CA06
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	beq _0806CA2C
_0806CA06:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0806CA24
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _0806CA26
	movs r0, #2
	b _0806CA26
	.align 2, 0
_0806CA1C: .4byte gUnk_03002CB0
_0806CA20: .4byte 0x0000100D
_0806CA24:
	movs r0, #0
_0806CA26:
	cmp r0, #1
	beq _0806CA2C
	movs r1, #1
_0806CA2C:
	cmp r1, #0
	beq _0806CADC
_0806CA30:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0806CADC
	asrs r1, r4, #0x10
	adds r1, r0, r1
	lsls r1, r1, #0x10
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	movs r0, #8
	mov r3, sl
	orrs r3, r0
	mov sl, r3
	movs r0, #0
	str r0, [r7, #0x4c]
	ldr r0, _0806CA94 @ =gUnk_03002CB0
	ldr r4, _0806CA98 @ =0x0000100D
	adds r0, r0, r4
	ldrb r1, [r0]
	ldr r2, [sp, #0x10]
	strb r1, [r2]
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0806CAA4
	movs r0, #0x10
	orrs r3, r0
	mov sl, r3
	ldr r2, [r7, #0x48]
	cmp r2, #0
	ble _0806CA7C
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0806CA88
_0806CA7C:
	cmp r2, #0
	bge _0806CA9C
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0806CA9C
_0806CA88:
	movs r0, #0x40
	mov r3, sl
	orrs r3, r0
	mov sl, r3
	b _0806CAA4
	.align 2, 0
_0806CA94: .4byte gUnk_03002CB0
_0806CA98: .4byte 0x0000100D
_0806CA9C:
	movs r0, #0x20
	mov r4, sl
	orrs r4, r0
	mov sl, r4
_0806CAA4:
	movs r0, #1
	ldr r1, [sp, #8]
	ands r0, r1
	cmp r0, #0
	beq _0806CADC
	asrs r0, r6, #0x10
	asrs r1, r5, #0x10
	ldr r3, [sp]
	movs r4, #4
	ldrsh r2, [r3, r4]
	adds r1, r1, r2
	bl sub_08001D94
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0806CADC
	ldr r0, _0806CAF0 @ =gUnk_03002CB0
	ldr r1, _0806CAF4 @ =0x0000100D
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0806CADC
	movs r0, #0x10
	mov r2, sl
	orrs r2, r0
	mov sl, r2
_0806CADC:
	mov r0, sl
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806CAF0: .4byte gUnk_03002CB0
_0806CAF4: .4byte 0x0000100D

	thumb_func_start sub_0806CAF8
sub_0806CAF8: @ 0x0806CAF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	str r2, [sp]
	adds r6, r3, #0
	ldr r7, [r4, #0x40]
	ldr r0, [r4, #0x44]
	mov r8, r0
	movs r1, #0
	mov sl, r1
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _0806CB2E
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0806CB2E
	adds r0, r4, #0
	bl sub_0806BC40
_0806CB2E:
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	bne _0806CB4A
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806CB4A
	rsbs r0, r5, #0
	str r0, [r4, #0x48]
	b _0806CB4C
_0806CB4A:
	str r5, [r4, #0x48]
_0806CB4C:
	movs r0, #8
	ands r0, r6
	cmp r0, #0
	beq _0806CB9E
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r2, [r0]
	movs r0, #0xc0
	ands r0, r2
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806CB9E
	lsrs r3, r0, #0x1e
	ldr r1, [r4, #0x48]
	cmp r1, #0
	ble _0806CB74
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _0806CB80
_0806CB74:
	cmp r1, #0
	bge _0806CB9E
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _0806CB9E
_0806CB80:
	cmp r3, #1
	beq _0806CB8A
	cmp r3, #2
	beq _0806CB92
	b _0806CB9E
_0806CB8A:
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	b _0806CB9C
_0806CB92:
	adds r0, r1, #0
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #1
_0806CB9C:
	str r0, [r4, #0x48]
_0806CB9E:
	movs r2, #0x10
	mov sb, r2
	adds r5, r6, #0
	ands r5, r2
	cmp r5, #0
	beq _0806CBB2
	movs r0, #1
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_0806CBB2:
	movs r0, #0x20
	ands r0, r6
	cmp r0, #0
	beq _0806CBC2
	movs r0, #2
	mov r2, sl
	orrs r2, r0
	mov sl, r2
_0806CBC2:
	adds r0, r4, #0
	ldr r1, [sp]
	movs r2, #4
	mov r3, sl
	bl sub_0806C828
	adds r1, r0, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0806CBE4
	str r7, [r4, #0x40]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0806CBF8
	b _0806CBF4
_0806CBE4:
	cmp r5, #0
	beq _0806CBF8
	adds r0, r1, #0
	mov r2, sb
	ands r0, r2
	cmp r0, #0
	beq _0806CBF8
	str r7, [r4, #0x40]
_0806CBF4:
	mov r0, r8
	str r0, [r4, #0x44]
_0806CBF8:
	movs r0, #4
	ands r0, r6
	cmp r0, #0
	beq _0806CC0E
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0806CC0E
	str r7, [r4, #0x40]
	mov r2, r8
	str r2, [r4, #0x44]
_0806CC0E:
	adds r0, r1, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0806CC20
sub_0806CC20: @ 0x0806CC20
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0806CC9C @ =0x080E9644
	adds r0, r0, r1
	movs r1, #0x20
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0806CC46
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r4, #0
	bl sub_0806E4F8
_0806CC46:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0806CC98
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
	beq _0806CCA8
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
	beq _0806CC8E
	adds r0, r4, #0
	bl sub_08021924
_0806CC8E:
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	bne _0806CCA0
_0806CC98:
	movs r0, #0
	b _0806CCAA
	.align 2, 0
_0806CC9C: .4byte 0x080E9644
_0806CCA0:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
_0806CCA8:
	movs r0, #1
_0806CCAA:
	add sp, #0x14
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CCB4
sub_0806CCB4: @ 0x0806CCB4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
_0806CCBA:
	bl RandomNumberGenerator
	adds r1, r5, #0
	bl __umodsi3
	cmp r0, r4
	blo _0806CCBA
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CCD0
sub_0806CCD0: @ 0x0806CCD0
	push {lr}
	adds r2, r0, #0
	adds r2, #0x20
	movs r1, #0
	strb r1, [r2]
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806CCE8
sub_0806CCE8: @ 0x0806CCE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	bl sub_0803B9D0
	ldr r0, _0806CD34 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806CD2A
	ldr r5, [r7, #0x40]
	ldr r0, [r7, #0x44]
	mov r8, r0
	adds r4, r7, #0
	adds r4, #0x5c
	ldrb r6, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, r1
	str r0, [r7, #0x40]
	movs r0, #0x1d
	strb r0, [r4]
	adds r0, r7, #0
	bl sub_0803B9D0
	str r5, [r7, #0x40]
	mov r0, r8
	str r0, [r7, #0x44]
	strb r6, [r4]
_0806CD2A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806CD34: .4byte gEwramData

	thumb_func_start sub_0806CD38
sub_0806CD38: @ 0x0806CD38
	push {lr}
	adds r3, r0, #0
	ldr r0, _0806CD5C @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806CD60 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806CD68
	ldr r1, _0806CD64 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806CD6E
	ldr r0, [r3, #0x40]
	b _0806CD70
	.align 2, 0
_0806CD5C: .4byte gEwramData
_0806CD60: .4byte 0x000004CC
_0806CD64: .4byte 0x00013168
_0806CD68:
	ldr r1, _0806CD74 @ =0x00013118
	adds r0, r2, r1
	ldr r0, [r0]
_0806CD6E:
	ldr r0, [r0, #0x40]
_0806CD70:
	pop {r1}
	bx r1
	.align 2, 0
_0806CD74: .4byte 0x00013118

	thumb_func_start sub_0806CD78
sub_0806CD78: @ 0x0806CD78
	push {lr}
	adds r3, r0, #0
	ldr r0, _0806CD9C @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806CDA0 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806CDA8
	ldr r1, _0806CDA4 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806CDAE
	ldr r0, [r3, #0x44]
	b _0806CDB0
	.align 2, 0
_0806CD9C: .4byte gEwramData
_0806CDA0: .4byte 0x000004CC
_0806CDA4: .4byte 0x00013168
_0806CDA8:
	ldr r1, _0806CDB4 @ =0x00013118
	adds r0, r2, r1
	ldr r0, [r0]
_0806CDAE:
	ldr r0, [r0, #0x44]
_0806CDB0:
	pop {r1}
	bx r1
	.align 2, 0
_0806CDB4: .4byte 0x00013118

	thumb_func_start sub_0806CDB8
sub_0806CDB8: @ 0x0806CDB8
	push {lr}
	adds r3, r0, #0
	ldr r0, _0806CDDC @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806CDE0 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806CDE8
	ldr r1, _0806CDE4 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806CDEE
	adds r0, r3, #0
	b _0806CDEE
	.align 2, 0
_0806CDDC: .4byte gEwramData
_0806CDE0: .4byte 0x000004CC
_0806CDE4: .4byte 0x00013168
_0806CDE8:
	ldr r1, _0806CDF8 @ =0x00013118
	adds r0, r2, r1
	ldr r0, [r0]
_0806CDEE:
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	pop {r1}
	bx r1
	.align 2, 0
_0806CDF8: .4byte 0x00013118

	thumb_func_start sub_0806CDFC
sub_0806CDFC: @ 0x0806CDFC
	push {lr}
	adds r3, r0, #0
	ldr r0, _0806CE20 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806CE24 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806CE2C
	ldr r1, _0806CE28 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806CE32
	adds r0, r3, #0
	b _0806CE32
	.align 2, 0
_0806CE20: .4byte gEwramData
_0806CE24: .4byte 0x000004CC
_0806CE28: .4byte 0x00013168
_0806CE2C:
	ldr r1, _0806CE3C @ =0x00013118
	adds r0, r2, r1
	ldr r0, [r0]
_0806CE32:
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	pop {r1}
	bx r1
	.align 2, 0
_0806CE3C: .4byte 0x00013118

	thumb_func_start sub_0806CE40
sub_0806CE40: @ 0x0806CE40
	push {lr}
	ldr r0, _0806CE64 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806CE68 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806CE70
	ldr r1, _0806CE6C @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806CE76
	movs r0, #0
	b _0806CE78
	.align 2, 0
_0806CE64: .4byte gEwramData
_0806CE68: .4byte 0x000004CC
_0806CE6C: .4byte 0x00013168
_0806CE70:
	ldr r1, _0806CE7C @ =0x00013118
	adds r0, r2, r1
	ldr r0, [r0]
_0806CE76:
	ldr r0, [r0, #0x48]
_0806CE78:
	pop {r1}
	bx r1
	.align 2, 0
_0806CE7C: .4byte 0x00013118

	thumb_func_start sub_0806CE80
sub_0806CE80: @ 0x0806CE80
	push {lr}
	ldr r0, _0806CEA4 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806CEA8 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806CEB0
	ldr r1, _0806CEAC @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806CEB6
	movs r0, #0
	b _0806CEB8
	.align 2, 0
_0806CEA4: .4byte gEwramData
_0806CEA8: .4byte 0x000004CC
_0806CEAC: .4byte 0x00013168
_0806CEB0:
	ldr r1, _0806CEBC @ =0x00013118
	adds r0, r2, r1
	ldr r0, [r0]
_0806CEB6:
	ldr r0, [r0, #0x4c]
_0806CEB8:
	pop {r1}
	bx r1
	.align 2, 0
_0806CEBC: .4byte 0x00013118

	thumb_func_start sub_0806CEC0
sub_0806CEC0: @ 0x0806CEC0
	push {lr}
	adds r1, r0, #0
	ldr r0, _0806CEDC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0806CEE0 @ =0x00013168
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0806CEE4
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	b _0806CEF2
	.align 2, 0
_0806CEDC: .4byte gEwramData
_0806CEE0: .4byte 0x00013168
_0806CEE4:
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r1, [r0]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	eors r0, r1
_0806CEF2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CEF8
sub_0806CEF8: @ 0x0806CEF8
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r0, _0806CF1C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806CF20 @ =0x00013168
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0806CF16
	adds r0, r2, #0
	bl sub_080689F8
	cmp r0, r4
	bls _0806CF24
_0806CF16:
	movs r0, #0
	b _0806CF26
	.align 2, 0
_0806CF1C: .4byte gEwramData
_0806CF20: .4byte 0x00013168
_0806CF24:
	movs r0, #1
_0806CF26:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0806CF2C
sub_0806CF2C: @ 0x0806CF2C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806CF60 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806CF64 @ =0x00013168
	adds r0, r2, r1
	ldr r3, [r0]
	ldr r1, _0806CF68 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806CF4E
	ldr r1, _0806CF6C @ =0x00013118
	adds r0, r2, r1
	ldr r3, [r0]
_0806CF4E:
	cmp r3, #0
	bne _0806CF70
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	b _0806CF8C
	.align 2, 0
_0806CF60: .4byte gEwramData
_0806CF64: .4byte 0x00013168
_0806CF68: .4byte 0x000004CC
_0806CF6C: .4byte 0x00013118
_0806CF70:
	adds r0, r4, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r3, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0806CF8A
	movs r0, #1
	b _0806CF8C
_0806CF8A:
	movs r0, #0
_0806CF8C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CF94
sub_0806CF94: @ 0x0806CF94
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806CFC8 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806CFCC @ =0x00013168
	adds r0, r2, r1
	ldr r3, [r0]
	ldr r1, _0806CFD0 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806CFB6
	ldr r1, _0806CFD4 @ =0x00013118
	adds r0, r2, r1
	ldr r3, [r0]
_0806CFB6:
	cmp r3, #0
	bne _0806CFD8
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #1
	ands r0, r1
	b _0806CFF4
	.align 2, 0
_0806CFC8: .4byte gEwramData
_0806CFCC: .4byte 0x00013168
_0806CFD0: .4byte 0x000004CC
_0806CFD4: .4byte 0x00013118
_0806CFD8:
	adds r0, r4, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r3, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0806CFF2
	movs r0, #1
	b _0806CFF4
_0806CFF2:
	movs r0, #0
_0806CFF4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806CFFC
sub_0806CFFC: @ 0x0806CFFC
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, _0806D030 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806D034 @ =0x00013168
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0806D038
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	str r3, [sp]
	adds r3, r6, #0
	bl sub_08068AD4
	b _0806D03A
	.align 2, 0
_0806D030: .4byte gEwramData
_0806D034: .4byte 0x00013168
_0806D038:
	movs r0, #0
_0806D03A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D044
sub_0806D044: @ 0x0806D044
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806CD38
	ldr r1, [r4, #0x40]
	subs r0, r0, r1
	cmp r0, #0
	bge _0806D064
	adds r0, r4, #0
	bl sub_0806CD38
	ldr r1, [r4, #0x40]
	subs r1, r1, r0
	asrs r1, r1, #0x10
	rsbs r5, r1, #0
	b _0806D070
_0806D064:
	adds r0, r4, #0
	bl sub_0806CD38
	ldr r1, [r4, #0x40]
	subs r0, r0, r1
	asrs r5, r0, #0x10
_0806D070:
	adds r0, r5, #0
	muls r0, r5, r0
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_0806CD78
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	cmp r0, #0
	bge _0806D094
	adds r0, r4, #0
	bl sub_0806CD78
	ldr r1, [r4, #0x44]
	subs r1, r1, r0
	asrs r1, r1, #0x10
	rsbs r0, r1, #0
	b _0806D0A0
_0806D094:
	adds r0, r4, #0
	bl sub_0806CD78
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	asrs r0, r0, #0x10
_0806D0A0:
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r5, r0
	bl Sqrt
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D0B8
sub_0806D0B8: @ 0x0806D0B8
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0806D0EE
	adds r1, r4, #1
	adds r0, r5, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _0806D0EA
	movs r0, #0
	b _0806D0FC
_0806D0EA:
	movs r0, #1
	b _0806D0FC
_0806D0EE:
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	bne _0806D0FA
	movs r0, #2
	b _0806D0FC
_0806D0FA:
	movs r0, #3
_0806D0FC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D104
sub_0806D104: @ 0x0806D104
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _0806D122
	movs r0, #0
	b _0806D124
_0806D122:
	movs r0, #1
_0806D124:
	pop {r1}
	bx r1

	thumb_func_start sub_0806D128
sub_0806D128: @ 0x0806D128
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, _0806D178 @ =0x08118D08
	mov r0, sp
	movs r2, #0x1c
	bl memcpy
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r4, r4, #2
	mov r2, sp
	adds r0, r2, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmn r1, r0
	blt _0806D17C
	adds r0, #0xf0
	cmp r1, r0
	bgt _0806D17C
	adds r0, r5, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r0, sp
	adds r0, #2
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmn r1, r0
	blt _0806D17C
	adds r0, #0xa0
	cmp r1, r0
	bgt _0806D17C
	movs r0, #0
	b _0806D17E
	.align 2, 0
_0806D178: .4byte 0x08118D08
_0806D17C:
	movs r0, #1
_0806D17E:
	add sp, #0x1c
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D188
sub_0806D188: @ 0x0806D188
	push {r4, r5, lr}
	adds r4, r1, #0
	ldr r1, _0806D1B4 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _0806D1B8 @ =0x0000A094
	adds r1, r1, r2
	ldr r3, [r1]
	adds r0, #0x42
	movs r5, #0
	ldrsh r2, [r0, r5]
	movs r5, #6
	ldrsh r0, [r1, r5]
	adds r2, r2, r0
	cmp r2, #0
	bge _0806D1A8
	adds r2, #7
_0806D1A8:
	asrs r2, r2, #3
	ldrb r0, [r3]
	cmp r0, #1
	beq _0806D1BC
	lsls r0, r0, #5
	b _0806D1BE
	.align 2, 0
_0806D1B4: .4byte gEwramData
_0806D1B8: .4byte 0x0000A094
_0806D1BC:
	movs r0, #0x1e
_0806D1BE:
	cmp r2, r4
	bge _0806D1C6
	movs r0, #1
	b _0806D1D2
_0806D1C6:
	subs r0, r0, r4
	cmp r2, r0
	bgt _0806D1D0
	movs r0, #0
	b _0806D1D2
_0806D1D0:
	movs r0, #2
_0806D1D2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806D1D8
sub_0806D1D8: @ 0x0806D1D8
	push {lr}
	adds r2, r1, #0
	adds r3, r0, #0
	adds r3, #0x58
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806D1F4
	ldr r0, [r2, #8]
	ldr r1, [r2]
	adds r0, r0, r1
	rsbs r0, r0, #0
	str r0, [r2]
_0806D1F4:
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806D208
	ldr r0, [r2, #0xc]
	ldr r1, [r2, #4]
	adds r0, r0, r1
	rsbs r0, r0, #0
	str r0, [r2, #4]
_0806D208:
	pop {r0}
	bx r0

	thumb_func_start sub_0806D20C
sub_0806D20C: @ 0x0806D20C
	push {lr}
	adds r2, r1, #0
	adds r3, r0, #0
	adds r3, #0x58
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806D22A
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #2]
	adds r0, r0, r1
	rsbs r0, r0, #0
	strb r0, [r2]
_0806D22A:
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806D240
	movs r0, #1
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #3]
	adds r0, r0, r1
	rsbs r0, r0, #0
	strb r0, [r2, #3]
_0806D240:
	pop {r0}
	bx r0

	thumb_func_start sub_0806D244
sub_0806D244: @ 0x0806D244
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	movs r1, #8
	adds r2, r5, #0
	bl sub_0804277C
	adds r0, r4, #0
	bl sub_0806B1FC
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0806D260
sub_0806D260: @ 0x0806D260
	push {lr}
	ldr r0, [r0, #0x68]
	ldr r1, [r0, #4]
	movs r3, #0
	ldrh r0, [r0]
	cmp r3, r0
	bge _0806D282
	adds r2, r1, #0
	adds r1, r0, #0
_0806D272:
	ldrb r0, [r2, #4]
	cmp r0, r3
	ble _0806D27A
	adds r3, r0, #0
_0806D27A:
	adds r2, #0x10
	subs r1, #1
	cmp r1, #0
	bne _0806D272
_0806D282:
	adds r0, r3, #0
	pop {r1}
	bx r1

	thumb_func_start sub_0806D288
sub_0806D288: @ 0x0806D288
	push {lr}
	movs r3, #0x80
	lsls r3, r3, #0xc
	bl sub_080698A8
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D298
sub_0806D298: @ 0x0806D298
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r5, r2, #0
	ldr r0, _0806D2BC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806D2C0 @ =0x0000A094
	adds r2, r0, r1
	ldr r1, [r4, #0x40]
	ldr r0, [r2, #4]
	adds r1, r1, r0
	subs r0, r3, r1
	cmp r0, #0
	bge _0806D2C4
	subs r0, r1, r3
	asrs r0, r0, #0x10
	rsbs r3, r0, #0
	b _0806D2C6
	.align 2, 0
_0806D2BC: .4byte gEwramData
_0806D2C0: .4byte 0x0000A094
_0806D2C4:
	asrs r3, r0, #0x10
_0806D2C6:
	adds r0, r3, #0
	muls r0, r3, r0
	adds r3, r0, #0
	ldr r1, [r4, #0x44]
	ldr r0, [r2, #8]
	adds r1, r1, r0
	subs r0, r5, r1
	cmp r0, #0
	bge _0806D2E0
	subs r0, r1, r5
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0806D2E2
_0806D2E0:
	asrs r0, r0, #0x10
_0806D2E2:
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r3, r0
	bl Sqrt
	lsls r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D2F8
sub_0806D2F8: @ 0x0806D2F8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r5, r0
	bne _0806D31C
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	str r0, [r6, #0x48]
	adds r0, r4, #0
	bl sub_080009E4
	b _0806D33A
_0806D31C:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	adds r1, r5, #0
	bl sub_0803E86C
	str r0, [r6, #0x48]
	adds r0, r4, #0
	bl sub_080009E4
	adds r1, r5, #0
	bl sub_0803E86C
_0806D33A:
	str r0, [r6, #0x4c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806D344
sub_0806D344: @ 0x0806D344
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0806D35C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806D384
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0806D35C
sub_0806D35C: @ 0x0806D35C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x48]
	ldr r3, [r2, #0x50]
	adds r0, r0, r3
	str r0, [r2, #0x48]
	cmp r1, #0
	beq _0806D37E
	cmp r3, #0
	blt _0806D376
	cmp r0, r1
	ble _0806D37E
	b _0806D37C
_0806D376:
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0806D37E
_0806D37C:
	str r1, [r2, #0x48]
_0806D37E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806D384
sub_0806D384: @ 0x0806D384
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x4c]
	ldr r3, [r2, #0x54]
	adds r0, r0, r3
	str r0, [r2, #0x4c]
	cmp r1, #0
	beq _0806D3A6
	cmp r3, #0
	blt _0806D39E
	cmp r0, r1
	ble _0806D3A6
	b _0806D3A4
_0806D39E:
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0806D3A6
_0806D3A4:
	str r1, [r2, #0x4c]
_0806D3A6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806D3AC
sub_0806D3AC: @ 0x0806D3AC
	ldr r1, [r0, #0x40]
	ldr r2, [r0, #0x48]
	adds r1, r1, r2
	str r1, [r0, #0x40]
	ldr r1, [r0, #0x44]
	ldr r2, [r0, #0x4c]
	adds r1, r1, r2
	str r1, [r0, #0x44]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D3C0
sub_0806D3C0: @ 0x0806D3C0
	ldr r1, [r0, #0x40]
	ldr r2, [r0, #0x48]
	adds r1, r1, r2
	str r1, [r0, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D3CC
sub_0806D3CC: @ 0x0806D3CC
	ldr r1, [r0, #0x44]
	ldr r2, [r0, #0x4c]
	adds r1, r1, r2
	str r1, [r0, #0x44]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D3D8
sub_0806D3D8: @ 0x0806D3D8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x48]
	ldr r3, [r2, #0x50]
	adds r0, r0, r3
	str r0, [r2, #0x48]
	cmp r1, #0
	beq _0806D3FC
	cmp r3, #0
	blt _0806D3F4
	cmp r0, r1
	ble _0806D3FC
	str r1, [r2, #0x48]
	b _0806D3FC
_0806D3F4:
	rsbs r3, r1, #0
	cmp r0, r3
	bge _0806D3FC
	str r3, [r2, #0x48]
_0806D3FC:
	ldr r0, [r2, #0x4c]
	ldr r3, [r2, #0x54]
	adds r0, r0, r3
	str r0, [r2, #0x4c]
	cmp r1, #0
	beq _0806D41A
	cmp r3, #0
	blt _0806D412
	cmp r0, r1
	ble _0806D41A
	b _0806D418
_0806D412:
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0806D41A
_0806D418:
	str r1, [r2, #0x4c]
_0806D41A:
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x48]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	ldr r0, [r2, #0x44]
	ldr r1, [r2, #0x4c]
	adds r0, r0, r1
	str r0, [r2, #0x44]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806D430
sub_0806D430: @ 0x0806D430
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x48]
	ldr r3, [r2, #0x50]
	adds r0, r0, r3
	str r0, [r2, #0x48]
	cmp r1, #0
	beq _0806D452
	cmp r3, #0
	blt _0806D44A
	cmp r0, r1
	ble _0806D452
	b _0806D450
_0806D44A:
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0806D452
_0806D450:
	str r1, [r2, #0x48]
_0806D452:
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x48]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806D460
sub_0806D460: @ 0x0806D460
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x4c]
	ldr r3, [r2, #0x54]
	adds r0, r0, r3
	str r0, [r2, #0x4c]
	cmp r1, #0
	beq _0806D482
	cmp r3, #0
	blt _0806D47A
	cmp r0, r1
	ble _0806D482
	b _0806D480
_0806D47A:
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0806D482
_0806D480:
	str r1, [r2, #0x4c]
_0806D482:
	ldr r0, [r2, #0x44]
	ldr r1, [r2, #0x4c]
	adds r0, r0, r1
	str r0, [r2, #0x44]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806D490
sub_0806D490: @ 0x0806D490
	push {r4, lr}
	adds r4, r0, #0
	subs r2, r1, #1
	ldr r0, [r4, #0x48]
	muls r0, r2, r0
	bl __divsi3
	str r0, [r4, #0x48]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806D4A8
sub_0806D4A8: @ 0x0806D4A8
	push {r4, lr}
	adds r4, r0, #0
	subs r2, r1, #1
	ldr r0, [r4, #0x4c]
	muls r0, r2, r0
	bl __divsi3
	str r0, [r4, #0x4c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806D4C0
sub_0806D4C0: @ 0x0806D4C0
	push {lr}
	adds r3, r0, #0
	ldr r0, _0806D504 @ =gEwramData
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806D510
	ldr r1, _0806D508 @ =0x000004BE
	adds r0, r2, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0806D510
	ldr r2, _0806D50C @ =0x080E9644
	adds r0, r3, #0
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0806D510
	movs r0, #1
	b _0806D512
	.align 2, 0
_0806D504: .4byte gEwramData
_0806D508: .4byte 0x000004BE
_0806D50C: .4byte 0x080E9644
_0806D510:
	movs r0, #0
_0806D512:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D518
sub_0806D518: @ 0x0806D518
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	ldr r1, _0806D53C @ =0x08118CE0
	mov r0, sp
	movs r2, #0x28
	bl memcpy
	cmp r4, #0x27
	bgt _0806D540
	cmp r4, #0
	blt _0806D540
	mov r1, sp
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _0806D542
	.align 2, 0
_0806D53C: .4byte 0x08118CE0
_0806D540:
	movs r0, #0
_0806D542:
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D54C
sub_0806D54C: @ 0x0806D54C
	push {lr}
	movs r1, #0x34
	ldrsh r3, [r0, r1]
	ldr r2, _0806D56C @ =0x080E9644
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xc]
	cmp r3, r0
	blt _0806D570
	movs r0, #0
	b _0806D572
	.align 2, 0
_0806D56C: .4byte 0x080E9644
_0806D570:
	movs r0, #1
_0806D572:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806D578
sub_0806D578: @ 0x0806D578
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r2, _0806D5BC @ =sub_0806E524
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806D5B4
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	bl RandomNumberGenerator
	movs r1, #1
	adds r3, r4, #0
	adds r3, #0x58
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r7, [r0]
_0806D5B4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D5BC: .4byte sub_0806E524

	thumb_func_start sub_0806D5C0
sub_0806D5C0: @ 0x0806D5C0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov r8, r0
	mov sb, r1
	adds r4, r2, #0
	adds r5, r3, #0
	bl RandomNumberGenerator
	adds r1, r4, #0
	bl __umodsi3
	adds r6, r0, #0
	lsrs r0, r4, #0x1f
	adds r4, r4, r0
	asrs r4, r4, #1
	subs r6, r6, r4
	bl RandomNumberGenerator
	adds r1, r5, #0
	bl __umodsi3
	lsrs r1, r5, #0x1f
	adds r5, r5, r1
	asrs r5, r5, #1
	subs r0, r0, r5
	mov r1, r8
	adds r5, r1, r6
	mov r1, sb
	adds r6, r1, r0
	ldr r2, _0806D640 @ =sub_0806E524
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806D634
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	bl RandomNumberGenerator
	movs r1, #1
	adds r3, r4, #0
	adds r3, #0x58
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x5c
	ldr r0, [sp, #0x18]
	strb r0, [r1]
_0806D634:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806D640: .4byte sub_0806E524

	thumb_func_start sub_0806D644
sub_0806D644: @ 0x0806D644
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806D6BC @ =sub_08068F78
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806D6B0
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	str r7, [r4, #0x48]
	mov r0, r8
	str r0, [r4, #0x4c]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r2, #0
	ldr r0, [sp, #0x18]
	strb r0, [r1]
	strb r2, [r4, #0xd]
	movs r0, #3
	strb r0, [r4, #0x18]
	ldr r0, _0806D6C0 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806D6C4 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806D6C8 @ =sub_0803B9D0
	str r0, [r4, #4]
_0806D6B0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D6BC: .4byte sub_08068F78
_0806D6C0: .4byte 0x081C15F4
_0806D6C4: .4byte 0x0820ED60
_0806D6C8: .4byte sub_0803B9D0

	thumb_func_start sub_0806D6CC
sub_0806D6CC: @ 0x0806D6CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806D75C @ =sub_08068F78
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806D752
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	str r7, [r4, #0x48]
	mov r0, r8
	str r0, [r4, #0x4c]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r2, #0
	ldr r0, [sp, #0x18]
	strb r0, [r1]
	strb r2, [r4, #0xd]
	movs r0, #3
	strb r0, [r4, #0x18]
	bl RandomNumberGenerator
	movs r1, #1
	adds r3, r4, #0
	adds r3, #0x58
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0806D760 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806D764 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806D768 @ =sub_0803B9D0
	str r0, [r4, #4]
_0806D752:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D75C: .4byte sub_08068F78
_0806D760: .4byte 0x081C15F4
_0806D764: .4byte 0x0820ED60
_0806D768: .4byte sub_0803B9D0

	thumb_func_start sub_0806D76C
sub_0806D76C: @ 0x0806D76C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806D7E0 @ =sub_08069134
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806D7D6
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	str r7, [r4, #0x48]
	mov r0, r8
	str r0, [r4, #0x4c]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r2, #0
	ldr r0, [sp, #0x18]
	strb r0, [r1]
	strb r2, [r4, #0xd]
	ldr r0, [sp, #0x20]
	strb r0, [r4, #0x18]
	ldr r0, [sp, #0x1c]
	strb r0, [r4, #0x1a]
	ldr r0, _0806D7E4 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806D7E8 @ =0x0820ED60
	adds r0, r4, #0
	ldr r3, [sp, #0x24]
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x35
	strb r0, [r1]
	ldr r0, [sp, #0x28]
	strb r0, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806D7EC @ =sub_0803B9D0
	str r0, [r4, #4]
_0806D7D6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D7E0: .4byte sub_08069134
_0806D7E4: .4byte 0x081C15F4
_0806D7E8: .4byte 0x0820ED60
_0806D7EC: .4byte sub_0803B9D0

	thumb_func_start sub_0806D7F0
sub_0806D7F0: @ 0x0806D7F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806D84C @ =sub_08068F78
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806D886
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	ldr r0, _0806D850 @ =0xFFFFC000
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #0
	strb r7, [r0]
	strb r1, [r4, #0xd]
	movs r0, #4
	strb r0, [r4, #0x18]
	ldr r0, _0806D854 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806D858 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	mov r0, r8
	cmp r0, #0
	bne _0806D85C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0806D870
	.align 2, 0
_0806D84C: .4byte sub_08068F78
_0806D850: .4byte 0xFFFFC000
_0806D854: .4byte 0x081C15F4
_0806D858: .4byte 0x0820ED60
_0806D85C:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r4, #0
	adds r1, #0x6e
	movs r0, #2
	strb r0, [r1]
_0806D870:
	adds r0, r4, #0
	bl sub_0803F17C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806D890 @ =sub_0803B9D0
	str r0, [r4, #4]
_0806D886:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D890: .4byte sub_0803B9D0

	thumb_func_start sub_0806D894
sub_0806D894: @ 0x0806D894
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806D8F4 @ =sub_08068F78
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806D922
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	str r7, [r4, #0x48]
	mov r0, r8
	str r0, [r4, #0x4c]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r2, #0
	ldr r0, [sp, #0x18]
	strb r0, [r1]
	strb r2, [r4, #0xd]
	movs r0, #7
	strb r0, [r4, #0x18]
	ldr r0, _0806D8F8 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806D8FC @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0806D900
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0806D90C
	.align 2, 0
_0806D8F4: .4byte sub_08068F78
_0806D8F8: .4byte 0x081C15F4
_0806D8FC: .4byte 0x0820ED60
_0806D900:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0806D90C:
	adds r0, r4, #0
	bl sub_0803F17C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806D92C @ =sub_0803B9D0
	str r0, [r4, #4]
_0806D922:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D92C: .4byte sub_0803B9D0

	thumb_func_start sub_0806D930
sub_0806D930: @ 0x0806D930
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806D990 @ =sub_08068F78
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806D9BE
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	str r7, [r4, #0x48]
	mov r0, r8
	str r0, [r4, #0x4c]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r2, #0
	ldr r0, [sp, #0x18]
	strb r0, [r1]
	strb r2, [r4, #0xd]
	ldr r0, [sp, #0x20]
	strb r0, [r4, #0x18]
	ldr r0, _0806D994 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806D998 @ =0x0820ED60
	adds r0, r4, #0
	ldr r3, [sp, #0x24]
	bl sub_0803B924
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0806D99C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0806D9A8
	.align 2, 0
_0806D990: .4byte sub_08068F78
_0806D994: .4byte 0x081C15F4
_0806D998: .4byte 0x0820ED60
_0806D99C:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0806D9A8:
	adds r0, r4, #0
	bl sub_0803F17C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806D9C8 @ =sub_0803B9D0
	str r0, [r4, #4]
_0806D9BE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D9C8: .4byte sub_0803B9D0

	thumb_func_start sub_0806D9CC
sub_0806D9CC: @ 0x0806D9CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806DA30 @ =sub_080692E0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806DA5E
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	str r7, [r4, #0x48]
	mov r0, r8
	str r0, [r4, #0x4c]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r2, #0
	ldr r0, [sp, #0x18]
	strb r0, [r1]
	strb r2, [r4, #0xd]
	ldr r0, [sp, #0x24]
	strb r0, [r4, #0x18]
	ldr r0, [sp, #0x20]
	strb r0, [r4, #0x1a]
	ldr r0, _0806DA34 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806DA38 @ =0x0820ED60
	adds r0, r4, #0
	ldr r3, [sp, #0x28]
	bl sub_0803B924
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0806DA3C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0806DA48
	.align 2, 0
_0806DA30: .4byte sub_080692E0
_0806DA34: .4byte 0x081C15F4
_0806DA38: .4byte 0x0820ED60
_0806DA3C:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0806DA48:
	adds r0, r4, #0
	bl sub_0803F17C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806DA68 @ =sub_0803B9D0
	str r0, [r4, #4]
_0806DA5E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DA68: .4byte sub_0803B9D0

	thumb_func_start sub_0806DA6C
sub_0806DA6C: @ 0x0806DA6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r7, [sp, #0x18]
	bl RandomNumberGenerator
	adds r1, r4, #0
	bl __umodsi3
	lsrs r1, r4, #0x1f
	adds r4, r4, r1
	asrs r4, r4, #1
	subs r0, r0, r4
	adds r6, r6, r0
	bl RandomNumberGenerator
	adds r1, r5, #0
	bl __umodsi3
	lsrs r1, r5, #0x1f
	adds r5, r5, r1
	asrs r5, r5, #1
	subs r0, r0, r5
	add r8, r0
	adds r0, r6, #0
	mov r1, r8
	adds r2, r7, #0
	ldr r3, [sp, #0x1c]
	bl sub_0806D7F0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806DABC
sub_0806DABC: @ 0x0806DABC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806DB1C @ =sub_08069048
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806DB4A
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	str r7, [r4, #0x48]
	mov r0, r8
	str r0, [r4, #0x4c]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r2, #0
	ldr r0, [sp, #0x18]
	strb r0, [r1]
	strb r2, [r4, #0xd]
	movs r0, #7
	strb r0, [r4, #0x18]
	ldr r0, _0806DB20 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806DB24 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0806DB28
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0806DB34
	.align 2, 0
_0806DB1C: .4byte sub_08069048
_0806DB20: .4byte 0x081C15F4
_0806DB24: .4byte 0x0820ED60
_0806DB28:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0806DB34:
	adds r0, r4, #0
	bl sub_0803F17C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806DB54 @ =sub_0803B9D0
	str r0, [r4, #4]
_0806DB4A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DB54: .4byte sub_0803B9D0

	thumb_func_start sub_0806DB58
sub_0806DB58: @ 0x0806DB58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806DBD0 @ =sub_08068F78
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806DBC4
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	str r7, [r4, #0x48]
	mov r0, r8
	str r0, [r4, #0x4c]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r2, #0
	ldr r0, [sp, #0x18]
	strb r0, [r1]
	strb r2, [r4, #0xd]
	ldr r0, [sp, #0x1c]
	strb r0, [r4, #0x18]
	ldr r0, _0806DBD4 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806DBD8 @ =0x0820ED60
	adds r0, r4, #0
	ldr r3, [sp, #0x20]
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806DBDC @ =sub_0803B9D0
	str r0, [r4, #4]
_0806DBC4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DBD0: .4byte sub_08068F78
_0806DBD4: .4byte 0x081C15F4
_0806DBD8: .4byte 0x0820ED60
_0806DBDC: .4byte sub_0803B9D0

	thumb_func_start sub_0806DBE0
sub_0806DBE0: @ 0x0806DBE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806DC50 @ =sub_0806E59C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806DC46
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	str r7, [r4, #0x48]
	mov r0, r8
	str r0, [r4, #0x4c]
	movs r2, #0
	str r2, [r4, #0x50]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x5c
	ldr r0, [sp, #0x18]
	strb r0, [r1]
	strb r2, [r4, #0xd]
	ldr r0, _0806DC54 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806DC58 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x35
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806DC5C @ =sub_0803B9D0
	str r0, [r4, #4]
_0806DC46:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DC50: .4byte sub_0806E59C
_0806DC54: .4byte 0x081C15F4
_0806DC58: .4byte 0x0820ED60
_0806DC5C: .4byte sub_0803B9D0

	thumb_func_start sub_0806DC60
sub_0806DC60: @ 0x0806DC60
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r2, _0806DCB4 @ =sub_0806E5C4
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806DCAE
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	adds r0, #0x5c
	strb r7, [r0]
	ldr r0, _0806DCB8 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806DCBC @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806DCC0 @ =sub_0803B9D0
	str r0, [r4, #4]
_0806DCAE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DCB4: .4byte sub_0806E5C4
_0806DCB8: .4byte 0x081C15F4
_0806DCBC: .4byte 0x0820ED60
_0806DCC0: .4byte sub_0803B9D0

	thumb_func_start sub_0806DCC4
sub_0806DCC4: @ 0x0806DCC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806DD24 @ =sub_08069134
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806DD56
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
	ldr r0, _0806DD28 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806DD2C @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803B924
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0806DD30
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x40
	b _0806DD44
	.align 2, 0
_0806DD24: .4byte sub_08069134
_0806DD28: .4byte 0x081C15F4
_0806DD2C: .4byte 0x0820ED60
_0806DD30:
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _0806DD3E
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x41
	b _0806DD44
_0806DD3E:
	adds r1, r4, #0
	adds r1, #0x65
	movs r0, #0x42
_0806DD44:
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806DD60 @ =sub_0803B9D0
	str r0, [r4, #4]
_0806DD56:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DD60: .4byte sub_0803B9D0

	thumb_func_start sub_0806DD64
sub_0806DD64: @ 0x0806DD64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0806DDF4 @ =sub_08068F78
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806DDE8
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	str r7, [r4, #0x48]
	mov r0, r8
	str r0, [r4, #0x4c]
	bl RandomNumberGenerator
	movs r1, #1
	adds r3, r4, #0
	adds r3, #0x58
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x5c
	ldr r0, [sp, #0x18]
	strb r0, [r1]
	movs r0, #3
	strb r0, [r4, #0x18]
	ldr r0, _0806DDF8 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806DDFC @ =0x0820ED60
	ldr r3, [sp, #0x1c]
	adds r3, #6
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0xd
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806DE00 @ =sub_0803B9D0
	str r0, [r4, #4]
_0806DDE8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DDF4: .4byte sub_08068F78
_0806DDF8: .4byte 0x081C15F4
_0806DDFC: .4byte 0x0820ED60
_0806DE00: .4byte sub_0803B9D0

	thumb_func_start sub_0806DE04
sub_0806DE04: @ 0x0806DE04
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r2, _0806DE48 @ =sub_0806E5DC
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r2, r0, #0
	cmp r2, #0
	beq _0806DE42
	str r4, [r2, #0x40]
	str r5, [r2, #0x44]
	adds r1, r2, #0
	adds r1, #0x5c
	ldr r0, [sp, #0x10]
	strb r0, [r1]
	adds r3, r2, #0
	adds r3, #0x72
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x19
	ldrb r0, [r3]
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0806DE4C @ =sub_0803B9D0
	str r0, [r2, #4]
_0806DE42:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806DE48: .4byte sub_0806E5DC
_0806DE4C: .4byte sub_0803B9D0

	thumb_func_start sub_0806DE50
sub_0806DE50: @ 0x0806DE50
	push {lr}
	adds r3, r0, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806DE74
	ldr r0, _0806DE6C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806DE70 @ =0x00013110
	adds r0, r0, r1
	b _0806DEA8
	.align 2, 0
_0806DE6C: .4byte gEwramData
_0806DE70: .4byte 0x00013110
_0806DE74:
	ldr r0, _0806DE98 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806DE9C @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806DEA4
	ldr r1, _0806DEA0 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806DEAA
	ldr r1, [r3, #0x40]
	adds r0, r1, #0
	b _0806DEAE
	.align 2, 0
_0806DE98: .4byte gEwramData
_0806DE9C: .4byte 0x000004CC
_0806DEA0: .4byte 0x00013168
_0806DEA4:
	ldr r1, _0806DEB4 @ =0x00013118
	adds r0, r2, r1
_0806DEA8:
	ldr r0, [r0]
_0806DEAA:
	ldr r1, [r0, #0x40]
	ldr r0, [r3, #0x40]
_0806DEAE:
	subs r0, r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_0806DEB4: .4byte 0x00013118

	thumb_func_start sub_0806DEB8
sub_0806DEB8: @ 0x0806DEB8
	push {lr}
	adds r3, r0, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806DEDC
	ldr r0, _0806DED4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806DED8 @ =0x00013110
	adds r0, r0, r1
	b _0806DF10
	.align 2, 0
_0806DED4: .4byte gEwramData
_0806DED8: .4byte 0x00013110
_0806DEDC:
	ldr r0, _0806DF00 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806DF04 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806DF0C
	ldr r1, _0806DF08 @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806DF12
	ldr r1, [r3, #0x44]
	adds r0, r1, #0
	b _0806DF16
	.align 2, 0
_0806DF00: .4byte gEwramData
_0806DF04: .4byte 0x000004CC
_0806DF08: .4byte 0x00013168
_0806DF0C:
	ldr r1, _0806DF1C @ =0x00013118
	adds r0, r2, r1
_0806DF10:
	ldr r0, [r0]
_0806DF12:
	ldr r1, [r0, #0x44]
	ldr r0, [r3, #0x44]
_0806DF16:
	subs r0, r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_0806DF1C: .4byte 0x00013118

	thumb_func_start sub_0806DF20
sub_0806DF20: @ 0x0806DF20
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x65
	ldrb r4, [r6]
	bl sub_0803F17C
	ldrb r6, [r6]
	cmp r4, r6
	beq _0806DF3A
	adds r0, r5, #0
	bl sub_0806B1FC
_0806DF3A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0806DF40
sub_0806DF40: @ 0x0806DF40
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r0, _0806DF7C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806DF80 @ =0x0000A094
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r6, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r0, r4
	cmp r0, #0
	bge _0806DF6E
	adds r0, #7
_0806DF6E:
	asrs r1, r0, #3
	ldrb r0, [r5]
	cmp r0, #1
	beq _0806DF84
	lsls r0, r0, #5
	b _0806DF86
	.align 2, 0
_0806DF7C: .4byte gEwramData
_0806DF80: .4byte 0x0000A094
_0806DF84:
	movs r0, #0x1e
_0806DF86:
	cmp r1, #0
	blt _0806DFBE
	cmp r1, r0
	bge _0806DFBE
	adds r0, r6, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	cmp r0, #0
	bge _0806DFA4
	adds r0, #7
_0806DFA4:
	asrs r1, r0, #3
	ldrb r0, [r5, #1]
	cmp r0, #1
	beq _0806DFB0
	lsls r0, r0, #5
	b _0806DFB2
_0806DFB0:
	movs r0, #0x1a
_0806DFB2:
	cmp r1, #0
	blt _0806DFBE
	cmp r1, r0
	bge _0806DFBE
	movs r0, #0
	b _0806DFC0
_0806DFBE:
	movs r0, #1
_0806DFC0:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806DFC8
sub_0806DFC8: @ 0x0806DFC8
	push {lr}
	sub sp, #0x10
	mov r2, sp
	movs r3, #0
	movs r1, #1
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

	thumb_func_start sub_0806DFF8
sub_0806DFF8: @ 0x0806DFF8
	push {lr}
	adds r2, r0, #0
	ldr r0, _0806E018 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806E01C
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	b _0806E024
	.align 2, 0
_0806E018: .4byte gEwramData
_0806E01C:
	movs r0, #0xd0
	movs r1, #0xdf
	bl EntityCreateInRange
_0806E024:
	pop {r1}
	bx r1

	thumb_func_start sub_0806E028
sub_0806E028: @ 0x0806E028
	sub sp, #4
	ldr r0, _0806E050 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0806E054 @ =0x000143F4
	adds r2, r2, r0
	movs r3, #0
	str r3, [sp]
	ldr r0, _0806E058 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _0806E05C @ =0x85000200
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	strh r3, [r2]
	ldr r0, _0806E060 @ =0x000001FF
	strh r0, [r2, #2]
	add sp, #4
	bx lr
	.align 2, 0
_0806E050: .4byte gEwramData
_0806E054: .4byte 0x000143F4
_0806E058: .4byte 0x040000D4
_0806E05C: .4byte 0x85000200
_0806E060: .4byte 0x000001FF

	thumb_func_start sub_0806E064
sub_0806E064: @ 0x0806E064
	ldr r0, _0806E088 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806E08C @ =0x000143F4
	adds r2, r0, r1
	ldr r1, _0806E090 @ =0x040000D4
	str r2, [r1]
	ldr r3, _0806E094 @ =0x00014BF4
	adds r0, r0, r3
	str r0, [r1, #4]
	ldr r0, _0806E098 @ =0x84000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0
	strh r0, [r2]
	ldr r0, _0806E09C @ =0x000001FF
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0806E088: .4byte gEwramData
_0806E08C: .4byte 0x000143F4
_0806E090: .4byte 0x040000D4
_0806E094: .4byte 0x00014BF4
_0806E098: .4byte 0x84000200
_0806E09C: .4byte 0x000001FF

	thumb_func_start sub_0806E0A0
sub_0806E0A0: @ 0x0806E0A0
	ldr r2, _0806E0BC @ =0x040000D4
	ldr r0, _0806E0C0 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _0806E0C4 @ =0x00014BF4
	adds r1, r0, r3
	str r1, [r2]
	ldr r1, _0806E0C8 @ =0x000143F4
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E0CC @ =0x84000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	bx lr
	.align 2, 0
_0806E0BC: .4byte 0x040000D4
_0806E0C0: .4byte gEwramData
_0806E0C4: .4byte 0x00014BF4
_0806E0C8: .4byte 0x000143F4
_0806E0CC: .4byte 0x84000200

	thumb_func_start sub_0806E0D0
sub_0806E0D0: @ 0x0806E0D0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r6, r2, #0
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	movs r1, #0
	bl sub_0803B800
	adds r7, r0, #0
	cmp r7, #0
	blt _0806E118
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08068264
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	blt _0806E118
	adds r0, r4, #0
	adds r0, #0x2c
	strb r1, [r0]
	ldrb r3, [r0]
	adds r0, r4, #0
	ldr r1, [sp, #0x14]
	adds r2, r7, #0
	bl sub_0803B924
	ldr r0, _0806E114 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0806E11A
	.align 2, 0
_0806E114: .4byte sub_0803B9D0
_0806E118:
	movs r0, #0
_0806E11A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0806E120
sub_0806E120: @ 0x0806E120
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806E136
	str r3, [r2, #0x48]
	b _0806E13A
_0806E136:
	rsbs r0, r3, #0
	str r0, [r2, #0x48]
_0806E13A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806E140
sub_0806E140: @ 0x0806E140
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r5, r3, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [r4, #0x40]
	mov r8, r1
	ldr r1, [r4, #0x44]
	mov sb, r1
	cmp r0, #0
	bne _0806E16E
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806E16E
	adds r0, r4, #0
	bl sub_0806BC40
_0806E16E:
	str r5, [r4, #0x4c]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806E182
	str r6, [r4, #0x48]
	b _0806E186
_0806E182:
	rsbs r0, r6, #0
	str r0, [r4, #0x48]
_0806E186:
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r7, #0
	movs r3, #0x80
	lsls r3, r3, #0xc
	bl sub_080698A8
	adds r1, r0, #0
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0806E1A8
	mov r0, r8
	str r0, [r4, #0x40]
	mov r0, sb
	str r0, [r4, #0x44]
_0806E1A8:
	adds r0, r1, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806E1B8
sub_0806E1B8: @ 0x0806E1B8
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

	thumb_func_start sub_0806E1E8
sub_0806E1E8: @ 0x0806E1E8
	push {lr}
	sub sp, #0x10
	mov r2, sp
	movs r3, #0
	movs r1, #1
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

	thumb_func_start sub_0806E218
sub_0806E218: @ 0x0806E218
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
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
	adds r2, r4, #0
	adds r2, #0x2d
	movs r0, #8
	strb r0, [r2]
	ldrh r0, [r4, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08042B8C
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0806E25E
	movs r0, #0
	b _0806E260
_0806E25E:
	movs r0, #1
_0806E260:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806E268
sub_0806E268: @ 0x0806E268
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r2, #0x20
	movs r4, #0
	movs r1, #6
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _0806E280
	movs r4, #6
	b _0806E294
_0806E280:
	asrs r2, r2, #1
	subs r1, #1
	cmp r1, #0
	ble _0806E294
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _0806E280
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
_0806E294:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0806E29C
sub_0806E29C: @ 0x0806E29C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, _0806E2F8 @ =gEwramData
	ldr r4, [r3]
	ldr r5, _0806E2FC @ =0x00013168
	adds r3, r4, r5
	ldr r5, [r3]
	adds r3, r0, #0
	adds r3, #0x42
	lsrs r1, r1, #0x11
	ldrh r3, [r3]
	subs r3, r3, r1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, #0x46
	lsrs r2, r2, #0x11
	ldrh r0, [r0]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _0806E300 @ =0x000004CC
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806E2E0
	ldr r5, _0806E304 @ =0x00013118
	adds r0, r4, r5
	ldr r5, [r0]
_0806E2E0:
	cmp r5, #0
	beq _0806E308
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r6, [sp]
	adds r0, r5, #0
	adds r3, r7, #0
	bl sub_08068AD4
	b _0806E30A
	.align 2, 0
_0806E2F8: .4byte gEwramData
_0806E2FC: .4byte 0x00013168
_0806E300: .4byte 0x000004CC
_0806E304: .4byte 0x00013118
_0806E308:
	movs r0, #0
_0806E30A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806E314
sub_0806E314: @ 0x0806E314
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0806E346
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
	beq _0806E346
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
_0806E346:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806E350
sub_0806E350: @ 0x0806E350
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	mov r0, ip
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
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806E386
	lsls r0, r4, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x10
_0806E386:
	mov r1, ip
	adds r1, #0x42
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r1, ip
	adds r1, #0x46
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0806E3B0
sub_0806E3B0: @ 0x0806E3B0
	push {lr}
	adds r3, r0, #0
	ldr r0, _0806E3D4 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _0806E3D8 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0806E3E0
	ldr r1, _0806E3DC @ =0x00013168
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806E3E6
	adds r0, r3, #0
	b _0806E3E6
	.align 2, 0
_0806E3D4: .4byte gEwramData
_0806E3D8: .4byte 0x000004CC
_0806E3DC: .4byte 0x00013168
_0806E3E0:
	ldr r1, _0806E3F4 @ =0x00013118
	adds r0, r2, r1
	ldr r0, [r0]
_0806E3E6:
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	pop {r1}
	bx r1
	.align 2, 0
_0806E3F4: .4byte 0x00013118

	thumb_func_start sub_0806E3F8
sub_0806E3F8: @ 0x0806E3F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x40]
	subs r0, r1, r3
	cmp r0, #0
	bge _0806E40C
	subs r0, r3, r1
	asrs r0, r0, #0x10
	rsbs r1, r0, #0
	b _0806E40E
_0806E40C:
	asrs r1, r0, #0x10
_0806E40E:
	adds r0, r1, #0
	muls r0, r1, r0
	adds r1, r0, #0
	ldr r3, [r4, #0x44]
	subs r0, r2, r3
	cmp r0, #0
	bge _0806E424
	subs r0, r3, r2
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0806E426
_0806E424:
	asrs r0, r0, #0x10
_0806E426:
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r1, r0
	bl Sqrt
	lsls r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806E43C
sub_0806E43C: @ 0x0806E43C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	ldr r0, [r5, #0x40]
	mov r8, r0
	ldr r1, [r5, #0x44]
	mov sb, r1
	subs r0, r0, r4
	asrs r0, r0, #0x10
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	subs r1, r1, r6
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r7, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r4, #0
	bge _0806E48C
	rsbs r0, r4, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0806E48E
_0806E48C:
	asrs r0, r4, #0x10
_0806E48E:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r2, [r0, r1]
	cmp r6, #0
	bge _0806E4A8
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0806E4AA
_0806E4A8:
	asrs r0, r6, #0x10
_0806E4AA:
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r3, #0
	bl ArcTan2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r2, sl
	lsls r4, r2, #0x18
	asrs r4, r4, #0x18
	lsrs r7, r4
	adds r4, r7, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08068CDC
	ldr r0, [r5, #0x40]
	mov r1, r8
	subs r0, r0, r1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x44]
	mov r2, sb
	subs r0, r0, r2
	str r0, [r5, #0x4c]
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0806E4F8
sub_0806E4F8: @ 0x0806E4F8
	push {lr}
	adds r2, r0, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, r1
	bge _0806E514
	adds r0, r2, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _0806E520
_0806E514:
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0806E520:
	pop {r0}
	bx r0

	thumb_func_start sub_0806E524
sub_0806E524: @ 0x0806E524
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0806E534
	cmp r0, #1
	beq _0806E578
	b _0806E580
_0806E534:
	ldr r0, _0806E56C @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _0806E570 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0806E574 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
	b _0806E580
	.align 2, 0
_0806E56C: .4byte 0x081C15F4
_0806E570: .4byte 0x0820ED60
_0806E574: .4byte sub_0803B9D0
_0806E578:
	ldr r0, [r4, #0x44]
	ldr r1, _0806E598 @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r4, #0x44]
_0806E580:
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _0806E590
	adds r0, r4, #0
	bl EntityDelete
_0806E590:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806E598: .4byte 0xFFFF8000

	thumb_func_start sub_0806E59C
sub_0806E59C: @ 0x0806E59C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
	bl sub_0806D3D8
	ldrb r0, [r4, #0xd]
	cmp r0, #0x78
	bls _0806E5BC
	adds r0, r4, #0
	bl EntityDelete
_0806E5BC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806E5C4
sub_0806E5C4: @ 0x0806E5C4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _0806E5D6
	adds r0, r4, #0
	bl EntityDelete
_0806E5D6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0806E5DC
sub_0806E5DC: @ 0x0806E5DC
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	ldrb r0, [r1, #0xd]
	subs r0, #1
	strb r0, [r1, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0806E5F4
	adds r0, r1, #0
	bl EntityDelete
_0806E5F4:
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806E5FC
sub_0806E5FC: @ 0x0806E5FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0806E640 @ =gEwramData
	ldr r2, [r2]
	ldr r3, _0806E644 @ =0x0000A094
	adds r5, r2, r3
	movs r2, #0
	movs r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
_0806E618:
	ldrh r0, [r5, #6]
	add r0, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5, #0xa]
	adds r1, r7, r1
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	adds r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #2
	beq _0806E648
	cmp r0, #3
	bne _0806E648
	adds r0, r4, #0
	b _0806E658
	.align 2, 0
_0806E640: .4byte gEwramData
_0806E644: .4byte 0x0000A094
_0806E648:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r6, #0
	adds r6, #1
	cmp r0, #7
	ble _0806E618
	movs r0, #8
_0806E658:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806E664
sub_0806E664: @ 0x0806E664
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r2, _0806E6B0 @ =sub_0806B5DC
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806E6A8
	adds r0, #0x42
	strh r5, [r0]
	adds r0, #4
	strh r6, [r0]
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	adds r3, r4, #0
	adds r3, #0x58
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	strh r7, [r4, #0x14]
	strb r7, [r4, #0xb]
_0806E6A8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E6B0: .4byte sub_0806B5DC

	thumb_func_start sub_0806E6B4
sub_0806E6B4: @ 0x0806E6B4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	mov r4, sp
	adds r4, #2
	mov r2, sp
	adds r3, r4, #0
	bl sub_0806B658
	mov r0, sp
	movs r1, #0
	ldrsh r6, [r0, r1]
	movs r0, #0
	ldrsh r5, [r4, r0]
	ldr r2, _0806E710 @ =sub_0806B5DC
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0806E708
	adds r0, #0x42
	strh r6, [r0]
	adds r0, #4
	strh r5, [r0]
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	adds r3, r4, #0
	adds r3, #0x58
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	strh r7, [r4, #0x14]
	strb r7, [r4, #0xb]
_0806E708:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E710: .4byte sub_0806B5DC

	thumb_func_start EnemyValkyrieCreate
EnemyValkyrieCreate: @ 0x0806E714
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806EB34
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806E72A
	adds r0, r4, #0
	bl EntityDelete
	b _0806E79A
_0806E72A:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _0806E758 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806E75C
	movs r0, #4
	b _0806E798
	.align 2, 0
_0806E758: .4byte gEwramData
_0806E75C:
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #3
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _0806E784
	ldr r2, _0806E77C @ =sub_0806ECA8
	ldr r3, _0806E780 @ =sub_0806EBDC
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _0806E790
	.align 2, 0
_0806E77C: .4byte sub_0806ECA8
_0806E780: .4byte sub_0806EBDC
_0806E784:
	ldr r2, _0806E7A0 @ =sub_0806ECA8
	ldr r3, _0806E7A4 @ =sub_0806EBDC
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_0806E790:
	adds r0, r4, #0
	bl sub_0806B1FC
	movs r0, #0
_0806E798:
	strb r0, [r4, #0xa]
_0806E79A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806E7A0: .4byte sub_0806ECA8
_0806E7A4: .4byte sub_0806EBDC

	thumb_func_start sub_0806E7A8
sub_0806E7A8: @ 0x0806E7A8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0806E7B8
	cmp r0, #1
	beq _0806E7F2
	b _0806E89C
_0806E7B8:
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
	movs r1, #0xf0
	lsls r1, r1, #0xf
	adds r0, r4, #0
	bl sub_0806CEF8
	cmp r0, #0
	bne _0806E7EC
	adds r0, r4, #0
	bl sub_0806D54C
	cmp r0, #0
	beq _0806E89C
_0806E7EC:
	movs r0, #1
	strb r0, [r4, #0xb]
	b _0806E89C
_0806E7F2:
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
	beq _0806E824
	adds r0, r4, #0
	bl sub_0806CD38
	ldr r1, _0806E820 @ =0xFFC00000
	b _0806E82E
	.align 2, 0
_0806E820: .4byte 0xFFC00000
_0806E824:
	adds r0, r4, #0
	bl sub_0806CD38
	movs r1, #0x80
	lsls r1, r1, #0xf
_0806E82E:
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_0806CD78
	adds r2, r0, #0
	ldr r0, _0806E858 @ =0xFFD00000
	adds r2, r2, r0
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080696B0
	adds r5, r0, #0
	cmp r5, #0
	beq _0806E85C
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	b _0806E89C
	.align 2, 0
_0806E858: .4byte 0xFFD00000
_0806E85C:
	adds r0, r4, #0
	bl sub_0806CD38
	ldr r1, [r4, #0x40]
	subs r0, r0, r1
	cmp r0, #0
	bge _0806E86C
	rsbs r0, r0, #0
_0806E86C:
	ldr r6, _0806E8A4 @ =0x003BFFFF
	cmp r0, r6
	bgt _0806E89C
	adds r0, r4, #0
	bl sub_0806CD78
	ldr r1, _0806E8A8 @ =0xFFE00000
	adds r0, r0, r1
	ldr r1, [r4, #0x44]
	cmp r1, r0
	bge _0806E89C
	adds r0, r4, #0
	bl sub_0806CD78
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	cmp r0, #0
	bge _0806E892
	rsbs r0, r0, #0
_0806E892:
	cmp r0, r6
	bgt _0806E89C
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xb]
_0806E89C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806E8A4: .4byte 0x003BFFFF
_0806E8A8: .4byte 0xFFE00000

	thumb_func_start sub_0806E8AC
sub_0806E8AC: @ 0x0806E8AC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #6
	bls _0806E8B8
	b _0806EA84
_0806E8B8:
	lsls r0, r0, #2
	ldr r1, _0806E8C4 @ =_0806E8C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806E8C4: .4byte _0806E8C8
_0806E8C8: @ jump table
	.4byte _0806E8E4 @ case 0
	.4byte _0806E8FE @ case 1
	.4byte _0806E94A @ case 2
	.4byte _0806E9A0 @ case 3
	.4byte _0806E9C8 @ case 4
	.4byte _0806E9F8 @ case 5
	.4byte _0806EA3C @ case 6
_0806E8E4:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	str r1, [r5, #0x50]
	str r1, [r5, #0x54]
	strb r1, [r5, #0xd]
_0806E8FE:
	adds r0, r5, #0
	movs r1, #6
	bl sub_0806D490
	adds r0, r5, #0
	movs r1, #6
	bl sub_0806D4A8
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r5, #0
	bl sub_0806D3D8
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #2
	beq _0806E924
	b _0806EA84
_0806E924:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _0806E940
	adds r1, r5, #0
	adds r1, #0x6f
	movs r0, #0x64
	strb r0, [r1]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	b _0806EA82
_0806E940:
	adds r1, r5, #0
	adds r1, #0x6f
	movs r0, #0
	strb r0, [r1]
	b _0806EA84
_0806E94A:
	adds r0, r5, #0
	movs r1, #6
	bl sub_0806D490
	adds r0, r5, #0
	movs r1, #6
	bl sub_0806D4A8
	movs r4, #0xc0
	lsls r4, r4, #0xa
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D3D8
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #2
	bhi _0806E972
	b _0806EA84
_0806E972:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x87
	bl PlaySong
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806E990
	str r4, [r5, #0x48]
	b _0806E994
_0806E990:
	ldr r0, _0806E9C0 @ =0xFFFD0000
	str r0, [r5, #0x48]
_0806E994:
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r5, #0x4c]
	movs r0, #0
	str r0, [r5, #0x50]
	str r0, [r5, #0x54]
_0806E9A0:
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r5, #0
	bl sub_0806D3D8
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #7
	bls _0806EA84
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	ldr r0, _0806E9C4 @ =0xFFFFC000
	str r0, [r5, #0x54]
	b _0806EA84
	.align 2, 0
_0806E9C0: .4byte 0xFFFD0000
_0806E9C4: .4byte 0xFFFFC000
_0806E9C8:
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r5, #0
	bl sub_0806D3D8
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806EA84
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	str r4, [r5, #0x10]
	b _0806EA84
_0806E9F8:
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r5, #0
	bl sub_0806D3D8
	adds r0, r5, #0
	movs r1, #0x20
	bl sub_0806D490
	movs r1, #0xf0
	lsls r1, r1, #0xf
	adds r0, r5, #0
	bl sub_0806CEF8
	adds r1, r0, #0
	cmp r1, #0
	bne _0806EA24
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	str r1, [r5, #0x10]
	str r1, [r5, #0x54]
_0806EA24:
	ldr r0, [r5, #0x10]
	adds r0, #1
	str r0, [r5, #0x10]
	cmp r0, #0x13
	ble _0806EA84
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	str r1, [r5, #0x10]
	str r1, [r5, #0x54]
	b _0806EA84
_0806EA3C:
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
	movs r1, #8
	bl sub_0806D490
	adds r0, r5, #0
	movs r1, #8
	bl sub_0806D4A8
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r5, #0
	bl sub_0806D3D8
	ldr r0, [r5, #0x10]
	adds r0, #1
	str r0, [r5, #0x10]
	cmp r0, #0x2f
	ble _0806EA84
	movs r0, #0
	strb r0, [r5, #0xa]
	movs r0, #1
_0806EA82:
	strb r0, [r5, #0xb]
_0806EA84:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806EA8C
sub_0806EA8C: @ 0x0806EA8C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0806EA9C
	cmp r0, #1
	beq _0806EADC
	b _0806EB24
_0806EA9C:
	adds r0, r4, #0
	bl sub_0806CF2C
	movs r1, #1
	eors r0, r1
	adds r3, r4, #0
	adds r3, #0x58
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
	beq _0806EAC8
	movs r0, #0xc0
	lsls r0, r0, #0xa
	b _0806EACA
_0806EAC8:
	ldr r0, _0806EAD8 @ =0xFFFD0000
_0806EACA:
	str r0, [r4, #0x48]
	ldr r0, _0806EAD8 @ =0xFFFD0000
	str r0, [r4, #0x4c]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	b _0806EB22
	.align 2, 0
_0806EAD8: .4byte 0xFFFD0000
_0806EADC:
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_0806D490
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_0806D4A8
	adds r0, r4, #0
	bl sub_0806D3AC
	ldr r1, [r4, #0x4c]
	ldr r0, _0806EB2C @ =0xFFFEC000
	cmp r1, r0
	ble _0806EB16
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
_0806EB16:
	ldr r1, [r4, #0x4c]
	ldr r0, _0806EB30 @ =0xFFFFE000
	cmp r1, r0
	ble _0806EB24
	movs r0, #0
	strb r0, [r4, #0xa]
_0806EB22:
	strb r0, [r4, #0xb]
_0806EB24:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806EB2C: .4byte 0xFFFEC000
_0806EB30: .4byte 0xFFFFE000

	thumb_func_start sub_0806EB34
sub_0806EB34: @ 0x0806EB34
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0806EB4C @ =0x081CBF2C
	movs r1, #0
	bl sub_0803B800
	adds r4, r0, #0
	cmp r4, #0
	bge _0806EB50
	movs r0, #0
	b _0806EBD2
	.align 2, 0
_0806EB4C: .4byte 0x081CBF2C
_0806EB50:
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x29
	bne _0806EB64
	ldr r0, _0806EB60 @ =0x0820A3FC
	movs r1, #0
	b _0806EB68
	.align 2, 0
_0806EB60: .4byte 0x0820A3FC
_0806EB64:
	ldr r0, _0806EBC0 @ =0x0820A3FC
	movs r1, #1
_0806EB68:
	bl sub_08068264
	adds r1, r6, #0
	adds r1, #0x2c
	strb r0, [r1]
	adds r0, r1, #0
	ldr r1, _0806EBC4 @ =0x0821285C
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
	bne _0806EBCC
	adds r0, r7, #0
	subs r0, #0xc
	cmp r0, #1
	bhi _0806EBCC
	ldr r0, _0806EBC8 @ =sub_0806CCE8
	b _0806EBCE
	.align 2, 0
_0806EBC0: .4byte 0x0820A3FC
_0806EBC4: .4byte 0x0821285C
_0806EBC8: .4byte sub_0806CCE8
_0806EBCC:
	ldr r0, _0806EBD8 @ =sub_0803B9D0
_0806EBCE:
	str r0, [r6, #4]
	movs r0, #1
_0806EBD2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806EBD8: .4byte sub_0803B9D0

	thumb_func_start sub_0806EBDC
sub_0806EBDC: @ 0x0806EBDC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r7, r4, #0
	adds r7, #0x70
	ldrh r0, [r5, #4]
	bl sub_08021530
	adds r3, r0, #0
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
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _0806EC70
	adds r0, r6, #0
	bl sub_080683BC
	ldr r0, _0806EC6C @ =0x000001CD
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
	str r0, [r6, #0x50]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #0x54]
	b _0806ECA0
	.align 2, 0
_0806EC6C: .4byte 0x000001CD
_0806EC70:
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x29
	bne _0806ECA0
	ldrb r0, [r7]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0806ECA0
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bne _0806ECA0
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
_0806ECA0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806ECA8
sub_0806ECA8: @ 0x0806ECA8
	push {lr}
	sub sp, #0x10
	adds r2, r0, #0
	mov r0, sp
	adds r3, r2, #0
	adds r3, #0x3c
	ldrb r1, [r3]
	lsrs r1, r1, #1
	strh r1, [r0]
	ldrb r0, [r2, #0xa]
	cmp r0, #1
	bne _0806ECE0
	adds r0, r2, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	bne _0806ECE0
	adds r0, r2, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0806ECE0
	mov r1, sp
	ldrb r0, [r3]
	strh r0, [r1]
_0806ECE0:
	mov r0, sp
	movs r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, [r2, #0x40]
	str r0, [sp, #8]
	ldr r0, [r2, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyValkyrieUpdate
EnemyValkyrieUpdate: @ 0x0806ED00
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
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
	beq _0806ED24
	adds r0, r4, #0
	bl sub_08021924
_0806ED24:
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _0806ED3E
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0806EDAE
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _0806EDAE
_0806ED3E:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _0806EDA2
	lsls r0, r0, #2
	ldr r1, _0806ED50 @ =_0806ED54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806ED50: .4byte _0806ED54
_0806ED54: @ jump table
	.4byte _0806ED68 @ case 0
	.4byte _0806ED70 @ case 1
	.4byte _0806ED78 @ case 2
	.4byte _0806ED92 @ case 3
	.4byte _0806ED9A @ case 4
_0806ED68:
	adds r0, r4, #0
	bl sub_0806E7A8
	b _0806EDA2
_0806ED70:
	adds r0, r4, #0
	bl sub_0806E8AC
	b _0806EDA2
_0806ED78:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0806D490
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	bl sub_0806AEAC
	b _0806EDA2
_0806ED92:
	adds r0, r4, #0
	bl sub_0806EA8C
	b _0806EDA2
_0806ED9A:
	adds r0, r4, #0
	bl sub_0803F17C
	b _0806EDAE
_0806EDA2:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_0806EDAE:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyWerewolfUpdate
EnemyWerewolfUpdate: @ 0x0806EDB8
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0806EDEE
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	bne _0806EEAC
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
	beq _0806EDEE
	adds r0, r4, #0
	bl sub_08021924
_0806EDEE:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _0806EE08
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _0806EE16
_0806EE08:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0806EE16:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0806EE22
	adds r0, r4, #0
	bl sub_0806AE54
_0806EE22:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _0806EE32
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0806EE46
_0806EE32:
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806EE50
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _0806EE50
	cmp r0, #2
	beq _0806EE50
_0806EE46:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _0806EEAC
_0806EE50:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bhi _0806EEA0
	lsls r0, r0, #2
	ldr r1, _0806EE60 @ =_0806EE64
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806EE60: .4byte _0806EE64
_0806EE64: @ jump table
	.4byte _0806EE78 @ case 0
	.4byte _0806EE80 @ case 1
	.4byte _0806EE88 @ case 2
	.4byte _0806EE90 @ case 3
	.4byte _0806EE98 @ case 4
_0806EE78:
	adds r0, r4, #0
	bl sub_0806EEB4
	b _0806EEA0
_0806EE80:
	adds r0, r4, #0
	bl sub_0806F024
	b _0806EEA0
_0806EE88:
	adds r0, r4, #0
	bl sub_08079294
	b _0806EEA0
_0806EE90:
	adds r0, r4, #0
	bl sub_0806F41C
	b _0806EEA0
_0806EE98:
	adds r0, r4, #0
	bl sub_0803F17C
	b _0806EEAC
_0806EEA0:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_0806EEAC:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0806EEB4
sub_0806EEB4: @ 0x0806EEB4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #0
	beq _0806EEC6
	cmp r5, #1
	beq _0806EF4C
	b _0806F01C
_0806EEC6:
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
	str r5, [r4, #0x48]
	str r5, [r4, #0x50]
	movs r1, #0x80
	lsls r1, r1, #0xa
	str r1, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	ldr r2, _0806EF48 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08069A00
	adds r1, r0, #0
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0806EF0E
	b _0806F01C
_0806EF0E:
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0xa0
	bl sub_0806CFFC
	cmp r0, #0
	bne _0806EF3C
	adds r0, r4, #0
	bl sub_0806D54C
	cmp r0, #0
	beq _0806F01C
_0806EF3C:
	movs r0, #1
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #1
	b _0806EFFE
	.align 2, 0
_0806EF48: .4byte 0xFFE00000
_0806EF4C:
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
	movs r1, #3
	bl sub_0806D128
	adds r1, r0, #0
	cmp r1, #0
	bne _0806F00C
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806EFAC
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806EF90
	movs r0, #0x80
	lsls r0, r0, #9
	b _0806EF92
_0806EF90:
	ldr r0, _0806EFA8 @ =0xFFFF0000
_0806EF92:
	str r0, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #3
	bne _0806EFAE
	ldr r0, [r4, #0x48]
	lsls r0, r0, #2
	str r0, [r4, #0x48]
	b _0806EFAE
	.align 2, 0
_0806EFA8: .4byte 0xFFFF0000
_0806EFAC:
	str r1, [r4, #0x48]
_0806EFAE:
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r2, _0806F008 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08069A00
	adds r1, r0, #0
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806F01C
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x3c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x78
	movs r3, #0x50
	bl sub_0806CFFC
	cmp r0, #0
	beq _0806F01C
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	str r1, [r4, #0x48]
	strb r1, [r4, #0xd]
	adds r0, r4, #0
_0806EFFE:
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0806F01C
	.align 2, 0
_0806F008: .4byte 0xFFE00000
_0806F00C:
	movs r0, #0
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0806F01C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0806F024
sub_0806F024: @ 0x0806F024
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0806F044 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806F048 @ =0x0000A094
	adds r4, r0, r1
	ldrb r0, [r5, #0xb]
	cmp r0, #7
	bls _0806F03A
	b _0806F414
_0806F03A:
	lsls r0, r0, #2
	ldr r1, _0806F04C @ =_0806F050
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806F044: .4byte gEwramData
_0806F048: .4byte 0x0000A094
_0806F04C: .4byte _0806F050
_0806F050: @ jump table
	.4byte _0806F070 @ case 0
	.4byte _0806F126 @ case 1
	.4byte _0806F164 @ case 2
	.4byte _0806F268 @ case 3
	.4byte _0806F294 @ case 4
	.4byte _0806F34C @ case 5
	.4byte _0806F3A0 @ case 6
	.4byte _0806F3F0 @ case 7
_0806F070:
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r2, _0806F0BC @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xa
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	adds r2, r0, #0
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _0806F090
	b _0806F414
_0806F090:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _0806F0A0
	b _0806F414
_0806F0A0:
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0806F0C0
	strb r1, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0806F284
	.align 2, 0
_0806F0BC: .4byte 0xFFE00000
_0806F0C0:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806F0DA
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r0, #0
	adds r1, #0x40
	b _0806F0E4
_0806F0DA:
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r0, #0
	subs r1, #0x20
_0806F0E4:
	ldrh r0, [r4, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldrh r4, [r4, #0xa]
	adds r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0806F114
	movs r0, #3
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0806F284
_0806F114:
	movs r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0806F284
_0806F126:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0806F132
	b _0806F414
_0806F132:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806F14C
	movs r0, #0xa0
	lsls r0, r0, #0xb
	b _0806F14E
_0806F14C:
	ldr r0, _0806F184 @ =0xFFFB0000
_0806F14E:
	str r0, [r5, #0x48]
	movs r0, #0
	str r0, [r5, #0x50]
	movs r1, #0x80
	lsls r1, r1, #0xa
	str r1, [r5, #0x4c]
	movs r1, #0xa0
	lsls r1, r1, #6
	str r1, [r5, #0x54]
	strb r0, [r5, #0xd]
	str r0, [r5, #0x10]
_0806F164:
	ldr r4, [r5, #0x10]
	cmp r4, #0
	beq _0806F188
	movs r4, #0
	str r4, [r5, #0x10]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xb]
	b _0806F414
	.align 2, 0
_0806F184: .4byte 0xFFFB0000
_0806F188:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0806F1D0
	str r4, [r5, #0x48]
	str r4, [r5, #0x50]
	movs r1, #0x80
	lsls r1, r1, #0xa
	str r1, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldr r2, _0806F1CC @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xa
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	strb r4, [r5, #0xa]
	strb r6, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _0806F414
	.align 2, 0
_0806F1CC: .4byte 0xFFE00000
_0806F1D0:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #2
	bls _0806F1FC
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r2, _0806F1F8 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xa
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	b _0806F414
	.align 2, 0
_0806F1F8: .4byte 0xFFE00000
_0806F1FC:
	adds r0, r5, #0
	movs r1, #0x10
	bl sub_0806D490
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r2, _0806F260 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xa
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	adds r2, r0, #0
	ldrb r1, [r5, #0xd]
	adds r0, r1, #1
	strb r0, [r5, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0806F22A
	b _0806F414
_0806F22A:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _0806F234
	b _0806F414
_0806F234:
	ldr r0, [r5, #0x48]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	ldr r1, [r5, #0x44]
	ldr r2, _0806F264 @ =0xFFFE0000
	adds r1, r1, r2
	movs r2, #0xc0
	lsls r2, r2, #0xb
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r4, r5, #0
	adds r4, #0x5c
	ldrb r4, [r4]
	subs r4, #1
	str r4, [sp]
	str r6, [sp, #4]
	bl sub_0806DA6C
	b _0806F414
	.align 2, 0
_0806F260: .4byte 0xFFE00000
_0806F264: .4byte 0xFFFE0000
_0806F268:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0806F274
	b _0806F414
_0806F274:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	adds r0, #0x6f
	strb r1, [r0]
	strb r1, [r5, #0xd]
_0806F284:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _0806F414
_0806F294:
	ldrb r1, [r5, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0806F2FE
	movs r0, #0x77
	bl PlaySong
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806F2DC
	ldr r0, [r5, #0x40]
	ldr r1, _0806F2D4 @ =0xFFF20000
	adds r0, r0, r1
	ldr r1, [r5, #0x44]
	ldr r2, _0806F2D8 @ =0xFFEC0000
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
	b _0806F2FE
	.align 2, 0
_0806F2D4: .4byte 0xFFF20000
_0806F2D8: .4byte 0xFFEC0000
_0806F2DC:
	ldr r0, [r5, #0x40]
	movs r1, #0xe0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	ldr r1, [r5, #0x44]
	ldr r2, _0806F348 @ =0xFFEC0000
	adds r1, r1, r2
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r2, r5, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_0806F2FE:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xd]
	adds r2, r5, #0
	adds r2, #0x6f
	strb r1, [r2]
	ldrb r0, [r5, #0xd]
	cmp r0, #0x1e
	bne _0806F316
	movs r0, #0xc8
	strb r0, [r2]
_0806F316:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x1f
	bne _0806F324
	adds r0, r5, #0
	movs r1, #0x40
	bl sub_0806F5C8
_0806F324:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x23
	bls _0806F414
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #0x30
	bl sub_0806F5C8
	adds r0, r5, #0
	movs r1, #0x50
	bl sub_0806F5C8
	movs r0, #0x79
	bl PlaySong
	b _0806F414
	.align 2, 0
_0806F348: .4byte 0xFFEC0000
_0806F34C:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #3
	bls _0806F414
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806F36A
	movs r0, #0xb0
	lsls r0, r0, #0xd
	b _0806F36C
_0806F36A:
	ldr r0, _0806F398 @ =0xFFEA0000
_0806F36C:
	str r0, [r5, #0x48]
	movs r4, #0
	str r4, [r5, #0x50]
	movs r1, #0x80
	lsls r1, r1, #0xa
	str r1, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldr r2, _0806F39C @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xa
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	str r4, [r5, #0x48]
	b _0806F414
	.align 2, 0
_0806F398: .4byte 0xFFEA0000
_0806F39C: .4byte 0xFFE00000
_0806F3A0:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806F414
	movs r4, #0
	str r4, [r5, #0x50]
	movs r1, #0x80
	lsls r1, r1, #0xa
	str r1, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	ldr r2, _0806F3EC @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xa
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08069A00
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0806B1FC
	strb r4, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _0806F414
	.align 2, 0
_0806F3EC: .4byte 0xFFE00000
_0806F3F0:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	movs r4, #0
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2c
	bls _0806F414
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0xa]
	movs r0, #1
	strb r0, [r5, #0xb]
	strb r4, [r5, #0xd]
_0806F414:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0806F41C
sub_0806F41C: @ 0x0806F41C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0806F42E
	cmp r0, #1
	beq _0806F476
	b _0806F4A8
_0806F42E:
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
	beq _0806F45C
	ldr r0, _0806F458 @ =0xFFFE8000
	b _0806F460
	.align 2, 0
_0806F458: .4byte 0xFFFE8000
_0806F45C:
	movs r0, #0xc0
	lsls r0, r0, #9
_0806F460:
	str r0, [r4, #0x48]
	movs r0, #0
	str r0, [r4, #0x50]
	ldr r0, _0806F4B0 @ =0xFFFDC000
	str r0, [r4, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_0806F476:
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _0806F4B4 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08069A00
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	beq _0806F4A8
	movs r0, #0
	str r0, [r4, #0x48]
	strb r0, [r4, #0xa]
	movs r0, #1
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0806F4A8:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806F4B0: .4byte 0xFFFDC000
_0806F4B4: .4byte 0xFFE00000

	thumb_func_start sub_0806F4B8
sub_0806F4B8: @ 0x0806F4B8
	push {r4, lr}
	sub sp, #0x10
	adds r3, r0, #0
	mov r0, sp
	movs r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	mov r2, sp
	adds r4, r3, #0
	adds r4, #0x3c
	ldrb r0, [r4]
	lsrs r0, r0, #1
	strh r0, [r2]
	mov r0, sp
	strh r1, [r0, #6]
	str r1, [r3, #0x10]
	ldrb r2, [r3, #0xa]
	cmp r2, #1
	bne _0806F4F4
	ldrb r0, [r3, #0xb]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0806F4F4
	mov r0, sp
	ldrb r1, [r4]
	strh r1, [r0]
	strh r2, [r0, #6]
	str r2, [r3, #0x10]
_0806F4F4:
	ldr r0, [r3, #0x40]
	str r0, [sp, #8]
	ldr r0, [r3, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806F50C
sub_0806F50C: @ 0x0806F50C
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
	bgt _0806F590
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x6e
	bl PlaySong
	adds r0, r6, #0
	movs r1, #4
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
	b _0806F5BC
_0806F590:
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bne _0806F5C0
	ldrb r0, [r6, #0xb]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0806F5C0
	ldrb r0, [r7]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0806F5C0
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #3
_0806F5BC:
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xb]
_0806F5C0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806F5C8
sub_0806F5C8: @ 0x0806F5C8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r2, _0806F624 @ =sub_0806F678
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _0806F670
	bl sub_0806F6D4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806F5EE
	adds r0, r5, #0
	bl EntityDelete
_0806F5EE:
	adds r0, r5, #0
	bl sub_0806F71C
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0x12
	strb r0, [r1]
	str r6, [r5, #0x10]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _0806F628
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, r0, r4
	b _0806F630
	.align 2, 0
_0806F624: .4byte sub_0806F678
_0806F628:
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, r0, r4
_0806F630:
	adds r2, r5, #0
	adds r2, #0x42
	strh r0, [r2]
	adds r0, r6, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r4, r5, #0
	adds r4, #0x46
	strh r0, [r4]
	adds r0, r5, #0
	bl sub_0806AF98
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldrb r0, [r7]
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
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
_0806F670:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806F678
sub_0806F678: @ 0x0806F678
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0806F698
	cmp r0, #2
	ble _0806F68E
	cmp r0, #3
	beq _0806F6BE
	b _0806F6CA
_0806F68E:
	cmp r0, #0
	blt _0806F6CA
	movs r0, #2
	strb r0, [r4, #0xa]
	b _0806F6CA
_0806F698:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _0806F6B0
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
_0806F6B0:
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _0806F6CA
	strb r0, [r4, #0xa]
	b _0806F6CA
_0806F6BE:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_0806F6CA:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806F6D4
sub_0806F6D4: @ 0x0806F6D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806F708 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	blt _0806F714
	ldr r1, _0806F70C @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _0806F710 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0806F716
	.align 2, 0
_0806F708: .4byte 0x081C15F4
_0806F70C: .4byte 0x0820ED60
_0806F710: .4byte sub_0803B9D0
_0806F714:
	movs r0, #0
_0806F716:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0806F71C
sub_0806F71C: @ 0x0806F71C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0806F748 @ =sub_0806F750
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0806F74C @ =0x1810E8F8
	adds r0, r4, #0
	bl sub_08042884
	adds r4, #0x72
	ldrb r1, [r4]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806F748: .4byte sub_0806F750
_0806F74C: .4byte 0x1810E8F8

	thumb_func_start sub_0806F750
sub_0806F750: @ 0x0806F750
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
	ldr r0, [r4, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x44]
	str r0, [sp, #0xc]
	movs r0, #3
	strh r0, [r1, #6]
	mov r0, sp
	bl sub_08021654
	ldr r2, _0806F79C @ =0xFFFE0000
	adds r4, #0x58
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806F78A
	rsbs r2, r2, #0
_0806F78A:
	ldr r1, _0806F7A0 @ =0xFFFB0000
	adds r0, r2, #0
	bl sub_08021248
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806F79C: .4byte 0xFFFE0000
_0806F7A0: .4byte 0xFFFB0000

	thumb_func_start EnemyWerewolfCreate
EnemyWerewolfCreate: @ 0x0806F7A4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806F818
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806F7BA
	adds r0, r4, #0
	bl EntityDelete
	b _0806F80A
_0806F7BA:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _0806F7EC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _0806F7F0
	movs r0, #4
	strb r0, [r4, #0xa]
	b _0806F80A
	.align 2, 0
_0806F7EC: .4byte gEwramData
_0806F7F0:
	ldr r2, _0806F810 @ =sub_0806F4B8
	ldr r3, _0806F814 @ =sub_0806F50C
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	strb r5, [r4, #0xa]
_0806F80A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806F810: .4byte sub_0806F4B8
_0806F814: .4byte sub_0806F50C

	thumb_func_start sub_0806F818
sub_0806F818: @ 0x0806F818
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0806F84C @ =0x081CBF34
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0806F85C
	ldr r0, _0806F850 @ =0x0820A440
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0806F854 @ =0x08212C64
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _0806F858 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0806F85E
	.align 2, 0
_0806F84C: .4byte 0x081CBF34
_0806F850: .4byte 0x0820A440
_0806F854: .4byte 0x08212C64
_0806F858: .4byte sub_0803B9D0
_0806F85C:
	movs r0, #0
_0806F85E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start EnemyKillerFishUpdate
EnemyKillerFishUpdate: @ 0x0806F864
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0806F89C
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _0806F87E
	b _0806F97E
_0806F87E:
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
	beq _0806F89C
	adds r0, r4, #0
	bl sub_08021924
_0806F89C:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _0806F8B6
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _0806F8C4
_0806F8B6:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0806F8C4:
	adds r0, r4, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _0806F8E4
	ldrb r0, [r4, #0xa]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0806F97E
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _0806F97E
_0806F8E4:
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	bhi _0806F946
	lsls r0, r0, #2
	ldr r1, _0806F8F4 @ =_0806F8F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806F8F4: .4byte _0806F8F8
_0806F8F8: @ jump table
	.4byte _0806F910 @ case 0
	.4byte _0806F918 @ case 1
	.4byte _0806F920 @ case 2
	.4byte _0806F928 @ case 3
	.4byte _0806F930 @ case 4
	.4byte _0806F93E @ case 5
_0806F910:
	adds r0, r4, #0
	bl sub_0806FA50
	b _0806F946
_0806F918:
	adds r0, r4, #0
	bl sub_0806FCA4
	b _0806F946
_0806F920:
	adds r0, r4, #0
	bl sub_0806FF70
	b _0806F946
_0806F928:
	adds r0, r4, #0
	bl sub_0806AEAC
	b _0806F946
_0806F930:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _0806F97E
_0806F93E:
	adds r0, r4, #0
	bl sub_0803F17C
	b _0806F97E
_0806F946:
	adds r5, r4, #0
	adds r5, #0x65
	ldrb r6, [r5]
	ldrb r0, [r4, #0xa]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0806F95E
	adds r0, r4, #0
	bl sub_0803F17C
_0806F95E:
	ldrb r5, [r5]
	cmp r6, r5
	beq _0806F96A
	adds r0, r4, #0
	bl sub_0806B1FC
_0806F96A:
	ldrb r0, [r4, #0xa]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0806F97E
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
_0806F97E:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyKillerFishCreate
EnemyKillerFishCreate: @ 0x0806F988
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _0806F9A8 @ =gEwramData
	ldr r0, [r4]
	ldr r1, _0806F9AC @ =0x0000A094
	adds r6, r0, r1
	adds r0, r5, #0
	bl sub_08070AC4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806F9B0
	adds r0, r5, #0
	bl EntityDelete
	b _0806FA48
	.align 2, 0
_0806F9A8: .4byte gEwramData
_0806F9AC: .4byte 0x0000A094
_0806F9B0:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r0, r5, #0
	bl sub_0806B04C
	ldr r0, [r4]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806F9DA
	movs r0, #5
	b _0806FA46
_0806F9DA:
	ldr r1, _0806FA28 @ =sub_08070B10
	ldr r2, _0806FA2C @ =sub_080700CC
	adds r0, r5, #0
	bl sub_0806D244
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	ldrh r1, [r6, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r5, #0
	adds r4, #0x46
	ldrh r1, [r4]
	ldrh r6, [r6, #0xa]
	adds r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #3
	beq _0806FA30
	adds r0, r5, #0
	bl sub_0806AF98
	movs r0, #0x63
	strb r0, [r5, #0xb]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r4]
	subs r0, #8
	strh r0, [r4]
	b _0806FA44
	.align 2, 0
_0806FA28: .4byte sub_08070B10
_0806FA2C: .4byte sub_080700CC
_0806FA30:
	movs r4, #0
	b _0806FA3C
_0806FA34:
	adds r0, r5, #0
	bl sub_08070168
	adds r4, #1
_0806FA3C:
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	cmp r4, r0
	blt _0806FA34
_0806FA44:
	movs r0, #0
_0806FA46:
	strb r0, [r5, #0xa]
_0806FA48:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806FA50
sub_0806FA50: @ 0x0806FA50
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0806FA6C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806FA70 @ =0x0000A094
	adds r6, r0, r1
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0806FA74
	cmp r0, #1
	beq _0806FAAC
	b _0806FC8A
	.align 2, 0
_0806FA6C: .4byte gEwramData
_0806FA70: .4byte 0x0000A094
_0806FA74:
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806FA88
	movs r0, #0x80
	lsls r0, r0, #7
	b _0806FA8A
_0806FA88:
	ldr r0, _0806FAA8 @ =0xFFFFC000
_0806FA8A:
	str r0, [r5, #0x48]
	movs r1, #0
	str r1, [r5, #0x50]
	str r1, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #0x54]
	str r1, [r5, #0x14]
	strh r1, [r5, #0x18]
	strh r1, [r5, #0x1a]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _0806FC8A
	.align 2, 0
_0806FAA8: .4byte 0xFFFFC000
_0806FAAC:
	movs r1, #0x80
	lsls r1, r1, #0xc
	ldr r2, _0806FAD0 @ =0xFFF90000
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_08069CF4
	adds r7, r0, #0
	ldr r1, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	ble _0806FAD8
	ldr r0, _0806FAD4 @ =0xFFFFFC00
	b _0806FAE2
	.align 2, 0
_0806FAD0: .4byte 0xFFF90000
_0806FAD4: .4byte 0xFFFFFC00
_0806FAD8:
	ldr r0, _0806FB54 @ =0xFFFFC000
	cmp r1, r0
	bge _0806FAE4
	movs r0, #0x80
	lsls r0, r0, #3
_0806FAE2:
	str r0, [r5, #0x54]
_0806FAE4:
	movs r0, #4
	ands r0, r7
	cmp r0, #0
	beq _0806FAF0
	ldr r0, _0806FB58 @ =0xFFFFFC00
	str r0, [r5, #0x54]
_0806FAF0:
	movs r0, #8
	ands r0, r7
	cmp r0, #0
	beq _0806FB02
	movs r0, #0
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #0x54]
_0806FB02:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	ble _0806FB5C
	movs r2, #0x18
	ldrsh r3, [r5, r2]
	movs r4, #6
	ldrsh r1, [r6, r4]
	adds r2, r5, #0
	adds r2, #0x42
	movs r4, #0
	ldrsh r0, [r2, r4]
	adds r1, r1, r0
	adds r4, r2, #0
	cmp r3, r1
	bne _0806FBC0
	ldr r0, [r5, #0x14]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r5, #0x14]
	cmp r1, #0x3b
	ble _0806FBCC
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
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806FBA8
	movs r0, #0x80
	lsls r0, r0, #7
	b _0806FBAA
	.align 2, 0
_0806FB54: .4byte 0xFFFFC000
_0806FB58: .4byte 0xFFFFFC00
_0806FB5C:
	movs r2, #0x18
	ldrsh r3, [r5, r2]
	movs r4, #6
	ldrsh r1, [r6, r4]
	adds r2, r5, #0
	adds r2, #0x42
	movs r4, #0
	ldrsh r0, [r2, r4]
	adds r1, r1, r0
	adds r4, r2, #0
	cmp r3, r1
	bne _0806FBC0
	ldr r0, [r5, #0x14]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r5, #0x14]
	cmp r1, #0x3b
	ble _0806FBCC
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
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806FBA8
	movs r0, #0x80
	lsls r0, r0, #7
	b _0806FBAA
_0806FBA8:
	ldr r0, _0806FBBC @ =0xFFFFC000
_0806FBAA:
	str r0, [r5, #0x48]
	movs r0, #0
	str r0, [r5, #0x14]
	strh r0, [r5, #0x18]
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #0x54]
	b _0806FBCC
	.align 2, 0
_0806FBBC: .4byte 0xFFFFC000
_0806FBC0:
	ldrh r0, [r4]
	ldrh r1, [r6, #6]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r5, #0x18]
	str r1, [r5, #0x14]
_0806FBCC:
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	bne _0806FBF2
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r4, r5, #0
	adds r4, #0x46
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #7
	bl sub_0806E5FC
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #0x54]
_0806FBF2:
	ldrh r0, [r5, #0x1a]
	subs r0, #1
	strh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0806FC3C
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806FC16
	ldr r0, [r5, #0x40]
	movs r4, #0x80
	lsls r4, r4, #0xd
	adds r1, r0, r4
	b _0806FC1C
_0806FC16:
	ldr r0, [r5, #0x40]
	ldr r2, _0806FC94 @ =0xFFF00000
	adds r1, r0, r2
_0806FC1C:
	ldr r2, [r5, #0x44]
	movs r0, #0
	str r0, [sp]
	ldr r0, _0806FC98 @ =0xFFFFC000
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r3, #0x10
	bl sub_080707BC
	bl RandomNumberGenerator
	movs r1, #0x78
	bl __umodsi3
	adds r0, #0x78
	strh r0, [r5, #0x1a]
_0806FC3C:
	ldr r0, _0806FC9C @ =gEwramData
	ldr r0, [r0]
	ldr r4, _0806FCA0 @ =0x00013168
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0806FC8A
	adds r0, r5, #0
	bl sub_0806CDB8
	adds r4, r0, #0
	ldrh r0, [r6, #6]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_0806CDFC
	adds r1, r0, #0
	ldrh r6, [r6, #0xa]
	adds r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_0806D0B8
	cmp r0, #3
	bne _0806FC8A
	movs r1, #0xa0
	lsls r1, r1, #0xf
	adds r0, r5, #0
	bl sub_0806CEF8
	cmp r0, #0
	beq _0806FC8A
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xb]
_0806FC8A:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FC94: .4byte 0xFFF00000
_0806FC98: .4byte 0xFFFFC000
_0806FC9C: .4byte gEwramData
_0806FCA0: .4byte 0x00013168

	thumb_func_start sub_0806FCA4
sub_0806FCA4: @ 0x0806FCA4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0806FCCC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0806FCD0 @ =0x0000A094
	adds r6, r0, r1
	ldrb r0, [r5, #0xb]
	cmp r0, #4
	bls _0806FCC0
	b _0806FF5E
_0806FCC0:
	lsls r0, r0, #2
	ldr r1, _0806FCD4 @ =_0806FCD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806FCCC: .4byte gEwramData
_0806FCD0: .4byte 0x0000A094
_0806FCD4: .4byte _0806FCD8
_0806FCD8: @ jump table
	.4byte _0806FCEC @ case 0
	.4byte _0806FD44 @ case 1
	.4byte _0806FD6C @ case 2
	.4byte _0806FE50 @ case 3
	.4byte _0806FEEC @ case 4
_0806FCEC:
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
	movs r0, #0
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
	str r0, [r5, #0x4c]
	str r0, [r5, #0x54]
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	bl sub_0806CDB8
	adds r4, r0, #0
	bl RandomNumberGenerator
	ldrh r2, [r6, #6]
	adds r4, r4, r2
	movs r1, #7
	ands r1, r0
	adds r4, r4, r1
	subs r4, #4
	strh r4, [r5, #0x1c]
	adds r0, r5, #0
	bl sub_0806CDFC
	ldrh r6, [r6, #0xa]
	adds r0, r0, r6
	subs r0, #0x10
	strh r0, [r5, #0x1e]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _0806FF5E
_0806FD44:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x27
	bhi _0806FD54
	b _0806FF5E
_0806FD54:
	movs r0, #0
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0806FF5E
_0806FD6C:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806FD78
	b _0806FF5E
_0806FD78:
	movs r0, #0
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0
	mov r8, r0
	movs r1, #0x58
	adds r1, r1, r5
	mov sb, r1
_0806FD8C:
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806FDB8
	ldr r0, [r5, #0x40]
	ldr r1, _0806FDAC @ =0xFFF60000
	adds r6, r0, r1
	bl RandomNumberGenerator
	ldr r1, _0806FDB0 @ =0x0000FFFF
	ands r1, r0
	ldr r0, _0806FDB4 @ =0xFFFD0000
	subs r7, r0, r1
	b _0806FDCE
	.align 2, 0
_0806FDAC: .4byte 0xFFF60000
_0806FDB0: .4byte 0x0000FFFF
_0806FDB4: .4byte 0xFFFD0000
_0806FDB8:
	ldr r0, [r5, #0x40]
	movs r2, #0xa0
	lsls r2, r2, #0xc
	adds r6, r0, r2
	bl RandomNumberGenerator
	ldr r1, _0806FE0C @ =0x0000FFFF
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #0xa
	adds r7, r1, r0
_0806FDCE:
	bl RandomNumberGenerator
	ldr r2, _0806FE10 @ =0xFFFE0000
	adds r1, r6, r2
	ldr r4, _0806FE14 @ =0x0003FFFF
	ands r0, r4
	adds r6, r1, r0
	bl RandomNumberGenerator
	ands r0, r4
	ldr r1, [r5, #0x44]
	subs r4, r1, r0
	mov r0, r8
	cmp r0, #0
	bne _0806FE20
	bl RandomNumberGenerator
	ldr r1, _0806FE18 @ =0x00001FFF
	ands r1, r0
	ldr r0, _0806FE1C @ =0xFFFFA000
	subs r0, r0, r1
	str r7, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #0xf
	bl sub_080707BC
	b _0806FE3C
	.align 2, 0
_0806FE0C: .4byte 0x0000FFFF
_0806FE10: .4byte 0xFFFE0000
_0806FE14: .4byte 0x0003FFFF
_0806FE18: .4byte 0x00001FFF
_0806FE1C: .4byte 0xFFFFA000
_0806FE20:
	bl RandomNumberGenerator
	ldr r1, _0806FE48 @ =0x00001FFF
	ands r1, r0
	ldr r0, _0806FE4C @ =0xFFFFC000
	subs r0, r0, r1
	str r7, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #0x10
	bl sub_080707BC
_0806FE3C:
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #3
	ble _0806FD8C
	b _0806FF5E
	.align 2, 0
_0806FE48: .4byte 0x00001FFF
_0806FE4C: .4byte 0xFFFFC000
_0806FE50:
	movs r0, #0x1c
	ldrsh r1, [r5, r0]
	lsls r1, r1, #0x10
	movs r0, #0x1e
	ldrsh r2, [r5, r0]
	lsls r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r5, #0
	bl sub_080693E4
	cmp r0, #0
	beq _0806FE80
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0806FE80:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _0806FEA4
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0806FEA4:
	movs r1, #0x80
	lsls r1, r1, #0xc
	ldr r2, _0806FEE8 @ =0xFFF90000
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_08069CF4
	adds r6, r0, #0
	movs r0, #0x80
	ands r6, r0
	cmp r6, #0
	bne _0806FF5E
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r4, r5, #0
	adds r4, #0x46
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #7
	bl sub_0806E5FC
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	str r6, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #0x54]
	b _0806FF5E
	.align 2, 0
_0806FEE8: .4byte 0xFFF90000
_0806FEEC:
	adds r0, r5, #0
	movs r1, #8
	bl sub_0806D490
	adds r0, r5, #0
	movs r1, #8
	bl sub_0806D4A8
	movs r1, #0x80
	lsls r1, r1, #0xc
	ldr r2, _0806FF6C @ =0xFFF90000
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_08069CF4
	adds r6, r0, #0
	movs r0, #0x80
	ands r6, r0
	cmp r6, #0
	bne _0806FF3E
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r4, r5, #0
	adds r4, #0x46
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #7
	bl sub_0806E5FC
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	str r6, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #0x54]
_0806FF3E:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0806FF5E
	movs r0, #0
	strb r0, [r5, #0xa]
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
_0806FF5E:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FF6C: .4byte 0xFFF90000

	thumb_func_start sub_0806FF70
sub_0806FF70: @ 0x0806FF70
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r3, [r5, #0xb]
	cmp r3, #1
	beq _0806FFB0
	cmp r3, #1
	bgt _0806FF86
	cmp r3, #0
	beq _0806FF8C
	b _080700AE
_0806FF86:
	cmp r3, #2
	beq _0807001C
	b _080700AE
_0806FF8C:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	str r0, [r5, #0x48]
	str r3, [r5, #0x50]
	str r3, [r5, #0x4c]
	ldr r0, _0806FFAC @ =0xFFFFFCE0
	str r0, [r5, #0x54]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _080700AE
	.align 2, 0
_0806FFAC: .4byte 0xFFFFFCE0
_0806FFB0:
	ldr r2, _08070014 @ =0xFFF90000
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #1
	bl sub_08069CF4
	adds r2, r0, #0
	ldr r0, [r5, #0x4c]
	ldr r1, _08070018 @ =0xFFFFC000
	cmp r0, r1
	bge _0806FFCE
	str r1, [r5, #0x4c]
_0806FFCE:
	movs r0, #0x88
	ands r0, r2
	cmp r0, #0x80
	beq _080700AE
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r4, r5, #0
	adds r4, #0x46
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #7
	bl sub_0806E5FC
	ldrh r1, [r4]
	adds r1, r1, r0
	movs r2, #0
	movs r0, #0
	strh r1, [r4]
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r5, #0x54]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r2, [r5, #0xd]
	movs r0, #0x6c
	bl PlaySong
	b _080700AE
	.align 2, 0
_08070014: .4byte 0xFFF90000
_08070018: .4byte 0xFFFFC000
_0807001C:
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r5, #0
	bl sub_0806D3D8
	ldr r1, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	ble _08070038
	ldr r0, _08070034 @ =0xFFFFFE00
	b _08070042
	.align 2, 0
_08070034: .4byte 0xFFFFFE00
_08070038:
	ldr r0, _080700B8 @ =0xFFFFE000
	cmp r1, r0
	bge _08070044
	movs r0, #0x80
	lsls r0, r0, #2
_08070042:
	str r0, [r5, #0x54]
_08070044:
	bl RandomNumberGenerator
	ldr r1, _080700BC @ =0x001FFFFF
	ands r1, r0
	ldr r4, [r5, #0x40]
	adds r4, r4, r1
	ldr r0, _080700C0 @ =0xFFF00000
	adds r4, r4, r0
	bl RandomNumberGenerator
	ldr r1, _080700C4 @ =0x000FFFFF
	ands r1, r0
	ldr r2, [r5, #0x44]
	adds r2, r2, r1
	ldr r1, _080700C8 @ =0xFFF80000
	adds r2, r2, r1
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0xf
	bl sub_08070A30
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0807009C
	ldrb r1, [r5, #0xd]
	movs r0, #0x46
	subs r0, r0, r1
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
_0807009C:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x45
	bls _080700AE
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080700AE:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080700B8: .4byte 0xFFFFE000
_080700BC: .4byte 0x001FFFFF
_080700C0: .4byte 0xFFF00000
_080700C4: .4byte 0x000FFFFF
_080700C8: .4byte 0xFFF80000

	thumb_func_start sub_080700CC
sub_080700CC: @ 0x080700CC
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
	bgt _08070160
	adds r0, r6, #0
	bl sub_080683BC
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r6, #0
	bl sub_0803F17C
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
	ldrb r0, [r6, #0xb]
	cmp r0, #0x63
	bne _08070150
	movs r0, #3
	b _08070152
_08070150:
	movs r0, #2
_08070152:
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
	adds r1, r6, #0
	adds r1, #0x37
	movs r0, #0xff
	strb r0, [r1]
_08070160:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08070168
sub_08070168: @ 0x08070168
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _080701B8 @ =sub_08070218
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08070212
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08070988
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08070190
	adds r0, r4, #0
	bl EntityDelete
_08070190:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08070774
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _080701BC
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	b _080701C4
	.align 2, 0
_080701B8: .4byte sub_08070218
_080701BC:
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
_080701C4:
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	str r5, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r0, [r0]
	subs r1, #0xf
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsrs r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x3c
	strb r0, [r1]
_08070212:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08070218
sub_08070218: @ 0x08070218
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r6, r0, #0
	ldr r0, [r6, #0x10]
	mov r8, r0
	ldr r0, _08070280 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08070284 @ =0x0000A094
	adds r1, r0, r1
	str r1, [sp, #0x1c]
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	beq _08070266
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08070248
	b _08070762
_08070248:
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xb0
	str r0, [sp]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _08070266
	adds r0, r6, #0
	bl sub_08021924
_08070266:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08070288
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	b _08070294
	.align 2, 0
_08070280: .4byte gEwramData
_08070284: .4byte 0x0000A094
_08070288:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r2, [r0]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
_08070294:
	strb r1, [r0]
	mov sl, r0
	mov r2, r8
	cmp r2, #0
	beq _080702D6
	ldr r0, [r2]
	cmp r0, #0
	beq _080702D6
	mov r0, r8
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #7
	bne _080702D6
	ldrb r0, [r2, #0xa]
	cmp r0, #4
	bne _080702B8
	movs r0, #1
	strb r0, [r6, #0x18]
_080702B8:
	mov r3, r8
	movs r1, #0x34
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _080702D2
	adds r0, r6, #0
	adds r0, #0x37
	mov r1, r8
	adds r1, #0x37
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080702D6
_080702D2:
	movs r0, #1
	strb r0, [r6, #0x19]
_080702D6:
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	beq _08070300
	ldr r0, _080702F8 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080702FC @ =0x000004BE
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _08070300
	add r0, sp, #0xc
	adds r1, r6, #0
	bl sub_080421AC
	b _08070762
	.align 2, 0
_080702F8: .4byte gEwramData
_080702FC: .4byte 0x000004BE
_08070300:
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bls _08070308
	b _0807075C
_08070308:
	lsls r0, r0, #2
	ldr r1, _08070314 @ =_08070318
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08070314: .4byte _08070318
_08070318: @ jump table
	.4byte _0807032C @ case 0
	.4byte _0807033E @ case 1
	.4byte _08070518 @ case 2
	.4byte _0807054E @ case 3
	.4byte _0807033E @ case 4
_0807032C:
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0xa]
	str r1, [r6, #0x48]
	str r1, [r6, #0x4c]
	str r1, [r6, #0x50]
	str r1, [r6, #0x54]
	str r1, [r6, #0x14]
	strb r1, [r6, #0xb]
_0807033E:
	movs r0, #0x18
	ldrsb r0, [r6, r0]
	cmp r0, #1
	beq _0807034E
	movs r0, #0x19
	ldrsb r0, [r6, r0]
	cmp r0, #1
	bne _08070358
_0807034E:
	movs r1, #0
	movs r0, #3
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xb]
	b _08070300
_08070358:
	ldr r0, [r6, #0x14]
	subs r0, #1
	str r0, [r6, #0x14]
	cmp r0, #0
	bgt _08070424
	bl RandomNumberGenerator
	movs r1, #0x14
	bl __umodsi3
	adds r0, #0x14
	str r0, [r6, #0x14]
	bl RandomNumberGenerator
	mov r2, r8
	ldr r1, [r2, #0x40]
	ldr r5, _080703A4 @ =0xFFF80000
	adds r1, r1, r5
	ldr r4, _080703A8 @ =0x000FFFFF
	ands r0, r4
	adds r7, r1, r0
	bl RandomNumberGenerator
	mov r3, r8
	ldr r1, [r3, #0x44]
	adds r1, r1, r5
	ands r0, r4
	adds r1, r1, r0
	mov sb, r1
	ldr r1, [r6, #0x40]
	subs r0, r7, r1
	cmp r0, #0
	bge _080703AC
	subs r0, r1, r7
	asrs r0, r0, #0x10
	rsbs r1, r0, #0
	b _080703AE
	.align 2, 0
_080703A4: .4byte 0xFFF80000
_080703A8: .4byte 0x000FFFFF
_080703AC:
	asrs r1, r0, #0x10
_080703AE:
	adds r0, r1, #0
	muls r0, r1, r0
	adds r1, r0, #0
	ldr r2, [r6, #0x44]
	mov r3, sb
	subs r0, r3, r2
	cmp r0, #0
	bge _080703C6
	subs r0, r2, r3
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080703C8
_080703C6:
	asrs r0, r0, #0x10
_080703C8:
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r1, r0
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, [r6, #0x40]
	subs r0, r7, r1
	cmp r0, #0
	bge _080703E8
	subs r0, r1, r7
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080703EA
_080703E8:
	asrs r0, r0, #0x10
_080703EA:
	lsls r0, r0, #0x11
	adds r1, r5, #0
	bl __divsi3
	adds r4, r0, #0
	ldr r1, [r6, #0x44]
	mov r3, sb
	subs r0, r3, r1
	cmp r0, #0
	bge _08070406
	subs r0, r1, r3
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08070408
_08070406:
	asrs r0, r0, #0x10
_08070408:
	lsls r0, r0, #0x11
	adds r1, r5, #0
	bl __divsi3
	adds r1, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	bne _08070420
	cmp r5, #9
	bgt _08070420
	movs r0, #1
	strb r0, [r6, #0xa]
_08070420:
	str r4, [r6, #0x48]
	str r1, [r6, #0x4c]
_08070424:
	ldr r0, [r6, #0x48]
	cmp r0, #0
	ble _08070438
	mov r1, sl
	ldrb r0, [r1]
	movs r1, #0x40
	orrs r0, r1
	mov r2, sl
	strb r0, [r2]
	b _08070444
_08070438:
	mov r3, sl
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
_08070444:
	adds r0, r6, #0
	movs r1, #0x14
	bl sub_0806D490
	adds r0, r6, #0
	movs r1, #0x14
	bl sub_0806D4A8
	movs r3, #4
	rsbs r3, r3, #0
	movs r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0xc0
	lsls r0, r0, #0xb
	str r0, [sp, #8]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r3, #0
	bl sub_0806A224
	adds r5, r0, #0
	movs r0, #0x80
	ands r5, r0
	cmp r5, #0
	bne _08070496
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r4, r6, #0
	adds r4, #0x46
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r1, #3
	bl sub_0806E5FC
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	str r5, [r6, #0x4c]
_08070496:
	ldrb r0, [r6, #0xa]
	cmp r0, #4
	beq _08070504
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xa0
	movs r3, #0x40
	bl sub_0806CFFC
	cmp r0, #0
	beq _08070504
	ldr r0, _08070510 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08070514 @ =0x00013168
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #0
	beq _08070504
	adds r0, r6, #0
	bl sub_0806CDB8
	adds r4, r0, #0
	ldr r0, [sp, #0x1c]
	ldrh r0, [r0, #6]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	bl sub_0806CDFC
	adds r1, r0, #0
	ldr r2, [sp, #0x1c]
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_0806D0B8
	adds r1, r0, #0
	cmp r1, #3
	bne _08070504
	movs r0, #0
	strb r1, [r6, #0xa]
	strb r0, [r6, #0xb]
_08070504:
	add r0, sp, #0xc
	adds r1, r6, #0
	bl sub_080421AC
	b _0807075C
	.align 2, 0
_08070510: .4byte gEwramData
_08070514: .4byte 0x00013168
_08070518:
	ldrb r0, [r6, #0xd]
	bl sub_0806D518
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	mov r3, sl
	ldrb r2, [r3]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08070540
	b _0807075C
_08070540:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	b _0807075C
_0807054E:
	ldrb r1, [r6, #0xb]
	cmp r1, #0
	beq _0807055A
	cmp r1, #1
	beq _0807056E
	b _0807075C
_0807055A:
	str r1, [r6, #0x1c]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	str r1, [r6, #0x14]
	str r1, [r6, #0x48]
	str r1, [r6, #0x4c]
	str r1, [r6, #0x50]
	str r1, [r6, #0x54]
	strb r1, [r6, #0xd]
_0807056E:
	ldr r0, [r6, #0x14]
	subs r0, #1
	str r0, [r6, #0x14]
	cmp r0, #0
	ble _0807057A
	b _080706CA
_0807057A:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	bl RandomNumberGenerator
	movs r1, #0x14
	bl __umodsi3
	adds r0, #0x14
	str r0, [r6, #0x14]
	movs r7, #0
	ldr r0, _08070638 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0807063C @ =0x00013168
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080705F8
	adds r0, r6, #0
	bl sub_0806CDB8
	adds r4, r0, #0
	ldr r2, [sp, #0x1c]
	ldrh r2, [r2, #6]
	adds r4, r4, r2
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	bl sub_0806CDFC
	adds r1, r0, #0
	ldr r3, [sp, #0x1c]
	ldrh r3, [r3, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_0806D0B8
	cmp r0, #3
	bne _080705F8
	bl RandomNumberGenerator
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_0806CD38
	ldr r5, _08070640 @ =0x000FFFFF
	ands r4, r5
	ldr r1, _08070644 @ =0xFFF80000
	adds r0, r0, r1
	adds r7, r4, r0
	adds r0, r6, #0
	bl sub_0806CD78
	adds r4, r0, #0
	bl RandomNumberGenerator
	ands r0, r5
	subs r4, r4, r0
	ldr r2, _08070648 @ =0xFFF00000
	adds r2, r2, r4
	mov sb, r2
_080705F8:
	cmp r7, #0
	beq _08070604
	movs r0, #0x18
	ldrsb r0, [r6, r0]
	cmp r0, #1
	bne _08070622
_08070604:
	bl RandomNumberGenerator
	ldr r5, _08070640 @ =0x000FFFFF
	ands r0, r5
	ldr r1, [r6, #0x40]
	ldr r4, _08070644 @ =0xFFF80000
	adds r1, r1, r4
	adds r7, r0, r1
	bl RandomNumberGenerator
	ands r0, r5
	ldr r1, [r6, #0x44]
	adds r1, r1, r4
	adds r0, r0, r1
	mov sb, r0
_08070622:
	adds r0, r6, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r7, #0
	bge _0807064C
	rsbs r0, r7, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0807064E
	.align 2, 0
_08070638: .4byte gEwramData
_0807063C: .4byte 0x00013168
_08070640: .4byte 0x000FFFFF
_08070644: .4byte 0xFFF80000
_08070648: .4byte 0xFFF00000
_0807064C:
	asrs r0, r7, #0x10
_0807064E:
	subs r1, r0, r1
	adds r0, r1, #0
	muls r0, r1, r0
	adds r1, r0, #0
	adds r0, r6, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r2, [r0, r3]
	mov r8, r0
	mov r0, sb
	cmp r0, #0
	bge _0807066E
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08070672
_0807066E:
	mov r3, sb
	asrs r0, r3, #0x10
_08070672:
	subs r0, r0, r2
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r1, r0
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r3, #0
	ldrsh r1, [r4, r3]
	cmp r7, #0
	bge _08070694
	rsbs r0, r7, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _08070696
_08070694:
	asrs r0, r7, #0x10
_08070696:
	subs r0, r0, r1
	lsls r0, r0, #0x11
	adds r1, r5, #0
	bl __divsi3
	adds r4, r0, #0
	mov r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r3, sb
	cmp r3, #0
	bge _080706B6
	rsbs r0, r3, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080706BA
_080706B6:
	mov r2, sb
	asrs r0, r2, #0x10
_080706BA:
	subs r0, r0, r1
	lsls r0, r0, #0x11
	adds r1, r5, #0
	bl __divsi3
	adds r1, r0, #0
	str r4, [r6, #0x48]
	str r1, [r6, #0x4c]
_080706CA:
	ldr r0, [r6, #0x48]
	cmp r0, #0
	ble _080706DC
	mov r3, sl
	ldrb r0, [r3]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3]
	b _080706EE
_080706DC:
	cmp r0, #0
	bge _080706EE
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sl
	strb r0, [r1]
_080706EE:
	adds r0, r6, #0
	movs r1, #0x14
	bl sub_0806D490
	adds r0, r6, #0
	movs r1, #0x14
	bl sub_0806D4A8
	movs r3, #4
	rsbs r3, r3, #0
	movs r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0xc0
	lsls r0, r0, #0xb
	str r0, [sp, #8]
	adds r0, r6, #0
	movs r1, #0
	adds r2, r3, #0
	bl sub_0806A224
	adds r5, r0, #0
	movs r0, #0x80
	ands r5, r0
	cmp r5, #0
	bne _08070740
	adds r0, r6, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r4, r6, #0
	adds r4, #0x46
	movs r3, #0
	ldrsh r1, [r4, r3]
	subs r1, #3
	bl sub_0806E5FC
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	str r5, [r6, #0x4c]
_08070740:
	ldrb r0, [r6, #0xd]
	cmp r0, #5
	bls _0807074A
	movs r0, #4
	strb r0, [r6, #0xa]
_0807074A:
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _08070754
	movs r0, #4
	strb r0, [r6, #0xa]
_08070754:
	add r0, sp, #0xc
	adds r1, r6, #0
	bl sub_080421AC
_0807075C:
	adds r0, r6, #0
	bl sub_0803F17C
_08070762:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08070774
sub_08070774: @ 0x08070774
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080707B0 @ =0x0808FCFC
	str r0, [sp]
	ldr r2, _080707B4 @ =sub_080709D8
	ldr r3, _080707B8 @ =sub_08070A08
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
	adds r0, r4, #0
	mov r1, sp
	bl sub_080428B4
	adds r0, r4, #0
	mov r1, sp
	bl sub_08042848
	adds r4, #0x72
	ldrb r1, [r4]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080707B0: .4byte 0x0808FCFC
_080707B4: .4byte sub_080709D8
_080707B8: .4byte sub_08070A08

	thumb_func_start sub_080707BC
sub_080707BC: @ 0x080707BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	mov sb, r3
	ldr r2, _08070820 @ =sub_080708B0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	ldr r0, _08070824 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08070828 @ =0x0000A094
	adds r1, r1, r0
	mov r8, r1
	cmp r5, #0
	beq _08070896
	str r4, [r5, #0x40]
	str r7, [r5, #0x44]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0x48]
	ldr r0, [sp, #0x20]
	str r0, [r5, #0x4c]
	bl RandomNumberGenerator
	movs r4, #1
	adds r3, r5, #0
	adds r3, #0x58
	ands r0, r4
	lsls r0, r0, #6
	ldrb r2, [r3]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	bl RandomNumberGenerator
	ands r0, r4
	cmp r0, #0
	bne _0807082C
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	b _08070834
	.align 2, 0
_08070820: .4byte sub_080708B0
_08070824: .4byte gEwramData
_08070828: .4byte 0x0000A094
_0807082C:
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
_08070834:
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _080708A4 @ =0x081CBF3C
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _080708A8 @ =0x08212FB4
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_0803B924
	adds r0, r5, #0
	adds r0, #0x65
	mov r2, sb
	strb r2, [r0]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080708AC @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	mov r3, r8
	ldrh r3, [r3, #6]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	mov r2, r8
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #3
	beq _08070896
	adds r0, r5, #0
	bl EntityDelete
_08070896:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080708A4: .4byte 0x081CBF3C
_080708A8: .4byte 0x08212FB4
_080708AC: .4byte sub_0803B9D0

	thumb_func_start sub_080708B0
sub_080708B0: @ 0x080708B0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	beq _080708C0
	cmp r1, #1
	beq _080708C6
	b _08070910
_080708C0:
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xd]
_080708C6:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806D490
	ldrb r1, [r4, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080708F6
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080708F0
	ldr r0, _080708EC @ =0xFFFFC000
	b _080708F4
	.align 2, 0
_080708EC: .4byte 0xFFFFC000
_080708F0:
	movs r0, #0x80
	lsls r0, r0, #7
_080708F4:
	str r0, [r4, #0x48]
_080708F6:
	ldr r2, _08070918 @ =0xFFFE0000
	adds r0, r4, #0
	movs r1, #0
	movs r3, #1
	bl sub_08069B70
	movs r1, #0x88
	ands r1, r0
	cmp r1, #0x80
	beq _08070910
	adds r0, r4, #0
	bl EntityDelete
_08070910:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08070918: .4byte 0xFFFE0000

	thumb_func_start sub_0807091C
sub_0807091C: @ 0x0807091C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	beq _0807092C
	cmp r1, #1
	beq _08070932
	b _0807097C
_0807092C:
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xd]
_08070932:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08070956
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _08070950
	ldr r0, _0807094C @ =0xFFFFC000
	b _08070954
	.align 2, 0
_0807094C: .4byte 0xFFFFC000
_08070950:
	movs r0, #0x80
	lsls r0, r0, #7
_08070954:
	str r0, [r4, #0x48]
_08070956:
	ldr r0, _08070984 @ =0xFFFFC000
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	bl sub_0806D3AC
	ldrb r0, [r4, #0xd]
	cmp r0, #6
	bne _08070970
	adds r1, r4, #0
	adds r1, #0x65
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_08070970:
	ldrb r0, [r4, #0xd]
	cmp r0, #0xb
	bls _0807097C
	adds r0, r4, #0
	bl EntityDelete
_0807097C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08070984: .4byte 0xFFFFC000

	thumb_func_start sub_08070988
sub_08070988: @ 0x08070988
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _080709C4 @ =0x081CBF3C
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	cmp r2, #0
	blt _080709D0
	ldr r1, _080709C8 @ =0x08212FB4
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r0, _080709CC @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _080709D2
	.align 2, 0
_080709C4: .4byte 0x081CBF3C
_080709C8: .4byte 0x08212FB4
_080709CC: .4byte sub_0803B9D0
_080709D0:
	movs r0, #0
_080709D2:
	pop {r4, r5}
	pop {r1}
	bx r1
