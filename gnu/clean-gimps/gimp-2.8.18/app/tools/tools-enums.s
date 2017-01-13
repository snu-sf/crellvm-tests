	.text
	.file	"tools-enums.bc"
	.globl	gimp_button_press_type_get_type
	.align	16, 0x90
	.type	gimp_button_press_type_get_type,@function
gimp_button_press_type_get_type:        # @gimp_button_press_type_get_type
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
	cmpq	$0, gimp_button_press_type_get_type.type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.6, %rdi
	movabsq	$gimp_button_press_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.7, %rsi
	movq	%rax, gimp_button_press_type_get_type.type
	movq	gimp_button_press_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_button_press_type_get_type.descs, %rsi
	movq	gimp_button_press_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB0_2:                                # %if.end
	movq	gimp_button_press_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_button_press_type_get_type, .Lfunc_end0-gimp_button_press_type_get_type
	.cfi_endproc

	.globl	gimp_button_release_type_get_type
	.align	16, 0x90
	.type	gimp_button_release_type_get_type,@function
gimp_button_release_type_get_type:      # @gimp_button_release_type_get_type
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
	cmpq	$0, gimp_button_release_type_get_type.type
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.15, %rdi
	movabsq	$gimp_button_release_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.16, %rsi
	movq	%rax, gimp_button_release_type_get_type.type
	movq	gimp_button_release_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_button_release_type_get_type.descs, %rsi
	movq	gimp_button_release_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB1_2:                                # %if.end
	movq	gimp_button_release_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_button_release_type_get_type, .Lfunc_end1-gimp_button_release_type_get_type
	.cfi_endproc

	.globl	gimp_rectangle_constraint_get_type
	.align	16, 0x90
	.type	gimp_rectangle_constraint_get_type,@function
gimp_rectangle_constraint_get_type:     # @gimp_rectangle_constraint_get_type
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
	cmpq	$0, gimp_rectangle_constraint_get_type.type
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.23, %rdi
	movabsq	$gimp_rectangle_constraint_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.24, %rsi
	movq	%rax, gimp_rectangle_constraint_get_type.type
	movq	gimp_rectangle_constraint_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_rectangle_constraint_get_type.descs, %rsi
	movq	gimp_rectangle_constraint_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB2_2:                                # %if.end
	movq	gimp_rectangle_constraint_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_rectangle_constraint_get_type, .Lfunc_end2-gimp_rectangle_constraint_get_type
	.cfi_endproc

	.globl	gimp_rectangle_precision_get_type
	.align	16, 0x90
	.type	gimp_rectangle_precision_get_type,@function
gimp_rectangle_precision_get_type:      # @gimp_rectangle_precision_get_type
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
	cmpq	$0, gimp_rectangle_precision_get_type.type
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.28, %rdi
	movabsq	$gimp_rectangle_precision_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.29, %rsi
	movq	%rax, gimp_rectangle_precision_get_type.type
	movq	gimp_rectangle_precision_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_rectangle_precision_get_type.descs, %rsi
	movq	gimp_rectangle_precision_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB3_2:                                # %if.end
	movq	gimp_rectangle_precision_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_rectangle_precision_get_type, .Lfunc_end3-gimp_rectangle_precision_get_type
	.cfi_endproc

	.globl	gimp_rectangle_tool_fixed_rule_get_type
	.align	16, 0x90
	.type	gimp_rectangle_tool_fixed_rule_get_type,@function
gimp_rectangle_tool_fixed_rule_get_type: # @gimp_rectangle_tool_fixed_rule_get_type
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
	cmpq	$0, gimp_rectangle_tool_fixed_rule_get_type.type
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.42, %rdi
	movabsq	$gimp_rectangle_tool_fixed_rule_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.43, %rsi
	movq	%rax, gimp_rectangle_tool_fixed_rule_get_type.type
	movq	gimp_rectangle_tool_fixed_rule_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_rectangle_tool_fixed_rule_get_type.descs, %rsi
	movq	gimp_rectangle_tool_fixed_rule_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB4_2:                                # %if.end
	movq	gimp_rectangle_tool_fixed_rule_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_rectangle_tool_fixed_rule_get_type, .Lfunc_end4-gimp_rectangle_tool_fixed_rule_get_type
	.cfi_endproc

	.globl	gimp_rect_select_mode_get_type
	.align	16, 0x90
	.type	gimp_rect_select_mode_get_type,@function
gimp_rect_select_mode_get_type:         # @gimp_rect_select_mode_get_type
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
	cmpq	$0, gimp_rect_select_mode_get_type.type
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.53, %rdi
	movabsq	$gimp_rect_select_mode_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.54, %rsi
	movq	%rax, gimp_rect_select_mode_get_type.type
	movq	gimp_rect_select_mode_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_rect_select_mode_get_type.descs, %rsi
	movq	gimp_rect_select_mode_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB5_2:                                # %if.end
	movq	gimp_rect_select_mode_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_rect_select_mode_get_type, .Lfunc_end5-gimp_rect_select_mode_get_type
	.cfi_endproc

	.globl	gimp_transform_type_get_type
	.align	16, 0x90
	.type	gimp_transform_type_get_type,@function
gimp_transform_type_get_type:           # @gimp_transform_type_get_type
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
	cmpq	$0, gimp_transform_type_get_type.type
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.64, %rdi
	movabsq	$gimp_transform_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.65, %rsi
	movq	%rax, gimp_transform_type_get_type.type
	movq	gimp_transform_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_transform_type_get_type.descs, %rsi
	movq	gimp_transform_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB6_2:                                # %if.end
	movq	gimp_transform_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_transform_type_get_type, .Lfunc_end6-gimp_transform_type_get_type
	.cfi_endproc

	.globl	gimp_vector_mode_get_type
	.align	16, 0x90
	.type	gimp_vector_mode_get_type,@function
gimp_vector_mode_get_type:              # @gimp_vector_mode_get_type
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
	cmpq	$0, gimp_vector_mode_get_type.type
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.75, %rdi
	movabsq	$gimp_vector_mode_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.76, %rsi
	movq	%rax, gimp_vector_mode_get_type.type
	movq	gimp_vector_mode_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_vector_mode_get_type.descs, %rsi
	movq	gimp_vector_mode_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB7_2:                                # %if.end
	movq	gimp_vector_mode_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_vector_mode_get_type, .Lfunc_end7-gimp_vector_mode_get_type
	.cfi_endproc

	.globl	gimp_tool_action_get_type
	.align	16, 0x90
	.type	gimp_tool_action_get_type,@function
gimp_tool_action_get_type:              # @gimp_tool_action_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_tool_action_get_type.type
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.83, %rdi
	movabsq	$gimp_tool_action_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.84, %rsi
	movq	%rax, gimp_tool_action_get_type.type
	movq	gimp_tool_action_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_tool_action_get_type.descs, %rsi
	movq	gimp_tool_action_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB8_2:                                # %if.end
	movq	gimp_tool_action_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_tool_action_get_type, .Lfunc_end8-gimp_tool_action_get_type
	.cfi_endproc

	.type	gimp_button_press_type_get_type.values,@object # @gimp_button_press_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_button_press_type_get_type.values:
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
	.size	gimp_button_press_type_get_type.values, 96

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIMP_BUTTON_PRESS_NORMAL"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"normal"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_BUTTON_PRESS_DOUBLE"
	.size	.L.str.2, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"double"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_BUTTON_PRESS_TRIPLE"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"triple"
	.size	.L.str.5, 7

	.type	gimp_button_press_type_get_type.descs,@object # @gimp_button_press_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_button_press_type_get_type.descs:
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
	.size	gimp_button_press_type_get_type.descs, 96

	.type	gimp_button_press_type_get_type.type,@object # @gimp_button_press_type_get_type.type
	.local	gimp_button_press_type_get_type.type
	.comm	gimp_button_press_type_get_type.type,8,8
	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"GimpButtonPressType"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"button-press-type"
	.size	.L.str.7, 18

	.type	gimp_button_release_type_get_type.values,@object # @gimp_button_release_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_button_release_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.1
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.10
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.11
	.quad	.L.str.12
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.13
	.quad	.L.str.14
	.zero	24
	.size	gimp_button_release_type_get_type.values, 120

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"GIMP_BUTTON_RELEASE_NORMAL"
	.size	.L.str.8, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_BUTTON_RELEASE_CANCEL"
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"cancel"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_BUTTON_RELEASE_CLICK"
	.size	.L.str.11, 26

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"click"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP_BUTTON_RELEASE_NO_MOTION"
	.size	.L.str.13, 30

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"no-motion"
	.size	.L.str.14, 10

	.type	gimp_button_release_type_get_type.descs,@object # @gimp_button_release_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_button_release_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.8
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.9
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.11
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.13
	.quad	0
	.zero	24
	.size	gimp_button_release_type_get_type.descs, 120

	.type	gimp_button_release_type_get_type.type,@object # @gimp_button_release_type_get_type.type
	.local	gimp_button_release_type_get_type.type
	.comm	gimp_button_release_type_get_type.type,8,8
	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"GimpButtonReleaseType"
	.size	.L.str.15, 22

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"button-release-type"
	.size	.L.str.16, 20

	.type	gimp_rectangle_constraint_get_type.values,@object # @gimp_rectangle_constraint_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_rectangle_constraint_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.17
	.quad	.L.str.18
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.19
	.quad	.L.str.20
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.21
	.quad	.L.str.22
	.zero	24
	.size	gimp_rectangle_constraint_get_type.values, 96

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"GIMP_RECTANGLE_CONSTRAIN_NONE"
	.size	.L.str.17, 30

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"none"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"GIMP_RECTANGLE_CONSTRAIN_IMAGE"
	.size	.L.str.19, 31

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"image"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"GIMP_RECTANGLE_CONSTRAIN_DRAWABLE"
	.size	.L.str.21, 34

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"drawable"
	.size	.L.str.22, 9

	.type	gimp_rectangle_constraint_get_type.descs,@object # @gimp_rectangle_constraint_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_rectangle_constraint_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.17
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.19
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.21
	.quad	0
	.zero	24
	.size	gimp_rectangle_constraint_get_type.descs, 96

	.type	gimp_rectangle_constraint_get_type.type,@object # @gimp_rectangle_constraint_get_type.type
	.local	gimp_rectangle_constraint_get_type.type
	.comm	gimp_rectangle_constraint_get_type.type,8,8
	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"GimpRectangleConstraint"
	.size	.L.str.23, 24

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"rectangle-constraint"
	.size	.L.str.24, 21

	.type	gimp_rectangle_precision_get_type.values,@object # @gimp_rectangle_precision_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_rectangle_precision_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.25
	.quad	.L.str.26
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.27
	.quad	.L.str.3
	.zero	24
	.size	gimp_rectangle_precision_get_type.values, 72

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"GIMP_RECTANGLE_PRECISION_INT"
	.size	.L.str.25, 29

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"int"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"GIMP_RECTANGLE_PRECISION_DOUBLE"
	.size	.L.str.27, 32

	.type	gimp_rectangle_precision_get_type.descs,@object # @gimp_rectangle_precision_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_rectangle_precision_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.25
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.27
	.quad	0
	.zero	24
	.size	gimp_rectangle_precision_get_type.descs, 72

	.type	gimp_rectangle_precision_get_type.type,@object # @gimp_rectangle_precision_get_type.type
	.local	gimp_rectangle_precision_get_type.type
	.comm	gimp_rectangle_precision_get_type.type,8,8
	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"GimpRectanglePrecision"
	.size	.L.str.28, 23

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"rectangle-precision"
	.size	.L.str.29, 20

	.type	gimp_rectangle_tool_fixed_rule_get_type.values,@object # @gimp_rectangle_tool_fixed_rule_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_rectangle_tool_fixed_rule_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.30
	.quad	.L.str.31
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.32
	.quad	.L.str.33
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.34
	.quad	.L.str.35
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.36
	.quad	.L.str.37
	.zero	24
	.size	gimp_rectangle_tool_fixed_rule_get_type.values, 120

	.type	.L.str.30,@object       # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"GIMP_RECTANGLE_TOOL_FIXED_ASPECT"
	.size	.L.str.30, 33

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"aspect"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"GIMP_RECTANGLE_TOOL_FIXED_WIDTH"
	.size	.L.str.32, 32

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"width"
	.size	.L.str.33, 6

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"GIMP_RECTANGLE_TOOL_FIXED_HEIGHT"
	.size	.L.str.34, 33

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"height"
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"GIMP_RECTANGLE_TOOL_FIXED_SIZE"
	.size	.L.str.36, 31

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"size"
	.size	.L.str.37, 5

	.type	gimp_rectangle_tool_fixed_rule_get_type.descs,@object # @gimp_rectangle_tool_fixed_rule_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_rectangle_tool_fixed_rule_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.38
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.39
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.40
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.41
	.quad	0
	.zero	24
	.size	gimp_rectangle_tool_fixed_rule_get_type.descs, 120

	.type	.L.str.38,@object       # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"Aspect ratio"
	.size	.L.str.38, 13

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Width"
	.size	.L.str.39, 6

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Height"
	.size	.L.str.40, 7

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Size"
	.size	.L.str.41, 5

	.type	gimp_rectangle_tool_fixed_rule_get_type.type,@object # @gimp_rectangle_tool_fixed_rule_get_type.type
	.local	gimp_rectangle_tool_fixed_rule_get_type.type
	.comm	gimp_rectangle_tool_fixed_rule_get_type.type,8,8
	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"GimpRectangleToolFixedRule"
	.size	.L.str.42, 27

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"rectangle-tool-fixed-rule"
	.size	.L.str.43, 26

	.type	gimp_rect_select_mode_get_type.values,@object # @gimp_rect_select_mode_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_rect_select_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.44
	.quad	.L.str.45
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.46
	.quad	.L.str.47
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.48
	.quad	.L.str.49
	.zero	24
	.size	gimp_rect_select_mode_get_type.values, 96

	.type	.L.str.44,@object       # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	"GIMP_RECT_SELECT_MODE_FREE"
	.size	.L.str.44, 27

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"free"
	.size	.L.str.45, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"GIMP_RECT_SELECT_MODE_FIXED_SIZE"
	.size	.L.str.46, 33

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"fixed-size"
	.size	.L.str.47, 11

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"GIMP_RECT_SELECT_MODE_FIXED_RATIO"
	.size	.L.str.48, 34

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"fixed-ratio"
	.size	.L.str.49, 12

	.type	gimp_rect_select_mode_get_type.descs,@object # @gimp_rect_select_mode_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_rect_select_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.50
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.51
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.52
	.quad	0
	.zero	24
	.size	gimp_rect_select_mode_get_type.descs, 96

	.type	.L.str.50,@object       # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"Free select"
	.size	.L.str.50, 12

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Fixed size"
	.size	.L.str.51, 11

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Fixed aspect ratio"
	.size	.L.str.52, 19

	.type	gimp_rect_select_mode_get_type.type,@object # @gimp_rect_select_mode_get_type.type
	.local	gimp_rect_select_mode_get_type.type
	.comm	gimp_rect_select_mode_get_type.type,8,8
	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"GimpRectSelectMode"
	.size	.L.str.53, 19

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"rect-select-mode"
	.size	.L.str.54, 17

	.type	gimp_transform_type_get_type.values,@object # @gimp_transform_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_transform_type_get_type.values:
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
	.zero	24
	.size	gimp_transform_type_get_type.values, 96

	.type	.L.str.55,@object       # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"GIMP_TRANSFORM_TYPE_LAYER"
	.size	.L.str.55, 26

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"layer"
	.size	.L.str.56, 6

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"GIMP_TRANSFORM_TYPE_SELECTION"
	.size	.L.str.57, 30

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"selection"
	.size	.L.str.58, 10

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"GIMP_TRANSFORM_TYPE_PATH"
	.size	.L.str.59, 25

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"path"
	.size	.L.str.60, 5

	.type	gimp_transform_type_get_type.descs,@object # @gimp_transform_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_transform_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.61
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.62
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.63
	.quad	0
	.zero	24
	.size	gimp_transform_type_get_type.descs, 96

	.type	.L.str.61,@object       # @.str.61
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.61:
	.asciz	"Layer"
	.size	.L.str.61, 6

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Selection"
	.size	.L.str.62, 10

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Path"
	.size	.L.str.63, 5

	.type	gimp_transform_type_get_type.type,@object # @gimp_transform_type_get_type.type
	.local	gimp_transform_type_get_type.type
	.comm	gimp_transform_type_get_type.type,8,8
	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"GimpTransformType"
	.size	.L.str.64, 18

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"transform-type"
	.size	.L.str.65, 15

	.type	gimp_vector_mode_get_type.values,@object # @gimp_vector_mode_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_vector_mode_get_type.values:
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
	.size	gimp_vector_mode_get_type.values, 96

	.type	.L.str.66,@object       # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"GIMP_VECTOR_MODE_DESIGN"
	.size	.L.str.66, 24

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"design"
	.size	.L.str.67, 7

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"GIMP_VECTOR_MODE_EDIT"
	.size	.L.str.68, 22

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"edit"
	.size	.L.str.69, 5

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"GIMP_VECTOR_MODE_MOVE"
	.size	.L.str.70, 22

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"move"
	.size	.L.str.71, 5

	.type	gimp_vector_mode_get_type.descs,@object # @gimp_vector_mode_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_vector_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.72
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.73
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.74
	.quad	0
	.zero	24
	.size	gimp_vector_mode_get_type.descs, 96

	.type	.L.str.72,@object       # @.str.72
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.72:
	.asciz	"Design"
	.size	.L.str.72, 7

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Edit"
	.size	.L.str.73, 5

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Move"
	.size	.L.str.74, 5

	.type	gimp_vector_mode_get_type.type,@object # @gimp_vector_mode_get_type.type
	.local	gimp_vector_mode_get_type.type
	.comm	gimp_vector_mode_get_type.type,8,8
	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"GimpVectorMode"
	.size	.L.str.75, 15

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"vector-mode"
	.size	.L.str.76, 12

	.type	gimp_tool_action_get_type.values,@object # @gimp_tool_action_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_tool_action_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.77
	.quad	.L.str.78
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.79
	.quad	.L.str.80
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.81
	.quad	.L.str.82
	.zero	24
	.size	gimp_tool_action_get_type.values, 96

	.type	.L.str.77,@object       # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	"GIMP_TOOL_ACTION_PAUSE"
	.size	.L.str.77, 23

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"pause"
	.size	.L.str.78, 6

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"GIMP_TOOL_ACTION_RESUME"
	.size	.L.str.79, 24

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"resume"
	.size	.L.str.80, 7

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"GIMP_TOOL_ACTION_HALT"
	.size	.L.str.81, 22

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"halt"
	.size	.L.str.82, 5

	.type	gimp_tool_action_get_type.descs,@object # @gimp_tool_action_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_tool_action_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.77
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.79
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.81
	.quad	0
	.zero	24
	.size	gimp_tool_action_get_type.descs, 96

	.type	gimp_tool_action_get_type.type,@object # @gimp_tool_action_get_type.type
	.local	gimp_tool_action_get_type.type
	.comm	gimp_tool_action_get_type.type,8,8
	.type	.L.str.83,@object       # @.str.83
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.83:
	.asciz	"GimpToolAction"
	.size	.L.str.83, 15

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"tool-action"
	.size	.L.str.84, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
