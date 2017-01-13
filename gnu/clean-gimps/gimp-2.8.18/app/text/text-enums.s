	.text
	.file	"text-enums.bc"
	.globl	gimp_text_box_mode_get_type
	.align	16, 0x90
	.type	gimp_text_box_mode_get_type,@function
gimp_text_box_mode_get_type:            # @gimp_text_box_mode_get_type
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
	cmpq	$0, gimp_text_box_mode_get_type.type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.6, %rdi
	movabsq	$gimp_text_box_mode_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.7, %rsi
	movq	%rax, gimp_text_box_mode_get_type.type
	movq	gimp_text_box_mode_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_text_box_mode_get_type.descs, %rsi
	movq	gimp_text_box_mode_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB0_2:                                # %if.end
	movq	gimp_text_box_mode_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_box_mode_get_type, .Lfunc_end0-gimp_text_box_mode_get_type
	.cfi_endproc

	.globl	gimp_text_outline_get_type
	.align	16, 0x90
	.type	gimp_text_outline_get_type,@function
gimp_text_outline_get_type:             # @gimp_text_outline_get_type
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
	cmpq	$0, gimp_text_outline_get_type.type
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.14, %rdi
	movabsq	$gimp_text_outline_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.15, %rsi
	movq	%rax, gimp_text_outline_get_type.type
	movq	gimp_text_outline_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_text_outline_get_type.descs, %rsi
	movq	gimp_text_outline_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB1_2:                                # %if.end
	movq	gimp_text_outline_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_text_outline_get_type, .Lfunc_end1-gimp_text_outline_get_type
	.cfi_endproc

	.type	gimp_text_box_mode_get_type.values,@object # @gimp_text_box_mode_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_text_box_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.zero	24
	.size	gimp_text_box_mode_get_type.values, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIMP_TEXT_BOX_DYNAMIC"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"dynamic"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_TEXT_BOX_FIXED"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"fixed"
	.size	.L.str.3, 6

	.type	gimp_text_box_mode_get_type.descs,@object # @gimp_text_box_mode_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_text_box_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.4
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.5
	.quad	0
	.zero	24
	.size	gimp_text_box_mode_get_type.descs, 72

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Dynamic"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Fixed"
	.size	.L.str.5, 6

	.type	gimp_text_box_mode_get_type.type,@object # @gimp_text_box_mode_get_type.type
	.local	gimp_text_box_mode_get_type.type
	.comm	gimp_text_box_mode_get_type.type,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GimpTextBoxMode"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"text-box-mode"
	.size	.L.str.7, 14

	.type	gimp_text_outline_get_type.values,@object # @gimp_text_outline_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_text_outline_get_type.values:
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
	.size	gimp_text_outline_get_type.values, 96

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"GIMP_TEXT_OUTLINE_NONE"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"none"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_TEXT_OUTLINE_STROKE_ONLY"
	.size	.L.str.10, 30

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"stroke-only"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_TEXT_OUTLINE_STROKE_FILL"
	.size	.L.str.12, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"stroke-fill"
	.size	.L.str.13, 12

	.type	gimp_text_outline_get_type.descs,@object # @gimp_text_outline_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_text_outline_get_type.descs:
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
	.size	gimp_text_outline_get_type.descs, 96

	.type	gimp_text_outline_get_type.type,@object # @gimp_text_outline_get_type.type
	.local	gimp_text_outline_get_type.type
	.comm	gimp_text_outline_get_type.type,8,8
	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"GimpTextOutline"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"text-outline"
	.size	.L.str.15, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
