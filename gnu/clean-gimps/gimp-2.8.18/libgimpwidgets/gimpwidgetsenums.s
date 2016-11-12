	.text
	.file	"gimpwidgetsenums.bc"
	.globl	gimp_aspect_type_get_type
	.align	16, 0x90
	.type	gimp_aspect_type_get_type,@function
gimp_aspect_type_get_type:              # @gimp_aspect_type_get_type
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
	cmpq	$0, gimp_aspect_type_get_type.type(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	leaq	.L.str.9(%rip), %rdi
	leaq	gimp_aspect_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.10(%rip), %rsi
	movq	%rax, gimp_aspect_type_get_type.type(%rip)
	movq	gimp_aspect_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.11(%rip), %rsi
	movq	gimp_aspect_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_aspect_type_get_type.descs(%rip), %rsi
	movq	gimp_aspect_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB0_2:                                # %if.end
	movq	gimp_aspect_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_aspect_type_get_type, .Lfunc_end0-gimp_aspect_type_get_type
	.cfi_endproc

	.globl	gimp_chain_position_get_type
	.align	16, 0x90
	.type	gimp_chain_position_get_type,@function
gimp_chain_position_get_type:           # @gimp_chain_position_get_type
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
	cmpq	$0, gimp_chain_position_get_type.type(%rip)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	leaq	.L.str.20(%rip), %rdi
	leaq	gimp_chain_position_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.10(%rip), %rsi
	movq	%rax, gimp_chain_position_get_type.type(%rip)
	movq	gimp_chain_position_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.21(%rip), %rsi
	movq	gimp_chain_position_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_chain_position_get_type.descs(%rip), %rsi
	movq	gimp_chain_position_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB1_2:                                # %if.end
	movq	gimp_chain_position_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_chain_position_get_type, .Lfunc_end1-gimp_chain_position_get_type
	.cfi_endproc

	.globl	gimp_color_area_type_get_type
	.align	16, 0x90
	.type	gimp_color_area_type_get_type,@function
gimp_color_area_type_get_type:          # @gimp_color_area_type_get_type
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
	cmpq	$0, gimp_color_area_type_get_type.type(%rip)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	leaq	.L.str.28(%rip), %rdi
	leaq	gimp_color_area_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.10(%rip), %rsi
	movq	%rax, gimp_color_area_type_get_type.type(%rip)
	movq	gimp_color_area_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.29(%rip), %rsi
	movq	gimp_color_area_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_color_area_type_get_type.descs(%rip), %rsi
	movq	gimp_color_area_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB2_2:                                # %if.end
	movq	gimp_color_area_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_area_type_get_type, .Lfunc_end2-gimp_color_area_type_get_type
	.cfi_endproc

	.globl	gimp_color_selector_channel_get_type
	.align	16, 0x90
	.type	gimp_color_selector_channel_get_type,@function
gimp_color_selector_channel_get_type:   # @gimp_color_selector_channel_get_type
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
	cmpq	$0, gimp_color_selector_channel_get_type.type(%rip)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	leaq	.L.str.58(%rip), %rdi
	leaq	gimp_color_selector_channel_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.10(%rip), %rsi
	movq	%rax, gimp_color_selector_channel_get_type.type(%rip)
	movq	gimp_color_selector_channel_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.59(%rip), %rsi
	movq	gimp_color_selector_channel_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_color_selector_channel_get_type.descs(%rip), %rsi
	movq	gimp_color_selector_channel_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB3_2:                                # %if.end
	movq	gimp_color_selector_channel_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_selector_channel_get_type, .Lfunc_end3-gimp_color_selector_channel_get_type
	.cfi_endproc

	.globl	gimp_page_selector_target_get_type
	.align	16, 0x90
	.type	gimp_page_selector_target_get_type,@function
gimp_page_selector_target_get_type:     # @gimp_page_selector_target_get_type
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
	cmpq	$0, gimp_page_selector_target_get_type.type(%rip)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	leaq	.L.str.66(%rip), %rdi
	leaq	gimp_page_selector_target_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.10(%rip), %rsi
	movq	%rax, gimp_page_selector_target_get_type.type(%rip)
	movq	gimp_page_selector_target_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.67(%rip), %rsi
	movq	gimp_page_selector_target_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_page_selector_target_get_type.descs(%rip), %rsi
	movq	gimp_page_selector_target_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB4_2:                                # %if.end
	movq	gimp_page_selector_target_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_page_selector_target_get_type, .Lfunc_end4-gimp_page_selector_target_get_type
	.cfi_endproc

	.globl	gimp_size_entry_update_policy_get_type
	.align	16, 0x90
	.type	gimp_size_entry_update_policy_get_type,@function
gimp_size_entry_update_policy_get_type: # @gimp_size_entry_update_policy_get_type
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
	cmpq	$0, gimp_size_entry_update_policy_get_type.type(%rip)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	leaq	.L.str.74(%rip), %rdi
	leaq	gimp_size_entry_update_policy_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.10(%rip), %rsi
	movq	%rax, gimp_size_entry_update_policy_get_type.type(%rip)
	movq	gimp_size_entry_update_policy_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.75(%rip), %rsi
	movq	gimp_size_entry_update_policy_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_size_entry_update_policy_get_type.descs(%rip), %rsi
	movq	gimp_size_entry_update_policy_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB5_2:                                # %if.end
	movq	gimp_size_entry_update_policy_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_size_entry_update_policy_get_type, .Lfunc_end5-gimp_size_entry_update_policy_get_type
	.cfi_endproc

	.globl	gimp_zoom_type_get_type
	.align	16, 0x90
	.type	gimp_zoom_type_get_type,@function
gimp_zoom_type_get_type:                # @gimp_zoom_type_get_type
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
	cmpq	$0, gimp_zoom_type_get_type.type(%rip)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	leaq	.L.str.82(%rip), %rdi
	leaq	gimp_zoom_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.10(%rip), %rsi
	movq	%rax, gimp_zoom_type_get_type.type(%rip)
	movq	gimp_zoom_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.83(%rip), %rsi
	movq	gimp_zoom_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_zoom_type_get_type.descs(%rip), %rsi
	movq	gimp_zoom_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB6_2:                                # %if.end
	movq	gimp_zoom_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_zoom_type_get_type, .Lfunc_end6-gimp_zoom_type_get_type
	.cfi_endproc

	.type	gimp_aspect_type_get_type.values,@object # @gimp_aspect_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_aspect_type_get_type.values:
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
	.size	gimp_aspect_type_get_type.values, 96

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIMP_ASPECT_SQUARE"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"square"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_ASPECT_PORTRAIT"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"portrait"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_ASPECT_LANDSCAPE"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"landscape"
	.size	.L.str.5, 10

	.type	gimp_aspect_type_get_type.descs,@object # @gimp_aspect_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_aspect_type_get_type.descs:
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
	.size	gimp_aspect_type_get_type.descs, 96

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"Square"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Portrait"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Landscape"
	.size	.L.str.8, 10

	.type	gimp_aspect_type_get_type.type,@object # @gimp_aspect_type_get_type.type
	.local	gimp_aspect_type_get_type.type
	.comm	gimp_aspect_type_get_type.type,8,8
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GimpAspectType"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp20-libgimp"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"aspect-type"
	.size	.L.str.11, 12

	.type	gimp_chain_position_get_type.values,@object # @gimp_chain_position_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_chain_position_get_type.values:
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
	.size	gimp_chain_position_get_type.values, 120

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"GIMP_CHAIN_TOP"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"top"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GIMP_CHAIN_LEFT"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"left"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GIMP_CHAIN_BOTTOM"
	.size	.L.str.16, 18

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"bottom"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GIMP_CHAIN_RIGHT"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"right"
	.size	.L.str.19, 6

	.type	gimp_chain_position_get_type.descs,@object # @gimp_chain_position_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_chain_position_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.14
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.16
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.18
	.quad	0
	.zero	24
	.size	gimp_chain_position_get_type.descs, 120

	.type	gimp_chain_position_get_type.type,@object # @gimp_chain_position_get_type.type
	.local	gimp_chain_position_get_type.type
	.comm	gimp_chain_position_get_type.type,8,8
	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"GimpChainPosition"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"chain-position"
	.size	.L.str.21, 15

	.type	gimp_color_area_type_get_type.values,@object # @gimp_color_area_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_color_area_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.25
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.26
	.quad	.L.str.27
	.zero	24
	.size	gimp_color_area_type_get_type.values, 96

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"GIMP_COLOR_AREA_FLAT"
	.size	.L.str.22, 21

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"flat"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"GIMP_COLOR_AREA_SMALL_CHECKS"
	.size	.L.str.24, 29

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"small-checks"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"GIMP_COLOR_AREA_LARGE_CHECKS"
	.size	.L.str.26, 29

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"large-checks"
	.size	.L.str.27, 13

	.type	gimp_color_area_type_get_type.descs,@object # @gimp_color_area_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_color_area_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.22
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.24
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.26
	.quad	0
	.zero	24
	.size	gimp_color_area_type_get_type.descs, 96

	.type	gimp_color_area_type_get_type.type,@object # @gimp_color_area_type_get_type.type
	.local	gimp_color_area_type_get_type.type
	.comm	gimp_color_area_type_get_type.type,8,8
	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"GimpColorAreaType"
	.size	.L.str.28, 18

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"color-area-type"
	.size	.L.str.29, 16

	.type	gimp_color_selector_channel_get_type.values,@object # @gimp_color_selector_channel_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_color_selector_channel_get_type.values:
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
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.38
	.quad	.L.str.39
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.40
	.quad	.L.str.41
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.42
	.quad	.L.str.43
	.zero	24
	.size	gimp_color_selector_channel_get_type.values, 192

	.type	.L.str.30,@object       # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"GIMP_COLOR_SELECTOR_HUE"
	.size	.L.str.30, 24

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"hue"
	.size	.L.str.31, 4

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"GIMP_COLOR_SELECTOR_SATURATION"
	.size	.L.str.32, 31

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"saturation"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"GIMP_COLOR_SELECTOR_VALUE"
	.size	.L.str.34, 26

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"value"
	.size	.L.str.35, 6

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"GIMP_COLOR_SELECTOR_RED"
	.size	.L.str.36, 24

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"red"
	.size	.L.str.37, 4

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"GIMP_COLOR_SELECTOR_GREEN"
	.size	.L.str.38, 26

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"green"
	.size	.L.str.39, 6

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"GIMP_COLOR_SELECTOR_BLUE"
	.size	.L.str.40, 25

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"blue"
	.size	.L.str.41, 5

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"GIMP_COLOR_SELECTOR_ALPHA"
	.size	.L.str.42, 26

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"alpha"
	.size	.L.str.43, 6

	.type	gimp_color_selector_channel_get_type.descs,@object # @gimp_color_selector_channel_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_color_selector_channel_get_type.descs:
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
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.50
	.quad	.L.str.51
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.52
	.quad	.L.str.53
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.54
	.quad	.L.str.55
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.56
	.quad	.L.str.57
	.zero	24
	.size	gimp_color_selector_channel_get_type.descs, 192

	.type	.L.str.44,@object       # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	"_H"
	.size	.L.str.44, 3

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Hue"
	.size	.L.str.45, 4

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"_S"
	.size	.L.str.46, 3

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Saturation"
	.size	.L.str.47, 11

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"_V"
	.size	.L.str.48, 3

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Value"
	.size	.L.str.49, 6

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"_R"
	.size	.L.str.50, 3

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Red"
	.size	.L.str.51, 4

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"_G"
	.size	.L.str.52, 3

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Green"
	.size	.L.str.53, 6

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"_B"
	.size	.L.str.54, 3

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Blue"
	.size	.L.str.55, 5

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"_A"
	.size	.L.str.56, 3

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Alpha"
	.size	.L.str.57, 6

	.type	gimp_color_selector_channel_get_type.type,@object # @gimp_color_selector_channel_get_type.type
	.local	gimp_color_selector_channel_get_type.type
	.comm	gimp_color_selector_channel_get_type.type,8,8
	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"GimpColorSelectorChannel"
	.size	.L.str.58, 25

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"color-selector-channel"
	.size	.L.str.59, 23

	.type	gimp_page_selector_target_get_type.values,@object # @gimp_page_selector_target_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_page_selector_target_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.60
	.quad	.L.str.61
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.62
	.quad	.L.str.63
	.zero	24
	.size	gimp_page_selector_target_get_type.values, 72

	.type	.L.str.60,@object       # @.str.60
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.60:
	.asciz	"GIMP_PAGE_SELECTOR_TARGET_LAYERS"
	.size	.L.str.60, 33

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"layers"
	.size	.L.str.61, 7

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"GIMP_PAGE_SELECTOR_TARGET_IMAGES"
	.size	.L.str.62, 33

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"images"
	.size	.L.str.63, 7

	.type	gimp_page_selector_target_get_type.descs,@object # @gimp_page_selector_target_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_page_selector_target_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.64
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.65
	.quad	0
	.zero	24
	.size	gimp_page_selector_target_get_type.descs, 72

	.type	.L.str.64,@object       # @.str.64
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.64:
	.asciz	"Layers"
	.size	.L.str.64, 7

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Images"
	.size	.L.str.65, 7

	.type	gimp_page_selector_target_get_type.type,@object # @gimp_page_selector_target_get_type.type
	.local	gimp_page_selector_target_get_type.type
	.comm	gimp_page_selector_target_get_type.type,8,8
	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"GimpPageSelectorTarget"
	.size	.L.str.66, 23

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"page-selector-target"
	.size	.L.str.67, 21

	.type	gimp_size_entry_update_policy_get_type.values,@object # @gimp_size_entry_update_policy_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_size_entry_update_policy_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.68
	.quad	.L.str.69
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.70
	.quad	.L.str.71
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.72
	.quad	.L.str.73
	.zero	24
	.size	gimp_size_entry_update_policy_get_type.values, 96

	.type	.L.str.68,@object       # @.str.68
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.68:
	.asciz	"GIMP_SIZE_ENTRY_UPDATE_NONE"
	.size	.L.str.68, 28

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"none"
	.size	.L.str.69, 5

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"GIMP_SIZE_ENTRY_UPDATE_SIZE"
	.size	.L.str.70, 28

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"size"
	.size	.L.str.71, 5

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"GIMP_SIZE_ENTRY_UPDATE_RESOLUTION"
	.size	.L.str.72, 34

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"resolution"
	.size	.L.str.73, 11

	.type	gimp_size_entry_update_policy_get_type.descs,@object # @gimp_size_entry_update_policy_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_size_entry_update_policy_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.68
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.70
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.72
	.quad	0
	.zero	24
	.size	gimp_size_entry_update_policy_get_type.descs, 96

	.type	gimp_size_entry_update_policy_get_type.type,@object # @gimp_size_entry_update_policy_get_type.type
	.local	gimp_size_entry_update_policy_get_type.type
	.comm	gimp_size_entry_update_policy_get_type.type,8,8
	.type	.L.str.74,@object       # @.str.74
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.74:
	.asciz	"GimpSizeEntryUpdatePolicy"
	.size	.L.str.74, 26

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"size-entry-update-policy"
	.size	.L.str.75, 25

	.type	gimp_zoom_type_get_type.values,@object # @gimp_zoom_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_zoom_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.76
	.quad	.L.str.77
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.78
	.quad	.L.str.79
	.zero	24
	.size	gimp_zoom_type_get_type.values, 72

	.type	.L.str.76,@object       # @.str.76
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.76:
	.asciz	"GIMP_ZOOM_IN"
	.size	.L.str.76, 13

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"in"
	.size	.L.str.77, 3

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"GIMP_ZOOM_OUT"
	.size	.L.str.78, 14

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"out"
	.size	.L.str.79, 4

	.type	gimp_zoom_type_get_type.descs,@object # @gimp_zoom_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_zoom_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.80
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.81
	.quad	0
	.zero	24
	.size	gimp_zoom_type_get_type.descs, 72

	.type	.L.str.80,@object       # @.str.80
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.80:
	.asciz	"Zoom in"
	.size	.L.str.80, 8

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Zoom out"
	.size	.L.str.81, 9

	.type	gimp_zoom_type_get_type.type,@object # @gimp_zoom_type_get_type.type
	.local	gimp_zoom_type_get_type.type
	.comm	gimp_zoom_type_get_type.type,8,8
	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"GimpZoomType"
	.size	.L.str.82, 13

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"zoom-type"
	.size	.L.str.83, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
