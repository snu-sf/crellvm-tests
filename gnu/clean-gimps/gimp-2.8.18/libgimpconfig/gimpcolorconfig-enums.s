	.text
	.file	"gimpcolorconfig-enums.bc"
	.globl	gimp_color_management_mode_get_type
	.align	16, 0x90
	.type	gimp_color_management_mode_get_type,@function
gimp_color_management_mode_get_type:    # @gimp_color_management_mode_get_type
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
	cmpq	$0, gimp_color_management_mode_get_type.type(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	leaq	.L.str.9(%rip), %rdi
	leaq	gimp_color_management_mode_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.10(%rip), %rsi
	movq	%rax, gimp_color_management_mode_get_type.type(%rip)
	movq	gimp_color_management_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.11(%rip), %rsi
	movq	gimp_color_management_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_color_management_mode_get_type.descs(%rip), %rsi
	movq	gimp_color_management_mode_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB0_2:                                # %if.end
	movq	gimp_color_management_mode_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_management_mode_get_type, .Lfunc_end0-gimp_color_management_mode_get_type
	.cfi_endproc

	.globl	gimp_color_rendering_intent_get_type
	.align	16, 0x90
	.type	gimp_color_rendering_intent_get_type,@function
gimp_color_rendering_intent_get_type:   # @gimp_color_rendering_intent_get_type
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
	cmpq	$0, gimp_color_rendering_intent_get_type.type(%rip)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	leaq	.L.str.24(%rip), %rdi
	leaq	gimp_color_rendering_intent_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.10(%rip), %rsi
	movq	%rax, gimp_color_rendering_intent_get_type.type(%rip)
	movq	gimp_color_rendering_intent_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.25(%rip), %rsi
	movq	gimp_color_rendering_intent_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_color_rendering_intent_get_type.descs(%rip), %rsi
	movq	gimp_color_rendering_intent_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB1_2:                                # %if.end
	movq	gimp_color_rendering_intent_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_rendering_intent_get_type, .Lfunc_end1-gimp_color_rendering_intent_get_type
	.cfi_endproc

	.type	gimp_color_management_mode_get_type.values,@object # @gimp_color_management_mode_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_color_management_mode_get_type.values:
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
	.size	gimp_color_management_mode_get_type.values, 96

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIMP_COLOR_MANAGEMENT_OFF"
	.size	.L.str, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"off"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_COLOR_MANAGEMENT_DISPLAY"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"display"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_COLOR_MANAGEMENT_SOFTPROOF"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"softproof"
	.size	.L.str.5, 10

	.type	gimp_color_management_mode_get_type.descs,@object # @gimp_color_management_mode_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_color_management_mode_get_type.descs:
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
	.size	gimp_color_management_mode_get_type.descs, 96

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"No color management"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Color managed display"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Print simulation"
	.size	.L.str.8, 17

	.type	gimp_color_management_mode_get_type.type,@object # @gimp_color_management_mode_get_type.type
	.local	gimp_color_management_mode_get_type.type
	.comm	gimp_color_management_mode_get_type.type,8,8
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GimpColorManagementMode"
	.size	.L.str.9, 24

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp20-libgimp"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"color-management-mode"
	.size	.L.str.11, 22

	.type	gimp_color_rendering_intent_get_type.values,@object # @gimp_color_rendering_intent_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_color_rendering_intent_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.zero	24
	.size	gimp_color_rendering_intent_get_type.values, 120

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"GIMP_COLOR_RENDERING_INTENT_PERCEPTUAL"
	.size	.L.str.12, 39

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"perceptual"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GIMP_COLOR_RENDERING_INTENT_RELATIVE_COLORIMETRIC"
	.size	.L.str.14, 50

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"relative-colorimetric"
	.size	.L.str.15, 22

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GIMP_COLOR_RENDERING_INTENT_SATURATION"
	.size	.L.str.16, 39

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"saturation"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GIMP_COLOR_RENDERING_INTENT_ABSOLUTE_COLORIMETRIC"
	.size	.L.str.18, 50

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"absolute-colorimetric"
	.size	.L.str.19, 22

	.type	gimp_color_rendering_intent_get_type.descs,@object # @gimp_color_rendering_intent_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_color_rendering_intent_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.20
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.21
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.22
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.23
	.quad	0
	.zero	24
	.size	gimp_color_rendering_intent_get_type.descs, 120

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"Perceptual"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Relative colorimetric"
	.size	.L.str.21, 22

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Saturation"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Absolute colorimetric"
	.size	.L.str.23, 22

	.type	gimp_color_rendering_intent_get_type.type,@object # @gimp_color_rendering_intent_get_type.type
	.local	gimp_color_rendering_intent_get_type.type
	.comm	gimp_color_rendering_intent_get_type.type,8,8
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"GimpColorRenderingIntent"
	.size	.L.str.24, 25

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"color-rendering-intent"
	.size	.L.str.25, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
