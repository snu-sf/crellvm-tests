	.text
	.file	"display-enums.bc"
	.globl	gimp_cursor_precision_get_type
	.align	16, 0x90
	.type	gimp_cursor_precision_get_type,@function
gimp_cursor_precision_get_type:         # @gimp_cursor_precision_get_type
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
	cmpq	$0, gimp_cursor_precision_get_type.type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.6, %rdi
	movabsq	$gimp_cursor_precision_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.7, %rsi
	movq	%rax, gimp_cursor_precision_get_type.type
	movq	gimp_cursor_precision_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_cursor_precision_get_type.descs, %rsi
	movq	gimp_cursor_precision_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB0_2:                                # %if.end
	movq	gimp_cursor_precision_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_cursor_precision_get_type, .Lfunc_end0-gimp_cursor_precision_get_type
	.cfi_endproc

	.globl	gimp_guides_type_get_type
	.align	16, 0x90
	.type	gimp_guides_type_get_type,@function
gimp_guides_type_get_type:              # @gimp_guides_type_get_type
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
	cmpq	$0, gimp_guides_type_get_type.type
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.32, %rdi
	movabsq	$gimp_guides_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.33, %rsi
	movq	%rax, gimp_guides_type_get_type.type
	movq	gimp_guides_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_guides_type_get_type.descs, %rsi
	movq	gimp_guides_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB1_2:                                # %if.end
	movq	gimp_guides_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_guides_type_get_type, .Lfunc_end1-gimp_guides_type_get_type
	.cfi_endproc

	.globl	gimp_handle_type_get_type
	.align	16, 0x90
	.type	gimp_handle_type_get_type,@function
gimp_handle_type_get_type:              # @gimp_handle_type_get_type
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
	cmpq	$0, gimp_handle_type_get_type.type
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.44, %rdi
	movabsq	$gimp_handle_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.45, %rsi
	movq	%rax, gimp_handle_type_get_type.type
	movq	gimp_handle_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_handle_type_get_type.descs, %rsi
	movq	gimp_handle_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB2_2:                                # %if.end
	movq	gimp_handle_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_handle_type_get_type, .Lfunc_end2-gimp_handle_type_get_type
	.cfi_endproc

	.globl	gimp_handle_anchor_get_type
	.align	16, 0x90
	.type	gimp_handle_anchor_get_type,@function
gimp_handle_anchor_get_type:            # @gimp_handle_anchor_get_type
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
	cmpq	$0, gimp_handle_anchor_get_type.type
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.64, %rdi
	movabsq	$gimp_handle_anchor_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.65, %rsi
	movq	%rax, gimp_handle_anchor_get_type.type
	movq	gimp_handle_anchor_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_handle_anchor_get_type.descs, %rsi
	movq	gimp_handle_anchor_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB3_2:                                # %if.end
	movq	gimp_handle_anchor_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_handle_anchor_get_type, .Lfunc_end3-gimp_handle_anchor_get_type
	.cfi_endproc

	.globl	gimp_path_style_get_type
	.align	16, 0x90
	.type	gimp_path_style_get_type,@function
gimp_path_style_get_type:               # @gimp_path_style_get_type
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
	cmpq	$0, gimp_path_style_get_type.type
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.72, %rdi
	movabsq	$gimp_path_style_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.73, %rsi
	movq	%rax, gimp_path_style_get_type.type
	movq	gimp_path_style_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_path_style_get_type.descs, %rsi
	movq	gimp_path_style_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB4_2:                                # %if.end
	movq	gimp_path_style_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_path_style_get_type, .Lfunc_end4-gimp_path_style_get_type
	.cfi_endproc

	.globl	gimp_zoom_focus_get_type
	.align	16, 0x90
	.type	gimp_zoom_focus_get_type,@function
gimp_zoom_focus_get_type:               # @gimp_zoom_focus_get_type
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
	cmpq	$0, gimp_zoom_focus_get_type.type
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.82, %rdi
	movabsq	$gimp_zoom_focus_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.83, %rsi
	movq	%rax, gimp_zoom_focus_get_type.type
	movq	gimp_zoom_focus_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_zoom_focus_get_type.descs, %rsi
	movq	gimp_zoom_focus_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB5_2:                                # %if.end
	movq	gimp_zoom_focus_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_zoom_focus_get_type, .Lfunc_end5-gimp_zoom_focus_get_type
	.cfi_endproc

	.type	gimp_cursor_precision_get_type.values,@object # @gimp_cursor_precision_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_cursor_precision_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.zero	24
	.size	gimp_cursor_precision_get_type.values, 96

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIMP_CURSOR_PRECISION_PIXEL_CENTER"
	.size	.L.str, 35

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"pixel-center"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_CURSOR_PRECISION_PIXEL_BORDER"
	.size	.L.str.2, 35

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"pixel-border"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_CURSOR_PRECISION_SUBPIXEL"
	.size	.L.str.4, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"subpixel"
	.size	.L.str.5, 9

	.type	gimp_cursor_precision_get_type.descs,@object # @gimp_cursor_precision_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_cursor_precision_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.2
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.4
	.quad	0
	.zero	24
	.size	gimp_cursor_precision_get_type.descs, 96

	.type	gimp_cursor_precision_get_type.type,@object # @gimp_cursor_precision_get_type.type
	.local	gimp_cursor_precision_get_type.type
	.comm	gimp_cursor_precision_get_type.type,8,8
	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"GimpCursorPrecision"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"cursor-precision"
	.size	.L.str.7, 17

	.type	gimp_guides_type_get_type.values,@object # @gimp_guides_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_guides_type_get_type.values:
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
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.zero	24
	.size	gimp_guides_type_get_type.values, 216

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"GIMP_GUIDES_NONE"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"none"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_GUIDES_CENTER_LINES"
	.size	.L.str.10, 25

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"center-lines"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_GUIDES_THIRDS"
	.size	.L.str.12, 19

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"thirds"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GIMP_GUIDES_FIFTHS"
	.size	.L.str.14, 19

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"fifths"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GIMP_GUIDES_GOLDEN"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"golden"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GIMP_GUIDES_DIAGONALS"
	.size	.L.str.18, 22

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"diagonals"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"GIMP_GUIDES_N_LINES"
	.size	.L.str.20, 20

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"n-lines"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"GIMP_GUIDES_SPACING"
	.size	.L.str.22, 20

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"spacing"
	.size	.L.str.23, 8

	.type	gimp_guides_type_get_type.descs,@object # @gimp_guides_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_guides_type_get_type.descs:
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
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.28
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.29
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.30
	.quad	0
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.31
	.quad	0
	.zero	24
	.size	gimp_guides_type_get_type.descs, 216

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"No guides"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Center lines"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Rule of thirds"
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Rule of fifths"
	.size	.L.str.27, 15

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Golden sections"
	.size	.L.str.28, 16

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Diagonal lines"
	.size	.L.str.29, 15

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Number of lines"
	.size	.L.str.30, 16

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Line spacing"
	.size	.L.str.31, 13

	.type	gimp_guides_type_get_type.type,@object # @gimp_guides_type_get_type.type
	.local	gimp_guides_type_get_type.type
	.comm	gimp_guides_type_get_type.type,8,8
	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"GimpGuidesType"
	.size	.L.str.32, 15

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"guides-type"
	.size	.L.str.33, 12

	.type	gimp_handle_type_get_type.values,@object # @gimp_handle_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_handle_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.34
	.quad	.L.str.35
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.36
	.quad	.L.str.37
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.38
	.quad	.L.str.39
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.40
	.quad	.L.str.41
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.42
	.quad	.L.str.43
	.zero	24
	.size	gimp_handle_type_get_type.values, 144

	.type	.L.str.34,@object       # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"GIMP_HANDLE_SQUARE"
	.size	.L.str.34, 19

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"square"
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"GIMP_HANDLE_FILLED_SQUARE"
	.size	.L.str.36, 26

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"filled-square"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"GIMP_HANDLE_CIRCLE"
	.size	.L.str.38, 19

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"circle"
	.size	.L.str.39, 7

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"GIMP_HANDLE_FILLED_CIRCLE"
	.size	.L.str.40, 26

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"filled-circle"
	.size	.L.str.41, 14

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"GIMP_HANDLE_CROSS"
	.size	.L.str.42, 18

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"cross"
	.size	.L.str.43, 6

	.type	gimp_handle_type_get_type.descs,@object # @gimp_handle_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_handle_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.34
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.36
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.38
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.40
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.42
	.quad	0
	.zero	24
	.size	gimp_handle_type_get_type.descs, 144

	.type	gimp_handle_type_get_type.type,@object # @gimp_handle_type_get_type.type
	.local	gimp_handle_type_get_type.type
	.comm	gimp_handle_type_get_type.type,8,8
	.type	.L.str.44,@object       # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	"GimpHandleType"
	.size	.L.str.44, 15

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"handle-type"
	.size	.L.str.45, 12

	.type	gimp_handle_anchor_get_type.values,@object # @gimp_handle_anchor_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_handle_anchor_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.46
	.quad	.L.str.47
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.48
	.quad	.L.str.49
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.50
	.quad	.L.str.51
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.52
	.quad	.L.str.53
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.54
	.quad	.L.str.55
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.56
	.quad	.L.str.57
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.58
	.quad	.L.str.59
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.60
	.quad	.L.str.61
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.62
	.quad	.L.str.63
	.zero	24
	.size	gimp_handle_anchor_get_type.values, 240

	.type	.L.str.46,@object       # @.str.46
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.46:
	.asciz	"GIMP_HANDLE_ANCHOR_CENTER"
	.size	.L.str.46, 26

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"center"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"GIMP_HANDLE_ANCHOR_NORTH"
	.size	.L.str.48, 25

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"north"
	.size	.L.str.49, 6

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"GIMP_HANDLE_ANCHOR_NORTH_WEST"
	.size	.L.str.50, 30

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"north-west"
	.size	.L.str.51, 11

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"GIMP_HANDLE_ANCHOR_NORTH_EAST"
	.size	.L.str.52, 30

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"north-east"
	.size	.L.str.53, 11

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"GIMP_HANDLE_ANCHOR_SOUTH"
	.size	.L.str.54, 25

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"south"
	.size	.L.str.55, 6

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"GIMP_HANDLE_ANCHOR_SOUTH_WEST"
	.size	.L.str.56, 30

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"south-west"
	.size	.L.str.57, 11

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"GIMP_HANDLE_ANCHOR_SOUTH_EAST"
	.size	.L.str.58, 30

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"south-east"
	.size	.L.str.59, 11

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"GIMP_HANDLE_ANCHOR_WEST"
	.size	.L.str.60, 24

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"west"
	.size	.L.str.61, 5

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"GIMP_HANDLE_ANCHOR_EAST"
	.size	.L.str.62, 24

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"east"
	.size	.L.str.63, 5

	.type	gimp_handle_anchor_get_type.descs,@object # @gimp_handle_anchor_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_handle_anchor_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.46
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.48
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.50
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.52
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.54
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.56
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.58
	.quad	0
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.60
	.quad	0
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.62
	.quad	0
	.zero	24
	.size	gimp_handle_anchor_get_type.descs, 240

	.type	gimp_handle_anchor_get_type.type,@object # @gimp_handle_anchor_get_type.type
	.local	gimp_handle_anchor_get_type.type
	.comm	gimp_handle_anchor_get_type.type,8,8
	.type	.L.str.64,@object       # @.str.64
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.64:
	.asciz	"GimpHandleAnchor"
	.size	.L.str.64, 17

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"handle-anchor"
	.size	.L.str.65, 14

	.type	gimp_path_style_get_type.values,@object # @gimp_path_style_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_path_style_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.66
	.quad	.L.str.67
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.68
	.quad	.L.str.69
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.70
	.quad	.L.str.71
	.zero	24
	.size	gimp_path_style_get_type.values, 96

	.type	.L.str.66,@object       # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"GIMP_PATH_STYLE_DEFAULT"
	.size	.L.str.66, 24

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"default"
	.size	.L.str.67, 8

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"GIMP_PATH_STYLE_VECTORS"
	.size	.L.str.68, 24

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"vectors"
	.size	.L.str.69, 8

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"GIMP_PATH_STYLE_OUTLINE"
	.size	.L.str.70, 24

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"outline"
	.size	.L.str.71, 8

	.type	gimp_path_style_get_type.descs,@object # @gimp_path_style_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_path_style_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.66
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.68
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.70
	.quad	0
	.zero	24
	.size	gimp_path_style_get_type.descs, 96

	.type	gimp_path_style_get_type.type,@object # @gimp_path_style_get_type.type
	.local	gimp_path_style_get_type.type
	.comm	gimp_path_style_get_type.type,8,8
	.type	.L.str.72,@object       # @.str.72
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.72:
	.asciz	"GimpPathStyle"
	.size	.L.str.72, 14

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"path-style"
	.size	.L.str.73, 11

	.type	gimp_zoom_focus_get_type.values,@object # @gimp_zoom_focus_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_zoom_focus_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.74
	.quad	.L.str.75
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.76
	.quad	.L.str.77
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.78
	.quad	.L.str.79
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.80
	.quad	.L.str.81
	.zero	24
	.size	gimp_zoom_focus_get_type.values, 120

	.type	.L.str.74,@object       # @.str.74
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.74:
	.asciz	"GIMP_ZOOM_FOCUS_BEST_GUESS"
	.size	.L.str.74, 27

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"best-guess"
	.size	.L.str.75, 11

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"GIMP_ZOOM_FOCUS_POINTER"
	.size	.L.str.76, 24

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"pointer"
	.size	.L.str.77, 8

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"GIMP_ZOOM_FOCUS_IMAGE_CENTER"
	.size	.L.str.78, 29

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"image-center"
	.size	.L.str.79, 13

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"GIMP_ZOOM_FOCUS_RETAIN_CENTERING_ELSE_BEST_GUESS"
	.size	.L.str.80, 49

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"retain-centering-else-best-guess"
	.size	.L.str.81, 33

	.type	gimp_zoom_focus_get_type.descs,@object # @gimp_zoom_focus_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_zoom_focus_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.74
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.76
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.78
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.80
	.quad	0
	.zero	24
	.size	gimp_zoom_focus_get_type.descs, 120

	.type	gimp_zoom_focus_get_type.type,@object # @gimp_zoom_focus_get_type.type
	.local	gimp_zoom_focus_get_type.type
	.comm	gimp_zoom_focus_get_type.type,8,8
	.type	.L.str.82,@object       # @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"GimpZoomFocus"
	.size	.L.str.82, 14

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"zoom-focus"
	.size	.L.str.83, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
