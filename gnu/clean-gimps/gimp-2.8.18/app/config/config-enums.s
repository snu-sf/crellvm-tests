	.text
	.file	"config-enums.bc"
	.globl	gimp_cursor_mode_get_type
	.align	16, 0x90
	.type	gimp_cursor_mode_get_type,@function
gimp_cursor_mode_get_type:              # @gimp_cursor_mode_get_type
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
	cmpq	$0, gimp_cursor_mode_get_type.type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.9, %rdi
	movabsq	$gimp_cursor_mode_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.10, %rsi
	movq	%rax, gimp_cursor_mode_get_type.type
	movq	gimp_cursor_mode_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_cursor_mode_get_type.descs, %rsi
	movq	gimp_cursor_mode_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB0_2:                                # %if.end
	movq	gimp_cursor_mode_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_cursor_mode_get_type, .Lfunc_end0-gimp_cursor_mode_get_type
	.cfi_endproc

	.globl	gimp_canvas_padding_mode_get_type
	.align	16, 0x90
	.type	gimp_canvas_padding_mode_get_type,@function
gimp_canvas_padding_mode_get_type:      # @gimp_canvas_padding_mode_get_type
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
	cmpq	$0, gimp_canvas_padding_mode_get_type.type
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.23, %rdi
	movabsq	$gimp_canvas_padding_mode_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.24, %rsi
	movq	%rax, gimp_canvas_padding_mode_get_type.type
	movq	gimp_canvas_padding_mode_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_canvas_padding_mode_get_type.descs, %rsi
	movq	gimp_canvas_padding_mode_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB1_2:                                # %if.end
	movq	gimp_canvas_padding_mode_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_canvas_padding_mode_get_type, .Lfunc_end1-gimp_canvas_padding_mode_get_type
	.cfi_endproc

	.globl	gimp_space_bar_action_get_type
	.align	16, 0x90
	.type	gimp_space_bar_action_get_type,@function
gimp_space_bar_action_get_type:         # @gimp_space_bar_action_get_type
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
	cmpq	$0, gimp_space_bar_action_get_type.type
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.34, %rdi
	movabsq	$gimp_space_bar_action_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.35, %rsi
	movq	%rax, gimp_space_bar_action_get_type.type
	movq	gimp_space_bar_action_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_space_bar_action_get_type.descs, %rsi
	movq	gimp_space_bar_action_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB2_2:                                # %if.end
	movq	gimp_space_bar_action_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_space_bar_action_get_type, .Lfunc_end2-gimp_space_bar_action_get_type
	.cfi_endproc

	.globl	gimp_zoom_quality_get_type
	.align	16, 0x90
	.type	gimp_zoom_quality_get_type,@function
gimp_zoom_quality_get_type:             # @gimp_zoom_quality_get_type
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
	cmpq	$0, gimp_zoom_quality_get_type.type
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.42, %rdi
	movabsq	$gimp_zoom_quality_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.43, %rsi
	movq	%rax, gimp_zoom_quality_get_type.type
	movq	gimp_zoom_quality_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_zoom_quality_get_type.descs, %rsi
	movq	gimp_zoom_quality_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB3_2:                                # %if.end
	movq	gimp_zoom_quality_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_zoom_quality_get_type, .Lfunc_end3-gimp_zoom_quality_get_type
	.cfi_endproc

	.globl	gimp_help_browser_type_get_type
	.align	16, 0x90
	.type	gimp_help_browser_type_get_type,@function
gimp_help_browser_type_get_type:        # @gimp_help_browser_type_get_type
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
	cmpq	$0, gimp_help_browser_type_get_type.type
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.50, %rdi
	movabsq	$gimp_help_browser_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.51, %rsi
	movq	%rax, gimp_help_browser_type_get_type.type
	movq	gimp_help_browser_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_help_browser_type_get_type.descs, %rsi
	movq	gimp_help_browser_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB4_2:                                # %if.end
	movq	gimp_help_browser_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_help_browser_type_get_type, .Lfunc_end4-gimp_help_browser_type_get_type
	.cfi_endproc

	.globl	gimp_window_hint_get_type
	.align	16, 0x90
	.type	gimp_window_hint_get_type,@function
gimp_window_hint_get_type:              # @gimp_window_hint_get_type
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
	cmpq	$0, gimp_window_hint_get_type.type
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.61, %rdi
	movabsq	$gimp_window_hint_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.62, %rsi
	movq	%rax, gimp_window_hint_get_type.type
	movq	gimp_window_hint_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_window_hint_get_type.descs, %rsi
	movq	gimp_window_hint_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB5_2:                                # %if.end
	movq	gimp_window_hint_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_window_hint_get_type, .Lfunc_end5-gimp_window_hint_get_type
	.cfi_endproc

	.globl	gimp_cursor_format_get_type
	.align	16, 0x90
	.type	gimp_cursor_format_get_type,@function
gimp_cursor_format_get_type:            # @gimp_cursor_format_get_type
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
	cmpq	$0, gimp_cursor_format_get_type.type
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.69, %rdi
	movabsq	$gimp_cursor_format_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.70, %rsi
	movq	%rax, gimp_cursor_format_get_type.type
	movq	gimp_cursor_format_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_cursor_format_get_type.descs, %rsi
	movq	gimp_cursor_format_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB6_2:                                # %if.end
	movq	gimp_cursor_format_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_cursor_format_get_type, .Lfunc_end6-gimp_cursor_format_get_type
	.cfi_endproc

	.globl	gimp_handedness_get_type
	.align	16, 0x90
	.type	gimp_handedness_get_type,@function
gimp_handedness_get_type:               # @gimp_handedness_get_type
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
	cmpq	$0, gimp_handedness_get_type.type
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.77, %rdi
	movabsq	$gimp_handedness_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.78, %rsi
	movq	%rax, gimp_handedness_get_type.type
	movq	gimp_handedness_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_handedness_get_type.descs, %rsi
	movq	gimp_handedness_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB7_2:                                # %if.end
	movq	gimp_handedness_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_handedness_get_type, .Lfunc_end7-gimp_handedness_get_type
	.cfi_endproc

	.type	gimp_cursor_mode_get_type.values,@object # @gimp_cursor_mode_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_cursor_mode_get_type.values:
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
	.size	gimp_cursor_mode_get_type.values, 96

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIMP_CURSOR_MODE_TOOL_ICON"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"tool-icon"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_CURSOR_MODE_TOOL_CROSSHAIR"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"tool-crosshair"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_CURSOR_MODE_CROSSHAIR"
	.size	.L.str.4, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"crosshair"
	.size	.L.str.5, 10

	.type	gimp_cursor_mode_get_type.descs,@object # @gimp_cursor_mode_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_cursor_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.6
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.7
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.8
	.quad	0
	.zero	24
	.size	gimp_cursor_mode_get_type.descs, 96

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"Tool icon"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Tool icon with crosshair"
	.size	.L.str.7, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Crosshair only"
	.size	.L.str.8, 15

	.type	gimp_cursor_mode_get_type.type,@object # @gimp_cursor_mode_get_type.type
	.local	gimp_cursor_mode_get_type.type
	.comm	gimp_cursor_mode_get_type.type,8,8
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GimpCursorMode"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"cursor-mode"
	.size	.L.str.10, 12

	.type	gimp_canvas_padding_mode_get_type.values,@object # @gimp_canvas_padding_mode_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_canvas_padding_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.11
	.quad	.L.str.12
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.13
	.quad	.L.str.14
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.15
	.quad	.L.str.16
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.17
	.quad	.L.str.18
	.zero	24
	.size	gimp_canvas_padding_mode_get_type.values, 120

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"GIMP_CANVAS_PADDING_MODE_DEFAULT"
	.size	.L.str.11, 33

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"default"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP_CANVAS_PADDING_MODE_LIGHT_CHECK"
	.size	.L.str.13, 37

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"light-check"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"GIMP_CANVAS_PADDING_MODE_DARK_CHECK"
	.size	.L.str.15, 36

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"dark-check"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"GIMP_CANVAS_PADDING_MODE_CUSTOM"
	.size	.L.str.17, 32

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"custom"
	.size	.L.str.18, 7

	.type	gimp_canvas_padding_mode_get_type.descs,@object # @gimp_canvas_padding_mode_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_canvas_padding_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.19
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.20
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.21
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.22
	.quad	0
	.zero	24
	.size	gimp_canvas_padding_mode_get_type.descs, 120

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"From theme"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Light check color"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Dark check color"
	.size	.L.str.21, 17

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Custom color"
	.size	.L.str.22, 13

	.type	gimp_canvas_padding_mode_get_type.type,@object # @gimp_canvas_padding_mode_get_type.type
	.local	gimp_canvas_padding_mode_get_type.type
	.comm	gimp_canvas_padding_mode_get_type.type,8,8
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"GimpCanvasPaddingMode"
	.size	.L.str.23, 22

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"canvas-padding-mode"
	.size	.L.str.24, 20

	.type	gimp_space_bar_action_get_type.values,@object # @gimp_space_bar_action_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_space_bar_action_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.25
	.quad	.L.str.26
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.27
	.quad	.L.str.28
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.29
	.quad	.L.str.30
	.zero	24
	.size	gimp_space_bar_action_get_type.values, 96

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"GIMP_SPACE_BAR_ACTION_NONE"
	.size	.L.str.25, 27

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"none"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"GIMP_SPACE_BAR_ACTION_PAN"
	.size	.L.str.27, 26

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"pan"
	.size	.L.str.28, 4

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"GIMP_SPACE_BAR_ACTION_MOVE"
	.size	.L.str.29, 27

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"move"
	.size	.L.str.30, 5

	.type	gimp_space_bar_action_get_type.descs,@object # @gimp_space_bar_action_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_space_bar_action_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.31
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.32
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.33
	.quad	0
	.zero	24
	.size	gimp_space_bar_action_get_type.descs, 96

	.type	.L.str.31,@object       # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"No action"
	.size	.L.str.31, 10

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Pan view"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Switch to Move tool"
	.size	.L.str.33, 20

	.type	gimp_space_bar_action_get_type.type,@object # @gimp_space_bar_action_get_type.type
	.local	gimp_space_bar_action_get_type.type
	.comm	gimp_space_bar_action_get_type.type,8,8
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"GimpSpaceBarAction"
	.size	.L.str.34, 19

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"space-bar-action"
	.size	.L.str.35, 17

	.type	gimp_zoom_quality_get_type.values,@object # @gimp_zoom_quality_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_zoom_quality_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.36
	.quad	.L.str.37
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.38
	.quad	.L.str.39
	.zero	24
	.size	gimp_zoom_quality_get_type.values, 72

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"GIMP_ZOOM_QUALITY_LOW"
	.size	.L.str.36, 22

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"low"
	.size	.L.str.37, 4

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"GIMP_ZOOM_QUALITY_HIGH"
	.size	.L.str.38, 23

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"high"
	.size	.L.str.39, 5

	.type	gimp_zoom_quality_get_type.descs,@object # @gimp_zoom_quality_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_zoom_quality_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.40
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.41
	.quad	0
	.zero	24
	.size	gimp_zoom_quality_get_type.descs, 72

	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"Low"
	.size	.L.str.40, 4

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"High"
	.size	.L.str.41, 5

	.type	gimp_zoom_quality_get_type.type,@object # @gimp_zoom_quality_get_type.type
	.local	gimp_zoom_quality_get_type.type
	.comm	gimp_zoom_quality_get_type.type,8,8
	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"GimpZoomQuality"
	.size	.L.str.42, 16

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"zoom-quality"
	.size	.L.str.43, 13

	.type	gimp_help_browser_type_get_type.values,@object # @gimp_help_browser_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_help_browser_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.44
	.quad	.L.str.45
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.46
	.quad	.L.str.47
	.zero	24
	.size	gimp_help_browser_type_get_type.values, 72

	.type	.L.str.44,@object       # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	"GIMP_HELP_BROWSER_GIMP"
	.size	.L.str.44, 23

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp"
	.size	.L.str.45, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"GIMP_HELP_BROWSER_WEB_BROWSER"
	.size	.L.str.46, 30

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"web-browser"
	.size	.L.str.47, 12

	.type	gimp_help_browser_type_get_type.descs,@object # @gimp_help_browser_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_help_browser_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.48
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.49
	.quad	0
	.zero	24
	.size	gimp_help_browser_type_get_type.descs, 72

	.type	.L.str.48,@object       # @.str.48
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.48:
	.asciz	"GIMP help browser"
	.size	.L.str.48, 18

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Web browser"
	.size	.L.str.49, 12

	.type	gimp_help_browser_type_get_type.type,@object # @gimp_help_browser_type_get_type.type
	.local	gimp_help_browser_type_get_type.type
	.comm	gimp_help_browser_type_get_type.type,8,8
	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"GimpHelpBrowserType"
	.size	.L.str.50, 20

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"help-browser-type"
	.size	.L.str.51, 18

	.type	gimp_window_hint_get_type.values,@object # @gimp_window_hint_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_window_hint_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.52
	.quad	.L.str.53
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.54
	.quad	.L.str.55
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.56
	.quad	.L.str.57
	.zero	24
	.size	gimp_window_hint_get_type.values, 96

	.type	.L.str.52,@object       # @.str.52
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.52:
	.asciz	"GIMP_WINDOW_HINT_NORMAL"
	.size	.L.str.52, 24

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"normal"
	.size	.L.str.53, 7

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"GIMP_WINDOW_HINT_UTILITY"
	.size	.L.str.54, 25

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"utility"
	.size	.L.str.55, 8

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"GIMP_WINDOW_HINT_KEEP_ABOVE"
	.size	.L.str.56, 28

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"keep-above"
	.size	.L.str.57, 11

	.type	gimp_window_hint_get_type.descs,@object # @gimp_window_hint_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_window_hint_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.58
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.59
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.60
	.quad	0
	.zero	24
	.size	gimp_window_hint_get_type.descs, 96

	.type	.L.str.58,@object       # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"Normal window"
	.size	.L.str.58, 14

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Utility window"
	.size	.L.str.59, 15

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Keep above"
	.size	.L.str.60, 11

	.type	gimp_window_hint_get_type.type,@object # @gimp_window_hint_get_type.type
	.local	gimp_window_hint_get_type.type
	.comm	gimp_window_hint_get_type.type,8,8
	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"GimpWindowHint"
	.size	.L.str.61, 15

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"window-hint"
	.size	.L.str.62, 12

	.type	gimp_cursor_format_get_type.values,@object # @gimp_cursor_format_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_cursor_format_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.63
	.quad	.L.str.64
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.65
	.quad	.L.str.66
	.zero	24
	.size	gimp_cursor_format_get_type.values, 72

	.type	.L.str.63,@object       # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"GIMP_CURSOR_FORMAT_BITMAP"
	.size	.L.str.63, 26

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"bitmap"
	.size	.L.str.64, 7

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"GIMP_CURSOR_FORMAT_PIXBUF"
	.size	.L.str.65, 26

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"pixbuf"
	.size	.L.str.66, 7

	.type	gimp_cursor_format_get_type.descs,@object # @gimp_cursor_format_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_cursor_format_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.67
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.68
	.quad	0
	.zero	24
	.size	gimp_cursor_format_get_type.descs, 72

	.type	.L.str.67,@object       # @.str.67
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.67:
	.asciz	"Black & white"
	.size	.L.str.67, 14

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Fancy"
	.size	.L.str.68, 6

	.type	gimp_cursor_format_get_type.type,@object # @gimp_cursor_format_get_type.type
	.local	gimp_cursor_format_get_type.type
	.comm	gimp_cursor_format_get_type.type,8,8
	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"GimpCursorFormat"
	.size	.L.str.69, 17

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"cursor-format"
	.size	.L.str.70, 14

	.type	gimp_handedness_get_type.values,@object # @gimp_handedness_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_handedness_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.71
	.quad	.L.str.72
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.73
	.quad	.L.str.74
	.zero	24
	.size	gimp_handedness_get_type.values, 72

	.type	.L.str.71,@object       # @.str.71
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.71:
	.asciz	"GIMP_HANDEDNESS_LEFT"
	.size	.L.str.71, 21

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"left"
	.size	.L.str.72, 5

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"GIMP_HANDEDNESS_RIGHT"
	.size	.L.str.73, 22

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"right"
	.size	.L.str.74, 6

	.type	gimp_handedness_get_type.descs,@object # @gimp_handedness_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_handedness_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.75
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.76
	.quad	0
	.zero	24
	.size	gimp_handedness_get_type.descs, 72

	.type	.L.str.75,@object       # @.str.75
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.75:
	.asciz	"Left-handed"
	.size	.L.str.75, 12

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Right-handed"
	.size	.L.str.76, 13

	.type	gimp_handedness_get_type.type,@object # @gimp_handedness_get_type.type
	.local	gimp_handedness_get_type.type
	.comm	gimp_handedness_get_type.type,8,8
	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"GimpHandedness"
	.size	.L.str.77, 15

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"handedness"
	.size	.L.str.78, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
