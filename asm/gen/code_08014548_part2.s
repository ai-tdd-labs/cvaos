	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_0801F604
sub_0801F604: @ 0x0801F604
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r7, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r1, [r6, #0x10]
	ldr r0, _0801F6C8 @ =0x00100002
	ands r0, r1
	cmp r0, #0
	bne _0801F638
	movs r0, #2
	orrs r1, r0
	str r1, [r6, #0x10]
	str r7, [r6, #0x4c]
	ldr r0, _0801F6CC @ =0xFFFFE000
	str r0, [r6, #0x54]
_0801F638:
	ldr r1, [r6, #0x10]
	movs r0, #0x1e
	ands r0, r1
	cmp r0, #0
	bne _0801F644
	b _0801F8E6
_0801F644:
	ldr r0, _0801F6D0 @ =0xEFEFFBFF
	ands r0, r1
	str r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	beq _0801F660
	ldr r0, [r6, #0x4c]
	movs r1, #0xc0
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r6, #0x4c]
	str r7, [r6, #0x54]
_0801F660:
	ldrh r0, [r6, #0x14]
	cmp r0, #0xf
	bhi _0801F66A
	adds r0, #1
	strh r0, [r6, #0x14]
_0801F66A:
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	ble _0801F678
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bne _0801F678
	b _0801F794
_0801F678:
	lsls r4, r4, #0x10
	lsls r5, r5, #0x10
	ldr r2, _0801F6D4 @ =0xFFFB0000
	adds r0, r4, r2
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r1, _0801F6D8 @ =0xFFE00000
	adds r0, r5, r1
	asrs r0, r0, #0x10
	mov r8, r0
	mov r0, sb
	mov r1, r8
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _0801F6DC @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801F6E0 @ =0x0001316C
	adds r0, r0, r2
	ldr r1, [r0]
	cmp r1, #0
	beq _0801F6E4
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	mov r1, sb
	mov r2, r8
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r7, #0
	lsls r1, r7, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _0801F6C2
	adds r2, r3, #0
_0801F6C2:
	adds r0, r2, #0
	b _0801F6E6
	.align 2, 0
_0801F6C8: .4byte 0x00100002
_0801F6CC: .4byte 0xFFFFE000
_0801F6D0: .4byte 0xEFEFFBFF
_0801F6D4: .4byte 0xFFFB0000
_0801F6D8: .4byte 0xFFE00000
_0801F6DC: .4byte gEwramData
_0801F6E0: .4byte 0x0001316C
_0801F6E4:
	adds r0, r7, #0
_0801F6E6:
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r0, #0
	bne _0801F74E
	movs r1, #0xa0
	lsls r1, r1, #0xb
	adds r0, r4, r1
	asrs r7, r0, #0x10
	ldr r2, _0801F738 @ =0xFFE00000
	adds r0, r5, r2
	asrs r5, r0, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08001C1C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0801F73C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801F740 @ =0x0001316C
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0801F744
	ldr r0, [r1, #0x10]
	ldr r3, [r0, #4]
	adds r0, r1, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	adds r2, r4, #0
	lsls r1, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r1, r0
	bge _0801F732
	adds r2, r3, #0
_0801F732:
	adds r0, r2, #0
	b _0801F746
	.align 2, 0
_0801F738: .4byte 0xFFE00000
_0801F73C: .4byte gEwramData
_0801F740: .4byte 0x0001316C
_0801F744:
	adds r0, r4, #0
_0801F746:
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r0, #0
	beq _0801F794
_0801F74E:
	adds r1, r6, #0
	adds r1, #0x46
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldr r1, [r6, #0x4c]
	ldr r0, _0801F7E8 @ =0xFFFB1000
	cmp r1, r0
	bgt _0801F784
	ldr r0, [r6, #0x10]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801F784
	movs r0, #0xb8
	bl PlaySong
	movs r0, #0
	strb r0, [r6, #0xa]
	movs r0, #1
	movs r1, #0x10
	movs r2, #0
	movs r3, #7
	bl sub_08011FC0
_0801F784:
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	bge _0801F794
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #0x4c]
	ldr r0, _0801F7EC @ =0xFFFFE000
	str r0, [r6, #0x54]
_0801F794:
	ldr r1, [r6, #0x4c]
	ldr r0, _0801F7F0 @ =0x00001FFF
	cmp r1, r0
	bgt _0801F7A4
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r6, #0x4c]
_0801F7A4:
	ldr r0, [r6, #0x4c]
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r1, r0, r2
	str r1, [r6, #0x4c]
	cmp r1, #0
	ble _0801F7CA
	ldr r0, [r6, #0x54]
	adds r1, r1, r0
	str r1, [r6, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r6, #0x54]
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	ble _0801F7CA
	str r1, [r6, #0x54]
_0801F7CA:
	ldr r2, [r6, #0x10]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0801F806
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r2
	cmp r0, #0
	bne _0801F7F4
	ldr r1, [r6, #0x4c]
	movs r0, #0x90
	lsls r0, r0, #9
	b _0801F7FA
	.align 2, 0
_0801F7E8: .4byte 0xFFFB1000
_0801F7EC: .4byte 0xFFFFE000
_0801F7F0: .4byte 0x00001FFF
_0801F7F4:
	ldr r1, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
_0801F7FA:
	cmp r1, r0
	ble _0801F806
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r6, #0x10]
_0801F806:
	ldr r2, [r6, #0x10]
	movs r0, #0xf0
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0801F8E6
	ldr r0, _0801F84C @ =gEwramData
	ldr r3, [r0]
	ldr r1, _0801F850 @ =0x000131B8
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801F8E6
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	beq _0801F854
	ldr r2, _0801F850 @ =0x000131B8
	adds r0, r3, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801F8E6
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _0801F8E6
	adds r0, r6, #0
	movs r1, #0x16
	b _0801F8D2
	.align 2, 0
_0801F84C: .4byte gEwramData
_0801F850: .4byte 0x000131B8
_0801F854:
	ldr r1, [r6, #0x4c]
	ldr r0, _0801F87C @ =0xFFFF8000
	cmp r1, r0
	bge _0801F884
	ldr r1, _0801F880 @ =0x000131B8
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801F8E6
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801F8E6
	adds r0, r6, #0
	movs r1, #3
	b _0801F8D2
	.align 2, 0
_0801F87C: .4byte 0xFFFF8000
_0801F880: .4byte 0x000131B8
_0801F884:
	ldr r0, _0801F8AC @ =0x00007FFF
	cmp r1, r0
	bgt _0801F8B4
	ldr r2, _0801F8B0 @ =0x000131B8
	adds r0, r3, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801F8E6
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x10
	beq _0801F8E6
	adds r0, r6, #0
	movs r1, #0x10
	b _0801F8D2
	.align 2, 0
_0801F8AC: .4byte 0x00007FFF
_0801F8B0: .4byte 0x000131B8
_0801F8B4:
	ldr r1, _0801F8F4 @ =0x000131B8
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801F8E6
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x11
	beq _0801F8E6
	adds r0, r6, #0
	movs r1, #0x11
_0801F8D2:
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801F8F8 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_0801F8E6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F8F4: .4byte 0x000131B8
_0801F8F8: .4byte 0xFFDFFFFF

	thumb_func_start sub_0801F8FC
sub_0801F8FC: @ 0x0801F8FC
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r2, _0801F998 @ =gEwramData
	ldr r4, [r2]
	ldr r1, _0801F99C @ =0x000131B8
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _0801F990
	ldr r1, [r3, #0x10]
	movs r0, #0x1e
	ands r0, r1
	adds r5, r1, #0
	cmp r0, #0
	beq _0801F98A
	movs r0, #0x18
	ands r0, r5
	cmp r0, #0
	bne _0801F98A
	ldr r0, [r3, #0x4c]
	ldr r2, _0801F9A0 @ =0xFFFFC000
	cmp r0, r2
	bge _0801F944
	ldr r1, _0801F9A4 @ =0x0001339A
	adds r0, r4, r1
	ldrh r1, [r4, #0x1c]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0801F944
	str r2, [r3, #0x4c]
	ldr r0, _0801F9A8 @ =0xFFFFE000
	str r0, [r3, #0x54]
_0801F944:
	ldr r0, [r3, #0x4c]
	ldr r1, _0801F9AC @ =0x0001FFFF
	adds r2, r0, r1
	ldr r1, _0801F9B0 @ =0x00021FFE
	adds r4, r0, #0
	cmp r2, r1
	bhi _0801F972
	ldr r0, [r6]
	ldr r2, _0801F9A4 @ =0x0001339A
	adds r1, r0, r2
	ldrh r2, [r0, #0x1c]
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _0801F972
	ldr r0, [r3, #0x54]
	ldr r1, _0801F9B4 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r3, #0x54]
	ldr r1, _0801F9A8 @ =0xFFFFE000
	cmp r0, r1
	bge _0801F972
	str r1, [r3, #0x54]
_0801F972:
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r5
	cmp r0, #0
	beq _0801F98A
	movs r0, #0xc0
	lsls r0, r0, #5
	cmp r4, r0
	ble _0801F98A
	ldr r2, _0801F9B8 @ =0xFFFFE800
	adds r0, r4, r2
	str r0, [r3, #0x4c]
_0801F98A:
	adds r0, r3, #0
	bl sub_0801F604
_0801F990:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801F998: .4byte gEwramData
_0801F99C: .4byte 0x000131B8
_0801F9A0: .4byte 0xFFFFC000
_0801F9A4: .4byte 0x0001339A
_0801F9A8: .4byte 0xFFFFE000
_0801F9AC: .4byte 0x0001FFFF
_0801F9B0: .4byte 0x00021FFE
_0801F9B4: .4byte 0xFFFFF800
_0801F9B8: .4byte 0xFFFFE800

	thumb_func_start sub_0801F9BC
sub_0801F9BC: @ 0x0801F9BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0801FA3C @ =gEwramData
	ldr r0, [r2]
	adds r0, #0x64
	movs r3, #0
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, #0x65
	strb r3, [r0]
	ldr r0, [r2]
	ldr r1, _0801FA40 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801FA04
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xc
	beq _0801FA04
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #1
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x10]
	ldr r1, _0801FA44 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
_0801FA04:
	bl sub_0802DFF0
	ldr r0, [r4, #0x10]
	ldr r1, _0801FA48 @ =0xEFFFFE9F
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0801FA3C @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0801FA40 @ =0x000131B8
	adds r3, r2, r0
	ldr r0, [r3]
	movs r1, #0xe
	orrs r0, r1
	str r0, [r3]
	ldr r1, _0801FA4C @ =0x000131D6
	adds r2, r2, r1
	movs r0, #0
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0801FA54
	ldr r0, _0801FA50 @ =0xFFFF0000
	b _0801FA58
	.align 2, 0
_0801FA3C: .4byte gEwramData
_0801FA40: .4byte 0x000131B8
_0801FA44: .4byte 0xFFDFFFFF
_0801FA48: .4byte 0xEFFFFE9F
_0801FA4C: .4byte 0x000131D6
_0801FA50: .4byte 0xFFFF0000
_0801FA54:
	movs r0, #0x80
	lsls r0, r0, #9
_0801FA58:
	str r0, [r4, #0x48]
	ldr r0, _0801FA84 @ =0xFFFE8000
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	movs r0, #0x10
	strb r0, [r4, #0xa]
	movs r1, #2
	ldr r0, _0801FA88 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801FA8C @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	ldr r0, _0801FA90 @ =0x000001E9
	bl PlaySong
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FA84: .4byte 0xFFFE8000
_0801FA88: .4byte gEwramData
_0801FA8C: .4byte 0x00013110
_0801FA90: .4byte 0x000001E9

	thumb_func_start sub_0801FA94
sub_0801FA94: @ 0x0801FA94
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	ldr r1, _0801FB14 @ =0xEFFFFE9F
	ands r0, r1
	str r0, [r5, #0x10]
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
	adds r0, r4, #0
	bl sub_08001F3C
	cmp r0, #0
	beq _0801FAD4
	ldr r0, [r5, #0x48]
	ldr r1, _0801FB18 @ =0xFFFFF000
	cmp r0, #0
	bge _0801FAD2
	movs r1, #0x80
	lsls r1, r1, #5
_0801FAD2:
	str r1, [r5, #0x50]
_0801FAD4:
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x50]
	adds r0, r1, r0
	str r0, [r5, #0x48]
	cmp r1, #0
	blt _0801FAE8
	cmp r0, #0
	blt _0801FAEC
	cmp r1, #0
	bgt _0801FAF2
_0801FAE8:
	cmp r0, #0
	ble _0801FAF2
_0801FAEC:
	movs r0, #0
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_0801FAF2:
	ldr r1, [r5, #0x10]
	movs r2, #2
	ands r2, r1
	cmp r2, #0
	bne _0801FB06
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0x10]
	strb r2, [r5, #0xa]
_0801FB06:
	adds r0, r5, #0
	bl sub_0801F604
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FB14: .4byte 0xEFFFFE9F
_0801FB18: .4byte 0xFFFFF000

	thumb_func_start sub_0801FB1C
sub_0801FB1C: @ 0x0801FB1C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	ldr r1, _0801FBD0 @ =0xEFFFFE9F
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, _0801FBD4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801FBD8 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801FB5E
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xc
	beq _0801FB5E
	adds r0, r5, #0
	movs r1, #0xc
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r5, #0x20]
	ldr r0, [r5, #0x10]
	ldr r1, _0801FBDC @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_0801FB5E:
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
	adds r0, r4, #0
	bl sub_08001F3C
	cmp r0, #0
	beq _0801FB92
	ldr r0, [r5, #0x48]
	ldr r1, _0801FBE0 @ =0xFFFFF000
	cmp r0, #0
	bge _0801FB90
	movs r1, #0x80
	lsls r1, r1, #5
_0801FB90:
	str r1, [r5, #0x50]
_0801FB92:
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x50]
	adds r0, r1, r0
	str r0, [r5, #0x48]
	cmp r1, #0
	blt _0801FBA6
	cmp r0, #0
	blt _0801FBAA
	cmp r1, #0
	bgt _0801FBB0
_0801FBA6:
	cmp r0, #0
	ble _0801FBB0
_0801FBAA:
	movs r0, #0
	str r0, [r5, #0x48]
	str r0, [r5, #0x50]
_0801FBB0:
	ldr r1, [r5, #0x10]
	movs r2, #2
	ands r2, r1
	cmp r2, #0
	bne _0801FBC4
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0x10]
	strb r2, [r5, #0xa]
_0801FBC4:
	adds r0, r5, #0
	bl sub_0801F604
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FBD0: .4byte 0xEFFFFE9F
_0801FBD4: .4byte gEwramData
_0801FBD8: .4byte 0x000131B8
_0801FBDC: .4byte 0xFFDFFFFF
_0801FBE0: .4byte 0xFFFFF000

	thumb_func_start sub_0801FBE4
sub_0801FBE4: @ 0x0801FBE4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x10]
	movs r0, #0x91
	lsls r0, r0, #1
	ands r2, r0
	cmp r2, #0
	bne _0801FC98
	ldr r0, _0801FC54 @ =gEwramData
	ldr r3, [r0]
	ldr r1, _0801FC58 @ =0x0001339C
	adds r0, r3, r1
	ldrh r1, [r3, #0x1c]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0801FC98
	movs r0, #0xb
	strb r0, [r4, #0xa]
	strb r2, [r4, #0xb]
	movs r5, #0xff
	strh r5, [r4, #0x20]
	ldr r1, _0801FC5C @ =0x000131B8
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801FC40
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801FC40
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	strh r5, [r4, #0x20]
	ldr r0, [r4, #0x10]
	ldr r1, _0801FC60 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
_0801FC40:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0801FC64
	movs r0, #0xa0
	lsls r0, r0, #0xa
	b _0801FC66
	.align 2, 0
_0801FC54: .4byte gEwramData
_0801FC58: .4byte 0x0001339C
_0801FC5C: .4byte 0x000131B8
_0801FC60: .4byte 0xFFDFFFFF
_0801FC64:
	ldr r0, _0801FCA0 @ =0xFFFD8000
_0801FC66:
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x48]
	ldr r1, _0801FCA4 @ =0xFFFFF800
	cmp r0, #0
	bge _0801FC74
	movs r1, #0x80
	lsls r1, r1, #4
_0801FC74:
	str r1, [r4, #0x50]
	movs r0, #0
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xd5
	bl sub_080458E4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xd4
	bl sub_080458E4
	ldr r0, _0801FCA8 @ =0x0000012B
	bl PlaySong
_0801FC98:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FCA0: .4byte 0xFFFD8000
_0801FCA4: .4byte 0xFFFFF800
_0801FCA8: .4byte 0x0000012B

	thumb_func_start sub_0801FCAC
sub_0801FCAC: @ 0x0801FCAC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #2
	ldr r0, _0801FD1C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0801FD20 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	movs r0, #1
	strb r0, [r4, #0xf]
	ldr r1, [r4, #0x48]
	ldr r0, [r4, #0x50]
	adds r0, r1, r0
	str r0, [r4, #0x48]
	cmp r1, #0
	blt _0801FCD6
	cmp r0, #0
	blt _0801FCDA
	cmp r1, #0
	bgt _0801FCE0
_0801FCD6:
	cmp r0, #0
	ble _0801FCE0
_0801FCDA:
	movs r0, #0
	str r0, [r4, #0x48]
	str r0, [r4, #0x50]
_0801FCE0:
	movs r5, #0
	str r5, [r4, #0x4c]
	str r5, [r4, #0x54]
	ldrb r0, [r4, #0xd]
	cmp r0, #8
	bne _0801FD06
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
_0801FD06:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bls _0801FD16
	strb r5, [r4, #0xa]
_0801FD16:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FD1C: .4byte gEwramData
_0801FD20: .4byte 0x00013110

	thumb_func_start sub_0801FD24
sub_0801FD24: @ 0x0801FD24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r2, #4
	ldr r1, _0801FD60 @ =gEwramData
	ldr r0, [r1]
	ldr r3, _0801FD64 @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	movs r3, #0
	strb r2, [r0, #0x1e]
	ldr r2, [r1]
	ldr r4, _0801FD68 @ =0x000131B8
	adds r1, r2, r4
	ldr r0, [r1]
	movs r4, #0x20
	mov r8, r4
	orrs r0, r4
	str r0, [r1]
	str r3, [r6, #0x4c]
	str r3, [r6, #0x54]
	ldrb r0, [r6, #0xb]
	cmp r0, #1
	beq _0801FE4C
	cmp r0, #1
	bgt _0801FD6C
	cmp r0, #0
	beq _0801FD74
	b _0801FEEA
	.align 2, 0
_0801FD60: .4byte gEwramData
_0801FD64: .4byte 0x00013110
_0801FD68: .4byte 0x000131B8
_0801FD6C:
	cmp r0, #2
	bne _0801FD72
	b _0801FE98
_0801FD72:
	b _0801FEEA
_0801FD74:
	ldrb r1, [r6, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801FDFA
	bl RandomNumberGenerator
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl RandomNumberGenerator
	movs r5, #0x3f
	ands r5, r0
	adds r5, #0x40
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, r1
	bl sub_080009E4
	adds r7, r5, #0
	muls r7, r0, r7
	adds r0, r4, #0
	bl sub_080009E4
	adds r4, r5, #0
	muls r4, r0, r4
	ldr r0, [r6, #0x40]
	adds r0, r0, r7
	ldr r3, _0801FE3C @ =0xFFF00000
	adds r2, r4, r3
	ldr r1, [r6, #0x44]
	adds r1, r1, r2
	movs r2, #0x40
	movs r3, #6
	bl sub_08045DC8
	adds r1, r0, #0
	cmp r1, #0
	beq _0801FDFA
	mov r0, r8
	strb r0, [r1, #0xd]
	rsbs r5, r7, #0
	cmp r5, #0
	bge _0801FDD4
	adds r5, #0x3f
_0801FDD4:
	asrs r0, r5, #6
	str r0, [r1, #0x48]
	rsbs r2, r4, #0
	cmp r2, #0
	bge _0801FDE0
	adds r2, #0x3f
_0801FDE0:
	asrs r2, r2, #6
	str r2, [r1, #0x4c]
	cmp r0, #0
	bge _0801FDEA
	adds r0, #0x1f
_0801FDEA:
	asrs r0, r0, #5
	str r0, [r1, #0x50]
	adds r0, r2, #0
	cmp r0, #0
	bge _0801FDF6
	adds r0, #0x1f
_0801FDF6:
	asrs r0, r0, #5
	str r0, [r1, #0x54]
_0801FDFA:
	ldr r0, _0801FE40 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0801FE44 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801FE30
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _0801FE30
	adds r0, r6, #0
	movs r1, #0xa
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801FE48 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_0801FE30:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _0801FED2
	movs r0, #0x60
	b _0801FE86
	.align 2, 0
_0801FE3C: .4byte 0xFFF00000
_0801FE40: .4byte gEwramData
_0801FE44: .4byte 0x000131B8
_0801FE48: .4byte 0xFFDFFFFF
_0801FE4C:
	ldr r3, _0801FE90 @ =0x000131B8
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801FE7E
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xb
	beq _0801FE7E
	adds r0, r6, #0
	movs r1, #0xb
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801FE94 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_0801FE7E:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _0801FED2
	movs r0, #0x10
_0801FE86:
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	b _0801FEEA
	.align 2, 0
_0801FE90: .4byte 0x000131B8
_0801FE94: .4byte 0xFFDFFFFF
_0801FE98:
	ldr r4, _0801FED8 @ =0x000131B8
	adds r0, r2, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801FECA
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _0801FECA
	adds r0, r6, #0
	movs r1, #0xa
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _0801FEDC @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_0801FECA:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #0
	cmp r1, #0
	beq _0801FEE0
_0801FED2:
	subs r0, #1
	strb r0, [r6, #0xd]
	b _0801FEEA
	.align 2, 0
_0801FED8: .4byte 0x000131B8
_0801FEDC: .4byte 0xFFDFFFFF
_0801FEE0:
	strb r1, [r6, #0xa]
	ldr r0, [r6, #0x10]
	ldr r1, _0801FEF4 @ =0xFFDFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
_0801FEEA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801FEF4: .4byte 0xFFDFFEFF

	thumb_func_start sub_0801FEF8
sub_0801FEF8: @ 0x0801FEF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	movs r4, #0
	strb r4, [r6, #0xf]
	ldr r7, _08020010 @ =gEwramData
	ldr r0, [r7]
	ldr r1, _08020014 @ =0x00013120
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08035638
	movs r1, #1
	adds r0, r6, #0
	adds r0, #0x70
	strb r1, [r0]
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r7]
	ldr r2, _08020018 @ =0x00013190
	adds r0, r0, r2
	str r4, [r0]
	ldr r2, [r6, #0x10]
	ldr r0, _0802001C @ =0xFFDBFFFF
	ands r2, r0
	str r2, [r6, #0x10]
	adds r0, r6, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801FF56
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r2, r0
	ldr r0, _08020020 @ =0xEFFFFFFF
	ands r2, r0
	str r2, [r6, #0x10]
_0801FF56:
	bl sub_08021DC4
	ldr r1, [r6, #0x48]
	ldr r0, [r6, #0x2c]
	adds r1, r1, r0
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _0801FF72
	str r1, [r6, #0x4c]
_0801FF72:
	ldr r0, [r6, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	movs r5, #2
	str r4, [r6, #0x2c]
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r1, [r0]
	mov sl, r0
	movs r3, #0x58
	adds r3, r3, r6
	mov sb, r3
	adds r4, r6, #0
	adds r4, #0x42
	str r4, [sp, #0x10]
	adds r0, #0x1d
	str r0, [sp, #0x14]
	cmp r1, #0xff
	bne _08020056
	adds r0, r6, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r6, #0
	bl GetEntityRoomYPositionInteger
	subs r0, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0801FFD0
	ldr r0, [r7]
	ldr r1, _08020024 @ =0x00013260
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801FFD2
_0801FFD0:
	movs r5, #1
_0801FFD2:
	movs r2, #0x58
	adds r2, r2, r6
	mov sb, r2
	adds r3, r6, #0
	adds r3, #0x42
	str r3, [sp, #0x10]
	adds r0, r6, #0
	adds r0, #0x46
	str r0, [sp, #0x14]
	cmp r5, #0
	beq _08020056
_0801FFE8:
	mov r1, r8
	lsls r0, r1, #0x10
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_08001A00
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08020028
	movs r0, #1
	ands r0, r2
	movs r1, #1
	cmp r0, #0
	beq _0802002A
	b _08020040
	.align 2, 0
_08020010: .4byte gEwramData
_08020014: .4byte 0x00013120
_08020018: .4byte 0x00013190
_0802001C: .4byte 0xFFDBFFFF
_08020020: .4byte 0xEFFFFFFF
_08020024: .4byte 0x00013260
_08020028:
	movs r1, #0
_0802002A:
	cmp r1, #0
	bne _08020040
	movs r1, #0xc4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _08020040
	movs r0, #0x30
	ands r0, r2
	lsrs r0, r0, #4
	b _08020042
_08020040:
	movs r0, #0xff
_08020042:
	mov r2, sl
	strb r0, [r2]
	cmp r0, #0xff
	bne _08020056
	ldr r3, _08020068 @ =0xFFE80000
	adds r0, r4, r3
	lsrs r4, r0, #0x10
	subs r5, #1
	cmp r5, #0
	bne _0801FFE8
_08020056:
	mov r4, sl
	ldrb r0, [r4]
	cmp r0, #1
	beq _08020134
	cmp r0, #1
	bgt _0802006C
	cmp r0, #0
	beq _08020092
	b _080201EE
	.align 2, 0
_08020068: .4byte 0xFFE80000
_0802006C:
	cmp r0, #2
	bne _08020072
	b _080201CC
_08020072:
	cmp r0, #3
	bne _08020078
	b _080201E0
_08020078:
	b _080201EE
_0802007A:
	adds r0, r3, #0
	adds r0, #8
	adds r0, r0, r1
	ldrb r0, [r0]
	b _080200B6
_08020084:
	movs r0, #8
	strb r0, [r1]
_08020088:
	adds r0, r4, #0
	adds r0, #8
	adds r0, r0, r2
	strb r5, [r0]
	b _080200E2
_08020092:
	ldrb r0, [r6, #0x1e]
	cmp r0, #0
	beq _0802009A
	b _080201EE
_0802009A:
	adds r3, r6, #0
	adds r3, #0x70
	movs r1, #0
	adds r4, r3, #0
	adds r2, r6, #0
	adds r2, #0x74
_080200A6:
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #8
	beq _0802007A
	adds r1, #1
	cmp r1, #2
	ble _080200A6
	movs r0, #0
_080200B6:
	cmp r0, #0
	beq _080200BC
	b _080201EE
_080200BC:
	movs r5, #0x3c
	movs r2, #0
	adds r3, r4, #4
	adds r1, r3, #0
_080200C4:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #8
	beq _08020088
	adds r2, #1
	cmp r2, #2
	ble _080200C4
	movs r2, #0
_080200D4:
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _08020084
	adds r2, #1
	cmp r2, #2
	ble _080200D4
_080200E2:
	ldr r0, _08020110 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08020114 @ =0x000131FE
	adds r0, r2, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x11
	asrs r0, r0, #0x12
	adds r1, r1, r0
	ldr r3, _08020118 @ =0x0001327E
	adds r2, r2, r3
	ldrh r0, [r2]
	lsrs r0, r0, #4
	adds r1, r1, r0
	mov r0, sp
	movs r2, #0
	strh r1, [r0]
	movs r1, #1
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	b _080201AE
	.align 2, 0
_08020110: .4byte gEwramData
_08020114: .4byte 0x000131FE
_08020118: .4byte 0x0001327E
_0802011C:
	adds r0, r3, #0
	adds r0, #8
	adds r0, r0, r1
	ldrb r0, [r0]
	b _08020156
_08020126:
	movs r0, #8
	strb r0, [r1]
_0802012A:
	adds r0, r4, #0
	adds r0, #8
	adds r0, r0, r2
	strb r5, [r0]
	b _08020180
_08020134:
	ldrb r0, [r6, #0x1e]
	cmp r0, #0
	bne _080201EE
	adds r3, r6, #0
	adds r3, #0x70
	movs r1, #0
	adds r4, r3, #0
	adds r2, r6, #0
	adds r2, #0x74
_08020146:
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #8
	beq _0802011C
	adds r1, #1
	cmp r1, #2
	ble _08020146
	movs r0, #0
_08020156:
	cmp r0, #0
	bne _080201EE
	movs r5, #0x3c
	movs r2, #0
	adds r3, r4, #4
	adds r1, r3, #0
_08020162:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #8
	beq _0802012A
	adds r2, #1
	cmp r2, #2
	ble _08020162
	movs r2, #0
_08020172:
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _08020126
	adds r2, #1
	cmp r2, #2
	ble _08020172
_08020180:
	ldr r0, _080201C0 @ =gEwramData
	ldr r2, [r0]
	ldr r4, _080201C4 @ =0x000131FE
	adds r0, r2, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x11
	asrs r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, _080201C8 @ =0x0001327E
	adds r2, r2, r0
	ldrh r0, [r2]
	lsrs r0, r0, #4
	adds r1, r1, r0
	mov r0, sp
	movs r2, #0
	strh r1, [r0]
	mov r1, sp
	movs r0, #1
	strh r0, [r1, #2]
	mov r0, sp
	strh r2, [r0, #4]
	strh r2, [r0, #6]
_080201AE:
	ldr r0, [r6, #0x40]
	str r0, [sp, #8]
	ldr r0, [r6, #0x44]
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_08021654
	b _080201EE
	.align 2, 0
_080201C0: .4byte gEwramData
_080201C4: .4byte 0x000131FE
_080201C8: .4byte 0x0001327E
_080201CC:
	ldr r0, _080201D8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080201DC @ =0x000004C4
	adds r0, r0, r1
	ldr r0, [r0]
	b _080201EC
	.align 2, 0
_080201D8: .4byte gEwramData
_080201DC: .4byte 0x000004C4
_080201E0:
	ldr r0, _0802022C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08020230 @ =0x000004C4
	adds r0, r0, r2
	ldr r0, [r0]
	rsbs r0, r0, #0
_080201EC:
	str r0, [r6, #0x2c]
_080201EE:
	movs r3, #1
	rsbs r3, r3, #0
	adds r5, r3, #0
	movs r0, #0xff
	mov r4, sl
	strb r0, [r4]
	ldr r0, _0802022C @ =gEwramData
	ldr r3, [r0]
	ldr r1, _08020234 @ =0x000131D6
	adds r0, r3, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802020A
	b _0802043C
_0802020A:
	ldr r2, _08020238 @ =0x0001327A
	adds r0, r3, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bgt _08020240
	subs r1, #0x1e
	adds r0, r3, r1
	ldr r1, [r0]
	ldr r2, _0802023C @ =0xFFFFF7DF
	ands r1, r2
	str r1, [r0]
	adds r0, r6, #0
	bl sub_0801F9BC
	b _0802043C
	.align 2, 0
_0802022C: .4byte gEwramData
_08020230: .4byte 0x000004C4
_08020234: .4byte 0x000131D6
_08020238: .4byte 0x0001327A
_0802023C: .4byte 0xFFFFF7DF
_08020240:
	ldr r2, _08020298 @ =0x000131D4
	adds r4, r3, r2
	ldrh r0, [r4]
	cmp r0, #3
	bne _080202C2
	ldr r4, _0802029C @ =0x000131B8
	adds r2, r3, r4
	ldr r0, [r2]
	ldr r1, _080202A0 @ =0xFFFFF7DF
	ands r0, r1
	str r0, [r2]
	ldr r0, _080202A4 @ =0x00013110
	adds r1, r3, r0
	ldr r2, [r1]
	adds r4, #0x28
	adds r0, r3, r4
	ldr r0, [r0]
	str r0, [r2, #0x48]
	ldr r2, [r1]
	adds r4, #4
	adds r0, r3, r4
	ldr r0, [r0]
	str r0, [r2, #0x4c]
	ldr r1, [r1]
	ldr r0, [r1, #0x48]
	ldr r2, _080202A8 @ =0xFFFFF000
	cmp r0, #0
	bge _0802027C
	movs r2, #0x80
	lsls r2, r2, #5
_0802027C:
	str r2, [r1, #0x50]
	movs r2, #0xe
	ldr r0, [r6, #0x10]
	movs r1, #0x82
	orrs r0, r1
	strb r2, [r6, #0xa]
	ldr r1, _080202AC @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _080202B0 @ =0x000001E9
	bl PlaySong
	b _0802043C
	.align 2, 0
_08020298: .4byte 0x000131D4
_0802029C: .4byte 0x000131B8
_080202A0: .4byte 0xFFFFF7DF
_080202A4: .4byte 0x00013110
_080202A8: .4byte 0xFFFFF000
_080202AC: .4byte 0xFFDFFFFF
_080202B0: .4byte 0x000001E9
_080202B4:
	movs r0, #8
	strb r0, [r1]
_080202B8:
	adds r0, r4, #0
	adds r0, #8
	adds r0, r0, r2
	strb r5, [r0]
	b _08020358
_080202C2:
	cmp r0, #2
	bne _080202C8
	b _0802043C
_080202C8:
	adds r2, r6, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08020370 @ =0x000131B8
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _08020374 @ =0xFFFFF7DF
	ands r0, r1
	str r0, [r2]
	ldrh r0, [r4]
	cmp r0, #0
	bne _0802037C
	ldr r0, [r6, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0802037C
	adds r1, r6, #0
	adds r1, #0x6d
	ldrb r0, [r1]
	adds r3, r0, #0
	orrs r3, r5
	strb r3, [r1]
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0802032A
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	beq _0802032A
	adds r0, r6, #0
	movs r1, #0xc
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _08020378 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_0802032A:
	movs r5, #0x32
	adds r4, r6, #0
	adds r4, #0x70
	movs r2, #0
	adds r1, r6, #0
	adds r1, #0x74
	adds r3, r6, #0
	adds r3, #0x74
_0802033A:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #8
	beq _080202B8
	adds r2, #1
	cmp r2, #2
	ble _0802033A
	movs r2, #0
_0802034A:
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _080202B4
	adds r2, #1
	cmp r2, #2
	ble _0802034A
_08020358:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r6, #0x10]
	movs r0, #0xc
	strb r0, [r6, #0xa]
	movs r0, #0xf5
	lsls r0, r0, #1
	bl PlaySong
	b _08020434
	.align 2, 0
_08020370: .4byte 0x000131B8
_08020374: .4byte 0xFFFFF7DF
_08020378: .4byte 0xFFDFFFFF
_0802037C:
	ldr r0, _080203C8 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _080203CC @ =0x000131D8
	adds r0, r2, r1
	ldr r1, [r0]
	ldr r0, [r6, #0x40]
	cmp r1, r0
	ble _080203DC
	ldr r3, _080203D0 @ =0x000131B8
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080203BE
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xc
	beq _080203BE
	adds r0, r6, #0
	movs r1, #0xc
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _080203D4 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_080203BE:
	ldr r0, _080203D8 @ =0xFFFE8000
	str r0, [r6, #0x48]
	movs r0, #0x80
	lsls r0, r0, #2
	b _08020416
	.align 2, 0
_080203C8: .4byte gEwramData
_080203CC: .4byte 0x000131D8
_080203D0: .4byte 0x000131B8
_080203D4: .4byte 0xFFDFFFFF
_080203D8: .4byte 0xFFFE8000
_080203DC:
	ldr r4, _0802046C @ =0x000131B8
	adds r0, r2, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0802040E
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0xc
	beq _0802040E
	adds r0, r6, #0
	movs r1, #0xc
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _08020470 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_0802040E:
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r6, #0x48]
	ldr r0, _08020474 @ =0xFFFFFE00
_08020416:
	str r0, [r6, #0x50]
	ldr r0, _08020478 @ =0xFFFD8000
	str r0, [r6, #0x4c]
	ldr r0, _0802047C @ =0xFFFFF000
	str r0, [r6, #0x54]
	ldr r0, [r6, #0x10]
	movs r1, #0x82
	orrs r0, r1
	str r0, [r6, #0x10]
	movs r0, #0xd
	strb r0, [r6, #0xa]
	movs r0, #0xf5
	lsls r0, r0, #1
	bl PlaySong
_08020434:
	ldr r0, [r6, #0x10]
	ldr r1, _08020470 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_0802043C:
	adds r0, r6, #0
	bl sub_0801D1C8
	ldr r0, _08020480 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08020484 @ =0x0001320C
	adds r2, r1, r0
	ldr r0, [r6, #0x40]
	str r0, [r2]
	ldr r2, _08020488 @ =0x00013210
	adds r1, r1, r2
	ldr r0, [r6, #0x44]
	str r0, [r1]
	ldrb r0, [r6, #0xa]
	cmp r0, #0x11
	bls _08020460
	bl _08020F64
_08020460:
	lsls r0, r0, #2
	ldr r1, _0802048C @ =_08020490
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802046C: .4byte 0x000131B8
_08020470: .4byte 0xFFDFFFFF
_08020474: .4byte 0xFFFFFE00
_08020478: .4byte 0xFFFD8000
_0802047C: .4byte 0xFFFFF000
_08020480: .4byte gEwramData
_08020484: .4byte 0x0001320C
_08020488: .4byte 0x00013210
_0802048C: .4byte _08020490
_08020490: @ jump table
	.4byte _080204D8 @ case 0
	.4byte _08020918 @ case 1
	.4byte _08020C80 @ case 2
	.4byte _08020D10 @ case 3
	.4byte _08020DBE @ case 4
	.4byte _08020E94 @ case 5
	.4byte _08020F64 @ case 6
	.4byte _08020EBA @ case 7
	.4byte _08020F64 @ case 8
	.4byte _08020F64 @ case 9
	.4byte _08020DA8 @ case 10
	.4byte _08020DB0 @ case 11
	.4byte _08020EC2 @ case 12
	.4byte _08020F1C @ case 13
	.4byte _08020F24 @ case 14
	.4byte _08020F64 @ case 15
	.4byte _08020F2C @ case 16
	.4byte _08020F4C @ case 17
_080204D8:
	ldr r5, [r6, #0x48]
	cmp r5, #0
	bge _080204E0
	rsbs r5, r5, #0
_080204E0:
	ldr r1, [r6, #0x10]
	ldr r0, _08020518 @ =0x10000002
	ands r0, r1
	cmp r0, #0
	bne _08020534
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	beq _08020534
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _08020534
	movs r0, #0xc0
	lsls r0, r0, #9
	cmp r5, r0
	ble _0802051C
	ldrb r1, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08020534
	movs r0, #1
	bl sub_0803319C
	b _08020534
	.align 2, 0
_08020518: .4byte 0x10000002
_0802051C:
	movs r0, #0xc0
	lsls r0, r0, #8
	cmp r5, r0
	ble _08020534
	ldrb r1, [r6, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08020534
	movs r0, #1
	bl sub_0803319C
_08020534:
	ldr r1, [r6, #0x10]
	ldr r2, _08020564 @ =0x10008400
	ands r2, r1
	cmp r2, #0
	bne _080205F8
	ldr r0, _08020568 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08020570
	mov r3, sb
	ldrb r0, [r3]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0802056C @ =0xFFFE0000
	str r0, [r6, #0x48]
	str r2, [r6, #0x50]
	b _0802059C
	.align 2, 0
_08020564: .4byte 0x10008400
_08020568: .4byte gEwramData
_0802056C: .4byte 0xFFFE0000
_08020570:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802058E
	mov r4, sb
	ldrb r0, [r4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r6, #0x48]
	str r3, [r6, #0x50]
	b _0802059C
_0802058E:
	ldr r0, [r6, #0x48]
	ldr r1, _080205D4 @ =0xFFFFC000
	cmp r0, #0
	bge _0802059A
	movs r1, #0x80
	lsls r1, r1, #7
_0802059A:
	str r1, [r6, #0x50]
_0802059C:
	ldr r1, [r6, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08020646
	ldr r2, [r6, #0x48]
	cmp r2, #0
	ble _080205B6
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080205C4
_080205B6:
	cmp r2, #0
	bge _08020646
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	beq _08020646
_080205C4:
	ldrb r0, [r6, #0x1d]
	cmp r0, #2
	beq _080205E4
	cmp r0, #2
	bgt _080205D8
	cmp r0, #1
	beq _080205DE
	b _08020646
	.align 2, 0
_080205D4: .4byte 0xFFFFC000
_080205D8:
	cmp r0, #3
	beq _080205EA
	b _08020646
_080205DE:
	ldr r0, [r6, #0x48]
	movs r1, #0x18
	b _080205EE
_080205E4:
	ldr r0, [r6, #0x48]
	movs r1, #0x14
	b _080205EE
_080205EA:
	ldr r0, [r6, #0x48]
	movs r1, #0x12
_080205EE:
	bl __divsi3
	lsls r0, r0, #4
	str r0, [r6, #0x48]
	b _08020646
_080205F8:
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r1, r0
	cmp r1, #0
	bne _08020646
	ldr r0, _08020620 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08020624
	mov r1, sb
	ldrb r0, [r1]
	movs r1, #0x40
	orrs r0, r1
	mov r2, sb
	strb r0, [r2]
	b _08020638
	.align 2, 0
_08020620: .4byte gEwramData
_08020624:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08020638
	mov r3, sb
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
_08020638:
	ldr r0, [r6, #0x48]
	ldr r1, _0802073C @ =0xFFFFC000
	cmp r0, #0
	bge _08020644
	movs r1, #0x80
	lsls r1, r1, #7
_08020644:
	str r1, [r6, #0x50]
_08020646:
	ldr r1, [r6, #0x48]
	ldr r0, [r6, #0x50]
	adds r0, r1, r0
	str r0, [r6, #0x48]
	cmp r1, #0
	blt _0802065A
	cmp r0, #0
	blt _0802065E
	cmp r1, #0
	bgt _08020664
_0802065A:
	cmp r0, #0
	ble _08020664
_0802065E:
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
_08020664:
	ldr r3, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r3
	cmp r0, #0
	bne _08020672
	b _0802082E
_08020672:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	movs r4, #0
	strb r0, [r6, #0xd]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080206C6
	ldr r0, _08020740 @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r2, #0x1c]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080206C6
	ldr r1, _08020744 @ =0x0001339A
	adds r0, r2, r1
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _080206C6
	movs r0, #0x10
	strh r0, [r6, #0x16]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r3, r0
	cmp r3, #0
	beq _080206B2
	movs r0, #0x20
	strh r0, [r6, #0x16]
_080206B2:
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	ldr r1, _08020748 @ =0xFFFFEFFF
	ands r0, r1
	str r0, [r6, #0x10]
	str r4, [r6, #0x48]
	str r4, [r6, #0x4c]
	ldr r0, _0802074C @ =0xFFFFF000
	str r0, [r6, #0x54]
_080206C6:
	ldr r2, [r6, #0x10]
	ldr r0, _08020750 @ =0x1000001E
	ands r0, r2
	cmp r0, #0
	beq _080206D2
	b _0802082E
_080206D2:
	ldr r0, _08020740 @ =gEwramData
	ldr r3, [r0]
	ldrh r4, [r3, #0x1c]
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	bne _080206F8
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	bne _080206F8
	ldr r1, _08020754 @ =0x0001325C
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08020760
_080206F8:
	ldr r1, [r6, #0x10]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08020712
	orrs r1, r2
	ldr r0, _08020758 @ =0xEFFFFFFF
	ands r1, r0
	str r1, [r6, #0x10]
	movs r0, #0xe
	strh r0, [r6, #0x20]
_08020712:
	ldrh r4, [r6, #0x20]
	cmp r4, #0xff
	bne _080207F8
	ldr r0, _08020740 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0802075C @ =0x000131B8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080207F8
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #4
	beq _080207F8
	adds r0, r6, #0
	movs r1, #4
	b _080207E6
	.align 2, 0
_0802073C: .4byte 0xFFFFC000
_08020740: .4byte gEwramData
_08020744: .4byte 0x0001339A
_08020748: .4byte 0xFFFFEFFF
_0802074C: .4byte 0xFFFFF000
_08020750: .4byte 0x1000001E
_08020754: .4byte 0x0001325C
_08020758: .4byte 0xEFFFFFFF
_0802075C: .4byte 0x000131B8
_08020760:
	movs r0, #0x30
	ands r0, r4
	cmp r0, #0
	beq _08020798
	ldr r4, _08020794 @ =0x000131B8
	adds r0, r3, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080207F8
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080207F8
	adds r0, r6, #0
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r6, #0x20]
	b _080207F0
	.align 2, 0
_08020794: .4byte 0x000131B8
_08020798:
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r2, r0
	cmp r2, #0
	bne _080207B6
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080207B6
	ldr r0, _080208AC @ =0x0000FFFF
	cmp r5, r0
	ble _080207B6
	movs r0, #2
	strh r0, [r6, #0x20]
_080207B6:
	ldrh r4, [r6, #0x20]
	cmp r4, #0xff
	bne _080207F8
	ldr r0, [r6, #0x10]
	ldr r1, _080208B0 @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _080208B4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080208B8 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080207F8
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080207F8
	adds r0, r6, #0
	movs r1, #0
_080207E6:
	movs r2, #1
	movs r3, #1
	bl sub_0803F2C8
	strh r4, [r6, #0x20]
_080207F0:
	ldr r0, [r6, #0x10]
	ldr r1, _080208BC @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_080207F8:
	ldr r2, [r6, #0x10]
	movs r0, #0x84
	lsls r0, r0, #8
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, r1
	bne _0802082E
	ldr r0, _080208B4 @ =gEwramData
	ldr r3, [r0]
	ldr r4, _080208C0 @ =0x0001325C
	adds r0, r3, r4
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802082E
	ldrh r1, [r3, #0x1c]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802082E
	ldr r0, _080208C4 @ =0xFFFFFBFF
	ands r2, r0
	str r2, [r6, #0x10]
	movs r0, #0xf
	strh r0, [r6, #0x20]
_0802082E:
	adds r0, r6, #0
	bl sub_08034624
	adds r0, r6, #0
	bl sub_0801F00C
	ldr r3, [r6, #0x10]
	ldr r0, _080208C8 @ =0x00001122
	ands r3, r0
	cmp r3, #0
	bne _080208F8
	ldr r0, _080208B4 @ =gEwramData
	ldr r2, [r0]
	ldrh r1, [r2, #0x1c]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080208F8
	ldr r1, _080208CC @ =0x0001339A
	adds r0, r2, r1
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _080208F8
	movs r0, #3
	strb r0, [r6, #0xa]
	strb r3, [r6, #0xb]
	movs r4, #0xff
	strh r4, [r6, #0x20]
	ldr r3, _080208B8 @ =0x000131B8
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0802089A
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #8
	beq _0802089A
	adds r0, r6, #0
	movs r1, #8
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	strh r4, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _080208BC @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_0802089A:
	mov r4, sb
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080208D0
	movs r0, #0xe0
	lsls r0, r0, #0xa
	b _080208D2
	.align 2, 0
_080208AC: .4byte 0x0000FFFF
_080208B0: .4byte 0xEFFFFFFF
_080208B4: .4byte gEwramData
_080208B8: .4byte 0x000131B8
_080208BC: .4byte 0xFFDFFFFF
_080208C0: .4byte 0x0001325C
_080208C4: .4byte 0xFFFFFBFF
_080208C8: .4byte 0x00001122
_080208CC: .4byte 0x0001339A
_080208D0:
	ldr r0, _08020908 @ =0xFFFC8000
_080208D2:
	str r0, [r6, #0x48]
	ldr r0, [r6, #0x48]
	ldr r1, _0802090C @ =0xFFFFE800
	cmp r0, #0
	bge _080208E0
	movs r1, #0xc0
	lsls r1, r1, #5
_080208E0:
	str r1, [r6, #0x50]
	movs r0, #0
	strb r0, [r6, #0xd]
	ldr r0, [r6, #0x10]
	ldr r1, _08020910 @ =0x20000420
	orrs r0, r1
	ldr r1, _08020914 @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	movs r0, #0xbd
	bl PlaySong
_080208F8:
	adds r0, r6, #0
	bl sub_0801F474
	adds r0, r6, #0
	bl sub_0801FBE4
	b _08020EB2
	.align 2, 0
_08020908: .4byte 0xFFFC8000
_0802090C: .4byte 0xFFFFE800
_08020910: .4byte 0x20000420
_08020914: .4byte 0xEFFFFFFF
_08020918:
	ldr r0, [r6, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0802098E
	ldrb r0, [r6, #0xb]
	cmp r0, #1
	bhi _08020956
	ldr r0, _08020940 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08020948
	ldr r0, _08020944 @ =0xFFFE0000
	b _0802096A
	.align 2, 0
_08020940: .4byte gEwramData
_08020944: .4byte 0xFFFE0000
_08020948:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802098E
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _08020988
_08020956:
	ldr r0, _08020974 @ =gEwramData
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0802097C
	ldr r0, _08020978 @ =0xFFFF0000
_0802096A:
	str r0, [r6, #0x48]
	movs r0, #0
	str r0, [r6, #0x50]
	b _0802099C
	.align 2, 0
_08020974: .4byte gEwramData
_08020978: .4byte 0xFFFF0000
_0802097C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802098E
	movs r0, #0x80
	lsls r0, r0, #9
_08020988:
	str r0, [r6, #0x48]
	str r2, [r6, #0x50]
	b _0802099C
_0802098E:
	ldr r0, [r6, #0x48]
	ldr r1, _080209CC @ =0xFFFFC000
	cmp r0, #0
	bge _0802099A
	movs r1, #0x80
	lsls r1, r1, #7
_0802099A:
	str r1, [r6, #0x50]
_0802099C:
	ldr r1, [r6, #0x48]
	ldr r0, [r6, #0x50]
	adds r0, r1, r0
	str r0, [r6, #0x48]
	cmp r1, #0
	blt _080209B0
	cmp r0, #0
	blt _080209B4
	cmp r1, #0
	bgt _080209BA
_080209B0:
	cmp r0, #0
	ble _080209BA
_080209B4:
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
_080209BA:
	ldrb r0, [r6, #0xb]
	cmp r0, #1
	bne _080209C2
	b _08020AB8
_080209C2:
	cmp r0, #1
	bgt _080209D0
	cmp r0, #0
	beq _080209DE
	b _08020C20
	.align 2, 0
_080209CC: .4byte 0xFFFFC000
_080209D0:
	cmp r0, #2
	bne _080209D6
	b _08020ADC
_080209D6:
	cmp r0, #3
	bne _080209DC
	b _08020B7C
_080209DC:
	b _08020C20
_080209DE:
	ldr r3, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r3
	cmp r0, #0
	bne _080209EC
	b _08020C20
_080209EC:
	ldr r0, _08020A18 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08020A1C @ =0x00013398
	adds r0, r2, r1
	ldrh r1, [r2, #0x1c]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08020A3C
	mov r3, sb
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08020A24
	ldr r4, _08020A20 @ =0x00013120
	adds r0, r2, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08035640
	b _08020A30
	.align 2, 0
_08020A18: .4byte gEwramData
_08020A1C: .4byte 0x00013398
_08020A20: .4byte 0x00013120
_08020A24:
	ldr r1, _08020A38 @ =0x00013120
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08035640
_08020A30:
	movs r0, #2
	strb r0, [r6, #0xb]
	b _08020C20
	.align 2, 0
_08020A38: .4byte 0x00013120
_08020A3C:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r3, r0
	cmp r3, #0
	bne _08020A6C
	ldr r3, _08020A68 @ =0x000131B8
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08020A9E
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x19
	beq _08020A9E
	adds r0, r6, #0
	movs r1, #0x19
	b _08020A8A
	.align 2, 0
_08020A68: .4byte 0x000131B8
_08020A6C:
	ldr r4, _08020AB0 @ =0x000131B8
	adds r0, r2, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08020A9E
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x1b
	beq _08020A9E
	adds r0, r6, #0
	movs r1, #0x1b
_08020A8A:
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _08020AB4 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_08020A9E:
	ldr r0, [r6, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	movs r0, #1
	strb r0, [r6, #0xb]
	b _08020C20
	.align 2, 0
_08020AB0: .4byte 0x000131B8
_08020AB4: .4byte 0xFFDFFFFF
_08020AB8:
	adds r0, r6, #0
	bl sub_0801F00C
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r1
	cmp r0, #0
	bne _08020ACC
	b _08020C20
_08020ACC:
	ldr r0, _08020AD8 @ =0xFFDFFF9F
	ands r1, r0
	str r1, [r6, #0x10]
	movs r0, #0
	strb r0, [r6, #0xa]
	b _08020C20
	.align 2, 0
_08020AD8: .4byte 0xFFDFFF9F
_08020ADC:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08020B14
	ldr r0, _08020B0C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08020B10 @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08020B4A
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x1c
	beq _08020B4A
	adds r0, r6, #0
	movs r1, #0x1c
	b _08020B36
	.align 2, 0
_08020B0C: .4byte gEwramData
_08020B10: .4byte 0x000131B8
_08020B14:
	ldr r0, _08020B68 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08020B6C @ =0x000131B8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08020B4A
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0x1d
	beq _08020B4A
	adds r0, r6, #0
	movs r1, #0x1d
_08020B36:
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r6, #0x20]
	ldr r0, [r6, #0x10]
	ldr r1, _08020B70 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_08020B4A:
	movs r0, #8
	strb r0, [r6, #0xd]
	ldr r0, _08020B68 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08020B74 @ =0x00013120
	adds r0, r0, r3
	ldr r0, [r0]
	bl sub_08035630
	movs r0, #3
	strb r0, [r6, #0xb]
	ldr r0, _08020B78 @ =0x00000123
	bl PlaySong
	b _08020C20
	.align 2, 0
_08020B68: .4byte gEwramData
_08020B6C: .4byte 0x000131B8
_08020B70: .4byte 0xFFDFFFFF
_08020B74: .4byte 0x00013120
_08020B78: .4byte 0x00000123
_08020B7C:
	ldr r5, _08020BB0 @ =gEwramData
	ldr r0, [r5]
	ldr r4, _08020BB4 @ =0x00013120
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08035630
	ldr r0, [r5]
	ldr r2, _08020BB8 @ =0x00013398
	adds r1, r0, r2
	ldrh r0, [r0, #0x1c]
	ldrh r2, [r1]
	ands r2, r0
	cmp r2, #0
	bne _08020BA4
	ldr r0, [r6, #0x10]
	ldr r1, _08020BBC @ =0xFFDFFF9F
	ands r0, r1
	str r0, [r6, #0x10]
	strb r2, [r6, #0xa]
_08020BA4:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _08020BC0
	subs r0, #1
	strb r0, [r6, #0xd]
	b _08020C20
	.align 2, 0
_08020BB0: .4byte gEwramData
_08020BB4: .4byte 0x00013120
_08020BB8: .4byte 0x00013398
_08020BBC: .4byte 0xFFDFFF9F
_08020BC0:
	ldr r1, [r5]
	ldr r3, _08020C40 @ =0x00013120
	adds r0, r1, r3
	ldr r4, [r0]
	ldrh r1, [r1, #0x1e]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _08020C20
	ldr r0, _08020C44 @ =0x00000123
	bl PlaySong
	ldr r0, [r5]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08020BEA
	adds r0, r4, #0
	bl sub_08035704
_08020BEA:
	ldr r0, [r5]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08020BFC
	adds r0, r4, #0
	bl sub_080356D4
_08020BFC:
	ldr r0, [r5]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08020C0E
	adds r0, r4, #0
	bl sub_08035768
_08020C0E:
	ldr r0, [r5]
	ldrh r1, [r0, #0x1e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08020C20
	adds r0, r4, #0
	bl sub_08035738
_08020C20:
	ldr r0, _08020C48 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _08020C40 @ =0x00013120
	adds r0, r0, r4
	ldr r2, [r0]
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08020C50
	ldr r0, [r6, #0x44]
	ldr r1, _08020C4C @ =0xFFED0000
	adds r0, r0, r1
	b _08020C56
	.align 2, 0
_08020C40: .4byte 0x00013120
_08020C44: .4byte 0x00000123
_08020C48: .4byte gEwramData
_08020C4C: .4byte 0xFFED0000
_08020C50:
	ldr r0, [r6, #0x44]
	ldr r3, _08020C6C @ =0xFFF50000
	adds r0, r0, r3
_08020C56:
	str r0, [r2, #0x44]
	mov r4, sb
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08020C74
	ldr r0, [r6, #0x40]
	ldr r1, _08020C70 @ =0xFFE90000
	adds r0, r0, r1
	b _08020C7C
	.align 2, 0
_08020C6C: .4byte 0xFFF50000
_08020C70: .4byte 0xFFE90000
_08020C74:
	ldr r0, [r6, #0x40]
	movs r3, #0xc0
	lsls r3, r3, #0xd
	adds r0, r0, r3
_08020C7C:
	str r0, [r2, #0x40]
	b _08020EB2
_08020C80:
	ldr r1, [r6, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08020CC2
	ldr r0, _08020CA8 @ =gEwramData
	ldr r0, [r0]
	ldrh r2, [r0, #0x1c]
	movs r0, #0x20
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08020CB0
	ldr r0, _08020CAC @ =0xFFFE0000
	str r0, [r6, #0x48]
	movs r0, #0
	str r0, [r6, #0x50]
	b _08020CD0
	.align 2, 0
_08020CA8: .4byte gEwramData
_08020CAC: .4byte 0xFFFE0000
_08020CB0:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08020CC2
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r6, #0x48]
	str r3, [r6, #0x50]
	b _08020CD0
_08020CC2:
	ldr r0, [r6, #0x48]
	ldr r2, _08020D08 @ =0xFFFFC000
	cmp r0, #0
	bge _08020CCE
	movs r2, #0x80
	lsls r2, r2, #7
_08020CCE:
	str r2, [r6, #0x50]
_08020CD0:
	ldr r2, [r6, #0x48]
	ldr r0, [r6, #0x50]
	adds r0, r2, r0
	str r0, [r6, #0x48]
	cmp r2, #0
	blt _08020CE4
	cmp r0, #0
	blt _08020CE8
	cmp r2, #0
	bgt _08020CEE
_08020CE4:
	cmp r0, #0
	ble _08020CEE
_08020CE8:
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
_08020CEE:
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r1
	cmp r0, #0
	bne _08020CFA
	b _08020EB2
_08020CFA:
	ldr r0, _08020D0C @ =0xFFDFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
	movs r0, #0
	strb r0, [r6, #0xa]
	b _08020EB2
	.align 2, 0
_08020D08: .4byte 0xFFFFC000
_08020D0C: .4byte 0xFFDFFEFF
_08020D10:
	movs r1, #4
	adds r0, r6, #0
	adds r0, #0x70
	strb r1, [r0]
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r6, #0x48]
	cmp r1, #0
	bge _08020D2C
	rsbs r1, r1, #0
_08020D2C:
	movs r0, #0xc0
	lsls r0, r0, #9
	cmp r1, r0
	ble _08020D58
	ldrb r1, [r6, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08020D58
	ldr r0, _08020DA0 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _08020DA4 @ =0x00013110
	adds r0, r0, r4
	ldr r0, [r0]
	adds r0, #0x58
	ldrb r0, [r0]
	lsrs r0, r0, #6
	movs r1, #1
	bics r1, r0
	movs r0, #2
	bl sub_08032EFC
_08020D58:
	ldr r1, [r6, #0x48]
	ldr r0, [r6, #0x50]
	adds r0, r1, r0
	str r0, [r6, #0x48]
	cmp r1, #0
	blt _08020D6C
	cmp r0, #0
	blt _08020D70
	cmp r1, #0
	bgt _08020D76
_08020D6C:
	cmp r0, #0
	ble _08020D76
_08020D70:
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
_08020D76:
	ldr r1, [r6, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08020D84
	movs r0, #0x20
	strb r0, [r6, #0xd]
_08020D84:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bhi _08020D94
	b _08020F0A
_08020D94:
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	str r0, [r6, #0x10]
	b _08020F06
	.align 2, 0
_08020DA0: .4byte gEwramData
_08020DA4: .4byte 0x00013110
_08020DA8:
	adds r0, r6, #0
	bl sub_0801FD24
	b _08020F64
_08020DB0:
	adds r0, r6, #0
	bl sub_0801FCAC
	adds r0, r6, #0
	bl sub_0801F00C
	b _08020F64
_08020DBE:
	ldr r1, [r6, #0x48]
	ldr r0, _08020E40 @ =0xFFFFD000
	cmp r1, #0
	bge _08020DCA
	movs r0, #0xc0
	lsls r0, r0, #6
_08020DCA:
	str r0, [r6, #0x50]
	adds r0, r1, r0
	str r0, [r6, #0x48]
	cmp r1, #0
	blt _08020DDC
	cmp r0, #0
	blt _08020DE0
	cmp r1, #0
	bgt _08020DE6
_08020DDC:
	cmp r0, #0
	ble _08020DE6
_08020DE0:
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
_08020DE6:
	ldrb r1, [r6, #0xd]
	cmp r1, #7
	bhi _08020E14
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08020E0E
	ldr r0, _08020E44 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08020E48 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x58
	ldrb r0, [r0]
	lsrs r0, r0, #6
	movs r1, #1
	bics r1, r0
	movs r0, #0
	bl sub_08032EFC
_08020E0E:
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
_08020E14:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	bne _08020E22
	b _08020F64
_08020E22:
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r2, r1
	str r2, [r6, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0xd
	cmp r0, r1
	beq _08020E50
	ldr r0, _08020E4C @ =0xFFFEFF7F
	ands r2, r0
	str r2, [r6, #0x10]
	b _08020F60
	.align 2, 0
_08020E40: .4byte 0xFFFFD000
_08020E44: .4byte gEwramData
_08020E48: .4byte 0x00013110
_08020E4C: .4byte 0xFFFEFF7F
_08020E50:
	movs r0, #0x80
	ands r2, r0
	cmp r2, #0
	bne _08020E5A
	b _08020F64
_08020E5A:
	adds r0, r6, #0
	bl sub_0801F00C
	adds r0, r6, #0
	bl sub_0801F474
	adds r0, r6, #0
	bl sub_0801F8FC
	ldr r1, [r6, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08020E80
	movs r0, #0
	strb r0, [r6, #0xa]
	ldr r0, _08020E90 @ =0xFFFEFF7F
	ands r1, r0
	str r1, [r6, #0x10]
_08020E80:
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bne _08020F64
	ldr r0, [r6, #0x10]
	ldr r1, _08020E90 @ =0xFFFEFF7F
	ands r0, r1
	str r0, [r6, #0x10]
	b _08020F64
	.align 2, 0
_08020E90: .4byte 0xFFFEFF7F
_08020E94:
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	ble _08020E9E
	movs r0, #0
	strb r0, [r6, #0xa]
_08020E9E:
	movs r1, #4
	adds r0, r6, #0
	adds r0, #0x70
	strb r1, [r0]
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
_08020EB2:
	adds r0, r6, #0
	bl sub_0801F8FC
	b _08020F64
_08020EBA:
	adds r0, r6, #0
	bl sub_0801F248
	b _08020F0A
_08020EC2:
	ldr r0, [r6, #0x10]
	ldr r1, _08020F14 @ =0xEFFFFE9F
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r1, [r6, #0x48]
	ldr r0, _08020F18 @ =0xFFFF8000
	cmp r1, #0
	bge _08020ED6
	movs r0, #0x80
	lsls r0, r0, #8
_08020ED6:
	str r0, [r6, #0x50]
	adds r0, r1, r0
	str r0, [r6, #0x48]
	cmp r1, #0
	blt _08020EE8
	cmp r0, #0
	blt _08020EEC
	cmp r1, #0
	bgt _08020EF2
_08020EE8:
	cmp r0, #0
	ble _08020EF2
_08020EEC:
	movs r0, #0
	str r0, [r6, #0x48]
	str r0, [r6, #0x50]
_08020EF2:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r1
	cmp r0, #0
	beq _08020F0A
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #0x10]
_08020F06:
	movs r0, #0
	strb r0, [r6, #0xa]
_08020F0A:
	adds r0, r6, #0
	bl sub_0801F604
	b _08020F64
	.align 2, 0
_08020F14: .4byte 0xEFFFFE9F
_08020F18: .4byte 0xFFFF8000
_08020F1C:
	adds r0, r6, #0
	bl sub_0801FA94
	b _08020F64
_08020F24:
	adds r0, r6, #0
	bl sub_0801FB1C
	b _08020F64
_08020F2C:
	movs r1, #4
	ldr r0, _08020F44 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08020F48 @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	adds r0, r6, #0
	bl sub_0801B03C
	b _08020F64
	.align 2, 0
_08020F44: .4byte gEwramData
_08020F48: .4byte 0x00013110
_08020F4C:
	ldr r0, _08020FE0 @ =gEwramData
	ldr r0, [r0]
	ldr r3, _08020FE4 @ =0x00013110
	adds r0, r0, r3
	ldr r2, [r0]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	str r0, [r2, #0x10]
_08020F60:
	movs r0, #0
	strb r0, [r6, #0xa]
_08020F64:
	ldrb r0, [r6, #0x1e]
	cmp r0, #0
	beq _08020F86
	subs r0, #1
	strb r0, [r6, #0x1e]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08020F86
	adds r0, r6, #0
	adds r0, #0x70
	strb r1, [r0, #6]
	strb r1, [r0, #5]
	strb r1, [r0, #4]
	strb r1, [r0, #0xa]
	strb r1, [r0, #9]
	strb r1, [r0, #8]
_08020F86:
	ldr r0, _08020FE0 @ =gEwramData
	ldr r2, [r0]
	ldr r4, _08020FE8 @ =0x0000042C
	adds r1, r2, r4
	ldr r1, [r1]
	movs r3, #1
	ands r1, r3
	adds r5, r0, #0
	cmp r1, #0
	beq _08020FA4
	movs r0, #2
	ldr r4, _08020FE4 @ =0x00013110
	adds r1, r2, r4
	ldr r1, [r1]
	strb r0, [r1, #0x1e]
_08020FA4:
	ldrh r0, [r6, #0x34]
	cmp r0, #0
	beq _08020FBA
	strb r3, [r6, #0xf]
	subs r0, #1
	strh r0, [r6, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08020FBA
	movs r0, #0
	strb r0, [r6, #0xf]
_08020FBA:
	ldr r4, [r5]
	ldr r1, _08020FEC @ =0x000131B8
	adds r0, r4, r1
	ldr r0, [r0]
	movs r2, #2
	ands r0, r2
	cmp r0, #0
	bne _08021084
	ldrb r0, [r6, #0xa]
	cmp r0, #3
	beq _08020FDC
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08020FF4
_08020FDC:
	ldr r0, _08020FF0 @ =0x080E12E8
	b _08021082
	.align 2, 0
_08020FE0: .4byte gEwramData
_08020FE4: .4byte 0x00013110
_08020FE8: .4byte 0x0000042C
_08020FEC: .4byte 0x000131B8
_08020FF0: .4byte 0x080E12E8
_08020FF4:
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08021008
	ldr r0, _08021004 @ =0x080E12E4
	b _08021082
	.align 2, 0
_08021004: .4byte 0x080E12E4
_08021008:
	ands r1, r2
	cmp r1, #0
	bne _08021018
	ldr r0, _08021014 @ =0x080E12DC
	b _08021082
	.align 2, 0
_08021014: .4byte 0x080E12DC
_08021018:
	ldrb r0, [r6, #0x1c]
	cmp r0, #0
	beq _08021028
	ldr r2, _08021024 @ =0x00013219
	adds r1, r4, r2
	b _08021078
	.align 2, 0
_08021024: .4byte 0x00013219
_08021028:
	adds r0, r6, #0
	adds r0, #0x4a
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bge _08021036
	rsbs r0, r0, #0
_08021036:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x4e
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _08021048
	rsbs r0, r0, #0
_08021048:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0802105C
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08021074
_0802105C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r0, #4
	ldr r3, _08021070 @ =0x00013219
	adds r1, r4, r3
	b _0802107A
	.align 2, 0
_08021070: .4byte 0x00013219
_08021074:
	ldr r0, _080210BC @ =0x00013219
	adds r1, r4, r0
_08021078:
	movs r0, #0xf4
_0802107A:
	strb r0, [r1]
	ldr r0, [r5]
	ldr r1, _080210C0 @ =0x00013218
	adds r0, r0, r1
_08021082:
	str r0, [r6, #0x18]
_08021084:
	ldr r0, [r5]
	ldr r2, _080210C4 @ =0x000131B8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080210DC
	ldrh r1, [r6, #0x20]
	cmp r1, #0xff
	beq _080210DC
	adds r0, r6, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, r1
	beq _080210CC
	adds r0, r6, #0
	movs r2, #1
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, [r6, #0x10]
	ldr r1, _080210C8 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	b _080210DC
	.align 2, 0
_080210BC: .4byte 0x00013219
_080210C0: .4byte 0x00013218
_080210C4: .4byte 0x000131B8
_080210C8: .4byte 0xFFDFFFFF
_080210CC:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _080210DC
	movs r0, #0xff
	strh r0, [r6, #0x20]
_080210DC:
	adds r0, r6, #0
	bl sub_0803F17C
	adds r0, r6, #0
	bl sub_0806B1FC
	mov r3, sb
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r5, #1
	adds r1, r5, #0
	eors r1, r0
	lsls r1, r1, #6
	movs r4, #0x41
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	bl sub_08042584
	mov r0, sb
	ldrb r1, [r0]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1f
	eors r5, r0
	lsls r5, r5, #6
	ands r4, r1
	orrs r4, r5
	mov r1, sb
	strb r4, [r1]
	bl sub_08021FA4
	bl sub_08021C44
	ldr r5, _080211CC @ =gEwramData
	ldr r0, [r5]
	ldr r2, _080211D0 @ =0x000131B4
	adds r0, r0, r2
	movs r4, #0
	strb r4, [r0]
	ldr r0, [r5]
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08021144
	str r4, [r6, #0x48]
	str r4, [r6, #0x50]
_08021144:
	ldr r3, [r5]
	ldr r1, _080211D4 @ =0x000131D6
	adds r0, r3, r1
	strh r4, [r0]
	ldr r0, [r6, #0x10]
	ldr r1, _080211D8 @ =0xFBF7FFFF
	ands r0, r1
	str r0, [r6, #0x10]
	adds r2, r3, r2
	ldr r0, [r2]
	ldr r1, _080211DC @ =0xFFFFF701
	ands r0, r1
	str r0, [r2]
	ldr r2, _080211E0 @ =0x0001325C
	adds r0, r3, r2
	str r4, [r0]
	ldr r4, [sp, #0x10]
	movs r0, #0
	ldrsh r1, [r4, r0]
	subs r2, #0x48
	adds r0, r3, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, [sp, #0x14]
	movs r4, #0
	ldrsh r2, [r0, r4]
	ldr r0, _080211E4 @ =0x00013216
	adds r3, r3, r0
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	movs r0, #0
	bl sub_0800ED24
	ldrh r0, [r6, #0x22]
	adds r0, #1
	strh r0, [r6, #0x22]
	ldr r4, [r5]
	ldr r1, _080211E8 @ =0x0001339E
	adds r0, r4, r1
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _080211BC
	ldr r2, _080211EC @ =0x00013269
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r5]
	adds r3, r0, r2
	ldrb r0, [r3]
	cmp r0, #3
	bls _080211BC
	movs r0, #0
	strb r0, [r3]
_080211BC:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080211CC: .4byte gEwramData
_080211D0: .4byte 0x000131B4
_080211D4: .4byte 0x000131D6
_080211D8: .4byte 0xFBF7FFFF
_080211DC: .4byte 0xFFFFF701
_080211E0: .4byte 0x0001325C
_080211E4: .4byte 0x00013216
_080211E8: .4byte 0x0001339E
_080211EC: .4byte 0x00013269
