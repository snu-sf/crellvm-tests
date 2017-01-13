	.text
	.file	"widgets-enums.bc"
	.globl	gimp_active_color_get_type
	.align	16, 0x90
	.type	gimp_active_color_get_type,@function
gimp_active_color_get_type:             # @gimp_active_color_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_active_color_get_type.type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.6, %rdi
	movabsq	$gimp_active_color_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.7, %rsi
	movq	%rax, gimp_active_color_get_type.type
	movq	gimp_active_color_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_active_color_get_type.descs, %rsi
	movq	gimp_active_color_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB0_2:                                # %if.end
	movq	gimp_active_color_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_active_color_get_type, .Lfunc_end0-gimp_active_color_get_type
	.cfi_endproc

	.globl	gimp_color_dialog_state_get_type
	.align	16, 0x90
	.type	gimp_color_dialog_state_get_type,@function
gimp_color_dialog_state_get_type:       # @gimp_color_dialog_state_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_color_dialog_state_get_type.type
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.14, %rdi
	movabsq	$gimp_color_dialog_state_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.15, %rsi
	movq	%rax, gimp_color_dialog_state_get_type.type
	movq	gimp_color_dialog_state_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_color_dialog_state_get_type.descs, %rsi
	movq	gimp_color_dialog_state_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB1_2:                                # %if.end
	movq	gimp_color_dialog_state_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_dialog_state_get_type, .Lfunc_end1-gimp_color_dialog_state_get_type
	.cfi_endproc

	.globl	gimp_color_frame_mode_get_type
	.align	16, 0x90
	.type	gimp_color_frame_mode_get_type,@function
gimp_color_frame_mode_get_type:         # @gimp_color_frame_mode_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_color_frame_mode_get_type.type
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.28, %rdi
	movabsq	$gimp_color_frame_mode_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.29, %rsi
	movq	%rax, gimp_color_frame_mode_get_type.type
	movq	gimp_color_frame_mode_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_color_frame_mode_get_type.descs, %rsi
	movq	gimp_color_frame_mode_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB2_2:                                # %if.end
	movq	gimp_color_frame_mode_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_frame_mode_get_type, .Lfunc_end2-gimp_color_frame_mode_get_type
	.cfi_endproc

	.globl	gimp_color_pick_mode_get_type
	.align	16, 0x90
	.type	gimp_color_pick_mode_get_type,@function
gimp_color_pick_mode_get_type:          # @gimp_color_pick_mode_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_color_pick_mode_get_type.type
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.40, %rdi
	movabsq	$gimp_color_pick_mode_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.41, %rsi
	movq	%rax, gimp_color_pick_mode_get_type.type
	movq	gimp_color_pick_mode_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_color_pick_mode_get_type.descs, %rsi
	movq	gimp_color_pick_mode_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB3_2:                                # %if.end
	movq	gimp_color_pick_mode_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_pick_mode_get_type, .Lfunc_end3-gimp_color_pick_mode_get_type
	.cfi_endproc

	.globl	gimp_color_pick_state_get_type
	.align	16, 0x90
	.type	gimp_color_pick_state_get_type,@function
gimp_color_pick_state_get_type:         # @gimp_color_pick_state_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_color_pick_state_get_type.type
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.45, %rdi
	movabsq	$gimp_color_pick_state_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.46, %rsi
	movq	%rax, gimp_color_pick_state_get_type.type
	movq	gimp_color_pick_state_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_color_pick_state_get_type.descs, %rsi
	movq	gimp_color_pick_state_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB4_2:                                # %if.end
	movq	gimp_color_pick_state_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_pick_state_get_type, .Lfunc_end4-gimp_color_pick_state_get_type
	.cfi_endproc

	.globl	gimp_histogram_scale_get_type
	.align	16, 0x90
	.type	gimp_histogram_scale_get_type,@function
gimp_histogram_scale_get_type:          # @gimp_histogram_scale_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_histogram_scale_get_type.type
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.53, %rdi
	movabsq	$gimp_histogram_scale_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.54, %rsi
	movq	%rax, gimp_histogram_scale_get_type.type
	movq	gimp_histogram_scale_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_histogram_scale_get_type.descs, %rsi
	movq	gimp_histogram_scale_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB5_2:                                # %if.end
	movq	gimp_histogram_scale_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_histogram_scale_get_type, .Lfunc_end5-gimp_histogram_scale_get_type
	.cfi_endproc

	.globl	gimp_tab_style_get_type
	.align	16, 0x90
	.type	gimp_tab_style_get_type,@function
gimp_tab_style_get_type:                # @gimp_tab_style_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_tab_style_get_type.type
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.85, %rdi
	movabsq	$gimp_tab_style_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.86, %rsi
	movq	%rax, gimp_tab_style_get_type.type
	movq	gimp_tab_style_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_tab_style_get_type.descs, %rsi
	movq	gimp_tab_style_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB6_2:                                # %if.end
	movq	gimp_tab_style_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tab_style_get_type, .Lfunc_end6-gimp_tab_style_get_type
	.cfi_endproc

	.globl	gimp_tag_entry_mode_get_type
	.align	16, 0x90
	.type	gimp_tag_entry_mode_get_type,@function
gimp_tag_entry_mode_get_type:           # @gimp_tag_entry_mode_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_tag_entry_mode_get_type.type
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.91, %rdi
	movabsq	$gimp_tag_entry_mode_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.92, %rsi
	movq	%rax, gimp_tag_entry_mode_get_type.type
	movq	gimp_tag_entry_mode_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_tag_entry_mode_get_type.descs, %rsi
	movq	gimp_tag_entry_mode_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB7_2:                                # %if.end
	movq	gimp_tag_entry_mode_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_tag_entry_mode_get_type, .Lfunc_end7-gimp_tag_entry_mode_get_type
	.cfi_endproc

	.type	gimp_active_color_get_type.values,@object # @gimp_active_color_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_active_color_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.zero	24
	.size	gimp_active_color_get_type.values, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIMP_ACTIVE_COLOR_FOREGROUND"
	.size	.L.str, 29

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"foreground"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_ACTIVE_COLOR_BACKGROUND"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"background"
	.size	.L.str.3, 11

	.type	gimp_active_color_get_type.descs,@object # @gimp_active_color_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_active_color_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.4
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.5
	.quad	0
	.zero	24
	.size	gimp_active_color_get_type.descs, 72

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Foreground"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Background"
	.size	.L.str.5, 11

	.type	gimp_active_color_get_type.type,@object # @gimp_active_color_get_type.type
	.local	gimp_active_color_get_type.type
	.comm	gimp_active_color_get_type.type,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GimpActiveColor"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"active-color"
	.size	.L.str.7, 13

	.type	gimp_color_dialog_state_get_type.values,@object # @gimp_color_dialog_state_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_color_dialog_state_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.zero	24
	.size	gimp_color_dialog_state_get_type.values, 96

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"GIMP_COLOR_DIALOG_OK"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ok"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_COLOR_DIALOG_CANCEL"
	.size	.L.str.10, 25

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"cancel"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_COLOR_DIALOG_UPDATE"
	.size	.L.str.12, 25

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"update"
	.size	.L.str.13, 7

	.type	gimp_color_dialog_state_get_type.descs,@object # @gimp_color_dialog_state_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_color_dialog_state_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.8
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.10
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.12
	.quad	0
	.zero	24
	.size	gimp_color_dialog_state_get_type.descs, 96

	.type	gimp_color_dialog_state_get_type.type,@object # @gimp_color_dialog_state_get_type.type
	.local	gimp_color_dialog_state_get_type.type
	.comm	gimp_color_dialog_state_get_type.type,8,8
	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"GimpColorDialogState"
	.size	.L.str.14, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"color-dialog-state"
	.size	.L.str.15, 19

	.type	gimp_color_frame_mode_get_type.values,@object # @gimp_color_frame_mode_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_color_frame_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.zero	24
	.size	gimp_color_frame_mode_get_type.values, 120

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"GIMP_COLOR_FRAME_MODE_PIXEL"
	.size	.L.str.16, 28

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"pixel"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GIMP_COLOR_FRAME_MODE_RGB"
	.size	.L.str.18, 26

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"rgb"
	.size	.L.str.19, 4

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"GIMP_COLOR_FRAME_MODE_HSV"
	.size	.L.str.20, 26

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"hsv"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"GIMP_COLOR_FRAME_MODE_CMYK"
	.size	.L.str.22, 27

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"cmyk"
	.size	.L.str.23, 5

	.type	gimp_color_frame_mode_get_type.descs,@object # @gimp_color_frame_mode_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_color_frame_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.24
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.25
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.26
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.27
	.quad	0
	.zero	24
	.size	gimp_color_frame_mode_get_type.descs, 120

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"Pixel"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"RGB"
	.size	.L.str.25, 4

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"HSV"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"CMYK"
	.size	.L.str.27, 5

	.type	gimp_color_frame_mode_get_type.type,@object # @gimp_color_frame_mode_get_type.type
	.local	gimp_color_frame_mode_get_type.type
	.comm	gimp_color_frame_mode_get_type.type,8,8
	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"GimpColorFrameMode"
	.size	.L.str.28, 19

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"color-frame-mode"
	.size	.L.str.29, 17

	.type	gimp_color_pick_mode_get_type.values,@object # @gimp_color_pick_mode_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_color_pick_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.30
	.quad	.L.str.31
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.32
	.quad	.L.str.1
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.33
	.quad	.L.str.3
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.34
	.quad	.L.str.35
	.zero	24
	.size	gimp_color_pick_mode_get_type.values, 120

	.type	.L.str.30,@object       # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"GIMP_COLOR_PICK_MODE_NONE"
	.size	.L.str.30, 26

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"none"
	.size	.L.str.31, 5

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"GIMP_COLOR_PICK_MODE_FOREGROUND"
	.size	.L.str.32, 32

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"GIMP_COLOR_PICK_MODE_BACKGROUND"
	.size	.L.str.33, 32

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"GIMP_COLOR_PICK_MODE_PALETTE"
	.size	.L.str.34, 29

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"palette"
	.size	.L.str.35, 8

	.type	gimp_color_pick_mode_get_type.descs,@object # @gimp_color_pick_mode_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_color_pick_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.36
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.37
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.38
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.39
	.quad	0
	.zero	24
	.size	gimp_color_pick_mode_get_type.descs, 120

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"Pick only"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Set foreground color"
	.size	.L.str.37, 21

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Set background color"
	.size	.L.str.38, 21

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Add to palette"
	.size	.L.str.39, 15

	.type	gimp_color_pick_mode_get_type.type,@object # @gimp_color_pick_mode_get_type.type
	.local	gimp_color_pick_mode_get_type.type
	.comm	gimp_color_pick_mode_get_type.type,8,8
	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"GimpColorPickMode"
	.size	.L.str.40, 18

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"color-pick-mode"
	.size	.L.str.41, 16

	.type	gimp_color_pick_state_get_type.values,@object # @gimp_color_pick_state_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_color_pick_state_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.42
	.quad	.L.str.43
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.44
	.quad	.L.str.13
	.zero	24
	.size	gimp_color_pick_state_get_type.values, 72

	.type	.L.str.42,@object       # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"GIMP_COLOR_PICK_STATE_NEW"
	.size	.L.str.42, 26

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"new"
	.size	.L.str.43, 4

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"GIMP_COLOR_PICK_STATE_UPDATE"
	.size	.L.str.44, 29

	.type	gimp_color_pick_state_get_type.descs,@object # @gimp_color_pick_state_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_color_pick_state_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.42
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.44
	.quad	0
	.zero	24
	.size	gimp_color_pick_state_get_type.descs, 72

	.type	gimp_color_pick_state_get_type.type,@object # @gimp_color_pick_state_get_type.type
	.local	gimp_color_pick_state_get_type.type
	.comm	gimp_color_pick_state_get_type.type,8,8
	.type	.L.str.45,@object       # @.str.45
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.45:
	.asciz	"GimpColorPickState"
	.size	.L.str.45, 19

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"color-pick-state"
	.size	.L.str.46, 17

	.type	gimp_histogram_scale_get_type.values,@object # @gimp_histogram_scale_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_histogram_scale_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.47
	.quad	.L.str.48
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.49
	.quad	.L.str.50
	.zero	24
	.size	gimp_histogram_scale_get_type.values, 72

	.type	.L.str.47,@object       # @.str.47
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.47:
	.asciz	"GIMP_HISTOGRAM_SCALE_LINEAR"
	.size	.L.str.47, 28

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"linear"
	.size	.L.str.48, 7

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"GIMP_HISTOGRAM_SCALE_LOGARITHMIC"
	.size	.L.str.49, 33

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"logarithmic"
	.size	.L.str.50, 12

	.type	gimp_histogram_scale_get_type.descs,@object # @gimp_histogram_scale_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_histogram_scale_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.51
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.52
	.quad	0
	.zero	24
	.size	gimp_histogram_scale_get_type.descs, 72

	.type	.L.str.51,@object       # @.str.51
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.51:
	.asciz	"Linear histogram"
	.size	.L.str.51, 17

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Logarithmic histogram"
	.size	.L.str.52, 22

	.type	gimp_histogram_scale_get_type.type,@object # @gimp_histogram_scale_get_type.type
	.local	gimp_histogram_scale_get_type.type
	.comm	gimp_histogram_scale_get_type.type,8,8
	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"GimpHistogramScale"
	.size	.L.str.53, 19

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"histogram-scale"
	.size	.L.str.54, 16

	.type	gimp_tab_style_get_type.values,@object # @gimp_tab_style_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_tab_style_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.55
	.quad	.L.str.56
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.57
	.quad	.L.str.58
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.59
	.quad	.L.str.60
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.61
	.quad	.L.str.62
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.63
	.quad	.L.str.64
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.65
	.quad	.L.str.66
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.67
	.quad	.L.str.68
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.69
	.quad	.L.str.70
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.71
	.quad	.L.str.72
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.73
	.quad	.L.str.74
	.zero	24
	.size	gimp_tab_style_get_type.values, 264

	.type	.L.str.55,@object       # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"GIMP_TAB_STYLE_ICON"
	.size	.L.str.55, 20

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"icon"
	.size	.L.str.56, 5

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"GIMP_TAB_STYLE_PREVIEW"
	.size	.L.str.57, 23

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"preview"
	.size	.L.str.58, 8

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"GIMP_TAB_STYLE_NAME"
	.size	.L.str.59, 20

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"name"
	.size	.L.str.60, 5

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"GIMP_TAB_STYLE_BLURB"
	.size	.L.str.61, 21

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"blurb"
	.size	.L.str.62, 6

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"GIMP_TAB_STYLE_ICON_NAME"
	.size	.L.str.63, 25

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"icon-name"
	.size	.L.str.64, 10

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"GIMP_TAB_STYLE_ICON_BLURB"
	.size	.L.str.65, 26

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"icon-blurb"
	.size	.L.str.66, 11

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"GIMP_TAB_STYLE_PREVIEW_NAME"
	.size	.L.str.67, 28

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"preview-name"
	.size	.L.str.68, 13

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"GIMP_TAB_STYLE_PREVIEW_BLURB"
	.size	.L.str.69, 29

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"preview-blurb"
	.size	.L.str.70, 14

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"GIMP_TAB_STYLE_UNDEFINED"
	.size	.L.str.71, 25

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"undefined"
	.size	.L.str.72, 10

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"GIMP_TAB_STYLE_AUTOMATIC"
	.size	.L.str.73, 25

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"automatic"
	.size	.L.str.74, 10

	.type	gimp_tab_style_get_type.descs,@object # @gimp_tab_style_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_tab_style_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.75
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.76
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.77
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.78
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.79
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.80
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.81
	.quad	0
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.82
	.quad	0
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.83
	.quad	0
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.84
	.quad	0
	.zero	24
	.size	gimp_tab_style_get_type.descs, 264

	.type	.L.str.75,@object       # @.str.75
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.75:
	.asciz	"Icon"
	.size	.L.str.75, 5

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Current status"
	.size	.L.str.76, 15

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Text"
	.size	.L.str.77, 5

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Description"
	.size	.L.str.78, 12

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Icon & text"
	.size	.L.str.79, 12

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Icon & desc"
	.size	.L.str.80, 12

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Status & text"
	.size	.L.str.81, 14

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Status & desc"
	.size	.L.str.82, 14

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Undefined"
	.size	.L.str.83, 10

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Automatic"
	.size	.L.str.84, 10

	.type	gimp_tab_style_get_type.type,@object # @gimp_tab_style_get_type.type
	.local	gimp_tab_style_get_type.type
	.comm	gimp_tab_style_get_type.type,8,8
	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"GimpTabStyle"
	.size	.L.str.85, 13

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"tab-style"
	.size	.L.str.86, 10

	.type	gimp_tag_entry_mode_get_type.values,@object # @gimp_tag_entry_mode_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_tag_entry_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.87
	.quad	.L.str.88
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.89
	.quad	.L.str.90
	.zero	24
	.size	gimp_tag_entry_mode_get_type.values, 72

	.type	.L.str.87,@object       # @.str.87
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.87:
	.asciz	"GIMP_TAG_ENTRY_MODE_QUERY"
	.size	.L.str.87, 26

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"query"
	.size	.L.str.88, 6

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"GIMP_TAG_ENTRY_MODE_ASSIGN"
	.size	.L.str.89, 27

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"assign"
	.size	.L.str.90, 7

	.type	gimp_tag_entry_mode_get_type.descs,@object # @gimp_tag_entry_mode_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_tag_entry_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.87
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.89
	.quad	0
	.zero	24
	.size	gimp_tag_entry_mode_get_type.descs, 72

	.type	gimp_tag_entry_mode_get_type.type,@object # @gimp_tag_entry_mode_get_type.type
	.local	gimp_tag_entry_mode_get_type.type
	.comm	gimp_tag_entry_mode_get_type.type,8,8
	.type	.L.str.91,@object       # @.str.91
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.91:
	.asciz	"GimpTagEntryMode"
	.size	.L.str.91, 17

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"tag-entry-mode"
	.size	.L.str.92, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
