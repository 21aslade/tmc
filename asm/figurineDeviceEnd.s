	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08088424
sub_08088424: @ 0x08088424
	push {lr}
	adds r1, r0, #0
	ldr r0, _08088440 @ =gUnk_02002A40
	adds r0, #0xb0
	ldrb r0, [r0]
	cmp r0, #0x31
	bhi _08088444
	adds r1, #0x83
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0xe
	bgt _08088476
	movs r0, #0xf
	b _08088474
	.align 2, 0
_08088440: .4byte gUnk_02002A40
_08088444:
	cmp r0, #0x4f
	bhi _08088456
	adds r1, #0x83
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0xb
	bgt _08088476
	movs r0, #0xc
	b _08088474
_08088456:
	cmp r0, #0x6d
	bhi _08088468
	adds r1, #0x83
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #8
	bgt _08088476
	movs r0, #9
	b _08088474
_08088468:
	adds r1, #0x83
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #5
	bgt _08088476
	movs r0, #6
_08088474:
	strb r0, [r1]
_08088476:
	pop {pc}

	thumb_func_start sub_08088478
sub_08088478: @ 0x08088478
	push {r4, lr}
	movs r4, #0
	movs r0, #8
	bl CheckRoomFlag
	cmp r0, #0
	bne _080884A4
	movs r0, #7
	bl CheckRoomFlag
	cmp r0, #0
	bne _0808849C
	ldr r1, _08088498 @ =0x00004322
	movs r4, #1
	b _080884D2
	.align 2, 0
_08088498: .4byte 0x00004322
_0808849C:
	ldr r1, _080884A0 @ =0x00004325
	b _080884D2
	.align 2, 0
_080884A0: .4byte 0x00004325
_080884A4:
	ldr r1, _080884C0 @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xb0
	ldrb r0, [r0]
	cmp r0, #0x82
	beq _080884C8
	cmp r0, #0x88
	bne _080884D0
	adds r1, #0xb1
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _080884C4 @ =0x00004329
	b _080884D2
	.align 2, 0
_080884C0: .4byte gUnk_02002A40
_080884C4: .4byte 0x00004329
_080884C8:
	ldrb r0, [r1, #6]
	ldr r1, _080884F4 @ =0x00004328
	cmp r0, #0
	beq _080884D2
_080884D0:
	ldr r1, _080884F8 @ =0x00004327
_080884D2:
	adds r0, r1, #0
	bl TextboxNoOverlapFollow
	ldr r1, _080884FC @ =gTextBox
	movs r0, #1
	strb r0, [r1, #6]
	movs r0, #0xc
	strb r0, [r1, #7]
	cmp r4, #0
	beq _080884EA
	movs r0, #5
	str r0, [r1, #0x10]
_080884EA:
	ldr r1, _08088500 @ =gPlayerEntity
	movs r0, #6
	strb r0, [r1, #0x14]
	pop {r4, pc}
	.align 2, 0
_080884F4: .4byte 0x00004328
_080884F8: .4byte 0x00004327
_080884FC: .4byte gTextBox
_08088500: .4byte gPlayerEntity

	thumb_func_start sub_08088504
sub_08088504: @ 0x08088504
	push {lr}
	ldr r0, _08088518 @ =gUnk_02002A40
	adds r0, #0xb0
	ldrb r0, [r0]
	cmp r0, #0x82
	beq _08088520
	cmp r0, #0x88
	bne _08088528
	ldr r0, _0808851C @ =0x0000432F
	b _0808852A
	.align 2, 0
_08088518: .4byte gUnk_02002A40
_0808851C: .4byte 0x0000432F
_08088520:
	ldr r0, _08088524 @ =0x00004314
	b _0808852A
	.align 2, 0
_08088524: .4byte 0x00004314
_08088528:
	ldr r0, _0808853C @ =0x00004311
_0808852A:
	bl TextboxNoOverlapFollow
	ldr r0, _08088540 @ =gTextBox
	movs r1, #1
	strb r1, [r0, #6]
	movs r1, #0xc
	strb r1, [r0, #7]
	pop {pc}
	.align 2, 0
_0808853C: .4byte 0x00004311
_08088540: .4byte gTextBox

	thumb_func_start sub_08088544
sub_08088544: @ 0x08088544
	push {lr}
	ldr r0, _08088568 @ =gUnk_02002A40
	adds r0, #0xb0
	ldrb r0, [r0]
	ldr r1, _0808856C @ =0x00004315
	cmp r0, #0x82
	beq _08088554
	subs r1, #7
_08088554:
	adds r0, r1, #0
	bl TextboxNoOverlapFollow
	ldr r0, _08088570 @ =gTextBox
	movs r1, #1
	strb r1, [r0, #6]
	movs r1, #0xc
	strb r1, [r0, #7]
	pop {pc}
	.align 2, 0
_08088568: .4byte gUnk_02002A40
_0808856C: .4byte 0x00004315
_08088570: .4byte gTextBox

	thumb_func_start sub_08088574
sub_08088574: @ 0x08088574
	push {lr}
	movs r0, #9
	bl CheckRoomFlag
	cmp r0, #0
	beq _08088594
	movs r0, #0x5f
	bl CheckLocalFlag
	ldr r1, _08088590 @ =0x0000430C
	cmp r0, #0
	beq _08088596
	adds r1, #7
	b _08088596
	.align 2, 0
_08088590: .4byte 0x0000430C
_08088594:
	ldr r1, _080885A8 @ =0x0000430B
_08088596:
	adds r0, r1, #0
	bl TextboxNoOverlapFollow
	ldr r0, _080885AC @ =gTextBox
	movs r1, #1
	strb r1, [r0, #6]
	movs r1, #0xc
	strb r1, [r0, #7]
	pop {pc}
	.align 2, 0
_080885A8: .4byte 0x0000430B
_080885AC: .4byte gTextBox

	thumb_func_start sub_080885B0
sub_080885B0: @ 0x080885B0
	push {lr}
	movs r0, #8
	bl CheckRoomFlag
	cmp r0, #0
	bne _080885E8
	movs r0, #7
	bl CheckRoomFlag
	cmp r0, #0
	bne _0808860A
	movs r0, #5
	bl ModRupees
	ldr r0, _080885E0 @ =0x00004326
	bl TextboxNoOverlapFollow
	ldr r1, _080885E4 @ =gTextBox
	movs r0, #1
	strb r0, [r1, #6]
	movs r0, #0xc
	strb r0, [r1, #7]
	b _0808860A
	.align 2, 0
_080885E0: .4byte 0x00004326
_080885E4: .4byte gTextBox
_080885E8:
	ldr r1, _08088618 @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xb1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808860A
	adds r1, #0xbb
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x3e
	movs r1, #0
	movs r2, #0
	bl CreateItemEntity
	movs r0, #0x59
	bl SetGlobalFlag
_0808860A:
	movs r0, #8
	bl ClearRoomFlag
	movs r0, #7
	bl ClearRoomFlag
	pop {pc}
	.align 2, 0
_08088618: .4byte gUnk_02002A40

	thumb_func_start sub_0808861C
sub_0808861C: @ 0x0808861C
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #0xa8
	movs r1, #0x54
	movs r2, #0xc
	movs r3, #8
	bl CheckPlayerInRegion
	str r0, [r4, #0x14]
	ldr r1, _08088650 @ =gPlayerEntity
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	bne _0808863E
	movs r2, #0x36
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _08088642
_0808863E:
	movs r0, #0
	str r0, [r4, #0x14]
_08088642:
	ldr r2, _08088654 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_08088650: .4byte gPlayerEntity
_08088654: .4byte gUnk_02033280

	thumb_func_start sub_08088658
sub_08088658: @ 0x08088658
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #0x78
	movs r1, #0x78
	movs r2, #0x10
	movs r3, #8
	bl CheckPlayerInRegion
	str r0, [r4, #0x14]
	ldr r0, _08088684 @ =gPlayerEntity
	movs r1, #0x36
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08088678
	movs r0, #0
	str r0, [r4, #0x14]
_08088678:
	ldr r2, _08088688 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_08088684: .4byte gPlayerEntity
_08088688: .4byte gUnk_02033280
