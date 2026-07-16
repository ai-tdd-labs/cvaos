	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_080211F0
sub_080211F0: @ 0x080211F0
	bx lr
	.align 2, 0

	thumb_func_start sub_080211F4
sub_080211F4: @ 0x080211F4
	ldr r0, _0802120C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08021210 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x10]
	bx lr
	.align 2, 0
_0802120C: .4byte gEwramData
_08021210: .4byte 0x00013110

	thumb_func_start sub_08021214
sub_08021214: @ 0x08021214
	push {lr}
	ldr r2, _0802123C @ =gEwramData
	ldr r2, [r2]
	ldr r3, _08021240 @ =0x00013110
	adds r2, r2, r3
	ldr r3, [r2]
	str r0, [r3, #0x48]
	ldr r0, [r2]
	str r1, [r0, #0x4c]
	ldr r2, [r2]
	ldr r0, [r2, #0x48]
	ldr r1, _08021244 @ =0xFFFFF000
	cmp r0, #0
	bge _08021234
	movs r1, #0x80
	lsls r1, r1, #5
_08021234:
	str r1, [r2, #0x50]
	pop {r0}
	bx r0
	.align 2, 0
_0802123C: .4byte gEwramData
_08021240: .4byte 0x00013110
_08021244: .4byte 0xFFFFF000

	thumb_func_start sub_08021248
sub_08021248: @ 0x08021248
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0802126C @ =gEwramData
	ldr r2, [r0]
	ldr r4, _08021270 @ =0x000131D4
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r0, #3
	bne _08021266
	adds r4, #0xc
	adds r0, r2, r4
	str r3, [r0]
	ldr r3, _08021274 @ =0x000131E4
	adds r0, r2, r3
	str r1, [r0]
_08021266:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802126C: .4byte gEwramData
_08021270: .4byte 0x000131D4
_08021274: .4byte 0x000131E4

	thumb_func_start sub_08021278
sub_08021278: @ 0x08021278
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r6, _080212B8 @ =gEwramData
	ldr r3, [r6]
	ldr r0, _080212BC @ =0x000131B4
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #6
	bhi _080212B0
	adds r1, r0, #0
	lsls r1, r1, #2
	ldr r7, _080212C0 @ =0x00013170
	adds r0, r3, r7
	adds r0, r0, r1
	str r4, [r0]
	ldr r1, _080212C4 @ =0x000131AC
	adds r0, r3, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	strb r5, [r0]
	ldr r1, [r6]
	adds r7, #0x44
	adds r1, r1, r7
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080212B0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080212B8: .4byte gEwramData
_080212BC: .4byte 0x000131B4
_080212C0: .4byte 0x00013170
_080212C4: .4byte 0x000131AC

	thumb_func_start sub_080212C8
sub_080212C8: @ 0x080212C8
	push {lr}
	ldr r0, _080212E4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _080212E8 @ =0x00013168
	adds r1, r0, r2
	subs r2, #0x58
	adds r0, r0, r2
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	beq _080212EC
	movs r0, #0
	b _080212EE
	.align 2, 0
_080212E4: .4byte gEwramData
_080212E8: .4byte 0x00013168
_080212EC:
	ldr r0, [r1, #0x10]
_080212EE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080212F4
sub_080212F4: @ 0x080212F4
	push {lr}
	subs r0, #1
	bl sub_08032AB8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1

	thumb_func_start sub_08021304
sub_08021304: @ 0x08021304
	push {lr}
	ldr r0, _08021330 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08021334 @ =0x00013110
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _0802133C
	ldr r1, [r2, #0x48]
	cmp r1, #0
	bge _0802131E
	rsbs r1, r1, #0
_0802131E:
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bgt _0802133C
	ldr r0, [r2, #0x10]
	ldr r1, _08021338 @ =0x30000120
	ands r0, r1
	b _0802133E
	.align 2, 0
_08021330: .4byte gEwramData
_08021334: .4byte 0x00013110
_08021338: .4byte 0x30000120
_0802133C:
	movs r0, #1
_0802133E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08021344
sub_08021344: @ 0x08021344
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	bl sub_0804C3C8
	ldr r1, _08021380 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08021384 @ =0x00013269
	adds r0, r0, r2
	strb r4, [r0]
	ldr r0, [r1]
	adds r2, #1
	adds r0, r0, r2
	strb r5, [r0]
	ldr r0, [r1]
	ldr r1, _08021388 @ =0x0001326B
	adds r0, r0, r1
	strb r6, [r0]
	bl sub_080213BC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08021380: .4byte gEwramData
_08021384: .4byte 0x00013269
_08021388: .4byte 0x0001326B

	thumb_func_start sub_0802138C
sub_0802138C: @ 0x0802138C
	ldr r1, _0802139C @ =gEwramData
	ldr r1, [r1]
	ldr r2, _080213A0 @ =0x00013110
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, #0x40
	strh r0, [r1]
	bx lr
	.align 2, 0
_0802139C: .4byte gEwramData
_080213A0: .4byte 0x00013110

	thumb_func_start sub_080213A4
sub_080213A4: @ 0x080213A4
	ldr r1, _080213B4 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _080213B8 @ =0x00013110
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, #0x44
	strh r0, [r1]
	bx lr
	.align 2, 0
_080213B4: .4byte gEwramData
_080213B8: .4byte 0x00013110

	thumb_func_start sub_080213BC
sub_080213BC: @ 0x080213BC
	push {lr}
	ldr r0, _080213E4 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _080213E8 @ =0x0001327E
	adds r0, r1, r2
	ldrh r2, [r0]
	ldr r3, _080213EC @ =0x0001327A
	adds r0, r1, r3
	strh r2, [r0]
	ldr r2, _080213F0 @ =0x00013280
	adds r0, r1, r2
	ldrh r0, [r0]
	adds r3, #2
	adds r1, r1, r3
	strh r0, [r1]
	movs r0, #7
	bl sub_08021E50
	pop {r0}
	bx r0
	.align 2, 0
_080213E4: .4byte gEwramData
_080213E8: .4byte 0x0001327E
_080213EC: .4byte 0x0001327A
_080213F0: .4byte 0x00013280

	thumb_func_start sub_080213F4
sub_080213F4: @ 0x080213F4
	push {lr}
	ldr r0, _08021424 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _08021428 @ =0x0000042C
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0802141E
	ldr r1, _0802142C @ =0x00013220
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0802141E
	ldrh r0, [r0, #0x34]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc6
	bls _08021430
_0802141E:
	movs r0, #0
	b _08021432
	.align 2, 0
_08021424: .4byte gEwramData
_08021428: .4byte 0x0000042C
_0802142C: .4byte 0x00013220
_08021430:
	movs r0, #1
_08021432:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08021438
sub_08021438: @ 0x08021438
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	adds r6, r3, #0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	ldr r0, _08021468 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0802146C @ =0x000131B8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08021464
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, r3
	bne _08021470
_08021464:
	movs r0, #0
	b _0802148A
	.align 2, 0
_08021468: .4byte gEwramData
_0802146C: .4byte 0x000131B8
_08021470:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #1
	adds r3, r5, #0
	bl sub_0803F2C8
	movs r0, #0xff
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x10]
	ldr r1, _08021490 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	movs r0, #1
_0802148A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08021490: .4byte 0xFFDFFFFF

	thumb_func_start sub_08021494
sub_08021494: @ 0x08021494
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, [r6, #0x40]
	ldr r5, [r6, #0x44]
	adds r1, r6, #0
	adds r1, #0x42
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, #4
	adds r0, r6, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r0, r6, #0
	bl sub_0803B9D0
	str r4, [r6, #0x40]
	str r5, [r6, #0x44]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080214D0
sub_080214D0: @ 0x080214D0
	push {lr}
	bl sub_0804C3C8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080214DC
sub_080214DC: @ 0x080214DC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r6, #0x58
	ldrb r3, [r6]
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	movs r5, #1
	adds r2, r5, #0
	eors r2, r1
	lsls r2, r2, #6
	movs r4, #0x41
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r6]
	bl sub_0803B9D0
	ldrb r1, [r6]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1f
	eors r5, r0
	lsls r5, r5, #6
	ands r4, r1
	orrs r4, r5
	strb r4, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08021518
sub_08021518: @ 0x08021518
	ldr r1, _08021528 @ =gEwramData
	ldr r1, [r1]
	ldr r2, _0802152C @ =0x00013110
	adds r1, r1, r2
	ldr r1, [r1]
	strb r0, [r1, #0x1e]
	bx lr
	.align 2, 0
_08021528: .4byte gEwramData
_0802152C: .4byte 0x00013110

	thumb_func_start sub_08021530
sub_08021530: @ 0x08021530
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	cmp r0, #3
	bne _08021560
	ldr r2, _08021554 @ =gEwramData
	ldr r0, [r2]
	ldr r1, _08021558 @ =0x000131EE
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _0802155C @ =0x080E1320
	ldrh r0, [r0, #6]
	adds r4, r1, #0
	muls r4, r0, r4
	lsrs r4, r4, #4
	b _08021624
	.align 2, 0
_08021554: .4byte gEwramData
_08021558: .4byte 0x000131EE
_0802155C: .4byte 0x080E1320
_08021560:
	cmp r0, #5
	bne _080215DC
	ldr r4, _080215A8 @ =gEwramData
	ldr r2, [r4]
	ldr r1, _080215AC @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080215B8
	bl sub_0802D244
	ldr r4, [r4]
	ldr r2, _080215B0 @ =0x000131F2
	adds r1, r4, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	ldrh r5, [r0, #0xa]
	adds r0, r1, #0
	muls r0, r5, r0
	movs r1, #0xa
	bl __divsi3
	ldr r1, _080215B4 @ =0x000131F6
	adds r4, r4, r1
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x12
	adds r0, r0, r1
	lsls r1, r5, #2
	adds r0, r0, r1
	lsls r5, r5, #1
	adds r4, r0, r5
	b _080215C8
	.align 2, 0
_080215A8: .4byte gEwramData
_080215AC: .4byte 0x000004CC
_080215B0: .4byte 0x000131F2
_080215B4: .4byte 0x000131F6
_080215B8:
	ldr r3, _080215D0 @ =0x000133EE
	adds r0, r2, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r0, _080215D4 @ =0x080E1320
	ldrh r0, [r0, #6]
	adds r4, r1, #0
	muls r4, r0, r4
_080215C8:
	lsrs r4, r4, #4
	ldr r2, _080215D8 @ =gEwramData
	b _08021624
	.align 2, 0
_080215D0: .4byte 0x000133EE
_080215D4: .4byte 0x080E1320
_080215D8: .4byte gEwramData
_080215DC:
	cmp r0, #6
	bne _08021608
	ldr r3, _080215FC @ =gEwramData
	ldr r0, [r3]
	ldr r2, _08021600 @ =0x000131C2
	adds r1, r0, r2
	ldrh r1, [r1]
	lsrs r2, r1, #3
	ldr r4, _08021604 @ =0x000131F6
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	muls r0, r2, r0
	adds r4, r1, r0
	b _08021622
	.align 2, 0
_080215FC: .4byte gEwramData
_08021600: .4byte 0x000131C2
_08021604: .4byte 0x000131F6
_08021608:
	ldr r3, _08021648 @ =gEwramData
	ldr r0, [r3]
	ldr r1, _0802164C @ =0x000131F2
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r1, _08021650 @ =0x080E1320
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r2, #0
	muls r4, r0, r4
	lsrs r4, r4, #4
_08021622:
	adds r2, r3, #0
_08021624:
	ldr r0, [r2]
	adds r0, #0xa1
	ldrb r1, [r0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _0802163C
	lsls r0, r4, #3
	movs r1, #0xa
	bl __udivsi3
	adds r4, r0, #0
_0802163C:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08021648: .4byte gEwramData
_0802164C: .4byte 0x000131F2
_08021650: .4byte 0x080E1320

	thumb_func_start sub_08021654
sub_08021654: @ 0x08021654
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	movs r0, #0
	mov sb, r0
	ldr r1, _080216D8 @ =gEwramData
	mov r8, r1
	ldr r0, [r1]
	ldr r2, _080216DC @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _08021676
	b _080218E0
_08021676:
	ldrh r0, [r7, #2]
	bl sub_0806E268
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _080216C0
	mov r3, r8
	ldr r0, [r3]
	ldr r4, _080216DC @ =0x00013110
	adds r0, r0, r4
	ldr r0, [r0]
	adds r0, #0x42
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r0, #8
	bl sub_0802D5EC
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_0801CFB0
	adds r4, r0, #0
	movs r0, #4
	bl sub_0802D5EC
	adds r4, r4, r0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0806E664
_080216C0:
	mov r3, r8
	ldr r2, [r3]
	adds r0, r2, #0
	adds r0, #0xa1
	ldrb r1, [r0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _080216E0
	ldrh r0, [r7]
	lsls r3, r0, #2
	b _08021704
	.align 2, 0
_080216D8: .4byte gEwramData
_080216DC: .4byte 0x00013110
_080216E0:
	ldr r4, _08021784 @ =0x000131FE
	adds r0, r2, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x11
	asrs r0, r0, #0x12
	adds r1, r1, r0
	ldr r3, _08021788 @ =0x0001327E
	adds r0, r2, r3
	ldrh r0, [r0]
	lsrs r0, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrh r2, [r7]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsrs r1, r1, #0x11
	adds r3, r0, r1
_08021704:
	ldr r2, _0802178C @ =gEwramData
	ldr r1, [r2]
	ldr r4, _08021790 @ =0x000131F0
	adds r0, r1, r4
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #1
	subs r3, r3, r0
	asrs r4, r3, #1
	ldr r0, _08021794 @ =0x000131FA
	adds r1, r1, r0
	ldrh r1, [r1]
	cmp r1, #0
	beq _0802172A
	ldrh r0, [r7, #2]
	ands r0, r1
	cmp r0, #0
	beq _0802172A
	asrs r4, r3, #2
_0802172A:
	ldr r2, [r2]
	ldr r1, _08021798 @ =0x00013270
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0802173C
	lsls r4, r4, #1
_0802173C:
	cmp r4, #0
	bgt _08021742
	movs r4, #1
_08021742:
	ldr r3, _0802179C @ =0x00013260
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08021772
	ldr r1, _080217A0 @ =0x0001326C
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x17
	bne _0802176C
	bl RandomNumberGenerator
	movs r1, #0xf
	ands r1, r0
	cmp r1, #3
	bhi _0802176C
	movs r2, #1
	mov sb, r2
_0802176C:
	mov r3, sb
	cmp r3, #0
	beq _080217A8
_08021772:
	ldr r0, _080217A4 @ =0x0000013B
	bl PlaySong
	movs r0, #0
	movs r1, #0
	bl sub_08042A7C
	b _080218E0
	.align 2, 0
_08021784: .4byte 0x000131FE
_08021788: .4byte 0x0001327E
_0802178C: .4byte gEwramData
_08021790: .4byte 0x000131F0
_08021794: .4byte 0x000131FA
_08021798: .4byte 0x00013270
_0802179C: .4byte 0x00013260
_080217A0: .4byte 0x0001326C
_080217A4: .4byte 0x0000013B
_080217A8:
	ldr r6, _080218EC @ =gEwramData
	ldr r2, [r6]
	ldr r0, _080218F0 @ =0x0001327A
	adds r1, r2, r0
	ldrh r0, [r1]
	subs r0, r0, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080217E8
	mov r3, sb
	strh r3, [r1]
	ldr r0, _080218F4 @ =0x0000042C
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	movs r0, #7
	bl sub_08021E50
	movs r0, #0
	bl sub_0800C5A8
	ldr r1, [r6]
	ldr r2, _080218F8 @ =0x0000A074
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_080217E8:
	ldr r1, [r6]
	ldr r3, _080218FC @ =0x000131D6
	adds r0, r1, r3
	strh r4, [r0]
	ldr r0, _08021900 @ =0x000131D8
	adds r2, r1, r0
	ldr r0, [r7, #8]
	str r0, [r2]
	adds r3, #6
	adds r2, r1, r3
	ldr r0, [r7, #0xc]
	str r0, [r2]
	ldrh r2, [r7, #6]
	ldr r0, _08021904 @ =0x000131D4
	mov r8, r0
	adds r0, r1, r0
	strh r2, [r0]
	ldr r5, _08021908 @ =0x00013260
	adds r1, r1, r5
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08021822
	lsls r0, r4, #2
	adds r0, r0, r4
	bl sub_08044F80
_08021822:
	ldr r0, [r6]
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08021838
	lsls r0, r4, #1
	bl sub_08022028
_08021838:
	ldr r1, [r6]
	mov r3, r8
	adds r2, r1, r3
	ldrh r0, [r2]
	cmp r0, #0
	bne _08021854
	ldr r3, _0802190C @ =0x0001327E
	adds r0, r1, r3
	ldrh r0, [r0]
	lsrs r0, r0, #2
	cmp r4, r0
	ble _08021854
	movs r0, #1
	strh r0, [r2]
_08021854:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08042A7C
	movs r0, #0xb3
	bl PlaySong
	ldr r0, _080218EC @ =gEwramData
	ldr r2, [r0]
	ldr r4, _08021910 @ =0x00013266
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080218E0
	ldr r1, _08021914 @ =0x00013276
	adds r0, r2, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bne _080218E0
	ldrh r1, [r7, #2]
	movs r0, #0xe0
	lsls r0, r0, #1
	ands r0, r1
	lsrs r6, r0, #6
	subs r4, #0x6c
	adds r0, r2, r4
	ldrh r0, [r0]
	lsrs r0, r0, #6
	ands r0, r6
	cmp r0, r6
	beq _080218E0
	ldr r0, _08021918 @ =0x00013270
	adds r2, r2, r0
	ldrh r1, [r2]
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r2]
	movs r4, #2
	ldr r0, _0802191C @ =0x080E1338
	adds r5, r0, #0
	adds r5, #8
_080218A8:
	adds r0, r6, #0
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080218D8
	movs r0, #0xcc
	lsls r0, r0, #1
	bl PlaySong
	adds r0, r4, #0
	bl sub_080220F8
	ldr r0, _080218EC @ =gEwramData
	ldr r1, [r0]
	lsls r0, r4, #1
	ldr r2, _08021920 @ =0x00013272
	adds r1, r1, r2
	adds r1, r1, r0
	ldrh r0, [r5]
	strh r0, [r1]
	ldrh r0, [r5, #2]
	bl PlaySong
_080218D8:
	subs r5, #4
	subs r4, #1
	cmp r4, #0
	bge _080218A8
_080218E0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080218EC: .4byte gEwramData
_080218F0: .4byte 0x0001327A
_080218F4: .4byte 0x0000042C
_080218F8: .4byte 0x0000A074
_080218FC: .4byte 0x000131D6
_08021900: .4byte 0x000131D8
_08021904: .4byte 0x000131D4
_08021908: .4byte 0x00013260
_0802190C: .4byte 0x0001327E
_08021910: .4byte 0x00013266
_08021914: .4byte 0x00013276
_08021918: .4byte 0x00013270
_0802191C: .4byte 0x080E1338
_08021920: .4byte 0x00013272

	thumb_func_start sub_08021924
sub_08021924: @ 0x08021924
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, _0802195C @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08021960 @ =0x000131A4
	adds r6, r1, r2
	movs r3, #0
	subs r2, #0x10
	adds r1, r1, r2
_0802193A:
	ldr r2, [r1]
	cmp r2, r5
	beq _08021964
	cmp r4, #0
	bge _0802194A
	cmp r2, #0
	bne _0802194A
	adds r4, r3, #0
_0802194A:
	adds r1, #4
	adds r3, #1
	cmp r3, #3
	ble _0802193A
	cmp r4, #0
	bge _08021970
	movs r0, #0
	b _0802198A
	.align 2, 0
_0802195C: .4byte gEwramData
_08021960: .4byte 0x000131A4
_08021964:
	lsls r1, r3, #1
	adds r1, r1, r6
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	b _08021988
_08021970:
	ldr r0, [r0]
	lsls r1, r4, #2
	ldr r2, _08021990 @ =0x00013194
	adds r0, r0, r2
	adds r0, r0, r1
	str r5, [r0]
	lsls r0, r4, #1
	adds r0, r0, r6
	movs r1, #1
	strb r1, [r0, #1]
	movs r1, #0
	strb r1, [r0]
_08021988:
	movs r0, #1
_0802198A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08021990: .4byte 0x00013194

	thumb_func_start sub_08021994
sub_08021994: @ 0x08021994
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	ldr r0, _08021A7C @ =gEwramData
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #0x1e]
	movs r2, #0xf3
	ands r2, r1
	ldr r7, _08021A80 @ =0x00013276
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080219B8
	b _08021B1C
_080219B8:
	movs r6, #1
	adds r1, r2, #0
	ands r1, r6
	movs r0, #2
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x10
	ands r0, r2
	asrs r0, r0, #4
	adds r1, r1, r0
	movs r0, #0x20
	ands r0, r2
	asrs r0, r0, #5
	adds r1, r1, r0
	movs r0, #0x40
	ands r0, r2
	asrs r0, r0, #6
	adds r1, r1, r0
	lsrs r0, r2, #7
	adds r5, r1, r0
	adds r0, r5, #0
	ands r0, r6
	cmp r0, #0
	beq _08021A4C
	mov r2, r8
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x44]
	movs r2, #4
	movs r3, #6
	bl sub_08045CEC
	adds r4, r0, #0
	cmp r4, #0
	beq _08021A36
	movs r0, #0x10
	bl sub_0802D5EC
	adds r2, r4, #0
	adds r2, #0x42
	ldrh r1, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	movs r0, #8
	bl sub_0802D5EC
	adds r2, r4, #0
	adds r2, #0x46
	ldrh r1, [r2]
	subs r1, #4
	adds r1, r1, r0
	strh r1, [r2]
	strb r6, [r4, #0xf]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_0802D5EC
	ldr r3, _08021A84 @ =0xFFFF8000
	adds r0, r0, r3
	str r0, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #0x54]
_08021A36:
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r7
	ldrh r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08021A4C
	movs r0, #0xb0
	bl PlaySong
_08021A4C:
	ldr r0, _08021A7C @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08021A80 @ =0x00013276
	adds r3, r2, r0
	ldrh r0, [r3]
	subs r0, r0, r5
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08021B1C
	movs r0, #0
	strh r0, [r3]
	ldr r1, _08021A88 @ =0x00013270
	adds r2, r2, r1
	ldrh r1, [r2]
	ldr r0, _08021A8C @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xaf
	bl PlaySong
	movs r7, #0
	b _08021B00
	.align 2, 0
_08021A7C: .4byte gEwramData
_08021A80: .4byte 0x00013276
_08021A84: .4byte 0xFFFF8000
_08021A88: .4byte 0x00013270
_08021A8C: .4byte 0x0000FFFB
_08021A90:
	movs r0, #0x10
	bl sub_0802D5EC
	adds r2, r6, #0
	adds r2, #0x42
	ldrh r1, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	movs r0, #0x10
	bl sub_0802D5EC
	adds r2, r6, #0
	adds r2, #0x46
	ldrh r1, [r2]
	subs r1, #0x10
	adds r1, r1, r0
	strh r1, [r2]
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	adds r5, r6, #0
	adds r5, #0x58
	lsls r0, r0, #6
	ldrb r1, [r5]
	movs r3, #0x41
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r4, #0
	bl sub_0802D5EC
	adds r2, r0, r4
	str r2, [r6, #0x48]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08021AEA
	rsbs r0, r2, #0
	str r0, [r6, #0x48]
_08021AEA:
	movs r0, #0x80
	lsls r0, r0, #7
	bl sub_0802D5EC
	ldr r5, _08021BBC @ =0xFFFE0000
	adds r0, r0, r5
	str r0, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x54]
	adds r7, #1
_08021B00:
	cmp r7, #3
	bgt _08021B1C
	mov r1, r8
	ldr r0, [r1, #0x40]
	ldr r1, [r1, #0x44]
	movs r2, #1
	ands r2, r7
	adds r2, #0x40
	movs r3, #6
	bl sub_08045DC8
	adds r6, r0, #0
	cmp r6, #0
	bne _08021A90
_08021B1C:
	movs r7, #1
	ldr r4, _08021BC0 @ =gEwramData
_08021B20:
	ldr r2, [r4]
	lsls r0, r7, #1
	ldr r3, _08021BC4 @ =0x00013272
	adds r1, r2, r3
	adds r1, r1, r0
	ldrh r3, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	beq _08021B4C
	subs r0, r3, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08021B4C
	ldr r0, _08021BC8 @ =0x00013270
	adds r2, r2, r0
	movs r1, #1
	lsls r1, r7
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
_08021B4C:
	subs r7, #1
	cmp r7, #0
	bge _08021B20
	ldr r4, _08021BC0 @ =gEwramData
	ldr r2, [r4]
	ldr r3, _08021BC8 @ =0x00013270
	adds r0, r2, r3
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08021B88
	ldr r5, _08021BCC @ =0x000131F2
	adds r1, r2, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
	ldr r0, _08021BD0 @ =0x000131F4
	adds r1, r2, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
	adds r5, #4
	adds r1, r2, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
_08021B88:
	ldr r2, [r4]
	adds r0, r2, r3
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08021BDC
	ldr r1, _08021BD4 @ =0x00013274
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08021C12
	ldr r3, _08021BD8 @ =0x00013280
	adds r0, r2, r3
	ldrh r0, [r0]
	lsrs r5, r0, #7
	cmp r5, #0
	bne _08021BB2
	movs r5, #1
_08021BB2:
	adds r0, r5, #0
	bl sub_08022060
	b _08021C12
	.align 2, 0
_08021BBC: .4byte 0xFFFE0000
_08021BC0: .4byte gEwramData
_08021BC4: .4byte 0x00013272
_08021BC8: .4byte 0x00013270
_08021BCC: .4byte 0x000131F2
_08021BD0: .4byte 0x000131F4
_08021BD4: .4byte 0x00013274
_08021BD8: .4byte 0x00013280
_08021BDC:
	ldr r5, _08021BFC @ =0x0001326D
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0x29
	beq _08021C00
	mov r0, r8
	ldrh r1, [r0, #0x22]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08021C12
	movs r0, #1
	bl sub_08022028
	b _08021C12
	.align 2, 0
_08021BFC: .4byte 0x0001326D
_08021C00:
	mov r2, r8
	ldrh r1, [r2, #0x22]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08021C12
	movs r0, #1
	bl sub_08022028
_08021C12:
	ldr r0, _08021C38 @ =gEwramData
	ldr r2, [r0]
	ldr r3, _08021C3C @ =0x0001326D
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0x2c
	bne _08021C2C
	ldr r5, _08021C40 @ =0x00013280
	adds r0, r2, r5
	ldrh r1, [r0]
	adds r3, #0xf
	adds r0, r2, r3
	strh r1, [r0]
_08021C2C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021C38: .4byte gEwramData
_08021C3C: .4byte 0x0001326D
_08021C40: .4byte 0x00013280

	thumb_func_start sub_08021C44
sub_08021C44: @ 0x08021C44
	push {r4, r5, r6, lr}
	ldr r5, _08021C94 @ =gEwramData
	ldr r0, [r5]
	ldr r1, _08021C98 @ =0x000131F2
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_08021F64
	ldr r1, [r5]
	ldr r4, _08021C9C @ =0x000131EE
	adds r2, r1, r4
	movs r6, #0
	strh r0, [r2]
	ldr r0, _08021CA0 @ =0x000131F4
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_08021F84
	ldr r2, [r5]
	ldr r3, _08021CA4 @ =0x000131F0
	adds r1, r2, r3
	strh r0, [r1]
	adds r2, r2, r4
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _08021C80
	strh r6, [r2]
_08021C80:
	ldr r0, [r5]
	adds r1, r0, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08021C8E
	strh r6, [r1]
_08021C8E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08021C94: .4byte gEwramData
_08021C98: .4byte 0x000131F2
_08021C9C: .4byte 0x000131EE
_08021CA0: .4byte 0x000131F4
_08021CA4: .4byte 0x000131F0

	thumb_func_start sub_08021CA8
sub_08021CA8: @ 0x08021CA8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08021CB8
	cmp r0, #1
	beq _08021CFA
	b _08021DA8
_08021CB8:
	ldr r0, _08021D34 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08021D38 @ =0x0820ED60
	ldr r3, _08021D3C @ =0x084F10BC
	ldrh r0, [r4, #0x18]
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	ldr r0, _08021D40 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r0, [r4, #0x18]
	adds r0, #0x59
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	subs r1, #9
	movs r0, #0xd
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	strb r0, [r4, #0xa]
	movs r0, #0x80
	lsls r0, r0, #0x11
	str r0, [r4, #0x48]
_08021CFA:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	ble _08021D06
	ldr r1, _08021D44 @ =0xFFF80000
	adds r0, r0, r1
	str r0, [r4, #0x48]
_08021D06:
	ldr r1, [r4, #0x48]
	ldrb r2, [r4, #0xd]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08021D14
	rsbs r1, r1, #0
_08021D14:
	adds r0, r2, #1
	strb r0, [r4, #0xd]
	ldr r0, _08021D48 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08021D4C @ =0x00013110
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x42
	movs r3, #0
	ldrsh r2, [r0, r3]
	cmp r1, #0
	bge _08021D50
	rsbs r0, r1, #0
	asrs r0, r0, #0x10
	subs r1, r2, r0
	b _08021D54
	.align 2, 0
_08021D34: .4byte 0x081C15F4
_08021D38: .4byte 0x0820ED60
_08021D3C: .4byte 0x084F10BC
_08021D40: .4byte sub_0803B9D0
_08021D44: .4byte 0xFFF80000
_08021D48: .4byte gEwramData
_08021D4C: .4byte 0x00013110
_08021D50:
	asrs r0, r1, #0x10
	adds r1, r2, r0
_08021D54:
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	bl sub_0801CFB0
	subs r0, #4
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08021D94 @ =gEwramData
	ldr r1, [r0]
	ldrh r0, [r4, #0x18]
	lsls r0, r0, #1
	ldr r2, _08021D98 @ =0x00013272
	adds r1, r1, r2
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _08021DA2
	cmp r0, #0x1d
	bgt _08021D9C
	movs r0, #1
	strb r0, [r4, #0xf]
	b _08021DA8
	.align 2, 0
_08021D94: .4byte gEwramData
_08021D98: .4byte 0x00013272
_08021D9C:
	movs r0, #0
	strb r0, [r4, #0xf]
	b _08021DA8
_08021DA2:
	adds r0, r4, #0
	bl EntityDelete
_08021DA8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08021DB0
sub_08021DB0: @ 0x08021DB0
	ldr r0, _08021DBC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08021DC0 @ =0x000131BC
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08021DBC: .4byte gEwramData
_08021DC0: .4byte 0x000131BC

	thumb_func_start sub_08021DC4
sub_08021DC4: @ 0x08021DC4
	push {r4, r5, r6, lr}
	ldr r0, _08021DF0 @ =gEwramData
	ldr r1, [r0]
	ldr r2, _08021DF4 @ =0x000131A4
	adds r0, r1, r2
	movs r6, #0
	movs r5, #0
	adds r2, r0, #0
	ldr r0, _08021DF8 @ =0x00013194
	adds r1, r1, r0
	adds r4, r2, #0
_08021DDA:
	ldr r0, [r1]
	cmp r0, #0
	beq _08021DFE
	ldrb r3, [r2, #1]
	ldrb r0, [r2]
	cmp r0, r3
	bne _08021DFC
	str r5, [r1]
	strb r5, [r2]
	strb r5, [r2, #1]
	b _08021DFE
	.align 2, 0
_08021DF0: .4byte gEwramData
_08021DF4: .4byte 0x000131A4
_08021DF8: .4byte 0x00013194
_08021DFC:
	strb r3, [r4]
_08021DFE:
	adds r2, #2
	adds r1, #4
	adds r4, #2
	adds r6, #1
	cmp r6, #3
	ble _08021DDA
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08021E10
sub_08021E10: @ 0x08021E10
	ldr r1, _08021E24 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _08021E28 @ =0x0001325C
	adds r2, r2, r1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_08021E24: .4byte gEwramData
_08021E28: .4byte 0x0001325C

	thumb_func_start sub_08021E2C
sub_08021E2C: @ 0x08021E2C
	bx lr
	.align 2, 0

	thumb_func_start sub_08021E30
sub_08021E30: @ 0x08021E30
	bx lr
	.align 2, 0

	thumb_func_start sub_08021E34
sub_08021E34: @ 0x08021E34
	bx lr
	.align 2, 0

	thumb_func_start sub_08021E38
sub_08021E38: @ 0x08021E38
	adds r1, r0, #0
	ldr r0, _08021E48 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08021E4C @ =0x00013260
	adds r0, r0, r2
	ldr r0, [r0]
	ands r0, r1
	bx lr
	.align 2, 0
_08021E48: .4byte gEwramData
_08021E4C: .4byte 0x00013260

	thumb_func_start sub_08021E50
sub_08021E50: @ 0x08021E50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #1
	mov sb, r0
	ldr r2, _08021EA8 @ =gEwramData
	mov r8, r2
	ldr r7, _08021EAC @ =0x00013272
	mov ip, r7
	mov sl, r4
	ldr r6, _08021EB0 @ =0x00013270
_08021E6E:
	mov r3, sb
	lsls r3, r4
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #0
	beq _08021E92
	mov r0, r8
	ldr r1, [r0]
	lsls r2, r4, #1
	mov r7, ip
	adds r0, r1, r7
	adds r0, r0, r2
	mov r2, sl
	strh r2, [r0]
	adds r1, r1, r6
	ldrh r0, [r1]
	bics r0, r3
	strh r0, [r1]
_08021E92:
	adds r4, #1
	cmp r4, #2
	ble _08021E6E
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021EA8: .4byte gEwramData
_08021EAC: .4byte 0x00013272
_08021EB0: .4byte 0x00013270

	thumb_func_start sub_08021EB4
sub_08021EB4: @ 0x08021EB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r4, #0
	movs r0, #1
	mov sb, r0
	ldr r7, _08021F0C @ =gEwramData
	mov r8, r7
	ldr r0, _08021F10 @ =0x00013272
	mov ip, r0
	ldr r7, _08021F14 @ =0x00013270
	mov sl, r7
_08021ED6:
	mov r3, sb
	lsls r3, r4
	adds r0, r6, #0
	ands r0, r3
	cmp r0, #0
	beq _08021EF8
	mov r0, r8
	ldr r1, [r0]
	lsls r2, r4, #1
	mov r7, ip
	adds r0, r1, r7
	adds r0, r0, r2
	strh r5, [r0]
	add r1, sl
	ldrh r0, [r1]
	orrs r3, r0
	strh r3, [r1]
_08021EF8:
	adds r4, #1
	cmp r4, #2
	ble _08021ED6
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021F0C: .4byte gEwramData
_08021F10: .4byte 0x00013272
_08021F14: .4byte 0x00013270

	thumb_func_start sub_08021F18
sub_08021F18: @ 0x08021F18
	push {lr}
	ldr r0, _08021F3C @ =gEwramData
	ldr r0, [r0]
	movs r1, #0x99
	lsls r1, r1, #9
	adds r2, r0, r1
	ldr r3, _08021F40 @ =0x00013282
	adds r1, r0, r3
	movs r3, #3
_08021F2A:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _08021F2A
	pop {r0}
	bx r0
	.align 2, 0
_08021F3C: .4byte gEwramData
_08021F40: .4byte 0x00013282

	thumb_func_start sub_08021F44
sub_08021F44: @ 0x08021F44
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r2, _08021F60 @ =gEwramData
	lsrs r0, r0, #0xf
	movs r3, #0x99
	lsls r3, r3, #9
	adds r0, r0, r3
	ldr r2, [r2]
	adds r2, r2, r0
	lsrs r1, r1, #0x10
	ldrh r0, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	bx lr
	.align 2, 0
_08021F60: .4byte gEwramData

	thumb_func_start sub_08021F64
sub_08021F64: @ 0x08021F64
	ldr r1, _08021F7C @ =gEwramData
	ldr r1, [r1]
	ldr r2, _08021F80 @ =0x000131FC
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08021F7C: .4byte gEwramData
_08021F80: .4byte 0x000131FC

	thumb_func_start sub_08021F84
sub_08021F84: @ 0x08021F84
	lsls r0, r0, #0x10
	ldr r1, _08021F9C @ =gEwramData
	ldr r1, [r1]
	ldr r2, _08021FA0 @ =0x000131FE
	adds r1, r1, r2
	asrs r0, r0, #0x11
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08021F9C: .4byte gEwramData
_08021FA0: .4byte 0x000131FE

	thumb_func_start sub_08021FA4
sub_08021FA4: @ 0x08021FA4
	push {r4, lr}
	ldr r1, _08021FDC @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08021FE0 @ =0x000131F2
	adds r3, r0, r2
	movs r4, #0x99
	lsls r4, r4, #9
	adds r2, r0, r4
	adds r4, r1, #0
	movs r1, #3
_08021FB8:
	ldrh r0, [r2]
	strh r0, [r3]
	adds r2, #2
	adds r3, #2
	subs r1, #1
	cmp r1, #0
	bge _08021FB8
	ldr r0, [r4]
	ldr r2, _08021FE4 @ =0x00013208
	adds r1, r0, r2
	ldrh r1, [r1]
	ldr r4, _08021FE8 @ =0x000131FA
	adds r0, r0, r4
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08021FDC: .4byte gEwramData
_08021FE0: .4byte 0x000131F2
_08021FE4: .4byte 0x00013208
_08021FE8: .4byte 0x000131FA

	thumb_func_start sub_08021FEC
sub_08021FEC: @ 0x08021FEC
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0802201C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08022020 @ =0x0001327A
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, r0, r3
	strh r0, [r2]
	movs r4, #0
	ldrsh r0, [r2, r4]
	ldr r4, _08022024 @ =0x0001327E
	adds r1, r1, r4
	ldrh r1, [r1]
	cmp r0, r1
	ble _0802200E
	strh r1, [r2]
_0802200E:
	adds r0, r3, #0
	movs r1, #1
	bl sub_08042A7C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802201C: .4byte gEwramData
_08022020: .4byte 0x0001327A
_08022024: .4byte 0x0001327E

	thumb_func_start sub_08022028
sub_08022028: @ 0x08022028
	push {lr}
	adds r3, r0, #0
	cmp r3, #0
	bne _08022032
	movs r3, #1
_08022032:
	ldr r0, _08022054 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08022058 @ =0x0001327C
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, r0, r3
	strh r0, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r3, _0802205C @ =0x00013280
	adds r1, r1, r3
	ldrh r1, [r1]
	cmp r0, r1
	ble _08022050
	strh r1, [r2]
_08022050:
	pop {r0}
	bx r0
	.align 2, 0
_08022054: .4byte gEwramData
_08022058: .4byte 0x0001327C
_0802205C: .4byte 0x00013280

	thumb_func_start sub_08022060
sub_08022060: @ 0x08022060
	push {lr}
	ldr r1, _08022080 @ =gEwramData
	ldr r1, [r1]
	ldr r3, _08022084 @ =0x0001327C
	adds r2, r1, r3
	ldrh r1, [r2]
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0802207A
	movs r0, #0
	strh r0, [r2]
_0802207A:
	pop {r0}
	bx r0
	.align 2, 0
_08022080: .4byte gEwramData
_08022084: .4byte 0x0001327C

	thumb_func_start sub_08022088
sub_08022088: @ 0x08022088
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _080220A0 @ =gEwramData
	ldr r0, [r0]
	ldr r4, _080220A4 @ =0x0001316C
	adds r2, r0, r4
	ldr r0, [r2]
	cmp r0, #0
	beq _080220A8
	movs r0, #0
	b _080220AE
	.align 2, 0
_080220A0: .4byte gEwramData
_080220A4: .4byte 0x0001316C
_080220A8:
	str r3, [r2]
	str r1, [r3, #0x10]
	movs r0, #1
_080220AE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080220B4
sub_080220B4: @ 0x080220B4
	ldr r0, _080220C4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080220C8 @ =0x0001316C
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_080220C4: .4byte gEwramData
_080220C8: .4byte 0x0001316C

	thumb_func_start sub_080220CC
sub_080220CC: @ 0x080220CC
	push {lr}
	ldr r0, _080220E0 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080220E4 @ =0x0001316C
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080220E8
	movs r0, #0
	b _080220EC
	.align 2, 0
_080220E0: .4byte gEwramData
_080220E4: .4byte 0x0001316C
_080220E8:
	ldr r0, [r0, #0x10]
	ldr r0, [r0]
_080220EC:
	pop {r1}
	bx r1

	thumb_func_start sub_080220F0
sub_080220F0: @ 0x080220F0
	movs r0, #0
	bx lr

	thumb_func_start sub_080220F4
sub_080220F4: @ 0x080220F4
	movs r0, #0
	bx lr

	thumb_func_start sub_080220F8
sub_080220F8: @ 0x080220F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08022128 @ =gEwramData
	ldr r0, [r0]
	lsls r1, r4, #1
	ldr r2, _0802212C @ =0x00013272
	adds r0, r0, r2
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08022120
	ldr r2, _08022130 @ =sub_08021CA8
	movs r0, #0x16
	movs r1, #0x19
	bl EntityCreateInRange
	cmp r0, #0
	beq _08022120
	strh r4, [r0, #0x18]
_08022120:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022128: .4byte gEwramData
_0802212C: .4byte 0x00013272
_08022130: .4byte sub_08021CA8

	thumb_func_start sub_08022134
sub_08022134: @ 0x08022134
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_08021518
	ldr r0, _08022154 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08022158 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	strh r4, [r0, #0x34]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022154: .4byte gEwramData
_08022158: .4byte 0x00013110

	thumb_func_start sub_0802215C
sub_0802215C: @ 0x0802215C
	push {lr}
	movs r0, #1
	bl sub_08021518
	ldr r0, _0802217C @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08022180 @ =0x00013110
	adds r1, r1, r0
	ldr r2, [r1]
	movs r3, #0
	movs r0, #0
	strh r0, [r2, #0x34]
	ldr r0, [r1]
	strb r3, [r0, #0xf]
	pop {r0}
	bx r0
	.align 2, 0
_0802217C: .4byte gEwramData
_08022180: .4byte 0x00013110

	thumb_func_start sub_08022184
sub_08022184: @ 0x08022184
	push {lr}
	ldr r0, _080221A8 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080221AC @ =0x000131B8
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0xe0
	lsls r2, r2, #3
	orrs r0, r2
	str r0, [r1]
	bl sub_080235C8
	bl sub_0802DFF0
	bl sub_080321C4
	pop {r0}
	bx r0
	.align 2, 0
_080221A8: .4byte gEwramData
_080221AC: .4byte 0x000131B8

	thumb_func_start sub_080221B0
sub_080221B0: @ 0x080221B0
	ldr r1, _080221C0 @ =gEwramData
	ldr r2, [r1]
	ldr r1, _080221C4 @ =0x0001325C
	adds r2, r2, r1
	ldr r1, [r2]
	bics r1, r0
	str r1, [r2]
	bx lr
	.align 2, 0
_080221C0: .4byte gEwramData
_080221C4: .4byte 0x0001325C

	thumb_func_start sub_080221C8
sub_080221C8: @ 0x080221C8
	bx lr
	.align 2, 0

	thumb_func_start sub_080221CC
sub_080221CC: @ 0x080221CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x14]
	mov r8, r0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080221E8
	cmp r0, #1
	bne _080221E6
	b _08022388
_080221E6:
	b _080223EC
_080221E8:
	mov sb, r8
	mov r4, r8
	adds r4, #0x28
	ldrb r0, [r4]
	bl sub_08023368
	adds r6, r0, #0
	ldr r7, _08022238 @ =gEwramData
	ldr r1, [r7]
	ldr r2, _0802223C @ =0x00013268
	adds r0, r1, r2
	ldrb r0, [r0]
	strb r0, [r5, #0x18]
	ldrb r0, [r4]
	cmp r0, #0
	bne _08022248
	ldr r3, _08022240 @ =0x000131C0
	adds r0, r1, r3
	ldrb r0, [r0]
	ldrb r2, [r6, #0x12]
	cmp r0, r2
	beq _0802222E
	adds r3, #8
	adds r0, r1, r3
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _0802222E
	bl sub_0803B980
	ldr r0, [r7]
	ldr r1, _08022244 @ =0x000131C8
	adds r0, r0, r1
	str r4, [r0]
_0802222E:
	movs r4, #1
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0xe
	b _08022276
	.align 2, 0
_08022238: .4byte gEwramData
_0802223C: .4byte 0x00013268
_08022240: .4byte 0x000131C0
_08022244: .4byte 0x000131C8
_08022248:
	ldr r2, _080222E0 @ =0x000131C1
	adds r0, r1, r2
	ldrb r0, [r0]
	ldrb r3, [r6, #0x12]
	cmp r0, r3
	beq _0802226E
	adds r2, #0xb
	adds r0, r1, r2
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _0802226E
	bl sub_0803B980
	ldr r0, [r7]
	ldr r3, _080222E4 @ =0x000131CC
	adds r0, r0, r3
	str r4, [r0]
_0802226E:
	movs r4, #2
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0xf
_08022276:
	strb r0, [r1]
	ldr r1, _080222E8 @ =0x084F10C0
	ldrb r0, [r6, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r7, r0, #0
	ldr r0, _080222EC @ =0x082098B8
	ldrb r1, [r6, #0x15]
	movs r2, #1
	adds r3, r4, #0
	bl sub_0803C7B4
	ldr r1, _080222F0 @ =0x084F117C
	ldrb r0, [r6, #0x13]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_0803B924
	ldrb r1, [r6, #0x14]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r3, _080222F4 @ =gEwramData
	ldr r0, [r3]
	mov r2, sb
	adds r2, #0x28
	ldr r1, _080222F8 @ =0x000131C0
	adds r0, r0, r1
	ldrb r1, [r2]
	adds r0, r0, r1
	ldrb r1, [r6, #0x12]
	strb r1, [r0]
	ldrb r0, [r2]
	cmp r0, #0
	bne _08022300
	ldr r0, [r3]
	ldr r2, _080222FC @ =0x000131C8
	adds r0, r0, r2
	str r7, [r0]
	movs r1, #3
	movs r4, #0
	b _0802230C
	.align 2, 0
_080222E0: .4byte 0x000131C1
_080222E4: .4byte 0x000131CC
_080222E8: .4byte 0x084F10C0
_080222EC: .4byte 0x082098B8
_080222F0: .4byte 0x084F117C
_080222F4: .4byte gEwramData
_080222F8: .4byte 0x000131C0
_080222FC: .4byte 0x000131C8
_08022300:
	ldr r0, [r3]
	ldr r3, _080223BC @ =0x000131CC
	adds r0, r0, r3
	str r7, [r0]
	movs r1, #5
	movs r4, #1
_0802230C:
	ldr r2, _080223C0 @ =sub_0802346C
	adds r0, r5, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r6, #0x17]
	adds r0, r4, #0
	bl sub_08042A54
	ldr r4, [r5, #0x14]
	adds r4, #0x28
	ldrb r0, [r4]
	bl sub_08023368
	ldrh r0, [r0, #0x18]
	bl PlaySong
	ldrb r0, [r4]
	cmp r0, #0
	bne _08022364
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08022364
	ldr r4, _080223C4 @ =0x084F1264
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	bl PlaySong
_08022364:
	ldr r0, _080223C8 @ =sub_0803B9D0
	str r0, [r5, #4]
	movs r0, #0
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08022388
	adds r1, r5, #0
	adds r1, #0x4e
	movs r0, #0xd
	strh r0, [r1]
_08022388:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	mov r3, r8
	ldr r2, [r3, #0x10]
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	bne _080223D4
	ldr r0, _080223CC @ =gEwramData
	ldr r1, [r0]
	mov r0, r8
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _080223D0 @ =0x0001311C
	adds r1, r1, r3
	adds r1, r1, r0
	str r2, [r1]
	adds r0, r5, #0
	bl EntityDelete
	b _080224A6
	.align 2, 0
_080223BC: .4byte 0x000131CC
_080223C0: .4byte sub_0802346C
_080223C4: .4byte 0x084F1264
_080223C8: .4byte sub_0803B9D0
_080223CC: .4byte gEwramData
_080223D0: .4byte 0x0001311C
_080223D4:
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r5, #0x40]
	adds r1, #0x46
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
_080223EC:
	mov r2, r8
	ldrb r0, [r2, #0xf]
	strb r0, [r5, #0xf]
	adds r4, r5, #0
	adds r4, #0x65
	ldrb r6, [r4]
	adds r0, r5, #0
	bl sub_0803F17C
	cmp r0, #3
	beq _0802248A
	ldr r2, _08022430 @ =gEwramData
	ldr r3, [r2]
	ldr r1, _08022434 @ =0x000004CC
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0802243C
	ldr r0, _08022438 @ =0x00013268
	adds r1, r3, r0
	ldrb r0, [r5, #0x18]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0802243C
	adds r0, r5, #0
	adds r0, #0x72
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
	b _080224A6
	.align 2, 0
_08022430: .4byte gEwramData
_08022434: .4byte 0x000004CC
_08022438: .4byte 0x00013268
_0802243C:
	ldrb r1, [r4]
	cmp r6, r1
	beq _080224A6
	adds r0, r5, #0
	adds r0, #0x64
	ldr r1, [r2]
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r2, _08022478 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	ldrb r0, [r4]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r1, r0, r1
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _0802247C
	ldr r1, [r1, #8]
	adds r0, r5, #0
	bl sub_08042848
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	b _080224A6
	.align 2, 0
_08022478: .4byte 0x0001017C
_0802247C:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	b _080224A6
_0802248A:
	ldr r0, _080224B4 @ =gEwramData
	ldr r1, [r0]
	mov r0, r8
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _080224B8 @ =0x0001311C
	adds r1, r1, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	adds r0, r5, #0
	bl EntityDelete
_080224A6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080224B4: .4byte gEwramData
_080224B8: .4byte 0x0001311C

	thumb_func_start sub_080224BC
sub_080224BC: @ 0x080224BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov sb, r0
	mov r5, sb
	adds r5, #0x28
	ldrb r0, [r5]
	bl sub_08023368
	str r0, [sp, #8]
	ldrb r4, [r6, #0xa]
	cmp r4, #0
	beq _080224EE
	movs r1, #0x58
	adds r1, r1, r6
	mov sl, r1
	cmp r4, #1
	bne _080224EC
	b _0802274C
_080224EC:
	b _080227F0
_080224EE:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08022518
	ldr r0, _08022510 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r5]
	lsls r0, r0, #2
	ldr r2, _08022514 @ =0x0001311C
	adds r1, r1, r2
	adds r1, r1, r0
	str r4, [r1]
	b _080228B8
	.align 2, 0
_08022510: .4byte gEwramData
_08022514: .4byte 0x0001311C
_08022518:
	adds r4, r6, #0
	adds r4, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r3, [r6, #0x14]
	str r3, [sp, #0xc]
	adds r5, r3, #0
	adds r5, #0x28
	ldrb r0, [r5]
	bl sub_08023368
	adds r7, r0, #0
	ldr r0, _08022590 @ =gEwramData
	mov r8, r0
	ldr r1, [r0]
	ldr r2, _08022594 @ =0x00013268
	adds r0, r1, r2
	ldrb r0, [r0]
	strb r0, [r6, #0x18]
	ldrb r0, [r5]
	mov sl, r4
	cmp r0, #0
	bne _080225A0
	ldr r3, _08022598 @ =0x000131C0
	adds r0, r1, r3
	ldrb r0, [r0]
	ldrb r2, [r7, #0x12]
	cmp r0, r2
	beq _08022586
	adds r3, #8
	adds r0, r1, r3
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _08022586
	bl sub_0803B980
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _0802259C @ =0x000131C8
	adds r0, r0, r2
	str r4, [r0]
_08022586:
	movs r4, #1
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xe
	b _080225D0
	.align 2, 0
_08022590: .4byte gEwramData
_08022594: .4byte 0x00013268
_08022598: .4byte 0x000131C0
_0802259C: .4byte 0x000131C8
_080225A0:
	ldr r3, _0802263C @ =0x000131C1
	adds r0, r1, r3
	ldrb r0, [r0]
	ldrb r2, [r7, #0x12]
	cmp r0, r2
	beq _080225C8
	adds r3, #0xb
	adds r0, r1, r3
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _080225C8
	bl sub_0803B980
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _08022640 @ =0x000131CC
	adds r0, r0, r2
	str r4, [r0]
_080225C8:
	movs r4, #2
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xf
_080225D0:
	strb r0, [r1]
	ldr r1, _08022644 @ =0x084F10C0
	ldrb r0, [r7, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r5, r0, #0
	ldr r0, _08022648 @ =0x082098B8
	ldrb r1, [r7, #0x15]
	movs r2, #1
	adds r3, r4, #0
	bl sub_0803C7B4
	ldr r1, _0802264C @ =0x084F117C
	ldrb r0, [r7, #0x13]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0803B924
	ldrb r1, [r7, #0x14]
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r3, _08022650 @ =gEwramData
	ldr r0, [r3]
	ldr r2, [sp, #0xc]
	adds r2, #0x28
	ldr r1, _08022654 @ =0x000131C0
	adds r0, r0, r1
	ldrb r1, [r2]
	adds r0, r0, r1
	ldrb r1, [r7, #0x12]
	strb r1, [r0]
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802265C
	ldr r0, [r3]
	ldr r2, _08022658 @ =0x000131C8
	adds r0, r0, r2
	str r5, [r0]
	movs r1, #3
	movs r4, #0
	b _08022668
	.align 2, 0
_0802263C: .4byte 0x000131C1
_08022640: .4byte 0x000131CC
_08022644: .4byte 0x084F10C0
_08022648: .4byte 0x082098B8
_0802264C: .4byte 0x084F117C
_08022650: .4byte gEwramData
_08022654: .4byte 0x000131C0
_08022658: .4byte 0x000131C8
_0802265C:
	ldr r0, [r3]
	ldr r3, _080226E0 @ =0x000131CC
	adds r0, r0, r3
	str r5, [r0]
	movs r1, #5
	movs r4, #1
_08022668:
	ldr r2, _080226E4 @ =sub_0802346C
	adds r0, r6, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r7, #0x17]
	adds r0, r4, #0
	bl sub_08042A54
	ldr r4, [r6, #0x14]
	adds r4, #0x28
	ldrb r0, [r4]
	bl sub_08023368
	ldrh r0, [r0, #0x18]
	bl PlaySong
	ldrb r0, [r4]
	cmp r0, #0
	bne _080226C0
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080226C0
	ldr r4, _080226E8 @ =0x084F1264
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	bl PlaySong
_080226C0:
	ldr r0, _080226EC @ =sub_0803B9D0
	str r0, [r6, #4]
	ldr r0, _080226F0 @ =0xFFFFD000
	str r0, [r6, #0x1c]
	ldr r1, [sp, #8]
	ldrb r0, [r1, #0x16]
	cmp r0, #0
	bne _080226F4
	movs r0, #0x10
	strb r0, [r6, #0xb]
	movs r0, #5
	strb r0, [r6, #0xc]
	movs r0, #0x98
	lsls r0, r0, #4
	b _08022700
	.align 2, 0
_080226E0: .4byte 0x000131CC
_080226E4: .4byte sub_0802346C
_080226E8: .4byte 0x084F1264
_080226EC: .4byte sub_0803B9D0
_080226F0: .4byte 0xFFFFD000
_080226F4:
	movs r0, #0xc
	strb r0, [r6, #0xb]
	movs r0, #4
	strb r0, [r6, #0xc]
	movs r0, #0xcc
	lsls r0, r0, #4
_08022700:
	str r0, [r6, #0x20]
	ldr r1, _08022780 @ =0x080E13B8
	ldr r2, [sp, #8]
	ldrb r0, [r2, #0x16]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r6, #0x19]
	mov r3, sl
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08022726
	ldr r0, [r6, #0x1c]
	rsbs r0, r0, #0
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0x20]
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
_08022726:
	adds r2, r6, #0
	adds r2, #0x4e
	ldr r3, _08022784 @ =0x0000FFE7
	strh r3, [r2]
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08022742
	adds r0, r3, #0
	adds r0, #0xc
	strh r0, [r2]
_08022742:
	movs r0, #0
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_0802274C:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	mov r3, sb
	ldr r2, [r3, #0x10]
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	bne _08022790
	ldr r0, _08022788 @ =gEwramData
	ldr r1, [r0]
	mov r0, sb
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _0802278C @ =0x0001311C
	adds r1, r1, r3
	adds r1, r1, r0
	str r2, [r1]
	mov r1, sl
	ldrb r0, [r1]
	b _080228B0
	.align 2, 0
_08022780: .4byte 0x080E13B8
_08022784: .4byte 0x0000FFE7
_08022788: .4byte gEwramData
_0802278C: .4byte 0x0001311C
_08022790:
	mov r1, sb
	adds r1, #0x46
	adds r0, r6, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r6, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xd]
	ldrb r1, [r6, #0xc]
	bl Div
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080227C0
	movs r2, #3
_080227C0:
	mov r3, sl
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080227D2
	lsls r0, r2, #0x10
	rsbs r0, r0, #0
	lsrs r2, r0, #0x10
_080227D2:
	mov r0, sb
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, r0, r2
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrb r0, [r6, #0xd]
	ldrb r1, [r6, #0xb]
	cmp r0, r1
	bhs _080227F0
	ldr r0, [r6, #0x1c]
	ldr r1, [r6, #0x20]
	adds r0, r0, r1
	str r0, [r6, #0x1c]
_080227F0:
	mov r2, sb
	ldrb r0, [r2, #0xf]
	strb r0, [r6, #0xf]
	adds r4, r6, #0
	adds r4, #0x65
	ldrb r5, [r4]
	adds r0, r6, #0
	bl sub_0803F17C
	ldr r0, _0802282C @ =gEwramData
	ldr r2, [r0]
	ldr r3, _08022830 @ =0x000004CC
	adds r0, r2, r3
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08022838
	ldr r0, _08022834 @ =0x00013268
	adds r1, r2, r0
	ldrb r0, [r6, #0x18]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08022838
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #2
	b _08022890
	.align 2, 0
_0802282C: .4byte gEwramData
_08022830: .4byte 0x000004CC
_08022834: .4byte 0x00013268
_08022838:
	ldrb r0, [r6, #0xd]
	ldrb r1, [r6, #0x19]
	cmp r0, r1
	beq _08022896
	ldrb r2, [r4]
	cmp r5, r2
	beq _080228C8
	adds r2, r6, #0
	adds r2, #0x64
	ldr r0, _08022880 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r3, _08022884 @ =0x0001017C
	adds r1, r1, r3
	adds r1, r1, r0
	ldr r1, [r1]
	ldrb r0, [r4]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r4, r0, r1
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08022888
	ldr r1, [r4, #8]
	adds r0, r6, #0
	bl sub_08042848
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	b _080228C8
	.align 2, 0
_08022880: .4byte gEwramData
_08022884: .4byte 0x0001017C
_08022888:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
_08022890:
	orrs r0, r1
	strb r0, [r2]
	b _080228C8
_08022896:
	ldr r0, _080228C0 @ =gEwramData
	ldr r1, [r0]
	mov r0, sb
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r2, _080228C4 @ =0x0001311C
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	mov r3, sl
	ldrb r0, [r3]
_080228B0:
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080228B8:
	adds r0, r6, #0
	bl EntityDelete
	b _080228E6
	.align 2, 0
_080228C0: .4byte gEwramData
_080228C4: .4byte 0x0001311C
_080228C8:
	ldr r0, [r6, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #9
	mov r3, sl
	ldrb r1, [r3]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_080228E6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080228F8
sub_080228F8: @ 0x080228F8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _08022992
	cmp r0, #1
	bgt _0802290E
	cmp r0, #0
	beq _08022916
	b _08022A28
_0802290E:
	cmp r0, #2
	bne _08022914
	b _08022A14
_08022914:
	b _08022A28
_08022916:
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0802295C @ =gEwramData
	ldr r2, [r1]
	ldr r3, _08022960 @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	bl sub_08002028
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0802296A
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08022964
	movs r0, #1
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _08022966
	b _08022A40
	.align 2, 0
_0802295C: .4byte gEwramData
_08022960: .4byte 0x0000A094
_08022964:
	movs r1, #0
_08022966:
	cmp r1, #0
	bne _08022A40
_0802296A:
	ldr r0, _080229FC @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08022A00 @ =0x0820ED60
	adds r0, r5, #0
	movs r3, #8
	bl sub_0803B924
	ldr r0, _08022A04 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x35
	strb r0, [r1]
	movs r0, #1
	strb r0, [r5, #0xa]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
_08022992:
	movs r4, #0x80
	lsls r4, r4, #0xb
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D430
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D460
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _08022A08 @ =gEwramData
	ldr r2, [r1]
	ldr r3, _08022A0C @ =0x0000A094
	adds r2, r2, r3
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	adds r1, #2
	bl sub_080020A0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08022A28
	ldr r0, _08022A10 @ =0x0000014F
	bl PlaySong
	ldr r0, [r5, #0x4c]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #7
	bl sub_0802D5EC
	ldr r1, [r5, #0x48]
	adds r1, r1, r0
	str r1, [r5, #0x48]
	movs r0, #2
	strb r0, [r5, #0xa]
	b _08022A28
	.align 2, 0
_080229FC: .4byte 0x081C15F4
_08022A00: .4byte 0x0820ED60
_08022A04: .4byte sub_0803B9D0
_08022A08: .4byte gEwramData
_08022A0C: .4byte 0x0000A094
_08022A10: .4byte 0x0000014F
_08022A14:
	movs r4, #0x80
	lsls r4, r4, #0xb
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D430
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D460
_08022A28:
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xc0
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_08068AD4
	cmp r0, #0
	bne _08022A4C
_08022A40:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08022A4C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08022A54
sub_08022A54: @ 0x08022A54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov r8, r0
	mov r4, r8
	adds r4, #0x28
	ldrb r0, [r4]
	bl sub_08023368
	adds r1, r0, #0
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _08022A7C
	cmp r0, #1
	bne _08022A7A
	b _08022C9E
_08022A7A:
	b _08022DAC
_08022A7C:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08022A88
	ldrh r0, [r1, #0x18]
	bl PlaySong
_08022A88:
	ldr r1, [r6, #0x14]
	mov sb, r1
	mov r4, sb
	adds r4, #0x28
	ldrb r0, [r4]
	bl sub_08023368
	adds r5, r0, #0
	ldr r7, _08022ADC @ =gEwramData
	ldr r1, [r7]
	ldr r2, _08022AE0 @ =0x00013268
	adds r0, r1, r2
	ldrb r0, [r0]
	strb r0, [r6, #0x18]
	ldrb r0, [r4]
	cmp r0, #0
	bne _08022AEC
	ldr r3, _08022AE4 @ =0x000131C0
	adds r0, r1, r3
	ldrb r0, [r0]
	ldrb r2, [r5, #0x12]
	cmp r0, r2
	beq _08022AD0
	adds r3, #8
	adds r0, r1, r3
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _08022AD0
	bl sub_0803B980
	ldr r0, [r7]
	ldr r1, _08022AE8 @ =0x000131C8
	adds r0, r0, r1
	str r4, [r0]
_08022AD0:
	movs r4, #1
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xe
	b _08022B1A
	.align 2, 0
_08022ADC: .4byte gEwramData
_08022AE0: .4byte 0x00013268
_08022AE4: .4byte 0x000131C0
_08022AE8: .4byte 0x000131C8
_08022AEC:
	ldr r2, _08022B84 @ =0x000131C1
	adds r0, r1, r2
	ldrb r0, [r0]
	ldrb r3, [r5, #0x12]
	cmp r0, r3
	beq _08022B12
	adds r2, #0xb
	adds r0, r1, r2
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _08022B12
	bl sub_0803B980
	ldr r0, [r7]
	ldr r3, _08022B88 @ =0x000131CC
	adds r0, r0, r3
	str r4, [r0]
_08022B12:
	movs r4, #2
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xf
_08022B1A:
	strb r0, [r1]
	ldr r1, _08022B8C @ =0x084F10C0
	ldrb r0, [r5, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r7, r0, #0
	ldr r0, _08022B90 @ =0x082098B8
	ldrb r1, [r5, #0x15]
	movs r2, #1
	adds r3, r4, #0
	bl sub_0803C7B4
	ldr r1, _08022B94 @ =0x084F117C
	ldrb r0, [r5, #0x13]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_0803B924
	ldrb r1, [r5, #0x14]
	adds r0, r6, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r3, _08022B98 @ =gEwramData
	ldr r0, [r3]
	mov r2, sb
	adds r2, #0x28
	ldr r1, _08022B9C @ =0x000131C0
	adds r0, r0, r1
	ldrb r1, [r2]
	adds r0, r0, r1
	ldrb r1, [r5, #0x12]
	strb r1, [r0]
	ldrb r0, [r2]
	cmp r0, #0
	bne _08022BA4
	ldr r0, [r3]
	ldr r2, _08022BA0 @ =0x000131C8
	adds r0, r0, r2
	str r7, [r0]
	movs r1, #3
	movs r4, #0
	b _08022BB0
	.align 2, 0
_08022B84: .4byte 0x000131C1
_08022B88: .4byte 0x000131CC
_08022B8C: .4byte 0x084F10C0
_08022B90: .4byte 0x082098B8
_08022B94: .4byte 0x084F117C
_08022B98: .4byte gEwramData
_08022B9C: .4byte 0x000131C0
_08022BA0: .4byte 0x000131C8
_08022BA4:
	ldr r0, [r3]
	ldr r3, _08022C24 @ =0x000131CC
	adds r0, r0, r3
	str r7, [r0]
	movs r1, #5
	movs r4, #1
_08022BB0:
	ldr r2, _08022C28 @ =sub_080234B0
	adds r0, r6, #0
	movs r3, #0
	bl sub_0804277C
	adds r0, r6, #0
	ldr r1, _08022C2C @ =0x0810FCF8
	bl sub_08042884
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r5, #0x17]
	adds r0, r4, #0
	bl sub_08042A54
	ldr r0, _08022C30 @ =sub_08023508
	str r0, [r6, #4]
	movs r2, #0x80
	lsls r2, r2, #0xc
	str r2, [r6, #0x50]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08022C02
	ldr r0, [r6, #0x1c]
	rsbs r0, r0, #0
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0x20]
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	rsbs r0, r2, #0
	str r0, [r6, #0x50]
_08022C02:
	ldr r0, [r6, #0x48]
	ldr r1, [r6, #0x50]
	adds r0, r0, r1
	str r0, [r6, #0x48]
	mov r0, r8
	ldr r2, [r0, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r2, r0
	cmp r2, #0
	beq _08022C34
	adds r1, r6, #0
	adds r1, #0x4e
	movs r0, #0xc
	strh r0, [r1]
	adds r4, r1, #0
	b _08022C3C
	.align 2, 0
_08022C24: .4byte 0x000131CC
_08022C28: .4byte sub_080234B0
_08022C2C: .4byte 0x0810FCF8
_08022C30: .4byte sub_08023508
_08022C34:
	adds r0, r6, #0
	adds r0, #0x4e
	strh r2, [r0]
	adds r4, r0, #0
_08022C3C:
	ldr r2, _08022CD4 @ =sub_080228F8
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _08022C94
	movs r1, #0
	ldrsh r3, [r4, r1]
	subs r3, #0x1a
	mov r1, r8
	movs r2, #8
	bl sub_08031EA4
	bl RandomNumberGenerator
	ldr r4, _08022CD8 @ =0x00007FFF
	ands r0, r4
	ldr r1, _08022CDC @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r5, #0x48]
	bl RandomNumberGenerator
	ands r0, r4
	ldr r1, _08022CE0 @ =0xFFFEC000
	subs r1, r1, r0
	str r1, [r5, #0x4c]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08022C88
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
_08022C88:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
_08022C94:
	movs r0, #0
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_08022C9E:
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	mov r3, r8
	ldr r2, [r3, #0x10]
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	bne _08022CEC
	ldr r0, _08022CE4 @ =gEwramData
	ldr r1, [r0]
	mov r0, r8
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _08022CE8 @ =0x0001311C
	adds r1, r1, r3
	adds r1, r1, r0
	str r2, [r1]
	adds r0, r6, #0
	bl EntityDelete
	b _08022DD8
	.align 2, 0
_08022CD4: .4byte sub_080228F8
_08022CD8: .4byte 0x00007FFF
_08022CDC: .4byte 0xFFFF0000
_08022CE0: .4byte 0xFFFEC000
_08022CE4: .4byte gEwramData
_08022CE8: .4byte 0x0001311C
_08022CEC:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	bne _08022D0C
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _08022D0C
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
_08022D0C:
	ldrb r0, [r6, #0xd]
	cmp r0, #3
	bls _08022D1A
	ldr r0, [r6, #0x48]
	ldr r1, [r6, #0x50]
	adds r0, r0, r1
	str r0, [r6, #0x48]
_08022D1A:
	mov r1, r8
	ldr r0, [r1, #0x40]
	ldr r1, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	mov r2, r8
	ldr r0, [r2, #0x44]
	ldr r1, [r6, #0x4c]
	adds r0, r0, r1
	ldr r3, _08022D64 @ =0xFFE40000
	adds r0, r0, r3
	str r0, [r6, #0x44]
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	bne _08022DA0
	adds r0, r6, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r6, #0x50]
	cmp r0, #0
	ble _08022D68
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	bl sub_080020D8
	b _08022D76
	.align 2, 0
_08022D64: .4byte 0xFFE40000
_08022D68:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	bl sub_0800210C
_08022D76:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08022DAC
	lsls r1, r0, #0x10
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	ldr r1, [r6, #0x44]
	movs r2, #7
	movs r3, #8
	bl sub_08045CEC
	movs r0, #1
	str r0, [r6, #0x1c]
	movs r0, #0xa7
	lsls r0, r0, #1
	bl PlaySong
	b _08022DAC
_08022DA0:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_08022DAC:
	mov r1, r8
	ldrb r0, [r1, #0xf]
	strb r0, [r6, #0xf]
	adds r0, r6, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _08022DD8
	ldr r0, _08022DE4 @ =gEwramData
	ldr r1, [r0]
	mov r0, r8
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r2, _08022DE8 @ =0x0001311C
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	adds r0, r6, #0
	bl EntityDelete
_08022DD8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022DE4: .4byte gEwramData
_08022DE8: .4byte 0x0001311C

	thumb_func_start sub_08022DEC
sub_08022DEC: @ 0x08022DEC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x14]
	mov r8, r0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08022E08
	cmp r0, #1
	bne _08022E06
	b _08022FA4
_08022E06:
	b _08022FC8
_08022E08:
	mov sb, r8
	mov r4, r8
	adds r4, #0x28
	ldrb r0, [r4]
	bl sub_08023368
	adds r6, r0, #0
	ldr r7, _08022E58 @ =gEwramData
	ldr r1, [r7]
	ldr r2, _08022E5C @ =0x00013268
	adds r0, r1, r2
	ldrb r0, [r0]
	strb r0, [r5, #0x18]
	ldrb r0, [r4]
	cmp r0, #0
	bne _08022E64
	subs r2, #0xa8
	adds r0, r1, r2
	ldrb r0, [r0]
	ldrb r2, [r6, #0x12]
	cmp r0, r2
	beq _08022E4E
	ldr r2, _08022E60 @ =0x000131C8
	adds r0, r1, r2
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _08022E4E
	bl sub_0803B980
	ldr r0, [r7]
	ldr r1, _08022E60 @ =0x000131C8
	adds r0, r0, r1
	str r4, [r0]
_08022E4E:
	movs r4, #1
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0xe
	b _08022E92
	.align 2, 0
_08022E58: .4byte gEwramData
_08022E5C: .4byte 0x00013268
_08022E60: .4byte 0x000131C8
_08022E64:
	ldr r2, _08022EFC @ =0x000131C1
	adds r0, r1, r2
	ldrb r0, [r0]
	ldrb r2, [r6, #0x12]
	cmp r0, r2
	beq _08022E8A
	ldr r2, _08022F00 @ =0x000131CC
	adds r0, r1, r2
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _08022E8A
	bl sub_0803B980
	ldr r0, [r7]
	ldr r1, _08022F00 @ =0x000131CC
	adds r0, r0, r1
	str r4, [r0]
_08022E8A:
	movs r4, #2
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0xf
_08022E92:
	strb r0, [r1]
	ldr r1, _08022F04 @ =0x084F10C0
	ldrb r0, [r6, #0x12]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	adds r7, r0, #0
	ldr r0, _08022F08 @ =0x082098B8
	ldrb r1, [r6, #0x15]
	movs r2, #1
	adds r3, r4, #0
	bl sub_0803C7B4
	ldr r1, _08022F0C @ =0x084F117C
	ldrb r0, [r6, #0x13]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_0803B924
	ldrb r1, [r6, #0x14]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r3, _08022F10 @ =gEwramData
	ldr r0, [r3]
	mov r2, sb
	adds r2, #0x28
	ldr r1, _08022F14 @ =0x000131C0
	adds r0, r0, r1
	ldrb r1, [r2]
	adds r0, r0, r1
	ldrb r1, [r6, #0x12]
	strb r1, [r0]
	ldrb r0, [r2]
	cmp r0, #0
	bne _08022F1C
	ldr r0, [r3]
	ldr r2, _08022F18 @ =0x000131C8
	adds r0, r0, r2
	str r7, [r0]
	movs r1, #3
	movs r4, #0
	b _08022F28
	.align 2, 0
_08022EFC: .4byte 0x000131C1
_08022F00: .4byte 0x000131CC
_08022F04: .4byte 0x084F10C0
_08022F08: .4byte 0x082098B8
_08022F0C: .4byte 0x084F117C
_08022F10: .4byte gEwramData
_08022F14: .4byte 0x000131C0
_08022F18: .4byte 0x000131C8
_08022F1C:
	ldr r0, [r3]
	ldr r1, _0802300C @ =0x000131CC
	adds r0, r0, r1
	str r7, [r0]
	movs r1, #5
	movs r4, #1
_08022F28:
	ldr r2, _08023010 @ =sub_0802346C
	adds r0, r5, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r6, #0x17]
	adds r0, r4, #0
	bl sub_08042A54
	ldr r4, [r5, #0x14]
	adds r4, #0x28
	ldrb r0, [r4]
	bl sub_08023368
	ldrh r0, [r0, #0x18]
	bl PlaySong
	ldrb r0, [r4]
	cmp r0, #0
	bne _08022F80
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08022F80
	ldr r4, _08023014 @ =0x084F1264
	bl RandomNumberGenerator
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	bl PlaySong
_08022F80:
	ldr r0, _08023018 @ =sub_0803B9D0
	str r0, [r5, #4]
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08022F9A
	adds r1, r5, #0
	adds r1, #0x4e
	movs r0, #0xd
	strh r0, [r1]
_08022F9A:
	movs r0, #0
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_08022FA4:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r5, #0x40]
	adds r1, #0x46
	adds r0, r5, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
_08022FC8:
	mov r2, r8
	ldrb r0, [r2, #0xf]
	strb r0, [r5, #0xf]
	adds r4, r5, #0
	adds r4, #0x65
	ldrb r6, [r4]
	adds r0, r5, #0
	bl sub_0803F17C
	cmp r0, #3
	beq _08023076
	ldr r2, _0802301C @ =gEwramData
	ldr r3, [r2]
	ldr r1, _08023020 @ =0x000004CC
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08023028
	ldr r0, _08023024 @ =0x00013268
	adds r1, r3, r0
	ldrb r0, [r5, #0x18]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08023028
	adds r0, r5, #0
	adds r0, #0x72
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
	b _08023092
	.align 2, 0
_0802300C: .4byte 0x000131CC
_08023010: .4byte sub_0802346C
_08023014: .4byte 0x084F1264
_08023018: .4byte sub_0803B9D0
_0802301C: .4byte gEwramData
_08023020: .4byte 0x000004CC
_08023024: .4byte 0x00013268
_08023028:
	ldrb r1, [r4]
	cmp r6, r1
	beq _08023092
	adds r0, r5, #0
	adds r0, #0x64
	ldr r1, [r2]
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r2, _08023064 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	ldrb r0, [r4]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r1, r0, r1
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _08023068
	ldr r1, [r1, #8]
	adds r0, r5, #0
	bl sub_08042848
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	b _08023092
	.align 2, 0
_08023064: .4byte 0x0001017C
_08023068:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	b _08023092
_08023076:
	ldr r0, _080230A0 @ =gEwramData
	ldr r1, [r0]
	mov r0, r8
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r2, _080230A4 @ =0x0001311C
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	adds r0, r5, #0
	bl EntityDelete
_08023092:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080230A0: .4byte gEwramData
_080230A4: .4byte 0x0001311C

	thumb_func_start sub_080230A8
sub_080230A8: @ 0x080230A8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x28
	ldrb r0, [r4]
	bl sub_08023368
	cmp r0, #0
	bne _080230BE
	movs r0, #0
	b _08023132
_080230BE:
	ldr r1, _08023138 @ =0x084F124C
	ldrb r0, [r0, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #2
	movs r1, #0x10
	bl EntityCreateInRange
	ldr r6, _0802313C @ =gEwramData
	ldr r2, [r6]
	ldrb r1, [r4]
	lsls r1, r1, #2
	ldr r7, _08023140 @ =0x0001311C
	adds r2, r2, r7
	adds r1, r2, r1
	str r0, [r1]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _08023126
	str r5, [r0, #0x14]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r2, [r0]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r2, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r3, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r6]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r2, r7, #0
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r1, #0x59
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
_08023126:
	ldr r0, [r6]
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r0, r0, r7
	adds r0, r0, r1
	ldr r0, [r0]
_08023132:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08023138: .4byte 0x084F124C
_0802313C: .4byte gEwramData
_08023140: .4byte 0x0001311C

	thumb_func_start sub_08023144
sub_08023144: @ 0x08023144
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x14]
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _08023156
	cmp r0, #1
	beq _08023184
	b _08023264
_08023156:
	ldr r2, _080231DC @ =sub_080211F4
	adds r0, r5, #0
	movs r1, #3
	movs r3, #0
	bl sub_0804277C
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	movs r1, #0x14
	bl sub_08042A54
	movs r0, #0xa
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	strb r0, [r5, #0xa]
_08023184:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _080231A8
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080231A8
	ldr r4, _080231E0 @ =0x084F126C
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	bl PlaySong
_080231A8:
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r3, [r6, #0x10]
	movs r0, #0x20
	ands r3, r0
	cmp r3, #0
	bne _080231EC
	ldr r0, _080231E4 @ =gEwramData
	ldr r1, [r0]
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r2, _080231E8 @ =0x0001311C
	adds r1, r1, r2
	adds r1, r1, r0
	str r3, [r1]
	adds r0, r5, #0
	bl EntityDelete
	b _08023264
	.align 2, 0
_080231DC: .4byte sub_080211F4
_080231E0: .4byte 0x084F126C
_080231E4: .4byte gEwramData
_080231E8: .4byte 0x0001311C
_080231EC:
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	adds r3, r5, #0
	adds r3, #0x58
	eors r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r2, r6, #0
	adds r2, #0x64
	ldr r0, _08023250 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _08023254 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r6, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r2, r0, r1
	ldrb r0, [r2, #4]
	cmp r0, #2
	bne _08023258
	ldr r1, [r2, #8]
	adds r1, #4
	adds r0, r5, #0
	bl sub_08042848
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	b _08023262
	.align 2, 0
_08023250: .4byte gEwramData
_08023254: .4byte 0x0001017C
_08023258:
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
_08023262:
	strb r0, [r2]
_08023264:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802326C
sub_0802326C: @ 0x0802326C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, _08023300 @ =sub_08023144
	movs r0, #2
	movs r1, #0x10
	bl EntityCreateInRange
	ldr r6, _08023304 @ =gEwramData
	ldr r2, [r6]
	adds r5, r4, #0
	adds r5, #0x28
	ldrb r1, [r5]
	lsls r1, r1, #2
	ldr r7, _08023308 @ =0x0001311C
	adds r2, r2, r7
	adds r1, r2, r1
	str r0, [r1]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _080232EC
	str r4, [r0, #0x14]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r2, [r0]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r2, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r3, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r6]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r2, r7, #0
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r1, #0x59
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r1, [r6]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r2, r7, #0
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r1, #0x59
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
_080232EC:
	ldr r0, [r6]
	ldrb r1, [r5]
	lsls r1, r1, #2
	adds r0, r0, r7
	adds r0, r0, r1
	ldr r0, [r0]
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08023300: .4byte sub_08023144
_08023304: .4byte gEwramData
_08023308: .4byte 0x0001311C

	thumb_func_start sub_0802330C
sub_0802330C: @ 0x0802330C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xff
	bne _08023320
	ldr r0, _0802331C @ =0x084F1270
	b _0802332A
	.align 2, 0
_0802331C: .4byte 0x084F1270
_08023320:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08023330 @ =0x08505D3C
	adds r0, r0, r1
_0802332A:
	pop {r1}
	bx r1
	.align 2, 0
_08023330: .4byte 0x08505D3C

	thumb_func_start sub_08023334
sub_08023334: @ 0x08023334
	push {lr}
	ldr r0, _08023350 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08023354 @ =0x00013268
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0xff
	beq _0802335C
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08023358 @ =0x08505D3C
	adds r0, r0, r1
	b _0802335E
	.align 2, 0
_08023350: .4byte gEwramData
_08023354: .4byte 0x00013268
_08023358: .4byte 0x08505D3C
_0802335C:
	ldr r0, _08023364 @ =0x084F1270
_0802335E:
	pop {r1}
	bx r1
	.align 2, 0
_08023364: .4byte 0x084F1270

	thumb_func_start sub_08023368
sub_08023368: @ 0x08023368
	push {lr}
	cmp r0, #0
	bne _08023388
	ldr r0, _08023380 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08023384 @ =0x00013268
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0xff
	bne _08023396
	b _080233B0
	.align 2, 0
_08023380: .4byte gEwramData
_08023384: .4byte 0x00013268
_08023388:
	ldr r0, _080233A4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080233A8 @ =0x000133F2
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0xff
	beq _080233B0
_08023396:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080233AC @ =0x08505D3C
	adds r0, r0, r1
	b _080233B2
	.align 2, 0
_080233A4: .4byte gEwramData
_080233A8: .4byte 0x000133F2
_080233AC: .4byte 0x08505D3C
_080233B0:
	ldr r0, _080233B8 @ =0x084F1270
_080233B2:
	pop {r1}
	bx r1
	.align 2, 0
_080233B8: .4byte 0x084F1270

	thumb_func_start sub_080233BC
sub_080233BC: @ 0x080233BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080233DC @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080233E0 @ =0x00013268
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0xff
	beq _080233E8
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080233E4 @ =0x08505D3C
	adds r2, r0, r1
	b _080233EA
	.align 2, 0
_080233DC: .4byte gEwramData
_080233E0: .4byte 0x00013268
_080233E4: .4byte 0x08505D3C
_080233E8:
	ldr r2, _080233FC @ =0x084F1270
_080233EA:
	ldr r1, _08023400 @ =0x084F1238
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r3, [r0]
	cmp r2, #0
	bne _08023404
	ldrb r0, [r3]
	b _0802341E
	.align 2, 0
_080233FC: .4byte 0x084F1270
_08023400: .4byte 0x084F1238
_08023404:
	cmp r4, #2
	ble _08023410
	ldrb r0, [r2, #8]
	adds r0, r3, r0
	ldrb r0, [r0]
	b _0802341E
_08023410:
	ldrb r0, [r2, #8]
	lsls r1, r0, #1
	adds r1, r1, r0
	ldrb r2, [r2, #0x16]
	adds r1, r1, r2
	adds r1, r3, r1
	ldrb r0, [r1]
_0802341E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08023424
sub_08023424: @ 0x08023424
	push {lr}
	ldr r0, _08023440 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08023444 @ =0x00013268
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0xff
	beq _0802344C
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08023448 @ =0x08505D3C
	adds r0, r0, r1
	b _0802344E
	.align 2, 0
_08023440: .4byte gEwramData
_08023444: .4byte 0x00013268
_08023448: .4byte 0x08505D3C
_0802344C:
	ldr r0, _08023458 @ =0x084F1270
_0802344E:
	cmp r0, #0
	bne _0802345C
	movs r0, #0
	b _08023468
	.align 2, 0
_08023458: .4byte 0x084F1270
_0802345C:
	ldrh r1, [r0, #0x10]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08023468:
	pop {r1}
	bx r1

	thumb_func_start sub_0802346C
sub_0802346C: @ 0x0802346C
	push {lr}
	adds r3, r1, #0
	ldr r0, _080234A0 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _080234A4 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802348C
	ldr r1, _080234A8 @ =0x00013220
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r3, r0
	bne _0802349C
_0802348C:
	ldr r1, _080234AC @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x10]
_0802349C:
	pop {r0}
	bx r0
	.align 2, 0
_080234A0: .4byte gEwramData
_080234A4: .4byte 0x000004CC
_080234A8: .4byte 0x00013220
_080234AC: .4byte 0x00013110

	thumb_func_start sub_080234B0
sub_080234B0: @ 0x080234B0
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r0, #0
	adds r3, #0x72
	ldrb r2, [r3]
	movs r1, #2
	orrs r1, r2
	strb r1, [r3]
	movs r1, #1
	str r1, [r0, #0x1c]
	ldr r0, _080234F8 @ =gEwramData
	ldr r2, [r0]
	ldr r1, _080234FC @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080234E0
	ldr r1, _08023500 @ =0x00013220
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r4, r0
	bne _080234F0
_080234E0:
	ldr r1, _08023504 @ =0x00013110
	adds r0, r2, r1
	ldr r2, [r0]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r2, #0x10]
_080234F0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080234F8: .4byte gEwramData
_080234FC: .4byte 0x000004CC
_08023500: .4byte 0x00013220
_08023504: .4byte 0x00013110

	thumb_func_start sub_08023508
sub_08023508: @ 0x08023508
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x14]
	ldr r5, [r4, #0x40]
	ldr r6, [r4, #0x44]
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x44]
	ldr r1, [r4, #0x4c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0803B9D0
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08023530
sub_08023530: @ 0x08023530
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r1, #0
	movs r0, #2
	movs r1, #0x10
	bl EntityCreateInRange
	adds r3, r0, #0
	cmp r3, #0
	bne _0802354A
	b _080235BE
_08023546:
	adds r0, r1, #0
	b _08023572
_0802354A:
	movs r1, #0
	ldr r4, _080235AC @ =gEwramData
	ldr r0, [r4]
	ldr r6, _080235B0 @ =0x00013124
	adds r2, r0, r6
_08023554:
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	lsls r0, r1, #2
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _08023546
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _08023554
	movs r0, #1
	rsbs r0, r0, #0
_08023572:
	lsls r0, r0, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0
	blt _080235B8
	ldr r0, [r4]
	lsls r1, r2, #2
	ldr r6, _080235B0 @ =0x00013124
	adds r0, r0, r6
	adds r0, r0, r1
	str r3, [r0]
	str r5, [r3, #0x14]
	strh r2, [r3, #0x1a]
	adds r2, r3, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r4]
	ldr r0, _080235B4 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r3, #0
	b _080235C0
	.align 2, 0
_080235AC: .4byte gEwramData
_080235B0: .4byte 0x00013124
_080235B4: .4byte 0x000131BE
_080235B8:
	adds r0, r3, #0
	bl EntityDelete
_080235BE:
	movs r0, #0
_080235C0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080235C8
sub_080235C8: @ 0x080235C8
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r6, _080236EC @ =gEwramData
_080235CE:
	ldr r0, [r6]
	lsls r2, r2, #0x18
	asrs r1, r2, #0x16
	ldr r3, _080236F0 @ =0x00013124
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r4, [r0]
	adds r5, r2, #0
	cmp r4, #0
	beq _0802361A
	ldr r0, [r4]
	cmp r0, #0
	beq _08023608
	adds r2, r4, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r3, _080236F4 @ =0x0000101F
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08023602
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_08023602:
	adds r0, r4, #0
	bl EntityDelete
_08023608:
	ldr r2, _080236EC @ =gEwramData
	ldr r1, [r2]
	asrs r0, r5, #0x16
	ldr r3, _080236F0 @ =0x00013124
	adds r1, r1, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	adds r6, r2, #0
_0802361A:
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r5, r1
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _080235CE
	adds r4, r6, #0
	ldr r0, [r4]
	ldr r2, _080236F8 @ =0x00012FE4
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, #0
	beq _0802363A
	movs r0, #1
	str r0, [r1]
_0802363A:
	ldr r2, [r4]
	ldr r3, _080236FC @ =0x000004BE
	adds r1, r2, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0802368E
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08023700 @ =0x0000042C
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08023662
	ldr r0, _08023704 @ =0x00001038
	bl PlaySong
_08023662:
	bl sub_08013E74
	ldr r0, [r4]
	ldr r2, _08023708 @ =0x000254CC
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _08023676
	bl PlaySong
_08023676:
	ldr r0, [r6]
	ldr r3, _0802370C @ =0x000254CE
	adds r2, r0, r3
	ldrh r0, [r2]
	cmp r0, #0
	beq _08023686
	bl PlaySong
_08023686:
	movs r0, #0xb7
	lsls r0, r0, #1
	bl sub_08013E18
_0802368E:
	bl sub_08013D30
	ldr r4, _080236EC @ =gEwramData
	ldr r1, [r4]
	ldr r0, _08023710 @ =0x00013168
	adds r2, r1, r0
	ldr r5, _08023714 @ =0x00013110
	adds r0, r1, r5
	ldr r0, [r0]
	str r0, [r2]
	ldr r2, _08023718 @ =0x000131BE
	adds r1, r1, r2
	movs r0, #0
	strb r0, [r1]
	bl sub_0802215C
	ldr r1, [r4]
	ldr r3, _0802371C @ =0x00013266
	adds r0, r1, r3
	ldrb r2, [r0]
	cmp r2, #0
	bne _080236E6
	adds r0, r1, r5
	ldr r1, [r0]
	ldrb r0, [r1, #0xa]
	cmp r0, #2
	bne _080236E6
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	beq _080236E6
	strb r2, [r1, #0xb]
	ldr r2, [r4]
	adds r2, r2, r5
	ldr r3, [r2]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, [r2]
	ldr r0, [r2, #0x10]
	ldr r1, _08023720 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2, #0x10]
_080236E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080236EC: .4byte gEwramData
_080236F0: .4byte 0x00013124
_080236F4: .4byte 0x0000101F
_080236F8: .4byte 0x00012FE4
_080236FC: .4byte 0x000004BE
_08023700: .4byte 0x0000042C
_08023704: .4byte 0x00001038
_08023708: .4byte 0x000254CC
_0802370C: .4byte 0x000254CE
_08023710: .4byte 0x00013168
_08023714: .4byte 0x00013110
_08023718: .4byte 0x000131BE
_0802371C: .4byte 0x00013266
_08023720: .4byte 0xFFFFFEFF

	thumb_func_start sub_08023724
sub_08023724: @ 0x08023724
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x14
	ldr r2, _08023784 @ =gEwramData
	ldr r3, [r2]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	ldr r5, _08023788 @ =0x00013124
	adds r0, r3, r5
	adds r0, r0, r1
	ldr r5, [r0]
	adds r7, r4, #0
	adds r7, #0x48
	ldr r1, _0802378C @ =0x000131BE
	adds r0, r3, r1
	ldrb r0, [r0]
	movs r1, #0
	mov r8, r2
	cmp r0, #0
	bne _08023764
	ldr r2, _08023788 @ =0x00013124
	adds r0, r3, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08023764
	movs r1, #1
_08023764:
	cmp r1, #0
	bne _0802377C
	mov r1, r8
	ldr r0, [r1]
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	ldr r2, _08023788 @ =0x00013124
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08023790
_0802377C:
	adds r0, r4, #0
	bl EntityDelete
	b _0802381E
	.align 2, 0
_08023784: .4byte gEwramData
_08023788: .4byte 0x00013124
_0802378C: .4byte 0x000131BE
_08023790:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080237A0
	ldr r0, _08023830 @ =sub_0803B9D0
	str r0, [r4, #4]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xa]
_080237A0:
	movs r3, #7
	movs r0, #0x65
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x65
	adds r1, r1, r4
	mov sb, r1
	movs r2, #0x42
	adds r2, r2, r4
	mov sl, r2
	adds r0, r4, #0
	adds r0, #0x46
	str r0, [sp]
	adds r1, r6, #0
	adds r1, #0x18
	adds r2, r7, #6
_080237C0:
	ldrb r0, [r2]
	strb r0, [r2, #1]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	subs r1, #4
	subs r2, #1
	subs r3, #1
	cmp r3, #0
	bgt _080237C0
	adds r0, r5, #0
	bl GetEntityRoomXPositionInteger
	strh r0, [r6]
	adds r0, r5, #0
	bl GetEntityRoomYPositionInteger
	strh r0, [r6, #2]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r7]
	ldrb r0, [r4, #0xb]
	adds r0, r7, r0
	ldrb r0, [r0]
	mov r2, sb
	strb r0, [r2]
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, _08023834 @ =gEwramData
	ldr r2, [r1]
	ldr r5, _08023838 @ =0x0000A094
	adds r2, r2, r5
	ldrh r0, [r0]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	mov r1, sl
	strh r0, [r1]
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	ldrh r1, [r2, #0xa]
	subs r0, r0, r1
	ldr r2, [sp]
	strh r0, [r2]
_0802381E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023830: .4byte sub_0803B9D0
_08023834: .4byte gEwramData
_08023838: .4byte 0x0000A094

	thumb_func_start sub_0802383C
sub_0802383C: @ 0x0802383C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	bl sub_0803B998
	mov r8, r0
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _08023880 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _08023884 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r4, [r1]
	adds r5, r4, #0
	ldr r2, _08023888 @ =sub_08023724
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r6, r0, #0
	cmp r6, #0
	bne _0802388C
	movs r0, #0
	b _0802392C
	.align 2, 0
_08023880: .4byte gEwramData
_08023884: .4byte 0x0001017C
_08023888: .4byte sub_08023724
_0802388C:
	cmp r4, #0
	bne _0802389A
	adds r0, r6, #0
	bl EntityDelete
	movs r0, #0
	b _0802392C
_0802389A:
	adds r0, r7, #0
	adds r0, #0x5a
	ldrb r3, [r0]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1c
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, r8
	bl sub_0803B924
	adds r4, r7, #0
	adds r4, #0x65
	ldrb r0, [r4]
	adds r1, r6, #0
	adds r1, #0x65
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	subs r1, #9
	strb r0, [r1]
	movs r0, #0x48
	adds r0, r0, r6
	mov sl, r0
	adds r0, r7, #0
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
	mov r1, sb
	strb r1, [r6, #0xb]
	ldrh r0, [r7, #0x1a]
	strb r0, [r6, #0xc]
	movs r5, #7
	mov r8, r4
	movs r2, #0x59
	adds r2, r2, r6
	mov sb, r2
	adds r4, r6, #0
	adds r4, #0x30
_080238FC:
	mov r0, sl
	adds r1, r0, r5
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r1]
	adds r0, r7, #0
	bl GetEntityRoomXPositionInteger
	strh r0, [r4]
	adds r0, r7, #0
	bl GetEntityRoomYPositionInteger
	strh r0, [r4, #2]
	subs r4, #4
	subs r5, #1
	cmp r5, #0
	bne _080238FC
	mov r1, sb
	ldrb r0, [r1]
	movs r1, #2
	orrs r0, r1
	mov r2, sb
	strb r0, [r2]
	adds r0, r6, #0
_0802392C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802393C
sub_0802393C: @ 0x0802393C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #0
	mov sl, r0
	adds r0, r7, #0
	bl GetEntityRoomXPositionInteger
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r7, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r6, #0
	lsls r4, r4, #0x10
	mov sb, r4
	adds r5, r7, #0
	adds r5, #0x46
	mov r8, sb
_0802396E:
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	mov r1, r8
	asrs r0, r1, #0x10
	adds r1, r4, #0
	bl sub_08001D94
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bne _080239BE
	adds r0, r4, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r5]
	adds r0, #8
	strh r0, [r5]
	adds r6, #1
	cmp r6, #4
	ble _0802396E
_08023998:
	adds r0, r7, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r2, sl
	cmp r2, #0
	beq _080239BA
	mov r2, sb
	asrs r0, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08001D94
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080239D2
_080239BA:
	movs r0, #0
	b _080239D4
_080239BE:
	adds r1, r7, #0
	adds r1, #0x46
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	movs r0, #1
	mov sl, r0
	b _08023998
_080239D2:
	movs r0, #1
_080239D4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080239E4
sub_080239E4: @ 0x080239E4
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r4, [r3, #0x14]
	ldr r1, [r3, #0x20]
	ldr r0, _08023A24 @ =gEwramData
	ldr r2, [r0]
	ldr r5, _08023A28 @ =0x000131BE
	adds r0, r2, r5
	ldrb r0, [r0]
	movs r5, #0
	cmp r0, #0
	bne _08023A08
	ldr r6, _08023A2C @ =0x00013124
	adds r0, r2, r6
	ldr r0, [r0]
	cmp r0, #0
	bne _08023A08
	movs r5, #1
_08023A08:
	cmp r5, #0
	bne _08023A1A
	ldr r0, [r4]
	cmp r0, #0
	beq _08023A1A
	ldrb r0, [r4, #0x10]
	ldrb r2, [r3, #0x10]
	cmp r0, r2
	beq _08023A30
_08023A1A:
	adds r0, r3, #0
	bl EntityDelete
	b _08023A68
	.align 2, 0
_08023A24: .4byte gEwramData
_08023A28: .4byte 0x000131BE
_08023A2C: .4byte 0x00013124
_08023A30:
	movs r5, #0x34
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bgt _08023A42
	adds r1, r3, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
	b _08023A68
_08023A42:
	adds r2, r1, #0
	adds r2, #0x42
	adds r0, r3, #0
	adds r0, #0x52
	ldrh r0, [r0]
	ldrh r2, [r2]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x42
	strh r0, [r2]
	adds r1, #0x46
	adds r0, r3, #0
	adds r0, #0x56
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
_08023A68:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Skill_EvilButcher_Ripper_Use
Skill_EvilButcher_Ripper_Use: @ 0x08023A70
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldrh r0, [r7, #0x1e]
	lsls r0, r0, #4
	ldr r1, _08023A98 @ =0x084F128C
	adds r0, r0, r1
	mov sb, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #4
	bls _08023A8E
	b _08023E34
_08023A8E:
	lsls r0, r0, #2
	ldr r1, _08023A9C @ =_08023AA0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08023A98: .4byte 0x084F128C
_08023A9C: .4byte _08023AA0
_08023AA0: @ jump table
	.4byte _08023AB4 @ case 0
	.4byte _08023C2A @ case 1
	.4byte _08023D80 @ case 2
	.4byte _08023DD6 @ case 3
	.4byte _08023DF2 @ case 4
_08023AB4:
	mov r0, sb
	ldrb r6, [r0, #0xe]
	ldr r0, [r0]
	mov r1, sb
	ldr r5, [r1, #4]
	ldr r2, [r1, #8]
	mov r8, r2
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _08023B0C @ =gEwramData
	ldr r1, [r4]
	ldr r3, _08023B10 @ =0x000131CC
	adds r1, r1, r3
	str r0, [r1]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r6, _08023B10 @ =0x000131CC
	adds r0, r0, r6
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, r8
	movs r3, #2
	bl sub_0803B924
	mov r1, sb
	ldrb r0, [r1, #0xc]
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrh r0, [r7, #0x1e]
	cmp r0, #0
	bne _08023B14
	movs r0, #1
	movs r1, #0xa
	bl sub_08042A54
	b _08023B1C
	.align 2, 0
_08023B0C: .4byte gEwramData
_08023B10: .4byte 0x000131CC
_08023B14:
	movs r0, #1
	movs r1, #0x14
	bl sub_08042A54
_08023B1C:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08023B48
	ldr r0, _08023B40 @ =gEwramData
	ldr r1, [r0]
	movs r2, #0x1a
	ldrsh r0, [r7, r2]
	lsls r0, r0, #2
	ldr r3, _08023B44 @ =0x00013124
	adds r1, r1, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	b _08023E1E
	.align 2, 0
_08023B40: .4byte gEwramData
_08023B44: .4byte 0x00013124
_08023B48:
	ldr r0, _08023BE4 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r5, #0
	movs r0, #0xd
	strb r0, [r1]
	adds r4, r7, #0
	adds r4, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r3, [r7, #0x14]
	adds r0, r3, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r1, r3, #0
	adds r1, #0x46
	ldr r6, _08023BE8 @ =0x0000FFE6
	adds r0, r6, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r1, [r0]
	lsrs r1, r1, #6
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4]
	subs r0, #0x42
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #9
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	str r5, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	bl sub_0803E058
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08023BF0
	ldr r0, _08023BEC @ =0xFFFA0000
	b _08023BF4
	.align 2, 0
_08023BE4: .4byte sub_0803B9D0
_08023BE8: .4byte 0x0000FFE6
_08023BEC: .4byte 0xFFFA0000
_08023BF0:
	movs r0, #0xc0
	lsls r0, r0, #0xb
_08023BF4:
	str r0, [r7, #0x48]
	ldr r2, _08023C68 @ =sub_0802D9BC
	adds r0, r7, #0
	movs r1, #5
	movs r3, #0
	bl sub_0804277C
	ldr r1, _08023C6C @ =0x0202FFFF
	adds r0, r7, #0
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xe6
	bl PlaySong
	ldr r0, _08023C70 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08023C74 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08023C2A:
	ldr r1, [r7, #0x20]
	cmp r1, #0
	beq _08023CA0
	adds r0, r1, #0
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne _08023C9A
	ldr r2, [r1, #0x20]
	ldrh r0, [r7, #0x26]
	adds r1, r0, #1
	strh r1, [r7, #0x26]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	ble _08023C4C
	b _08023D70
_08023C4C:
	adds r0, r2, #0
	adds r0, #0x72
	ldrb r1, [r0]
	movs r2, #4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08023C62
	ldrh r0, [r7, #0x1e]
	cmp r0, #0
	bne _08023C78
_08023C62:
	strb r2, [r7, #0xa]
	b _08023E34
	.align 2, 0
_08023C68: .4byte sub_0802D9BC
_08023C6C: .4byte 0x0202FFFF
_08023C70: .4byte gEwramData
_08023C74: .4byte 0x000131BE
_08023C78:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08023D40
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #3
	strb r0, [r7, #0xa]
	movs r0, #0xf
	strb r0, [r7, #0xd]
	b _08023D40
_08023C9A:
	movs r0, #4
	strb r0, [r7, #0xa]
	b _08023D40
_08023CA0:
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	adds r0, r7, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r7, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08023CDC
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, #6
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	bl sub_0800207C
	b _08023CEA
_08023CDC:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #6
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	bl sub_08002058
_08023CEA:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08023D40
	lsls r1, r0, #0x10
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	movs r0, #0x32
	strb r0, [r7, #0xd]
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	mov r1, sb
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	bne _08023D1E
	movs r0, #0x9c
	lsls r0, r0, #1
	bl PlaySong
	movs r0, #2
	b _08023D20
_08023D1E:
	movs r0, #3
_08023D20:
	strb r0, [r7, #0xa]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08023D32
	movs r0, #0xc0
	lsls r0, r0, #9
	b _08023D34
_08023D32:
	ldr r0, _08023D78 @ =0xFFFE8000
_08023D34:
	str r0, [r7, #0x48]
	ldr r0, _08023D7C @ =0xFFFE0000
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
_08023D40:
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	bne _08023D5A
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08023E34
_08023D5A:
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_08023D70:
	movs r0, #4
	strb r0, [r7, #0xa]
	b _08023E34
	.align 2, 0
_08023D78: .4byte 0xFFFE8000
_08023D7C: .4byte 0xFFFE0000
_08023D80:
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldr r0, [r7, #0x44]
	ldr r1, [r7, #0x4c]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	ldr r0, [r7, #0x54]
	adds r1, r1, r0
	str r1, [r7, #0x4c]
	movs r2, #0x24
	ldrsh r0, [r7, r2]
	lsls r0, r0, #0x10
	movs r1, #0x14
	bl __divsi3
	movs r2, #0x80
	lsls r2, r2, #9
	adds r5, r7, #0
	adds r5, #0x58
	ldrb r1, [r5]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08023DD0
	ldrh r0, [r7, #0x24]
	adds r0, #1
	b _08023DD4
_08023DD0:
	ldrh r0, [r7, #0x24]
	subs r0, #1
_08023DD4:
	strh r0, [r7, #0x24]
_08023DD6:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #0
	cmp r1, #0xa
	bls _08023DE2
	movs r0, #1
	b _08023DE4
_08023DE2:
	movs r0, #2
_08023DE4:
	strb r0, [r7, #0xf]
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _08023DF2
	subs r0, r1, #1
	strb r0, [r7, #0xd]
	b _08023E34
_08023DF2:
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _08023E28 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	lsls r0, r0, #2
	ldr r6, _08023E2C @ =0x00013124
	adds r1, r2, r6
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _08023E30 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_08023E1E:
	adds r0, r7, #0
	bl EntityDelete
	b _08023E40
	.align 2, 0
_08023E28: .4byte gEwramData
_08023E2C: .4byte 0x00013124
_08023E30: .4byte 0x000131BE
_08023E34:
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
_08023E40:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08023E50
sub_08023E50: @ 0x08023E50
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	bne _08023E5E
	b _08023FCC
_08023E5E:
	cmp r0, #1
	bgt _08023E68
	cmp r0, #0
	beq _08023E70
	b _08024090
_08023E68:
	cmp r0, #2
	bne _08023E6E
	b _08024050
_08023E6E:
	b _08024090
_08023E70:
	ldr r1, _08023EC4 @ =0x080E13BC
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _08023EC8 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _08023ECC @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _08023ECC @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	ldrh r1, [r7, #0x1e]
	adds r0, r7, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrh r0, [r7, #0x1e]
	cmp r0, #0
	bne _08023ED0
	movs r0, #1
	movs r1, #0xf
	bl sub_08042A54
	b _08023ED8
	.align 2, 0
_08023EC4: .4byte 0x080E13BC
_08023EC8: .4byte gEwramData
_08023ECC: .4byte 0x000131CC
_08023ED0:
	movs r0, #1
	movs r1, #0x1e
	bl sub_08042A54
_08023ED8:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _08023F04
	ldr r0, _08023EFC @ =gEwramData
	ldr r1, [r0]
	movs r5, #0x1a
	ldrsh r0, [r7, r5]
	lsls r0, r0, #2
	ldr r2, _08023F00 @ =0x00013124
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	b _0802407C
	.align 2, 0
_08023EFC: .4byte gEwramData
_08023F00: .4byte 0x00013124
_08023F04:
	ldr r0, _08023F80 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r2, r7, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r3, r7, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	ldr r4, [r7, #0x14]
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	movs r2, #0
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x46
	ldr r5, _08023F84 @ =0x0000FFE6
	adds r0, r5, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	strh r2, [r7, #0x2a]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08023F90
	ldr r0, _08023F88 @ =0xFFFCC000
	str r0, [r7, #0x48]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x50]
	ldr r0, _08023F8C @ =0x0000FFFF
	b _08023F9C
	.align 2, 0
_08023F80: .4byte sub_0803B9D0
_08023F84: .4byte 0x0000FFE6
_08023F88: .4byte 0xFFFCC000
_08023F8C: .4byte 0x0000FFFF
_08023F90:
	movs r0, #0xd0
	lsls r0, r0, #0xa
	str r0, [r7, #0x48]
	ldr r0, _08024038 @ =0xFFFFF000
	str r0, [r7, #0x50]
	movs r0, #1
_08023F9C:
	strh r0, [r7, #0x24]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0802403C @ =0x1414F6F6
	adds r0, r7, #0
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08024040 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _08024044 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08023FCC:
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	adds r2, r1, #0
	ldr r1, [r7, #0x50]
	cmp r1, #0
	bge _08023FE2
	ldr r0, _08024048 @ =0xFFF80000
	cmp r2, r0
	bgt _08023FEC
_08023FE2:
	cmp r1, #0
	ble _08023FF0
	ldr r0, _0802404C @ =0x0007FFFF
	cmp r2, r0
	bgt _08023FF0
_08023FEC:
	adds r0, r2, r1
	str r0, [r7, #0x48]
_08023FF0:
	movs r1, #0x2a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #7
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	adds r1, r7, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldrh r0, [r7, #0x24]
	ldrh r2, [r7, #0x2a]
	adds r0, r0, r2
	strh r0, [r7, #0x2a]
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _0802402A
	movs r0, #2
	strb r0, [r7, #0xa]
_0802402A:
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	b _08024090
	.align 2, 0
_08024038: .4byte 0xFFFFF000
_0802403C: .4byte 0x1414F6F6
_08024040: .4byte gEwramData
_08024044: .4byte 0x000131BE
_08024048: .4byte 0xFFF80000
_0802404C: .4byte 0x0007FFFF
_08024050:
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _08024084 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	lsls r0, r0, #2
	ldr r5, _08024088 @ =0x00013124
	adds r1, r2, r5
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802408C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_0802407C:
	adds r0, r7, #0
	bl EntityDelete
	b _08024096
	.align 2, 0
_08024084: .4byte gEwramData
_08024088: .4byte 0x00013124
_0802408C: .4byte 0x000131BE
_08024090:
	adds r0, r7, #0
	bl sub_0803F17C
_08024096:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080240A0
sub_080240A0: @ 0x080240A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov sb, r0
	movs r1, #0x20
	adds r1, r1, r7
	mov sl, r1
	ldrb r5, [r7, #0xa]
	cmp r5, #0
	beq _080240CC
	adds r4, r7, #0
	adds r4, #0x58
	cmp r5, #1
	beq _08024192
	adds r5, r7, #0
	adds r5, #0x59
	b _0802423A
_080240CC:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r8, r2
	cmp r0, #0
	bge _080240F8
	ldr r0, _080240F0 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r1, [r7, r3]
	lsls r1, r1, #2
	ldr r3, _080240F4 @ =0x00013124
	adds r0, r2, r3
	adds r0, r0, r1
	str r5, [r0]
	b _080241B8
	.align 2, 0
_080240F0: .4byte gEwramData
_080240F4: .4byte 0x00013124
_080240F8:
	ldr r1, _080241CC @ =0x080E13BC
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _080241D0 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _080241D4 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _080241D4 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	mov r1, sb
	ldrh r0, [r1, #0x1e]
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	ldr r0, _080241D8 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r4, r7, #0
	adds r4, #0x58
	movs r0, #0x1f
	mov r2, r8
	ands r2, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	mov r0, sb
	bl GetEntityRoomXPositionInteger
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r2, sl
	movs r3, #9
_08024180:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _08024180
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_08024192:
	mov r3, sb
	ldrb r0, [r3, #0xa]
	cmp r0, #2
	bne _080241E4
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _080241D0 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _080241DC @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
_080241B8:
	ldr r0, _080241E0 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl EntityDelete
	b _0802425C
	.align 2, 0
_080241CC: .4byte 0x080E13BC
_080241D0: .4byte gEwramData
_080241D4: .4byte 0x000131CC
_080241D8: .4byte sub_0803B9D0
_080241DC: .4byte 0x00013124
_080241E0: .4byte 0x000131BE
_080241E4:
	movs r3, #9
	adds r5, r7, #0
	adds r5, #0x59
	adds r1, r7, #0
	adds r1, #0x42
	str r1, [sp, #8]
	movs r2, #0x46
	add r2, sb
	mov r8, r2
	adds r6, r7, #0
	adds r6, #0x46
	mov r1, sl
	adds r1, #0x10
_080241FE:
	ldrh r0, [r1]
	strh r0, [r1, #2]
	subs r1, #2
	subs r3, #1
	cmp r3, #0
	bgt _080241FE
	mov r0, sb
	bl GetEntityRoomXPositionInteger
	mov r3, sl
	strh r0, [r3]
	ldrb r1, [r7, #0xb]
	lsls r1, r1, #1
	add r1, sl
	ldr r0, _0802426C @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08024270 @ =0x0000A094
	adds r0, r0, r2
	ldrh r1, [r1]
	ldrh r0, [r0, #6]
	subs r1, r1, r0
	ldr r3, [sp, #8]
	strh r1, [r3]
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r6]
	ldr r0, [r7, #0x48]
	ldr r1, [r7, #0x50]
	adds r0, r0, r1
	str r0, [r7, #0x48]
_0802423A:
	ldrb r0, [r5]
	movs r1, #4
	orrs r0, r1
	strb r0, [r5]
	ldr r0, [r7, #0x48]
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	ldrb r1, [r4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
_0802425C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802426C: .4byte gEwramData
_08024270: .4byte 0x0000A094

	thumb_func_start SkillAxeArmorUse
SkillAxeArmorUse: @ 0x08024274
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	bne _08024286
	b _08024450
_08024286:
	cmp r0, #1
	bgt _08024290
	cmp r0, #0
	beq _08024298
	b _08024514
_08024290:
	cmp r0, #2
	bne _08024296
	b _080244D8
_08024296:
	b _08024514
_08024298:
	ldr r1, _080242E8 @ =0x080E13BC
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _080242EC @ =gEwramData
	ldr r1, [r4]
	ldr r2, _080242F0 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _080242F0 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	ldrh r0, [r7, #0x1e]
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	ldrh r0, [r7, #0x1e]
	cmp r0, #0
	bne _080242F4
	movs r0, #1
	movs r1, #0xf
	bl sub_08042A54
	b _080242FC
	.align 2, 0
_080242E8: .4byte 0x080E13BC
_080242EC: .4byte gEwramData
_080242F0: .4byte 0x000131CC
_080242F4:
	movs r0, #1
	movs r1, #0x1e
	bl sub_08042A54
_080242FC:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _08024330
	ldr r0, _08024328 @ =gEwramData
	ldr r1, [r0]
	movs r4, #0x1a
	ldrsh r0, [r7, r4]
	lsls r0, r0, #2
	ldr r2, _0802432C @ =0x00013124
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	adds r0, r7, #0
	bl EntityDelete
	b _08024514
	.align 2, 0
_08024328: .4byte gEwramData
_0802432C: .4byte 0x00013124
_08024330:
	ldr r0, _080243AC @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r2, r7, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r3, r7, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	ldr r6, [r7, #0x14]
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	movs r2, #0
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x46
	ldr r4, _080243B0 @ =0x0000FFE6
	adds r0, r4, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x46
	strh r0, [r1]
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	strh r2, [r7, #0x2a]
	adds r2, r7, #0
	adds r2, #0x5c
	movs r0, #0xd
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	beq _080243BC
	ldr r0, _080243B4 @ =0xFFFCC000
	str r0, [r7, #0x48]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x50]
	ldr r0, _080243B8 @ =0x0000FFFF
	b _080243C8
	.align 2, 0
_080243AC: .4byte sub_0803B9D0
_080243B0: .4byte 0x0000FFE6
_080243B4: .4byte 0xFFFCC000
_080243B8: .4byte 0x0000FFFF
_080243BC:
	movs r0, #0xd0
	lsls r0, r0, #0xa
	str r0, [r7, #0x48]
	ldr r0, _080244BC @ =0xFFFFF000
	str r0, [r7, #0x50]
	movs r0, #1
_080243C8:
	strh r0, [r7, #0x24]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080244C0 @ =0x1414F6F6
	adds r0, r7, #0
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xe3
	bl PlaySong
	ldr r0, _080244C4 @ =gEwramData
	ldr r1, [r0]
	ldr r0, _080244C8 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r4, #1
	movs r5, #3
_08024402:
	adds r0, r7, #0
	ldr r1, _080244CC @ =sub_080240A0
	bl sub_08023530
	adds r2, r0, #0
	cmp r2, #0
	beq _08024448
	ldr r0, [r7, #0x40]
	str r0, [r2, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r2, #0x44]
	movs r3, #0x80
	lsls r3, r3, #4
	str r3, [r2, #0x50]
	strb r5, [r2, #0xb]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08024432
	rsbs r0, r3, #0
	str r0, [r2, #0x50]
_08024432:
	ldr r0, [r2, #0x50]
	rsbs r0, r0, #0
	ldrb r1, [r2, #0xb]
	muls r0, r1, r0
	str r0, [r2, #0x48]
	mov r1, r8
	ldrb r0, [r1]
	adds r0, r0, r4
	adds r1, r2, #0
	adds r1, #0x5c
	strb r0, [r1]
_08024448:
	adds r5, #3
	adds r4, #1
	cmp r4, #2
	ble _08024402
_08024450:
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	adds r2, r1, #0
	ldr r1, [r7, #0x50]
	cmp r1, #0
	bge _08024466
	ldr r0, _080244D0 @ =0xFFF80000
	cmp r2, r0
	bgt _08024470
_08024466:
	cmp r1, #0
	ble _08024474
	ldr r0, _080244D4 @ =0x0007FFFF
	cmp r2, r0
	bgt _08024474
_08024470:
	adds r0, r2, r1
	str r0, [r7, #0x48]
_08024474:
	movs r2, #0x2a
	ldrsh r0, [r7, r2]
	lsls r0, r0, #0xb
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	adds r1, r7, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	ldrh r0, [r7, #0x24]
	ldrh r3, [r7, #0x2a]
	adds r0, r0, r3
	strh r0, [r7, #0x2a]
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _080244AE
	movs r0, #2
	strb r0, [r7, #0xa]
_080244AE:
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	b _08024514
	.align 2, 0
_080244BC: .4byte 0xFFFFF000
_080244C0: .4byte 0x1414F6F6
_080244C4: .4byte gEwramData
_080244C8: .4byte 0x000131BE
_080244CC: .4byte sub_080240A0
_080244D0: .4byte 0xFFF80000
_080244D4: .4byte 0x0007FFFF
_080244D8:
	adds r2, r7, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _08024520 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _080244F0
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_080244F0:
	ldr r0, _08024524 @ =gEwramData
	ldr r2, [r0]
	movs r4, #0x1a
	ldrsh r0, [r7, r4]
	lsls r0, r0, #2
	ldr r3, _08024528 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r4, _0802452C @ =0x000131BE
	adds r2, r2, r4
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl EntityDelete
_08024514:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024520: .4byte 0x0000101F
_08024524: .4byte gEwramData
_08024528: .4byte 0x00013124
_0802452C: .4byte 0x000131BE

	thumb_func_start sub_08024530
sub_08024530: @ 0x08024530
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldrb r7, [r6, #0xa]
	cmp r7, #1
	bne _08024546
	b _08024760
_08024546:
	cmp r7, #1
	bgt _08024550
	cmp r7, #0
	beq _0802455E
	b _080248BC
_08024550:
	cmp r7, #2
	bne _08024556
	b _080248BC
_08024556:
	cmp r7, #3
	bne _0802455C
	b _0802487C
_0802455C:
	b _080248BC
_0802455E:
	ldr r0, _080245CC @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0x30
	ldr r0, [r0, #0x30]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r1, _080245D0 @ =gEwramData
	mov sb, r1
	ldr r1, [r1]
	ldr r2, _080245D4 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, sb
	ldr r0, [r3]
	ldr r4, _080245D4 @ =0x000131CC
	adds r0, r0, r4
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	ldrh r1, [r6, #0x1e]
	adds r0, r6, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _080245DC
	mov r5, sb
	ldr r1, [r5]
	movs r2, #0x1a
	ldrsh r0, [r6, r2]
	lsls r0, r0, #2
	ldr r3, _080245D8 @ =0x00013124
	adds r1, r1, r3
	adds r1, r1, r0
	str r7, [r1]
	b _080248A8
	.align 2, 0
_080245CC: .4byte 0x080E13BC
_080245D0: .4byte gEwramData
_080245D4: .4byte 0x000131CC
_080245D8: .4byte 0x00013124
_080245DC:
	ldr r0, _080246F4 @ =sub_0803B9D0
	str r0, [r6, #4]
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
	strb r0, [r2]
	ldr r0, [r6, #0x14]
	adds r1, r0, #0
	adds r1, #0x42
	ldrh r1, [r1]
	movs r4, #0x42
	adds r4, r4, r6
	mov sl, r4
	strh r1, [r4]
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x10
	adds r4, r6, #0
	adds r4, #0x46
	strh r0, [r4]
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	strh r7, [r6, #0x2a]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #1
	movs r1, #0x1e
	bl sub_08042A54
	ldr r2, _080246F8 @ =sub_0802DA14
	adds r0, r6, #0
	movs r1, #5
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080246FC @ =0x1414F6F6
	adds r0, r6, #0
	bl sub_08042884
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	mov r5, sb
	ldr r1, [r5]
	ldr r7, _08024700 @ =0x000131BE
	adds r1, r1, r7
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #8]
	movs r1, #0
	mov r8, r1
	ldr r1, [r5]
	ldr r2, _08024704 @ =0x00013220
	adds r0, r1, r2
	ldr r0, [r0]
	mov sb, r4
	cmp r0, #0
	bne _080246D2
	ldr r3, _08024708 @ =0x00013194
	adds r5, r1, r3
	mov ip, sl
	movs r4, #3
_08024688:
	ldr r3, [r5]
	cmp r3, #0
	beq _080246C8
	adds r0, r3, #0
	adds r0, #0x42
	movs r7, #0
	ldrsh r2, [r0, r7]
	mov r1, ip
	movs r7, #0
	ldrsh r0, [r1, r7]
	subs r2, r2, r0
	adds r0, r3, #0
	adds r0, #0x46
	movs r7, #0
	ldrsh r1, [r0, r7]
	mov sl, r1
	mov r1, sb
	movs r7, #0
	ldrsh r0, [r1, r7]
	mov r7, sl
	subs r1, r7, r0
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r0, #0
	adds r0, r1, #0
	muls r0, r1, r0
	adds r2, r2, r0
	ldr r1, [sp, #8]
	cmp r1, r2
	bls _080246C8
	str r2, [sp, #8]
	mov r8, r3
_080246C8:
	adds r5, #4
	subs r4, #1
	cmp r4, #0
	bge _08024688
	mov r0, r8
_080246D2:
	str r0, [r6, #0x20]
	adds r1, r0, #0
	cmp r1, #0
	beq _08024742
	ldr r0, [r1, #0x40]
	ldr r2, [r1, #0x44]
	adds r1, r6, #0
	adds r1, #0x42
	movs r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, #0
	bge _0802470C
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0802470E
	.align 2, 0
_080246F4: .4byte sub_0803B9D0
_080246F8: .4byte sub_0802DA14
_080246FC: .4byte 0x1414F6F6
_08024700: .4byte 0x000131BE
_08024704: .4byte 0x00013220
_08024708: .4byte 0x00013194
_0802470C:
	asrs r0, r0, #0x10
_0802470E:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r0, r6, #0
	adds r0, #0x46
	movs r4, #0
	ldrsh r1, [r0, r4]
	cmp r2, #0
	bge _08024728
	rsbs r0, r2, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0802472A
_08024728:
	asrs r0, r2, #0x10
_0802472A:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r3, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #8
	adds r0, r0, r5
	b _0802475E
_08024742:
	ldr r0, _08024774 @ =gEwramData
	ldr r0, [r0]
	ldr r7, _08024778 @ =0x00013110
	adds r0, r0, r7
	ldr r0, [r0]
	adds r0, #0x58
	ldrb r1, [r0]
	lsrs r1, r1, #6
	movs r0, #1
	bics r0, r1
	cmp r0, #1
	bne _08024760
	movs r0, #0x80
	lsls r0, r0, #8
_0802475E:
	str r0, [r6, #0x2c]
_08024760:
	ldr r1, [r6, #0x20]
	cmp r1, #0
	beq _0802477C
	movs r2, #0x34
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _0802477C
	ldr r3, [r1, #0x40]
	ldr r2, [r1, #0x44]
	b _080247B8
	.align 2, 0
_08024774: .4byte gEwramData
_08024778: .4byte 0x00013110
_0802477C:
	ldr r2, _080247A0 @ =gEwramData
	ldr r0, [r2]
	ldr r3, _080247A4 @ =0x00013110
	adds r0, r0, r3
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsrs r0, r0, #6
	movs r1, #1
	bics r1, r0
	cmp r1, #1
	bne _080247A8
	ldr r0, [r3, #0x40]
	movs r4, #0xc0
	lsls r4, r4, #0x10
	adds r3, r0, r4
	b _080247AE
	.align 2, 0
_080247A0: .4byte gEwramData
_080247A4: .4byte 0x00013110
_080247A8:
	ldr r0, [r3, #0x40]
	ldr r5, _080247D0 @ =0xFF400000
	adds r3, r0, r5
_080247AE:
	ldr r0, [r2]
	ldr r7, _080247D4 @ =0x00013110
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r2, [r0, #0x44]
_080247B8:
	ldr r4, [r6, #0x2c]
	adds r0, r6, #0
	adds r0, #0x42
	movs r5, #0
	ldrsh r1, [r0, r5]
	cmp r3, #0
	bge _080247D8
	rsbs r0, r3, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080247DA
	.align 2, 0
_080247D0: .4byte 0xFF400000
_080247D4: .4byte 0x00013110
_080247D8:
	asrs r0, r3, #0x10
_080247DA:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r0, r6, #0
	adds r0, #0x46
	movs r7, #0
	ldrsh r1, [r0, r7]
	cmp r2, #0
	bge _080247F4
	rsbs r0, r2, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _080247F6
_080247F4:
	asrs r0, r2, #0x10
_080247F6:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r3, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r1, r0, r4
	cmp r1, #0
	ble _0802482C
	ldr r0, _0802481C @ =0x00007FFF
	cmp r1, r0
	bgt _08024820
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r4, r0
	b _08024844
	.align 2, 0
_0802481C: .4byte 0x00007FFF
_08024820:
	ldr r1, _08024828 @ =0xFFFFFC00
	adds r4, r4, r1
	b _08024844
	.align 2, 0
_08024828: .4byte 0xFFFFFC00
_0802482C:
	ldr r0, _0802483C @ =0xFFFF8000
	cmp r1, r0
	bge _08024840
	movs r2, #0x80
	lsls r2, r2, #3
	adds r4, r4, r2
	b _08024844
	.align 2, 0
_0802483C: .4byte 0xFFFF8000
_08024840:
	ldr r3, _08024874 @ =0xFFFFFC00
	adds r4, r4, r3
_08024844:
	ldr r0, _08024878 @ =0x0000FFFF
	ands r4, r0
	str r4, [r6, #0x2c]
	ldr r0, [r6, #0x34]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r0, r0, r4
	str r0, [r6, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #0xb
	cmp r0, r1
	ble _0802485E
	str r1, [r6, #0x34]
_0802485E:
	ldrb r0, [r6, #0xd]
	adds r1, r0, #1
	strb r1, [r6, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x78
	bls _080248BC
	movs r0, #2
	strb r0, [r6, #0xa]
	b _080248BC
	.align 2, 0
_08024874: .4byte 0xFFFFFC00
_08024878: .4byte 0x0000FFFF
_0802487C:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _080248B0 @ =gEwramData
	ldr r2, [r0]
	movs r5, #0x1a
	ldrsh r0, [r6, r5]
	lsls r0, r0, #2
	ldr r7, _080248B4 @ =0x00013124
	adds r1, r2, r7
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _080248B8 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_080248A8:
	adds r0, r6, #0
	bl EntityDelete
	b _08024940
	.align 2, 0
_080248B0: .4byte gEwramData
_080248B4: .4byte 0x00013124
_080248B8: .4byte 0x000131BE
_080248BC:
	ldr r0, [r6, #0x2c]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r0, r0, r5
	bl sub_080009E4
	ldr r1, [r6, #0x34]
	asrs r0, r0, #8
	asrs r1, r1, #8
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, [r6, #0x2c]
	bl sub_080009E4
	ldr r1, [r6, #0x34]
	asrs r0, r0, #8
	asrs r1, r1, #8
	muls r1, r0, r1
	ldr r0, [r6, #0x40]
	adds r0, r0, r4
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r6, #0x44]
	ldr r0, [r6, #0x2c]
	adds r0, r0, r5
	movs r2, #0x80
	lsls r2, r2, #9
	movs r1, #0
	str r1, [sp]
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	movs r3, #0
	bl sub_0803E058
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r3, #0x98
	lsls r3, r3, #1
	movs r0, #0xe0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_08068AD4
	cmp r0, #0
	bne _08024928
	movs r0, #3
	strb r0, [r6, #0xa]
_08024928:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802493A
	movs r0, #3
	strb r0, [r6, #0xa]
_0802493A:
	adds r0, r6, #0
	bl sub_0803F17C
_08024940:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start SkillChronomageUse
SkillChronomageUse: @ 0x08024950
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov sl, r0
	movs r1, #0x59
	adds r1, r1, r7
	mov r8, r1
	ldrb r0, [r1]
	movs r1, #4
	orrs r0, r1
	mov r2, r8
	strb r0, [r2]
	ldrb r4, [r7, #0xa]
	cmp r4, #1
	beq _08024A5C
	cmp r4, #1
	bgt _08024982
	cmp r4, #0
	beq _0802498A
	b _08024BCE
_08024982:
	cmp r4, #2
	bne _08024988
	b _08024B34
_08024988:
	b _08024BCE
_0802498A:
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r0, #0
	bge _080249B4
	ldr r0, _080249AC @ =gEwramData
	ldr r1, [r0]
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	lsls r0, r0, #2
	ldr r2, _080249B0 @ =0x00013124
	adds r1, r1, r2
	adds r1, r1, r0
	str r4, [r1]
	b _08024B92
	.align 2, 0
_080249AC: .4byte gEwramData
_080249B0: .4byte 0x00013124
_080249B4:
	ldr r0, _08024AC8 @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0xc
	ldr r0, [r0, #0xc]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r3, _08024ACC @ =gEwramData
	mov sb, r3
	ldr r1, [r3]
	ldr r2, _08024AD0 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, sb
	ldr r0, [r3]
	ldr r1, _08024AD0 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _08024AD4 @ =sub_0802DA1C
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r5, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r2]
	mov r2, r8
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	mov r3, sb
	ldr r1, [r3]
	ldrh r2, [r7, #0x1e]
	ldr r3, _08024AD8 @ =0x000004BE
	adds r0, r1, r3
	strh r2, [r0]
	ldr r0, _08024ADC @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _08024AE0 @ =0x00001030
	bl PlaySong
	ldr r0, _08024AE4 @ =0x0000019D
	bl PlaySong
	movs r0, #0xec
	bl PlaySong
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_08024A5C:
	mov r1, sl
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x40]
	mov r0, sl
	adds r0, #0x46
	ldrh r0, [r0]
	subs r0, #0x30
	adds r1, r7, #0
	adds r1, #0x46
	strh r0, [r1]
	ldr r1, [r7, #0x20]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r1, r2
	str r1, [r7, #0x20]
	ldr r0, [r7, #0x24]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r0, r3
	str r0, [r7, #0x24]
	movs r2, #0x80
	lsls r2, r2, #9
	cmp r1, r2
	ble _08024A8E
	str r2, [r7, #0x20]
_08024A8E:
	ldr r0, [r7, #0x24]
	cmp r0, r2
	ble _08024A96
	str r2, [r7, #0x24]
_08024A96:
	ldr r0, [r7, #0x20]
	str r0, [r7, #0x28]
	ldr r4, _08024ACC @ =gEwramData
	ldr r1, [r4]
	ldr r5, _08024AD8 @ =0x000004BE
	adds r0, r1, r5
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _08024AE8
	movs r0, #0xf
	ands r0, r2
	cmp r0, #0
	bne _08024ABC
	movs r0, #0xb7
	lsls r0, r0, #1
	bl sub_08013DA8
_08024ABC:
	ldr r1, [r4]
	adds r1, r1, r5
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	b _08024BCE
	.align 2, 0
_08024AC8: .4byte 0x080E13BC
_08024ACC: .4byte gEwramData
_08024AD0: .4byte 0x000131CC
_08024AD4: .4byte sub_0802DA1C
_08024AD8: .4byte 0x000004BE
_08024ADC: .4byte 0x000131BE
_08024AE0: .4byte 0x00001030
_08024AE4: .4byte 0x0000019D
_08024AE8:
	ldr r2, _08024B9C @ =0x0000042C
	adds r0, r1, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08024AFE
	ldr r0, _08024BA0 @ =0x00001038
	bl PlaySong
_08024AFE:
	bl sub_08013E74
	ldr r0, [r4]
	ldr r3, _08024BA4 @ =0x000254CC
	adds r1, r0, r3
	ldrh r0, [r1]
	cmp r0, #0
	beq _08024B12
	bl PlaySong
_08024B12:
	ldr r0, [r4]
	ldr r2, _08024BA8 @ =0x000254CE
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0
	beq _08024B22
	bl PlaySong
_08024B22:
	movs r0, #0xb7
	lsls r0, r0, #1
	bl sub_08013E18
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	movs r0, #0x20
	strb r0, [r7, #0xd]
_08024B34:
	ldr r1, [r7, #0x20]
	ldr r3, _08024BAC @ =0xFFFFF000
	adds r1, r1, r3
	str r1, [r7, #0x20]
	ldr r0, [r7, #0x24]
	ldr r2, _08024BB0 @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r7, #0x24]
	cmp r1, #0
	bge _08024B4C
	movs r0, #0
	str r0, [r7, #0x20]
_08024B4C:
	ldr r0, [r7, #0x24]
	cmp r0, #0
	bge _08024B56
	movs r0, #0
	str r0, [r7, #0x24]
_08024B56:
	ldrb r0, [r7, #0xd]
	adds r5, r0, #0
	cmp r5, #0
	bne _08024BC4
	ldr r4, _08024BB4 @ =gEwramData
	ldr r0, [r4]
	ldr r3, _08024BB8 @ =0x00012FE4
	adds r0, r0, r3
	movs r1, #1
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r2, [r4]
	movs r0, #0x1a
	ldrsh r1, [r7, r0]
	lsls r1, r1, #2
	ldr r3, _08024BBC @ =0x00013124
	adds r0, r2, r3
	adds r0, r0, r1
	str r5, [r0]
	ldr r0, _08024BC0 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_08024B92:
	adds r0, r7, #0
	bl EntityDelete
	b _08024BFE
	.align 2, 0
_08024B9C: .4byte 0x0000042C
_08024BA0: .4byte 0x00001038
_08024BA4: .4byte 0x000254CC
_08024BA8: .4byte 0x000254CE
_08024BAC: .4byte 0xFFFFF000
_08024BB0: .4byte 0xFFFFF800
_08024BB4: .4byte gEwramData
_08024BB8: .4byte 0x00012FE4
_08024BBC: .4byte 0x00013124
_08024BC0: .4byte 0x000131BE
_08024BC4:
	subs r0, #1
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xd]
	lsls r0, r0, #0xb
	str r0, [r7, #0x28]
_08024BCE:
	ldr r0, _08024C10 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08024C14 @ =0x00012FE4
	adds r0, r0, r1
	ldr r1, [r7, #0x28]
	str r1, [r0]
	ldr r2, [r7, #0x20]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
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
	adds r0, r7, #0
	bl sub_0803F17C
_08024BFE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024C10: .4byte gEwramData
_08024C14: .4byte 0x00012FE4

	thumb_func_start sub_08024C18
sub_08024C18: @ 0x08024C18
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r2, ip
	adds r2, #0x64
	ldr r0, _08024CAC @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _08024CB0 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	mov r0, ip
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _08024CB4
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldrb r0, [r3, #2]
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	mov r0, ip
	adds r0, #0x58
	ldrb r5, [r0]
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	beq _08024C68
	lsls r0, r4, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x10
_08024C68:
	mov r2, ip
	adds r2, #0x42
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r1, #1
	ldrsb r1, [r3, r1]
	ldrb r0, [r3, #3]
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _08024C94
	lsls r0, r1, #0x10
	rsbs r0, r0, #0
	lsrs r1, r0, #0x10
_08024C94:
	mov r0, ip
	adds r0, #0x46
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r0, r4, #0x10
	str r0, [r6]
	lsls r1, r1, #0x10
	str r1, [r7]
	movs r0, #1
	b _08024CB6
	.align 2, 0
_08024CAC: .4byte gEwramData
_08024CB0: .4byte 0x0001017C
_08024CB4:
	movs r0, #0
_08024CB6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start SkillValkyrieUse
SkillValkyrieUse: @ 0x08024CBC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _08024D8E
	cmp r0, #1
	bgt _08024CDC
	cmp r0, #0
	beq _08024CE4
	b _08024E7C
_08024CDC:
	cmp r0, #2
	bne _08024CE2
	b _08024E70
_08024CE2:
	b _08024E7C
_08024CE4:
	ldr r0, _08024E48 @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0x18
	ldr r0, [r0, #0x18]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r5, _08024E4C @ =gEwramData
	ldr r1, [r5]
	ldr r2, _08024E50 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r5]
	ldr r3, _08024E50 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldr r0, _08024E54 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0x14
	bl sub_08031EA4
	movs r0, #1
	movs r1, #0x3c
	bl sub_08042A54
	ldr r1, [r5]
	ldr r4, _08024E58 @ =0x000131BE
	adds r1, r1, r4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08024E5C @ =0x000001AF
	bl PlaySong
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_08024D8E:
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0x13
	bhi _08024DA2
	b _08024EAA
_08024DA2:
	movs r0, #3
	mov sb, r0
	mov r2, sb
	ands r2, r1
	mov sb, r2
	movs r3, #0x58
	adds r3, r3, r7
	mov r8, r3
	cmp r2, #0
	bne _08024E20
	ldrb r1, [r7, #0xd]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0xe
	movs r4, #0x80
	lsls r4, r4, #0xe
	adds r2, r0, r4
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xe0
	lsls r1, r1, #0xe
	subs r3, r1, r0
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08024DDE
	rsbs r2, r2, #0
_08024DDE:
	ldr r6, [r7, #0x40]
	adds r6, r6, r2
	ldr r5, [r7, #0x44]
	adds r5, r5, r3
	bl RandomNumberGenerator
	movs r4, #0x1f
	ands r0, r4
	subs r0, #0x10
	lsls r0, r0, #0x10
	adds r6, r6, r0
	bl RandomNumberGenerator
	ands r0, r4
	subs r0, #0x10
	lsls r0, r0, #0x10
	adds r5, r5, r0
	bl RandomNumberGenerator
	adds r3, r0, #0
	ands r3, r4
	lsls r3, r3, #4
	ldr r0, _08024E60 @ =0xFFFFE000
	adds r3, r3, r0
	mov r1, sb
	str r1, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_08045B44
_08024E20:
	movs r1, #0x40
	rsbs r1, r1, #0
	movs r2, #8
	rsbs r2, r2, #0
	movs r3, #0xb8
	lsls r3, r3, #1
	movs r0, #0xb0
	str r0, [sp]
	adds r0, r7, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _08024E64
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _08024E7C
	.align 2, 0
_08024E48: .4byte 0x080E13BC
_08024E4C: .4byte gEwramData
_08024E50: .4byte 0x000131CC
_08024E54: .4byte sub_0803B9D0
_08024E58: .4byte 0x000131BE
_08024E5C: .4byte 0x000001AF
_08024E60: .4byte 0xFFFFE000
_08024E64:
	mov r3, r8
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
	b _08024E7C
_08024E70:
	ldrb r0, [r7, #0xd]
	adds r3, r0, #0
	cmp r3, #0
	beq _08024E82
	subs r0, #1
	strb r0, [r7, #0xd]
_08024E7C:
	adds r2, r7, #0
	adds r2, #0x59
	b _08024EAA
_08024E82:
	ldr r0, _08024F0C @ =gEwramData
	ldr r2, [r0]
	movs r4, #0x1a
	ldrsh r1, [r7, r4]
	lsls r1, r1, #2
	ldr r4, _08024F10 @ =0x00013124
	adds r0, r2, r4
	adds r0, r0, r1
	str r3, [r0]
	ldr r0, _08024F14 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_08024EAA:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_0803F17C
	cmp r0, #3
	bne _08024ECE
	ldrb r0, [r7, #0xa]
	cmp r0, #2
	beq _08024ECE
	movs r0, #2
	strb r0, [r7, #0xa]
	movs r0, #0xa
	strb r0, [r7, #0xd]
	movs r0, #1
	strb r0, [r7, #0xf]
_08024ECE:
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _08024F0C @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _08024F18 @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _08024F1C
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_08042848
	b _08024F28
	.align 2, 0
_08024F0C: .4byte gEwramData
_08024F10: .4byte 0x00013124
_08024F14: .4byte 0x000131BE
_08024F18: .4byte 0x0001017C
_08024F1C:
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_08024F28:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SkillKillerDollUse
SkillKillerDollUse: @ 0x08024F38
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _0802501A
	cmp r0, #1
	bgt _08024F5C
	cmp r0, #0
	beq _08024F64
	b _0802517C
_08024F5C:
	cmp r0, #2
	bne _08024F62
	b _0802513C
_08024F62:
	b _0802517C
_08024F64:
	ldr r0, _08025088 @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0x48
	ldr r0, [r0, #0x48]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _0802508C @ =gEwramData
	ldr r1, [r4]
	ldr r2, _08025090 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _08025090 @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	bl RandomNumberGenerator
	adds r1, r0, #0
	movs r0, #1
	ands r1, r0
	adds r0, r7, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, _08025094 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xe5
	bl PlaySong
	ldr r1, [r4]
	ldr r0, _08025098 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _0802509C @ =0x00013168
	adds r0, r0, r1
	str r7, [r0]
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r7, #0
	mov r1, r8
	movs r2, #8
	bl sub_08031EA4
	movs r2, #0xc0
	lsls r2, r2, #9
	str r2, [r7, #0x48]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802500C
	rsbs r0, r2, #0
	str r0, [r7, #0x48]
_0802500C:
	ldr r0, _080250A0 @ =0xFFFD8000
	str r0, [r7, #0x4c]
	movs r0, #0xb4
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0802501A:
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldr r0, [r7, #0x44]
	ldr r1, [r7, #0x4c]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	adds r0, r7, #0
	bl GetEntityRoomXPositionInteger
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r7, #0
	bl GetEntityRoomYPositionInteger
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r7, #0x4c]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r7, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _08025052
	str r1, [r7, #0x4c]
_08025052:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	blt _080250A4
	lsls r5, r5, #0x10
	asrs r0, r5, #0x10
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	adds r1, #1
	bl sub_08001D94
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080250C8
	adds r2, r7, #0
	adds r2, #0x46
	ldrh r0, [r2]
	adds r0, #2
	adds r0, r1, r0
	movs r1, #0
	strh r0, [r2]
	str r1, [r7, #0x4c]
	movs r3, #0x80
	lsls r3, r3, #7
	mov sb, r3
	b _080250C8
	.align 2, 0
_08025088: .4byte 0x080E13BC
_0802508C: .4byte gEwramData
_08025090: .4byte 0x000131CC
_08025094: .4byte sub_0803B9D0
_08025098: .4byte 0x000131BE
_0802509C: .4byte 0x00013168
_080250A0: .4byte 0xFFFD8000
_080250A4:
	lsls r5, r5, #0x10
	asrs r0, r5, #0x10
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	subs r1, #0x20
	bl sub_08001C1C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080250C8
	adds r2, r7, #0
	adds r2, #0x46
	ldrh r0, [r2]
	adds r0, r1, r0
	movs r1, #0
	strh r0, [r2]
	str r1, [r7, #0x4c]
_080250C8:
	ldr r0, [r7, #0x48]
	cmp r0, #0
	ble _080250EC
	asrs r0, r5, #0x10
	adds r0, #8
	asrs r1, r4, #0x10
	subs r1, #0x10
	bl sub_08002058
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r7, #0x48]
	mov r4, sb
	subs r0, r0, r4
	str r0, [r7, #0x48]
	cmp r0, #0
	bgt _0802510E
	b _0802510A
_080250EC:
	cmp r0, #0
	bge _08025128
	asrs r0, r5, #0x10
	subs r0, #8
	asrs r1, r4, #0x10
	subs r1, #0x10
	bl sub_0800207C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r7, #0x48]
	add r0, sb
	str r0, [r7, #0x48]
	cmp r0, #0
	blt _0802510E
_0802510A:
	movs r0, #0
	str r0, [r7, #0x48]
_0802510E:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _08025128
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, r2, r0
	strh r0, [r1]
	ldr r0, [r7, #0x48]
	asrs r0, r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x48]
_08025128:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _08025178
	movs r0, #1
	strb r0, [r7, #0xf]
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_0802513C:
	ldrb r0, [r7, #0xd]
	adds r3, r0, #0
	cmp r3, #0
	bne _08025178
	ldr r0, _08025168 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0802516C @ =0x00013168
	adds r1, r2, r0
	ldr r4, _08025170 @ =0x00013110
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0x1a
	ldrsh r1, [r7, r0]
	lsls r1, r1, #2
	adds r4, #0x14
	adds r0, r2, r4
	adds r0, r0, r1
	str r3, [r0]
	ldr r0, _08025174 @ =0x000131BE
	adds r2, r2, r0
	b _080251C2
	.align 2, 0
_08025168: .4byte gEwramData
_0802516C: .4byte 0x00013168
_08025170: .4byte 0x00013110
_08025174: .4byte 0x000131BE
_08025178:
	subs r0, #1
	strb r0, [r7, #0xd]
_0802517C:
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806D128
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bne _08025196
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080251DC
_08025196:
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080251D0 @ =gEwramData
	ldr r2, [r0]
	ldr r3, _080251D4 @ =0x00013168
	adds r1, r2, r3
	ldr r4, _080251D8 @ =0x00013110
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r1]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	subs r3, #0x44
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	adds r4, #0xae
	adds r2, r2, r4
_080251C2:
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl EntityDelete
	b _080251E2
	.align 2, 0
_080251D0: .4byte gEwramData
_080251D4: .4byte 0x00013168
_080251D8: .4byte 0x00013110
_080251DC:
	adds r0, r7, #0
	bl sub_0803F17C
_080251E2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SkillNemesisUse
SkillNemesisUse: @ 0x080251F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x14]
	mov sb, r0
	ldrb r4, [r7, #0xa]
	cmp r4, #1
	beq _080252A0
	cmp r4, #1
	bgt _0802520E
	cmp r4, #0
	beq _08025214
	b _08025324
_0802520E:
	cmp r4, #2
	beq _080252D6
	b _08025324
_08025214:
	ldr r1, _080252B0 @ =0x080E13BC
	adds r1, #0xfc
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r1, _080252B4 @ =gEwramData
	mov r8, r1
	ldr r1, [r1]
	ldr r2, _080252B8 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _080252B8 @ =0x000131CC
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, _080252BC @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xf
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	mov r0, r8
	ldr r1, [r0]
	ldr r2, _080252C0 @ =0x000131BE
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x97
	bl PlaySong
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _080252C4 @ =0x00013168
	adds r0, r0, r2
	str r4, [r0]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r7, #0x24]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_080252A0:
	ldrh r1, [r7, #0x24]
	movs r4, #0x24
	ldrsh r0, [r7, r4]
	cmp r0, #0
	beq _080252C8
	subs r0, r1, #1
	strh r0, [r7, #0x24]
	b _08025324
	.align 2, 0
_080252B0: .4byte 0x080E13BC
_080252B4: .4byte gEwramData
_080252B8: .4byte 0x000131CC
_080252BC: .4byte sub_0803B9D0
_080252C0: .4byte 0x000131BE
_080252C4: .4byte 0x00013168
_080252C8:
	movs r0, #1
	strb r0, [r7, #0xf]
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
_080252D6:
	ldrb r0, [r7, #0xd]
	adds r3, r0, #0
	cmp r3, #0
	bne _08025320
	ldr r0, _08025310 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _08025314 @ =0x00013168
	adds r1, r2, r0
	ldr r4, _08025318 @ =0x00013110
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0x1a
	ldrsh r1, [r7, r0]
	lsls r1, r1, #2
	adds r4, #0x14
	adds r0, r2, r4
	adds r0, r0, r1
	str r3, [r0]
	ldr r0, _0802531C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl EntityDelete
	b _08025352
	.align 2, 0
_08025310: .4byte gEwramData
_08025314: .4byte 0x00013168
_08025318: .4byte 0x00013110
_0802531C: .4byte 0x000131BE
_08025320:
	subs r0, #1
	strb r0, [r7, #0xd]
_08025324:
	ldrb r0, [r7, #0xb]
	cmp r0, #0x1d
	bhi _0802532E
	adds r0, #1
	strb r0, [r7, #0xb]
_0802532E:
	ldrb r0, [r7, #0xb]
	movs r3, #8
	rsbs r3, r3, #0
	subs r3, r3, r0
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl sub_08031EA4
	adds r0, r7, #0
	bl sub_0803F17C
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_08025352:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SkillStudentWitchUse
SkillStudentWitchUse: @ 0x08025360
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov sb, r0
	ldrb r7, [r6, #0xa]
	cmp r7, #1
	beq _08025454
	cmp r7, #1
	bgt _0802537E
	cmp r7, #0
	beq _0802538C
	b _080254F4
_0802537E:
	cmp r7, #2
	bne _08025384
	b _080254B0
_08025384:
	cmp r7, #3
	bne _0802538A
	b _080254C2
_0802538A:
	b _080254F4
_0802538C:
	ldr r0, _08025490 @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0x30
	ldr r0, [r0, #0x30]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r1, _08025494 @ =gEwramData
	mov r8, r1
	ldr r1, [r1]
	ldr r2, _08025498 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, r8
	ldr r0, [r3]
	ldr r1, _08025498 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	movs r4, #0
	bl RandomNumberGenerator
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	bne _080253DC
	movs r4, #1
_080253DC:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, _0802549C @ =sub_0803B9D0
	str r0, [r6, #4]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r6, #0
	mov r1, sb
	movs r2, #8
	bl sub_08031EA4
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x54]
	str r7, [r6, #0x4c]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _080254A0 @ =0x1018F0F4
	adds r0, r6, #0
	bl sub_08042884
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	movs r1, #0xa
	bl sub_08042A54
	mov r2, r8
	ldr r1, [r2]
	ldr r3, _080254A4 @ =0x000131BE
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
_08025454:
	ldr r1, _080254A8 @ =0xFFFE0000
	ldr r2, _080254AC @ =0x084F12BC
	adds r0, r6, #0
	movs r3, #8
	bl sub_0806CAF8
	adds r4, r0, #0
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080254F4
	ldrb r0, [r6, #0xb]
	cmp r0, #0
	bne _0802547A
	movs r0, #1
	strb r0, [r6, #0xb]
	movs r0, #0xd0
	bl PlaySong
_0802547A:
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq _080254F4
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0x10
	strb r0, [r6, #0xd]
	movs r0, #1
	strb r0, [r6, #0xf]
	b _080254F4
	.align 2, 0
_08025490: .4byte 0x080E13BC
_08025494: .4byte gEwramData
_08025498: .4byte 0x000131CC
_0802549C: .4byte sub_0803B9D0
_080254A0: .4byte 0x1018F0F4
_080254A4: .4byte 0x000131BE
_080254A8: .4byte 0xFFFE0000
_080254AC: .4byte 0x084F12BC
_080254B0:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080254BC
	subs r0, #1
	strb r0, [r6, #0xd]
	b _080254F4
_080254BC:
	movs r0, #3
	strb r0, [r6, #0xa]
	b _080254F4
_080254C2:
	ldr r0, _080254E8 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r6, r1]
	lsls r0, r0, #2
	ldr r3, _080254EC @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _080254F0 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r6, #0
	bl EntityDelete
	b _08025534
	.align 2, 0
_080254E8: .4byte gEwramData
_080254EC: .4byte 0x00013124
_080254F0: .4byte 0x000131BE
_080254F4:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	adds r3, r6, #0
	adds r3, #0x59
	cmp r0, #0
	bne _0802550E
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08025526
_0802550E:
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	movs r0, #3
	strb r0, [r6, #0xa]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_08025526:
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	adds r0, r6, #0
	bl sub_0803F17C
_08025534:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08025540
sub_08025540: @ 0x08025540
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r7, #0
	movs r0, #7
	mov r8, r0
_0802554E:
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _0802560C @ =sub_0802DA98
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _08025600
	ldr r0, _08025610 @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r4, #0
	ldr r1, _08025614 @ =0x0820ED60
	movs r3, #6
	bl sub_0803B924
	ldr r0, _08025618 @ =sub_0803B9D0
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	bl RandomNumberGenerator
	movs r1, #1
	ands r0, r1
	adds r0, #0x40
	adds r1, r4, #0
	adds r1, #0x65
	strb r0, [r1]
	bl RandomNumberGenerator
	mov r1, r8
	ands r0, r1
	adds r1, r6, #0
	adds r1, #0x42
	subs r0, #4
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	bl RandomNumberGenerator
	mov r1, r8
	ands r0, r1
	adds r1, r6, #0
	adds r1, #0x46
	subs r0, #4
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	bl RandomNumberGenerator
	movs r5, #0xff
	ands r0, r5
	lsls r0, r0, #8
	str r0, [r4, #0x48]
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080255DA
	ldr r0, [r4, #0x48]
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
_080255DA:
	bl RandomNumberGenerator
	ands r0, r5
	lsls r0, r0, #8
	ldr r1, _0802561C @ =0xFFFF0000
	subs r1, r1, r0
	str r1, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r7, #1
	cmp r7, #3
	ble _0802554E
_08025600:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802560C: .4byte sub_0802DA98
_08025610: .4byte 0x081C15F4
_08025614: .4byte 0x0820ED60
_08025618: .4byte sub_0803B9D0
_0802561C: .4byte 0xFFFF0000

	thumb_func_start sub_08025620
sub_08025620: @ 0x08025620
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0x80
	lsls r4, r4, #0xc
	adds r1, r4, #0
	bl sub_0806D430
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806D460
	adds r0, r5, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08025646
	movs r0, #1
	strb r0, [r5, #0xa]
_08025646:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08025656
	movs r0, #1
	strb r0, [r5, #0xa]
_08025656:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08025668
	movs r0, #1
	strb r0, [r5, #0xa]
_08025668:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _080256A0
	ldr r0, _08025694 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	lsls r0, r0, #2
	ldr r3, _08025698 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802569C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r5, #0
	bl EntityDelete
	b _080256A6
	.align 2, 0
_08025694: .4byte gEwramData
_08025698: .4byte 0x00013124
_0802569C: .4byte 0x000131BE
_080256A0:
	adds r0, r5, #0
	bl sub_0803F17C
_080256A6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080256AC
sub_080256AC: @ 0x080256AC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	ldrh r1, [r6, #0x1e]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _0802576C @ =0x084F12C8
	adds r7, r0, r1
	ldr r1, _08025770 @ =sub_08025620
	adds r0, r6, #0
	bl sub_08023530
	adds r5, r0, #0
	cmp r5, #0
	beq _08025762
	mov r4, sp
	adds r0, r6, #0
	movs r1, #1
	mov r2, sp
	bl sub_0806C3F8
	ldr r2, _08025774 @ =0x080E13BC
	ldrb r1, [r7, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #8
	adds r0, r0, r2
	ldr r1, [r0]
	ldr r0, _08025778 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _0802577C @ =0x000131CC
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r5, #0
	movs r3, #2
	bl sub_0803B924
	ldr r0, _08025780 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0xd
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
	adds r2, r6, #0
	adds r2, #0x42
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldrh r2, [r2]
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	subs r0, #4
	adds r2, r5, #0
	adds r2, #0x46
	strh r0, [r2]
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r5, #0
	bl sub_0803F17C
	movs r0, #0xa
	strb r0, [r5, #0xd]
_08025762:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802576C: .4byte 0x084F12C8
_08025770: .4byte sub_08025620
_08025774: .4byte 0x080E13BC
_08025778: .4byte gEwramData
_0802577C: .4byte 0x000131CC
_08025780: .4byte sub_0803B9D0

	thumb_func_start Skill_Skeleton_ZombieSoldier_RockArmor_WaiterSkeleton_GiantSkeleton_BomberArmor_Use
Skill_Skeleton_ZombieSoldier_RockArmor_WaiterSkeleton_GiantSkeleton_BomberArmor_Use: @ 0x08025784
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	ldrh r0, [r7, #0x1e]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _080257B8 @ =0x084F12C8
	adds r1, r1, r0
	str r1, [sp, #8]
	ldr r0, [r7, #0x14]
	mov sl, r0
	ldrb r0, [r7, #0xa]
	cmp r0, #4
	bls _080257AC
	b _08025EDC
_080257AC:
	lsls r0, r0, #2
	ldr r1, _080257BC @ =_080257C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080257B8: .4byte 0x084F12C8
_080257BC: .4byte _080257C0
_080257C0: @ jump table
	.4byte _080257D4 @ case 0
	.4byte _08025A28 @ case 1
	.4byte _08025E20 @ case 2
	.4byte _08025E52 @ case 3
	.4byte _08025ECC @ case 4
_080257D4:
	ldr r1, [sp, #8]
	ldrb r0, [r1, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08025860 @ =0x080E13BC
	adds r1, r1, r0
	ldr r2, [sp, #8]
	ldrb r2, [r2, #0xf]
	mov r8, r2
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r3, _08025864 @ =gEwramData
	mov sb, r3
	ldr r1, [r3]
	ldr r2, _08025868 @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	mov r1, r8
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r3, sb
	ldr r0, [r3]
	ldr r1, _08025868 @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r7, #0
	mov r1, sl
	movs r2, #8
	bl sub_08031EA4
	ldr r2, [sp, #8]
	ldrh r1, [r2, #0x12]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080258A4
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _08025870
	mov r3, sb
	ldr r0, [r3]
	movs r2, #0x1a
	ldrsh r1, [r7, r2]
	lsls r1, r1, #2
	ldr r3, _0802586C @ =0x00013124
	adds r0, r0, r3
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	b _08025EAC
	.align 2, 0
_08025860: .4byte 0x080E13BC
_08025864: .4byte gEwramData
_08025868: .4byte 0x000131CC
_0802586C: .4byte 0x00013124
_08025870:
	adds r2, r7, #0
	adds r2, #0x58
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	adds r3, r7, #0
	adds r3, #0x59
	ldrb r0, [r3]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [sp, #8]
	ldrh r3, [r0, #0x14]
	strh r3, [r7, #0x2e]
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080258A4
	rsbs r0, r3, #0
	strh r0, [r7, #0x2e]
_080258A4:
	ldr r2, [sp, #8]
	ldrh r1, [r2, #0x12]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080258BE
	ldrb r1, [r2, #0xe]
	adds r0, r7, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	b _080258C8
_080258BE:
	ldr r3, [sp, #8]
	ldrb r0, [r3, #0xd]
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
_080258C8:
	ldr r0, _08025940 @ =sub_0803B9D0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r5, #0
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, [sp, #8]
	ldr r2, [r0]
	str r2, [r7, #0x24]
	str r2, [r7, #0x48]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080258F0
	rsbs r0, r2, #0
	str r0, [r7, #0x48]
_080258F0:
	ldr r1, [sp, #8]
	ldr r0, [r1, #4]
	str r0, [r7, #0x4c]
	ldr r0, [r1, #8]
	str r0, [r7, #0x54]
	adds r1, r7, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r4, #2
	orrs r0, r4
	strb r0, [r1]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	ldr r2, _08025944 @ =sub_0802DACC
	adds r0, r7, #0
	movs r1, #5
	movs r3, #0
	bl sub_0804277C
	ldr r2, [sp, #8]
	ldrh r1, [r2, #0x12]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _0802594C
	ldr r1, _08025948 @ =0x2838E2E4
	adds r0, r7, #0
	bl sub_08042884
	adds r1, r7, #0
	adds r1, #0x72
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	movs r0, #0x50
	strb r0, [r7, #0xd]
	mov sl, r1
	b _080259B8
	.align 2, 0
_08025940: .4byte sub_0803B9D0
_08025944: .4byte sub_0802DACC
_08025948: .4byte 0x2838E2E4
_0802594C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080259AA
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _08025994 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r3, _08025998 @ =0x0001017C
	adds r1, r1, r3
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _0802599C
	adds r4, r7, #0
	adds r4, #0x72
	ldrb r1, [r4]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r4]
	adds r0, r7, #0
	adds r1, r2, #0
	bl sub_08042848
	mov sl, r4
	b _080259B8
	.align 2, 0
_08025994: .4byte gEwramData
_08025998: .4byte 0x0001017C
_0802599C:
	adds r1, r7, #0
	adds r1, #0x72
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	mov sl, r1
	b _080259B8
_080259AA:
	ldr r1, _08025A18 @ =0x1010F8F8
	adds r0, r7, #0
	bl sub_08042884
	movs r0, #0x72
	adds r0, r0, r7
	mov sl, r0
_080259B8:
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	movs r1, #0x1e
	bl sub_08042A54
	ldr r3, [sp, #8]
	ldrh r1, [r3, #0x12]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080259E4
	movs r0, #1
	movs r1, #0x28
	bl sub_08042A54
	movs r0, #0xc8
	strb r0, [r7, #0xd]
_080259E4:
	ldr r0, [sp, #8]
	ldrh r1, [r0, #0x12]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080259FA
	ldr r0, _08025A1C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08025A20 @ =0x00013168
	adds r0, r0, r1
	str r7, [r0]
_080259FA:
	ldr r2, [sp, #8]
	ldrh r0, [r2, #0x10]
	cmp r0, #0
	beq _08025A06
	bl PlaySong
_08025A06:
	ldr r0, _08025A1C @ =gEwramData
	ldr r1, [r0]
	ldr r3, _08025A24 @ =0x000131BE
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08025EDC
	.align 2, 0
_08025A18: .4byte 0x1010F8F8
_08025A1C: .4byte gEwramData
_08025A20: .4byte 0x00013168
_08025A24: .4byte 0x000131BE
_08025A28:
	ldr r0, [sp, #8]
	ldrh r1, [r0, #0x12]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _08025AA2
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08025B12
	adds r0, r7, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r7, #0
	adds r1, #0x46
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	bl sub_08045A98
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	subs r2, #0x18
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r4, #2
	strb r4, [r7, #0xd]
	strb r4, [r7, #0xa]
	movs r0, #0xd7
	bl PlaySong
	ldr r3, [sp, #8]
	ldrh r1, [r3, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08025B12
	movs r3, #0x80
	lsls r3, r3, #9
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	bl sub_0803D18C
	b _08025B12
_08025AA2:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08025B12
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bne _08025ABE
	movs r0, #1
	strb r0, [r7, #0xf]
_08025ABE:
	ldrb r1, [r7, #0xd]
	cmp r1, #0xf
	bhi _08025B08
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08025B08
	bl RandomNumberGenerator
	ldr r6, _08025B34 @ =0x0007FFFF
	ands r0, r6
	ldr r1, _08025B38 @ =0xFFFC0000
	adds r0, r0, r1
	ldr r4, [r7, #0x40]
	adds r4, r4, r0
	bl RandomNumberGenerator
	ands r0, r6
	ldr r2, _08025B38 @ =0xFFFC0000
	adds r0, r0, r2
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #4
	movs r3, #6
	bl sub_08045CEC
	adds r4, r0, #0
	cmp r4, #0
	beq _08025B08
	bl RandomNumberGenerator
	ldr r1, _08025B3C @ =0x000003FF
	ands r1, r0
	ldr r3, _08025B40 @ =0xFFFFE600
	adds r1, r1, r3
	str r1, [r4, #0x54]
_08025B08:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _08025B12
	movs r0, #3
	strb r0, [r7, #0xa]
_08025B12:
	ldr r0, [sp, #8]
	ldrh r1, [r0, #0x12]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08025BC6
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08025B48
	ldr r1, [r7, #0x24]
	rsbs r1, r1, #0
	ldr r2, _08025B44 @ =0x084F1388
	b _08025B4E
	.align 2, 0
_08025B34: .4byte 0x0007FFFF
_08025B38: .4byte 0xFFFC0000
_08025B3C: .4byte 0x000003FF
_08025B40: .4byte 0xFFFFE600
_08025B44: .4byte 0x084F1388
_08025B48:
	ldr r1, [r7, #0x24]
	rsbs r1, r1, #0
	ldr r2, _08025BA0 @ =0x084F139C
_08025B4E:
	adds r0, r7, #0
	movs r3, #0
	bl sub_0806CAF8
	adds r4, r0, #0
	movs r5, #3
	adds r0, r4, #0
	ands r0, r5
	cmp r0, #0
	beq _08025B66
	movs r0, #0
	str r0, [r7, #0x24]
_08025B66:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _08025BA4
	ldr r2, [sp, #8]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08025B88
	adds r0, r7, #0
	bl sub_08025540
	movs r0, #0xd3
	bl PlaySong
	strb r5, [r7, #0xa]
_08025B88:
	ldr r3, [sp, #8]
	ldrh r1, [r3, #0x12]
	movs r0, #0x84
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08025B98
	b _08025EDC
_08025B98:
	movs r0, #0
	str r0, [r7, #0x24]
	b _08025EDC
	.align 2, 0
_08025BA0: .4byte 0x084F139C
_08025BA4:
	ldr r0, [sp, #8]
	ldrh r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08025BB2
	b _08025EDC
_08025BB2:
	ldrb r1, [r7, #0xd]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08025BBE
	b _08025EDC
_08025BBE:
	adds r0, r7, #0
	bl sub_080256AC
	b _08025EDC
_08025BC6:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08025C34
	ldr r5, [r7, #0x4c]
	ldr r1, [r7, #0x24]
	rsbs r1, r1, #0
	ldr r2, _08025C28 @ =0x084F1388
	adds r0, r7, #0
	movs r3, #0
	bl sub_0806CAF8
	adds r4, r0, #0
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq _08025C02
	adds r3, r7, #0
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
_08025C02:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	bne _08025C0C
	b _08025EDC
_08025C0C:
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r5, r0
	ble _08025C30
	ldr r0, _08025C2C @ =0x0000011B
	bl PlaySong
	lsrs r0, r5, #0x1f
	adds r0, r5, r0
	asrs r0, r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x4c]
	b _08025EDC
	.align 2, 0
_08025C28: .4byte 0x084F1388
_08025C2C: .4byte 0x0000011B
_08025C30:
	str r6, [r7, #0x24]
	b _08025EDC
_08025C34:
	movs r4, #0x80
	lsls r4, r4, #0xc
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0806D430
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0806D460
	ldr r2, [sp, #8]
	ldrh r1, [r2, #0x12]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08025C58
	b _08025EDC
_08025C58:
	ldrh r0, [r7, #0x20]
	cmp r0, #0
	bne _08025C60
	b _08025EDC
_08025C60:
	ldr r3, [r7, #0x40]
	mov sb, r3
	ldr r0, [r7, #0x44]
	mov sl, r0
	ldr r2, _08025E00 @ =sub_0802D750
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _08025CDC
	ldr r1, _08025E04 @ =0x080E13BC
	adds r1, #0xcc
	ldr r0, [r1]
	ldr r2, [r1, #4]
	mov r8, r2
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _08025E08 @ =gEwramData
	ldr r1, [r4]
	ldr r3, _08025E0C @ =0x000131CC
	adds r1, r1, r3
	str r0, [r1]
	mov r0, r8
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r1, _08025E0C @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	mov r2, sb
	str r2, [r5, #0x40]
	mov r3, sl
	str r3, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_08025CDC:
	movs r0, #0xd2
	bl PlaySong
	movs r0, #0
	str r0, [sp, #0xc]
	adds r1, r7, #0
	adds r1, #0x58
	str r1, [sp, #0x18]
	movs r2, #0x72
	adds r2, r2, r7
	mov sl, r2
_08025CF2:
	bl RandomNumberGenerator
	movs r1, #1
	ands r1, r0
	ldr r3, [r7, #0x40]
	str r3, [sp, #0x10]
	ldr r0, [r7, #0x44]
	str r0, [sp, #0x14]
	adds r1, #0xa
	mov sb, r1
	movs r0, #0x49
	movs r1, #0xcf
	ldr r2, _08025E10 @ =sub_0802D880
	bl EntityCreateInRange
	adds r6, r0, #0
	cmp r6, #0
	beq _08025DE0
	ldr r1, _08025E14 @ =0x080E1488
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r2, [r1, #8]
	mov r8, r2
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r3, _08025E08 @ =gEwramData
	ldr r1, [r3]
	ldr r2, _08025E0C @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r3, _08025E08 @ =gEwramData
	ldr r0, [r3]
	ldr r1, _08025E0C @ =0x000131CC
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	mov r1, r8
	movs r3, #2
	bl sub_0803B924
	adds r0, r6, #0
	adds r0, #0x65
	mov r2, sb
	strb r2, [r0]
	ldr r0, _08025E18 @ =sub_0803B9D0
	str r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldr r3, [sp, #0x10]
	str r3, [r6, #0x40]
	ldr r0, [sp, #0x14]
	str r0, [r6, #0x44]
	adds r2, r6, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r4, r6, #0
	bl RandomNumberGenerator
	movs r1, #7
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x42
	subs r0, #4
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl RandomNumberGenerator
	movs r3, #7
	ands r0, r3
	adds r1, r4, #0
	adds r1, #0x46
	subs r0, #4
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bl RandomNumberGenerator
	movs r2, #0xff
	ands r2, r0
	subs r2, #0x80
	ldr r0, [r7, #0x48]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r2, r2, #9
	adds r0, r0, r2
	str r0, [r4, #0x48]
	bl RandomNumberGenerator
	ldr r1, _08025E1C @ =0xFFFF8000
	orrs r1, r0
	str r1, [r4, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r4, #0x54]
	ldr r0, [r7, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r4, #0x44]
	ldr r3, [sp, #0xc]
	adds r3, #1
	str r3, [sp, #0xc]
	cmp r3, #2
	ble _08025CF2
_08025DE0:
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #2
	orrs r0, r1
	mov r1, sl
	strb r0, [r1]
	ldr r2, [sp, #0x18]
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x20
	strb r0, [r7, #0xd]
	movs r0, #4
	b _08025EDA
	.align 2, 0
_08025E00: .4byte sub_0802D750
_08025E04: .4byte 0x080E13BC
_08025E08: .4byte gEwramData
_08025E0C: .4byte 0x000131CC
_08025E10: .4byte sub_0802D880
_08025E14: .4byte 0x080E1488
_08025E18: .4byte sub_0803B9D0
_08025E1C: .4byte 0xFFFF8000
_08025E20:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _08025ED2
	ldr r3, [sp, #8]
	ldrh r1, [r3, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08025E4A
	movs r3, #0x80
	lsls r3, r3, #7
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x1f
	movs r1, #0x1f
	movs r2, #0x1f
	bl sub_0803D18C
_08025E4A:
	movs r0, #0x10
	strb r0, [r7, #0xd]
	movs r0, #4
	b _08025EDA
_08025E52:
	bl sub_0803D270
	bl sub_0803CED4
	ldr r0, _08025EB4 @ =gEwramData
	ldr r0, [r0]
	ldr r2, _08025EB8 @ =0x00013168
	adds r1, r0, r2
	ldr r3, _08025EBC @ =0x00013110
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [sp, #8]
	ldrh r1, [r0, #0x12]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08025E8E
	adds r2, r7, #0
	adds r2, #0x58
	ldrh r1, [r2]
	ldr r0, _08025EC0 @ =0x0000101F
	ands r0, r1
	cmp r0, #0
	beq _08025E8E
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_08025E8E:
	ldr r0, _08025EB4 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _08025EC4 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _08025EC8 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_08025EAC:
	adds r0, r7, #0
	bl EntityDelete
	b _08025F5E
	.align 2, 0
_08025EB4: .4byte gEwramData
_08025EB8: .4byte 0x00013168
_08025EBC: .4byte 0x00013110
_08025EC0: .4byte 0x0000101F
_08025EC4: .4byte 0x00013124
_08025EC8: .4byte 0x000131BE
_08025ECC:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _08025ED8
_08025ED2:
	subs r0, #1
	strb r0, [r7, #0xd]
	b _08025EDC
_08025ED8:
	movs r0, #3
_08025EDA:
	strb r0, [r7, #0xa]
_08025EDC:
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806D128
	adds r5, r7, #0
	adds r5, #0x59
	cmp r0, #0
	bne _08025EF6
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08025F0E
_08025EF6:
	ldrb r0, [r5]
	movs r1, #4
	orrs r0, r1
	strb r0, [r5]
	movs r0, #3
	strb r0, [r7, #0xa]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_08025F0E:
	ldr r2, [sp, #8]
	ldrh r1, [r2, #0x12]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08025F44
	ldrh r0, [r7, #0x2e]
	ldrh r3, [r7, #0x2c]
	adds r0, r0, r3
	movs r4, #0
	strh r0, [r7, #0x2c]
	movs r1, #0x2c
	ldrsh r0, [r7, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r7, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_08025F44:
	ldrb r0, [r5]
	movs r1, #4
	orrs r0, r1
	strb r0, [r5]
	ldr r2, [sp, #8]
	ldrh r1, [r2, #0x12]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08025F5E
	adds r0, r7, #0
	bl sub_0803F17C
_08025F5E:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08025F70
sub_08025F70: @ 0x08025F70
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r6, #4
	orrs r0, r6
	strb r0, [r1]
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	bne _08025FBC
	ldr r0, _08025FB0 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	ldr r3, _08025FB4 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _08025FB8 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	bl EntityDelete
	b _08025FFC
	.align 2, 0
_08025FB0: .4byte gEwramData
_08025FB4: .4byte 0x00013124
_08025FB8: .4byte 0x000131BE
_08025FBC:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08025FEC
	movs r0, #1
	movs r1, #0x14
	bl sub_08042A54
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0804277C
	ldr r1, _08026004 @ =0x1010F8F8
	adds r0, r4, #0
	bl sub_08042884
	adds r1, r4, #0
	adds r1, #0x72
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0xa]
_08025FEC:
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x24]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r5, #0x28]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_08025FFC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026004: .4byte 0x1010F8F8

	thumb_func_start SkillWingedSkeletonUse
SkillWingedSkeletonUse: @ 0x08026008
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldrb r7, [r6, #0xa]
	cmp r7, #1
	bne _0802601C
	b _0802617A
_0802601C:
	cmp r7, #1
	bgt _0802602C
	cmp r7, #0
	beq _0802603A
	movs r0, #0x58
	adds r0, r0, r6
	mov r8, r0
	b _080262E8
_0802602C:
	cmp r7, #2
	bne _08026032
	b _080262C8
_08026032:
	cmp r7, #3
	bne _08026038
	b _080262EE
_08026038:
	b _080262E2
_0802603A:
	ldr r1, _080260A0 @ =0x080E13BC
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r2, _080260A4 @ =gEwramData
	mov sb, r2
	ldr r1, [r2]
	ldr r3, _080260A8 @ =0x000131CC
	adds r1, r1, r3
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	mov r1, sb
	ldr r0, [r1]
	ldr r2, _080260A8 @ =0x000131CC
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r6, #0
	adds r0, #0x65
	strb r7, [r0]
	movs r0, #0
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080260B0
	mov r3, sb
	ldr r1, [r3]
	movs r2, #0x1a
	ldrsh r0, [r6, r2]
	lsls r0, r0, #2
	ldr r3, _080260AC @ =0x00013124
	adds r1, r1, r3
	adds r1, r1, r0
	str r7, [r1]
	b _0802631A
	.align 2, 0
_080260A0: .4byte 0x080E13BC
_080260A4: .4byte gEwramData
_080260A8: .4byte 0x000131CC
_080260AC: .4byte 0x00013124
_080260B0:
	ldr r0, _08026104 @ =sub_0803B9D0
	str r0, [r6, #4]
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
	ldr r1, _08026108 @ =sub_08025F70
	adds r0, r6, #0
	bl sub_08023530
	mov r8, r0
	adds r7, r4, #0
	cmp r0, #0
	bne _08026110
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	mov r0, sb
	ldr r1, [r0]
	movs r2, #0x1a
	ldrsh r0, [r6, r2]
	lsls r0, r0, #2
	ldr r3, _0802610C @ =0x00013124
	adds r1, r1, r3
	adds r1, r1, r0
	mov r0, r8
	str r0, [r1]
	b _0802631A
	.align 2, 0
_08026104: .4byte sub_0803B9D0
_08026108: .4byte sub_08025F70
_0802610C: .4byte 0x00013124
_08026110:
	ldr r1, [r6, #0x14]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r6, #0
	movs r2, #8
	bl sub_08031EA4
	ldrb r0, [r7]
	movs r1, #2
	orrs r0, r1
	strb r0, [r7]
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	ldrb r0, [r6, #0xa]
	adds r0, #1
	strb r0, [r6, #0xa]
	movs r2, #0xf8
	lsls r2, r2, #8
	strh r2, [r6, #0x2c]
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r6, #0x2e]
	movs r4, #0x80
	lsls r4, r4, #0xb
	str r4, [r6, #0x48]
	ldr r0, _080261B0 @ =0xFFFEE000
	str r0, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x54]
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08026166
	rsbs r0, r2, #0
	strh r0, [r6, #0x2c]
	rsbs r0, r3, #0
	strh r0, [r6, #0x2e]
	rsbs r0, r4, #0
	str r0, [r6, #0x48]
_08026166:
	movs r0, #0xe4
	bl PlaySong
	mov r2, sb
	ldr r1, [r2]
	ldr r3, _080261B4 @ =0x000131BE
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802617A:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0806D128
	adds r7, r6, #0
	adds r7, #0x59
	cmp r0, #0
	bne _08026194
	ldrb r1, [r7]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080261B8
_08026194:
	ldrb r0, [r7]
	movs r1, #4
	orrs r0, r1
	strb r0, [r7]
	movs r0, #3
	strb r0, [r6, #0xa]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	mov r8, r2
	b _08026330
	.align 2, 0
_080261B0: .4byte 0xFFFEE000
_080261B4: .4byte 0x000131BE
_080261B8:
	ldrh r3, [r6, #0x2e]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _080261D4
	ldrh r2, [r6, #0x2c]
	movs r0, #0x2c
	ldrsh r1, [r6, r0]
	ldr r0, _080261D0 @ =0x00003FFF
	cmp r1, r0
	bgt _080261E6
	b _080261E2
	.align 2, 0
_080261D0: .4byte 0x00003FFF
_080261D4:
	ldrh r2, [r6, #0x2c]
	movs r0, #0x2c
	ldrsh r1, [r6, r0]
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	ble _080261E6
_080261E2:
	adds r0, r2, r3
	strh r0, [r6, #0x2c]
_080261E6:
	movs r1, #0x2c
	ldrsh r4, [r6, r1]
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	beq _080261FE
	ldr r2, _08026250 @ =0xFFFF8000
	adds r4, r4, r2
_080261FE:
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r4, r3
	bl sub_080009E4
	lsls r0, r0, #4
	str r0, [r6, #0x24]
	adds r0, r4, #0
	bl sub_080009E4
	lsls r0, r0, #4
	str r0, [r6, #0x28]
	movs r4, #0x80
	lsls r4, r4, #0xc
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0806D430
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0806D460
	ldr r0, _08026254 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08026258 @ =0x0000A09A
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r6, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
	ldr r0, [r6, #0x24]
	cmp r0, #0
	bge _0802625C
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r0, r1, r0
	b _08026260
	.align 2, 0
_08026250: .4byte 0xFFFF8000
_08026254: .4byte gEwramData
_08026258: .4byte 0x0000A09A
_0802625C:
	asrs r0, r0, #0x10
	adds r0, r1, r0
_08026260:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	ldr r0, _0802628C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08026290 @ =0x0000A09E
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r0, r6, #0
	adds r0, #0x46
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
	ldr r0, [r6, #0x28]
	cmp r0, #0
	bge _08026294
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	subs r0, r1, r0
	b _08026298
	.align 2, 0
_0802628C: .4byte gEwramData
_08026290: .4byte 0x0000A09E
_08026294:
	asrs r0, r0, #0x10
	adds r0, r1, r0
_08026298:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08026330
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001F3C
	cmp r0, #0
	bne _08026330
	movs r0, #2
	strb r0, [r6, #0xa]
	movs r0, #0x20
	strb r0, [r6, #0xd]
	b _08026330
_080262C8:
	movs r0, #1
	strb r0, [r6, #0xf]
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	beq _080262DE
	subs r0, #1
	strb r0, [r6, #0xd]
	movs r0, #0x58
	adds r0, r0, r6
	mov r8, r0
	b _080262E8
_080262DE:
	movs r0, #3
	strb r0, [r6, #0xa]
_080262E2:
	movs r1, #0x58
	adds r1, r1, r6
	mov r8, r1
_080262E8:
	adds r7, r6, #0
	adds r7, #0x59
	b _08026330
_080262EE:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	ldr r0, _08026324 @ =gEwramData
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r0, [r6, r3]
	lsls r0, r0, #2
	ldr r3, _08026328 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802632C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_0802631A:
	adds r0, r6, #0
	bl EntityDelete
	b _08026358
	.align 2, 0
_08026324: .4byte gEwramData
_08026328: .4byte 0x00013124
_0802632C: .4byte 0x000131BE
_08026330:
	ldrb r0, [r7]
	movs r1, #4
	orrs r0, r1
	strb r0, [r7]
	movs r1, #0x2c
	ldrsh r0, [r6, r1]
	movs r2, #0x80
	lsls r2, r2, #9
	mov r3, r8
	ldrb r1, [r3]
	lsls r3, r1, #0x19
	lsrs r3, r3, #0x1f
	movs r4, #0
	str r4, [sp]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	str r1, [sp, #4]
	adds r1, r2, #0
	bl sub_0803E058
_08026358:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SkillSirenUse
SkillSirenUse: @ 0x08026368
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	bne _08026378
	b _08026518
_08026378:
	cmp r0, #1
	bgt _08026382
	cmp r0, #0
	beq _0802638A
	b _080265A8
_08026382:
	cmp r0, #2
	bne _08026388
	b _08026574
_08026388:
	b _080265A8
_0802638A:
	bl RandomNumberGenerator
	mov r8, r0
	movs r0, #1
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldrh r0, [r7, #0x1e]
	cmp r0, #0
	bne _080263F0
	ldr r1, _080263E4 @ =0x080E13BC
	ldr r0, [r1]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _080263E8 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _080263EC @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _080263EC @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	mov r0, r8
	adds r0, #2
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	b _0802643C
	.align 2, 0
_080263E4: .4byte 0x080E13BC
_080263E8: .4byte gEwramData
_080263EC: .4byte 0x000131CC
_080263F0:
	ldr r0, _08026554 @ =0x080E13BC
	adds r1, r0, #0
	adds r1, #0x54
	ldr r0, [r0, #0x54]
	ldr r5, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r4, _08026558 @ =gEwramData
	ldr r1, [r4]
	ldr r2, _0802655C @ =0x000131CC
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r0, [r4]
	ldr r3, _0802655C @ =0x000131CC
	adds r0, r0, r3
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	mov r0, r8
	adds r0, #4
	adds r1, r7, #0
	adds r1, #0x65
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r7, #0x50]
_0802643C:
	ldr r1, _08026560 @ =0x084F13A6
	mov r2, r8
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl PlaySong
	ldr r0, _08026564 @ =sub_0803B9D0
	str r0, [r7, #4]
	ldr r1, [r7, #0x14]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r7, #0
	movs r2, #8
	bl sub_08031EA4
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0xd
	strb r0, [r1]
	subs r1, #3
	ldrb r0, [r1]
	movs r4, #2
	orrs r0, r4
	strb r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #9
	str r3, [r7, #0x48]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802648C
	rsbs r0, r3, #0
	str r0, [r7, #0x48]
	ldr r0, [r7, #0x50]
	rsbs r0, r0, #0
	str r0, [r7, #0x50]
_0802648C:
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	movs r0, #1
	movs r1, #0xa
	bl sub_08042A54
	ldr r2, _08026568 @ =sub_0802D9B4
	adds r0, r7, #0
	movs r1, #5
	movs r3, #0
	bl sub_0804277C
	ldr r1, _0802656C @ =0x0808FCFC
	adds r0, r7, #0
	bl sub_08042884
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08026558 @ =gEwramData
	ldr r1, [r0]
	ldr r3, _08026570 @ =0x000131BE
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bl RandomNumberGenerator
	strh r0, [r7, #0x24]
	ldrh r0, [r7, #0x1e]
	cmp r0, #0
	beq _08026518
	adds r0, r7, #0
	movs r1, #7
	bl sub_0802383C
	adds r2, r0, #0
	cmp r2, #0
	beq _080264FC
	movs r0, #1
	strb r0, [r2, #0xf]
	adds r2, #0x5a
	ldrb r1, [r2]
	subs r0, #8
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_080264FC:
	adds r0, r7, #0
	movs r1, #3
	bl sub_0802383C
	adds r2, r0, #0
	cmp r2, #0
	beq _08026518
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_08026518:
	movs r1, #0x24
	ldrsh r0, [r7, r1]
	bl sub_080009E4
	str r0, [r7, #0x4c]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	ldrh r3, [r7, #0x24]
	adds r0, r0, r3
	strh r0, [r7, #0x24]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r7, #0
	bl sub_0806D3D8
	ldrb r0, [r7, #0x18]
	cmp r0, #0
	beq _08026542
	movs r0, #2
	strb r0, [r7, #0xa]
_08026542:
	adds r0, r7, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _080265A8
	movs r0, #2
	strb r0, [r7, #0xa]
	b _080265A8
	.align 2, 0
_08026554: .4byte 0x080E13BC
_08026558: .4byte gEwramData
_0802655C: .4byte 0x000131CC
_08026560: .4byte 0x084F13A6
_08026564: .4byte sub_0803B9D0
_08026568: .4byte sub_0802D9B4
_0802656C: .4byte 0x0808FCFC
_08026570: .4byte 0x000131BE
_08026574:
	ldr r0, _0802659C @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _080265A0 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _080265A4 @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl EntityDelete
	b _080265B4
	.align 2, 0
_0802659C: .4byte gEwramData
_080265A0: .4byte 0x00013124
_080265A4: .4byte 0x000131BE
_080265A8:
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
_080265B4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start SkillUneUse
SkillUneUse: @ 0x080265C0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r5, [r7, #0x14]
	ldrb r0, [r7, #0xa]
	cmp r0, #4
	bls _080265CE
	b _08026810
_080265CE:
	lsls r0, r0, #2
	ldr r1, _080265D8 @ =_080265DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080265D8: .4byte _080265DC
_080265DC: @ jump table
	.4byte _080265F0 @ case 0
	.4byte _0802669A @ case 1
	.4byte _08026750 @ case 2
	.4byte _0802677A @ case 3
	.4byte _080267DC @ case 4
_080265F0:
	ldr r1, _0802670C @ =0x080E13BC
	ldr r0, [r1]
	ldr r4, [r1, #4]
	ldr r6, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	bl sub_0803B800
	ldr r2, _08026710 @ =gEwramData
	ldr r1, [r2]
	ldr r3, _08026714 @ =0x000131CC
	adds r1, r1, r3
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #2
	bl sub_0803C7B4
	ldr r1, _08026710 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _08026714 @ =0x000131CC
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #2
	bl sub_0803B924
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldr r0, _08026718 @ =sub_0803B9D0
	str r0, [r7, #4]
	movs r3, #0x1a
	rsbs r3, r3, #0
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #8
	bl sub_08031EA4
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r7, #0x24]
	ldr r0, _0802671C @ =0xFFFE8000
	str r0, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	adds r1, r7, #0
	adds r1, #0x59
	ldrb r0, [r1]
	movs r4, #2
	orrs r0, r4
	strb r0, [r1]
	ldrb r0, [r7, #0xa]
	adds r0, #1
	strb r0, [r7, #0xa]
	movs r0, #1
	movs r1, #0x14
	bl sub_08042A54
	ldr r2, _08026720 @ =sub_0802D9B4
	adds r0, r7, #0
	movs r1, #5
	movs r3, #0
	bl sub_0804277C
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	orrs r0, r4
	strb r0, [r2]
	ldr r3, _08026710 @ =gEwramData
	ldr r1, [r3]
	ldr r0, _08026724 @ =0x000131BE
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802669A:
	ldr r1, [r7, #0x24]
	rsbs r1, r1, #0
	ldr r2, _08026728 @ =0x084F13AA
	adds r0, r7, #0
	movs r3, #0
	bl sub_0806CAF8
	adds r2, r0, #0
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _080266BE
	ldr r0, [r7, #0x24]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r7, #0x24]
_080266BE:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	bne _080266C8
	b _08026810
_080266C8:
	movs r0, #0xe0
	bl PlaySong
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _08026710 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r2, _0802672C @ =0x0001017C
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _08026730
	adds r4, r7, #0
	adds r4, #0x72
	ldrb r1, [r4]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r4]
	adds r0, r7, #0
	adds r1, r2, #0
	bl sub_08042848
	b _0802673E
	.align 2, 0
_0802670C: .4byte 0x080E13BC
_08026710: .4byte gEwramData
_08026714: .4byte 0x000131CC
_08026718: .4byte sub_0803B9D0
_0802671C: .4byte 0xFFFE8000
_08026720: .4byte sub_0802D9B4
_08026724: .4byte 0x000131BE
_08026728: .4byte 0x084F13AA
_0802672C: .4byte 0x0001017C
_08026730:
	adds r0, r7, #0
	adds r0, #0x72
	ldrb r2, [r0]
	movs r1, #2
	orrs r1, r2
	strb r1, [r0]
	adds r4, r0, #0
_0802673E:
	ldrb r1, [r4]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r4]
	movs r0, #2
	strb r0, [r7, #0xa]
	movs r0, #0x80
	strb r0, [r7, #0xd]
	b _08026810
_08026750:
	ldrb r0, [r7, #0xd]
	subs r1, r0, #1
	strb r1, [r7, #0xd]
	ldrb r0, [r7, #0x18]
	cmp r0, #0
	bne _08026762
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08026810
_08026762:
	adds r0, r7, #0
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #3
	strb r0, [r7, #0xa]
	movs r0, #0xe8
	bl PlaySong
	b _08026810
_0802677A:
	adds r2, r7, #0
	adds r2, #0x64
	ldr r0, _080267B4 @ =gEwramData
	ldr r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r3, _080267B8 @ =0x0001017C
	adds r1, r1, r3
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r7, #0
	adds r0, #0x65
	ldrb r0, [r0]
	ldr r1, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _080267BC
	adds r2, #0xe
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_08042848
	b _080267C8
	.align 2, 0
_080267B4: .4byte gEwramData
_080267B8: .4byte 0x0001017C
_080267BC:
	adds r2, r7, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_080267C8:
	adds r0, r7, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	movs r2, #4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08026810
	strb r2, [r7, #0xa]
	b _08026810
_080267DC:
	ldr r0, _08026804 @ =gEwramData
	ldr r2, [r0]
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	ldr r3, _08026808 @ =0x00013124
	adds r1, r2, r3
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _0802680C @ =0x000131BE
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	bl EntityDelete
	b _08026850
	.align 2, 0
_08026804: .4byte gEwramData
_08026808: .4byte 0x00013124
_0802680C: .4byte 0x000131BE
_08026810:
	adds r0, r7, #0
	movs r1, #4
	bl sub_0806D128
	adds r3, r7, #0
	adds r3, #0x59
	cmp r0, #0
	bne _0802682A
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08026842
_0802682A:
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	movs r0, #4
	strb r0, [r7, #0xa]
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_08026842:
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	adds r0, r7, #0
	bl sub_0803F17C
_08026850:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

