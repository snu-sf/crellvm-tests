	.text
	.file	"paint-enums.bc"
	.globl	gimp_brush_application_mode_get_type
	.align	16, 0x90
	.type	gimp_brush_application_mode_get_type,@function
gimp_brush_application_mode_get_type:   # @gimp_brush_application_mode_get_type
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
	cmpq	$0, gimp_brush_application_mode_get_type.type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.4, %rdi
	movabsq	$gimp_brush_application_mode_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.5, %rsi
	movq	%rax, gimp_brush_application_mode_get_type.type
	movq	gimp_brush_application_mode_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_brush_application_mode_get_type.descs, %rsi
	movq	gimp_brush_application_mode_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB0_2:                                # %if.end
	movq	gimp_brush_application_mode_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_application_mode_get_type, .Lfunc_end0-gimp_brush_application_mode_get_type
	.cfi_endproc

	.globl	gimp_perspective_clone_mode_get_type
	.align	16, 0x90
	.type	gimp_perspective_clone_mode_get_type,@function
gimp_perspective_clone_mode_get_type:   # @gimp_perspective_clone_mode_get_type
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
	cmpq	$0, gimp_perspective_clone_mode_get_type.type
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.12, %rdi
	movabsq	$gimp_perspective_clone_mode_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.13, %rsi
	movq	%rax, gimp_perspective_clone_mode_get_type.type
	movq	gimp_perspective_clone_mode_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_perspective_clone_mode_get_type.descs, %rsi
	movq	gimp_perspective_clone_mode_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB1_2:                                # %if.end
	movq	gimp_perspective_clone_mode_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_perspective_clone_mode_get_type, .Lfunc_end1-gimp_perspective_clone_mode_get_type
	.cfi_endproc

	.globl	gimp_source_align_mode_get_type
	.align	16, 0x90
	.type	gimp_source_align_mode_get_type,@function
gimp_source_align_mode_get_type:        # @gimp_source_align_mode_get_type
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
	cmpq	$0, gimp_source_align_mode_get_type.type
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.26, %rdi
	movabsq	$gimp_source_align_mode_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.27, %rsi
	movq	%rax, gimp_source_align_mode_get_type.type
	movq	gimp_source_align_mode_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_source_align_mode_get_type.descs, %rsi
	movq	gimp_source_align_mode_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB2_2:                                # %if.end
	movq	gimp_source_align_mode_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_source_align_mode_get_type, .Lfunc_end2-gimp_source_align_mode_get_type
	.cfi_endproc

	.globl	gimp_convolve_type_get_type
	.align	16, 0x90
	.type	gimp_convolve_type_get_type,@function
gimp_convolve_type_get_type:            # @gimp_convolve_type_get_type
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
	cmpq	$0, gimp_convolve_type_get_type.type
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.34, %rdi
	movabsq	$gimp_convolve_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.35, %rsi
	movq	%rax, gimp_convolve_type_get_type.type
	movq	gimp_convolve_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_convolve_type_get_type.descs, %rsi
	movq	gimp_convolve_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB3_2:                                # %if.end
	movq	gimp_convolve_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_convolve_type_get_type, .Lfunc_end3-gimp_convolve_type_get_type
	.cfi_endproc

	.globl	gimp_ink_blob_type_get_type
	.align	16, 0x90
	.type	gimp_ink_blob_type_get_type,@function
gimp_ink_blob_type_get_type:            # @gimp_ink_blob_type_get_type
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
	cmpq	$0, gimp_ink_blob_type_get_type.type
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.45, %rdi
	movabsq	$gimp_ink_blob_type_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.46, %rsi
	movq	%rax, gimp_ink_blob_type_get_type.type
	movq	gimp_ink_blob_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_ink_blob_type_get_type.descs, %rsi
	movq	gimp_ink_blob_type_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB4_2:                                # %if.end
	movq	gimp_ink_blob_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_ink_blob_type_get_type, .Lfunc_end4-gimp_ink_blob_type_get_type
	.cfi_endproc

	.type	gimp_brush_application_mode_get_type.values,@object # @gimp_brush_application_mode_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_brush_application_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.zero	24
	.size	gimp_brush_application_mode_get_type.values, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIMP_BRUSH_HARD"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"hard"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_BRUSH_SOFT"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"soft"
	.size	.L.str.3, 5

	.type	gimp_brush_application_mode_get_type.descs,@object # @gimp_brush_application_mode_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_brush_application_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.2
	.quad	0
	.zero	24
	.size	gimp_brush_application_mode_get_type.descs, 72

	.type	gimp_brush_application_mode_get_type.type,@object # @gimp_brush_application_mode_get_type.type
	.local	gimp_brush_application_mode_get_type.type
	.comm	gimp_brush_application_mode_get_type.type,8,8
	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"GimpBrushApplicationMode"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"brush-application-mode"
	.size	.L.str.5, 23

	.type	gimp_perspective_clone_mode_get_type.values,@object # @gimp_perspective_clone_mode_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_perspective_clone_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.zero	24
	.size	gimp_perspective_clone_mode_get_type.values, 72

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"GIMP_PERSPECTIVE_CLONE_MODE_ADJUST"
	.size	.L.str.6, 35

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"adjust"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_PERSPECTIVE_CLONE_MODE_PAINT"
	.size	.L.str.8, 34

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"paint"
	.size	.L.str.9, 6

	.type	gimp_perspective_clone_mode_get_type.descs,@object # @gimp_perspective_clone_mode_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_perspective_clone_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.11
	.quad	0
	.zero	24
	.size	gimp_perspective_clone_mode_get_type.descs, 72

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"Modify Perspective"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Perspective Clone"
	.size	.L.str.11, 18

	.type	gimp_perspective_clone_mode_get_type.type,@object # @gimp_perspective_clone_mode_get_type.type
	.local	gimp_perspective_clone_mode_get_type.type
	.comm	gimp_perspective_clone_mode_get_type.type,8,8
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GimpPerspectiveCloneMode"
	.size	.L.str.12, 25

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"perspective-clone-mode"
	.size	.L.str.13, 23

	.type	gimp_source_align_mode_get_type.values,@object # @gimp_source_align_mode_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_source_align_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.zero	24
	.size	gimp_source_align_mode_get_type.values, 120

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"GIMP_SOURCE_ALIGN_NO"
	.size	.L.str.14, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"no"
	.size	.L.str.15, 3

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GIMP_SOURCE_ALIGN_YES"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"yes"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GIMP_SOURCE_ALIGN_REGISTERED"
	.size	.L.str.18, 29

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"registered"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"GIMP_SOURCE_ALIGN_FIXED"
	.size	.L.str.20, 24

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"fixed"
	.size	.L.str.21, 6

	.type	gimp_source_align_mode_get_type.descs,@object # @gimp_source_align_mode_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_source_align_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.22
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.23
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.24
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.25
	.quad	0
	.zero	24
	.size	gimp_source_align_mode_get_type.descs, 120

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"None"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Aligned"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Registered"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Fixed"
	.size	.L.str.25, 6

	.type	gimp_source_align_mode_get_type.type,@object # @gimp_source_align_mode_get_type.type
	.local	gimp_source_align_mode_get_type.type
	.comm	gimp_source_align_mode_get_type.type,8,8
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"GimpSourceAlignMode"
	.size	.L.str.26, 20

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"source-align-mode"
	.size	.L.str.27, 18

	.type	gimp_convolve_type_get_type.values,@object # @gimp_convolve_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_convolve_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.28
	.quad	.L.str.29
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.30
	.quad	.L.str.31
	.zero	24
	.size	gimp_convolve_type_get_type.values, 72

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"GIMP_BLUR_CONVOLVE"
	.size	.L.str.28, 19

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"blur-convolve"
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"GIMP_SHARPEN_CONVOLVE"
	.size	.L.str.30, 22

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"sharpen-convolve"
	.size	.L.str.31, 17

	.type	gimp_convolve_type_get_type.descs,@object # @gimp_convolve_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_convolve_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.32
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.33
	.quad	0
	.zero	24
	.size	gimp_convolve_type_get_type.descs, 72

	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"Blur"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Sharpen"
	.size	.L.str.33, 8

	.type	gimp_convolve_type_get_type.type,@object # @gimp_convolve_type_get_type.type
	.local	gimp_convolve_type_get_type.type
	.comm	gimp_convolve_type_get_type.type,8,8
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"GimpConvolveType"
	.size	.L.str.34, 17

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"convolve-type"
	.size	.L.str.35, 14

	.type	gimp_ink_blob_type_get_type.values,@object # @gimp_ink_blob_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_ink_blob_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.36
	.quad	.L.str.37
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.38
	.quad	.L.str.39
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.40
	.quad	.L.str.41
	.zero	24
	.size	gimp_ink_blob_type_get_type.values, 96

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"GIMP_INK_BLOB_TYPE_CIRCLE"
	.size	.L.str.36, 26

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"circle"
	.size	.L.str.37, 7

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"GIMP_INK_BLOB_TYPE_SQUARE"
	.size	.L.str.38, 26

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"square"
	.size	.L.str.39, 7

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"GIMP_INK_BLOB_TYPE_DIAMOND"
	.size	.L.str.40, 27

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"diamond"
	.size	.L.str.41, 8

	.type	gimp_ink_blob_type_get_type.descs,@object # @gimp_ink_blob_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_ink_blob_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.42
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.43
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.44
	.quad	0
	.zero	24
	.size	gimp_ink_blob_type_get_type.descs, 96

	.type	.L.str.42,@object       # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"Circle"
	.size	.L.str.42, 7

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Square"
	.size	.L.str.43, 7

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Diamond"
	.size	.L.str.44, 8

	.type	gimp_ink_blob_type_get_type.type,@object # @gimp_ink_blob_type_get_type.type
	.local	gimp_ink_blob_type_get_type.type
	.comm	gimp_ink_blob_type_get_type.type,8,8
	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"GimpInkBlobType"
	.size	.L.str.45, 16

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"ink-blob-type"
	.size	.L.str.46, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
