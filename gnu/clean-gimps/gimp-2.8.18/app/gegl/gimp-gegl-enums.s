	.text
	.file	"gimp-gegl-enums.bc"
	.globl	gimp_cage_mode_get_type
	.align	16, 0x90
	.type	gimp_cage_mode_get_type,@function
gimp_cage_mode_get_type:                # @gimp_cage_mode_get_type
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
	cmpq	$0, gimp_cage_mode_get_type.type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.6, %rdi
	movabsq	$gimp_cage_mode_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.7, %rsi
	movq	%rax, gimp_cage_mode_get_type.type
	movq	gimp_cage_mode_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_cage_mode_get_type.descs, %rsi
	movq	gimp_cage_mode_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB0_2:                                # %if.end
	movq	gimp_cage_mode_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_cage_mode_get_type, .Lfunc_end0-gimp_cage_mode_get_type
	.cfi_endproc

	.type	gimp_cage_mode_get_type.values,@object # @gimp_cage_mode_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_cage_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.zero	24
	.size	gimp_cage_mode_get_type.values, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIMP_CAGE_MODE_CAGE_CHANGE"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"cage-change"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_CAGE_MODE_DEFORM"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"deform"
	.size	.L.str.3, 7

	.type	gimp_cage_mode_get_type.descs,@object # @gimp_cage_mode_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_cage_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.4
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.5
	.quad	0
	.zero	24
	.size	gimp_cage_mode_get_type.descs, 72

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Create or adjust the cage"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Deform the cage to deform the image"
	.size	.L.str.5, 36

	.type	gimp_cage_mode_get_type.type,@object # @gimp_cage_mode_get_type.type
	.local	gimp_cage_mode_get_type.type
	.comm	gimp_cage_mode_get_type.type,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GimpCageMode"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"cage-mode"
	.size	.L.str.7, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
