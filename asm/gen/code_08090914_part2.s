	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_0809F224
sub_0809F224: @ 0x0809F224
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r2, _0809F2F8 @ =sub_0809FED0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r7, r0, #0
	cmp r7, #0
	beq _0809F2EE
	str r5, [r7, #0x40]
	str r6, [r7, #0x44]
	mov r0, r8
	str r0, [r7, #0x48]
	ldr r0, [sp, #0x18]
	str r0, [r7, #0x4c]
	movs r0, #0
	str r0, [r7, #0x50]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x54]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r7, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r2, r7, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0809F2FC @ =0x082258FC
	ldrb r3, [r2]
	adds r0, r7, #0
	ldr r2, [sp, #0x1c]
	bl sub_0803B924
	bl RandomNumberGenerator
	movs r1, #5
	bl __umodsi3
	adds r0, #0x2c
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	subs r1, #0xa
	movs r6, #2
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	subs r1, #0x25
	strb r0, [r1]
	str r4, [r7, #0x10]
	adds r1, #0x23
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	bl RandomNumberGenerator
	movs r5, #1
	adds r4, r7, #0
	adds r4, #0x58
	ands r0, r5
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
	movs r0, #0x3c
	strb r0, [r7, #0xd]
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	orrs r0, r6
	strb r0, [r2]
	ldr r0, _0809F300 @ =sub_0803B9D0
	str r0, [r7, #4]
_0809F2EE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809F2F8: .4byte sub_0809FED0
_0809F2FC: .4byte 0x082258FC
_0809F300: .4byte sub_0803B9D0

	thumb_func_start sub_0809F304
sub_0809F304: @ 0x0809F304
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _0809F3A0 @ =sub_0809F410
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0809F3FA
	str r6, [r4, #0x40]
	str r7, [r4, #0x44]
	mov r0, r8
	str r0, [r4, #0x48]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x4c]
	movs r0, #0
	str r0, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x54]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #3
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0809F3A4 @ =0x082258FC
	ldrb r3, [r2]
	adds r0, r4, #0
	ldr r2, [sp, #0x1c]
	bl sub_0803B924
	ldr r1, _0809F3A8 @ =0x08528328
	adds r0, r4, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	str r5, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	mov r0, r8
	cmp r0, #0
	bge _0809F3AC
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
	b _0809F3BA
	.align 2, 0
_0809F3A0: .4byte sub_0809F410
_0809F3A4: .4byte 0x082258FC
_0809F3A8: .4byte 0x08528328
_0809F3AC:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0809F3BA:
	movs r0, #0x3c
	strb r0, [r4, #0xd]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	movs r0, #0xc8
	strh r0, [r4, #0x34]
	adds r2, r4, #0
	adds r2, #0x3e
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _0809F404 @ =sub_0809FE4C
	ldr r3, _0809F408 @ =sub_0809F6E0
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0809F40C @ =sub_0803B9D0
	str r0, [r4, #4]
_0809F3FA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809F404: .4byte sub_0809FE4C
_0809F408: .4byte sub_0809F6E0
_0809F40C: .4byte sub_0803B9D0

	thumb_func_start sub_0809F410
sub_0809F410: @ 0x0809F410
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x18]
	ldr r0, _0809F474 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0809F478 @ =0x0000A094
	adds r1, r1, r0
	mov r8, r1
	movs r3, #0xc0
	lsls r3, r3, #0xb
	ldr r0, _0809F47C @ =0x1C06E4FD
	str r0, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r6, [r2, #0x14]
	ldrb r2, [r5, #0xa]
	adds r1, r2, #0
	cmp r1, #0
	bne _0809F4B4
	ldr r1, [r5, #0x40]
	mov r2, r8
	ldr r0, [r2, #4]
	adds r4, r1, r0
	ldr r1, [r5, #0x44]
	ldr r0, [r2, #8]
	adds r2, r1, r0
	ldr r0, _0809F480 @ =0xFF600000
	adds r1, r4, r0
	movs r0, #0xc0
	lsls r0, r0, #0x10
	cmp r1, r0
	bhi _0809F488
	ldr r0, _0809F484 @ =0x00CFFFFF
	cmp r2, r0
	ble _0809F488
	movs r0, #0xb0
	lsls r0, r0, #0x11
	cmp r2, r0
	bgt _0809F488
	adds r0, r5, #0
	adds r1, r3, #0
	bl sub_0806D3D8
	b _0809F6C8
	.align 2, 0
_0809F474: .4byte gEwramData
_0809F478: .4byte 0x0000A094
_0809F47C: .4byte 0x1C06E4FD
_0809F480: .4byte 0xFF600000
_0809F484: .4byte 0x00CFFFFF
_0809F488:
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _0809F4AC @ =0xFFE00000
	adds r0, r5, #0
	bl sub_0806D288
	adds r1, r0, #0
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0809F4A0
	b _0809F6C8
_0809F4A0:
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	ldr r1, _0809F4B0 @ =0x08528330
	b _0809F650
	.align 2, 0
_0809F4AC: .4byte 0xFFE00000
_0809F4B0: .4byte 0x08528330
_0809F4B4:
	cmp r1, #1
	bne _0809F510
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _0809F4C6
	b _0809F6C8
_0809F4C6:
	adds r0, r2, #1
	strb r0, [r5, #0xa]
	ldr r1, _0809F50C @ =0x08528298
	adds r0, r5, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	add r4, sp, #0x14
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080428B4
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08042848
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r5, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	movs r0, #0
	str r0, [r5, #0x50]
	b _0809F6C8
	.align 2, 0
_0809F50C: .4byte 0x08528298
_0809F510:
	cmp r1, #2
	beq _0809F516
	b _0809F660
_0809F516:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	mov sl, r2
	cmp r0, #0
	beq _0809F530
	ldr r0, _0809F52C @ =0xFFFFC000
	b _0809F534
	.align 2, 0
_0809F52C: .4byte 0xFFFFC000
_0809F530:
	movs r0, #0x80
	lsls r0, r0, #7
_0809F534:
	str r0, [r5, #0x48]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _0809F618 @ =0xFFE00000
	adds r0, r5, #0
	bl sub_0806D288
	adds r1, r0, #0
	mov r3, sl
	ldrb r2, [r3]
	movs r0, #0x40
	ands r0, r2
	movs r4, #8
	cmp r0, #0
	beq _0809F554
	subs r4, #0x10
_0809F554:
	movs r0, #3
	mov sb, r0
	ands r0, r1
	mov sb, r0
	cmp r0, #0
	beq _0809F574
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
_0809F574:
	adds r6, r5, #0
	adds r6, #0x42
	ldrh r0, [r6]
	mov r1, r8
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r7, r5, #0
	adds r7, #0x46
	ldrh r1, [r7]
	mov r2, r8
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	adds r1, #1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D104
	cmp r0, #0
	bne _0809F5E0
	ldrh r0, [r6]
	mov r3, r8
	ldrh r3, [r3, #6]
	adds r0, r0, r3
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r7]
	mov r2, r8
	ldrh r2, [r2, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	bne _0809F5C6
	mov r3, sb
	cmp r3, #0
	beq _0809F5E0
_0809F5C6:
	mov r0, sl
	ldrb r2, [r0]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, sl
	strb r0, [r1]
_0809F5E0:
	adds r0, r5, #0
	bl sub_0806AE54
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	ldr r2, [sp, #0x18]
	cmp r2, #0
	beq _0809F61C
	ldr r0, [r2]
	cmp r0, #0
	beq _0809F61C
	adds r0, r2, #0
	adds r0, #0x36
	adds r1, r5, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0809F61C
	ldrb r0, [r2, #0xa]
	cmp r0, #2
	beq _0809F61C
	adds r0, r5, #0
	bl sub_0803F17C
	b _0809F6CE
	.align 2, 0
_0809F618: .4byte 0xFFE00000
_0809F61C:
	movs r1, #0
	movs r0, #0xa
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xb]
	movs r3, #0
	strh r1, [r5, #0x34]
	adds r1, r5, #0
	adds r1, #0x2c
	adds r4, r5, #0
	adds r4, #0x5a
	movs r0, #0xf
	ldrb r1, [r1]
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r4]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0x28
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x2d
	strb r3, [r0]
	ldr r1, _0809F65C @ =0x08528340
_0809F650:
	adds r0, r5, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	b _0809F6C8
	.align 2, 0
_0809F65C: .4byte 0x08528340
_0809F660:
	cmp r1, #0xa
	bne _0809F6C8
	ldrb r1, [r5, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0809F68C
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	ldr r3, _0809F6C4 @ =0xFFFA0000
	adds r1, r1, r3
	movs r2, #0x80
	lsls r2, r2, #0xd
	movs r3, #0xc0
	lsls r3, r3, #0xc
	adds r4, r5, #0
	adds r4, #0x5c
	ldrb r4, [r4]
	subs r4, #1
	str r4, [sp]
	bl sub_0806D5C0
_0809F68C:
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
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0809F6C8
	ldr r0, [r6, #0x1c]
	subs r0, #1
	str r0, [r6, #0x1c]
	adds r0, r5, #0
	bl EntityDelete
	b _0809F6CE
	.align 2, 0
_0809F6C4: .4byte 0xFFFA0000
_0809F6C8:
	adds r0, r5, #0
	bl sub_0803F17C
_0809F6CE:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809F6E0
sub_0809F6E0: @ 0x0809F6E0
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
	adds r4, r0, #0
	adds r5, r6, #0
	adds r5, #0x2d
	movs r0, #8
	strb r0, [r5]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08042B8C
	ldrh r0, [r6, #0x34]
	subs r0, r0, r4
	movs r4, #0
	strh r0, [r6, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0809F758
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
	strb r4, [r5]
	movs r0, #0xa
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xb]
	ldr r1, _0809F760 @ =0x08528340
	adds r0, r6, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
_0809F758:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809F760: .4byte 0x08528340

	thumb_func_start sub_0809F764
sub_0809F764: @ 0x0809F764
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r7, r2, #0
	ldr r4, [r6, #0x14]
	ldr r0, _0809F7C8 @ =sub_0809F854
	bl sub_0806DFF8
	adds r5, r0, #0
	cmp r5, #0
	beq _0809F840
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r2, [r4]
	adds r0, r6, #0
	adds r0, #0x20
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _0809F7CC @ =0x082258FC
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_0803B924
	cmp r7, #5
	bne _0809F810
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0809F7D0
	adds r0, r5, #0
	bl EntityDelete
	b _0809F842
	.align 2, 0
_0809F7C8: .4byte sub_0809F854
_0809F7CC: .4byte 0x082258FC
_0809F7D0:
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
	strb r0, [r2]
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r1, [r4]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	lsrs r1, r1, #7
	str r1, [sp]
	ldrb r1, [r4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E238
_0809F810:
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	str r6, [r5, #0x10]
	mov r0, r8
	str r0, [r5, #0x20]
	strb r7, [r5, #0x1d]
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	adds r2, #1
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0809F850 @ =sub_0803B9D0
	str r0, [r5, #4]
_0809F840:
	adds r0, r5, #0
_0809F842:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809F850: .4byte sub_0803B9D0

	thumb_func_start sub_0809F854
sub_0809F854: @ 0x0809F854
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	mov sl, r0
	ldr r1, [r5, #0x20]
	str r1, [sp, #0x30]
	add r2, sp, #0x18
	adds r1, r2, #0
	ldr r0, _0809F8D4 @ =0x081190CC
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4, r7}
	stm r1!, {r3, r4, r7}
	mov r6, sl
	ldr r6, [r6, #0x14]
	mov sb, r6
	movs r1, #0x18
	ldrsb r1, [r5, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0xa
	mov r8, r0
	lsls r6, r0, #2
	mov r7, sb
	adds r4, r6, r7
	ldr r1, [r4]
	cmp r1, #1
	bne _0809F89A
	b _0809FBEE
_0809F89A:
	ldrb r3, [r5, #0xa]
	cmp r3, #0
	beq _0809F8A2
	b _0809FB7C
_0809F8A2:
	mov r0, sl
	cmp r0, #0
	bne _0809F8AA
	b _0809FBEE
_0809F8AA:
	ldr r0, [r0]
	cmp r0, #0
	bne _0809F8B2
	b _0809FBEE
_0809F8B2:
	mov r0, sl
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x6c
	beq _0809F8BE
	b _0809FBEE
_0809F8BE:
	cmp r1, #4
	bne _0809F8C4
	b _0809F9C4
_0809F8C4:
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _0809F8E8
	cmp r0, #1
	bgt _0809F8D8
	cmp r0, #0
	beq _0809F8DE
	b _0809F926
	.align 2, 0
_0809F8D4: .4byte 0x081190CC
_0809F8D8:
	cmp r0, #2
	beq _0809F908
	b _0809F926
_0809F8DE:
	movs r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0x3c
	strb r0, [r5, #0xd]
	b _0809F926
_0809F8E8:
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r5, #0x1e]
	adds r0, r0, r3
	strh r0, [r5, #0x1e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xf0
	lsls r1, r1, #7
	cmp r0, r1
	ble _0809F926
	strh r1, [r5, #0x1e]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	b _0809F924
_0809F908:
	ldr r4, _0809F9BC @ =0xFFFFFE0C
	adds r0, r4, #0
	ldrh r6, [r5, #0x1e]
	adds r0, r0, r6
	strh r0, [r5, #0x1e]
	lsls r0, r0, #0x10
	ldr r1, _0809F9C0 @ =0x07FF0000
	cmp r0, r1
	bgt _0809F926
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r5, #0x1e]
	ldrb r0, [r5, #0xb]
	subs r0, #1
_0809F924:
	strb r0, [r5, #0xb]
_0809F926:
	mov r7, r8
	lsls r0, r7, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r6, [r4, #8]
	movs r1, #0x1d
	ldrsb r1, [r5, r1]
	movs r3, #2
	adds r7, r0, #0
	cmp r1, #5
	beq _0809F942
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r3, r0, #0x1f
_0809F942:
	lsls r0, r6, #1
	adds r0, r0, r6
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r6, [r0]
	ldr r3, [r4]
	cmp r3, #2
	bne _0809F982
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r5, #0x14]
	cmp r0, r6
	bge _0809F982
	str r3, [r4, #4]
	adds r0, r6, #0
	movs r1, #0x78
	bl __divsi3
	ldr r1, [r5, #0x14]
	adds r1, r1, r0
	str r1, [r5, #0x14]
	cmp r1, r6
	blt _0809F982
	str r6, [r5, #0x14]
	movs r0, #0
	str r0, [r4, #4]
_0809F982:
	mov r2, sb
	adds r4, r7, r2
	ldr r1, [r4]
	cmp r1, #3
	bne _0809FA70
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _0809FA70
	str r1, [r4, #4]
	adds r0, r6, #0
	movs r1, #0x78
	bl __divsi3
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	str r1, [r5, #0x14]
	cmp r1, #0
	bgt _0809FA70
	movs r0, #0
	str r0, [r5, #0x14]
	str r0, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	b _0809FA70
	.align 2, 0
_0809F9BC: .4byte 0xFFFFFE0C
_0809F9C0: .4byte 0x07FF0000
_0809F9C4:
	movs r0, #0x1d
	ldrsb r0, [r5, r0]
	adds r7, r6, #0
	cmp r0, #5
	bne _0809FA70
	str r1, [r4, #4]
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _0809F9DA
	strb r3, [r5, #0xc]
	b _0809FA54
_0809F9DA:
	cmp r0, #0
	bne _0809FA38
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _0809F9EA
	cmp r0, #1
	beq _0809F9FA
	b _0809FA70
_0809F9EA:
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x3c
	strb r0, [r5, #0xd]
	adds r0, #0xe3
	bl PlaySong
	b _0809FA70
_0809F9FA:
	ldrb r1, [r5, #0xd]
	cmp r1, #0x1d
	bls _0809FA1E
	ands r0, r1
	cmp r0, #0
	bne _0809FA1E
	mov r6, sb
	ldr r3, [r6]
	movs r7, #0x1e
	ldrsh r0, [r5, r7]
	ldr r1, [r4, #0x10]
	adds r0, r0, r1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_0809FC0C
_0809FA1E:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	mov r0, r8
	lsls r7, r0, #2
	cmp r1, #0
	bne _0809FA70
	mov r2, sb
	adds r0, r7, r2
	str r1, [r0, #4]
	b _0809FA70
_0809FA38:
	bl sub_0806D518
	cmp r0, #1
	bne _0809FA54
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
	b _0809FA70
_0809FA54:
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
_0809FA70:
	movs r0, #0x1d
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0809FA98
	movs r3, #0x1e
	ldrsh r1, [r5, r3]
	ldr r4, _0809FA90 @ =0xFFFFC000
	adds r0, r1, r4
	cmp r0, #0
	bge _0809FA88
	ldr r6, _0809FA94 @ =0xFFFFC003
	adds r0, r1, r6
_0809FA88:
	asrs r0, r0, #2
	subs r4, r1, r0
	b _0809FAB6
	.align 2, 0
_0809FA90: .4byte 0xFFFFC000
_0809FA94: .4byte 0xFFFFC003
_0809FA98:
	cmp r0, #1
	bne _0809FAA2
	movs r0, #0x1e
	ldrsh r4, [r5, r0]
	b _0809FAB6
_0809FAA2:
	movs r2, #0x1e
	ldrsh r1, [r5, r2]
	ldr r3, _0809FB74 @ =0xFFFFC000
	adds r0, r1, r3
	cmp r0, #0
	bge _0809FAB2
	ldr r4, _0809FB78 @ =0xFFFFC003
	adds r0, r1, r4
_0809FAB2:
	asrs r0, r0, #2
	adds r4, r1, r0
_0809FAB6:
	add r7, sb
	ldr r0, [r7, #0x10]
	adds r4, r4, r0
	movs r6, #0x80
	lsls r6, r6, #7
	adds r0, r4, r6
	bl sub_080009E4
	adds r6, r0, #0
	ldr r1, [r5, #0x14]
	bl sub_0803E86C
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_080009E4
	adds r2, r0, #0
	ldr r1, [r5, #0x14]
	bl sub_0803E86C
	adds r2, r0, #0
	ldr r1, [sp, #0x30]
	ldr r0, [r1, #0x40]
	adds r0, r0, r6
	str r0, [r5, #0x40]
	ldr r0, [r1, #0x44]
	adds r0, r0, r2
	str r0, [r5, #0x44]
	movs r0, #0x1d
	ldrsb r0, [r5, r0]
	cmp r0, #5
	bne _0809FB20
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	ldr r1, [r7, #0x10]
	ldr r3, _0809FB74 @ =0xFFFFC000
	adds r1, r1, r3
	adds r0, r0, r1
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
	bl sub_0803E238
_0809FB20:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0809FB6C
	mov r4, sl
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0809FB6C
	ldrb r0, [r5, #0x1c]
	subs r0, #1
	strb r0, [r5, #0x1c]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0809FB6C
	movs r0, #1
	strb r0, [r5, #0xa]
	strb r1, [r5, #0xb]
	strb r1, [r5, #0xc]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r1, [r2]
	subs r0, #0x22
	ands r0, r1
	strb r0, [r2]
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
_0809FB6C:
	adds r0, r5, #0
	bl sub_0803F17C
	b _0809FBFC
	.align 2, 0
_0809FB74: .4byte 0xFFFFC000
_0809FB78: .4byte 0xFFFFC003
_0809FB7C:
	ldrb r0, [r5, #0xb]
	adds r2, r0, #0
	cmp r2, #0
	bne _0809FBA6
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r3, r5, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	str r2, [r5, #0x48]
	str r2, [r5, #0x50]
	str r2, [r5, #0x4c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	movs r0, #0x32
	strb r0, [r5, #0xd]
	b _0809FBF6
_0809FBA6:
	cmp r2, #1
	bne _0809FBF6
	movs r1, #0x80
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
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0809FBF6
	movs r0, #0x1d
	ldrsb r0, [r5, r0]
	cmp r0, #5
	bne _0809FBEE
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_0809FBEE:
	adds r0, r5, #0
	bl EntityDelete
	b _0809FBFC
_0809FBF6:
	adds r0, r5, #0
	bl sub_0803F17C
_0809FBFC:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809FC0C
sub_0809FC0C: @ 0x0809FC0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	mov r8, r0
	adds r4, r1, #0
	mov sl, r2
	ldr r7, [sp, #0x88]
	movs r0, #0x80
	lsls r0, r0, #0xc
	mov sb, r0
	ldr r0, _0809FD7C @ =0x0808FCFC
	str r0, [sp, #0x60]
	ldr r2, _0809FD80 @ =sub_0809FFEC
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	ldr r1, _0809FD84 @ =0x081190E4
	mov r0, sp
	movs r2, #0x60
	bl memcpy
	mov r1, r8
	ldr r1, [r1, #0x10]
	str r1, [sp, #0x64]
	ldr r6, [r1, #0x14]
	cmp r5, #0
	bne _0809FC4E
	b _0809FD6A
_0809FC4E:
	mov r2, r8
	ldr r0, [r2, #0x40]
	adds r0, r0, r4
	str r0, [r5, #0x40]
	ldr r0, [r2, #0x44]
	add r0, sl
	str r0, [r5, #0x44]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r7, r1
	bl sub_080009E4
	mov r1, sb
	bl sub_0803E86C
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_080009E4
	mov r1, sb
	bl sub_0803E86C
	str r4, [r5, #0x48]
	str r0, [r5, #0x4c]
	mov r0, r8
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r2, [r6]
	ldr r0, [r6, #0x24]
	adds r4, r5, #0
	adds r4, #0x2c
	strb r0, [r4]
	movs r0, #0x5a
	adds r0, r0, r5
	mov ip, r0
	movs r0, #0xf
	ldrh r1, [r6, #0x24]
	ands r1, r0
	lsls r1, r1, #3
	mov r0, ip
	ldrb r3, [r0]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldr r1, _0809FD88 @ =0x082258FC
	ldrb r3, [r4]
	adds r0, r5, #0
	bl sub_0803B924
	ldr r0, _0809FD8C @ =0x0000FFFF
	ands r7, r0
	ldr r1, _0809FD90 @ =0x00000AAA
	adds r0, r7, #0
	bl __divsi3
	lsls r0, r0, #2
	mov r2, sp
	adds r1, r2, r0
	ldrh r1, [r1]
	adds r2, r5, #0
	adds r2, #0x65
	strb r1, [r2]
	adds r1, r5, #0
	adds r1, #0x5b
	movs r4, #2
	strb r4, [r1]
	mov r1, sp
	adds r1, #2
	adds r3, r1, r0
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809FCFC
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
_0809FCFC:
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0809FD12
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
_0809FD12:
	mov r0, r8
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	mov r0, r8
	str r0, [r5, #0x10]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [sp, #0x64]
	adds r0, #0x3c
	ldrb r0, [r0]
	lsrs r1, r0, #2
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x3c
	strb r0, [r1]
	ldr r2, _0809FD94 @ =sub_080A0030
	adds r0, r5, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	add r1, sp, #0x60
	adds r0, r5, #0
	bl sub_08042848
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #0
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0809FD98 @ =sub_0803B9D0
	str r0, [r5, #4]
_0809FD6A:
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809FD7C: .4byte 0x0808FCFC
_0809FD80: .4byte sub_0809FFEC
_0809FD84: .4byte 0x081190E4
_0809FD88: .4byte 0x082258FC
_0809FD8C: .4byte 0x0000FFFF
_0809FD90: .4byte 0x00000AAA
_0809FD94: .4byte sub_080A0030
_0809FD98: .4byte sub_0803B9D0

	thumb_func_start sub_0809FD9C
sub_0809FD9C: @ 0x0809FD9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r2, _0809FE40 @ =sub_08069134
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	mov r0, r8
	ldr r3, [r0, #0x14]
	cmp r5, #0
	beq _0809FE34
	str r4, [r5, #0x40]
	str r6, [r5, #0x44]
	str r7, [r5, #0x48]
	ldr r0, [sp, #0x18]
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x54]
	movs r0, #0x3c
	strb r0, [r5, #0xd]
	movs r0, #4
	strb r0, [r5, #0x18]
	mov r0, r8
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r2, [r3]
	ldr r0, [r3, #0x24]
	adds r4, r5, #0
	adds r4, #0x2c
	strb r0, [r4]
	movs r1, #0x5a
	adds r1, r1, r5
	mov ip, r1
	movs r0, #0xf
	ldrh r1, [r3, #0x24]
	ands r1, r0
	lsls r1, r1, #3
	mov r0, ip
	ldrb r3, [r0]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldr r1, _0809FE44 @ =0x082258FC
	ldrb r3, [r4]
	adds r0, r5, #0
	bl sub_0803B924
	adds r1, r5, #0
	adds r1, #0x65
	ldr r0, [sp, #0x1c]
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x5b
	movs r1, #2
	movs r0, #2
	strb r0, [r2]
	subs r2, #2
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0809FE48 @ =sub_0803B9D0
	str r0, [r5, #4]
_0809FE34:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809FE40: .4byte sub_08069134
_0809FE44: .4byte 0x082258FC
_0809FE48: .4byte sub_0803B9D0

	thumb_func_start sub_0809FE4C
sub_0809FE4C: @ 0x0809FE4C
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

	thumb_func_start sub_0809FE78
sub_0809FE78: @ 0x0809FE78
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x10]
	cmp r5, #0
	beq _0809FEC4
	ldr r0, [r5]
	cmp r0, #0
	beq _0809FEC4
	adds r0, r5, #0
	adds r0, #0x36
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0809FEC4
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #0x20
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [r5, #0x40]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	b _0809FECA
_0809FEC4:
	adds r0, r4, #0
	bl EntityDelete
_0809FECA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0809FED0
sub_0809FED0: @ 0x0809FED0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #0xb
	bl sub_0806D3D8
	ldrb r0, [r4, #0xd]
	bl sub_0806D518
	adds r3, r4, #0
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
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0809FF0A
	adds r0, r4, #0
	bl EntityDelete
_0809FF0A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0809FF10
sub_0809FF10: @ 0x0809FF10
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldr r0, [r5, #0xc]
	cmp r0, r1
	bge _0809FF22
	movs r0, #0x80
	lsls r0, r0, #3
	b _0809FF24
_0809FF22:
	ldr r0, _0809FF40 @ =0xFFFFFC00
_0809FF24:
	str r0, [r4, #0x50]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_0806D35C
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809FF40: .4byte 0xFFFFFC00

	thumb_func_start sub_0809FF44
sub_0809FF44: @ 0x0809FF44
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	ldr r0, [r5, #0x10]
	cmp r0, r1
	bge _0809FF56
	movs r0, #0x80
	lsls r0, r0, #3
	b _0809FF58
_0809FF56:
	ldr r0, _0809FF74 @ =0xFFFFFC00
_0809FF58:
	str r0, [r4, #0x54]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_0806D384
	ldr r0, [r5, #0x10]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809FF74: .4byte 0xFFFFFC00

	thumb_func_start sub_0809FF78
sub_0809FF78: @ 0x0809FF78
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r1, r3, r2
	ldr r0, _0809FF94 @ =0x018FFFFF
	cmp r1, r0
	ble _0809FF98
	subs r1, r3, r2
	adds r0, #1
	cmp r1, r0
	bgt _0809FF98
	movs r0, #0
	b _0809FFE4
	.align 2, 0
_0809FF94: .4byte 0x018FFFFF
_0809FF98:
	adds r1, r3, r2
	ldr r0, _0809FFAC @ =0x006FFFFF
	cmp r1, r0
	ble _0809FFB0
	subs r1, r3, r2
	adds r0, #1
	cmp r1, r0
	bgt _0809FFB0
	movs r0, #2
	b _0809FFE4
	.align 2, 0
_0809FFAC: .4byte 0x006FFFFF
_0809FFB0:
	ldr r0, _0809FFC4 @ =0x006FFFFF
	adds r3, r4, r2
	cmp r3, r0
	ble _0809FFC8
	subs r1, r4, r2
	adds r0, #1
	cmp r1, r0
	bgt _0809FFC8
	movs r0, #1
	b _0809FFE4
	.align 2, 0
_0809FFC4: .4byte 0x006FFFFF
_0809FFC8:
	ldr r0, _0809FFDC @ =0x018FFFFF
	cmp r3, r0
	ble _0809FFE0
	subs r1, r4, r2
	adds r0, #1
	cmp r1, r0
	bgt _0809FFE0
	movs r0, #3
	b _0809FFE4
	.align 2, 0
_0809FFDC: .4byte 0x018FFFFF
_0809FFE0:
	movs r0, #1
	rsbs r0, r0, #0
_0809FFE4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809FFEC
sub_0809FFEC: @ 0x0809FFEC
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl sub_0806D3AC
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _080A0012
	adds r0, r4, #0
	bl EntityDelete
	b _080A0026
_080A0012:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xef
	bls _080A0026
	adds r0, r4, #0
	bl EntityDelete
_080A0026:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A0030
sub_080A0030: @ 0x080A0030
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

	thumb_func_start sub_080A005C
sub_080A005C: @ 0x080A005C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080A0082
	ldr r0, _080A00A4 @ =0x0820AC4C
	ldr r1, _080A00A8 @ =0x085282F4
	adds r2, r4, #0
	adds r2, #0x20
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0803CC70
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080A0082:
	ldr r0, [r4, #0x48]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x48]
	bl sub_080009E4
	cmp r0, #0
	bge _080A0096
	adds r0, #0xf
_080A0096:
	asrs r1, r0, #4
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A00A4: .4byte 0x0820AC4C
_080A00A8: .4byte 0x085282F4

	thumb_func_start sub_080A00AC
sub_080A00AC: @ 0x080A00AC
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

	thumb_func_start EnemyKyomaDemonUpdate
EnemyKyomaDemonUpdate: @ 0x080A00DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, _080A0130 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080A0134 @ =0x0000A094
	adds r7, r0, r1
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _080A010E
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
	beq _080A010E
	adds r0, r5, #0
	bl sub_08021924
_080A010E:
	adds r0, r5, #0
	bl sub_0806AD24
	cmp r0, #0
	beq _080A0138
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _080A01B0
	movs r0, #0x18
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _080A01B0
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
	b _080A01B0
	.align 2, 0
_080A0130: .4byte gEwramData
_080A0134: .4byte 0x0000A094
_080A0138:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080A015A
	cmp r0, #1
	bgt _080A0148
	cmp r0, #0
	beq _080A0152
	b _080A0172
_080A0148:
	cmp r0, #2
	beq _080A0162
	cmp r0, #3
	beq _080A016A
	b _080A0172
_080A0152:
	adds r0, r5, #0
	bl sub_080A02AC
	b _080A0172
_080A015A:
	adds r0, r5, #0
	bl sub_080A04B0
	b _080A0172
_080A0162:
	adds r0, r5, #0
	bl sub_080A0790
	b _080A0172
_080A016A:
	adds r0, r5, #0
	bl sub_0803F17C
	b _080A01B0
_080A0172:
	adds r6, r5, #0
	adds r6, #0x65
	ldrb r4, [r6]
	adds r0, r5, #0
	bl sub_0803F17C
	ldrb r6, [r6]
	cmp r4, r6
	beq _080A018A
	adds r0, r5, #0
	bl sub_0806B1FC
_080A018A:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	beq _080A01A0
	movs r0, #0x18
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _080A01A0
	add r0, sp, #4
	adds r1, r5, #0
	bl sub_080421AC
_080A01A0:
	ldr r0, [r5, #0x40]
	ldr r1, [r7, #4]
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x44]
	ldr r1, [r7, #8]
	adds r0, r0, r1
	str r0, [r5, #0x20]
_080A01B0:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start EnemyKyomaDemonCreate
EnemyKyomaDemonCreate: @ 0x080A01B8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _080A01D8 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _080A01DC @ =0x0000A094
	adds r6, r0, r1
	adds r0, r4, #0
	bl sub_080A0744
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A01E0
	adds r0, r4, #0
	bl EntityDelete
	b _080A029E
	.align 2, 0
_080A01D8: .4byte gEwramData
_080A01DC: .4byte 0x0000A094
_080A01E0:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
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
	beq _080A020C
	movs r0, #3
	strb r0, [r4, #0xa]
	b _080A029E
_080A020C:
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _080A022C
	ldr r2, _080A0224 @ =sub_080A07D0
	ldr r3, _080A0228 @ =sub_080A05B4
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _080A0238
	.align 2, 0
_080A0224: .4byte sub_080A07D0
_080A0228: .4byte sub_080A05B4
_080A022C:
	ldr r2, _080A02A4 @ =sub_080A07D0
	ldr r3, _080A02A8 @ =sub_080A05B4
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_080A0238:
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	adds r1, r4, #0
	adds r1, #0x5c
	movs r2, #0
	movs r0, #0x1d
	strb r0, [r1]
	strb r2, [r4, #0xa]
	movs r5, #1
	strb r5, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	subs r0, #0x20
	ands r0, r1
	strb r0, [r2]
	bl RandomNumberGenerator
	movs r1, #0x1f
	ands r1, r0
	adds r1, #0x20
	strh r1, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r6, #6]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r6, #0xa]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x16]
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080A029E
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xb]
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_080A029E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A02A4: .4byte sub_080A07D0
_080A02A8: .4byte sub_080A05B4

	thumb_func_start sub_080A02AC
sub_080A02AC: @ 0x080A02AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, _080A02D0 @ =gEwramData
	ldr r6, [r0]
	ldr r1, _080A02D4 @ =0x0000A094
	adds r7, r6, r1
	ldrb r2, [r5, #0xb]
	mov r8, r0
	cmp r2, #0
	beq _080A02D8
	cmp r2, #1
	bne _080A02CC
	b _080A0412
_080A02CC:
	b _080A04A0
	.align 2, 0
_080A02D0: .4byte gEwramData
_080A02D4: .4byte 0x0000A094
_080A02D8:
	ldr r2, _080A033C @ =0x00013110
	adds r3, r6, r2
	ldr r0, [r3]
	adds r0, #0x58
	ldrb r0, [r0]
	lsrs r0, r0, #6
	movs r1, #1
	mov sb, r1
	adds r4, r5, #0
	adds r4, #0x58
	bics r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldr r0, [r3]
	ldr r0, [r0, #0x40]
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r0, r0, r2
	str r0, [r5, #0x40]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	str r0, [r5, #0x44]
	movs r0, #0x42
	adds r0, r0, r5
	mov r8, r0
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #6
	ldrsh r0, [r7, r2]
	adds r1, r1, r0
	movs r0, #0x14
	ldrsh r2, [r5, r0]
	adds r0, r2, #0
	subs r0, #0x20
	cmp r1, r0
	blt _080A0330
	adds r0, #0x40
	cmp r1, r0
	ble _080A0340
_080A0330:
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	b _080A04A0
	.align 2, 0
_080A033C: .4byte 0x00013110
_080A0340:
	ldrb r1, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldr r1, _080A036C @ =0x00013110
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A0374
	ldr r1, _080A0370 @ =0x08528364
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F0E4
	mov r2, sb
	strb r2, [r5, #0xb]
	b _080A04A0
	.align 2, 0
_080A036C: .4byte 0x00013110
_080A0370: .4byte 0x08528364
_080A0374:
	ldrh r1, [r5, #0x1a]
	movs r2, #0x1a
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bgt _080A03B2
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	adds r1, #0x40
	strh r1, [r5, #0x1a]
	mov r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #6
	ldrsh r0, [r7, r2]
	adds r1, r1, r0
	movs r0, #0x14
	ldrsh r2, [r5, r0]
	adds r0, r2, #0
	subs r0, #0xa
	cmp r1, r0
	ble _080A03B6
	adds r0, #0x14
	cmp r1, r0
	bge _080A03B6
	mov r1, sb
	strb r1, [r5, #0xa]
	movs r0, #0
	strb r0, [r5, #0xb]
	b _080A04A0
_080A03B2:
	subs r0, r1, #1
	strh r0, [r5, #0x1a]
_080A03B6:
	ldr r0, [r5, #0x40]
	ldr r1, [r7, #4]
	adds r0, r0, r1
	ldr r1, [r5, #0x1c]
	cmp r0, r1
	bne _080A03E6
	ldr r0, [r5, #0x44]
	ldr r1, [r7, #8]
	adds r0, r0, r1
	ldr r1, [r5, #0x20]
	cmp r0, r1
	bne _080A03E6
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A04A0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080A04A0
_080A03E6:
	adds r0, r5, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A04A0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r1, r5, #0
	adds r1, #0x6f
	movs r0, #0x7f
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803F17C
	b _080A04A0
_080A0412:
	ldr r0, _080A0470 @ =0x00013110
	adds r3, r6, r0
	ldr r0, [r3]
	adds r0, #0x58
	ldrb r0, [r0]
	lsrs r0, r0, #6
	bics r2, r0
	adds r4, r5, #0
	adds r4, #0x58
	movs r0, #1
	ands r2, r0
	lsls r2, r2, #6
	ldrb r1, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	ldr r0, [r3]
	ldr r0, [r0, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	str r0, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #6
	ldrsh r0, [r7, r2]
	adds r1, r1, r0
	movs r0, #0x14
	ldrsh r2, [r5, r0]
	adds r0, r2, #0
	subs r0, #0x20
	cmp r1, r0
	blt _080A0468
	adds r0, #0x40
	cmp r1, r0
	ble _080A0474
_080A0468:
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	b _080A047C
	.align 2, 0
_080A0470: .4byte 0x00013110
_080A0474:
	ldrb r1, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
_080A047C:
	strb r0, [r4]
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _080A04AC @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r4, [r0, #0x10]
	movs r0, #2
	ands r4, r0
	cmp r4, #0
	bne _080A04A0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	strb r4, [r5, #0xb]
_080A04A0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A04AC: .4byte 0x00013110

	thumb_func_start sub_080A04B0
sub_080A04B0: @ 0x080A04B0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xb]
	cmp r5, #1
	beq _080A051C
	cmp r5, #1
	bgt _080A04C4
	cmp r5, #0
	beq _080A04CA
	b _080A05AE
_080A04C4:
	cmp r5, #2
	beq _080A0550
	b _080A05AE
_080A04CA:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
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
	strb r5, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x11
	strb r0, [r1]
	ldr r0, [r4, #0x44]
	ldr r1, _080A0518 @ =0xFFF00000
	adds r0, r0, r1
	str r0, [r4, #0x44]
	b _080A05AE
	.align 2, 0
_080A0518: .4byte 0xFFF00000
_080A051C:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #4
	bne _080A052C
	movs r0, #0x85
	bl PlaySong
_080A052C:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	ands r5, r0
	cmp r5, #0
	beq _080A05AE
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r0, #0x28
	strb r0, [r4, #0xd]
	b _080A05AE
_080A0550:
	ldrb r0, [r4, #0xd]
	bl sub_0806D518
	adds r3, r4, #0
	adds r3, #0x58
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	ldrb r2, [r3]
	movs r5, #0x21
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r0, [r4, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A05AE
	strb r1, [r4, #0xa]
	strb r1, [r4, #0xb]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r3]
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	adds r1, #0x40
	strh r1, [r4, #0x1a]
	movs r0, #1
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x1d
	strb r0, [r1]
_080A05AE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A05B4
sub_080A05B4: @ 0x080A05B4
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
	bgt _080A0636
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x72
	bl PlaySong
	ldr r1, _080A063C @ =0x0852836C
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F0E4
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
	movs r0, #0x3c
	strb r0, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
_080A0636:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A063C: .4byte 0x0852836C

	thumb_func_start sub_080A0640
sub_080A0640: @ 0x080A0640
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, _080A071C @ =gEwramData
	ldr r1, [r0]
	ldr r3, _080A0720 @ =0x0000A094
	adds r2, r1, r3
	ldr r3, _080A0724 @ =0x00013110
	adds r0, r1, r3
	ldr r4, [r0]
	ldrb r0, [r7, #0xa]
	cmp r0, #2
	bne _080A072C
	adds r0, r3, #0
	adds r0, r0, r1
	mov ip, r0
	ldr r0, [r0]
	ldr r3, [r0, #0x40]
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	mov r8, r1
	add r0, r8
	adds r0, r3, r0
	asrs r2, r0, #0x10
	movs r0, #0x14
	ldrsh r1, [r7, r0]
	adds r0, r1, #0
	subs r0, #0x20
	cmp r2, r0
	ble _080A0714
	adds r0, #0x40
	cmp r2, r0
	bge _080A0714
	ldr r1, [r4, #0x40]
	str r1, [sp]
	ldr r0, [r4, #0x44]
	str r0, [sp, #4]
	adds r6, r4, #0
	adds r6, #0x5c
	ldrb r1, [r6]
	mov sl, r1
	adds r5, r4, #0
	adds r5, #0x58
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	mov sb, r0
	ldrb r0, [r4, #0xe]
	str r0, [sp, #8]
	ldrb r1, [r4, #0xf]
	str r1, [sp, #0xc]
	mov r1, r8
	adds r0, r3, r1
	str r0, [r4, #0x40]
	mov r3, ip
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	str r0, [r4, #0x44]
	movs r0, #0x1d
	strb r0, [r6]
	ldr r1, _080A071C @ =gEwramData
	ldr r0, [r1]
	ldr r3, _080A0728 @ =0x00013266
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #1
	bne _080A06E6
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
_080A06E6:
	adds r0, r4, #0
	bl sub_08021494
	ldr r0, [sp]
	str r0, [r4, #0x40]
	ldr r1, [sp, #4]
	str r1, [r4, #0x44]
	mov r3, sl
	strb r3, [r6]
	mov r0, sb
	lsls r2, r0, #6
	ldrb r1, [r5]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	mov r1, sp
	ldrb r1, [r1, #8]
	strb r1, [r4, #0xe]
	mov r3, sp
	ldrb r3, [r3, #0xc]
	strb r3, [r4, #0xf]
_080A0714:
	adds r0, r7, #0
	bl sub_0803B9D0
	b _080A0732
	.align 2, 0
_080A071C: .4byte gEwramData
_080A0720: .4byte 0x0000A094
_080A0724: .4byte 0x00013110
_080A0728: .4byte 0x00013266
_080A072C:
	adds r0, r7, #0
	bl sub_0803B9D0
_080A0732:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A0744
sub_080A0744: @ 0x080A0744
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080A0778 @ =0x081CC0A4
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _080A0788
	ldr r0, _080A077C @ =0x0820AF74
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _080A0780 @ =0x08226EAC
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _080A0784 @ =sub_080A0640
	str r0, [r4, #4]
	movs r0, #1
	b _080A078A
	.align 2, 0
_080A0778: .4byte 0x081CC0A4
_080A077C: .4byte 0x0820AF74
_080A0780: .4byte 0x08226EAC
_080A0784: .4byte sub_080A0640
_080A0788:
	movs r0, #0
_080A078A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080A0790
sub_080A0790: @ 0x080A0790
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080A07C8
	ldrb r0, [r4, #0xd]
	bl sub_0806D518
	adds r3, r4, #0
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
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080A07C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080A07C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A07D0
sub_080A07D0: @ 0x080A07D0
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

	thumb_func_start EnemyGladiatorCreate
EnemyGladiatorCreate: @ 0x080A07FC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	bl sub_080A1BEC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A0814
	b _080A0A04
_080A0814:
	adds r0, r5, #0
	movs r1, #0xc
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	adds r0, r5, #0
	bl sub_0806B04C
	movs r6, #0
	movs r3, #0x80
	lsls r3, r3, #9
	mov r8, r3
_080A0834:
	movs r4, #0
	cmp r6, #1
	beq _080A085C
	cmp r6, #1
	bgt _080A0844
	cmp r6, #0
	beq _080A084A
	b _080A0884
_080A0844:
	cmp r6, #2
	beq _080A0870
	b _080A0884
_080A084A:
	ldr r0, _080A0858 @ =sub_080A0DEC
	bl sub_0806DFF8
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x20
	b _080A087C
	.align 2, 0
_080A0858: .4byte sub_080A0DEC
_080A085C:
	ldr r0, _080A086C @ =sub_080A1060
	bl sub_0806DFF8
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x20
	b _080A087C
	.align 2, 0
_080A086C: .4byte sub_080A1060
_080A0870:
	ldr r0, _080A0898 @ =sub_080A13D0
	bl sub_0806DFF8
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x21
_080A087C:
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x2c
	strb r1, [r0]
_080A0884:
	cmp r4, #0
	bne _080A088A
	b _080A0A04
_080A088A:
	cmp r6, #2
	bne _080A089C
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	b _080A08A4
	.align 2, 0
_080A0898: .4byte sub_080A13D0
_080A089C:
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
_080A08A4:
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _080A0908 @ =0x081CC0AC
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	ldr r1, _080A090C @ =0x08229104
	bl sub_0803B924
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r3, #3
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080A0910 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	str r5, [r4, #0x14]
	strb r6, [r4, #0x18]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r7, r2, #0
	cmp r6, #1
	beq _080A0934
	cmp r6, #1
	bgt _080A0914
	cmp r6, #0
	beq _080A091A
	b _080A0982
	.align 2, 0
_080A0908: .4byte 0x081CC0AC
_080A090C: .4byte 0x08229104
_080A0910: .4byte sub_0803B9D0
_080A0914:
	cmp r6, #2
	beq _080A0958
	b _080A0982
_080A091A:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0x24
	strh r0, [r4, #0x10]
	ldr r0, _080A0930 @ =0x0000FFEF
	strh r0, [r4, #0x12]
	b _080A0982
	.align 2, 0
_080A0930: .4byte 0x0000FFEF
_080A0934:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, _080A0954 @ =0x0000FFC8
	strh r0, [r4, #0x10]
	adds r0, #0x27
	strh r0, [r4, #0x12]
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	strh r1, [r4, #0x1c]
	b _080A0982
	.align 2, 0
_080A0954: .4byte 0x0000FFC8
_080A0958:
	adds r0, r4, #0
	movs r1, #0x10
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0x3c
	strh r0, [r4, #0x10]
	ldr r0, _080A09F4 @ =0x0000FFF1
	strh r0, [r4, #0x12]
	ldr r0, _080A09F8 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A0982
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4, #0x1e]
_080A0982:
	adds r0, r4, #0
	bl sub_0803F17C
	cmp r6, #1
	bhi _080A09A6
	ldr r0, _080A09F8 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080A09A6
	adds r0, r4, #0
	ldr r1, _080A09FC @ =sub_080A1CC8
	ldr r2, _080A0A00 @ =sub_080A1CF8
	bl sub_0806D244
_080A09A6:
	cmp r6, #2
	bne _080A0A0C
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	blt _080A0A4C
	adds r2, r4, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r0, [r2]
	movs r4, #0x20
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldrb r0, [r7]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r7]
	ldrb r0, [r2]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r0, r0, #7
	str r0, [sp]
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	mov r1, r8
	mov r2, r8
	bl sub_0803E058
	b _080A0A0C
	.align 2, 0
_080A09F4: .4byte 0x0000FFF1
_080A09F8: .4byte gEwramData
_080A09FC: .4byte sub_080A1CC8
_080A0A00: .4byte sub_080A1CF8
_080A0A04:
	adds r0, r5, #0
	bl EntityDelete
	b _080A0A76
_080A0A0C:
	adds r6, #1
	cmp r6, #2
	bgt _080A0A14
	b _080A0834
_080A0A14:
	ldr r0, _080A0A28 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A0A2C
	movs r0, #2
	b _080A0A74
	.align 2, 0
_080A0A28: .4byte gEwramData
_080A0A2C:
	adds r0, r5, #0
	bl sub_0806D260
	cmp r0, #1
	ble _080A0A5A
	ldr r2, _080A0A44 @ =sub_080A1C50
	ldr r3, _080A0A48 @ =sub_080A1C80
	adds r0, r5, #0
	movs r1, #8
	bl sub_080427B8
	b _080A0A66
	.align 2, 0
_080A0A44: .4byte sub_080A1C50
_080A0A48: .4byte sub_080A1C80
_080A0A4C:
	adds r0, r5, #0
	bl EntityDelete
	adds r0, r4, #0
	bl EntityDelete
	b _080A0A76
_080A0A5A:
	ldr r2, _080A0A84 @ =sub_080A1C50
	ldr r3, _080A0A88 @ =sub_080A1C80
	adds r0, r5, #0
	movs r1, #8
	bl sub_0804277C
_080A0A66:
	adds r0, r5, #0
	bl sub_0806B1FC
	adds r0, r5, #0
	bl sub_0806AF98
	movs r0, #0
_080A0A74:
	strb r0, [r5, #0xa]
_080A0A76:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A0A84: .4byte sub_080A1C50
_080A0A88: .4byte sub_080A1C80
