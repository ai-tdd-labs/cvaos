	.include "asm/gba_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start sub_0809922C
sub_0809922C: @ 0x0809922C
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
	bgt _080992C2
	adds r0, r6, #0
	bl sub_080683BC
	movs r0, #0x72
	bl PlaySong
	ldrb r0, [r6, #0xb]
	cmp r0, #3
	bne _0809928E
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	b _0809929A
_0809928E:
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
_0809929A:
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
	movs r0, #1
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xb]
_080992C2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080992C8
sub_080992C8: @ 0x080992C8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r2, _08099364 @ =sub_0809937C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r0, _08099368 @ =0x100CF8FA
	str r0, [sp]
	cmp r4, #0
	beq _0809935A
	ldr r0, [r5, #0x40]
	adds r0, r0, r6
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r7
	str r0, [r4, #0x44]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0x14
	strb r0, [r1]
	ldr r0, _0809936C @ =0x081C15F4
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08099370 @ =0x0820ED60
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	ldr r3, _08099374 @ =sub_080993EC
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	bl sub_0804277C
	adds r0, r4, #0
	mov r1, sp
	bl sub_080428B4
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	str r5, [r4, #0x1c]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	subs r2, #0x3c
	strb r0, [r2]
	adds r2, #0x23
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08099378 @ =sub_08046100
	str r0, [r4, #4]
_0809935A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08099364: .4byte sub_0809937C
_08099368: .4byte 0x100CF8FA
_0809936C: .4byte 0x081C15F4
_08099370: .4byte 0x0820ED60
_08099374: .4byte sub_080993EC
_08099378: .4byte sub_08046100

	thumb_func_start sub_0809937C
sub_0809937C: @ 0x0809937C
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0809938E
	cmp r0, #1
	beq _08099398
	b _080993E4
_0809938E:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _080993E4
_08099398:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	ldrb r1, [r4, #0xd]
	cmp r1, #0x1e
	bls _080993CA
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080993CA
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r2, r4, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	subs r2, #1
	str r2, [sp]
	adds r2, r3, #0
	bl sub_0806D5C0
_080993CA:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080993E4
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_080993E4:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080993EC
sub_080993EC: @ 0x080993EC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x1c]
	ldrh r0, [r2, #4]
	bl sub_08021530
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	movs r0, #0x28
	strb r0, [r4, #0xd]
	cmp r5, #0
	beq _0809942A
	ldr r0, [r5]
	cmp r0, #0
	beq _0809942A
	adds r0, r5, #0
	adds r0, #0x36
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0809942A
	ldrh r0, [r5, #0xa]
	cmp r0, #0
	bne _0809942A
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
_0809942A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08099430
sub_08099430: @ 0x08099430
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08099468 @ =0x081CC04C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _08099478
	ldr r0, _0809946C @ =0x0820AB7C
	ldrh r1, [r4, #0x32]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08099470 @ =0x08223698
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08099474 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0809947A
	.align 2, 0
_08099468: .4byte 0x081CC04C
_0809946C: .4byte 0x0820AB7C
_08099470: .4byte 0x08223698
_08099474: .4byte sub_0803B9D0
_08099478:
	movs r0, #0
_0809947A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08099480
sub_08099480: @ 0x08099480
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080994AA
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080994AA
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_080994AA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080994B0
sub_080994B0: @ 0x080994B0
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

	thumb_func_start EnemyEctoplasmUpdate
EnemyEctoplasmUpdate: @ 0x080994E0
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08099516
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	bne _080995AE
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
	beq _08099516
	adds r0, r4, #0
	bl sub_08021924
_08099516:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806D128
	cmp r0, #0
	beq _08099530
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	b _0809953E
_08099530:
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0809953E:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0809954A
	adds r0, r4, #0
	bl sub_0806AE54
_0809954A:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _08099564
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08099564
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _080995AE
_08099564:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08099582
	cmp r0, #1
	bgt _08099574
	cmp r0, #0
	beq _0809957A
	b _080995A2
_08099574:
	cmp r0, #2
	beq _08099594
	b _080995A2
_0809957A:
	adds r0, r4, #0
	bl sub_08099690
	b _080995A2
_08099582:
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r4, #0
	bl sub_0806D3D8
	adds r0, r4, #0
	bl sub_0806AEAC
	b _080995A2
_08099594:
	adds r0, r4, #0
	bl sub_08099A3C
	adds r0, r4, #0
	bl sub_0803F17C
	b _080995AE
_080995A2:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_080995AE:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyEctoplasmCreate
EnemyEctoplasmCreate: @ 0x080995B8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, _080995D8 @ =gEwramData
	ldr r0, [r6]
	ldr r1, _080995DC @ =0x0000A094
	adds r5, r0, r1
	adds r0, r4, #0
	bl sub_080999F0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080995E0
	adds r0, r4, #0
	bl EntityDelete
	b _0809967E
	.align 2, 0
_080995D8: .4byte gEwramData
_080995DC: .4byte 0x0000A094
_080995E0:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, [r6]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809961C
	ldr r0, [r4, #0x40]
	ldr r1, [r5, #4]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x44]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r0, #2
	strb r0, [r4, #0xa]
	b _0809967E
_0809961C:
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #3
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _08099644
	ldr r2, _0809963C @ =sub_08099B30
	ldr r3, _08099640 @ =sub_080998E8
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _08099650
	.align 2, 0
_0809963C: .4byte sub_08099B30
_08099640: .4byte sub_080998E8
_08099644:
	ldr r2, _08099684 @ =sub_08099B30
	ldr r3, _08099688 @ =sub_080998E8
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_08099650:
	adds r0, r4, #0
	bl sub_0806B1FC
	movs r0, #0
	strb r0, [r4, #0xa]
	ldr r0, [r4, #0x40]
	ldr r1, [r5, #4]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x44]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0809968C @ =0xFFFFFF00
	str r0, [r4, #0x54]
	movs r0, #0x1e
	strb r0, [r4, #0xd]
_0809967E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08099684: .4byte sub_08099B30
_08099688: .4byte sub_080998E8
_0809968C: .4byte 0xFFFFFF00

	thumb_func_start sub_08099690
sub_08099690: @ 0x08099690
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, _080996B4 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _080996B8 @ =0x0000A094
	adds r1, r1, r0
	mov sb, r1
	ldrb r6, [r5, #0xb]
	cmp r6, #1
	beq _08099730
	cmp r6, #1
	bgt _080996BC
	cmp r6, #0
	beq _080996C4
	b _080998D6
	.align 2, 0
_080996B4: .4byte gEwramData
_080996B8: .4byte 0x0000A094
_080996BC:
	cmp r6, #2
	bne _080996C2
	b _080997FE
_080996C2:
	b _080998D6
_080996C4:
	mov r2, sb
	ldr r1, [r2, #4]
	ldr r0, [r5, #0x14]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x44]
	ldr r1, [r2, #8]
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	subs r4, r1, r0
	ldr r0, [r5, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, r4, r1
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5, #0x1c]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x5a
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x64
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xb4
	movs r3, #0xc8
	bl sub_0806CFFC
	cmp r0, #0
	bne _08099726
	b _080998D6
_08099726:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r6, [r5, #0xd]
	b _080998D6
_08099730:
	adds r1, r5, #0
	adds r1, #0x20
	ldrb r0, [r1]
	cmp r0, #0
	bne _08099798
	strb r6, [r1]
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xe
	bl __umodsi3
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r1, r1, r0
	mov r8, r1
	adds r0, r5, #0
	bl sub_0806CD38
	adds r4, r0, #0
	mov r2, sb
	ldr r7, [r2, #4]
	bl RandomNumberGenerator
	ands r6, r0
	cmp r6, #0
	bne _0809976C
	mov r1, r8
	subs r0, r4, r1
	b _08099770
_0809976C:
	mov r2, r8
	adds r0, r4, r2
_08099770:
	adds r0, r0, r7
	str r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_0806CD78
	adds r4, r0, #0
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xe
	bl __umodsi3
	subs r4, r4, r0
	mov r1, sb
	ldr r0, [r1, #8]
	ldr r2, _08099794 @ =0xFFF00000
	b _080997EE
	.align 2, 0
_08099794: .4byte 0xFFF00000
_08099798:
	movs r0, #0
	strb r0, [r1]
	bl RandomNumberGenerator
	movs r4, #0xc0
	lsls r4, r4, #0xe
	adds r1, r4, #0
	bl __umodsi3
	adds r0, r0, r4
	mov r8, r0
	adds r0, r5, #0
	bl sub_0806CD38
	adds r4, r0, #0
	mov r0, sb
	ldr r7, [r0, #4]
	bl RandomNumberGenerator
	ands r6, r0
	cmp r6, #0
	bne _080997CA
	mov r1, r8
	subs r0, r4, r1
	b _080997CE
_080997CA:
	mov r2, r8
	adds r0, r4, r2
_080997CE:
	adds r0, r0, r7
	str r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_0806CD78
	adds r4, r0, #0
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xe
	bl __umodsi3
	subs r4, r4, r0
	mov r1, sb
	ldr r0, [r1, #8]
	ldr r2, _08099824 @ =0xFFE00000
_080997EE:
	adds r0, r0, r2
	adds r4, r4, r0
	str r4, [r5, #0x18]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
_080997FE:
	ldr r0, [r5, #0x40]
	mov r2, sb
	ldr r1, [r2, #4]
	adds r0, r0, r1
	ldr r1, [r5, #0x14]
	subs r6, r1, r0
	ldr r0, [r5, #0x44]
	ldr r1, [r2, #8]
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	subs r4, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0xb
	cmp r6, r0
	ble _08099828
	movs r0, #0x80
	lsls r0, r0, #3
	b _0809983E
	.align 2, 0
_08099824: .4byte 0xFFE00000
_08099828:
	ldr r0, _08099834 @ =0xFFFC0000
	cmp r6, r0
	bge _0809983C
	ldr r0, _08099838 @ =0xFFFFFC00
	b _0809983E
	.align 2, 0
_08099834: .4byte 0xFFFC0000
_08099838: .4byte 0xFFFFFC00
_0809983C:
	movs r0, #0
_0809983E:
	str r0, [r5, #0x50]
	movs r0, #0x80
	lsls r0, r0, #0xb
	cmp r4, r0
	ble _0809984E
	movs r0, #0x80
	lsls r0, r0, #3
	b _08099862
_0809984E:
	ldr r0, _08099858 @ =0xFFFC0000
	cmp r4, r0
	bge _08099860
	ldr r0, _0809985C @ =0xFFFFFC00
	b _08099862
	.align 2, 0
_08099858: .4byte 0xFFFC0000
_0809985C: .4byte 0xFFFFFC00
_08099860:
	movs r0, #0
_08099862:
	str r0, [r5, #0x54]
	adds r0, r5, #0
	movs r1, #0x20
	bl sub_0806D490
	adds r0, r5, #0
	movs r1, #0x20
	bl sub_0806D4A8
	movs r7, #0x80
	lsls r7, r7, #9
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_0806D3D8
	bl sub_080212C8
	movs r1, #0xd8
	lsls r1, r1, #2
	ands r1, r0
	cmp r1, #0
	beq _080998A6
	adds r0, r5, #0
	movs r1, #0x20
	bl sub_0806D490
	adds r0, r5, #0
	movs r1, #0x20
	bl sub_0806D4A8
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_0806D3D8
_080998A6:
	adds r1, r6, #0
	cmp r1, #0
	bge _080998AE
	rsbs r1, r1, #0
_080998AE:
	ldr r2, _080998E4 @ =0x0003FFFF
	cmp r1, r2
	bgt _080998C4
	adds r0, r4, #0
	cmp r0, #0
	bge _080998BC
	rsbs r0, r0, #0
_080998BC:
	cmp r0, r2
	bgt _080998C4
	movs r0, #1
	strb r0, [r5, #0xb]
_080998C4:
	ldrb r0, [r5, #0xd]
	adds r1, r0, #1
	strb r1, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x77
	bls _080998D6
	movs r0, #1
	strb r0, [r5, #0xb]
_080998D6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080998E4: .4byte 0x0003FFFF

	thumb_func_start sub_080998E8
sub_080998E8: @ 0x080998E8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldrh r0, [r4, #4]
	bl sub_08021530
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
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
	adds r0, r7, #0
	movs r2, #0
	bl sub_08042B8C
	ldr r1, [r7, #0x40]
	ldr r0, [r5, #0x40]
	subs r6, r1, r0
	ldr r1, [r7, #0x44]
	ldr r0, [r5, #0x44]
	subs r5, r1, r0
	cmp r6, #0
	bge _0809993E
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _08099940
_0809993E:
	asrs r2, r6, #0x10
_08099940:
	cmp r5, #0
	bge _08099950
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _08099952
_08099950:
	asrs r1, r5, #0x10
_08099952:
	adds r0, r2, #0
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
	lsls r4, r4, #9
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0803E86C
	str r0, [r7, #0x48]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0803E86C
	str r0, [r7, #0x4c]
	movs r1, #0x34
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bgt _080999E8
	adds r0, r7, #0
	bl sub_080683BC
	movs r0, #0x6d
	bl PlaySong
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
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
	movs r2, #0
	movs r0, #0x28
	strb r0, [r7, #0xd]
	movs r0, #1
	strb r0, [r7, #0xa]
	strb r2, [r7, #0xb]
	subs r3, #1
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	str r2, [r7, #0x48]
	str r2, [r7, #0x4c]
	str r2, [r7, #0x50]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x54]
_080999E8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080999F0
sub_080999F0: @ 0x080999F0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08099A24 @ =0x081CC054
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _08099A34
	ldr r0, _08099A28 @ =0x0820ABE0
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _08099A2C @ =0x0822388C
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _08099A30 @ =sub_08099A90
	str r0, [r4, #4]
	movs r0, #1
	b _08099A36
	.align 2, 0
_08099A24: .4byte 0x081CC054
_08099A28: .4byte 0x0820ABE0
_08099A2C: .4byte 0x0822388C
_08099A30: .4byte sub_08099A90
_08099A34:
	movs r0, #0
_08099A36:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08099A3C
sub_08099A3C: @ 0x08099A3C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08099A88 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _08099A8C @ =0x0000A094
	adds r2, r0, r1
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _08099A80
	ldr r0, [r5, #0x14]
	ldr r1, [r2, #4]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	ldr r4, [r5, #0x18]
	ldr r0, [r2, #8]
	subs r4, r4, r0
	ldr r0, [r5, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r4, r4, r1
	str r4, [r5, #0x44]
	ldr r0, [r5, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
_08099A80:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08099A88: .4byte gEwramData
_08099A8C: .4byte 0x0000A094

	thumb_func_start sub_08099A90
sub_08099A90: @ 0x08099A90
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	bl sub_0803AC40
	ldr r0, _08099B1C @ =gEwramData
	mov r8, r0
	ldr r2, [r0]
	ldr r1, _08099B20 @ =0x0000A074
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08099ABE
	adds r0, r2, #0
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08099B12
_08099ABE:
	adds r0, r4, #0
	movs r1, #6
	bl sub_0806D128
	cmp r0, #0
	bne _08099B12
	bl RandomNumberGenerator
	ldr r1, _08099B24 @ =0x000FFFFF
	ands r1, r0
	ldr r0, _08099B28 @ =0xFFF80000
	adds r6, r1, r0
	bl RandomNumberGenerator
	ldr r1, _08099B2C @ =0x0007FFFF
	ands r1, r0
	rsbs r5, r1, #0
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0]
	movs r7, #7
	ands r0, r7
	cmp r0, #0
	bne _08099AFA
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #3
	bl sub_08099B60
_08099AFA:
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0]
	ands r0, r7
	cmp r0, #4
	bne _08099B12
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #9
	bl sub_08099B60
_08099B12:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08099B1C: .4byte gEwramData
_08099B20: .4byte 0x0000A074
_08099B24: .4byte 0x000FFFFF
_08099B28: .4byte 0xFFF80000
_08099B2C: .4byte 0x0007FFFF

	thumb_func_start sub_08099B30
sub_08099B30: @ 0x08099B30
	push {lr}
	sub sp, #0x10
	mov r2, sp
	adds r1, r0, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	movs r3, #0
	strh r1, [r2]
	movs r1, #0x80
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

	thumb_func_start sub_08099B60
sub_08099B60: @ 0x08099B60
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r0, _08099BF0 @ =sub_08099C08
	bl sub_0806DFF8
	adds r4, r0, #0
	cmp r4, #0
	beq _08099BE4
	ldr r0, [r5, #0x40]
	adds r0, r0, r6
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r7
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _08099BF4 @ =0x081CC054
	bl sub_0803AFB8
	adds r2, r0, #0
	ldr r1, _08099BF8 @ =0x0822388C
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	adds r0, #0x65
	mov r1, r8
	strb r1, [r0]
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
	ldr r0, _08099BFC @ =0xFFFF0000
	str r0, [r4, #0x4c]
	ldr r0, _08099C00 @ =0xFFFFFC00
	str r0, [r4, #0x54]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08099C04 @ =sub_0803B9D0
	str r0, [r4, #4]
_08099BE4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08099BF0: .4byte sub_08099C08
_08099BF4: .4byte 0x081CC054
_08099BF8: .4byte 0x0822388C
_08099BFC: .4byte 0xFFFF0000
_08099C00: .4byte 0xFFFFFC00
_08099C04: .4byte sub_0803B9D0

	thumb_func_start sub_08099C08
sub_08099C08: @ 0x08099C08
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #0xa
	bl sub_0806D3D8
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08099C44
	movs r0, #0
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x65
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	beq _08099C3C
	cmp r0, #0xd
	bne _08099C44
_08099C3C:
	adds r0, r4, #0
	bl EntityDelete
	b _08099C56
_08099C44:
	adds r0, r4, #0
	movs r1, #6
	bl sub_0806D128
	cmp r0, #0
	beq _08099C56
	adds r0, r4, #0
	bl EntityDelete
_08099C56:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start EnemyBiphronCreate
EnemyBiphronCreate: @ 0x08099C5C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0809A3D8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08099C72
	adds r0, r4, #0
	bl EntityDelete
	b _08099CE0
_08099C72:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r4, #0
	bl sub_0803F17C
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r0, _08099CA0 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08099CA4
	movs r0, #3
	b _08099CDE
	.align 2, 0
_08099CA0: .4byte gEwramData
_08099CA4:
	adds r0, r4, #0
	bl sub_0806D260
	cmp r0, #1
	ble _08099CC4
	ldr r2, _08099CBC @ =sub_0809A424
	ldr r3, _08099CC0 @ =sub_08099F50
	adds r0, r4, #0
	movs r1, #8
	bl sub_080427B8
	b _08099CD0
	.align 2, 0
_08099CBC: .4byte sub_0809A424
_08099CC0: .4byte sub_08099F50
_08099CC4:
	ldr r2, _08099CE8 @ =sub_0809A424
	ldr r3, _08099CEC @ =sub_08099F50
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
_08099CD0:
	adds r0, r4, #0
	bl sub_0806B1FC
	adds r0, r4, #0
	bl sub_0806AF98
	movs r0, #0
_08099CDE:
	strb r0, [r4, #0xa]
_08099CE0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08099CE8: .4byte sub_0809A424
_08099CEC: .4byte sub_08099F50

	thumb_func_start sub_08099CF0
sub_08099CF0: @ 0x08099CF0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _08099D02
	cmp r0, #1
	beq _08099D42
	b _08099DA8
_08099D02:
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
	beq _08099D2C
	movs r0, #0x80
	lsls r0, r0, #7
	b _08099D2E
_08099D2C:
	ldr r0, _08099DB0 @ =0xFFFFC000
_08099D2E:
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	ldrb r0, [r4, #0xb]
	adds r0, #1
	strb r0, [r4, #0xb]
_08099D42:
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _08099DB4 @ =0xFFE00000
	movs r3, #0x80
	lsls r3, r3, #0xc
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08069A00
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	beq _08099DA8
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08099DA8
	movs r5, #0
	strb r5, [r4, #0xd]
	strb r5, [r4, #0xb]
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	subs r0, #0x5a
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	subs r1, #0x64
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xb4
	movs r3, #0xc8
	bl sub_0806CFFC
	cmp r0, #0
	beq _08099DA8
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x2f
	bhi _08099DA8
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r5, [r4, #0xb]
_08099DA8:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08099DB0: .4byte 0xFFFFC000
_08099DB4: .4byte 0xFFE00000

	thumb_func_start sub_08099DB8
sub_08099DB8: @ 0x08099DB8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	beq _08099E30
	cmp r0, #1
	bgt _08099DCE
	cmp r0, #0
	beq _08099DD4
	b _08099EC6
_08099DCE:
	cmp r0, #2
	beq _08099E44
	b _08099EC6
_08099DD4:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #1
	bne _08099EC6
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	ldr r3, _08099E20 @ =0xFFFFA000
	adds r4, r5, #0
	adds r4, #0x5c
	ldrb r2, [r4]
	subs r2, #1
	str r2, [sp]
	movs r2, #0
	bl sub_0806D644
	bl RandomNumberGenerator
	ldr r1, _08099E24 @ =0x0007FFFF
	ands r1, r0
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	ldr r1, _08099E28 @ =0xFFFC0000
	adds r6, r0, r1
	ldr r2, [r5, #0x44]
	ldr r3, _08099E2C @ =0xFFFFC000
	ldrb r0, [r4]
	subs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r2, #0
	movs r2, #0
	bl sub_0806D644
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _08099EC6
	.align 2, 0
_08099E20: .4byte 0xFFFFA000
_08099E24: .4byte 0x0007FFFF
_08099E28: .4byte 0xFFFC0000
_08099E2C: .4byte 0xFFFFC000
_08099E30:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #6
	bne _08099EC6
	movs r0, #2
	strb r0, [r5, #0xb]
	movs r0, #0x50
	strb r0, [r5, #0xd]
	b _08099EC6
_08099E44:
	ldrb r1, [r5, #0xd]
	adds r4, r5, #0
	adds r4, #0x58
	cmp r1, #0x2f
	bls _08099E96
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08099E96
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	ldr r6, _08099ED0 @ =0xFFF80000
	cmp r0, #0
	beq _08099E66
	movs r6, #0x80
	lsls r6, r6, #0xc
_08099E66:
	bl RandomNumberGenerator
	ldr r2, [r5, #0x40]
	adds r2, r6, r2
	ldr r1, _08099ED4 @ =0x000FFFFF
	ands r1, r0
	adds r2, r2, r1
	ldr r1, _08099ED0 @ =0xFFF80000
	adds r6, r2, r1
	ldr r0, [r5, #0x44]
	adds r2, r0, r1
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r3, [r0]
	subs r3, #1
	movs r0, #4
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0809A340
	movs r0, #0x6e
	bl PlaySong
_08099E96:
	ldrb r0, [r5, #0xd]
	bl sub_0806D518
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	ldrb r2, [r4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldrb r0, [r5, #0xd]
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08099EC6
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
_08099EC6:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08099ED0: .4byte 0xFFF80000
_08099ED4: .4byte 0x000FFFFF

	thumb_func_start sub_08099ED8
sub_08099ED8: @ 0x08099ED8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _08099EE8
	cmp r0, #1
	beq _08099EFA
	b _08099F46
_08099EE8:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	ldrb r0, [r4, #0xb]
	adds r0, #1
	b _08099F44
_08099EFA:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r0, #4
	bne _08099F26
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _08099F4C @ =0xFFE60000
	cmp r0, #0
	beq _08099F18
	movs r1, #0xd0
	lsls r1, r1, #0xd
_08099F18:
	adds r0, r4, #0
	movs r2, #0
	bl sub_08099FD0
	movs r0, #0x78
	bl PlaySong
_08099F26:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08099F46
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0
	strb r0, [r4, #0xa]
_08099F44:
	strb r0, [r4, #0xb]
_08099F46:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08099F4C: .4byte 0xFFE60000

	thumb_func_start sub_08099F50
sub_08099F50: @ 0x08099F50
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
	movs r4, #0
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _08099FCA
	adds r0, r6, #0
	bl sub_080683BC
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
	strb r4, [r6, #0xd]
	movs r0, #2
	strb r0, [r6, #0xa]
	strb r4, [r6, #0xb]
_08099FCA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08099FD0
sub_08099FD0: @ 0x08099FD0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	ldr r2, _0809A0A8 @ =sub_0809A29C
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r5, r0, #0
	ldr r0, _0809A0AC @ =0x0E14F2FB
	str r0, [sp]
	cmp r5, #0
	beq _0809A0D0
	ldr r0, [r6, #0x40]
	adds r0, r0, r4
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	adds r0, r0, r7
	str r0, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, _0809A0B0 @ =0x081CC05C
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _0809A0B4 @ =0x08223FF8
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_0803B924
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	ldr r2, _0809A0B8 @ =sub_0809A310
	adds r0, r5, #0
	movs r1, #8
	movs r3, #0
	bl sub_0804277C
	adds r0, r5, #0
	mov r1, sp
	bl sub_08042848
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_0806AF98
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0809A0BC @ =sub_0803B9D0
	str r0, [r5, #4]
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
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809A0C0
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _0809A0C2
	.align 2, 0
_0809A0A8: .4byte sub_0809A29C
_0809A0AC: .4byte 0x0E14F2FB
_0809A0B0: .4byte 0x081CC05C
_0809A0B4: .4byte 0x08223FF8
_0809A0B8: .4byte sub_0809A310
_0809A0BC: .4byte sub_0803B9D0
_0809A0C0:
	ldr r0, _0809A0D8 @ =0xFFFE0000
_0809A0C2:
	str r0, [r5, #0x48]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r5, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x54]
_0809A0D0:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809A0D8: .4byte 0xFFFE0000

	thumb_func_start sub_0809A0DC
sub_0809A0DC: @ 0x0809A0DC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r2, _0809A184 @ =sub_0809A198
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0809A17C
	ldr r0, [r5, #0x40]
	adds r0, r0, r6
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	adds r0, r0, r7
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	ldr r0, _0809A188 @ =0x081CC05C
	bl sub_0803AFB8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _0809A18C @ =0x08223FF8
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	ldr r1, _0809A190 @ =0x08528124
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803F0E4
	adds r0, r4, #0
	bl sub_0803F17C
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	subs r2, #0x3c
	strb r0, [r2]
	adds r2, #0x23
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0809A194 @ =sub_0803B9D0
	str r0, [r4, #4]
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
_0809A17C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809A184: .4byte sub_0809A198
_0809A188: .4byte 0x081CC05C
_0809A18C: .4byte 0x08223FF8
_0809A190: .4byte 0x08528124
_0809A194: .4byte sub_0803B9D0

	thumb_func_start sub_0809A198
sub_0809A198: @ 0x0809A198
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x24
	adds r5, r0, #0
	bl RandomNumberGenerator
	movs r1, #1
	mov sb, r1
	adds r3, r5, #0
	adds r3, #0x58
	ands r0, r1
	lsls r0, r0, #6
	ldrb r2, [r3]
	subs r1, #0x42
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r0, #0x6e
	adds r0, r0, r5
	mov r8, r0
	ldr r7, _0809A270 @ =0x0000FFFF
	ldrh r0, [r0]
	cmp r0, #1
	bne _0809A20C
	bl RandomNumberGenerator
	ldr r4, _0809A274 @ =0x0007FFFF
	ands r0, r4
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	ldr r0, _0809A278 @ =0xFFFC0000
	adds r6, r1, r0
	bl RandomNumberGenerator
	ands r0, r4
	ldr r1, _0809A27C @ =0xFFF00000
	adds r0, r0, r1
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	ldr r3, _0809A280 @ =0xFFFFE000
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #7
	str r0, [sp, #0xc]
	movs r0, #0x18
	str r0, [sp, #0x10]
	adds r0, r6, #0
	movs r2, #0
	bl sub_0806D76C
_0809A20C:
	mov r1, r8
	ldrh r0, [r1]
	ands r7, r0
	ldr r0, _0809A284 @ =0x00000101
	cmp r7, r0
	bne _0809A258
	bl RandomNumberGenerator
	ldr r4, _0809A274 @ =0x0007FFFF
	ands r0, r4
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	ldr r0, _0809A278 @ =0xFFFC0000
	adds r6, r1, r0
	bl RandomNumberGenerator
	ands r0, r4
	ldr r1, _0809A27C @ =0xFFF00000
	adds r0, r0, r1
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	ldr r3, _0809A280 @ =0xFFFFE000
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #7
	str r0, [sp, #0xc]
	movs r0, #0x18
	str r0, [sp, #0x10]
	adds r0, r6, #0
	movs r2, #0
	bl sub_0806D76C
_0809A258:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0809A288
	adds r0, r5, #0
	bl EntityDelete
	b _0809A28E
	.align 2, 0
_0809A270: .4byte 0x0000FFFF
_0809A274: .4byte 0x0007FFFF
_0809A278: .4byte 0xFFFC0000
_0809A27C: .4byte 0xFFF00000
_0809A280: .4byte 0xFFFFE000
_0809A284: .4byte 0x00000101
_0809A288:
	adds r0, r5, #0
	bl sub_0803F17C
_0809A28E:
	add sp, #0x24
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809A29C
sub_0809A29C: @ 0x0809A29C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x42
	movs r0, #0
	ldrsh r6, [r5, r0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _0809A2DC @ =0xFFE00000
	adds r0, r4, #0
	bl sub_0806D288
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	beq _0809A2D2
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r6, r0
	beq _0809A2D2
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806D128
	cmp r0, #0
	beq _0809A2E0
_0809A2D2:
	adds r0, r4, #0
	bl EntityDelete
	b _0809A306
	.align 2, 0
_0809A2DC: .4byte 0xFFE00000
_0809A2E0:
	mov r0, sp
	adds r1, r4, #0
	bl sub_080421AC
	ldrb r1, [r4, #0xd]
	adds r0, r1, #1
	strb r0, [r4, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0809A306
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0809A0DC
	movs r0, #0x77
	bl PlaySong
_0809A306:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809A310
sub_0809A310: @ 0x0809A310
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

	thumb_func_start sub_0809A340
sub_0809A340: @ 0x0809A340
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r2, _0809A3C4 @ =sub_08068F78
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	beq _0809A3BA
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	movs r1, #0
	str r1, [r4, #0x48]
	ldr r0, _0809A3C8 @ =0xFFFF0000
	str r0, [r4, #0x4c]
	str r1, [r4, #0x50]
	str r1, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x5c
	strb r7, [r0]
	strb r1, [r4, #0xd]
	ldr r0, [sp, #0x18]
	strb r0, [r4, #0x18]
	ldr r0, _0809A3CC @ =0x081CC05C
	bl sub_0803AFB8
	adds r2, r0, #0
	mov r0, r8
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _0809A3D0 @ =0x08223FF8
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	adds r0, r4, #0
	movs r1, #4
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
	ldr r0, _0809A3D4 @ =sub_0803B9D0
	str r0, [r4, #4]
_0809A3BA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809A3C4: .4byte sub_08068F78
_0809A3C8: .4byte 0xFFFF0000
_0809A3CC: .4byte 0x081CC05C
_0809A3D0: .4byte 0x08223FF8
_0809A3D4: .4byte sub_0803B9D0

	thumb_func_start sub_0809A3D8
sub_0809A3D8: @ 0x0809A3D8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0809A40C @ =0x081CC05C
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0809A41C
	ldr r0, _0809A410 @ =0x0820AC04
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0809A414 @ =0x08223FF8
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _0809A418 @ =sub_0803B9D0
	str r0, [r4, #4]
	movs r0, #1
	b _0809A41E
	.align 2, 0
_0809A40C: .4byte 0x081CC05C
_0809A410: .4byte 0x0820AC04
_0809A414: .4byte 0x08223FF8
_0809A418: .4byte sub_0803B9D0
_0809A41C:
	movs r0, #0
_0809A41E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809A424
sub_0809A424: @ 0x0809A424
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

	thumb_func_start EnemyBiphronUpdate
EnemyBiphronUpdate: @ 0x0809A450
	push {r4, lr}
	sub sp, #0x30
	adds r4, r0, #0
	bl sub_0806CC20
	cmp r0, #0
	bne _0809A4A4
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0809A480
	cmp r0, #1
	bgt _0809A46E
	cmp r0, #0
	beq _0809A478
	b _0809A498
_0809A46E:
	cmp r0, #2
	beq _0809A488
	cmp r0, #3
	beq _0809A490
	b _0809A498
_0809A478:
	adds r0, r4, #0
	bl sub_08099CF0
	b _0809A498
_0809A480:
	adds r0, r4, #0
	bl sub_08099ED8
	b _0809A498
_0809A488:
	adds r0, r4, #0
	bl sub_08099DB8
	b _0809A498
_0809A490:
	adds r0, r4, #0
	bl sub_0803F17C
	b _0809A4A4
_0809A498:
	adds r0, r4, #0
	bl sub_0806DF20
	adds r0, r4, #0
	bl sub_0806E314
_0809A4A4:
	add sp, #0x30
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start EnemyStolasUpdate
EnemyStolasUpdate: @ 0x0809A4AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r7, r0, #0
	ldr r0, _0809A4FC @ =0x08119098
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x38]
	str r1, [sp, #0x3c]
	movs r0, #0
	strb r0, [r7, #0x18]
	ldr r4, [r7, #0x1c]
	movs r0, #3
	strh r0, [r7, #0x26]
	adds r3, r4, #0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r4, r0
_0809A4CE:
	ldr r1, [r2]
	cmp r1, #0
	beq _0809A500
	ldr r0, [r1]
	cmp r0, #0
	beq _0809A500
	adds r0, r1, #0
	adds r0, #0x36
	ldrb r1, [r0]
	movs r5, #0x96
	lsls r5, r5, #1
	adds r0, r3, r5
	ldr r0, [r0]
	cmp r1, r0
	bne _0809A500
	movs r1, #0x34
	ldrsh r0, [r7, r1]
	cmp r0, #0
	ble _0809A500
	ldrh r0, [r7, #0x26]
	subs r0, #1
	strh r0, [r7, #0x26]
	b _0809A504
	.align 2, 0
_0809A4FC: .4byte 0x08119098
_0809A500:
	movs r0, #0
	str r0, [r2]
_0809A504:
	adds r3, #4
	adds r2, #4
	adds r0, r4, #0
	adds r0, #8
	cmp r3, r0
	ble _0809A4CE
	ldrb r0, [r7, #0xa]
	cmp r0, #2
	beq _0809A540
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r3, #0x88
	lsls r3, r3, #1
	movs r0, #0xb0
	str r0, [sp]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08068AD4
	cmp r0, #0
	beq _0809A534
	adds r0, r7, #0
	bl sub_08021924
_0809A534:
	ldrb r0, [r7, #0xa]
	cmp r0, #2
	beq _0809A540
	adds r0, r7, #0
	bl sub_0806AE54
_0809A540:
	adds r0, r7, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _0809A550
	ldrb r0, [r7, #0xa]
	cmp r0, #2
	bne _0809A63E
_0809A550:
	ldrb r0, [r7, #0xa]
	cmp r0, #1
	beq _0809A572
	cmp r0, #1
	bgt _0809A560
	cmp r0, #0
	beq _0809A56A
	b _0809A63E
_0809A560:
	cmp r0, #2
	beq _0809A57A
	cmp r0, #3
	beq _0809A630
	b _0809A63E
_0809A56A:
	adds r0, r7, #0
	bl sub_0809AA48
	b _0809A63E
_0809A572:
	adds r0, r7, #0
	bl sub_0809AF14
	b _0809A63E
_0809A57A:
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0809A5A2
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	ldr r2, _0809A624 @ =0xFFDA0000
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #0xd
	movs r3, #0xc0
	lsls r3, r3, #0xc
	adds r4, r7, #0
	adds r4, #0x5c
	ldrb r4, [r4]
	subs r4, #1
	str r4, [sp]
	bl sub_0806D5C0
_0809A5A2:
	ldrb r1, [r7, #0xd]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0809A5DA
	bl RandomNumberGenerator
	movs r6, #0xc0
	lsls r6, r6, #0xb
	adds r1, r6, #0
	bl __umodsi3
	adds r4, r0, #0
	ldr r5, _0809A628 @ =0xFFFD0000
	adds r4, r4, r5
	bl RandomNumberGenerator
	adds r1, r6, #0
	bl __umodsi3
	adds r0, r0, r5
	ldr r2, _0809A62C @ =0xFFE30000
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0
	adds r3, r4, #0
	bl sub_0809C224
_0809A5DA:
	ldrb r0, [r7, #0xd]
	bl sub_0806D518
	adds r3, r7, #0
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
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	adds r2, r7, #0
	adds r2, #0x59
	cmp r0, #0
	bgt _0809A60E
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0809A60E:
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0809A636
	ldr r0, [r7, #0x1c]
	cmp r0, #0
	beq _0809A636
	bl sub_0806C250
	b _0809A636
	.align 2, 0
_0809A624: .4byte 0xFFDA0000
_0809A628: .4byte 0xFFFD0000
_0809A62C: .4byte 0xFFE30000
_0809A630:
	adds r0, r7, #0
	bl sub_0809C530
_0809A636:
	adds r0, r7, #0
	bl sub_0803F17C
	b _0809A6B8
_0809A63E:
	ldr r1, _0809A69C @ =0xFFFFFF00
	ldr r0, [sp, #0x34]
	ands r0, r1
	ldr r1, _0809A6A0 @ =0xFFFF00FF
	ands r0, r1
	movs r1, #0xb8
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, _0809A6A4 @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #0xc
	orrs r0, r1
	ldr r1, _0809A6A8 @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0x90
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [sp, #0x34]
	add r4, sp, #0x34
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08042848
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080428B4
	ldrb r1, [r7, #0x18]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809A6AC
	add r4, sp, #0x38
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F0E4
	ldrb r0, [r7, #0x19]
	strb r0, [r4, #4]
	adds r0, r7, #0
	bl sub_0803F17C
	b _0809A6B2
	.align 2, 0
_0809A69C: .4byte 0xFFFFFF00
_0809A6A0: .4byte 0xFFFF00FF
_0809A6A4: .4byte 0xFF00FFFF
_0809A6A8: .4byte 0x00FFFFFF
_0809A6AC:
	adds r0, r7, #0
	bl sub_0803F17C
_0809A6B2:
	adds r0, r7, #0
	bl sub_0806E314
_0809A6B8:
	add sp, #0x40
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start EnemyStolasCreate
EnemyStolasCreate: @ 0x0809A6C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r7, r0, #0
	ldr r1, _0809A8A0 @ =0x081190A0
	add r0, sp, #8
	movs r2, #6
	bl memcpy
	add r0, sp, #0x10
	mov r8, r0
	ldr r1, _0809A8A4 @ =0x081190A6
	movs r2, #6
	bl memcpy
	add r6, sp, #0x18
	ldr r4, _0809A8A8 @ =0x081190AC
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #6
	bl memcpy
	add r5, sp, #0x20
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #6
	bl memcpy
	adds r0, r7, #0
	bl sub_0809C4E4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809A70C
	b _0809A9E6
_0809A70C:
	movs r0, #0x4e
	bl sub_0806C2CC
	str r0, [r7, #0x1c]
	cmp r0, #0
	bne _0809A71A
	b _0809A9E6
_0809A71A:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	adds r0, r7, #0
	bl sub_0803F17C
	adds r2, r7, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r4, r7, #0
	adds r4, #0x20
	movs r0, #5
	strb r0, [r4]
	adds r0, r7, #0
	bl sub_0806B04C
	mov r1, sp
	adds r1, #8
	str r1, [sp, #0x28]
	ldr r2, [r7, #0x1c]
	mov sb, r2
	movs r3, #0
	mov sl, r3
	str r4, [sp, #0x2c]
_0809A758:
	mov r0, sp
	add r0, sl
	adds r0, #0x18
	movs r6, #0
	ldrsb r6, [r0, r6]
	ldr r0, _0809A8AC @ =sub_0809B9D4
	bl sub_0806DFF8
	adds r5, r0, #0
	cmp r5, #0
	bne _0809A770
	b _0809A8D0
_0809A770:
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r0, _0809A8B0 @ =0x081CC064
	movs r1, #0
	bl sub_0803B800
	adds r2, r0, #0
	adds r4, r7, #0
	adds r4, #0x2c
	ldrb r3, [r4]
	adds r0, r5, #0
	ldr r1, _0809A8B4 @ =0x08225224
	bl sub_0803B924
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	movs r0, #0x59
	adds r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	movs r2, #3
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	mov r3, r8
	strb r0, [r3]
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r0, [r4]
	subs r2, #0x1e
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r4]
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldr r0, _0809A8B8 @ =sub_0803B9D0
	str r0, [r5, #4]
	str r7, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x20
	strb r6, [r0]
	mov r0, sp
	adds r0, r0, r6
	adds r0, #0x10
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x21
	strb r0, [r1]
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r5, #0x44]
	ldr r3, [sp, #0x28]
	adds r0, r3, r6
	ldrb r0, [r0]
	adds r1, #0x44
	strb r0, [r1]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0809A814
	b _0809A9E0
_0809A814:
	movs r0, #0x1f
	ands r2, r0
	ldrb r0, [r4]
	movs r3, #0x20
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	mov r1, r8
	ldrb r0, [r1]
	movs r1, #0x10
	orrs r0, r1
	mov r2, r8
	strb r0, [r2]
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
	movs r1, #0x80
	lsls r1, r1, #9
	adds r2, r1, #0
	bl sub_0803E058
	ldr r0, _0809A8BC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0809A86C
	adds r0, r5, #0
	movs r1, #8
	ldr r2, _0809A8C0 @ =sub_0809C3D8
	ldr r3, _0809A8C4 @ =sub_0809C41C
	bl sub_0804277C
_0809A86C:
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #4
	add r0, sb
	str r5, [r0, #0x2c]
	movs r3, #1
	add sl, r3
	mov r5, sl
	cmp r5, #5
	bgt _0809A882
	b _0809A758
_0809A882:
	ldr r0, [r7, #0x1c]
	mov sb, r0
	ldr r0, _0809A8C8 @ =0x08528148
	ldr r2, [sp, #0x2c]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #2
	adds r0, r1, r0
	ldr r3, [r0]
	ldr r0, _0809A8CC @ =0x085281A8
	adds r1, r1, r0
	ldr r4, [r1]
	movs r6, #0
	b _0809A8D8
	.align 2, 0
_0809A8A0: .4byte 0x081190A0
_0809A8A4: .4byte 0x081190A6
_0809A8A8: .4byte 0x081190AC
_0809A8AC: .4byte sub_0809B9D4
_0809A8B0: .4byte 0x081CC064
_0809A8B4: .4byte 0x08225224
_0809A8B8: .4byte sub_0803B9D0
_0809A8BC: .4byte gEwramData
_0809A8C0: .4byte sub_0809C3D8
_0809A8C4: .4byte sub_0809C41C
_0809A8C8: .4byte 0x08528148
_0809A8CC: .4byte 0x085281A8
_0809A8D0:
	ldr r0, [r7, #0x1c]
	bl sub_0806C250
	b _0809A9E6
_0809A8D8:
	lsls r1, r6, #1
	adds r0, r1, r6
	lsls r0, r0, #4
	mov r5, sb
	adds r2, r0, r5
	adds r1, r1, r3
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r2]
	movs r0, #1
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	str r0, [r2, #4]
	cmp r6, #2
	bne _0809A8FE
	ldr r0, [r4]
	str r0, [r5, #0x68]
	b _0809A912
_0809A8FE:
	cmp r6, #5
	bne _0809A90C
	mov r1, sb
	adds r1, #0xf8
	ldr r0, [r4, #4]
	str r0, [r1]
	b _0809A912
_0809A90C:
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r2, #8]
_0809A912:
	adds r6, #1
	cmp r6, #5
	ble _0809A8D8
	movs r0, #0
	mov r8, r0
	movs r6, #1
	strb r6, [r7, #0xd]
	movs r3, #0x94
	lsls r3, r3, #9
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	bl sub_0809B7F0
	movs r3, #0x98
	lsls r3, r3, #9
	movs r4, #0xd0
	lsls r4, r4, #0xc
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_0809B7F0
	movs r3, #0xa0
	lsls r3, r3, #9
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_0809B7F0
	movs r3, #0xa8
	lsls r3, r3, #9
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	bl sub_0809B7F0
	adds r0, r7, #0
	add r1, sp, #0x20
	bl sub_0809C324
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0809B6B0
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	movs r3, #0
	bl sub_0809B6B0
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	movs r3, #0
	bl sub_0809B6B0
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	movs r3, #0
	bl sub_0809B6B0
	strb r6, [r7, #0xd]
	adds r0, r7, #0
	add r1, sp, #0x20
	bl sub_0809C324
	ldr r0, _0809A9D8 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _0809A9EE
	movs r0, #3
	strb r0, [r7, #0xa]
	mov r1, r8
	strb r1, [r7, #0xd]
	mov r2, r8
	strh r2, [r7, #0x14]
	ldr r0, _0809A9DC @ =0x0000FFE3
	strh r0, [r7, #0x16]
	b _0809AA2C
	.align 2, 0
_0809A9D8: .4byte gEwramData
_0809A9DC: .4byte 0x0000FFE3
_0809A9E0:
	adds r0, r5, #0
	bl EntityDelete
_0809A9E6:
	adds r0, r7, #0
	bl EntityDelete
	b _0809AA2C
_0809A9EE:
	ldr r2, _0809AA3C @ =sub_0809C534
	ldr r3, _0809AA40 @ =sub_0809C564
	adds r0, r7, #0
	movs r1, #8
	bl sub_0804277C
	adds r0, r7, #0
	bl sub_0809B660
	adds r0, r7, #0
	bl sub_0806AF98
	movs r1, #0
	strh r4, [r7, #0x14]
	ldr r0, _0809AA44 @ =0x0000FFE3
	strh r0, [r7, #0x16]
	strh r6, [r7, #0x22]
	movs r3, #0x30
	ldrsh r0, [r7, r3]
	cmp r0, #0
	bne _0809AA1C
	movs r0, #0xd
	strh r0, [r7, #0x30]
_0809AA1C:
	movs r5, #0x32
	ldrsh r0, [r7, r5]
	cmp r0, #0
	bne _0809AA28
	movs r0, #0x52
	strh r0, [r7, #0x32]
_0809AA28:
	strb r1, [r7, #0xa]
	strb r1, [r7, #0xb]
_0809AA2C:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809AA3C: .4byte sub_0809C534
_0809AA40: .4byte sub_0809C564
_0809AA44: .4byte 0x0000FFE3

	thumb_func_start sub_0809AA48
sub_0809AA48: @ 0x0809AA48
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r0, _0809AA78 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0809AA7C @ =0x0000A094
	adds r5, r0, r1
	ldr r1, _0809AA80 @ =0x081190AC
	add r0, sp, #4
	movs r2, #6
	bl memcpy
	ldrb r0, [r6, #0xb]
	cmp r0, #6
	bls _0809AA6E
	b _0809AF02
_0809AA6E:
	lsls r0, r0, #2
	ldr r1, _0809AA84 @ =_0809AA88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809AA78: .4byte gEwramData
_0809AA7C: .4byte 0x0000A094
_0809AA80: .4byte 0x081190AC
_0809AA84: .4byte _0809AA88
_0809AA88: @ jump table
	.4byte _0809AAA4 @ case 0
	.4byte _0809AB40 @ case 1
	.4byte _0809ABD8 @ case 2
	.4byte _0809AC14 @ case 3
	.4byte _0809ACA6 @ case 4
	.4byte _0809AD4C @ case 5
	.4byte _0809AD88 @ case 6
_0809AAA4:
	adds r0, r6, #0
	bl sub_0809B660
	adds r0, r6, #0
	movs r1, #0xa0
	movs r2, #0xa0
	bl sub_0806E29C
	cmp r0, #0
	bne _0809AAC4
	adds r0, r6, #0
	bl sub_0806D54C
	cmp r0, #0
	bne _0809AAC4
	b _0809AF02
_0809AAC4:
	movs r0, #0
	movs r4, #1
	strb r4, [r6, #0xb]
	strb r0, [r6, #0xc]
	movs r0, #0x24
	strb r0, [r6, #0xd]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r6, #0
	adds r0, #0x20
	strb r4, [r0]
	movs r3, #0xa4
	lsls r3, r3, #9
	movs r4, #0x80
	lsls r4, r4, #0xc
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	bl sub_0809B7F0
	movs r3, #0xb4
	lsls r3, r3, #9
	movs r5, #0xd0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #1
	bl sub_0809B7F0
	movs r3, #0x98
	lsls r3, r3, #9
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #4
	movs r2, #3
	bl sub_0809B7F0
	movs r3, #0x9c
	lsls r3, r3, #9
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #5
	movs r2, #4
	bl sub_0809B7F0
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0809AB3A
	b _0809AEEC
_0809AB3A:
	ldrb r1, [r6, #0xd]
	adds r0, r5, #0
	b _0809AEF0
_0809AB40:
	adds r0, r6, #0
	add r1, sp, #4
	bl sub_0809C324
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0809ABD4 @ =0xFFD00000
	adds r0, r6, #0
	bl sub_0806D288
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0809AB62
	b _0809AF02
_0809AB62:
	movs r0, #0x10
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	movs r3, #0xa0
	lsls r3, r3, #9
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	bl sub_0809B7F0
	movs r3, #0xa8
	lsls r3, r3, #9
	movs r4, #0xd0
	lsls r4, r4, #0xc
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #1
	bl sub_0809B7F0
	movs r3, #0x94
	lsls r3, r3, #9
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #4
	movs r2, #3
	bl sub_0809B7F0
	movs r3, #0x98
	lsls r3, r3, #9
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #5
	movs r2, #4
	bl sub_0809B7F0
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0809ABCC
	b _0809AD3C
_0809ABCC:
	ldrb r1, [r6, #0xd]
	movs r0, #0x80
	lsls r0, r0, #0xb
	b _0809AD40
	.align 2, 0
_0809ABD4: .4byte 0xFFD00000
_0809ABD8:
	adds r0, r6, #0
	add r1, sp, #4
	bl sub_0809C324
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0809AC10 @ =0xFFD00000
	adds r0, r6, #0
	bl sub_0806D288
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _0809ABFC
	b _0809AF02
_0809ABFC:
	movs r0, #0xa
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	b _0809AF02
	.align 2, 0
_0809AC10: .4byte 0xFFD00000
_0809AC14:
	adds r0, r6, #0
	add r1, sp, #4
	bl sub_0809C324
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0809AC2A
	b _0809AF02
_0809AC2A:
	movs r0, #0x24
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	movs r3, #0x98
	lsls r3, r3, #9
	movs r4, #0x80
	lsls r4, r4, #0xc
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	bl sub_0809B7F0
	movs r3, #0x9c
	lsls r3, r3, #9
	movs r5, #0xd0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #1
	bl sub_0809B7F0
	movs r3, #0xa4
	lsls r3, r3, #9
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #4
	movs r2, #3
	bl sub_0809B7F0
	movs r3, #0xb4
	lsls r3, r3, #9
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #5
	movs r2, #4
	bl sub_0809B7F0
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0809ACA0
	b _0809AEEC
_0809ACA0:
	ldrb r1, [r6, #0xd]
	adds r0, r5, #0
	b _0809AEF0
_0809ACA6:
	adds r0, r6, #0
	add r1, sp, #4
	bl sub_0809C324
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0809AD38 @ =0xFFD00000
	adds r0, r6, #0
	bl sub_0806D288
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0809ACC8
	b _0809AF02
_0809ACC8:
	movs r0, #0x10
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	movs r3, #0x94
	lsls r3, r3, #9
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	bl sub_0809B7F0
	movs r3, #0x98
	lsls r3, r3, #9
	movs r4, #0xd0
	lsls r4, r4, #0xc
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #1
	bl sub_0809B7F0
	movs r3, #0xa0
	lsls r3, r3, #9
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #4
	movs r2, #3
	bl sub_0809B7F0
	movs r3, #0xa8
	lsls r3, r3, #9
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #5
	movs r2, #4
	bl sub_0809B7F0
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809AD3C
	ldrb r1, [r6, #0xd]
	movs r0, #0x80
	lsls r0, r0, #0xb
	b _0809AD40
	.align 2, 0
_0809AD38: .4byte 0xFFD00000
_0809AD3C:
	ldrb r1, [r6, #0xd]
	ldr r0, _0809AD48 @ =0xFFFC0000
_0809AD40:
	bl __divsi3
	str r0, [r6, #0x48]
	b _0809AF02
	.align 2, 0
_0809AD48: .4byte 0xFFFC0000
_0809AD4C:
	adds r0, r6, #0
	add r1, sp, #4
	bl sub_0809C324
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _0809AD84 @ =0xFFD00000
	adds r0, r6, #0
	bl sub_0806D288
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _0809AD70
	b _0809AF02
_0809AD70:
	movs r0, #0xa
	strb r0, [r6, #0xd]
	ldrb r0, [r6, #0xb]
	adds r0, #1
	strb r0, [r6, #0xb]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #6
	strb r0, [r1]
	b _0809AF02
	.align 2, 0
_0809AD84: .4byte 0xFFD00000
_0809AD88:
	adds r0, r6, #0
	add r1, sp, #4
	bl sub_0809C324
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0809AD9E
	b _0809AF02
_0809AD9E:
	adds r0, r6, #0
	bl sub_0809B660
	movs r4, #0
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	beq _0809ADCA
	adds r0, r6, #0
	movs r1, #0x14
	bl sub_0806D188
	cmp r0, #2
	bne _0809ADDE
	adds r0, r6, #0
	bl sub_0809C34C
	b _0809AE78
_0809ADCA:
	adds r0, r6, #0
	movs r1, #0x14
	bl sub_0806D188
	cmp r0, #1
	bne _0809ADDE
	adds r0, r6, #0
	bl sub_0809C34C
	movs r4, #1
_0809ADDE:
	cmp r4, #0
	bne _0809AE78
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x3f
	bhi _0809AE50
	movs r4, #0x30
	movs r2, #0x42
	adds r2, r2, r6
	mov r8, r2
	adds r7, r6, #0
	adds r7, #0x46
_0809ADFA:
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809AE12
	ldrh r0, [r5, #6]
	mov r1, r8
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r0, r0, r4
	b _0809AE1C
_0809AE12:
	ldrh r0, [r5, #6]
	mov r1, r8
	ldrh r1, [r1]
	adds r0, r0, r1
	subs r0, r0, r4
_0809AE1C:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5, #0xa]
	ldrh r2, [r7]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0806D0B8
	cmp r0, #0
	beq _0809AE38
	subs r4, #8
	cmp r4, #0
	bgt _0809ADFA
_0809AE38:
	strh r4, [r6, #0x24]
	cmp r4, #0
	blt _0809AE78
	movs r1, #0x26
	ldrsh r0, [r6, r1]
	cmp r0, #0
	ble _0809AE78
	movs r0, #1
	strb r0, [r6, #0xa]
	movs r0, #0
	strb r0, [r6, #0xb]
	b _0809AF02
_0809AE50:
	adds r0, r6, #0
	bl sub_0806CDB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0
	bge _0809AE6A
	rsbs r0, r0, #0
_0809AE6A:
	cmp r0, #0x1f
	bgt _0809AE78
	movs r0, #1
	strb r0, [r6, #0xa]
	movs r0, #0xa
	strb r0, [r6, #0xb]
	b _0809AF02
_0809AE78:
	movs r0, #0x24
	strb r0, [r6, #0xd]
	movs r4, #1
	strb r4, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r6, #0
	adds r0, #0x20
	strb r4, [r0]
	movs r3, #0xa4
	lsls r3, r3, #9
	movs r4, #0x80
	lsls r4, r4, #0xc
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	bl sub_0809B7F0
	movs r3, #0xb4
	lsls r3, r3, #9
	movs r5, #0xd0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #2
	movs r2, #1
	bl sub_0809B7F0
	movs r3, #0x98
	lsls r3, r3, #9
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #4
	movs r2, #3
	bl sub_0809B7F0
	movs r3, #0x9c
	lsls r3, r3, #9
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #5
	movs r2, #4
	bl sub_0809B7F0
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809AEEC
	ldrb r1, [r6, #0xd]
	adds r0, r5, #0
	b _0809AEF0
_0809AEEC:
	ldrb r1, [r6, #0xd]
	ldr r0, _0809AF10 @ =0xFFF30000
_0809AEF0:
	bl __divsi3
	str r0, [r6, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r6, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r6, #0x54]
_0809AF02:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809AF10: .4byte 0xFFF30000

	thumb_func_start sub_0809AF14
sub_0809AF14: @ 0x0809AF14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r7, r0, #0
	ldr r1, _0809AF40 @ =0x081190AC
	add r0, sp, #4
	movs r2, #6
	bl memcpy
	ldrb r0, [r7, #0xb]
	cmp r0, #0xe
	bls _0809AF34
	b _0809B464
_0809AF34:
	lsls r0, r0, #2
	ldr r1, _0809AF44 @ =_0809AF48
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809AF40: .4byte 0x081190AC
_0809AF44: .4byte _0809AF48
_0809AF48: @ jump table
	.4byte _0809AF84 @ case 0
	.4byte _0809AFAA @ case 1
	.4byte _0809B03C @ case 2
	.4byte _0809B464 @ case 3
	.4byte _0809B464 @ case 4
	.4byte _0809B464 @ case 5
	.4byte _0809B464 @ case 6
	.4byte _0809B464 @ case 7
	.4byte _0809B464 @ case 8
	.4byte _0809B464 @ case 9
	.4byte _0809B238 @ case 10
	.4byte _0809B2BC @ case 11
	.4byte _0809B2E4 @ case 12
	.4byte _0809B374 @ case 13
	.4byte _0809B3BE @ case 14
_0809AF84:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xd]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _0809B030 @ =0xFFF40000
	cmp r0, #0
	beq _0809AFA2
	movs r1, #0xc0
	lsls r1, r1, #0xc
_0809AFA2:
	ldr r2, _0809B034 @ =0xFFD20000
	adds r0, r7, #0
	bl sub_0809BD5C
_0809AFAA:
	ldrb r1, [r7, #0x18]
	movs r0, #1
	adds r2, r0, #0
	orrs r2, r1
	strb r2, [r7, #0x18]
	movs r0, #0xd
	strb r0, [r7, #0x19]
	ldrb r0, [r7, #0xd]
	adds r1, r0, #1
	strb r1, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _0809AFC8
	b _0809B464
_0809AFC8:
	movs r0, #0
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0xfe
	ands r2, r0
	strb r2, [r7, #0x18]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	movs r0, #0x24
	ldrsh r1, [r7, r0]
	adds r0, r7, #0
	movs r2, #1
	bl sub_0809BF7C
	movs r2, #0x24
	ldrsh r1, [r7, r2]
	movs r2, #0x1f
	rsbs r2, r2, #0
	adds r0, r7, #0
	bl sub_0809BF7C
	movs r0, #0x24
	ldrsh r1, [r7, r0]
	movs r2, #0x3f
	rsbs r2, r2, #0
	adds r0, r7, #0
	bl sub_0809BF7C
	movs r2, #0x24
	ldrsh r1, [r7, r2]
	movs r2, #0x5f
	rsbs r2, r2, #0
	adds r0, r7, #0
	bl sub_0809BF7C
	movs r0, #0x24
	ldrsh r1, [r7, r0]
	movs r2, #0x7f
	rsbs r2, r2, #0
	adds r0, r7, #0
	bl sub_0809BF7C
	ldr r0, _0809B038 @ =0x0000011F
	bl PlaySong
	b _0809B464
	.align 2, 0
_0809B030: .4byte 0xFFF40000
_0809B034: .4byte 0xFFD20000
_0809B038: .4byte 0x0000011F
_0809B03C:
	ldrb r0, [r7, #0xd]
	adds r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x49
	bne _0809B056
	movs r2, #0x24
	ldrsh r1, [r7, r2]
	adds r0, r7, #0
	movs r2, #1
	bl sub_0809C0C8
_0809B056:
	ldrb r0, [r7, #0xd]
	adds r1, r7, #0
	adds r1, #0x59
	str r1, [sp, #0x1c]
	cmp r0, #0x70
	beq _0809B064
	b _0809B182
_0809B064:
	ldr r2, _0809B090 @ =EntityUpdateNothing
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r4, r0, #0
	cmp r4, #0
	bne _0809B076
	b _0809B182
_0809B076:
	ldr r6, [r7, #0x1c]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x1f
	bhi _0809B09A
	movs r2, #0x32
	ldrsh r0, [r7, r2]
	cmp r0, #0
	blt _0809B094
	adds r5, r0, #0
	b _0809B09E
	.align 2, 0
_0809B090: .4byte EntityUpdateNothing
_0809B094:
	movs r1, #0x30
	ldrsh r5, [r7, r1]
	b _0809B09E
_0809B09A:
	movs r2, #0x30
	ldrsh r5, [r7, r2]
_0809B09E:
	movs r3, #0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [r1]
	movs r2, #0x58
	adds r2, r2, r7
	mov sb, r2
	movs r2, #0x42
	adds r2, r2, r7
	mov ip, r2
	movs r2, #0x42
	adds r2, r2, r4
	mov r8, r2
	adds r2, r7, #0
	adds r2, #0x46
	str r2, [sp, #0x14]
	adds r2, r4, #0
	adds r2, #0x46
	str r2, [sp, #0x18]
	movs r2, #0x58
	adds r2, r2, r4
	mov sl, r2
	adds r2, r4, #0
	adds r2, #0x59
	str r2, [sp, #0x20]
	subs r2, #0x22
	str r2, [sp, #0x10]
	subs r2, #1
	str r2, [sp, #0xc]
	lsls r2, r5, #3
	str r2, [sp, #0x24]
	adds r2, r7, #0
	adds r2, #0x59
	str r2, [sp, #0x1c]
	cmp r0, #0
	bne _0809B0F2
	str r4, [r1]
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r6, r1
	b _0809B110
_0809B0F2:
	adds r3, #1
	cmp r3, #2
	bgt _0809B112
	lsls r0, r3, #2
	adds r2, r0, r6
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _0809B0F2
	str r4, [r1]
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r2, r1
_0809B110:
	str r5, [r0]
_0809B112:
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809B128
	mov r1, ip
	ldrh r0, [r1]
	ldrh r2, [r7, #0x24]
	adds r0, r0, r2
	b _0809B130
_0809B128:
	ldrh r1, [r7, #0x24]
	mov r2, ip
	ldrh r0, [r2]
	subs r0, r0, r1
_0809B130:
	mov r1, r8
	strh r0, [r1]
	ldr r2, [sp, #0x14]
	ldrh r0, [r2]
	movs r3, #0
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	mov r2, sb
	ldrb r0, [r2]
	movs r1, #0x40
	ands r1, r0
	mov r0, sl
	ldrb r2, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, sl
	strb r0, [r1]
	ldr r2, [sp, #0x20]
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [sp, #0x10]
	strb r3, [r0]
	ldr r1, [sp, #0xc]
	strb r5, [r1]
	ldr r2, _0809B214 @ =sub_0803B9D0
	str r2, [r4, #4]
	ldr r1, [sp, #0x24]
	adds r0, r1, r5
	lsls r0, r0, #2
	ldr r2, _0809B218 @ =0x080E9644
	adds r0, r0, r2
	ldr r1, [r0, #4]
	str r1, [r4]
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_0809B182:
	ldr r0, [sp, #0x1c]
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0809B192
	b _0809B464
_0809B192:
	movs r0, #0
	strb r0, [r7, #0xa]
	movs r0, #0x24
	strb r0, [r7, #0xd]
	strb r4, [r7, #0xb]
	ldrb r1, [r7, #0x18]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r7, #0x18]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0803F2C8
	adds r0, r7, #0
	adds r0, #0x20
	strb r4, [r0]
	movs r3, #0xa4
	lsls r3, r3, #9
	movs r4, #0x80
	lsls r4, r4, #0xc
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	bl sub_0809B7F0
	movs r3, #0xb4
	lsls r3, r3, #9
	movs r5, #0xd0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_0809B7F0
	movs r3, #0x98
	lsls r3, r3, #9
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_0809B7F0
	movs r3, #0x9c
	lsls r3, r3, #9
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	bl sub_0809B7F0
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809B21C
	ldrb r1, [r7, #0xd]
	adds r0, r5, #0
	b _0809B220
	.align 2, 0
_0809B214: .4byte sub_0803B9D0
_0809B218: .4byte 0x080E9644
_0809B21C:
	ldrb r1, [r7, #0xd]
	ldr r0, _0809B234 @ =0xFFF30000
_0809B220:
	bl __divsi3
	str r0, [r7, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r7, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	b _0809B464
	.align 2, 0
_0809B234: .4byte 0xFFF30000
_0809B238:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #7
	strb r0, [r1]
	movs r4, #0xb8
	lsls r4, r4, #9
	movs r6, #0x80
	lsls r6, r6, #0xc
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_0809B7F0
	movs r5, #0xd0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	adds r3, r4, #0
	bl sub_0809B7F0
	movs r4, #0x98
	lsls r4, r4, #9
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	adds r3, r4, #0
	bl sub_0809B7F0
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	bl sub_0809B7F0
	movs r0, #0xc
	strb r0, [r7, #0xd]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809B2A6
	movs r0, #0x80
	lsls r0, r0, #0xd
	b _0809B2A8
_0809B2A6:
	ldr r0, _0809B2B8 @ =0xFFF00000
_0809B2A8:
	movs r1, #0xc
	bl __divsi3
	str r0, [r7, #0x48]
	ldrh r1, [r7, #0x22]
	movs r0, #4
	orrs r0, r1
	b _0809B462
	.align 2, 0
_0809B2B8: .4byte 0xFFF00000
_0809B2BC:
	adds r0, r7, #0
	add r1, sp, #4
	bl sub_0809C324
	adds r0, r7, #0
	bl sub_0806D3C0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0809B2D8
	b _0809B464
_0809B2D8:
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _0809B464
_0809B2E4:
	adds r0, r7, #0
	add r1, sp, #4
	bl sub_0809C324
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0809B2FA
	b _0809B464
_0809B2FA:
	movs r0, #0x1e
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	movs r3, #0x94
	lsls r3, r3, #9
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	bl sub_0809B7F0
	movs r3, #0x98
	lsls r3, r3, #9
	movs r4, #0xd0
	lsls r4, r4, #0xc
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_0809B7F0
	movs r3, #0xa0
	lsls r3, r3, #9
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_0809B7F0
	movs r3, #0xa8
	lsls r3, r3, #9
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	bl sub_0809B7F0
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809B36C
	ldrb r1, [r7, #0xd]
	ldr r0, _0809B368 @ =0xFFF20000
	b _0809B3B6
	.align 2, 0
_0809B368: .4byte 0xFFF20000
_0809B36C:
	ldrb r1, [r7, #0xd]
	movs r0, #0xe0
	lsls r0, r0, #0xc
	b _0809B3B6
_0809B374:
	adds r0, r7, #0
	add r1, sp, #4
	bl sub_0809C324
	adds r0, r7, #0
	bl sub_0806D3C0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #6
	bgt _0809B464
	movs r0, #0xc
	strb r0, [r7, #0xd]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809B3B0
	ldr r0, _0809B3AC @ =0xFFFE0000
	b _0809B3B4
	.align 2, 0
_0809B3AC: .4byte 0xFFFE0000
_0809B3B0:
	movs r0, #0x80
	lsls r0, r0, #0xa
_0809B3B4:
	movs r1, #0xc
_0809B3B6:
	bl __divsi3
	str r0, [r7, #0x48]
	b _0809B464
_0809B3BE:
	adds r0, r7, #0
	add r1, sp, #4
	bl sub_0809C324
	adds r0, r7, #0
	bl sub_0806D3C0
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0809B464
	movs r0, #0
	strb r0, [r7, #0xa]
	movs r1, #1
	movs r0, #0x24
	strb r0, [r7, #0xd]
	strb r1, [r7, #0xb]
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r3, #0xa4
	lsls r3, r3, #9
	movs r4, #0x80
	lsls r4, r4, #0xc
	str r4, [sp]
	adds r0, r7, #0
	movs r2, #0
	bl sub_0809B7F0
	movs r3, #0xb4
	lsls r3, r3, #9
	movs r5, #0xd0
	lsls r5, r5, #0xc
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	bl sub_0809B7F0
	movs r3, #0x98
	lsls r3, r3, #9
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #3
	bl sub_0809B7F0
	movs r3, #0x9c
	lsls r3, r3, #9
	str r5, [sp]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #4
	bl sub_0809B7F0
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809B444
	ldrb r1, [r7, #0xd]
	adds r0, r5, #0
	b _0809B448
_0809B444:
	ldrb r1, [r7, #0xd]
	ldr r0, _0809B474 @ =0xFFF30000
_0809B448:
	bl __divsi3
	str r0, [r7, #0x48]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r7, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	ldrh r1, [r7, #0x22]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
_0809B462:
	strh r0, [r7, #0x22]
_0809B464:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809B474: .4byte 0xFFF30000

	thumb_func_start sub_0809B478
sub_0809B478: @ 0x0809B478
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
	ldr r1, _0809B4DC @ =0x08528148
	mov r0, sb
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r5, [r1]
	ldr r1, _0809B4E0 @ =0x085281A8
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
	bne _0809B564
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bne _0809B564
	mov r2, sb
	adds r2, #0x58
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	str r2, [sp, #4]
	cmp r0, #0
	beq _0809B4E4
	adds r0, r3, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	rsbs r7, r0, #0
	b _0809B4EE
	.align 2, 0
_0809B4DC: .4byte 0x08528148
_0809B4E0: .4byte 0x085281A8
_0809B4E4:
	adds r0, r3, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r7, r0, #0x10
_0809B4EE:
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
	bne _0809B538
	ldr r2, [sp]
	ldr r7, [r2]
	ldr r0, [sp, #4]
	b _0809B5F4
_0809B538:
	mov r1, r8
	cmp r1, #5
	beq _0809B540
	b _0809B650
_0809B540:
	ldr r2, [sp]
	ldr r7, [r2, #4]
	ldr r0, [sp, #4]
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809B556
	movs r0, #0x80
	lsls r0, r0, #0xa
	subs r7, r0, r7
_0809B556:
	mov r5, sl
	adds r5, #0xf8
	ldr r4, [r5]
	subs r7, r7, r4
	mov r2, sb
	ldrb r1, [r2, #0xd]
	b _0809B646
_0809B564:
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
	bne _0809B5DC
	ldr r1, [r5, #0x1c]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	add r0, sl
	ldr r1, [r0]
	ldr r2, _0809B5D8 @ =0xFFFF0000
	ands r1, r2
	adds r1, r1, r7
	str r1, [r5]
	ldr r0, [r0, #4]
	ands r0, r2
	b _0809B5E2
	.align 2, 0
_0809B5D8: .4byte 0xFFFF0000
_0809B5DC:
	adds r0, r1, r7
	str r0, [r5]
	ldr r0, [r5, #0x1c]
_0809B5E2:
	adds r0, r0, r3
	str r0, [r5, #4]
	mov r2, r8
	cmp r2, #2
	bne _0809B61C
	ldr r0, [sp]
	ldr r7, [r0]
	mov r0, sb
	adds r0, #0x58
_0809B5F4:
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809B604
	movs r0, #0x80
	lsls r0, r0, #0xa
	subs r7, r0, r7
_0809B604:
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
	b _0809B650
_0809B61C:
	mov r1, r8
	cmp r1, #5
	bne _0809B650
	ldr r2, [sp]
	ldr r7, [r2, #4]
	mov r0, sb
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809B63A
	movs r0, #0x80
	lsls r0, r0, #0xa
	subs r7, r0, r7
_0809B63A:
	mov r5, sl
	adds r5, #0xf8
	ldr r4, [r5]
	subs r7, r7, r4
	mov r0, sb
	ldrb r1, [r0, #0xd]
_0809B646:
	adds r0, r7, #0
	bl __divsi3
	adds r4, r4, r0
	str r4, [r5]
_0809B650:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809B660
sub_0809B660: @ 0x0809B660
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x58
	ldrb r4, [r5]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1f
	bl sub_0806CF2C
	cmp r4, r0
	beq _0809B6A8
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
	movs r2, #5
_0809B694:
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r0, [r1, #8]
	subs r0, r3, r0
	str r0, [r1, #8]
	adds r1, #0x30
	subs r2, #1
	cmp r2, #0
	bge _0809B694
_0809B6A8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809B6B0
sub_0809B6B0: @ 0x0809B6B0
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
	beq _0809B6EA
	str r1, [r7, #0x28]
	lsls r0, r0, #1
	b _0809B722
_0809B6EA:
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
_0809B722:
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
	bge _0809B74E
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _0809B750
_0809B74E:
	asrs r2, r5, #0x10
_0809B750:
	cmp r6, #0
	bge _0809B760
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _0809B762
_0809B760:
	asrs r1, r6, #0x10
_0809B762:
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
	ldr r0, _0809B7A4 @ =0x0000FFFF
	cmp sb, r0
	ble _0809B7C4
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809B7B2
	movs r0, #0xc0
	lsls r0, r0, #9
	cmp sb, r0
	ble _0809B7A8
	movs r0, #0xe0
	lsls r0, r0, #0xa
	mov r1, sb
	subs r0, r0, r1
	b _0809B7B4
	.align 2, 0
_0809B7A4: .4byte 0x0000FFFF
_0809B7A8:
	movs r0, #0xa0
	lsls r0, r0, #0xa
	mov r2, sb
	subs r0, r0, r2
	b _0809B7B4
_0809B7B2:
	mov r0, sb
_0809B7B4:
	str r0, [r3, #0x10]
	ldr r1, [sp, #4]
	adds r0, r4, r1
	lsls r0, r0, #4
	add r0, sl
	ldr r1, [r0, #0x10]
	str r1, [r0, #0x14]
	b _0809B7DE
_0809B7C4:
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809B7D8
	mov r1, sb
	subs r0, r2, r1
	b _0809B7DC
_0809B7D8:
	mov r1, sb
	adds r0, r2, r1
_0809B7DC:
	str r0, [r3, #0x10]
_0809B7DE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809B7F0
sub_0809B7F0: @ 0x0809B7F0
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
	beq _0809B82A
	str r1, [r7, #0x28]
	lsls r0, r0, #1
	b _0809B862
_0809B82A:
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
_0809B862:
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
	bge _0809B88E
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _0809B890
_0809B88E:
	asrs r2, r5, #0x10
_0809B890:
	cmp r6, #0
	bge _0809B8A0
	rsbs r0, r6, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _0809B8A2
_0809B8A0:
	asrs r1, r6, #0x10
_0809B8A2:
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
	bge _0809B8C6
	rsbs r1, r1, #0
_0809B8C6:
	ldr r0, _0809B8EC @ =0x0000FFFF
	cmp r1, r0
	ble _0809B8FE
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809B8FA
	movs r0, #0xc0
	lsls r0, r0, #9
	cmp sb, r0
	ble _0809B8F0
	movs r0, #0xe0
	lsls r0, r0, #0xa
	mov r1, sb
	subs r0, r0, r1
	b _0809B916
	.align 2, 0
_0809B8EC: .4byte 0x0000FFFF
_0809B8F0:
	movs r0, #0xa0
	lsls r0, r0, #0xa
	mov r2, sb
	subs r0, r0, r2
	b _0809B916
_0809B8FA:
	mov r0, sb
	b _0809B916
_0809B8FE:
	ldr r0, [sp]
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809B912
	mov r1, sb
	subs r0, r2, r1
	b _0809B916
_0809B912:
	mov r1, sb
	adds r0, r2, r1
_0809B916:
	str r0, [r4, #0x10]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809B928
sub_0809B928: @ 0x0809B928
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x2d
	movs r0, #8
	strb r0, [r1]
	ldrh r0, [r5, #0x34]
	subs r0, r0, r3
	strh r0, [r5, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0809B9BE
	adds r0, r5, #0
	bl sub_080683BC
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_0803F2C8
	movs r0, #0x6e
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
	movs r0, #0x3c
	strb r0, [r5, #0xd]
	movs r0, #2
	strb r0, [r5, #0xa]
	movs r0, #0
	strb r0, [r5, #0xb]
	movs r0, #0xc0
	lsls r0, r0, #0xb
	mov r8, r0
	ldr r7, _0809B9CC @ =0xFFFD0000
	movs r6, #5
_0809B990:
	bl RandomNumberGenerator
	mov r1, r8
	bl __umodsi3
	adds r4, r0, #0
	adds r4, r4, r7
	bl RandomNumberGenerator
	mov r1, r8
	bl __umodsi3
	adds r0, r0, r7
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	ldr r2, _0809B9D0 @ =0xFFE30000
	adds r3, r4, #0
	bl sub_0809C224
	subs r6, #1
	cmp r6, #0
	bge _0809B990
_0809B9BE:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809B9CC: .4byte 0xFFFD0000
_0809B9D0: .4byte 0xFFE30000

	thumb_func_start sub_0809B9D4
sub_0809B9D4: @ 0x0809B9D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r6, r0, #0
	ldr r0, [r6, #0x1c]
	mov r8, r0
	add r0, sp, #0x18
	ldr r1, _0809BAD8 @ =0x081190B2
	movs r2, #0xd
	bl memcpy
	mov r1, r8
	ldr r1, [r1, #0x1c]
	mov sb, r1
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _0809B9FE
	b _0809BCE4
_0809B9FE:
	mov r2, r8
	cmp r2, #0
	bne _0809BA06
	b _0809BCCE
_0809BA06:
	ldr r0, [r2]
	cmp r0, #0
	bne _0809BA0E
	b _0809BCCE
_0809BA0E:
	mov r0, r8
	adds r0, #0x36
	adds r1, r6, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0809BA20
	b _0809BCCE
_0809BA20:
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
	ldrb r0, [r6, #0xd]
	adds r0, #1
	strb r0, [r6, #0xd]
	adds r2, r6, #0
	adds r2, #0x20
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	add r0, sb
	mov r4, r8
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r6, #0x40]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	add r0, sb
	ldr r1, [r4, #0x44]
	ldr r0, [r0, #4]
	adds r1, r1, r0
	str r1, [r6, #0x44]
	ldrb r0, [r2]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	mov sl, r3
	adds r4, r2, #0
	cmp r0, #1
	bls _0809BA9E
	asrs r0, r1, #0x18
	cmp r0, #3
	beq _0809BA9E
	cmp r0, #4
	bne _0809BB28
_0809BA9E:
	adds r0, r6, #0
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	add r1, sb
	ldr r5, [r1]
	movs r2, #0
	ldrsb r2, [r4, r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	add r0, sb
	ldr r2, [r0]
	subs r5, r5, r2
	ldr r1, [r1, #4]
	ldr r0, [r0, #4]
	subs r1, r1, r0
	cmp r5, #0
	bge _0809BADC
	rsbs r0, r5, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _0809BADE
	.align 2, 0
_0809BAD8: .4byte 0x081190B2
_0809BADC:
	asrs r2, r5, #0x10
_0809BADE:
	cmp r1, #0
	bge _0809BAEE
	rsbs r0, r1, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _0809BAF0
_0809BAEE:
	asrs r1, r1, #0x10
_0809BAF0:
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809BB0A
	str r2, [r6, #0x48]
	b _0809BB10
_0809BB0A:
	ldr r1, _0809BB24 @ =0xFFFF8000
	adds r0, r2, r1
	str r0, [r6, #0x48]
_0809BB10:
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	add r1, sb
	ldr r0, [r6, #0x48]
	str r0, [r1, #8]
	b _0809BB40
	.align 2, 0
_0809BB24: .4byte 0xFFFF8000
_0809BB28:
	cmp r0, #2
	beq _0809BB30
	cmp r0, #5
	bne _0809BB40
_0809BB30:
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	add r1, sb
	ldr r0, [r1, #8]
	str r0, [r6, #0x48]
_0809BB40:
	mov r2, r8
	ldrb r0, [r2, #0xa]
	cmp r0, #2
	bne _0809BB56
	movs r0, #0
	movs r1, #1
	strb r1, [r6, #0xa]
	strb r0, [r6, #0xb]
	movs r0, #0x3c
	strb r0, [r6, #0xd]
	b _0809BD4C
_0809BB56:
	mov r3, r8
	movs r1, #0x22
	ldrsh r0, [r3, r1]
	adds r7, r4, #0
	movs r2, #0
	ldrsb r2, [r7, r2]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809BB6E
	b _0809BC9E
_0809BB6E:
	adds r0, r2, #0
	cmp r0, #0
	bne _0809BBD0
	ldr r1, _0809BBC0 @ =0xFFFFFF00
	ldr r0, [sp, #0x28]
	ands r0, r1
	movs r1, #0xf0
	orrs r0, r1
	ldr r1, _0809BBC4 @ =0xFFFF00FF
	ands r0, r1
	movs r1, #0xe8
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, _0809BBC8 @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	ldr r1, _0809BBCC @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [sp, #0x28]
	add r4, sp, #0x28
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08042848
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080428B4
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	b _0809BC8E
	.align 2, 0
_0809BBC0: .4byte 0xFFFFFF00
_0809BBC4: .4byte 0xFFFF00FF
_0809BBC8: .4byte 0xFF00FFFF
_0809BBCC: .4byte 0x00FFFFFF
_0809BBD0:
	cmp r0, #2
	bne _0809BCAE
	mov r3, sl
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809BC12
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	add r0, sb
	ldr r0, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r0, r4
	rsbs r0, r0, #0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	bl sub_080009E4
	adds r5, r0, #0
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	add r0, sb
	ldr r0, [r0, #8]
	adds r0, r0, r4
	rsbs r0, r0, #0
	b _0809BC3C
_0809BC12:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	add r0, sb
	ldr r0, [r0, #8]
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r0, r0, r2
	bl sub_080009E4
	adds r5, r0, #0
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	add r0, sb
	ldr r0, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r0, r3
_0809BC3C:
	bl sub_080009E4
	adds r1, r0, #0
	movs r4, #8
	adds r0, r5, #0
	muls r0, r4, r0
	cmp r0, #0
	bge _0809BC54
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0809BC56
_0809BC54:
	asrs r0, r0, #0x10
_0809BC56:
	subs r2, r0, #3
	add r0, sp, #0x28
	strb r2, [r0]
	movs r2, #8
	muls r1, r2, r1
	adds r2, r0, #0
	cmp r1, #0
	bge _0809BC6E
	rsbs r0, r1, #0
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	b _0809BC70
_0809BC6E:
	asrs r0, r1, #0x10
_0809BC70:
	subs r0, #3
	strb r0, [r2, #1]
	movs r0, #8
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_08042848
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #0xfb
_0809BC8E:
	ands r0, r1
	strb r0, [r2]
	add r0, sp, #8
	adds r1, r6, #0
	mov r2, r8
	bl sub_080429D0
	b _0809BCAE
_0809BC9E:
	adds r2, r6, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
_0809BCAE:
	ldr r0, [r6, #0x48]
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
	b _0809BD4C
_0809BCCE:
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r6, #0
	bl EntityDelete
	b _0809BD4C
_0809BCE4:
	cmp r0, #1
	bne _0809BD4C
	adds r2, r6, #0
	adds r2, #0x20
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	add r0, sb
	mov r4, r8
	ldr r1, [r4, #0x40]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r6, #0x40]
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	add r0, sb
	ldr r1, [r4, #0x44]
	ldr r0, [r0, #4]
	adds r1, r1, r0
	str r1, [r6, #0x44]
	mov r0, r8
	adds r0, #0x58
	ldrb r0, [r0]
	adds r3, r6, #0
	adds r3, #0x58
	movs r1, #0x20
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r6, #0xd]
	subs r0, #1
	strb r0, [r6, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0809BD4C
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r6, #0
	bl EntityDelete
_0809BD4C:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809BD5C
sub_0809BD5C: @ 0x0809BD5C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	ldr r2, _0809BE1C @ =sub_0809BE78
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _0809BE66
	ldr r0, _0809BE20 @ =0x081CC064
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	blt _0809BE14
	ldr r1, _0809BE24 @ =0x08225224
	adds r4, r6, #0
	adds r4, #0x2c
	ldrb r3, [r4]
	adds r0, r5, #0
	bl sub_0803B924
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0xc
	strb r0, [r1]
	ldr r0, _0809BE28 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r7, r5, #0
	adds r7, #0x59
	ldrb r0, [r7]
	orrs r0, r1
	strb r0, [r7]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	str r6, [r5, #0x1c]
	adds r0, r6, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r4, r5, #0
	adds r4, #0x58
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	add r0, r8
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	add r0, sb
	str r0, [r5, #0x44]
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0809BE2C
_0809BE14:
	adds r0, r5, #0
	bl EntityDelete
	b _0809BE66
	.align 2, 0
_0809BE1C: .4byte sub_0809BE78
_0809BE20: .4byte 0x081CC064
_0809BE24: .4byte 0x08225224
_0809BE28: .4byte sub_0803B9D0
_0809BE2C:
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	ldrb r0, [r7]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r7]
	ldr r0, [r5, #0x14]
	ldr r1, _0809BE74 @ =0xFFFF8000
	adds r0, r0, r1
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
	bl sub_0803E058
_0809BE66:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809BE74: .4byte 0xFFFF8000

	thumb_func_start sub_0809BE78
sub_0809BE78: @ 0x0809BE78
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldr r5, [r4, #0x1c]
	cmp r5, #0
	beq _0809BF5E
	ldr r0, [r5]
	cmp r0, #0
	beq _0809BF5E
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x61
	bne _0809BF5E
	ldrb r0, [r4, #0xa]
	adds r3, r4, #0
	adds r3, #0x58
	cmp r0, #0
	bne _0809BF40
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x20
	bne _0809BEC0
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r0, [r2]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r2]
	b _0809BEDC
_0809BEC0:
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
_0809BEDC:
	ldrb r0, [r4, #0xd]
	adds r2, r0, #0
	adds r3, r4, #0
	adds r3, #0x58
	cmp r2, #0xe
	bls _0809BF12
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809BF04
	ldr r1, [r4, #0x14]
	ldr r0, _0809BF00 @ =0x0000FFFF
	cmp r1, r0
	bgt _0809BF12
	movs r6, #0x80
	lsls r6, r6, #4
	b _0809BF0E
	.align 2, 0
_0809BF00: .4byte 0x0000FFFF
_0809BF04:
	ldr r1, [r4, #0x14]
	ldr r0, _0809BF38 @ =0xFFFF0000
	cmp r1, r0
	ble _0809BF12
	ldr r6, _0809BF3C @ =0xFFFFF800
_0809BF0E:
	adds r0, r1, r6
	str r0, [r4, #0x14]
_0809BF12:
	adds r0, r2, #1
	strb r0, [r4, #0xd]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi _0809BF24
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _0809BF40
_0809BF24:
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r4, #0
	bl EntityDelete
	b _0809BF72
	.align 2, 0
_0809BF38: .4byte 0xFFFF0000
_0809BF3C: .4byte 0xFFFFF800
_0809BF40:
	ldr r0, [r4, #0x14]
	movs r2, #0x80
	lsls r2, r2, #9
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
	b _0809BF72
_0809BF5E:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r0, r4, #0
	bl EntityDelete
_0809BF72:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809BF7C
sub_0809BF7C: @ 0x0809BF7C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r2, _0809BFAC @ =sub_0809C054
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _0809C04A
	ldr r0, _0809BFB0 @ =0x081CC064
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	bge _0809BFB4
	adds r0, r5, #0
	bl EntityDelete
	b _0809C04A
	.align 2, 0
_0809BFAC: .4byte sub_0809C054
_0809BFB0: .4byte 0x081CC064
_0809BFB4:
	ldr r1, _0809C030 @ =0x08225224
	adds r4, r6, #0
	adds r4, #0x2c
	ldrb r3, [r4]
	adds r0, r5, #0
	bl sub_0803B924
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x1f
	strb r0, [r1]
	ldr r0, _0809C034 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	subs r2, #0x19
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #9
	strb r0, [r1]
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	str r6, [r5, #0x1c]
	adds r4, #0x2c
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
	beq _0809C038
	lsls r1, r7, #0x10
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	b _0809C03E
	.align 2, 0
_0809C030: .4byte 0x08225224
_0809C034: .4byte sub_0803B9D0
_0809C038:
	lsls r1, r7, #0x10
	ldr r0, [r6, #0x40]
	subs r0, r0, r1
_0809C03E:
	str r0, [r5, #0x40]
	mov r0, r8
	lsls r1, r0, #0x10
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
_0809C04A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809C054
sub_0809C054: @ 0x0809C054
	push {lr}
	sub sp, #0x10
	adds r2, r0, #0
	ldr r3, [r2, #0x1c]
	cmp r3, #0
	beq _0809C0BC
	ldr r0, [r3]
	cmp r0, #0
	beq _0809C0BC
	adds r0, r3, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x61
	bne _0809C0BC
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _0809C0C2
	ldrb r0, [r2, #0xd]
	cmp r0, #8
	bne _0809C084
	adds r1, r2, #0
	adds r1, #0x65
	movs r0, #0x20
	strb r0, [r1]
_0809C084:
	ldrb r0, [r2, #0xd]
	cmp r0, #0x10
	bne _0809C092
	adds r1, r2, #0
	adds r1, #0x65
	movs r0, #0x21
	strb r0, [r1]
_0809C092:
	ldrb r0, [r2, #0xd]
	cmp r0, #0x52
	bne _0809C0A0
	adds r1, r2, #0
	adds r1, #0x65
	movs r0, #0x22
	strb r0, [r1]
_0809C0A0:
	ldrb r0, [r2, #0xd]
	adds r1, r0, #1
	strb r1, [r2, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x59
	bhi _0809C0B4
	ldrb r0, [r3, #0xa]
	cmp r0, #2
	bne _0809C0C2
_0809C0B4:
	adds r0, r2, #0
	bl EntityDelete
	b _0809C0C2
_0809C0BC:
	adds r0, r2, #0
	bl EntityDelete
_0809C0C2:
	add sp, #0x10
	pop {r0}
	bx r0

	thumb_func_start sub_0809C0C8
sub_0809C0C8: @ 0x0809C0C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r2, _0809C0F8 @ =sub_0809C1A0
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _0809C196
	ldr r0, _0809C0FC @ =0x081CC064
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	bge _0809C100
	adds r0, r5, #0
	bl EntityDelete
	b _0809C196
	.align 2, 0
_0809C0F8: .4byte sub_0809C1A0
_0809C0FC: .4byte 0x081CC064
_0809C100:
	ldr r1, _0809C17C @ =0x08225224
	adds r4, r6, #0
	adds r4, #0x2c
	ldrb r3, [r4]
	adds r0, r5, #0
	bl sub_0803B924
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x23
	strb r0, [r1]
	ldr r0, _0809C180 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	subs r2, #0x19
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x5c
	movs r0, #0xa
	strb r0, [r1]
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	str r6, [r5, #0x1c]
	adds r4, #0x2c
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
	beq _0809C184
	lsls r1, r7, #0x10
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	b _0809C18A
	.align 2, 0
_0809C17C: .4byte 0x08225224
_0809C180: .4byte sub_0803B9D0
_0809C184:
	lsls r1, r7, #0x10
	ldr r0, [r6, #0x40]
	subs r0, r0, r1
_0809C18A:
	str r0, [r5, #0x40]
	mov r0, r8
	lsls r1, r0, #0x10
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
_0809C196:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809C1A0
sub_0809C1A0: @ 0x0809C1A0
	push {lr}
	sub sp, #0x10
	adds r2, r0, #0
	ldr r3, [r2, #0x1c]
	cmp r3, #0
	beq _0809C216
	ldr r0, [r3]
	cmp r0, #0
	beq _0809C216
	adds r0, r3, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0x61
	bne _0809C216
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _0809C21C
	ldrb r0, [r2, #0xd]
	cmp r0, #8
	bne _0809C1D0
	adds r1, r2, #0
	adds r1, #0x65
	movs r0, #0x24
	strb r0, [r1]
_0809C1D0:
	ldrb r0, [r2, #0xd]
	cmp r0, #0x10
	bne _0809C1DE
	adds r1, r2, #0
	adds r1, #0x65
	movs r0, #0x25
	strb r0, [r1]
_0809C1DE:
	ldrb r0, [r2, #0xd]
	cmp r0, #0x18
	bne _0809C1EC
	adds r1, r2, #0
	adds r1, #0x65
	movs r0, #0x26
	strb r0, [r1]
_0809C1EC:
	ldrb r0, [r2, #0xd]
	cmp r0, #0x28
	bne _0809C1FA
	adds r1, r2, #0
	adds r1, #0x65
	movs r0, #0x27
	strb r0, [r1]
_0809C1FA:
	ldrb r0, [r2, #0xd]
	adds r1, r0, #1
	strb r1, [r2, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2f
	bhi _0809C20E
	ldrb r0, [r3, #0xa]
	cmp r0, #2
	bne _0809C21C
_0809C20E:
	adds r0, r2, #0
	bl EntityDelete
	b _0809C21C
_0809C216:
	adds r0, r2, #0
	bl EntityDelete
_0809C21C:
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809C224
sub_0809C224: @ 0x0809C224
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r2, _0809C258 @ =sub_0809C488
	movs r0, #0x1b
	movs r1, #0x48
	bl EntityCreateInRange
	adds r5, r0, #0
	cmp r5, #0
	beq _0809C2EE
	ldr r0, _0809C25C @ =0x081CC064
	bl sub_0803AFB8
	adds r2, r0, #0
	cmp r2, #0
	bge _0809C260
	adds r0, r5, #0
	bl EntityDelete
	b _0809C2EE
	.align 2, 0
_0809C258: .4byte sub_0809C488
_0809C25C: .4byte 0x081CC064
_0809C260:
	ldr r1, _0809C2FC @ =0x08225224
	adds r4, r6, #0
	adds r4, #0x2c
	ldrb r3, [r4]
	adds r0, r5, #0
	bl sub_0803B924
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x1e
	strb r0, [r1]
	ldr r0, _0809C300 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	subs r2, #0x19
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	str r6, [r5, #0x1c]
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
	ldr r0, [r6, #0x40]
	adds r0, r0, r7
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	add r0, r8
	str r0, [r5, #0x44]
	mov r0, sb
	str r0, [r5, #0x48]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r5, #0x54]
	movs r0, #0x28
	strb r0, [r5, #0xd]
_0809C2EE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809C2FC: .4byte 0x08225224
_0809C300: .4byte sub_0803B9D0

	thumb_func_start sub_0809C304
sub_0809C304: @ 0x0809C304
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _0809C31E
	movs r4, #0
_0809C310:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0809B478
	adds r4, #1
	cmp r4, #5
	ble _0809C310
_0809C31E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0809C324
sub_0809C324: @ 0x0809C324
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _0809C344
	movs r4, #0
_0809C332:
	adds r0, r6, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r5, #0
	bl sub_0809B478
	adds r4, #1
	cmp r4, #5
	ble _0809C332
_0809C344:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809C34C
sub_0809C34C: @ 0x0809C34C
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x58
	ldrb r3, [r4]
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	movs r2, #1
	eors r2, r1
	lsls r2, r2, #6
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #0xa
	ldr r1, [r0, #0x1c]
	movs r2, #5
_0809C370:
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r0, [r1, #8]
	subs r0, r3, r0
	str r0, [r1, #8]
	adds r1, #0x30
	subs r2, #1
	cmp r2, #0
	bge _0809C370
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809C38C
sub_0809C38C: @ 0x0809C38C
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

	thumb_func_start sub_0809C3A0
sub_0809C3A0: @ 0x0809C3A0
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #5
_0809C3A6:
	ldr r0, [r1]
	str r0, [r1, #0x20]
	ldr r0, [r1, #4]
	str r0, [r1, #0x24]
	adds r1, #0x30
	subs r2, #1
	cmp r2, #0
	bge _0809C3A6
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809C3BC
sub_0809C3BC: @ 0x0809C3BC
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #5
_0809C3C2:
	ldr r0, [r1, #0x20]
	str r0, [r1]
	ldr r0, [r1, #0x24]
	str r0, [r1, #4]
	adds r1, #0x30
	subs r2, #1
	cmp r2, #0
	bge _0809C3C2
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809C3D8
sub_0809C3D8: @ 0x0809C3D8
	push {lr}
	sub sp, #0x10
	adds r2, r0, #0
	mov r1, sp
	adds r0, #0x3c
	ldrb r0, [r0]
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0809C3F8
	movs r0, #1
	b _0809C3FC
_0809C3F8:
	mov r1, sp
	movs r0, #0
_0809C3FC:
	strh r0, [r1, #2]
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

	thumb_func_start sub_0809C41C
sub_0809C41C: @ 0x0809C41C
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
	bl sub_0809B928
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809C488
sub_0809C488: @ 0x0809C488
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0809C4DC
	adds r0, r4, #0
	movs r1, #0x18
	bl sub_0806D490
	adds r0, r4, #0
	movs r1, #0x18
	bl sub_0806D4A8
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, #0
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
	bne _0809C4DC
	adds r0, r4, #0
	bl EntityDelete
_0809C4DC:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0809C4E4
sub_0809C4E4: @ 0x0809C4E4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0809C518 @ =0x081CC064
	movs r1, #0
	bl sub_0803B800
	adds r5, r0, #0
	cmp r5, #0
	blt _0809C528
	ldr r0, _0809C51C @ =0x0820AC28
	movs r1, #0
	bl sub_08068264
	adds r2, r4, #0
	adds r2, #0x2c
	strb r0, [r2]
	ldr r1, _0809C520 @ =0x08225224
	ldrb r3, [r2]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803B924
	ldr r0, _0809C524 @ =sub_0809C5AC
	str r0, [r4, #4]
	movs r0, #1
	b _0809C52A
	.align 2, 0
_0809C518: .4byte 0x081CC064
_0809C51C: .4byte 0x0820AC28
_0809C520: .4byte 0x08225224
_0809C524: .4byte sub_0809C5AC
_0809C528:
	movs r0, #0
_0809C52A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809C530
sub_0809C530: @ 0x0809C530
	bx lr
	.align 2, 0

	thumb_func_start sub_0809C534
sub_0809C534: @ 0x0809C534
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

	thumb_func_start sub_0809C564
sub_0809C564: @ 0x0809C564
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
	bl sub_0809B928
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0809C5AC
sub_0809C5AC: @ 0x0809C5AC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, [r6, #0x40]
	ldr r5, [r6, #0x44]
	adds r2, r6, #0
	adds r2, #0x42
	ldrh r0, [r6, #0x14]
	ldrh r1, [r2]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r2]
	adds r0, r6, #0
	adds r0, #0x40
	strh r1, [r0]
	adds r2, #4
	ldrh r0, [r6, #0x16]
	ldrh r3, [r2]
	adds r0, r0, r3
	strh r0, [r2]
	adds r0, r6, #0
	adds r0, #0x44
	strh r1, [r0]
	adds r0, r6, #0
	bl sub_0803B9D0
	str r4, [r6, #0x40]
	str r5, [r6, #0x44]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start EnemyLegionUpdate
EnemyLegionUpdate: @ 0x0809C5E8
	push {r4, lr}
	sub sp, #0x34
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0809C61E
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
	beq _0809C612
	adds r0, r4, #0
	bl sub_08021924
_0809C612:
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0809C61E
	adds r0, r4, #0
	bl sub_0806AE54
_0809C61E:
	adds r0, r4, #0
	bl sub_0806D4C0
	cmp r0, #0
	beq _0809C638
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0809C638
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
	b _0809C6B2
_0809C638:
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0809C65A
	cmp r0, #1
	bgt _0809C648
	cmp r0, #0
	beq _0809C652
	b _0809C690
_0809C648:
	cmp r0, #2
	beq _0809C662
	cmp r0, #3
	beq _0809C682
	b _0809C690
_0809C652:
	adds r0, r4, #0
	bl sub_0809C994
	b _0809C690
_0809C65A:
	adds r0, r4, #0
	bl sub_0809D138
	b _0809C690
_0809C662:
	adds r0, r4, #0
	bl sub_0809D51C
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0809C690
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0809C690
	bl sub_0806C250
	b _0809C690
_0809C682:
	adds r0, r4, #0
	bl sub_080A005C
	adds r0, r4, #0
	bl sub_0803F17C
	b _0809C6B2
_0809C690:
	adds r0, r4, #0
	bl sub_0803F17C
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0809C6B2
	adds r0, r4, #0
	adds r0, #0x22
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0809C6B2
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_080421AC
_0809C6B2:
	add sp, #0x34
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start EnemyLegionCreate
EnemyLegionCreate: @ 0x0809C6BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, _0809C724 @ =gEwramData
	ldr r2, [r0]
	ldr r0, _0809C728 @ =0x0000A094
	adds r0, r0, r2
	mov r8, r0
	ldr r0, _0809C72C @ =0x2020F0F0
	str r0, [sp, #8]
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0809C6FA
	ldr r1, _0809C730 @ =0x000004CC
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0809C6FA
	ldr r1, _0809C734 @ =0x0000037E
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0809C6FA
	b _0809C944
_0809C6FA:
	movs r0, #0x1c
	bl sub_0806C2CC
	str r0, [r4, #0x14]
	cmp r0, #0
	bne _0809C708
	b _0809C944
_0809C708:
	adds r0, r4, #0
	bl sub_0809DE80
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809C738
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0809C71C
	b _0809C944
_0809C71C:
	bl sub_0806C250
	b _0809C944
	.align 2, 0
_0809C724: .4byte gEwramData
_0809C728: .4byte 0x0000A094
_0809C72C: .4byte 0x2020F0F0
_0809C730: .4byte 0x000004CC
_0809C734: .4byte 0x0000037E
_0809C738:
	ldr r1, _0809C7E0 @ =0x085281C8
	adds r0, r4, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	adds r0, r4, #0
	bl sub_0803F17C
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0809C75A
	b _0809C944
_0809C75A:
	adds r3, r4, #0
	adds r3, #0x58
	movs r0, #0x1f
	ands r2, r0
	ldrb r1, [r3]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #9
	ldrb r0, [r3]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r1, r0, #7
	str r1, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r2, #0
	bl sub_0803E058
	adds r0, r4, #0
	bl sub_0806B04C
	ldr r6, [r4, #0x14]
	ldr r1, _0809C7E4 @ =0xFFE80000
	movs r5, #0xc0
	lsls r5, r5, #0xd
	adds r0, r4, #0
	adds r2, r5, #0
	movs r3, #2
	bl sub_0809E5A8
	cmp r0, #0
	bne _0809C7B4
	b _0809C944
_0809C7B4:
	ldr r0, _0809C7E8 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0809C7CC
	movs r2, #0x30
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _0809C7EC
_0809C7CC:
	movs r1, #0xb8
	lsls r1, r1, #0xd
	adds r0, r4, #0
	adds r2, r5, #0
	movs r3, #0xa
	bl sub_0809E5A8
	cmp r0, #0
	bne _0809C800
	b _0809C944
	.align 2, 0
_0809C7E0: .4byte 0x085281C8
_0809C7E4: .4byte 0xFFE80000
_0809C7E8: .4byte gEwramData
_0809C7EC:
	movs r1, #0xb8
	lsls r1, r1, #0xd
	adds r0, r4, #0
	adds r2, r5, #0
	movs r3, #3
	bl sub_0809E5A8
	cmp r0, #0
	bne _0809C800
	b _0809C944
_0809C800:
	movs r1, #0xc0
	lsls r1, r1, #0xd
	ldr r5, _0809C844 @ =0xFFE80000
	adds r0, r4, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_0809E5A8
	cmp r0, #0
	bne _0809C816
	b _0809C944
_0809C816:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_0809E5A8
	cmp r0, #0
	bne _0809C828
	b _0809C944
_0809C828:
	ldr r5, _0809C848 @ =gEwramData
	ldr r0, [r5]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq _0809C84C
	movs r0, #3
	strb r0, [r4, #0xa]
	b _0809C988
	.align 2, 0
_0809C844: .4byte 0xFFE80000
_0809C848: .4byte gEwramData
_0809C84C:
	ldr r2, _0809C8D0 @ =sub_080A00AC
	ldr r3, _0809C8D4 @ =sub_0809DF00
	adds r0, r4, #0
	movs r1, #8
	bl sub_0804277C
	adds r0, r4, #0
	add r1, sp, #8
	bl sub_080428B4
	adds r0, r4, #0
	add r1, sp, #8
	bl sub_08042848
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x10
	bl sub_08013CF0
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0809C8DC
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4, #0x40]
	mov r2, r8
	ldr r1, [r2, #4]
	adds r0, r0, r1
	str r0, [r6, #0xc]
	ldr r0, [r4, #0x44]
	ldr r1, [r2, #8]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	str r7, [r6, #0x14]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r6, #8]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	adds r1, #0x78
	str r1, [r6, #0x18]
	strb r7, [r4, #0xa]
	movs r0, #1
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	bl sub_08034498
	ldr r1, [r5]
	ldr r0, _0809C8D8 @ =0x0000042C
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #2
	orrs r0, r2
	str r0, [r1]
	b _0809C988
	.align 2, 0
_0809C8D0: .4byte sub_080A00AC
_0809C8D4: .4byte sub_0809DF00
_0809C8D8: .4byte 0x0000042C
_0809C8DC:
	ldr r1, [r5]
	ldr r2, _0809C94C @ =0x0000042C
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #2
	orrs r0, r2
	str r0, [r1]
	movs r1, #0xa8
	lsls r1, r1, #0x10
	ldr r5, _0809C950 @ =0x01BF0000
	adds r0, r4, #0
	adds r2, r5, #0
	movs r3, #2
	bl sub_0809DF7C
	cmp r0, #0
	beq _0809C944
	movs r1, #0xd8
	lsls r1, r1, #0x10
	adds r0, r4, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_0809DF7C
	cmp r0, #0
	beq _0809C944
	movs r1, #0xa0
	lsls r1, r1, #0x11
	adds r0, r4, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_0809DF7C
	cmp r0, #0
	beq _0809C944
	movs r1, #0xbc
	lsls r1, r1, #0x10
	adds r0, r4, #0
	adds r2, r5, #0
	movs r3, #4
	bl sub_0809DF7C
	cmp r0, #0
	beq _0809C944
	ldr r1, _0809C954 @ =0x01190000
	adds r0, r4, #0
	adds r2, r5, #0
	movs r3, #3
	bl sub_0809DF7C
	cmp r0, #0
	bne _0809C958
_0809C944:
	adds r0, r4, #0
	bl EntityDelete
	b _0809C988
	.align 2, 0
_0809C94C: .4byte 0x0000042C
_0809C950: .4byte 0x01BF0000
_0809C954: .4byte 0x01190000
_0809C958:
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4, #0x40]
	mov r2, r8
	ldr r1, [r2, #4]
	adds r0, r0, r1
	str r0, [r6, #0xc]
	ldr r0, [r4, #0x44]
	ldr r1, [r2, #8]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	str r7, [r6, #0x14]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r6, #8]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	adds r1, #0x78
	str r1, [r6, #0x18]
	strb r7, [r4, #0xa]
_0809C988:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809C994
sub_0809C994: @ 0x0809C994
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, _0809C9C8 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0809C9CC @ =0x0000A094
	adds r1, r0, r1
	str r1, [sp, #8]
	ldr r2, [r7, #0x14]
	mov r8, r2
	ldrb r5, [r7, #0xb]
	cmp r5, #1
	beq _0809C9F4
	cmp r5, #1
	bgt _0809C9D0
	cmp r5, #0
	beq _0809C9D6
	movs r3, #0x22
	adds r3, r3, r7
	mov sb, r3
	b _0809D09C
	.align 2, 0
_0809C9C8: .4byte gEwramData
_0809C9CC: .4byte 0x0000A094
_0809C9D0:
	cmp r5, #2
	beq _0809CA50
	b _0809CA08
_0809C9D6:
	adds r0, r7, #0
	bl sub_0809DB00
	movs r1, #0x22
	adds r1, r1, r7
	mov sb, r1
	cmp r0, #0
	bne _0809C9E8
	b _0809D09C
_0809C9E8:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #4
	strb r0, [r1]
	b _0809D09C
_0809C9F4:
	mov r2, r8
	ldr r1, [r2, #0x10]
	movs r0, #0xc8
	lsls r0, r0, #0x11
	cmp r1, r0
	bgt _0809CA10
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r1, r3
	str r0, [r2, #0x10]
_0809CA08:
	movs r0, #0x22
	adds r0, r0, r7
	mov sb, r0
	b _0809D09C
_0809CA10:
	movs r4, #2
	movs r1, #0
	strb r4, [r7, #0xb]
	strb r1, [r7, #0xc]
	adds r3, r7, #0
	adds r3, #0x59
	ldrb r2, [r3]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3]
	str r1, [r7, #0x48]
	str r1, [r7, #0x4c]
	str r1, [r7, #0x54]
	adds r0, r7, #0
	bl sub_0806CF2C
	cmp r0, #0
	beq _0809CA3A
	strb r4, [r7, #0x1c]
	b _0809CA3C
_0809CA3A:
	strb r5, [r7, #0x1c]
_0809CA3C:
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	adds r1, #0x3c
	strb r1, [r7, #0x1e]
	movs r1, #0x22
	adds r1, r1, r7
	mov sb, r1
	b _0809D09C
_0809CA50:
	ldrb r4, [r7, #0x1c]
	cmp r4, #1
	beq _0809CA58
	b _0809CB5C
_0809CA58:
	ldrb r0, [r7, #0x1d]
	cmp r0, #1
	beq _0809CAAC
	cmp r0, #1
	bgt _0809CA68
	cmp r0, #0
	beq _0809CA72
	b _0809CC64
_0809CA68:
	cmp r0, #2
	beq _0809CAE4
	cmp r0, #3
	beq _0809CB20
	b _0809CC64
_0809CA72:
	ldr r0, _0809CAA8 @ =0xFFFFF800
	str r0, [r7, #0x50]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r7, #0
	bl sub_0806D35C
	mov r2, r8
	ldr r0, [r2, #0xc]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r2, #0xc]
	movs r1, #0xc8
	lsls r1, r1, #0x11
	adds r0, r7, #0
	bl sub_0809FF44
	mov r3, r8
	ldr r0, [r3, #0xc]
	movs r1, #0xe0
	lsls r1, r1, #0xf
	cmp r0, r1
	ble _0809CAA2
	b _0809CC64
_0809CAA2:
	str r1, [r3, #0xc]
	strb r4, [r7, #0x1d]
	b _0809CC64
	.align 2, 0
_0809CAA8: .4byte 0xFFFFF800
_0809CAAC:
	ldr r0, _0809CAE0 @ =0xFFFFF800
	str r0, [r7, #0x54]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r7, #0
	bl sub_0806D384
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, [r7, #0x4c]
	adds r0, r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
	movs r4, #0xe0
	lsls r4, r4, #0xf
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0809FF10
	mov r3, r8
	ldr r0, [r3, #0x10]
	cmp r0, r4
	ble _0809CADC
	b _0809CC64
_0809CADC:
	str r4, [r3, #0x10]
	b _0809CC62
	.align 2, 0
_0809CAE0: .4byte 0xFFFFF800
_0809CAE4:
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r7, #0x50]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r7, #0
	bl sub_0806D35C
	mov r1, r8
	ldr r0, [r1, #0xc]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	mov r2, r8
	str r0, [r2, #0xc]
	movs r1, #0xe0
	lsls r1, r1, #0xf
	adds r0, r7, #0
	bl sub_0809FF44
	mov r3, r8
	ldr r1, [r3, #0xc]
	ldr r0, _0809CB1C @ =0x018FFFFF
	cmp r1, r0
	bgt _0809CB16
	b _0809CC64
_0809CB16:
	adds r0, #1
	str r0, [r3, #0xc]
	b _0809CBAA
	.align 2, 0
_0809CB1C: .4byte 0x018FFFFF
_0809CB20:
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r7, #0x54]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r7, #0
	bl sub_0806D384
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, [r7, #0x4c]
	adds r0, r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
	movs r4, #0xc8
	lsls r4, r4, #0x11
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0809FF10
	mov r3, r8
	ldr r1, [r3, #0x10]
	ldr r0, _0809CB58 @ =0x018FFFFF
	cmp r1, r0
	bgt _0809CB54
	b _0809CC64
_0809CB54:
	str r4, [r3, #0x10]
	b _0809CBE8
	.align 2, 0
_0809CB58: .4byte 0x018FFFFF
_0809CB5C:
	ldrb r0, [r7, #0x1d]
	cmp r0, #1
	beq _0809CBB4
	cmp r0, #1
	bgt _0809CB6C
	cmp r0, #0
	beq _0809CB76
	b _0809CC64
_0809CB6C:
	cmp r0, #2
	beq _0809CBF4
	cmp r0, #3
	beq _0809CC30
	b _0809CC64
_0809CB76:
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r7, #0x50]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r7, #0
	bl sub_0806D35C
	mov r1, r8
	ldr r0, [r1, #0xc]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	mov r2, r8
	str r0, [r2, #0xc]
	movs r4, #0xc8
	lsls r4, r4, #0x11
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0809FF44
	mov r3, r8
	ldr r1, [r3, #0xc]
	ldr r0, _0809CBB0 @ =0x018FFFFF
	cmp r1, r0
	ble _0809CC64
	str r4, [r3, #0xc]
_0809CBAA:
	movs r0, #3
	strb r0, [r7, #0x1d]
	b _0809CC64
	.align 2, 0
_0809CBB0: .4byte 0x018FFFFF
_0809CBB4:
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r7, #0x54]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r7, #0
	bl sub_0806D384
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, [r7, #0x4c]
	adds r0, r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
	movs r1, #0xe0
	lsls r1, r1, #0xf
	adds r0, r7, #0
	bl sub_0809FF10
	mov r3, r8
	ldr r1, [r3, #0x10]
	ldr r0, _0809CBF0 @ =0x018FFFFF
	cmp r1, r0
	ble _0809CC64
	adds r0, #1
	str r0, [r3, #0x10]
_0809CBE8:
	movs r0, #0
	strb r0, [r7, #0x1d]
	b _0809CC64
	.align 2, 0
_0809CBF0: .4byte 0x018FFFFF
_0809CBF4:
	ldr r0, _0809CC2C @ =0xFFFFF800
	str r0, [r7, #0x50]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r7, #0
	bl sub_0806D35C
	mov r1, r8
	ldr r0, [r1, #0xc]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	mov r2, r8
	str r0, [r2, #0xc]
	movs r4, #0xe0
	lsls r4, r4, #0xf
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0809FF44
	mov r3, r8
	ldr r0, [r3, #0xc]
	cmp r0, r4
	bgt _0809CC64
	str r4, [r3, #0xc]
	movs r0, #1
	strb r0, [r7, #0x1d]
	b _0809CC64
	.align 2, 0
_0809CC2C: .4byte 0xFFFFF800
_0809CC30:
	ldr r0, _0809CCBC @ =0xFFFFF800
	str r0, [r7, #0x54]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r7, #0
	bl sub_0806D384
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, [r7, #0x4c]
	adds r0, r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
	movs r1, #0xc8
	lsls r1, r1, #0x11
	adds r0, r7, #0
	bl sub_0809FF10
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #0xe0
	lsls r1, r1, #0xf
	cmp r0, r1
	bgt _0809CC64
	str r1, [r3, #0x10]
_0809CC62:
	strb r5, [r7, #0x1d]
_0809CC64:
	ldrb r0, [r7, #0x1e]
	adds r1, r0, #0
	adds r1, #0xff
	strb r1, [r7, #0x1e]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0809CD44
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	adds r1, #0x3c
	strb r1, [r7, #0x1e]
	adds r0, r7, #0
	bl sub_0806CD38
	adds r4, r0, #0
	ldr r1, [sp, #8]
	ldr r0, [r1, #4]
	adds r4, r4, r0
	adds r0, r7, #0
	bl sub_0806CD78
	adds r1, r0, #0
	ldr r2, [sp, #8]
	ldr r0, [r2, #8]
	adds r1, r1, r0
	ldr r3, _0809CCC0 @ =0xFFD00000
	adds r1, r1, r3
	movs r2, #0xc0
	lsls r2, r2, #0xe
	adds r0, r4, #0
	bl sub_0809FF78
	adds r4, r0, #0
	ldrb r0, [r7, #0x1d]
	cmp r0, #1
	beq _0809CCE8
	cmp r0, #1
	bgt _0809CCC4
	cmp r0, #0
	beq _0809CCCE
	b _0809CD44
	.align 2, 0
_0809CCBC: .4byte 0xFFFFF800
_0809CCC0: .4byte 0xFFD00000
_0809CCC4:
	cmp r0, #2
	beq _0809CD00
	cmp r0, #3
	beq _0809CD1E
	b _0809CD44
_0809CCCE:
	cmp r4, #1
	beq _0809CD22
	cmp r4, #3
	beq _0809CD40
	cmp r4, #0
	bne _0809CD44
	adds r0, r7, #0
	bl sub_0806CF2C
	cmp r0, #0
	bne _0809CD40
	movs r0, #1
	b _0809CD42
_0809CCE8:
	cmp r4, #2
	beq _0809CD42
	cmp r4, #0
	beq _0809CD40
	cmp r4, #1
	bne _0809CD44
	adds r0, r7, #0
	bl sub_0806CF94
	cmp r0, #0
	bne _0809CD40
	b _0809CD22
_0809CD00:
	cmp r4, #1
	beq _0809CD42
	cmp r4, #3
	bne _0809CD0C
	movs r0, #1
	b _0809CD42
_0809CD0C:
	cmp r4, #2
	bne _0809CD44
	adds r0, r7, #0
	bl sub_0806CF2C
	cmp r0, #0
	beq _0809CD22
	movs r0, #1
	b _0809CD42
_0809CD1E:
	cmp r4, #2
	bne _0809CD26
_0809CD22:
	strb r4, [r7, #0x1c]
	b _0809CD44
_0809CD26:
	cmp r4, #0
	bne _0809CD2E
	movs r0, #1
	b _0809CD42
_0809CD2E:
	cmp r4, #3
	bne _0809CD44
	adds r0, r7, #0
	bl sub_0806CF94
	cmp r0, #0
	beq _0809CD40
	movs r0, #1
	b _0809CD42
_0809CD40:
	movs r0, #2
_0809CD42:
	strb r0, [r7, #0x1c]
_0809CD44:
	adds r2, r7, #0
	adds r2, #0x22
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	bne _0809CDFA
	ldrb r1, [r7, #0x1a]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0809CDFA
	adds r4, r7, #0
	movs r6, #0
	mov sl, r6
_0809CD64:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0809F764
	adds r4, r0, #0
	cmp r4, #0
	beq _0809CDC8
	mov r0, sl
	str r0, [r4, #0x14]
	adds r2, r6, #1
	ldr r0, _0809CDA0 @ =0x00001388
	muls r0, r2, r0
	strh r0, [r4, #0x1e]
	movs r1, #6
	subs r1, r1, r6
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	strb r0, [r4, #0x1c]
	mov r1, sl
	strb r1, [r4, #0x18]
	adds r5, r2, #0
	cmp r6, #0
	blt _0809CDD0
	cmp r6, #4
	ble _0809CDA4
	cmp r6, #5
	beq _0809CDB0
	b _0809CDD0
	.align 2, 0
_0809CDA0: .4byte 0x00001388
_0809CDA4:
	adds r0, r4, #0
	ldr r1, _0809CDAC @ =0x08528348
	b _0809CDB4
	.align 2, 0
_0809CDAC: .4byte 0x08528348
_0809CDB0:
	adds r0, r4, #0
	ldr r1, _0809CDC4 @ =0x0852835C
_0809CDB4:
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	adds r0, r4, #0
	bl sub_0803F17C
	b _0809CDD0
	.align 2, 0
_0809CDC4: .4byte 0x0852835C
_0809CDC8:
	movs r0, #1
	mov r2, r8
	str r0, [r2, #0x28]
	b _0809D126
_0809CDD0:
	adds r6, r5, #0
	cmp r6, #5
	ble _0809CD64
	movs r0, #0
	mov r3, r8
	str r0, [r3, #0x30]
	movs r0, #2
	str r0, [r3, #0x28]
	str r0, [r3, #0x2c]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	adds r1, #0x78
	mov r0, r8
	str r1, [r0, #0x3c]
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
_0809CDFA:
	mov r3, sb
	ldrb r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0809CEAE
	ldrb r1, [r7, #0x1a]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xf
	bne _0809CEAE
	adds r4, r7, #0
	movs r6, #0
	movs r0, #1
	mov sl, r0
_0809CE18:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0809F764
	adds r4, r0, #0
	cmp r4, #0
	beq _0809CE7C
	movs r0, #0
	str r0, [r4, #0x14]
	adds r2, r6, #1
	ldr r0, _0809CE54 @ =0x00001388
	muls r0, r2, r0
	strh r0, [r4, #0x1e]
	movs r1, #6
	subs r1, r1, r6
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	strb r0, [r4, #0x1c]
	mov r1, sl
	strb r1, [r4, #0x18]
	adds r5, r2, #0
	cmp r6, #0
	blt _0809CE84
	cmp r6, #4
	ble _0809CE58
	cmp r6, #5
	beq _0809CE64
	b _0809CE84
	.align 2, 0
_0809CE54: .4byte 0x00001388
_0809CE58:
	adds r0, r4, #0
	ldr r1, _0809CE60 @ =0x08528348
	b _0809CE68
	.align 2, 0
_0809CE60: .4byte 0x08528348
_0809CE64:
	adds r0, r4, #0
	ldr r1, _0809CE78 @ =0x0852835C
_0809CE68:
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	adds r0, r4, #0
	bl sub_0803F17C
	b _0809CE84
	.align 2, 0
_0809CE78: .4byte 0x0852835C
_0809CE7C:
	mov r2, sl
	mov r3, r8
	str r2, [r3, #0x40]
	b _0809D126
_0809CE84:
	adds r6, r5, #0
	cmp r6, #5
	ble _0809CE18
	movs r0, #1
	mov r1, r8
	str r0, [r1, #0x48]
	movs r0, #2
	str r0, [r1, #0x40]
	str r0, [r1, #0x44]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	adds r1, #0x78
	mov r2, r8
	str r1, [r2, #0x54]
	mov r3, sb
	ldrb r1, [r3]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r3]
_0809CEAE:
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0809CF62
	ldrb r1, [r7, #0x1a]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xf
	bne _0809CF62
	adds r4, r7, #0
	movs r6, #0
_0809CEC8:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0809F764
	adds r4, r0, #0
	cmp r4, #0
	beq _0809CF2C
	movs r0, #0
	str r0, [r4, #0x14]
	adds r2, r6, #1
	ldr r0, _0809CF04 @ =0x00001388
	muls r0, r2, r0
	strh r0, [r4, #0x1e]
	movs r1, #6
	subs r1, r1, r6
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	strb r0, [r4, #0x1c]
	movs r0, #2
	strb r0, [r4, #0x18]
	adds r5, r2, #0
	cmp r6, #0
	blt _0809CF34
	cmp r6, #4
	ble _0809CF08
	cmp r6, #5
	beq _0809CF14
	b _0809CF34
	.align 2, 0
_0809CF04: .4byte 0x00001388
_0809CF08:
	adds r0, r4, #0
	ldr r1, _0809CF10 @ =0x08528348
	b _0809CF18
	.align 2, 0
_0809CF10: .4byte 0x08528348
_0809CF14:
	adds r0, r4, #0
	ldr r1, _0809CF28 @ =0x0852835C
_0809CF18:
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	adds r0, r4, #0
	bl sub_0803F17C
	b _0809CF34
	.align 2, 0
_0809CF28: .4byte 0x0852835C
_0809CF2C:
	movs r0, #1
	mov r1, r8
	str r0, [r1, #0x58]
	b _0809D126
_0809CF34:
	adds r6, r5, #0
	cmp r6, #5
	ble _0809CEC8
	movs r0, #1
	mov r2, r8
	str r0, [r2, #0x30]
	str r0, [r2, #0x60]
	movs r0, #2
	str r0, [r2, #0x58]
	str r0, [r2, #0x5c]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	adds r1, #0x78
	mov r3, r8
	str r1, [r3, #0x6c]
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x20
	orrs r0, r1
	mov r1, sb
	strb r0, [r1]
_0809CF62:
	mov r2, r8
	ldr r0, [r2, #0x28]
	cmp r0, #2
	bne _0809CF72
	ldr r0, [r2, #0x2c]
	cmp r0, #0
	bne _0809CF72
	str r0, [r2, #0x28]
_0809CF72:
	mov r3, r8
	ldr r0, [r3, #0x40]
	cmp r0, #2
	bne _0809CF82
	ldr r0, [r3, #0x44]
	cmp r0, #0
	bne _0809CF82
	str r0, [r3, #0x40]
_0809CF82:
	mov r1, r8
	ldr r0, [r1, #0x58]
	cmp r0, #2
	bne _0809CF92
	ldr r0, [r1, #0x5c]
	cmp r0, #0
	bne _0809CF92
	str r0, [r1, #0x58]
_0809CF92:
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _0809D07A
	ldrb r1, [r7, #0x1a]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xf
	bne _0809CFC8
	mov r2, r8
	ldr r0, [r2, #0x28]
	cmp r0, #0
	bne _0809CFC8
	ldr r0, [r2, #0x40]
	cmp r0, #0
	bne _0809CFC8
	ldr r0, [r2, #0x58]
	cmp r0, #0
	bne _0809CFC8
	ldr r0, [r2, #0x18]
	cmp r0, #0
	bne _0809CFC2
	movs r0, #1
	strb r0, [r7, #0xc]
	b _0809D126
_0809CFC2:
	subs r0, #1
	mov r3, r8
	str r0, [r3, #0x18]
_0809CFC8:
	movs r6, #0
	mov r5, r8
	adds r5, #0x28
_0809CFCE:
	ldr r0, [r5]
	cmp r0, #0
	bne _0809D016
	cmp r6, #0
	bne _0809CFE0
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #8
	b _0809CFF2
_0809CFE0:
	cmp r6, #1
	bne _0809CFEC
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #0x10
	b _0809CFF2
_0809CFEC:
	mov r3, sb
	ldrb r1, [r3]
	movs r0, #0x20
_0809CFF2:
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _0809D03A
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0809D03A
	subs r0, #1
	str r0, [r5, #0x14]
	cmp r0, #0
	bne _0809D03A
	movs r0, #4
	str r0, [r5]
	str r0, [r5, #4]
	movs r0, #0x3c
	str r0, [r5, #0x14]
	b _0809D03A
_0809D016:
	cmp r0, #4
	bne _0809D040
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0809D026
	subs r0, #1
	str r0, [r5, #0x14]
	b _0809D03A
_0809D026:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0809D03A
	str r0, [r5]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	adds r1, #0x78
	str r1, [r5, #0x14]
_0809D03A:
	ldr r0, [r5]
	cmp r0, #4
	beq _0809D070
_0809D040:
	cmp r6, #1
	beq _0809D05E
	cmp r6, #1
	bgt _0809D04E
	cmp r6, #0
	beq _0809D054
	b _0809D070
_0809D04E:
	cmp r6, #2
	beq _0809D068
	b _0809D070
_0809D054:
	mov r1, r8
	ldr r0, [r1, #0x38]
	adds r0, #0x87
	str r0, [r1, #0x38]
	b _0809D070
_0809D05E:
	mov r2, r8
	ldr r0, [r2, #0x50]
	subs r0, #0x76
	str r0, [r2, #0x50]
	b _0809D070
_0809D068:
	mov r3, r8
	ldr r0, [r3, #0x68]
	adds r0, #0xc3
	str r0, [r3, #0x68]
_0809D070:
	adds r5, #0x18
	adds r6, #1
	cmp r6, #2
	ble _0809CFCE
	b _0809D09C
_0809D07A:
	movs r0, #3
	mov r1, r8
	str r0, [r1, #0x28]
	str r0, [r1, #0x40]
	str r0, [r1, #0x58]
	str r0, [r1, #0x2c]
	str r0, [r1, #0x44]
	str r0, [r1, #0x5c]
	movs r1, #0
	movs r0, #1
	strb r0, [r7, #0xa]
	strb r1, [r7, #0xb]
	strb r1, [r7, #0xc]
	strb r1, [r7, #0xd]
	adds r0, #0xff
	mov r2, r8
	str r0, [r2, #8]
_0809D09C:
	mov r3, sb
	ldrb r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0809D0DA
	mov r1, r8
	ldr r0, [r1, #0x14]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1, #0x14]
	ldr r0, [r1, #0xc]
	ldr r3, [sp, #8]
	ldr r1, [r3, #4]
	subs r0, r0, r1
	str r0, [r7, #0x40]
	mov r1, r8
	ldr r0, [r1, #0x14]
	bl sub_080009E4
	mov r3, r8
	ldr r2, [r3, #0x10]
	ldr r3, [sp, #8]
	ldr r1, [r3, #8]
	subs r2, r2, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r2, r2, r1
	str r2, [r7, #0x44]
	b _0809D0F0
_0809D0DA:
	mov r1, r8
	ldr r0, [r1, #0xc]
	ldr r2, [sp, #8]
	ldr r1, [r2, #4]
	subs r0, r0, r1
	str r0, [r7, #0x40]
	mov r3, r8
	ldr r0, [r3, #0x10]
	ldr r1, [r2, #8]
	subs r0, r0, r1
	str r0, [r7, #0x44]
_0809D0F0:
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0809D126
	mov r1, r8
	ldr r0, [r1, #4]
	ldr r1, [r1, #8]
	adds r0, r0, r1
	mov r2, r8
	str r0, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r7, #0
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
_0809D126:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809D138
sub_0809D138: @ 0x0809D138
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _0809D160 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0809D164 @ =0x0000A094
	adds r7, r0, r1
	ldr r6, [r5, #0x14]
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	bne _0809D154
	b _0809D24C
_0809D154:
	cmp r0, #1
	bgt _0809D168
	cmp r0, #0
	beq _0809D170
	b _0809D492
	.align 2, 0
_0809D160: .4byte gEwramData
_0809D164: .4byte 0x0000A094
_0809D168:
	cmp r0, #2
	bne _0809D16E
	b _0809D2FC
_0809D16E:
	b _0809D492
_0809D170:
	ldr r0, [r6, #8]
	adds r0, #8
	str r0, [r6, #8]
	ldrb r0, [r5, #0xd]
	cmp r0, #0xc7
	bhi _0809D180
	adds r0, #1
	strb r0, [r5, #0xd]
_0809D180:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x1e
	bne _0809D190
	ldr r1, _0809D18C @ =0x085281DC
	b _0809D1AE
	.align 2, 0
_0809D18C: .4byte 0x085281DC
_0809D190:
	cmp r0, #0x3c
	bne _0809D19C
	ldr r1, _0809D198 @ =0x085281F0
	b _0809D1AE
	.align 2, 0
_0809D198: .4byte 0x085281F0
_0809D19C:
	cmp r0, #0x5a
	bne _0809D1A8
	ldr r1, _0809D1A4 @ =0x08528204
	b _0809D1AE
	.align 2, 0
_0809D1A4: .4byte 0x08528204
_0809D1A8:
	cmp r0, #0x78
	bne _0809D1C0
	ldr r1, _0809D1BC @ =0x08528218
_0809D1AE:
	adds r0, r5, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	b _0809D1D0
	.align 2, 0
_0809D1BC: .4byte 0x08528218
_0809D1C0:
	cmp r0, #0x96
	bne _0809D1D0
	ldr r1, _0809D21C @ =0x0852822C
	adds r0, r5, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
_0809D1D0:
	ldr r1, [r6, #8]
	ldr r0, _0809D220 @ =0x000007FF
	cmp r1, r0
	bgt _0809D1DA
	b _0809D492
_0809D1DA:
	movs r4, #0x80
	lsls r4, r4, #4
	str r4, [r6, #8]
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	beq _0809D1E8
	b _0809D492
_0809D1E8:
	ldr r0, [r6, #0x44]
	cmp r0, #0
	beq _0809D1F0
	b _0809D492
_0809D1F0:
	ldr r1, [r6, #0x5c]
	cmp r1, #0
	beq _0809D1F8
	b _0809D492
_0809D1F8:
	str r1, [r6, #0x28]
	str r1, [r6, #0x40]
	str r1, [r6, #0x58]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0xfa
	strb r0, [r5, #0xd]
	str r1, [r5, #0x48]
	str r1, [r5, #0x4c]
	adds r0, r5, #0
	bl sub_0806CF2C
	cmp r0, #0
	beq _0809D224
	str r4, [r5, #0x50]
	b _0809D228
	.align 2, 0
_0809D21C: .4byte 0x0852822C
_0809D220: .4byte 0x000007FF
_0809D224:
	ldr r0, _0809D23C @ =0xFFFFF800
	str r0, [r5, #0x50]
_0809D228:
	adds r0, r5, #0
	bl sub_0806CF94
	cmp r0, #0
	beq _0809D240
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r5, #0x54]
	b _0809D492
	.align 2, 0
_0809D23C: .4byte 0xFFFFF800
_0809D240:
	ldr r0, _0809D248 @ =0xFFFFF800
	str r0, [r5, #0x54]
	b _0809D492
	.align 2, 0
_0809D248: .4byte 0xFFFFF800
_0809D24C:
	ldr r0, [r6, #0xc]
	ldr r1, [r7, #4]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x10]
	ldr r1, [r7, #8]
	subs r0, r0, r1
	str r0, [r5, #0x44]
	movs r3, #0x10
	rsbs r3, r3, #0
	movs r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r3, #0
	bl sub_0806A6C4
	adds r2, r0, #0
	ldr r0, [r5, #0x40]
	ldr r1, [r7, #4]
	adds r0, r0, r1
	str r0, [r6, #0xc]
	ldr r0, [r5, #0x44]
	ldr r1, [r7, #8]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0809D2A4
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	str r0, [r5, #0x48]
	str r1, [r5, #0x4c]
	ldr r1, [r5, #0x50]
	ldr r0, [r5, #0x54]
	str r0, [r5, #0x50]
	str r1, [r5, #0x54]
	b _0809D2CE
_0809D2A4:
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _0809D2BA
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x50]
	rsbs r0, r0, #0
	str r0, [r5, #0x50]
	b _0809D2CE
_0809D2BA:
	movs r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0809D2CE
	ldr r0, [r5, #0x4c]
	rsbs r0, r0, #0
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x54]
	rsbs r0, r0, #0
	str r0, [r5, #0x54]
_0809D2CE:
	ldrb r0, [r5, #0xd]
	subs r0, #1
	movs r1, #0
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0809D2E0
	b _0809D492
_0809D2E0:
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	strb r1, [r5, #0xd]
	movs r0, #2
	str r0, [r6, #0x28]
	str r0, [r6, #0x40]
	str r0, [r6, #0x58]
	str r0, [r6, #0x2c]
	str r0, [r6, #0x44]
	str r0, [r6, #0x5c]
	str r1, [r5, #0x50]
	str r1, [r5, #0x54]
	b _0809D492
_0809D2FC:
	adds r0, r5, #0
	movs r1, #0x10
	bl sub_0806D490
	adds r0, r5, #0
	movs r1, #0x10
	bl sub_0806D4A8
	ldr r0, [r6, #0xc]
	ldr r1, [r7, #4]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x10]
	ldr r1, [r7, #8]
	subs r0, r0, r1
	str r0, [r5, #0x44]
	movs r3, #0x10
	rsbs r3, r3, #0
	movs r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r3, #0
	bl sub_0806A224
	adds r2, r0, #0
	ldr r0, [r5, #0x40]
	ldr r1, [r7, #4]
	adds r0, r0, r1
	str r0, [r6, #0xc]
	ldr r0, [r5, #0x44]
	ldr r1, [r7, #8]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0809D364
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	str r0, [r5, #0x48]
	str r1, [r5, #0x4c]
	ldr r1, [r5, #0x50]
	ldr r0, [r5, #0x54]
	str r0, [r5, #0x50]
	str r1, [r5, #0x54]
	b _0809D38E
_0809D364:
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _0809D37A
	ldr r0, [r5, #0x48]
	rsbs r0, r0, #0
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x50]
	rsbs r0, r0, #0
	str r0, [r5, #0x50]
	b _0809D38E
_0809D37A:
	movs r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0809D38E
	ldr r0, [r5, #0x4c]
	rsbs r0, r0, #0
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x54]
	rsbs r0, r0, #0
	str r0, [r5, #0x54]
_0809D38E:
	ldr r0, [r6, #8]
	subs r0, #8
	str r0, [r6, #8]
	ldrb r0, [r5, #0xd]
	cmp r0, #0xc7
	bhi _0809D39E
	adds r0, #1
	strb r0, [r5, #0xd]
_0809D39E:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x1e
	bne _0809D3AC
	ldr r1, _0809D3A8 @ =0x08528218
	b _0809D3CA
	.align 2, 0
_0809D3A8: .4byte 0x08528218
_0809D3AC:
	cmp r0, #0x3c
	bne _0809D3B8
	ldr r1, _0809D3B4 @ =0x08528204
	b _0809D3CA
	.align 2, 0
_0809D3B4: .4byte 0x08528204
_0809D3B8:
	cmp r0, #0x5a
	bne _0809D3C4
	ldr r1, _0809D3C0 @ =0x085281F0
	b _0809D3CA
	.align 2, 0
_0809D3C0: .4byte 0x085281F0
_0809D3C4:
	cmp r0, #0x78
	bne _0809D3DC
	ldr r1, _0809D3D8 @ =0x085281DC
_0809D3CA:
	adds r0, r5, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	b _0809D3EC
	.align 2, 0
_0809D3D8: .4byte 0x085281DC
_0809D3DC:
	cmp r0, #0x96
	bne _0809D3EC
	ldr r1, _0809D460 @ =0x085281C8
	adds r0, r5, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
_0809D3EC:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bgt _0809D492
	str r1, [r6, #8]
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	bne _0809D492
	ldr r0, [r6, #0x44]
	cmp r0, #0
	bne _0809D492
	ldr r0, [r6, #0x5c]
	cmp r0, #0
	bne _0809D492
	str r0, [r6, #0x28]
	str r0, [r6, #0x40]
	str r0, [r6, #0x58]
	movs r1, #2
	mov r8, r1
	mov r1, r8
	strb r1, [r5, #0xb]
	strb r0, [r5, #0xa]
	str r0, [r5, #0x48]
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	str r0, [r5, #0x54]
	ldr r0, [r6, #0xc]
	ldr r1, [r7, #4]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	ldr r1, [r6, #0x10]
	ldr r2, [r7, #8]
	subs r1, r1, r2
	str r1, [r5, #0x44]
	ldr r2, [r7, #4]
	adds r0, r0, r2
	ldr r2, [r7, #8]
	adds r1, r1, r2
	movs r2, #0xc0
	lsls r2, r2, #0xe
	bl sub_0809FF78
	adds r2, r0, #0
	strb r2, [r5, #0x1d]
	lsls r0, r2, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0809D464
	adds r0, r5, #0
	bl sub_0806CF2C
	cmp r0, #0
	beq _0809D472
	mov r0, r8
	strb r0, [r5, #0x1c]
	b _0809D47A
	.align 2, 0
_0809D460: .4byte 0x085281C8
_0809D464:
	cmp r4, #2
	bne _0809D47A
	adds r0, r5, #0
	bl sub_0806CF2C
	cmp r0, #0
	beq _0809D478
_0809D472:
	movs r0, #1
	strb r0, [r5, #0x1c]
	b _0809D47A
_0809D478:
	strb r4, [r5, #0x1c]
_0809D47A:
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	adds r1, #0x3c
	strb r1, [r5, #0x1e]
	bl RandomNumberGenerator
	movs r1, #0x7f
	ands r1, r0
	adds r1, #0x78
	str r1, [r6, #0x18]
_0809D492:
	ldr r0, [r6, #0x38]
	adds r0, #0x87
	str r0, [r6, #0x38]
	ldr r0, [r6, #0x50]
	subs r0, #0x76
	str r0, [r6, #0x50]
	ldr r0, [r6, #0x68]
	adds r0, #0xc3
	str r0, [r6, #0x68]
	ldr r0, [r6, #4]
	ldr r1, [r6, #8]
	adds r0, r0, r1
	str r0, [r6, #4]
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
	adds r0, r5, #0
	adds r0, #0x22
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0809D500
	ldr r0, [r6, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r6, #0x14]
	ldr r0, [r6, #0xc]
	ldr r1, [r7, #4]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x14]
	bl sub_080009E4
	ldr r2, [r6, #0x10]
	ldr r1, [r7, #8]
	subs r2, r2, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r2, r2, r1
	str r2, [r5, #0x44]
	b _0809D510
_0809D500:
	ldr r0, [r6, #0xc]
	ldr r1, [r7, #4]
	subs r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x10]
	ldr r1, [r7, #8]
	subs r0, r0, r1
	str r0, [r5, #0x44]
_0809D510:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809D51C
sub_0809D51C: @ 0x0809D51C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, _0809D54C @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0809D550 @ =0x0000A094
	adds r1, r0, r1
	str r1, [sp, #0xc]
	ldr r2, [r7, #0x14]
	mov sb, r2
	ldrb r0, [r7, #0xb]
	cmp r0, #0xc
	bls _0809D540
	b _0809DA56
_0809D540:
	lsls r0, r0, #2
	ldr r1, _0809D554 @ =_0809D558
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809D54C: .4byte gEwramData
_0809D550: .4byte 0x0000A094
_0809D554: .4byte _0809D558
_0809D558: @ jump table
	.4byte _0809D58C @ case 0
	.4byte _0809D5DC @ case 1
	.4byte _0809D628 @ case 2
	.4byte _0809D80C @ case 3
	.4byte _0809D838 @ case 4
	.4byte _0809D8FC @ case 5
	.4byte _0809DA38 @ case 6
	.4byte _0809DA56 @ case 7
	.4byte _0809DA56 @ case 8
	.4byte _0809DA56 @ case 9
	.4byte _0809D9B8 @ case 10
	.4byte _0809DA38 @ case 11
	.4byte _0809DA56 @ case 12
_0809D58C:
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _0809D5AC
	adds r0, r7, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0809D5AC
	movs r0, #1
	strb r0, [r7, #0xc]
	ldr r1, _0809D5D0 @ =0x08528240
	adds r0, r7, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F0E4
_0809D5AC:
	mov r3, sb
	ldr r0, [r3, #8]
	cmp r0, #0x7f
	ble _0809D5B8
	subs r0, #3
	str r0, [r3, #8]
_0809D5B8:
	mov r0, sb
	ldr r1, [r0, #4]
	ldr r0, _0809D5D4 @ =0x00007FFF
	ands r1, r0
	ldr r0, _0809D5D8 @ =0x000007FF
	cmp r1, r0
	ble _0809D5C8
	b _0809DA56
_0809D5C8:
	movs r0, #0
	mov r1, sb
	str r0, [r1, #8]
	b _0809DA50
	.align 2, 0
_0809D5D0: .4byte 0x08528240
_0809D5D4: .4byte 0x00007FFF
_0809D5D8: .4byte 0x000007FF
_0809D5DC:
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _0809D5FC
	adds r0, r7, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0809D5FC
	movs r0, #1
	strb r0, [r7, #0xc]
	ldr r1, _0809D624 @ =0x08528240
	adds r0, r7, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F0E4
_0809D5FC:
	movs r2, #0
	movs r0, #1
	strb r0, [r7, #0xc]
	adds r1, r7, #0
	adds r1, #0x59
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0809D610
	b _0809DA56
_0809D610:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	str r2, [r7, #0x48]
	str r2, [r7, #0x4c]
	str r2, [r7, #0x50]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r7, #0x54]
	b _0809DA56
	.align 2, 0
_0809D624: .4byte 0x08528240
_0809D628:
	mov r2, sb
	ldr r0, [r2, #0xc]
	ldr r3, [sp, #0xc]
	ldr r1, [r3, #4]
	subs r0, r0, r1
	str r0, [r7, #0x40]
	ldr r0, [r2, #0x10]
	ldr r1, [r3, #8]
	subs r0, r0, r1
	str r0, [r7, #0x44]
	movs r3, #0x10
	rsbs r3, r3, #0
	movs r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [sp, #8]
	adds r0, r7, #0
	movs r1, #0
	adds r2, r3, #0
	bl sub_0806A6C4
	ldr r1, [r7, #0x40]
	ldr r3, [sp, #0xc]
	ldr r2, [r3, #4]
	adds r1, r1, r2
	mov r2, sb
	str r1, [r2, #0xc]
	ldr r1, [r7, #0x44]
	ldr r2, [r3, #8]
	adds r1, r1, r2
	mov r3, sb
	str r1, [r3, #0x10]
	movs r1, #0xc1
	lsls r1, r1, #2
	ands r1, r0
	cmp r1, #0
	bne _0809D678
	b _0809DA56
_0809D678:
	ldrb r1, [r7, #0x1a]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xf
	bne _0809D68A
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _0809D698
_0809D68A:
	movs r0, #0xa
	strb r0, [r7, #0xb]
	movs r0, #0x3c
	strb r0, [r7, #0xd]
	movs r0, #0x6e
	bl PlaySong
_0809D698:
	ldr r1, _0809D7F4 @ =0x08528274
	adds r0, r7, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F0E4
	adds r2, r7, #0
	adds r2, #0x22
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r1, [r2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl RandomNumberGenerator
	ldr r1, _0809D7F8 @ =0x001FFFFF
	ands r0, r1
	ldr r1, [r7, #0x40]
	adds r1, r1, r0
	ldr r2, _0809D7FC @ =0xFFF00000
	mov r8, r2
	add r1, r8
	mov sl, r1
	bl RandomNumberGenerator
	ldr r3, _0809D7F8 @ =0x001FFFFF
	ands r0, r3
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	mov r0, r8
	adds r5, r1, r0
	bl RandomNumberGenerator
	ldr r4, _0809D800 @ =0x0000FFFF
	ands r0, r4
	ldr r1, _0809D804 @ =0xFFFF8000
	adds r6, r0, r1
	bl RandomNumberGenerator
	ands r0, r4
	ldr r2, _0809D808 @ =0xFFFF0000
	subs r0, r2, r0
	str r0, [sp]
	movs r3, #0x33
	str r3, [sp, #4]
	adds r0, r7, #0
	mov r1, sl
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0809FD9C
	bl RandomNumberGenerator
	ldr r1, _0809D7F8 @ =0x001FFFFF
	ands r0, r1
	ldr r1, [r7, #0x40]
	adds r1, r1, r0
	add r1, r8
	mov sl, r1
	bl RandomNumberGenerator
	ldr r2, _0809D7F8 @ =0x001FFFFF
	ands r0, r2
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	mov r3, r8
	adds r5, r1, r3
	bl RandomNumberGenerator
	ands r0, r4
	ldr r1, _0809D804 @ =0xFFFF8000
	adds r6, r0, r1
	bl RandomNumberGenerator
	ands r0, r4
	ldr r2, _0809D808 @ =0xFFFF0000
	subs r0, r2, r0
	str r0, [sp]
	movs r3, #0x33
	str r3, [sp, #4]
	adds r0, r7, #0
	mov r1, sl
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0809FD9C
	bl RandomNumberGenerator
	ldr r1, _0809D7F8 @ =0x001FFFFF
	ands r0, r1
	ldr r1, [r7, #0x40]
	adds r1, r1, r0
	add r1, r8
	mov sl, r1
	bl RandomNumberGenerator
	ldr r2, _0809D7F8 @ =0x001FFFFF
	ands r0, r2
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	mov r3, r8
	adds r5, r1, r3
	bl RandomNumberGenerator
	ands r0, r4
	ldr r1, _0809D804 @ =0xFFFF8000
	adds r6, r0, r1
	bl RandomNumberGenerator
	ands r0, r4
	ldr r2, _0809D808 @ =0xFFFF0000
	subs r0, r2, r0
	str r0, [sp]
	movs r0, #0x32
	str r0, [sp, #4]
	adds r0, r7, #0
	mov r1, sl
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0809FD9C
	bl RandomNumberGenerator
	ldr r3, _0809D7F8 @ =0x001FFFFF
	ands r0, r3
	ldr r1, [r7, #0x40]
	adds r1, r1, r0
	add r1, r8
	mov sl, r1
	bl RandomNumberGenerator
	ldr r1, _0809D7F8 @ =0x001FFFFF
	ands r0, r1
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	mov r2, r8
	adds r5, r1, r2
	bl RandomNumberGenerator
	ands r0, r4
	ldr r3, _0809D804 @ =0xFFFF8000
	adds r6, r0, r3
	bl RandomNumberGenerator
	ands r0, r4
	ldr r1, _0809D808 @ =0xFFFF0000
	subs r0, r1, r0
	str r0, [sp]
	movs r0, #0x31
	str r0, [sp, #4]
	adds r0, r7, #0
	mov r1, sl
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0809FD9C
	movs r0, #0x6f
	bl PlaySong
	b _0809DA56
	.align 2, 0
_0809D7F4: .4byte 0x08528274
_0809D7F8: .4byte 0x001FFFFF
_0809D7FC: .4byte 0xFFF00000
_0809D800: .4byte 0x0000FFFF
_0809D804: .4byte 0xFFFF8000
_0809D808: .4byte 0xFFFF0000
_0809D80C:
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0809D81C
	b _0809DA56
_0809D81C:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xb]
	movs r0, #0x40
	strb r0, [r7, #0xd]
	str r1, [r7, #0x48]
	ldr r0, _0809D834 @ =0xFFFF8000
	str r0, [r7, #0x4c]
	str r1, [r7, #0x50]
	str r1, [r7, #0x54]
	b _0809DA56
	.align 2, 0
_0809D834: .4byte 0xFFFF8000
_0809D838:
	mov r2, sb
	ldr r0, [r2, #0xc]
	ldr r3, [sp, #0xc]
	ldr r1, [r3, #4]
	subs r0, r0, r1
	str r0, [r7, #0x40]
	ldr r0, [r2, #0x10]
	ldr r1, [r3, #8]
	subs r0, r0, r1
	str r0, [r7, #0x44]
	adds r0, r7, #0
	bl sub_0806D3AC
	ldr r0, [r7, #0x40]
	ldr r2, [sp, #0xc]
	ldr r1, [r2, #4]
	adds r0, r0, r1
	mov r3, sb
	str r0, [r3, #0xc]
	ldr r0, [r7, #0x44]
	ldr r1, [r2, #8]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0809D8CC
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x40]
	adds r6, r1, r0
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r4, [r7, #0x44]
	adds r4, r4, r0
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_0802D5EC
	adds r2, r0, #0
	movs r0, #4
	str r0, [sp]
	movs r0, #7
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r3, #0
	bl sub_08045B44
	adds r4, r0, #0
	cmp r4, #0
	beq _0809D8CC
	movs r0, #0x80
	lsls r0, r0, #7
	bl sub_0802D5EC
	ldr r2, _0809D8F4 @ =0xFFFF0000
	adds r0, r0, r2
	str r0, [r4, #0x4c]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0809D8C0
	adds r0, #0x1f
_0809D8C0:
	asrs r0, r0, #5
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0xa
	strb r0, [r1]
_0809D8CC:
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0809D8DA
	b _0809DA56
_0809D8DA:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0
	strb r0, [r7, #0xd]
	ldr r1, _0809D8F8 @ =0x08528284
	adds r0, r7, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F0E4
	b _0809DA56
	.align 2, 0
_0809D8F4: .4byte 0xFFFF0000
_0809D8F8: .4byte 0x08528284
_0809D8FC:
	ldrb r1, [r7, #0xd]
	adds r0, r1, #1
	strb r0, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0809D966
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r3, [r7, #0x40]
	adds r6, r3, r0
	movs r0, #0x10
	bl sub_0802D5EC
	lsls r0, r0, #0x10
	ldr r4, [r7, #0x44]
	adds r4, r4, r0
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_0802D5EC
	adds r2, r0, #0
	movs r0, #4
	str r0, [sp]
	movs r0, #7
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r3, #0
	bl sub_08045B44
	adds r4, r0, #0
	cmp r4, #0
	beq _0809D966
	movs r0, #0x80
	lsls r0, r0, #7
	bl sub_0802D5EC
	ldr r1, _0809D9B4 @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r4, #0x4c]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0809D95A
	adds r0, #0x1f
_0809D95A:
	asrs r0, r0, #5
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x5c
	movs r0, #0xa
	strb r0, [r1]
_0809D966:
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0809DA56
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	movs r0, #0x40
	strb r0, [r7, #0xd]
	adds r0, r7, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r7, #0
	adds r1, #0x46
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r2, #0x6c
	movs r3, #5
	bl sub_080D7308
	ldr r0, [sp, #0xc]
	movs r2, #6
	ldrsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r3, [sp, #0xc]
	movs r1, #0xa
	ldrsh r2, [r3, r1]
	movs r1, #0xb8
	lsls r1, r1, #1
	subs r1, r1, r2
	str r4, [sp]
	b _0809DA28
	.align 2, 0
_0809D9B4: .4byte 0xFFFF0000
_0809D9B8:
	ldrb r1, [r7, #0xd]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0809D9E0
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	ldr r2, _0809DA34 @ =0xFFFA0000
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #0xd
	movs r3, #0xc0
	lsls r3, r3, #0xc
	adds r4, r7, #0
	adds r4, #0x5c
	ldrb r4, [r4]
	subs r4, #1
	str r4, [sp]
	bl sub_0806D5C0
_0809D9E0:
	ldrb r0, [r7, #0xd]
	bl sub_0806D518
	adds r3, r7, #0
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
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0809DA56
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	ldr r3, [sp, #0xc]
	movs r0, #6
	ldrsh r1, [r3, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	movs r1, #0xa
	ldrsh r2, [r3, r1]
	movs r1, #0xb8
	lsls r1, r1, #1
	subs r1, r1, r2
	movs r2, #0
	str r2, [sp]
_0809DA28:
	movs r2, #5
	movs r3, #0x20
	bl sub_080D6EF8
	b _0809DA56
	.align 2, 0
_0809DA34: .4byte 0xFFFA0000
_0809DA38:
	adds r0, r7, #0
	bl sub_080683BC
	movs r0, #0
	bl sub_08034498
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_0809DA50:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
_0809DA56:
	mov r2, sb
	ldr r0, [r2, #0x38]
	adds r0, #0x87
	str r0, [r2, #0x38]
	ldr r0, [r2, #0x50]
	subs r0, #0x76
	str r0, [r2, #0x50]
	ldr r0, [r2, #0x68]
	adds r0, #0xc3
	str r0, [r2, #0x68]
	adds r5, r7, #0
	adds r5, #0x22
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0809DA9E
	ldr r0, [r2, #4]
	ldr r1, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r7, #0
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
_0809DA9E:
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0809DAD8
	mov r3, sb
	ldr r0, [r3, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r3, #0x14]
	ldr r0, [r3, #0xc]
	ldr r2, [sp, #0xc]
	ldr r1, [r2, #4]
	subs r0, r0, r1
	str r0, [r7, #0x40]
	ldr r0, [r3, #0x14]
	bl sub_080009E4
	mov r3, sb
	ldr r2, [r3, #0x10]
	ldr r3, [sp, #0xc]
	ldr r1, [r3, #8]
	subs r2, r2, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r2, r2, r1
	str r2, [r7, #0x44]
	b _0809DAEE
_0809DAD8:
	mov r1, sb
	ldr r0, [r1, #0xc]
	ldr r2, [sp, #0xc]
	ldr r1, [r2, #4]
	subs r0, r0, r1
	str r0, [r7, #0x40]
	mov r3, sb
	ldr r0, [r3, #0x10]
	ldr r1, [r2, #8]
	subs r0, r0, r1
	str r0, [r7, #0x44]
_0809DAEE:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809DB00
sub_0809DB00: @ 0x0809DB00
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, _0809DB24 @ =gEwramData
	ldr r0, [r1]
	ldr r2, _0809DB28 @ =0x0000A094
	adds r5, r0, r2
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	adds r6, r1, #0
	cmp r0, #9
	bls _0809DB1A
	b _0809DE5C
_0809DB1A:
	lsls r0, r0, #2
	ldr r1, _0809DB2C @ =_0809DB30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809DB24: .4byte gEwramData
_0809DB28: .4byte 0x0000A094
_0809DB2C: .4byte _0809DB30
_0809DB30: @ jump table
	.4byte _0809DB58 @ case 0
	.4byte _0809DB6A @ case 1
	.4byte _0809DBB8 @ case 2
	.4byte _0809DBF6 @ case 3
	.4byte _0809DC38 @ case 4
	.4byte _0809DD2C @ case 5
	.4byte _0809DD5E @ case 6
	.4byte _0809DD80 @ case 7
	.4byte _0809DDC4 @ case 8
	.4byte _0809DDF4 @ case 9
_0809DB58:
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _0809DB68
	b _0809DE5C
_0809DB68:
	b _0809DDE4
_0809DB6A:
	ldr r2, [r6]
	ldr r0, _0809DBB0 @ =0x0000042C
	adds r3, r2, r0
	ldr r0, [r3]
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	beq _0809DB7C
	b _0809DE5C
_0809DB7C:
	adds r1, r4, #0
	adds r1, #0x23
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r3]
	orrs r0, r5
	str r0, [r3]
	ldr r1, _0809DBB4 @ =0x0000A074
	adds r2, r2, r1
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r6]
	ldr r2, _0809DBB0 @ =0x0000042C
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #2
	orrs r0, r2
	str r0, [r1]
	adds r0, r4, #0
	bl sub_08034498
	b _0809DE5C
	.align 2, 0
_0809DBB0: .4byte 0x0000042C
_0809DBB4: .4byte 0x0000A074
_0809DBB8:
	ldr r0, [r6]
	ldr r1, _0809DBE4 @ =0x00013110
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, [r5, #4]
	adds r0, r0, r1
	ldr r1, _0809DBE8 @ =0x00FFFFFF
	cmp r0, r1
	ble _0809DBEC
	adds r2, r4, #0
	adds r2, #0x23
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0
	strb r0, [r2]
	strb r1, [r4, #0xd]
	movs r0, #2
	bl SetPlayerInput
	b _0809DE78
	.align 2, 0
_0809DBE4: .4byte 0x00013110
_0809DBE8: .4byte 0x00FFFFFF
_0809DBEC:
	movs r0, #2
	movs r1, #0x10
	bl SetPlayerInput
	b _0809DE5C
_0809DBF6:
	movs r0, #2
	movs r1, #0
	bl SetPlayerInput
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0809DC0E
	b _0809DE5C
_0809DC0E:
	movs r2, #0
	strb r2, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x23
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	strb r2, [r4, #0xc]
	ldr r0, _0809DC30 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0809DC34 @ =0x00000427
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	strb r2, [r4, #0x19]
	b _0809DE5C
	.align 2, 0
_0809DC30: .4byte gEwramData
_0809DC34: .4byte 0x00000427
_0809DC38:
	ldr r2, _0809DD20 @ =0xFFFF8000
	movs r0, #1
	movs r1, #0
	bl sub_0800ED24
	movs r0, #2
	movs r1, #0
	bl SetPlayerInput
	ldrb r2, [r4, #0xc]
	cmp r2, #0
	bne _0809DC64
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	bgt _0809DC64
	adds r0, r2, #1
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x18]
_0809DC64:
	ldrb r2, [r4, #0xc]
	cmp r2, #1
	bne _0809DC7E
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	movs r0, #0x8c
	lsls r0, r0, #1
	cmp r1, r0
	bgt _0809DC7E
	adds r0, r2, #1
	strb r0, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x18]
_0809DC7E:
	ldrb r2, [r4, #0xc]
	cmp r2, #2
	bne _0809DC98
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	movs r0, #0x88
	lsls r0, r0, #1
	cmp r1, r0
	bgt _0809DC98
	adds r0, r2, #1
	strb r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x18]
_0809DC98:
	ldrb r2, [r4, #0xc]
	cmp r2, #3
	bne _0809DCB2
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	movs r0, #0x86
	lsls r0, r0, #1
	cmp r1, r0
	bgt _0809DCB2
	adds r0, r2, #1
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0x18]
_0809DCB2:
	ldrb r2, [r4, #0xc]
	cmp r2, #4
	bne _0809DCCC
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	movs r0, #0x84
	lsls r0, r0, #1
	cmp r1, r0
	bgt _0809DCCC
	adds r0, r2, #1
	strb r0, [r4, #0xc]
	movs r0, #5
	strb r0, [r4, #0x18]
_0809DCCC:
	ldrb r0, [r4, #0xc]
	cmp r0, #5
	bne _0809DCF8
	ldrb r0, [r4, #0x19]
	cmp r0, #4
	bls _0809DCF8
	ldr r0, _0809DD24 @ =0x0820AC4C
	ldr r1, _0809DD28 @ =0x085282D0
	adds r2, r4, #0
	adds r2, #0x20
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0803CC70
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_0809DCF8:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	movs r2, #0
	strb r0, [r4, #0xd]
	ldr r1, [r5, #8]
	movs r0, #0xc0
	lsls r0, r0, #0x10
	cmp r1, r0
	ble _0809DD0C
	b _0809DE5C
_0809DD0C:
	adds r1, r4, #0
	adds r1, #0x23
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	strb r2, [r4, #0xc]
	movs r0, #6
	strb r0, [r4, #0x18]
	strb r2, [r4, #0x19]
	b _0809DE5C
	.align 2, 0
_0809DD20: .4byte 0xFFFF8000
_0809DD24: .4byte 0x0820AC4C
_0809DD28: .4byte 0x085282D0
_0809DD2C:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl sub_0800ED24
	movs r0, #2
	movs r1, #0
	bl SetPlayerInput
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _0809DD46
	b _0809DE5C
_0809DD46:
	adds r2, r4, #0
	adds r2, #0x23
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0
	strb r0, [r2]
	strb r1, [r4, #0xd]
	strb r1, [r4, #0xc]
	movs r0, #7
	strb r0, [r4, #0x18]
	strb r1, [r4, #0x19]
	b _0809DE5C
_0809DD5E:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl sub_0800ED24
	movs r0, #2
	movs r1, #0
	bl SetPlayerInput
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0809DE5C
	b _0809DDE4
_0809DD80:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl sub_0800ED24
	movs r0, #2
	movs r1, #0
	bl SetPlayerInput
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	beq _0809DE5C
	adds r2, r4, #0
	adds r2, #0x23
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0
	strb r0, [r2]
	strb r1, [r4, #0xd]
	ldr r0, _0809DDBC @ =0x0820AC4C
	ldr r1, _0809DDC0 @ =0x085282F4
	subs r2, #3
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0803CC70
	b _0809DE5C
	.align 2, 0
_0809DDBC: .4byte 0x0820AC4C
_0809DDC0: .4byte 0x085282F4
_0809DDC4:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl sub_0800ED24
	movs r0, #2
	movs r1, #0
	bl SetPlayerInput
	ldrb r0, [r4, #0xd]
	adds r1, r0, #1
	strb r1, [r4, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _0809DE5C
_0809DDE4:
	adds r2, r4, #0
	adds r2, #0x23
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0
	strb r0, [r2]
	strb r1, [r4, #0xd]
	b _0809DE5C
_0809DDF4:
	movs r0, #2
	movs r1, #0
	bl SetPlayerInput
	ldr r1, [r5, #8]
	ldr r0, _0809DE3C @ =0x012FFFFF
	cmp r1, r0
	ble _0809DE50
	adds r1, r4, #0
	adds r1, #0x23
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	strb r5, [r4, #0xd]
	ldr r4, _0809DE40 @ =gEwramData
	ldr r2, [r4]
	ldr r1, _0809DE44 @ =0x0000042C
	adds r3, r2, r1
	ldr r0, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3]
	ldr r0, _0809DE48 @ =0x0000A074
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r4]
	ldr r1, _0809DE4C @ =0x00000427
	adds r0, r0, r1
	strb r5, [r0]
	movs r0, #1
	b _0809DE7A
	.align 2, 0
_0809DE3C: .4byte 0x012FFFFF
_0809DE40: .4byte gEwramData
_0809DE44: .4byte 0x0000042C
_0809DE48: .4byte 0x0000A074
_0809DE4C: .4byte 0x00000427
_0809DE50:
	movs r2, #0x80
	lsls r2, r2, #9
	movs r0, #1
	movs r1, #0
	bl sub_0800ED24
_0809DE5C:
	ldr r0, [r4, #0x48]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4, #0x48]
	bl sub_080009E4
	cmp r0, #0
	bge _0809DE70
	adds r0, #0xf
_0809DE70:
	asrs r1, r0, #4
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_0809DE78:
	movs r0, #0
_0809DE7A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0809DE80
sub_0809DE80: @ 0x0809DE80
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	mov r8, r0
	ldr r0, _0809DEE4 @ =0x081190C0
	movs r1, #0
	bl sub_0803B800
	adds r7, r0, #0
	cmp r7, #0
	blt _0809DEF4
	ldr r4, _0809DEE8 @ =0x0820AC4C
	adds r0, r4, #0
	movs r1, #0
	bl sub_08068264
	adds r5, r6, #0
	adds r5, #0x20
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08068264
	adds r1, r6, #0
	adds r1, #0x21
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0x2c
	strb r0, [r2]
	mov r3, r8
	str r7, [r3]
	movs r0, #0
	ldrsb r0, [r5, r0]
	str r0, [r3, #0x20]
	movs r0, #0
	ldrsb r0, [r1, r0]
	str r0, [r3, #0x24]
	ldr r1, _0809DEEC @ =0x082258FC
	ldrb r3, [r2]
	adds r0, r6, #0
	adds r2, r7, #0
	bl sub_0803B924
	ldr r0, _0809DEF0 @ =sub_0803B9D0
	str r0, [r6, #4]
	movs r0, #1
	b _0809DEF6
	.align 2, 0
_0809DEE4: .4byte 0x081190C0
_0809DEE8: .4byte 0x0820AC4C
_0809DEEC: .4byte 0x082258FC
_0809DEF0: .4byte sub_0803B9D0
_0809DEF4:
	movs r0, #0
_0809DEF6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0809DF00
sub_0809DF00: @ 0x0809DF00
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
	movs r4, #0
	strh r0, [r6, #0x34]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08042B8C
	movs r1, #0x34
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _0809DF74
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
	strb r4, [r6, #0xb]
	strb r4, [r6, #0xc]
	ldr r0, [r6, #0x40]
	ldr r1, [r6, #0x44]
	bl sub_080D6450
_0809DF74:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809DF7C
sub_0809DF7C: @ 0x0809DF7C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, _0809E048 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0809E04C @ =0x0000A094
	adds r6, r0, r1
	ldr r2, _0809E050 @ =sub_0809E0C0
	movs r0, #0x49
	movs r1, #0xcf
	bl EntityCreateInRange
	adds r4, r0, #0
	ldr r2, [r7, #0x14]
	cmp r4, #0
	bne _0809DFA8
	b _0809E0AC
_0809DFA8:
	ldr r0, [r6, #4]
	subs r0, r5, r0
	str r0, [r4, #0x40]
	ldr r0, [r6, #8]
	mov r1, r8
	subs r0, r1, r0
	str r0, [r4, #0x44]
	str r5, [r4, #0x14]
	str r5, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x20
	mov r1, sb
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #3
	adds r1, r4, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r2, [r2]
	adds r0, r7, #0
	adds r0, #0x20
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _0809E054 @ =0x082258FC
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_0803B924
	ldr r1, _0809E058 @ =0x08528298
	adds r0, r4, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	adds r0, r4, #0
	bl sub_0803F17C
	bl RandomNumberGenerator
	movs r1, #7
	ands r1, r0
	adds r0, r4, #0
	adds r0, #0x6f
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	str r7, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
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
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809E060
	ldr r0, _0809E05C @ =0xFFFFC000
	b _0809E064
	.align 2, 0
_0809E048: .4byte gEwramData
_0809E04C: .4byte 0x0000A094
_0809E050: .4byte sub_0809E0C0
_0809E054: .4byte 0x082258FC
_0809E058: .4byte 0x08528298
_0809E05C: .4byte 0xFFFFC000
_0809E060:
	movs r0, #0x80
	lsls r0, r0, #7
_0809E064:
	str r0, [r4, #0x48]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	adds r2, r4, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0809E0A4 @ =sub_0803B9D0
	str r0, [r4, #4]
	mov r0, sb
	cmp r0, #9
	ble _0809E0B0
	movs r0, #1
	strb r0, [r4, #0xa]
	movs r0, #5
	strb r0, [r4, #0xb]
	ldr r1, _0809E0A8 @ =0x085282BC
	adds r0, r4, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F0E4
	b _0809E0B0
	.align 2, 0
_0809E0A4: .4byte sub_0803B9D0
_0809E0A8: .4byte 0x085282BC
_0809E0AC:
	movs r0, #0
	b _0809E0B2
_0809E0B0:
	adds r0, r4, #0
_0809E0B2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0809E0C0
sub_0809E0C0: @ 0x0809E0C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, [r7, #0x10]
	mov sl, r0
	ldr r0, _0809E140 @ =gEwramData
	ldr r0, [r0]
	ldr r1, _0809E144 @ =0x0000A094
	adds r1, r1, r0
	mov sb, r1
	mov r2, sl
	cmp r2, #0
	bne _0809E0E4
	b _0809E598
_0809E0E4:
	ldr r0, [r2]
	cmp r0, #0
	bne _0809E0EC
	b _0809E598
_0809E0EC:
	mov r0, sl
	adds r0, #0x36
	adds r1, r7, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0809E0FE
	b _0809E598
_0809E0FE:
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	bne _0809E1C0
	adds r4, r7, #0
	adds r4, #0x58
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0809E154
	ldr r0, [r7, #0x40]
	mov r3, sb
	ldr r1, [r3, #4]
	adds r0, r0, r1
	ldr r1, [r7, #0x18]
	cmp r0, r1
	blt _0809E186
	bl RandomNumberGenerator
	ldr r1, _0809E148 @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r7, #0x14]
	subs r0, r0, r1
	ldr r1, _0809E14C @ =0xFFF80000
	adds r0, r0, r1
	str r0, [r7, #0x18]
	ldr r0, _0809E150 @ =0xFFFFC000
	str r0, [r7, #0x48]
	ldrb r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	b _0809E184
	.align 2, 0
_0809E140: .4byte gEwramData
_0809E144: .4byte 0x0000A094
_0809E148: .4byte 0x000FFFFF
_0809E14C: .4byte 0xFFF80000
_0809E150: .4byte 0xFFFFC000
_0809E154:
	ldr r0, [r7, #0x40]
	mov r2, sb
	ldr r1, [r2, #4]
	adds r0, r0, r1
	ldr r1, [r7, #0x18]
	cmp r0, r1
	bgt _0809E186
	bl RandomNumberGenerator
	ldr r1, _0809E1B8 @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r0, r0, r3
	str r0, [r7, #0x18]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r7, #0x48]
	ldrb r1, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
_0809E184:
	strb r0, [r4]
_0809E186:
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r2, _0809E1BC @ =0xFFE00000
	adds r0, r7, #0
	bl sub_0806D288
	adds r0, r7, #0
	bl sub_0803F17C
	mov r0, sl
	ldrb r1, [r0, #0x18]
	adds r0, r7, #0
	adds r0, #0x20
	ldrb r0, [r0]
	adds r0, #1
	cmp r1, r0
	beq _0809E1AA
	b _0809E598
_0809E1AA:
	ldrb r0, [r7, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xa]
	strb r1, [r7, #0xb]
	strb r1, [r7, #0xc]
	b _0809E598
	.align 2, 0
_0809E1B8: .4byte 0x000FFFFF
_0809E1BC: .4byte 0xFFE00000
_0809E1C0:
	cmp r0, #1
	beq _0809E1C6
	b _0809E598
_0809E1C6:
	ldrb r0, [r7, #0xb]
	cmp r0, #6
	bls _0809E1CE
	b _0809E592
_0809E1CE:
	lsls r0, r0, #2
	ldr r1, _0809E1D8 @ =_0809E1DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809E1D8: .4byte _0809E1DC
_0809E1DC: @ jump table
	.4byte _0809E1F8 @ case 0
	.4byte _0809E250 @ case 1
	.4byte _0809E278 @ case 2
	.4byte _0809E2B0 @ case 3
	.4byte _0809E2EC @ case 4
	.4byte _0809E388 @ case 5
	.4byte _0809E400 @ case 6
_0809E1F8:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r6, #0
	strb r0, [r7, #0xb]
	ldr r1, _0809E244 @ =0x085282B4
	adds r0, r7, #0
	movs r2, #2
	movs r3, #1
	bl sub_0803F0E4
	bl RandomNumberGenerator
	ldr r5, [r7, #0x44]
	mov r1, sb
	ldr r4, [r1, #8]
	adds r4, r5, r4
	movs r1, #0xc0
	lsls r1, r1, #0xe
	bl __umodsi3
	movs r2, #0xc0
	lsls r2, r2, #0xf
	adds r0, r0, r2
	subs r4, r4, r0
	str r4, [r7, #0x18]
	ldr r3, _0809E248 @ =0xFFF30000
	adds r5, r5, r3
	str r5, [r7, #0x44]
	ldr r0, _0809E24C @ =0xFFFFF000
	str r0, [r7, #0x54]
	str r6, [r7, #0x48]
	str r6, [r7, #0x50]
	str r6, [r7, #0x4c]
	movs r0, #0x8f
	lsls r0, r0, #1
	bl PlaySong
	b _0809E592
	.align 2, 0
_0809E244: .4byte 0x085282B4
_0809E248: .4byte 0xFFF30000
_0809E24C: .4byte 0xFFFFF000
_0809E250:
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r7, #0
	bl sub_0806D3D8
	ldr r0, [r7, #0x44]
	mov r2, sb
	ldr r1, [r2, #8]
	adds r0, r0, r1
	ldr r1, [r7, #0x18]
	cmp r0, r1
	ble _0809E26A
	b _0809E592
_0809E26A:
	movs r1, #0
	str r1, [r7, #0x54]
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	strb r1, [r7, #0xd]
	b _0809E592
_0809E278:
	adds r0, r7, #0
	movs r1, #0xc
	bl sub_0806D4A8
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r7, #0
	bl sub_0806D3D8
	ldr r1, [r7, #0x4c]
	cmp r1, #0
	bge _0809E292
	rsbs r1, r1, #0
_0809E292:
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _0809E29C
	b _0809E592
_0809E29C:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r1, #0
	strb r0, [r7, #0xb]
	mov r3, sl
	ldrb r0, [r3, #0x19]
	adds r0, #1
	strb r0, [r3, #0x19]
	str r1, [r7, #0x48]
	b _0809E592
_0809E2B0:
	ldr r0, [r7, #0x48]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r7, #0x48]
	bl sub_080009E4
	cmp r0, #0
	bge _0809E2C4
	adds r0, #3
_0809E2C4:
	asrs r0, r0, #2
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	str r1, [r7, #0x44]
	mov r2, sl
	ldrb r0, [r2, #0x18]
	cmp r0, #6
	beq _0809E2D6
	b _0809E592
_0809E2D6:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	adds r0, r7, #0
	adds r0, #0x20
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	strb r0, [r7, #0xd]
	b _0809E592
_0809E2EC:
	ldr r0, [r7, #0x48]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	str r0, [r7, #0x48]
	bl sub_080009E4
	cmp r0, #0
	bge _0809E300
	adds r0, #3
_0809E300:
	asrs r0, r0, #2
	ldr r1, [r7, #0x44]
	adds r1, r1, r0
	str r1, [r7, #0x44]
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0809E32C
	ldr r1, _0809E380 @ =0x085282BC
	adds r0, r7, #0
	movs r2, #2
	movs r3, #0
	bl sub_0803F0E4
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	ldr r0, _0809E384 @ =0x0000011D
	bl PlaySong
_0809E32C:
	ldrb r0, [r7, #0xd]
	cmp r0, #0xa
	beq _0809E334
	b _0809E592
_0809E334:
	adds r4, r7, #0
	adds r4, #0x20
	ldrb r0, [r4]
	cmp r0, #1
	bne _0809E34E
	movs r1, #0xe0
	lsls r1, r1, #0xf
	movs r2, #0x80
	lsls r2, r2, #0x11
	mov r0, sl
	movs r3, #0xa
	bl sub_0809DF7C
_0809E34E:
	ldrb r0, [r4]
	cmp r0, #3
	bne _0809E364
	movs r1, #0x80
	lsls r1, r1, #0x11
	movs r2, #0xe0
	lsls r2, r2, #0xf
	mov r0, sl
	movs r3, #0xa
	bl sub_0809DF7C
_0809E364:
	ldrb r0, [r4]
	cmp r0, #2
	beq _0809E36C
	b _0809E592
_0809E36C:
	movs r1, #0xc8
	lsls r1, r1, #0x11
	movs r2, #0x80
	lsls r2, r2, #0x11
	mov r0, sl
	movs r3, #0xa
	bl sub_0809DF7C
	b _0809E592
	.align 2, 0
_0809E380: .4byte 0x085282BC
_0809E384: .4byte 0x0000011D
_0809E388:
	ldr r0, [r7, #0x48]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r7, #0x48]
	bl sub_080009E4
	cmp r0, #0
	bge _0809E39C
	adds r0, #3
_0809E39C:
	asrs r1, r0, #2
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0809E3B4
	b _0809E592
_0809E3B4:
	ldrb r0, [r7, #0xb]
	adds r0, #1
	movs r4, #0
	strb r0, [r7, #0xb]
	bl RandomNumberGenerator
	ldr r1, _0809E3F4 @ =0x007FFFFF
	ands r1, r0
	mov r3, sl
	ldr r2, [r3, #0x40]
	adds r2, r2, r1
	mov r1, sb
	ldr r0, [r1, #4]
	ldr r3, _0809E3F8 @ =0xFFC00000
	adds r0, r0, r3
	adds r2, r2, r0
	str r2, [r7, #0x14]
	bl RandomNumberGenerator
	ldr r1, _0809E3FC @ =0x003FFFFF
	ands r1, r0
	mov r2, sl
	ldr r0, [r2, #0x44]
	subs r0, r0, r1
	mov r3, sb
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [r7, #0x18]
	str r4, [r7, #0x48]
	movs r0, #0x28
	strb r0, [r7, #0xd]
	b _0809E592
	.align 2, 0
_0809E3F4: .4byte 0x007FFFFF
_0809E3F8: .4byte 0xFFC00000
_0809E3FC: .4byte 0x003FFFFF
_0809E400:
	ldrb r2, [r7, #0xd]
	cmp r2, #0x13
	bls _0809E478
	ldr r1, [r7, #0x40]
	mov r2, sb
	ldr r0, [r2, #4]
	adds r6, r1, r0
	ldr r0, [r7, #0x14]
	subs r6, r0, r6
	ldr r1, [r7, #0x44]
	ldr r0, [r2, #8]
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r7, #0x18]
	mov r3, r8
	subs r3, r0, r3
	mov r8, r3
	ldrb r5, [r7, #0xd]
	subs r4, r5, #1
	adds r0, r6, #0
	adds r1, r4, #0
	bl __divsi3
	adds r6, r0, #0
	mov r0, r8
	adds r1, r4, #0
	bl __divsi3
	mov r8, r0
	cmp r5, #0x14
	bne _0809E4AE
	bl RandomNumberGenerator
	ldr r5, _0809E470 @ =0x000FFFFF
	ands r0, r5
	mov r2, sl
	ldr r1, [r2, #0x40]
	adds r1, r1, r0
	mov r3, sb
	ldr r0, [r3, #4]
	ldr r4, _0809E474 @ =0xFFF80000
	adds r0, r0, r4
	adds r1, r1, r0
	str r1, [r7, #0x14]
	bl RandomNumberGenerator
	ands r0, r5
	mov r2, sl
	ldr r1, [r2, #0x44]
	adds r1, r1, r0
	mov r3, sb
	ldr r0, [r3, #8]
	adds r0, r0, r4
	adds r1, r1, r0
	str r1, [r7, #0x18]
	b _0809E4AE
	.align 2, 0
_0809E470: .4byte 0x000FFFFF
_0809E474: .4byte 0xFFF80000
_0809E478:
	ldr r1, [r7, #0x40]
	mov r3, sb
	ldr r0, [r3, #4]
	adds r6, r1, r0
	ldr r0, [r7, #0x14]
	subs r6, r0, r6
	ldr r1, [r7, #0x44]
	ldr r0, [r3, #8]
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r7, #0x18]
	subs r1, r0, r1
	mov r8, r1
	cmp r2, #1
	beq _0809E4AE
	ldrb r4, [r7, #0xd]
	subs r4, #1
	adds r0, r6, #0
	adds r1, r4, #0
	bl __divsi3
	adds r6, r0, #0
	mov r0, r8
	adds r1, r4, #0
	bl __divsi3
	mov r8, r0
_0809E4AE:
	ldr r2, [r7, #0x48]
	cmp r2, r6
	ble _0809E4D0
	subs r1, r2, r6
	cmp r1, #0
	bge _0809E4BC
	rsbs r1, r1, #0
_0809E4BC:
	ldr r0, _0809E4C8 @ =0x00003FFF
	cmp r1, r0
	ble _0809E4DE
	ldr r3, _0809E4CC @ =0xFFFFC000
	adds r0, r2, r3
	b _0809E4EE
	.align 2, 0
_0809E4C8: .4byte 0x00003FFF
_0809E4CC: .4byte 0xFFFFC000
_0809E4D0:
	subs r1, r2, r6
	cmp r1, #0
	bge _0809E4D8
	rsbs r1, r1, #0
_0809E4D8:
	ldr r0, _0809E4E4 @ =0x00003FFF
	cmp r1, r0
	bgt _0809E4E8
_0809E4DE:
	str r6, [r7, #0x48]
	b _0809E4F0
	.align 2, 0
_0809E4E4: .4byte 0x00003FFF
_0809E4E8:
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r2, r1
_0809E4EE:
	str r0, [r7, #0x48]
_0809E4F0:
	ldr r2, [r7, #0x4c]
	cmp r2, r8
	ble _0809E518
	mov r3, r8
	subs r1, r2, r3
	cmp r1, #0
	bge _0809E500
	rsbs r1, r1, #0
_0809E500:
	ldr r0, _0809E50C @ =0x00003FFF
	cmp r1, r0
	bgt _0809E510
	mov r0, r8
	b _0809E536
	.align 2, 0
_0809E50C: .4byte 0x00003FFF
_0809E510:
	ldr r1, _0809E514 @ =0xFFFFC000
	b _0809E534
	.align 2, 0
_0809E514: .4byte 0xFFFFC000
_0809E518:
	mov r3, r8
	subs r1, r2, r3
	cmp r1, #0
	bge _0809E522
	rsbs r1, r1, #0
_0809E522:
	ldr r0, _0809E52C @ =0x00003FFF
	cmp r1, r0
	bgt _0809E530
	mov r0, r8
	b _0809E536
	.align 2, 0
_0809E52C: .4byte 0x00003FFF
_0809E530:
	movs r1, #0x80
	lsls r1, r1, #7
_0809E534:
	adds r0, r2, r1
_0809E536:
	str r0, [r7, #0x4c]
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x48]
	adds r0, r0, r1
	str r0, [r7, #0x40]
	ldr r0, [r7, #0x44]
	ldr r1, [r7, #0x4c]
	adds r0, r0, r1
	str r0, [r7, #0x44]
	ldrb r0, [r7, #0xd]
	subs r0, #1
	strb r0, [r7, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0809E592
	adds r0, r7, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _0809E566
	mov r2, sl
	ldrb r0, [r2, #0x19]
	adds r0, #1
	strb r0, [r2, #0x19]
_0809E566:
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	adds r2, r7, #0
	adds r2, #0x5c
	ldrb r2, [r2]
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #6
	str r2, [sp, #8]
	movs r2, #0
	movs r3, #0
	bl sub_0806DB58
	movs r0, #0x8e
	lsls r0, r0, #1
	bl PlaySong
	adds r0, r7, #0
	bl EntityDelete
	b _0809E598
_0809E592:
	adds r0, r7, #0
	bl sub_0803F17C
_0809E598:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809E5A8
sub_0809E5A8: @ 0x0809E5A8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	adds r6, r3, #0
	ldr r0, _0809E63C @ =sub_0809E888
	bl sub_0806DFF8
	adds r5, r0, #0
	ldr r0, _0809E640 @ =0x1010F0F0
	str r0, [sp, #8]
	ldr r4, [r7, #0x14]
	cmp r5, #0
	bne _0809E5CE
	b _0809E878
_0809E5CE:
	mov r0, r8
	str r0, [r5, #0x14]
	mov r0, sb
	str r0, [r5, #0x18]
	ldr r0, [r7, #0x40]
	add r0, r8
	str r0, [r5, #0x40]
	ldr r0, [r7, #0x44]
	add r0, sb
	str r0, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0x20
	strb r6, [r0]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _0809E5F8
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r7, #0x44]
	str r0, [r5, #0x44]
_0809E5F8:
	adds r0, r7, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r0, #2
	adds r1, r5, #0
	adds r1, #0x5c
	strb r0, [r1]
	ldr r2, [r4]
	str r2, [r5, #0x1c]
	adds r0, r7, #0
	adds r0, #0x20
	ldrb r0, [r0]
	adds r3, r5, #0
	adds r3, #0x2c
	strb r0, [r3]
	ldr r1, _0809E644 @ =0x082258FC
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_0803B924
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	cmp r6, #0xa
	bls _0809E632
	b _0809E7F2
_0809E632:
	lsls r0, r6, #2
	ldr r1, _0809E648 @ =_0809E64C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809E63C: .4byte sub_0809E888
_0809E640: .4byte 0x1010F0F0
_0809E644: .4byte 0x082258FC
_0809E648: .4byte _0809E64C
_0809E64C: @ jump table
	.4byte _0809E678 @ case 0
	.4byte _0809E6BE @ case 1
	.4byte _0809E704 @ case 2
	.4byte _0809E736 @ case 3
	.4byte _0809E7F2 @ case 4
	.4byte _0809E7F2 @ case 5
	.4byte _0809E7F2 @ case 6
	.4byte _0809E7F2 @ case 7
	.4byte _0809E7F2 @ case 8
	.4byte _0809E7F2 @ case 9
	.4byte _0809E7C2 @ case 10
_0809E678:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0
	strb r0, [r1]
	ldr r1, [r5, #0x14]
	rsbs r1, r1, #0
	ldr r2, [r5, #0x18]
	rsbs r2, r2, #0
	ldr r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0809F0D0
	ldr r1, [r5, #0x14]
	rsbs r1, r1, #0
	ldr r2, [r5, #0x18]
	rsbs r2, r2, #0
	ldr r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_0809F0D0
	ldr r1, [r5, #0x14]
	rsbs r1, r1, #0
	ldr r2, [r5, #0x18]
	rsbs r2, r2, #0
	ldr r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #2
	bl sub_0809F0D0
	b _0809E7F2
_0809E6BE:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #1
	strb r0, [r1]
	ldr r1, [r5, #0x14]
	rsbs r1, r1, #0
	ldr r2, [r5, #0x18]
	rsbs r2, r2, #0
	ldr r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0809F0D0
	ldr r1, [r5, #0x14]
	rsbs r1, r1, #0
	ldr r2, [r5, #0x18]
	rsbs r2, r2, #0
	ldr r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #2
	bl sub_0809F0D0
	ldr r1, [r5, #0x14]
	rsbs r1, r1, #0
	ldr r2, [r5, #0x18]
	rsbs r2, r2, #0
	ldr r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #3
	bl sub_0809F0D0
	b _0809E7F2
_0809E704:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #2
	strb r0, [r1]
	ldr r1, [r5, #0x14]
	rsbs r1, r1, #0
	ldr r2, [r5, #0x18]
	rsbs r2, r2, #0
	ldr r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl sub_0809F0D0
	ldr r1, [r5, #0x14]
	rsbs r1, r1, #0
	ldr r2, [r5, #0x18]
	rsbs r2, r2, #0
	ldr r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #4
	bl sub_0809F0D0
	b _0809E7F2
_0809E736:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #0x36
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #8
	str r0, [r5, #0x48]
	str r0, [r5, #0x4c]
	ldr r1, [r5, #0x14]
	rsbs r1, r1, #0
	ldr r2, [r5, #0x18]
	rsbs r2, r2, #0
	ldr r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #3
	bl sub_0809F0D0
	ldr r1, [r5, #0x14]
	rsbs r1, r1, #0
	ldr r2, [r5, #0x18]
	rsbs r2, r2, #0
	ldr r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #4
	bl sub_0809F0D0
	movs r0, #1
	bl sub_0803E654
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0809E784
	adds r0, r5, #0
	bl EntityDelete
	b _0809E878
_0809E784:
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
	ldr r1, [r5, #0x48]
	ldr r2, [r5, #0x4c]
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
	bl sub_0803E238
	b _0809E7F2
_0809E7C2:
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #3
	strb r0, [r1]
	ldr r1, [r5, #0x14]
	rsbs r1, r1, #0
	ldr r2, [r5, #0x18]
	rsbs r2, r2, #0
	ldr r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #3
	bl sub_0809F0D0
	ldr r1, [r5, #0x14]
	rsbs r1, r1, #0
	ldr r2, [r5, #0x18]
	rsbs r2, r2, #0
	ldr r0, [r4]
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #4
	bl sub_0809F0D0
_0809E7F2:
	adds r1, r5, #0
	adds r1, #0x5b
	movs r0, #2
	strb r0, [r1]
	str r7, [r5, #0x10]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r1, [r2]
	subs r0, #5
	ands r0, r1
	strb r0, [r2]
	subs r2, #1
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrh r0, [r7, #0x34]
	strh r0, [r5, #0x34]
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldr r0, _0809E868 @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0809E860
	ldr r2, _0809E86C @ =sub_080A00AC
	ldr r3, _0809E870 @ =sub_0809EF48
	adds r0, r5, #0
	movs r1, #8
	bl sub_0804277C
	adds r0, r5, #0
	add r1, sp, #8
	bl sub_080428B4
	adds r0, r5, #0
	add r1, sp, #8
	bl sub_08042848
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	movs r1, #0xfd
	ands r0, r1
	strb r0, [r2]
_0809E860:
	ldr r0, _0809E874 @ =sub_0803B9D0
	str r0, [r5, #4]
	adds r0, r5, #0
	b _0809E87A
	.align 2, 0
_0809E868: .4byte gEwramData
_0809E86C: .4byte sub_080A00AC
_0809E870: .4byte sub_0809EF48
_0809E874: .4byte sub_0803B9D0
_0809E878:
	movs r0, #0
_0809E87A:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0809E888
sub_0809E888: @ 0x0809E888
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x78
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	mov sb, r0
	ldr r0, _0809E948 @ =0x1934FFE4
	str r0, [sp, #0x58]
	ldr r0, _0809E94C @ =0x1524ECF5
	str r0, [sp, #0x5c]
	ldr r0, _0809E950 @ =0x1932E8E6
	str r0, [sp, #0x68]
	ldr r0, _0809E954 @ =0x1521FFF7
	str r0, [sp, #0x6c]
	ldr r0, _0809E958 @ =0x1522EBE8
	str r0, [sp, #0x60]
	ldr r0, _0809E95C @ =0x1932FFE8
	str r0, [sp, #0x64]
	ldr r0, _0809E960 @ =0x1934E8E8
	str r0, [sp, #0x70]
	ldr r0, _0809E964 @ =0x1524FFE8
	str r0, [sp, #0x74]
	add r6, sp, #0x18
	add r0, sp, #0x58
	str r0, [sp, #0x38]
	add r0, sp, #0x5c
	str r0, [sp, #0x3c]
	add r1, sp, #0x40
	add r0, sp, #0x60
	str r0, [sp, #0x40]
	add r0, sp, #0x64
	str r0, [r1, #4]
	add r1, sp, #0x48
	add r0, sp, #0x68
	str r0, [sp, #0x48]
	add r0, sp, #0x6c
	str r0, [r1, #4]
	add r1, sp, #0x50
	add r0, sp, #0x70
	str r0, [sp, #0x50]
	add r0, sp, #0x74
	str r0, [r1, #4]
	add r1, sp, #0x38
	adds r0, r6, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r5, #0
	adds r1, #0x21
	ldrb r0, [r1]
	adds r3, r0, #1
	movs r4, #0
	strb r3, [r1]
	ldrb r7, [r5, #0xa]
	adds r2, r7, #0
	mov ip, r6
	cmp r2, #9
	bls _0809E902
	b _0809EE34
_0809E902:
	mov r1, sb
	cmp r1, #0
	bne _0809E90A
	b _0809EF38
_0809E90A:
	ldr r0, [r1]
	cmp r0, #0
	bne _0809E912
	b _0809EF38
_0809E912:
	mov r0, sb
	adds r0, #0x36
	adds r1, r5, #0
	adds r1, #0x36
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0809E924
	b _0809EF38
_0809E924:
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #3
	beq _0809E932
	b _0809EAB6
_0809E932:
	cmp r2, #0
	bne _0809E968
	mov r1, sb
	ldrb r0, [r1, #0x18]
	cmp r0, #7
	beq _0809E940
	b _0809EA8C
_0809E940:
	adds r0, r7, #1
	strb r0, [r5, #0xa]
	strb r2, [r5, #0xb]
	b _0809EA8C
	.align 2, 0
_0809E948: .4byte 0x1934FFE4
_0809E94C: .4byte 0x1524ECF5
_0809E950: .4byte 0x1932E8E6
_0809E954: .4byte 0x1521FFF7
_0809E958: .4byte 0x1522EBE8
_0809E95C: .4byte 0x1932FFE8
_0809E960: .4byte 0x1934E8E8
_0809E964: .4byte 0x1524FFE8
_0809E968:
	cmp r2, #1
	beq _0809E96E
	b _0809EA8C
_0809E96E:
	ldrb r0, [r5, #0xb]
	cmp r0, #7
	bls _0809E976
	b _0809EA8C
_0809E976:
	lsls r0, r0, #2
	ldr r1, _0809E980 @ =_0809E984
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809E980: .4byte _0809E984
_0809E984: @ jump table
	.4byte _0809E9A4 @ case 0
	.4byte _0809E9C0 @ case 1
	.4byte _0809E9D2 @ case 2
	.4byte _0809E9F0 @ case 3
	.4byte _0809EA02 @ case 4
	.4byte _0809EA20 @ case 5
	.4byte _0809EA40 @ case 6
	.4byte _0809EA8C @ case 7
_0809E9A4:
	ldr r0, [r5, #0x48]
	adds r0, #0x80
	str r0, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	adds r1, #0x80
	str r1, [r5, #0x4c]
	ldr r1, _0809E9BC @ =0x0000CFFF
	cmp r0, r1
	ble _0809EA8C
	movs r0, #0xd0
	lsls r0, r0, #8
	b _0809EA34
	.align 2, 0
_0809E9BC: .4byte 0x0000CFFF
_0809E9C0:
	ldr r1, [r5, #0x48]
	subs r1, #0x80
	str r1, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	subs r0, #0x80
	str r0, [r5, #0x4c]
	movs r0, #0xcc
	lsls r0, r0, #8
	b _0809EA30
_0809E9D2:
	ldr r0, [r5, #0x48]
	adds r0, #0x80
	str r0, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	adds r1, #0x80
	str r1, [r5, #0x4c]
	ldr r1, _0809E9EC @ =0x0000DFFF
	cmp r0, r1
	ble _0809EA8C
	movs r0, #0xe0
	lsls r0, r0, #8
	b _0809EA34
	.align 2, 0
_0809E9EC: .4byte 0x0000DFFF
_0809E9F0:
	ldr r1, [r5, #0x48]
	subs r1, #0x80
	str r1, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	subs r0, #0x80
	str r0, [r5, #0x4c]
	movs r0, #0xdc
	lsls r0, r0, #8
	b _0809EA30
_0809EA02:
	ldr r0, [r5, #0x48]
	adds r0, #0x80
	str r0, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	adds r1, #0x80
	str r1, [r5, #0x4c]
	ldr r1, _0809EA1C @ =0x0000EFFF
	cmp r0, r1
	ble _0809EA8C
	movs r0, #0xf0
	lsls r0, r0, #8
	b _0809EA34
	.align 2, 0
_0809EA1C: .4byte 0x0000EFFF
_0809EA20:
	ldr r1, [r5, #0x48]
	subs r1, #0x80
	str r1, [r5, #0x48]
	ldr r0, [r5, #0x4c]
	subs r0, #0x80
	str r0, [r5, #0x4c]
	movs r0, #0xec
	lsls r0, r0, #8
_0809EA30:
	cmp r1, r0
	bgt _0809EA8C
_0809EA34:
	str r0, [r5, #0x48]
	str r0, [r5, #0x4c]
	ldrb r0, [r5, #0xb]
	adds r0, #1
	strb r0, [r5, #0xb]
	b _0809EA8C
_0809EA40:
	ldr r0, [r5, #0x48]
	adds r0, #0x80
	str r0, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	adds r1, #0x80
	str r1, [r5, #0x4c]
	ldr r1, _0809EA88 @ =0x0000FFFF
	cmp r0, r1
	ble _0809EA8C
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #0x48]
	str r0, [r5, #0x4c]
	movs r1, #0
	strb r1, [r5, #0xb]
	movs r0, #0x14
	mov r2, r8
	strb r0, [r2]
	strb r1, [r5, #0xa]
	mov r1, sb
	ldrb r0, [r1, #0x19]
	adds r0, #1
	strb r0, [r1, #0x19]
	adds r1, r5, #0
	adds r1, #0x65
	movs r0, #3
	strb r0, [r1]
	mov r2, sb
	ldr r0, [r2, #0x40]
	ldr r1, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r2, #0x44]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	b _0809EA94
	.align 2, 0
_0809EA88: .4byte 0x0000FFFF
_0809EA8C:
	mov r1, sb
	ldr r0, [r1, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r1, #0x44]
_0809EA94:
	str r0, [r5, #0x44]
	ldr r1, [r5, #0x48]
	ldr r2, [r5, #0x4c]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r3, r0, #0x19
	lsrs r3, r3, #0x1f
	lsrs r4, r0, #7
	str r4, [sp]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0
	bl sub_0803E238
	b _0809EF38
_0809EAB6:
	cmp r2, #0
	beq _0809EABC
	b _0809EF38
_0809EABC:
	movs r4, #3
	cmp r1, #4
	bhi _0809EAC6
	mov r2, r8
	ldrb r4, [r2]
_0809EAC6:
	ldr r0, _0809EAFC @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0809EB18
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _0809EB00
	lsls r4, r4, #3
	mov r1, ip
	adds r0, r1, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_080428B4
	add r0, sp, #0x1c
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08042848
	b _0809EB18
	.align 2, 0
_0809EAFC: .4byte gEwramData
_0809EB00:
	lsls r4, r4, #3
	add r0, sp, #0x1c
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_080428B4
	adds r4, r6, r4
	ldr r1, [r4]
	adds r0, r5, #0
	bl sub_08042848
_0809EB18:
	mov r2, sb
	ldr r0, [r2, #0x40]
	ldr r1, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r2, #0x44]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, _0809EC2C @ =gEwramData
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0809EB42
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_080421AC
_0809EB42:
	adds r0, r5, #0
	bl sub_0806AE54
	mov r1, sb
	ldrb r0, [r1, #0xa]
	cmp r0, #2
	bne _0809EB82
	movs r1, #0
	movs r0, #0xb
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
	movs r0, #0x3c
	strb r0, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x2d
	strb r3, [r0]
_0809EB82:
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0
	bne _0809EC3C
	mov r0, sb
	ldrb r1, [r0, #0x1a]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0809EBE0
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _0809EBE0
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xe
	bl __umodsi3
	ldr r1, [r5, #0x40]
	ldr r2, _0809EC30 @ =0xFFE80000
	adds r1, r1, r2
	adds r7, r0, r1
	ldr r0, [r5, #0x44]
	movs r1, #0xc0
	lsls r1, r1, #0xd
	adds r1, r1, r0
	mov r8, r1
	bl RandomNumberGenerator
	ldr r1, _0809EC34 @ =0x00007FFF
	ands r1, r0
	rsbs r6, r1, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, r8
	adds r3, r6, #0
	bl sub_0809F224
_0809EBE0:
	mov r2, sb
	ldrb r1, [r2, #0x1a]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0809EBEE
	b _0809EF38
_0809EBEE:
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #4
	beq _0809EBFE
	b _0809EF38
_0809EBFE:
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xe
	bl __umodsi3
	ldr r1, [r5, #0x44]
	ldr r2, _0809EC30 @ =0xFFE80000
	adds r1, r1, r2
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r5, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #0xd
	adds r7, r0, r1
	bl RandomNumberGenerator
	ldr r1, _0809EC38 @ =0x00003FFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	adds r6, r1, r0
	b _0809EE0C
	.align 2, 0
_0809EC2C: .4byte gEwramData
_0809EC30: .4byte 0xFFE80000
_0809EC34: .4byte 0x00007FFF
_0809EC38: .4byte 0x00003FFF
_0809EC3C:
	cmp r0, #1
	bne _0809ECBC
	mov r2, sb
	ldrb r1, [r2, #0x1a]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0809EC92
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #8
	bne _0809EC92
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xe
	bl __umodsi3
	ldr r1, [r5, #0x40]
	ldr r2, _0809ECB4 @ =0xFFE80000
	adds r1, r1, r2
	adds r7, r0, r1
	ldr r0, [r5, #0x44]
	movs r1, #0xc0
	lsls r1, r1, #0xd
	adds r1, r1, r0
	mov r8, r1
	bl RandomNumberGenerator
	ldr r3, _0809ECB8 @ =0x00007FFF
	ands r3, r0
	movs r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, r8
	bl sub_0809F224
_0809EC92:
	mov r2, sb
	ldrb r1, [r2, #0x1a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0809ECA0
	b _0809EF38
_0809ECA0:
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0xc
	beq _0809ECB0
	b _0809EF38
_0809ECB0:
	b _0809EDE6
	.align 2, 0
_0809ECB4: .4byte 0xFFE80000
_0809ECB8: .4byte 0x00007FFF
_0809ECBC:
	cmp r0, #2
	bne _0809ED70
	mov r0, sb
	ldrb r1, [r0, #0x1a]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809ED18
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0x10
	bne _0809ED18
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xe
	bl __umodsi3
	ldr r1, [r5, #0x40]
	ldr r2, _0809ED64 @ =0xFFE80000
	adds r1, r1, r2
	adds r7, r0, r1
	ldr r0, [r5, #0x44]
	adds r0, r0, r2
	mov r8, r0
	bl RandomNumberGenerator
	ldr r4, _0809ED68 @ =0x00007FFF
	ands r0, r4
	rsbs r6, r0, #0
	bl RandomNumberGenerator
	ands r0, r4
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, r8
	adds r3, r6, #0
	bl sub_0809F224
_0809ED18:
	mov r2, sb
	ldrb r1, [r2, #0x1a]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0809ED26
	b _0809EF38
_0809ED26:
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0x14
	beq _0809ED36
	b _0809EF38
_0809ED36:
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xe
	bl __umodsi3
	ldr r1, [r5, #0x44]
	ldr r2, _0809ED64 @ =0xFFE80000
	adds r1, r1, r2
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r5, #0x40]
	movs r1, #0xc0
	lsls r1, r1, #0xd
	adds r7, r0, r1
	bl RandomNumberGenerator
	ldr r1, _0809ED6C @ =0x00003FFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	adds r6, r1, r0
	b _0809EE0C
	.align 2, 0
_0809ED64: .4byte 0xFFE80000
_0809ED68: .4byte 0x00007FFF
_0809ED6C: .4byte 0x00003FFF
_0809ED70:
	mov r2, sb
	ldrb r1, [r2, #0x1a]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0809EDC8
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0x18
	bne _0809EDC8
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xe
	bl __umodsi3
	ldr r1, [r5, #0x40]
	ldr r2, _0809EE24 @ =0xFFE80000
	adds r1, r1, r2
	adds r7, r0, r1
	ldr r0, [r5, #0x44]
	adds r0, r0, r2
	mov r8, r0
	bl RandomNumberGenerator
	adds r6, r0, #0
	ldr r4, _0809EE28 @ =0x00007FFF
	ands r6, r4
	bl RandomNumberGenerator
	ands r0, r4
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, r8
	adds r3, r6, #0
	bl sub_0809F224
_0809EDC8:
	mov r0, sb
	ldrb r1, [r0, #0x1a]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0809EDD6
	b _0809EF38
_0809EDD6:
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0x1c
	beq _0809EDE6
	b _0809EF38
_0809EDE6:
	bl RandomNumberGenerator
	movs r1, #0xc0
	lsls r1, r1, #0xe
	bl __umodsi3
	ldr r1, [r5, #0x44]
	ldr r2, _0809EE24 @ =0xFFE80000
	adds r1, r1, r2
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r5, #0x40]
	adds r7, r0, r2
	bl RandomNumberGenerator
	ldr r1, _0809EE2C @ =0x00003FFF
	ands r1, r0
	ldr r0, _0809EE30 @ =0xFFFF8000
	subs r6, r0, r1
_0809EE0C:
	movs r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, r8
	adds r3, r6, #0
	bl sub_0809F224
	b _0809EF38
	.align 2, 0
_0809EE24: .4byte 0xFFE80000
_0809EE28: .4byte 0x00007FFF
_0809EE2C: .4byte 0x00003FFF
_0809EE30: .4byte 0xFFFF8000
_0809EE34:
	ldrb r0, [r5, #0xb]
	adds r3, r0, #0
	cmp r3, #0
	bne _0809EEE8
	adds r0, #1
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _0809EE64
	cmp r2, #0xa
	bne _0809EE5A
	mov r1, sb
	ldrb r0, [r1, #0x1a]
	movs r1, #1
	orrs r0, r1
	mov r2, sb
	strb r0, [r2, #0x1a]
_0809EE5A:
	ldr r0, _0809EE60 @ =0xFFFFC000
	b _0809EE7C
	.align 2, 0
_0809EE60: .4byte 0xFFFFC000
_0809EE64:
	cmp r0, #1
	bne _0809EE88
	cmp r2, #0xa
	bne _0809EE78
	mov r1, sb
	ldrb r0, [r1, #0x1a]
	movs r1, #2
	orrs r0, r1
	mov r2, sb
	strb r0, [r2, #0x1a]
_0809EE78:
	movs r0, #0x80
	lsls r0, r0, #7
_0809EE7C:
	str r0, [r5, #0x48]
	ldr r0, _0809EE84 @ =0xFFFF0000
	str r0, [r5, #0x4c]
	b _0809EEBC
	.align 2, 0
_0809EE84: .4byte 0xFFFF0000
_0809EE88:
	cmp r0, #2
	bne _0809EEA4
	cmp r2, #0xa
	bne _0809EE9C
	mov r1, sb
	ldrb r0, [r1, #0x1a]
	movs r1, #4
	orrs r0, r1
	mov r2, sb
	strb r0, [r2, #0x1a]
_0809EE9C:
	ldr r0, _0809EEA0 @ =0xFFFFC000
	b _0809EEB8
	.align 2, 0
_0809EEA0: .4byte 0xFFFFC000
_0809EEA4:
	cmp r2, #0xa
	bne _0809EEB4
	mov r1, sb
	ldrb r0, [r1, #0x1a]
	movs r1, #8
	orrs r0, r1
	mov r2, sb
	strb r0, [r2, #0x1a]
_0809EEB4:
	movs r0, #0x80
	lsls r0, r0, #7
_0809EEB8:
	str r0, [r5, #0x48]
	str r3, [r5, #0x4c]
_0809EEBC:
	mov r1, sb
	ldr r0, [r1, #0x40]
	ldr r1, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	mov r2, sb
	ldr r0, [r2, #0x44]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	str r0, [r5, #0x50]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r5, #0x54]
	b _0809EF38
_0809EEE8:
	cmp r3, #1
	bne _0809EF38
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
	bgt _0809EF38
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _0809EF32
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl sub_0803E6BC
_0809EF32:
	adds r0, r5, #0
	bl EntityDelete
_0809EF38:
	add sp, #0x78
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809EF48
sub_0809EF48: @ 0x0809EF48
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r4, [r7, #0x10]
	ldrh r0, [r5, #4]
	bl sub_08021530
	adds r3, r0, #0
	ldr r4, [r4, #0x14]
	mov r8, r4
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0806B7D8
	adds r1, r0, #0
	adds r4, r7, #0
	adds r4, #0x2d
	movs r0, #8
	strb r0, [r4]
	ldrh r0, [r7, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	movs r5, #0
	strh r0, [r7, #0x34]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08042B8C
	movs r1, #0x34
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bgt _0809EFC2
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
	movs r0, #0x3c
	strb r0, [r7, #0xd]
	strb r5, [r4]
	movs r0, #0xa
	strb r0, [r7, #0xa]
	strb r5, [r7, #0xb]
	b _0809F0B6
_0809EFC2:
	bl RandomNumberGenerator
	movs r1, #0x3f
	ands r1, r0
	cmp r1, #0xf
	bhi _0809F0B6
	mov r1, r8
	ldr r0, [r1, #0x1c]
	cmp r0, #3
	bgt _0809F0B6
	adds r0, #1
	str r0, [r1, #0x1c]
	adds r0, r7, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809F024
	cmp r0, #1
	bne _0809F020
	bl RandomNumberGenerator
	ldr r5, _0809F014 @ =0x001FFFFF
	ands r0, r5
	ldr r1, [r7, #0x40]
	ldr r4, _0809F018 @ =0xFFF00000
	adds r1, r1, r4
	adds r0, r0, r1
	mov r8, r0
	bl RandomNumberGenerator
	ands r0, r5
	ldr r1, [r7, #0x44]
	adds r1, r1, r4
	adds r6, r0, r1
	bl RandomNumberGenerator
	adds r5, r0, #0
	ldr r4, _0809F01C @ =0x00007FFF
	ands r5, r4
	b _0809F04C
	.align 2, 0
_0809F014: .4byte 0x001FFFFF
_0809F018: .4byte 0xFFF00000
_0809F01C: .4byte 0x00007FFF
_0809F020:
	cmp r0, #2
	bne _0809F074
_0809F024:
	bl RandomNumberGenerator
	ldr r5, _0809F068 @ =0x001FFFFF
	ands r0, r5
	ldr r1, [r7, #0x40]
	ldr r4, _0809F06C @ =0xFFF00000
	adds r1, r1, r4
	adds r0, r0, r1
	mov r8, r0
	bl RandomNumberGenerator
	ands r0, r5
	ldr r1, [r7, #0x44]
	adds r1, r1, r4
	adds r6, r0, r1
	bl RandomNumberGenerator
	ldr r4, _0809F070 @ =0x00007FFF
	ands r0, r4
	rsbs r5, r0, #0
_0809F04C:
	bl RandomNumberGenerator
	ands r0, r4
	rsbs r1, r0, #0
	ldr r0, [r7, #0x10]
	str r1, [sp]
	ldr r1, [r7, #0x1c]
	str r1, [sp, #4]
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_0809F304
	b _0809F0B6
	.align 2, 0
_0809F068: .4byte 0x001FFFFF
_0809F06C: .4byte 0xFFF00000
_0809F070: .4byte 0x00007FFF
_0809F074:
	bl RandomNumberGenerator
	ldr r5, _0809F0C4 @ =0x001FFFFF
	ands r0, r5
	ldr r1, [r7, #0x40]
	ldr r4, _0809F0C8 @ =0xFFF00000
	adds r1, r1, r4
	adds r0, r0, r1
	mov r8, r0
	bl RandomNumberGenerator
	ands r0, r5
	ldr r1, [r7, #0x44]
	adds r1, r1, r4
	adds r6, r0, r1
	bl RandomNumberGenerator
	adds r5, r0, #0
	ldr r4, _0809F0CC @ =0x00007FFF
	ands r5, r4
	bl RandomNumberGenerator
	ands r0, r4
	rsbs r1, r0, #0
	ldr r0, [r7, #0x10]
	str r1, [sp]
	ldr r1, [r7, #0x1c]
	str r1, [sp, #4]
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_0809F304
_0809F0B6:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809F0C4: .4byte 0x001FFFFF
_0809F0C8: .4byte 0xFFF00000
_0809F0CC: .4byte 0x00007FFF

