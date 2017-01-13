	.text
	.file	"plug-in-enums.bc"
	.globl	gimp_plug_in_image_type_get_type
	.align	16, 0x90
	.type	gimp_plug_in_image_type_get_type,@function
gimp_plug_in_image_type_get_type:       # @gimp_plug_in_image_type_get_type
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
	cmpq	$0, gimp_plug_in_image_type_get_type.type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.12, %rdi
	movabsq	$gimp_plug_in_image_type_get_type.values, %rsi
	callq	g_flags_register_static
	movabsq	$.L.str.13, %rsi
	movq	%rax, gimp_plug_in_image_type_get_type.type
	movq	gimp_plug_in_image_type_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_plug_in_image_type_get_type.descs, %rsi
	movq	gimp_plug_in_image_type_get_type.type, %rdi
	callq	gimp_flags_set_value_descriptions
.LBB0_2:                                # %if.end
	movq	gimp_plug_in_image_type_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plug_in_image_type_get_type, .Lfunc_end0-gimp_plug_in_image_type_get_type
	.cfi_endproc

	.globl	gimp_plug_in_call_mode_get_type
	.align	16, 0x90
	.type	gimp_plug_in_call_mode_get_type,@function
gimp_plug_in_call_mode_get_type:        # @gimp_plug_in_call_mode_get_type
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
	cmpq	$0, gimp_plug_in_call_mode_get_type.type
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.22, %rdi
	movabsq	$gimp_plug_in_call_mode_get_type.values, %rsi
	callq	g_enum_register_static
	movabsq	$.L.str.23, %rsi
	movq	%rax, gimp_plug_in_call_mode_get_type.type
	movq	gimp_plug_in_call_mode_get_type.type, %rdi
	callq	gimp_type_set_translation_context
	movabsq	$gimp_plug_in_call_mode_get_type.descs, %rsi
	movq	gimp_plug_in_call_mode_get_type.type, %rdi
	callq	gimp_enum_set_value_descriptions
.LBB1_2:                                # %if.end
	movq	gimp_plug_in_call_mode_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_plug_in_call_mode_get_type, .Lfunc_end1-gimp_plug_in_call_mode_get_type
	.cfi_endproc

	.type	gimp_plug_in_image_type_get_type.values,@object # @gimp_plug_in_image_type_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_plug_in_image_type_get_type.values:
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.zero	24
	.size	gimp_plug_in_image_type_get_type.values, 168

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIMP_PLUG_IN_RGB_IMAGE"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"rgb-image"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_PLUG_IN_GRAY_IMAGE"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gray-image"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_PLUG_IN_INDEXED_IMAGE"
	.size	.L.str.4, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"indexed-image"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_PLUG_IN_RGBA_IMAGE"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"rgba-image"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_PLUG_IN_GRAYA_IMAGE"
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"graya-image"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_PLUG_IN_INDEXEDA_IMAGE"
	.size	.L.str.10, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"indexeda-image"
	.size	.L.str.11, 15

	.type	gimp_plug_in_image_type_get_type.descs,@object # @gimp_plug_in_image_type_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_plug_in_image_type_get_type.descs:
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.2
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	0
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.6
	.quad	0
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.8
	.quad	0
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.10
	.quad	0
	.zero	24
	.size	gimp_plug_in_image_type_get_type.descs, 168

	.type	gimp_plug_in_image_type_get_type.type,@object # @gimp_plug_in_image_type_get_type.type
	.local	gimp_plug_in_image_type_get_type.type
	.comm	gimp_plug_in_image_type_get_type.type,8,8
	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"GimpPlugInImageType"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"plug-in-image-type"
	.size	.L.str.13, 19

	.type	gimp_plug_in_call_mode_get_type.values,@object # @gimp_plug_in_call_mode_get_type.values
	.section	.rodata,"a",@progbits
	.align	16
gimp_plug_in_call_mode_get_type.values:
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
	.size	gimp_plug_in_call_mode_get_type.values, 120

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"GIMP_PLUG_IN_CALL_NONE"
	.size	.L.str.14, 23

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"none"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GIMP_PLUG_IN_CALL_RUN"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"run"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GIMP_PLUG_IN_CALL_QUERY"
	.size	.L.str.18, 24

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"query"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"GIMP_PLUG_IN_CALL_INIT"
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"init"
	.size	.L.str.21, 5

	.type	gimp_plug_in_call_mode_get_type.descs,@object # @gimp_plug_in_call_mode_get_type.descs
	.section	.rodata,"a",@progbits
	.align	16
gimp_plug_in_call_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.16
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.18
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.20
	.quad	0
	.zero	24
	.size	gimp_plug_in_call_mode_get_type.descs, 120

	.type	gimp_plug_in_call_mode_get_type.type,@object # @gimp_plug_in_call_mode_get_type.type
	.local	gimp_plug_in_call_mode_get_type.type
	.comm	gimp_plug_in_call_mode_get_type.type,8,8
	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"GimpPlugInCallMode"
	.size	.L.str.22, 19

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"plug-in-call-mode"
	.size	.L.str.23, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
