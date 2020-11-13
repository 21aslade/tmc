	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start FigurineDevice
FigurineDevice: @ 0x08087BAC
	push {lr}
	ldr r2, _08087BC0 @ =gUnk_08120A94
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08087BC0: .4byte gUnk_08120A94

	thumb_func_start sub_08087BC4
sub_08087BC4: @ 0x08087BC4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	adds r0, #1
	movs r5, #0
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _08087C04
	cmp r0, #1
	bgt _08087BE0
	cmp r0, #0
	beq _08087BEA
	b _08087CA6
_08087BE0:
	cmp r0, #2
	beq _08087C64
	cmp r0, #3
	beq _08087C7C
	b _08087CA6
_08087BEA:
	movs r0, #0x5e
	bl CheckLocalFlag
	cmp r0, #0
	beq _08087C16
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080787B4
	b _08087C1C
_08087C04:
	movs r0, #0x22
	movs r1, #3
	movs r2, #0
	bl CreateObject
	cmp r0, #0
	beq _08087C16
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_08087C16:
	adds r0, r4, #0
	adds r0, #0x7a
	strb r5, [r0]
_08087C1C:
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _08087C60 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x78
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_08087F58
	b _08087CA6
	.align 2, 0
_08087C60: .4byte gRoomControls
_08087C64:
	adds r0, r4, #0
	adds r0, #0x7a
	strb r5, [r0]
	adds r0, r4, #0
	movs r1, #7
	bl sub_0805E3A0
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	b _08087CA6
_08087C7C:
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	strb r5, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x7a
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #5
	strb r5, [r0]
	adds r0, r4, #0
	bl sub_0808804C
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
_08087CA6:
	pop {r4, r5, pc}

	thumb_func_start sub_08087CA8
sub_08087CA8: @ 0x08087CA8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x7a
	ldrb r0, [r5]
	cmp r0, #1
	beq _08087CCA
	cmp r0, #1
	bgt _08087D02
	cmp r0, #0
	bne _08087D02
	movs r0, #1
	strb r0, [r5]
	adds r0, r4, #0
	bl sub_080787B4
	b _08087D1A
_08087CCA:
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08087D1A
	movs r0, #0
	strb r0, [r1]
	bl sub_080791D0
	movs r0, #0x5e
	bl CheckLocalFlag
	cmp r0, #0
	beq _08087CFA
	movs r0, #2
	strb r0, [r5]
	bl SetRoomFlag
	movs r0, #7
	movs r1, #0xff
	bl MenuFadeIn
	b _08087D1A
_08087CFA:
	movs r0, #5
	bl SetRoomFlag
	b _08087D1A
_08087D02:
	movs r0, #2
	bl CheckRoomFlag
	cmp r0, #0
	bne _08087D1A
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080787B4
_08087D1A:
	pop {r4, r5, pc}

	thumb_func_start sub_08087D1C
sub_08087D1C: @ 0x08087D1C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x7a
	ldrb r0, [r4]
	cmp r0, #1
	beq _08087D60
	cmp r0, #1
	bgt _08087D34
	cmp r0, #0
	beq _08087D3A
	b _08087DB0
_08087D34:
	cmp r0, #2
	beq _08087D5A
	b _08087DB0
_08087D3A:
	movs r0, #0
	bl CheckRoomFlag
	cmp r0, #0
	beq _08087DB0
	movs r0, #0x5e
	bl CheckLocalFlag
	cmp r0, #0
	beq _08087D54
	movs r0, #1
	strb r0, [r4]
	b _08087DB0
_08087D54:
	movs r0, #2
	strb r0, [r4]
	b _08087DB0
_08087D5A:
	movs r0, #0x5e
	bl SetLocalFlag
_08087D60:
	adds r1, r5, #0
	adds r1, #0x7a
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r5, #0x54]
	bl sub_08088328
	movs r0, #0
	bl ClearRoomFlag
	movs r0, #0x22
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08087DAA
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	strb r0, [r4, #0xf]
	ldr r1, _08087DB4 @ =gUnk_080FC3E4
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #7]
	strb r0, [r4, #0xb]
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r3, #0xe0
	lsls r3, r3, #0xb
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
_08087DAA:
	ldr r0, _08087DB8 @ =0x00000111
	bl EnqueueSFX
_08087DB0:
	pop {r4, r5, pc}
	.align 2, 0
_08087DB4: .4byte gUnk_080FC3E4
_08087DB8: .4byte 0x00000111

	thumb_func_start sub_08087DBC
sub_08087DBC: @ 0x08087DBC
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r2, r4, #0
	adds r2, #0x7a
	ldrb r0, [r2]
	cmp r0, #1
	beq _08087E10
	cmp r0, #1
	bgt _08087E3C
	cmp r0, #0
	bne _08087E3C
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08087E5A
	movs r0, #1
	strb r0, [r2]
	movs r0, #0x28
	strb r0, [r4, #0xe]
	ldr r1, _08087E0C @ =gUnk_08120AA8
	ldrb r0, [r4, #0xb]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_0801D2B4
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	movs r0, #0x88
	lsls r0, r0, #1
	bl PlaySFX
	b _08087E5A
	.align 2, 0
_08087E0C: .4byte gUnk_08120AA8
_08087E10:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08087E5A
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08087E5A
	movs r0, #2
	strb r0, [r2]
	bl SetRoomFlag
	ldrb r1, [r4, #0xf]
	movs r0, #7
	bl MenuFadeIn
	b _08087E5A
_08087E3C:
	movs r0, #2
	bl CheckRoomFlag
	cmp r0, #0
	bne _08087E5A
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	movs r0, #4
	bl ClearRoomFlag
	bl DeleteThisEntity
_08087E5A:
	pop {r4, pc}

	thumb_func_start sub_08087E5C
sub_08087E5C: @ 0x08087E5C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x7a
	ldrb r1, [r5]
	cmp r1, #1
	beq _08087EAC
	cmp r1, #1
	bgt _08087E74
	cmp r1, #0
	beq _08087E7A
	b _08087F4E
_08087E74:
	cmp r1, #2
	beq _08087F24
	b _08087F4E
_08087E7A:
	adds r0, r4, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #4
	bne _08087EA4
	movs r0, #1
	bl CheckRoomFlag
	cmp r0, #0
	beq _08087F4E
	movs r0, #1
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x81
	strb r0, [r1]
	bl ClearRoomFlag
	adds r0, r4, #0
	bl sub_0808826C
	b _08087F1C
_08087EA4:
	adds r0, r4, #0
	bl sub_080880D8
	b _08087F4E
_08087EAC:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08087EB6
	subs r0, #1
	strb r0, [r4, #0xe]
_08087EB6:
	ldr r6, _08087ED4 @ =gUnk_03000FF0
	ldrh r0, [r6, #2]
	ands r1, r0
	cmp r1, #0
	beq _08087ED8
	movs r0, #0x6a
	bl PlaySFX
	movs r0, #2
	strb r0, [r5]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	bl sub_08050384
	b _08087F4E
	.align 2, 0
_08087ED4: .4byte gUnk_03000FF0
_08087ED8:
	adds r2, r4, #0
	adds r2, #0x81
	ldrb r7, [r2]
	ldrh r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	movs r3, #1
	adds r5, r2, #0
	cmp r0, #0
	beq _08087EF0
	movs r3, #0xa
_08087EF0:
	ldrh r1, [r6, #4]
	ldr r0, _08087F00 @ =0xFFFFFEFF
	ands r1, r0
	cmp r1, #0x40
	beq _08087F04
	cmp r1, #0x80
	beq _08087F0E
	b _08087F16
	.align 2, 0
_08087F00: .4byte 0xFFFFFEFF
_08087F04:
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_08087F94
	b _08087F16
_08087F0E:
	rsbs r1, r3, #0
	adds r0, r4, #0
	bl sub_08087F94
_08087F16:
	ldrb r5, [r5]
	cmp r7, r5
	beq _08087F4E
_08087F1C:
	adds r0, r4, #0
	bl sub_080882A8
	b _08087F4E
_08087F24:
	movs r0, #0
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x7b
	movs r0, #4
	strb r0, [r1]
	movs r0, #3
	bl SetRoomFlag
	ldr r0, _08087F50 @ =0x0000431A
	bl TextboxNoOverlapFollow
	ldr r1, _08087F54 @ =gTextBox
	movs r0, #1
	strb r0, [r1, #6]
	movs r0, #0xc
	strb r0, [r1, #7]
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	str r0, [r1, #0x10]
_08087F4E:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08087F50: .4byte 0x0000431A
_08087F54: .4byte gTextBox

	thumb_func_start sub_08087F58
sub_08087F58: @ 0x08087F58
	push {r4, r5, lr}
	ldrb r1, [r0, #0xa]
	cmp r1, #1
	bgt _08087F8C
	cmp r1, #0
	blt _08087F8C
	ldr r5, _08087F90 @ =0x00004022
	adds r4, r0, #0
	adds r4, #0x78
	ldrh r1, [r4]
	subs r1, #1
	adds r0, r5, #0
	movs r2, #1
	bl SetTile
	ldrh r1, [r4]
	adds r0, r5, #0
	movs r2, #1
	bl SetTile
	ldrh r1, [r4]
	adds r1, #1
	adds r0, r5, #0
	movs r2, #1
	bl SetTile
_08087F8C:
	pop {r4, r5, pc}
	.align 2, 0
_08087F90: .4byte 0x00004022

	thumb_func_start sub_08087F94
sub_08087F94: @ 0x08087F94
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0x5f
	bl CheckLocalFlag
	cmp r0, #0
	bne _08088014
	adds r0, r5, #0
	adds r0, #0x83
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov ip, r1
	adds r3, r1, r4
	adds r7, r0, #0
	cmp r4, #0
	bge _08087FEA
	adds r2, r5, #0
	adds r2, #0x82
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r3, r0
	bge _08087FD6
	movs r1, #0
	ldrsb r1, [r7, r1]
	ldrb r3, [r2]
	cmp r1, r0
	beq _08088014
	strb r3, [r7]
	adds r1, r5, #0
	adds r1, #0x81
	movs r0, #1
	b _08087FE0
_08087FD6:
	strb r3, [r7]
	adds r1, r5, #0
	adds r1, #0x81
	ldrb r0, [r1]
	adds r0, r0, r4
_08087FE0:
	strb r0, [r1]
	movs r0, #0x69
	bl PlaySFX
	b _08088032
_08087FEA:
	adds r1, r5, #0
	adds r1, #0x81
	ldrb r6, [r1]
	adds r2, r6, r4
	ldr r0, _0808801C @ =gUnk_02002A40
	adds r0, #0xc2
	ldrh r0, [r0]
	cmp r2, r0
	ble _08088008
	cmp r0, r6
	beq _08088014
	adds r2, r0, #0
	subs r4, r2, r6
	mov r0, ip
	adds r3, r0, r4
_08088008:
	cmp r3, #0x64
	ble _08088028
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0x64
	bne _08088020
_08088014:
	adds r0, r5, #0
	bl sub_08088034
	b _08088032
	.align 2, 0
_0808801C: .4byte gUnk_02002A40
_08088020:
	movs r3, #0x64
	mov r0, ip
	subs r4, r3, r0
	adds r2, r6, r4
_08088028:
	strb r3, [r7]
	strb r2, [r1]
	movs r0, #0x69
	bl PlaySFX
_08088032:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08088034
sub_08088034: @ 0x08088034
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	bne _08088048
	movs r0, #0x14
	strb r0, [r1, #0xe]
	movs r0, #0x6d
	bl PlaySFX
_08088048:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0808804C
sub_0808804C: @ 0x0808804C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r0, _08088060 @ =gUnk_02002A40
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _08088064
	movs r4, #9
	b _080880D0
	.align 2, 0
_08088060: .4byte gUnk_02002A40
_08088064:
	movs r0, #6
	bl CheckGlobalFlag
	cmp r0, #0
	beq _08088072
	movs r4, #7
	b _080880D0
_08088072:
	movs r0, #0x80
	lsls r0, r0, #4
	movs r1, #0x77
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _08088084
	movs r4, #6
	b _080880D0
_08088084:
	movs r0, #0xc0
	lsls r0, r0, #2
	movs r1, #0x32
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _08088096
	movs r4, #5
	b _080880D0
_08088096:
	movs r0, #5
	bl CheckGlobalFlag
	cmp r0, #0
	beq _080880A4
	movs r4, #4
	b _080880D0
_080880A4:
	movs r0, #4
	bl CheckGlobalFlag
	cmp r0, #0
	beq _080880B2
	movs r4, #3
	b _080880D0
_080880B2:
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0x9c
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _080880C4
	movs r4, #2
	b _080880D0
_080880C4:
	movs r0, #3
	bl CheckGlobalFlag
	cmp r0, #0
	beq _080880D0
	movs r4, #1
_080880D0:
	adds r0, r5, #0
	adds r0, #0x7c
	strb r4, [r0]
	pop {r4, r5, pc}

	thumb_func_start sub_080880D8
sub_080880D8: @ 0x080880D8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x7b
	ldrb r1, [r0]
	ldr r0, _08088158 @ =gUnk_08120AAC
	adds r6, r1, r0
	ldrb r4, [r6]
	ldrb r0, [r6, #1]
	cmp r4, r0
	bhs _0808810A
	adds r5, r7, #0
	adds r5, #0x80
_080880F0:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08088160
	cmp r0, #0
	beq _08088102
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_08088102:
	adds r4, #1
	ldrb r0, [r6, #1]
	cmp r4, r0
	blo _080880F0
_0808810A:
	adds r1, r7, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bne _08088156
	ldr r5, _0808815C @ =gUnk_02002A40
	adds r0, r7, #0
	adds r0, #0x80
	ldrb r1, [r5, #9]
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r1, r0
	beq _0808813A
	cmp r1, #0
	beq _08088136
	movs r0, #6
	bl SetRoomFlag
_08088136:
	ldrb r0, [r4]
	strb r0, [r5, #9]
_0808813A:
	movs r0, #0x5f
	bl CheckLocalFlag
	cmp r0, #0
	beq _08088156
	ldr r0, _0808815C @ =gUnk_02002A40
	adds r0, #0xb0
	ldrb r1, [r4]
	ldrb r0, [r0]
	cmp r1, r0
	beq _08088156
	movs r0, #0x5f
	bl ClearLocalFlag
_08088156:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08088158: .4byte gUnk_08120AAC
_0808815C: .4byte gUnk_02002A40

	thumb_func_start sub_08088160
sub_08088160: @ 0x08088160
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #3
	ldr r0, _08088188 @ =gUnk_080FC3E4
	adds r1, r1, r0
	movs r4, #0
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	ldrb r3, [r1, #6]
	cmp r0, r3
	bhs _08088266
	ldrb r0, [r1, #6]
	cmp r0, #0x10
	beq _0808819E
	cmp r0, #0x10
	bgt _0808818C
	cmp r0, #8
	beq _08088194
	b _08088268
	.align 2, 0
_08088188: .4byte gUnk_080FC3E4
_0808818C:
	cmp r0, #0x20
	beq _080881A6
	cmp r0, #0x40
	bne _08088268
_08088194:
	ldr r0, [r1]
	ldrh r1, [r1, #4]
	bl CheckLocalFlagByOffset
	b _08088262
_0808819E:
	ldrh r0, [r1, #4]
	bl CheckKinstoneFused
	b _08088262
_080881A6:
	ldrh r0, [r1, #4]
	cmp r0, #5
	bhi _08088268
	lsls r0, r0, #2
	ldr r1, _080881B8 @ =_080881BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080881B8: .4byte _080881BC
_080881BC: @ jump table
	.4byte _080881D4 @ case 0
	.4byte _080881F0 @ case 1
	.4byte _080881FE @ case 2
	.4byte _0808821A @ case 3
	.4byte _08088236 @ case 4
	.4byte _08088252 @ case 5
_080881D4:
	movs r0, #0x20
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088266
	movs r0, #0x10
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088266
	movs r0, #0x19
_080881EA:
	bl CheckKinstoneFused
	b _08088262
_080881F0:
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #4
	bls _08088268
	movs r0, #0x28
	b _080881EA
_080881FE:
	movs r0, #0x54
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088266
	movs r0, #0x56
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088266
	movs r0, #0x3d
	bl CheckKinstoneFused
	b _08088262
_0808821A:
	movs r0, #0x3b
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088266
	movs r0, #0x4a
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088266
	movs r0, #0xd
	bl CheckKinstoneFused
	b _08088262
_08088236:
	movs r0, #0x49
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088266
	movs r0, #0x55
	bl CheckKinstoneFused
	cmp r0, #0
	bne _08088266
	movs r0, #0x3c
	bl CheckKinstoneFused
	b _08088262
_08088252:
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #1
	bls _08088268
	movs r0, #0x12
	bl CheckGlobalFlag
_08088262:
	cmp r0, #0
	beq _08088268
_08088266:
	movs r4, #1
_08088268:
	adds r0, r4, #0
	pop {r4, pc}

	thumb_func_start sub_0808826C
sub_0808826C: @ 0x0808826C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0x64
	adds r0, #0x80
	ldrb r1, [r0]
	ldr r0, _080882A4 @ =gUnk_02002A40
	adds r0, #0xb0
	ldrb r0, [r0]
	subs r0, r1, r0
	muls r4, r0, r4
	adds r0, r4, #0
	bl __divsi3
	adds r4, r0, #0
	cmp r4, #0
	bne _08088298
	movs r0, #0x5f
	bl CheckLocalFlag
	cmp r0, #0
	bne _08088298
	movs r4, #1
_08088298:
	adds r0, r5, #0
	adds r0, #0x83
	strb r4, [r0]
	subs r0, #1
	strb r4, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_080882A4: .4byte gUnk_02002A40

	thumb_func_start sub_080882A8
sub_080882A8: @ 0x080882A8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_08050384
	adds r0, r6, #0
	adds r0, #0x81
	ldrb r0, [r0]
	ldr r4, _080882F4 @ =gUnk_020227E8
	ldr r5, _080882F8 @ =0x00202020
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08057044
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, #8
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08057044
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _08088304
	ldr r1, _080882FC @ =gUnk_08120AE4
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08088300 @ =gUnk_08120AB4
	bl sub_0805F46C
	b _08088314
	.align 2, 0
_080882F4: .4byte gUnk_020227E8
_080882F8: .4byte 0x00202020
_080882FC: .4byte gUnk_08120AE4
_08088300: .4byte gUnk_08120AB4
_08088304:
	ldr r1, _0808831C @ =gUnk_08120AE4
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08088320 @ =gUnk_08120ACC
	bl sub_0805F46C
_08088314:
	ldr r1, _08088324 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0808831C: .4byte gUnk_08120AE4
_08088320: .4byte gUnk_08120ACC
_08088324: .4byte gScreen