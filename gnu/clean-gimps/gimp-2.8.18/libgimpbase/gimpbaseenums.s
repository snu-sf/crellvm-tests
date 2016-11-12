	.text
	.file	"gimpbaseenums.bc"
	.globl	gimp_add_mask_type_get_type
	.align	16, 0x90
	.type	gimp_add_mask_type_get_type,@function
gimp_add_mask_type_get_type:            # @gimp_add_mask_type_get_type
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
	cmpq	$0, gimp_add_mask_type_get_type.type(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	leaq	.L.str.21(%rip), %rdi
	leaq	gimp_add_mask_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_add_mask_type_get_type.type(%rip)
	movq	gimp_add_mask_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.23(%rip), %rsi
	movq	gimp_add_mask_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_add_mask_type_get_type.descs(%rip), %rsi
	movq	gimp_add_mask_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB0_2:                                # %if.end
	movq	gimp_add_mask_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_add_mask_type_get_type, .Lfunc_end0-gimp_add_mask_type_get_type
	.cfi_endproc

	.globl	gimp_blend_mode_get_type
	.align	16, 0x90
	.type	gimp_blend_mode_get_type,@function
gimp_blend_mode_get_type:               # @gimp_blend_mode_get_type
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
	cmpq	$0, gimp_blend_mode_get_type.type(%rip)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	leaq	.L.str.36(%rip), %rdi
	leaq	gimp_blend_mode_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_blend_mode_get_type.type(%rip)
	movq	gimp_blend_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.37(%rip), %rsi
	movq	gimp_blend_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_blend_mode_get_type.descs(%rip), %rsi
	movq	gimp_blend_mode_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB1_2:                                # %if.end
	movq	gimp_blend_mode_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_blend_mode_get_type, .Lfunc_end1-gimp_blend_mode_get_type
	.cfi_endproc

	.globl	gimp_bucket_fill_mode_get_type
	.align	16, 0x90
	.type	gimp_bucket_fill_mode_get_type,@function
gimp_bucket_fill_mode_get_type:         # @gimp_bucket_fill_mode_get_type
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
	cmpq	$0, gimp_bucket_fill_mode_get_type.type(%rip)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	leaq	.L.str.47(%rip), %rdi
	leaq	gimp_bucket_fill_mode_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_bucket_fill_mode_get_type.type(%rip)
	movq	gimp_bucket_fill_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.48(%rip), %rsi
	movq	gimp_bucket_fill_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_bucket_fill_mode_get_type.descs(%rip), %rsi
	movq	gimp_bucket_fill_mode_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB2_2:                                # %if.end
	movq	gimp_bucket_fill_mode_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_bucket_fill_mode_get_type, .Lfunc_end2-gimp_bucket_fill_mode_get_type
	.cfi_endproc

	.globl	gimp_channel_ops_get_type
	.align	16, 0x90
	.type	gimp_channel_ops_get_type,@function
gimp_channel_ops_get_type:              # @gimp_channel_ops_get_type
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
	cmpq	$0, gimp_channel_ops_get_type.type(%rip)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	leaq	.L.str.61(%rip), %rdi
	leaq	gimp_channel_ops_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_channel_ops_get_type.type(%rip)
	movq	gimp_channel_ops_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.62(%rip), %rsi
	movq	gimp_channel_ops_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_channel_ops_get_type.descs(%rip), %rsi
	movq	gimp_channel_ops_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB3_2:                                # %if.end
	movq	gimp_channel_ops_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_channel_ops_get_type, .Lfunc_end3-gimp_channel_ops_get_type
	.cfi_endproc

	.globl	gimp_channel_type_get_type
	.align	16, 0x90
	.type	gimp_channel_type_get_type,@function
gimp_channel_type_get_type:             # @gimp_channel_type_get_type
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
	cmpq	$0, gimp_channel_type_get_type.type(%rip)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	leaq	.L.str.81(%rip), %rdi
	leaq	gimp_channel_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_channel_type_get_type.type(%rip)
	movq	gimp_channel_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.82(%rip), %rsi
	movq	gimp_channel_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_channel_type_get_type.descs(%rip), %rsi
	movq	gimp_channel_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB4_2:                                # %if.end
	movq	gimp_channel_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_channel_type_get_type, .Lfunc_end4-gimp_channel_type_get_type
	.cfi_endproc

	.globl	gimp_check_size_get_type
	.align	16, 0x90
	.type	gimp_check_size_get_type,@function
gimp_check_size_get_type:               # @gimp_check_size_get_type
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
	cmpq	$0, gimp_check_size_get_type.type(%rip)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	leaq	.L.str.92(%rip), %rdi
	leaq	gimp_check_size_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_check_size_get_type.type(%rip)
	movq	gimp_check_size_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.93(%rip), %rsi
	movq	gimp_check_size_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_check_size_get_type.descs(%rip), %rsi
	movq	gimp_check_size_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB5_2:                                # %if.end
	movq	gimp_check_size_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_check_size_get_type, .Lfunc_end5-gimp_check_size_get_type
	.cfi_endproc

	.globl	gimp_check_type_get_type
	.align	16, 0x90
	.type	gimp_check_type_get_type,@function
gimp_check_type_get_type:               # @gimp_check_type_get_type
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
	cmpq	$0, gimp_check_type_get_type.type(%rip)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	leaq	.L.str.112(%rip), %rdi
	leaq	gimp_check_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_check_type_get_type.type(%rip)
	movq	gimp_check_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.113(%rip), %rsi
	movq	gimp_check_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_check_type_get_type.descs(%rip), %rsi
	movq	gimp_check_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB6_2:                                # %if.end
	movq	gimp_check_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_check_type_get_type, .Lfunc_end6-gimp_check_type_get_type
	.cfi_endproc

	.globl	gimp_clone_type_get_type
	.align	16, 0x90
	.type	gimp_clone_type_get_type,@function
gimp_clone_type_get_type:               # @gimp_clone_type_get_type
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
	cmpq	$0, gimp_clone_type_get_type.type(%rip)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	leaq	.L.str.120(%rip), %rdi
	leaq	gimp_clone_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_clone_type_get_type.type(%rip)
	movq	gimp_clone_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.121(%rip), %rsi
	movq	gimp_clone_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_clone_type_get_type.descs(%rip), %rsi
	movq	gimp_clone_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB7_2:                                # %if.end
	movq	gimp_clone_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_clone_type_get_type, .Lfunc_end7-gimp_clone_type_get_type
	.cfi_endproc

	.globl	gimp_desaturate_mode_get_type
	.align	16, 0x90
	.type	gimp_desaturate_mode_get_type,@function
gimp_desaturate_mode_get_type:          # @gimp_desaturate_mode_get_type
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
	cmpq	$0, gimp_desaturate_mode_get_type.type(%rip)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	leaq	.L.str.131(%rip), %rdi
	leaq	gimp_desaturate_mode_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_desaturate_mode_get_type.type(%rip)
	movq	gimp_desaturate_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.132(%rip), %rsi
	movq	gimp_desaturate_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_desaturate_mode_get_type.descs(%rip), %rsi
	movq	gimp_desaturate_mode_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB8_2:                                # %if.end
	movq	gimp_desaturate_mode_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_desaturate_mode_get_type, .Lfunc_end8-gimp_desaturate_mode_get_type
	.cfi_endproc

	.globl	gimp_dodge_burn_type_get_type
	.align	16, 0x90
	.type	gimp_dodge_burn_type_get_type,@function
gimp_dodge_burn_type_get_type:          # @gimp_dodge_burn_type_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_dodge_burn_type_get_type.type(%rip)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	leaq	.L.str.139(%rip), %rdi
	leaq	gimp_dodge_burn_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_dodge_burn_type_get_type.type(%rip)
	movq	gimp_dodge_burn_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.140(%rip), %rsi
	movq	gimp_dodge_burn_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_dodge_burn_type_get_type.descs(%rip), %rsi
	movq	gimp_dodge_burn_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB9_2:                                # %if.end
	movq	gimp_dodge_burn_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_dodge_burn_type_get_type, .Lfunc_end9-gimp_dodge_burn_type_get_type
	.cfi_endproc

	.globl	gimp_foreground_extract_mode_get_type
	.align	16, 0x90
	.type	gimp_foreground_extract_mode_get_type,@function
gimp_foreground_extract_mode_get_type:  # @gimp_foreground_extract_mode_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_foreground_extract_mode_get_type.type(%rip)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	leaq	.L.str.143(%rip), %rdi
	leaq	gimp_foreground_extract_mode_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_foreground_extract_mode_get_type.type(%rip)
	movq	gimp_foreground_extract_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.144(%rip), %rsi
	movq	gimp_foreground_extract_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_foreground_extract_mode_get_type.descs(%rip), %rsi
	movq	gimp_foreground_extract_mode_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB10_2:                               # %if.end
	movq	gimp_foreground_extract_mode_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_foreground_extract_mode_get_type, .Lfunc_end10-gimp_foreground_extract_mode_get_type
	.cfi_endproc

	.globl	gimp_gradient_type_get_type
	.align	16, 0x90
	.type	gimp_gradient_type_get_type,@function
gimp_gradient_type_get_type:            # @gimp_gradient_type_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_gradient_type_get_type.type(%rip)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	leaq	.L.str.178(%rip), %rdi
	leaq	gimp_gradient_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_gradient_type_get_type.type(%rip)
	movq	gimp_gradient_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.179(%rip), %rsi
	movq	gimp_gradient_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_gradient_type_get_type.descs(%rip), %rsi
	movq	gimp_gradient_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB11_2:                               # %if.end
	movq	gimp_gradient_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_gradient_type_get_type, .Lfunc_end11-gimp_gradient_type_get_type
	.cfi_endproc

	.globl	gimp_grid_style_get_type
	.align	16, 0x90
	.type	gimp_grid_style_get_type,@function
gimp_grid_style_get_type:               # @gimp_grid_style_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_grid_style_get_type.type(%rip)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	leaq	.L.str.195(%rip), %rdi
	leaq	gimp_grid_style_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_grid_style_get_type.type(%rip)
	movq	gimp_grid_style_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.196(%rip), %rsi
	movq	gimp_grid_style_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_grid_style_get_type.descs(%rip), %rsi
	movq	gimp_grid_style_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB12_2:                               # %if.end
	movq	gimp_grid_style_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_grid_style_get_type, .Lfunc_end12-gimp_grid_style_get_type
	.cfi_endproc

	.globl	gimp_icon_type_get_type
	.align	16, 0x90
	.type	gimp_icon_type_get_type,@function
gimp_icon_type_get_type:                # @gimp_icon_type_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_icon_type_get_type.type(%rip)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	leaq	.L.str.206(%rip), %rdi
	leaq	gimp_icon_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_icon_type_get_type.type(%rip)
	movq	gimp_icon_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.207(%rip), %rsi
	movq	gimp_icon_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_icon_type_get_type.descs(%rip), %rsi
	movq	gimp_icon_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB13_2:                               # %if.end
	movq	gimp_icon_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_icon_type_get_type, .Lfunc_end13-gimp_icon_type_get_type
	.cfi_endproc

	.globl	gimp_image_base_type_get_type
	.align	16, 0x90
	.type	gimp_image_base_type_get_type,@function
gimp_image_base_type_get_type:          # @gimp_image_base_type_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_image_base_type_get_type.type(%rip)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	leaq	.L.str.217(%rip), %rdi
	leaq	gimp_image_base_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_image_base_type_get_type.type(%rip)
	movq	gimp_image_base_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.218(%rip), %rsi
	movq	gimp_image_base_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_image_base_type_get_type.descs(%rip), %rsi
	movq	gimp_image_base_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB14_2:                               # %if.end
	movq	gimp_image_base_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_image_base_type_get_type, .Lfunc_end14-gimp_image_base_type_get_type
	.cfi_endproc

	.globl	gimp_image_type_get_type
	.align	16, 0x90
	.type	gimp_image_type_get_type,@function
gimp_image_type_get_type:               # @gimp_image_type_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_image_type_get_type.type(%rip)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	leaq	.L.str.235(%rip), %rdi
	leaq	gimp_image_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_image_type_get_type.type(%rip)
	movq	gimp_image_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.236(%rip), %rsi
	movq	gimp_image_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_image_type_get_type.descs(%rip), %rsi
	movq	gimp_image_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB15_2:                               # %if.end
	movq	gimp_image_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_image_type_get_type, .Lfunc_end15-gimp_image_type_get_type
	.cfi_endproc

	.globl	gimp_interpolation_type_get_type
	.align	16, 0x90
	.type	gimp_interpolation_type_get_type,@function
gimp_interpolation_type_get_type:       # @gimp_interpolation_type_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_interpolation_type_get_type.type(%rip)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	leaq	.L.str.247(%rip), %rdi
	leaq	gimp_interpolation_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_interpolation_type_get_type.type(%rip)
	movq	gimp_interpolation_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.248(%rip), %rsi
	movq	gimp_interpolation_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_interpolation_type_get_type.descs(%rip), %rsi
	movq	gimp_interpolation_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB16_2:                               # %if.end
	movq	gimp_interpolation_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_interpolation_type_get_type, .Lfunc_end16-gimp_interpolation_type_get_type
	.cfi_endproc

	.globl	gimp_paint_application_mode_get_type
	.align	16, 0x90
	.type	gimp_paint_application_mode_get_type,@function
gimp_paint_application_mode_get_type:   # @gimp_paint_application_mode_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_paint_application_mode_get_type.type(%rip)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	leaq	.L.str.255(%rip), %rdi
	leaq	gimp_paint_application_mode_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_paint_application_mode_get_type.type(%rip)
	movq	gimp_paint_application_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.256(%rip), %rsi
	movq	gimp_paint_application_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_paint_application_mode_get_type.descs(%rip), %rsi
	movq	gimp_paint_application_mode_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB17_2:                               # %if.end
	movq	gimp_paint_application_mode_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_paint_application_mode_get_type, .Lfunc_end17-gimp_paint_application_mode_get_type
	.cfi_endproc

	.globl	gimp_repeat_mode_get_type
	.align	16, 0x90
	.type	gimp_repeat_mode_get_type,@function
gimp_repeat_mode_get_type:              # @gimp_repeat_mode_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_repeat_mode_get_type.type(%rip)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	leaq	.L.str.264(%rip), %rdi
	leaq	gimp_repeat_mode_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_repeat_mode_get_type.type(%rip)
	movq	gimp_repeat_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.265(%rip), %rsi
	movq	gimp_repeat_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_repeat_mode_get_type.descs(%rip), %rsi
	movq	gimp_repeat_mode_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB18_2:                               # %if.end
	movq	gimp_repeat_mode_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_repeat_mode_get_type, .Lfunc_end18-gimp_repeat_mode_get_type
	.cfi_endproc

	.globl	gimp_run_mode_get_type
	.align	16, 0x90
	.type	gimp_run_mode_get_type,@function
gimp_run_mode_get_type:                 # @gimp_run_mode_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_run_mode_get_type.type(%rip)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	leaq	.L.str.275(%rip), %rdi
	leaq	gimp_run_mode_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_run_mode_get_type.type(%rip)
	movq	gimp_run_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.276(%rip), %rsi
	movq	gimp_run_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_run_mode_get_type.descs(%rip), %rsi
	movq	gimp_run_mode_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB19_2:                               # %if.end
	movq	gimp_run_mode_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_run_mode_get_type, .Lfunc_end19-gimp_run_mode_get_type
	.cfi_endproc

	.globl	gimp_size_type_get_type
	.align	16, 0x90
	.type	gimp_size_type_get_type,@function
gimp_size_type_get_type:                # @gimp_size_type_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_size_type_get_type.type(%rip)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	leaq	.L.str.283(%rip), %rdi
	leaq	gimp_size_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_size_type_get_type.type(%rip)
	movq	gimp_size_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.284(%rip), %rsi
	movq	gimp_size_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_size_type_get_type.descs(%rip), %rsi
	movq	gimp_size_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB20_2:                               # %if.end
	movq	gimp_size_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_size_type_get_type, .Lfunc_end20-gimp_size_type_get_type
	.cfi_endproc

	.globl	gimp_transfer_mode_get_type
	.align	16, 0x90
	.type	gimp_transfer_mode_get_type,@function
gimp_transfer_mode_get_type:            # @gimp_transfer_mode_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_transfer_mode_get_type.type(%rip)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	leaq	.L.str.294(%rip), %rdi
	leaq	gimp_transfer_mode_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_transfer_mode_get_type.type(%rip)
	movq	gimp_transfer_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.295(%rip), %rsi
	movq	gimp_transfer_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_transfer_mode_get_type.descs(%rip), %rsi
	movq	gimp_transfer_mode_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB21_2:                               # %if.end
	movq	gimp_transfer_mode_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_transfer_mode_get_type, .Lfunc_end21-gimp_transfer_mode_get_type
	.cfi_endproc

	.globl	gimp_transform_direction_get_type
	.align	16, 0x90
	.type	gimp_transform_direction_get_type,@function
gimp_transform_direction_get_type:      # @gimp_transform_direction_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_transform_direction_get_type.type(%rip)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	leaq	.L.str.302(%rip), %rdi
	leaq	gimp_transform_direction_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_transform_direction_get_type.type(%rip)
	movq	gimp_transform_direction_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.303(%rip), %rsi
	movq	gimp_transform_direction_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_transform_direction_get_type.descs(%rip), %rsi
	movq	gimp_transform_direction_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB22_2:                               # %if.end
	movq	gimp_transform_direction_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_transform_direction_get_type, .Lfunc_end22-gimp_transform_direction_get_type
	.cfi_endproc

	.globl	gimp_transform_resize_get_type
	.align	16, 0x90
	.type	gimp_transform_resize_get_type,@function
gimp_transform_resize_get_type:         # @gimp_transform_resize_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_transform_resize_get_type.type(%rip)
	jne	.LBB23_2
# BB#1:                                 # %if.then
	leaq	.L.str.316(%rip), %rdi
	leaq	gimp_transform_resize_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_transform_resize_get_type.type(%rip)
	movq	gimp_transform_resize_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.317(%rip), %rsi
	movq	gimp_transform_resize_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_transform_resize_get_type.descs(%rip), %rsi
	movq	gimp_transform_resize_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB23_2:                               # %if.end
	movq	gimp_transform_resize_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_transform_resize_get_type, .Lfunc_end23-gimp_transform_resize_get_type
	.cfi_endproc

	.globl	gimp_pdb_arg_type_get_type
	.align	16, 0x90
	.type	gimp_pdb_arg_type_get_type,@function
gimp_pdb_arg_type_get_type:             # @gimp_pdb_arg_type_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_pdb_arg_type_get_type.type(%rip)
	jne	.LBB24_2
# BB#1:                                 # %if.then
	leaq	.L.str.364(%rip), %rdi
	leaq	gimp_pdb_arg_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_pdb_arg_type_get_type.type(%rip)
	movq	gimp_pdb_arg_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.365(%rip), %rsi
	movq	gimp_pdb_arg_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_pdb_arg_type_get_type.descs(%rip), %rsi
	movq	gimp_pdb_arg_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB24_2:                               # %if.end
	movq	gimp_pdb_arg_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_pdb_arg_type_get_type, .Lfunc_end24-gimp_pdb_arg_type_get_type
	.cfi_endproc

	.globl	gimp_pdb_error_handler_get_type
	.align	16, 0x90
	.type	gimp_pdb_error_handler_get_type,@function
gimp_pdb_error_handler_get_type:        # @gimp_pdb_error_handler_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_pdb_error_handler_get_type.type(%rip)
	jne	.LBB25_2
# BB#1:                                 # %if.then
	leaq	.L.str.370(%rip), %rdi
	leaq	gimp_pdb_error_handler_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_pdb_error_handler_get_type.type(%rip)
	movq	gimp_pdb_error_handler_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.371(%rip), %rsi
	movq	gimp_pdb_error_handler_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_pdb_error_handler_get_type.descs(%rip), %rsi
	movq	gimp_pdb_error_handler_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB25_2:                               # %if.end
	movq	gimp_pdb_error_handler_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_pdb_error_handler_get_type, .Lfunc_end25-gimp_pdb_error_handler_get_type
	.cfi_endproc

	.globl	gimp_pdb_proc_type_get_type
	.align	16, 0x90
	.type	gimp_pdb_proc_type_get_type,@function
gimp_pdb_proc_type_get_type:            # @gimp_pdb_proc_type_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_pdb_proc_type_get_type.type(%rip)
	jne	.LBB26_2
# BB#1:                                 # %if.then
	leaq	.L.str.382(%rip), %rdi
	leaq	gimp_pdb_proc_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_pdb_proc_type_get_type.type(%rip)
	movq	gimp_pdb_proc_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.383(%rip), %rsi
	movq	gimp_pdb_proc_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_pdb_proc_type_get_type.descs(%rip), %rsi
	movq	gimp_pdb_proc_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB26_2:                               # %if.end
	movq	gimp_pdb_proc_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_pdb_proc_type_get_type, .Lfunc_end26-gimp_pdb_proc_type_get_type
	.cfi_endproc

	.globl	gimp_pdb_status_type_get_type
	.align	16, 0x90
	.type	gimp_pdb_status_type_get_type,@function
gimp_pdb_status_type_get_type:          # @gimp_pdb_status_type_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_pdb_status_type_get_type.type(%rip)
	jne	.LBB27_2
# BB#1:                                 # %if.then
	leaq	.L.str.394(%rip), %rdi
	leaq	gimp_pdb_status_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_pdb_status_type_get_type.type(%rip)
	movq	gimp_pdb_status_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.395(%rip), %rsi
	movq	gimp_pdb_status_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_pdb_status_type_get_type.descs(%rip), %rsi
	movq	gimp_pdb_status_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB27_2:                               # %if.end
	movq	gimp_pdb_status_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_pdb_status_type_get_type, .Lfunc_end27-gimp_pdb_status_type_get_type
	.cfi_endproc

	.globl	gimp_message_handler_type_get_type
	.align	16, 0x90
	.type	gimp_message_handler_type_get_type,@function
gimp_message_handler_type_get_type:     # @gimp_message_handler_type_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_message_handler_type_get_type.type(%rip)
	jne	.LBB28_2
# BB#1:                                 # %if.then
	leaq	.L.str.402(%rip), %rdi
	leaq	gimp_message_handler_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_message_handler_type_get_type.type(%rip)
	movq	gimp_message_handler_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.403(%rip), %rsi
	movq	gimp_message_handler_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_message_handler_type_get_type.descs(%rip), %rsi
	movq	gimp_message_handler_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB28_2:                               # %if.end
	movq	gimp_message_handler_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_message_handler_type_get_type, .Lfunc_end28-gimp_message_handler_type_get_type
	.cfi_endproc

	.globl	gimp_stack_trace_mode_get_type
	.align	16, 0x90
	.type	gimp_stack_trace_mode_get_type,@function
gimp_stack_trace_mode_get_type:         # @gimp_stack_trace_mode_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_stack_trace_mode_get_type.type(%rip)
	jne	.LBB29_2
# BB#1:                                 # %if.then
	leaq	.L.str.410(%rip), %rdi
	leaq	gimp_stack_trace_mode_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_stack_trace_mode_get_type.type(%rip)
	movq	gimp_stack_trace_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.411(%rip), %rsi
	movq	gimp_stack_trace_mode_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_stack_trace_mode_get_type.descs(%rip), %rsi
	movq	gimp_stack_trace_mode_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB29_2:                               # %if.end
	movq	gimp_stack_trace_mode_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_stack_trace_mode_get_type, .Lfunc_end29-gimp_stack_trace_mode_get_type
	.cfi_endproc

	.globl	gimp_progress_command_get_type
	.align	16, 0x90
	.type	gimp_progress_command_get_type,@function
gimp_progress_command_get_type:         # @gimp_progress_command_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_progress_command_get_type.type(%rip)
	jne	.LBB30_2
# BB#1:                                 # %if.then
	leaq	.L.str.423(%rip), %rdi
	leaq	gimp_progress_command_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_progress_command_get_type.type(%rip)
	movq	gimp_progress_command_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.424(%rip), %rsi
	movq	gimp_progress_command_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_progress_command_get_type.descs(%rip), %rsi
	movq	gimp_progress_command_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB30_2:                               # %if.end
	movq	gimp_progress_command_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_progress_command_get_type, .Lfunc_end30-gimp_progress_command_get_type
	.cfi_endproc

	.globl	gimp_text_direction_get_type
	.align	16, 0x90
	.type	gimp_text_direction_get_type,@function
gimp_text_direction_get_type:           # @gimp_text_direction_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_text_direction_get_type.type(%rip)
	jne	.LBB31_2
# BB#1:                                 # %if.then
	leaq	.L.str.431(%rip), %rdi
	leaq	gimp_text_direction_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_text_direction_get_type.type(%rip)
	movq	gimp_text_direction_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.432(%rip), %rsi
	movq	gimp_text_direction_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_text_direction_get_type.descs(%rip), %rsi
	movq	gimp_text_direction_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB31_2:                               # %if.end
	movq	gimp_text_direction_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_text_direction_get_type, .Lfunc_end31-gimp_text_direction_get_type
	.cfi_endproc

	.globl	gimp_text_hint_style_get_type
	.align	16, 0x90
	.type	gimp_text_hint_style_get_type,@function
gimp_text_hint_style_get_type:          # @gimp_text_hint_style_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_text_hint_style_get_type.type(%rip)
	jne	.LBB32_2
# BB#1:                                 # %if.then
	leaq	.L.str.442(%rip), %rdi
	leaq	gimp_text_hint_style_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_text_hint_style_get_type.type(%rip)
	movq	gimp_text_hint_style_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.443(%rip), %rsi
	movq	gimp_text_hint_style_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_text_hint_style_get_type.descs(%rip), %rsi
	movq	gimp_text_hint_style_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB32_2:                               # %if.end
	movq	gimp_text_hint_style_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_text_hint_style_get_type, .Lfunc_end32-gimp_text_hint_style_get_type
	.cfi_endproc

	.globl	gimp_text_justification_get_type
	.align	16, 0x90
	.type	gimp_text_justification_get_type,@function
gimp_text_justification_get_type:       # @gimp_text_justification_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_text_justification_get_type.type(%rip)
	jne	.LBB33_2
# BB#1:                                 # %if.then
	leaq	.L.str.456(%rip), %rdi
	leaq	gimp_text_justification_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_text_justification_get_type.type(%rip)
	movq	gimp_text_justification_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.457(%rip), %rsi
	movq	gimp_text_justification_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_text_justification_get_type.descs(%rip), %rsi
	movq	gimp_text_justification_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB33_2:                               # %if.end
	movq	gimp_text_justification_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_text_justification_get_type, .Lfunc_end33-gimp_text_justification_get_type
	.cfi_endproc

	.globl	gimp_user_directory_get_type
	.align	16, 0x90
	.type	gimp_user_directory_get_type,@function
gimp_user_directory_get_type:           # @gimp_user_directory_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_user_directory_get_type.type(%rip)
	jne	.LBB34_2
# BB#1:                                 # %if.then
	leaq	.L.str.474(%rip), %rdi
	leaq	gimp_user_directory_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_user_directory_get_type.type(%rip)
	movq	gimp_user_directory_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.475(%rip), %rsi
	movq	gimp_user_directory_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_user_directory_get_type.descs(%rip), %rsi
	movq	gimp_user_directory_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB34_2:                               # %if.end
	movq	gimp_user_directory_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_user_directory_get_type, .Lfunc_end34-gimp_user_directory_get_type
	.cfi_endproc

	.globl	gimp_vectors_stroke_type_get_type
	.align	16, 0x90
	.type	gimp_vectors_stroke_type_get_type,@function
gimp_vectors_stroke_type_get_type:      # @gimp_vectors_stroke_type_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_vectors_stroke_type_get_type.type(%rip)
	jne	.LBB35_2
# BB#1:                                 # %if.then
	leaq	.L.str.478(%rip), %rdi
	leaq	gimp_vectors_stroke_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, gimp_vectors_stroke_type_get_type.type(%rip)
	movq	gimp_vectors_stroke_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_domain@PLT
	leaq	.L.str.479(%rip), %rsi
	movq	gimp_vectors_stroke_type_get_type.type(%rip), %rdi
	callq	gimp_type_set_translation_context@PLT
	leaq	gimp_vectors_stroke_type_get_type.descs(%rip), %rsi
	movq	gimp_vectors_stroke_type_get_type.type(%rip), %rdi
	callq	gimp_enum_set_value_descriptions@PLT
.LBB35_2:                               # %if.end
	movq	gimp_vectors_stroke_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_vectors_stroke_type_get_type, .Lfunc_end35-gimp_vectors_stroke_type_get_type
	.cfi_endproc

	.type	gimp_add_mask_type_get_type.values,@object # @gimp_add_mask_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_add_mask_type_get_type.values:
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
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.zero	24
	.size	gimp_add_mask_type_get_type.values, 192

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIMP_ADD_WHITE_MASK"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"white-mask"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_ADD_BLACK_MASK"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"black-mask"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_ADD_ALPHA_MASK"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"alpha-mask"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_ADD_ALPHA_TRANSFER_MASK"
	.size	.L.str.6, 29

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"alpha-transfer-mask"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_ADD_SELECTION_MASK"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"selection-mask"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_ADD_COPY_MASK"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"copy-mask"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_ADD_CHANNEL_MASK"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"channel-mask"
	.size	.L.str.13, 13

	.type	gimp_add_mask_type_get_type.descs,@object # @gimp_add_mask_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_add_mask_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.15
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.16
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.17
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.18
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.19
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.20
	.quad	0
	.zero	24
	.size	gimp_add_mask_type_get_type.descs, 192

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"_White (full opacity)"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"_Black (full transparency)"
	.size	.L.str.15, 27

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Layer's _alpha channel"
	.size	.L.str.16, 23

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"_Transfer layer's alpha channel"
	.size	.L.str.17, 32

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"_Selection"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"_Grayscale copy of layer"
	.size	.L.str.19, 25

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"C_hannel"
	.size	.L.str.20, 9

	.type	gimp_add_mask_type_get_type.type,@object # @gimp_add_mask_type_get_type.type
	.local	gimp_add_mask_type_get_type.type
	.comm	gimp_add_mask_type_get_type.type,8,8
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"GimpAddMaskType"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp20-libgimp"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"add-mask-type"
	.size	.L.str.23, 14

	.type	gimp_blend_mode_get_type.values,@object # @gimp_blend_mode_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_blend_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.25
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.26
	.quad	.L.str.27
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.28
	.quad	.L.str.29
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.30
	.quad	.L.str.31
	.zero	24
	.size	gimp_blend_mode_get_type.values, 120

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"GIMP_FG_BG_RGB_MODE"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"fg-bg-rgb-mode"
	.size	.L.str.25, 15

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"GIMP_FG_BG_HSV_MODE"
	.size	.L.str.26, 20

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"fg-bg-hsv-mode"
	.size	.L.str.27, 15

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"GIMP_FG_TRANSPARENT_MODE"
	.size	.L.str.28, 25

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"fg-transparent-mode"
	.size	.L.str.29, 20

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"GIMP_CUSTOM_MODE"
	.size	.L.str.30, 17

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"custom-mode"
	.size	.L.str.31, 12

	.type	gimp_blend_mode_get_type.descs,@object # @gimp_blend_mode_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_blend_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.32
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.33
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.34
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.35
	.quad	0
	.zero	24
	.size	gimp_blend_mode_get_type.descs, 120

	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"FG to BG (RGB)"
	.size	.L.str.32, 15

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"FG to BG (HSV)"
	.size	.L.str.33, 15

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"FG to transparent"
	.size	.L.str.34, 18

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Custom gradient"
	.size	.L.str.35, 16

	.type	gimp_blend_mode_get_type.type,@object # @gimp_blend_mode_get_type.type
	.local	gimp_blend_mode_get_type.type
	.comm	gimp_blend_mode_get_type.type,8,8
	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"GimpBlendMode"
	.size	.L.str.36, 14

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"blend-mode"
	.size	.L.str.37, 11

	.type	gimp_bucket_fill_mode_get_type.values,@object # @gimp_bucket_fill_mode_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_bucket_fill_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.38
	.quad	.L.str.39
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.40
	.quad	.L.str.41
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.42
	.quad	.L.str.43
	.zero	24
	.size	gimp_bucket_fill_mode_get_type.values, 96

	.type	.L.str.38,@object       # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"GIMP_FG_BUCKET_FILL"
	.size	.L.str.38, 20

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"fg-bucket-fill"
	.size	.L.str.39, 15

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"GIMP_BG_BUCKET_FILL"
	.size	.L.str.40, 20

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"bg-bucket-fill"
	.size	.L.str.41, 15

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"GIMP_PATTERN_BUCKET_FILL"
	.size	.L.str.42, 25

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"pattern-bucket-fill"
	.size	.L.str.43, 20

	.type	gimp_bucket_fill_mode_get_type.descs,@object # @gimp_bucket_fill_mode_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_bucket_fill_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.44
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.45
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.46
	.quad	0
	.zero	24
	.size	gimp_bucket_fill_mode_get_type.descs, 96

	.type	.L.str.44,@object       # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	"FG color fill"
	.size	.L.str.44, 14

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"BG color fill"
	.size	.L.str.45, 14

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Pattern fill"
	.size	.L.str.46, 13

	.type	gimp_bucket_fill_mode_get_type.type,@object # @gimp_bucket_fill_mode_get_type.type
	.local	gimp_bucket_fill_mode_get_type.type
	.comm	gimp_bucket_fill_mode_get_type.type,8,8
	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"GimpBucketFillMode"
	.size	.L.str.47, 19

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"bucket-fill-mode"
	.size	.L.str.48, 17

	.type	gimp_channel_ops_get_type.values,@object # @gimp_channel_ops_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_channel_ops_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.49
	.quad	.L.str.50
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.51
	.quad	.L.str.52
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.53
	.quad	.L.str.54
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.55
	.quad	.L.str.56
	.zero	24
	.size	gimp_channel_ops_get_type.values, 120

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"GIMP_CHANNEL_OP_ADD"
	.size	.L.str.49, 20

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"add"
	.size	.L.str.50, 4

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"GIMP_CHANNEL_OP_SUBTRACT"
	.size	.L.str.51, 25

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"subtract"
	.size	.L.str.52, 9

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"GIMP_CHANNEL_OP_REPLACE"
	.size	.L.str.53, 24

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"replace"
	.size	.L.str.54, 8

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"GIMP_CHANNEL_OP_INTERSECT"
	.size	.L.str.55, 26

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"intersect"
	.size	.L.str.56, 10

	.type	gimp_channel_ops_get_type.descs,@object # @gimp_channel_ops_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_channel_ops_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.57
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.58
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.59
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.60
	.quad	0
	.zero	24
	.size	gimp_channel_ops_get_type.descs, 120

	.type	.L.str.57,@object       # @.str.57
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.57:
	.asciz	"Add to the current selection"
	.size	.L.str.57, 29

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Subtract from the current selection"
	.size	.L.str.58, 36

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Replace the current selection"
	.size	.L.str.59, 30

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Intersect with the current selection"
	.size	.L.str.60, 37

	.type	gimp_channel_ops_get_type.type,@object # @gimp_channel_ops_get_type.type
	.local	gimp_channel_ops_get_type.type
	.comm	gimp_channel_ops_get_type.type,8,8
	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"GimpChannelOps"
	.size	.L.str.61, 15

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"channel-ops"
	.size	.L.str.62, 12

	.type	gimp_channel_type_get_type.values,@object # @gimp_channel_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_channel_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.63
	.quad	.L.str.64
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.65
	.quad	.L.str.66
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.67
	.quad	.L.str.68
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.69
	.quad	.L.str.70
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.71
	.quad	.L.str.72
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.73
	.quad	.L.str.74
	.zero	24
	.size	gimp_channel_type_get_type.values, 168

	.type	.L.str.63,@object       # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"GIMP_RED_CHANNEL"
	.size	.L.str.63, 17

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"red-channel"
	.size	.L.str.64, 12

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"GIMP_GREEN_CHANNEL"
	.size	.L.str.65, 19

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"green-channel"
	.size	.L.str.66, 14

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"GIMP_BLUE_CHANNEL"
	.size	.L.str.67, 18

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"blue-channel"
	.size	.L.str.68, 13

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"GIMP_GRAY_CHANNEL"
	.size	.L.str.69, 18

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"gray-channel"
	.size	.L.str.70, 13

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"GIMP_INDEXED_CHANNEL"
	.size	.L.str.71, 21

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"indexed-channel"
	.size	.L.str.72, 16

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"GIMP_ALPHA_CHANNEL"
	.size	.L.str.73, 19

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"alpha-channel"
	.size	.L.str.74, 14

	.type	gimp_channel_type_get_type.descs,@object # @gimp_channel_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_channel_type_get_type.descs:
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
	.zero	24
	.size	gimp_channel_type_get_type.descs, 168

	.type	.L.str.75,@object       # @.str.75
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.75:
	.asciz	"Red"
	.size	.L.str.75, 4

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Green"
	.size	.L.str.76, 6

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Blue"
	.size	.L.str.77, 5

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Gray"
	.size	.L.str.78, 5

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Indexed"
	.size	.L.str.79, 8

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Alpha"
	.size	.L.str.80, 6

	.type	gimp_channel_type_get_type.type,@object # @gimp_channel_type_get_type.type
	.local	gimp_channel_type_get_type.type
	.comm	gimp_channel_type_get_type.type,8,8
	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"GimpChannelType"
	.size	.L.str.81, 16

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"channel-type"
	.size	.L.str.82, 13

	.type	gimp_check_size_get_type.values,@object # @gimp_check_size_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_check_size_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.83
	.quad	.L.str.84
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.85
	.quad	.L.str.86
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.87
	.quad	.L.str.88
	.zero	24
	.size	gimp_check_size_get_type.values, 96

	.type	.L.str.83,@object       # @.str.83
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.83:
	.asciz	"GIMP_CHECK_SIZE_SMALL_CHECKS"
	.size	.L.str.83, 29

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"small-checks"
	.size	.L.str.84, 13

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"GIMP_CHECK_SIZE_MEDIUM_CHECKS"
	.size	.L.str.85, 30

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"medium-checks"
	.size	.L.str.86, 14

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"GIMP_CHECK_SIZE_LARGE_CHECKS"
	.size	.L.str.87, 29

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"large-checks"
	.size	.L.str.88, 13

	.type	gimp_check_size_get_type.descs,@object # @gimp_check_size_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_check_size_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.89
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.90
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.91
	.quad	0
	.zero	24
	.size	gimp_check_size_get_type.descs, 96

	.type	.L.str.89,@object       # @.str.89
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.89:
	.asciz	"Small"
	.size	.L.str.89, 6

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Medium"
	.size	.L.str.90, 7

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Large"
	.size	.L.str.91, 6

	.type	gimp_check_size_get_type.type,@object # @gimp_check_size_get_type.type
	.local	gimp_check_size_get_type.type
	.comm	gimp_check_size_get_type.type,8,8
	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"GimpCheckSize"
	.size	.L.str.92, 14

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"check-size"
	.size	.L.str.93, 11

	.type	gimp_check_type_get_type.values,@object # @gimp_check_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_check_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.94
	.quad	.L.str.95
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.96
	.quad	.L.str.97
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.98
	.quad	.L.str.99
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.100
	.quad	.L.str.101
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.102
	.quad	.L.str.103
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.104
	.quad	.L.str.105
	.zero	24
	.size	gimp_check_type_get_type.values, 168

	.type	.L.str.94,@object       # @.str.94
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.94:
	.asciz	"GIMP_CHECK_TYPE_LIGHT_CHECKS"
	.size	.L.str.94, 29

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"light-checks"
	.size	.L.str.95, 13

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"GIMP_CHECK_TYPE_GRAY_CHECKS"
	.size	.L.str.96, 28

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"gray-checks"
	.size	.L.str.97, 12

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"GIMP_CHECK_TYPE_DARK_CHECKS"
	.size	.L.str.98, 28

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"dark-checks"
	.size	.L.str.99, 12

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"GIMP_CHECK_TYPE_WHITE_ONLY"
	.size	.L.str.100, 27

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"white-only"
	.size	.L.str.101, 11

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"GIMP_CHECK_TYPE_GRAY_ONLY"
	.size	.L.str.102, 26

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"gray-only"
	.size	.L.str.103, 10

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"GIMP_CHECK_TYPE_BLACK_ONLY"
	.size	.L.str.104, 27

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"black-only"
	.size	.L.str.105, 11

	.type	gimp_check_type_get_type.descs,@object # @gimp_check_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_check_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.106
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.107
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.108
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.109
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.110
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.111
	.quad	0
	.zero	24
	.size	gimp_check_type_get_type.descs, 168

	.type	.L.str.106,@object      # @.str.106
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.106:
	.asciz	"Light checks"
	.size	.L.str.106, 13

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Mid-tone checks"
	.size	.L.str.107, 16

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Dark checks"
	.size	.L.str.108, 12

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"White only"
	.size	.L.str.109, 11

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Gray only"
	.size	.L.str.110, 10

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Black only"
	.size	.L.str.111, 11

	.type	gimp_check_type_get_type.type,@object # @gimp_check_type_get_type.type
	.local	gimp_check_type_get_type.type
	.comm	gimp_check_type_get_type.type,8,8
	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"GimpCheckType"
	.size	.L.str.112, 14

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"check-type"
	.size	.L.str.113, 11

	.type	gimp_clone_type_get_type.values,@object # @gimp_clone_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_clone_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.114
	.quad	.L.str.115
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.116
	.quad	.L.str.117
	.zero	24
	.size	gimp_clone_type_get_type.values, 72

	.type	.L.str.114,@object      # @.str.114
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.114:
	.asciz	"GIMP_IMAGE_CLONE"
	.size	.L.str.114, 17

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"image-clone"
	.size	.L.str.115, 12

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"GIMP_PATTERN_CLONE"
	.size	.L.str.116, 19

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"pattern-clone"
	.size	.L.str.117, 14

	.type	gimp_clone_type_get_type.descs,@object # @gimp_clone_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_clone_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.118
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.119
	.quad	0
	.zero	24
	.size	gimp_clone_type_get_type.descs, 72

	.type	.L.str.118,@object      # @.str.118
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.118:
	.asciz	"Image"
	.size	.L.str.118, 6

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"Pattern"
	.size	.L.str.119, 8

	.type	gimp_clone_type_get_type.type,@object # @gimp_clone_type_get_type.type
	.local	gimp_clone_type_get_type.type
	.comm	gimp_clone_type_get_type.type,8,8
	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"GimpCloneType"
	.size	.L.str.120, 14

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"clone-type"
	.size	.L.str.121, 11

	.type	gimp_desaturate_mode_get_type.values,@object # @gimp_desaturate_mode_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_desaturate_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.122
	.quad	.L.str.123
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.124
	.quad	.L.str.125
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.126
	.quad	.L.str.127
	.zero	24
	.size	gimp_desaturate_mode_get_type.values, 96

	.type	.L.str.122,@object      # @.str.122
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.122:
	.asciz	"GIMP_DESATURATE_LIGHTNESS"
	.size	.L.str.122, 26

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"lightness"
	.size	.L.str.123, 10

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"GIMP_DESATURATE_LUMINOSITY"
	.size	.L.str.124, 27

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"luminosity"
	.size	.L.str.125, 11

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"GIMP_DESATURATE_AVERAGE"
	.size	.L.str.126, 24

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"average"
	.size	.L.str.127, 8

	.type	gimp_desaturate_mode_get_type.descs,@object # @gimp_desaturate_mode_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_desaturate_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.128
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.129
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.130
	.quad	0
	.zero	24
	.size	gimp_desaturate_mode_get_type.descs, 96

	.type	.L.str.128,@object      # @.str.128
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.128:
	.asciz	"Lightness"
	.size	.L.str.128, 10

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"Luminosity"
	.size	.L.str.129, 11

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"Average"
	.size	.L.str.130, 8

	.type	gimp_desaturate_mode_get_type.type,@object # @gimp_desaturate_mode_get_type.type
	.local	gimp_desaturate_mode_get_type.type
	.comm	gimp_desaturate_mode_get_type.type,8,8
	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"GimpDesaturateMode"
	.size	.L.str.131, 19

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"desaturate-mode"
	.size	.L.str.132, 16

	.type	gimp_dodge_burn_type_get_type.values,@object # @gimp_dodge_burn_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_dodge_burn_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.133
	.quad	.L.str.134
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.135
	.quad	.L.str.136
	.zero	24
	.size	gimp_dodge_burn_type_get_type.values, 72

	.type	.L.str.133,@object      # @.str.133
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.133:
	.asciz	"GIMP_DODGE"
	.size	.L.str.133, 11

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"dodge"
	.size	.L.str.134, 6

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"GIMP_BURN"
	.size	.L.str.135, 10

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"burn"
	.size	.L.str.136, 5

	.type	gimp_dodge_burn_type_get_type.descs,@object # @gimp_dodge_burn_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_dodge_burn_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.137
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.138
	.quad	0
	.zero	24
	.size	gimp_dodge_burn_type_get_type.descs, 72

	.type	.L.str.137,@object      # @.str.137
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.137:
	.asciz	"Dodge"
	.size	.L.str.137, 6

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"Burn"
	.size	.L.str.138, 5

	.type	gimp_dodge_burn_type_get_type.type,@object # @gimp_dodge_burn_type_get_type.type
	.local	gimp_dodge_burn_type_get_type.type
	.comm	gimp_dodge_burn_type_get_type.type,8,8
	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"GimpDodgeBurnType"
	.size	.L.str.139, 18

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"dodge-burn-type"
	.size	.L.str.140, 16

	.type	gimp_foreground_extract_mode_get_type.values,@object # @gimp_foreground_extract_mode_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_foreground_extract_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.141
	.quad	.L.str.142
	.zero	24
	.size	gimp_foreground_extract_mode_get_type.values, 48

	.type	.L.str.141,@object      # @.str.141
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.141:
	.asciz	"GIMP_FOREGROUND_EXTRACT_SIOX"
	.size	.L.str.141, 29

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"siox"
	.size	.L.str.142, 5

	.type	gimp_foreground_extract_mode_get_type.descs,@object # @gimp_foreground_extract_mode_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_foreground_extract_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.141
	.quad	0
	.zero	24
	.size	gimp_foreground_extract_mode_get_type.descs, 48

	.type	gimp_foreground_extract_mode_get_type.type,@object # @gimp_foreground_extract_mode_get_type.type
	.local	gimp_foreground_extract_mode_get_type.type
	.comm	gimp_foreground_extract_mode_get_type.type,8,8
	.type	.L.str.143,@object      # @.str.143
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.143:
	.asciz	"GimpForegroundExtractMode"
	.size	.L.str.143, 26

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"foreground-extract-mode"
	.size	.L.str.144, 24

	.type	gimp_gradient_type_get_type.values,@object # @gimp_gradient_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_gradient_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.145
	.quad	.L.str.146
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.147
	.quad	.L.str.148
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.149
	.quad	.L.str.150
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.151
	.quad	.L.str.152
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.153
	.quad	.L.str.154
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.155
	.quad	.L.str.156
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.157
	.quad	.L.str.158
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.159
	.quad	.L.str.160
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.161
	.quad	.L.str.162
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.163
	.quad	.L.str.164
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.165
	.quad	.L.str.166
	.zero	24
	.size	gimp_gradient_type_get_type.values, 288

	.type	.L.str.145,@object      # @.str.145
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.145:
	.asciz	"GIMP_GRADIENT_LINEAR"
	.size	.L.str.145, 21

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"linear"
	.size	.L.str.146, 7

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"GIMP_GRADIENT_BILINEAR"
	.size	.L.str.147, 23

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"bilinear"
	.size	.L.str.148, 9

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"GIMP_GRADIENT_RADIAL"
	.size	.L.str.149, 21

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"radial"
	.size	.L.str.150, 7

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"GIMP_GRADIENT_SQUARE"
	.size	.L.str.151, 21

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"square"
	.size	.L.str.152, 7

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"GIMP_GRADIENT_CONICAL_SYMMETRIC"
	.size	.L.str.153, 32

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"conical-symmetric"
	.size	.L.str.154, 18

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"GIMP_GRADIENT_CONICAL_ASYMMETRIC"
	.size	.L.str.155, 33

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"conical-asymmetric"
	.size	.L.str.156, 19

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"GIMP_GRADIENT_SHAPEBURST_ANGULAR"
	.size	.L.str.157, 33

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"shapeburst-angular"
	.size	.L.str.158, 19

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"GIMP_GRADIENT_SHAPEBURST_SPHERICAL"
	.size	.L.str.159, 35

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"shapeburst-spherical"
	.size	.L.str.160, 21

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"GIMP_GRADIENT_SHAPEBURST_DIMPLED"
	.size	.L.str.161, 33

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"shapeburst-dimpled"
	.size	.L.str.162, 19

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"GIMP_GRADIENT_SPIRAL_CLOCKWISE"
	.size	.L.str.163, 31

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"spiral-clockwise"
	.size	.L.str.164, 17

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"GIMP_GRADIENT_SPIRAL_ANTICLOCKWISE"
	.size	.L.str.165, 35

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"spiral-anticlockwise"
	.size	.L.str.166, 21

	.type	gimp_gradient_type_get_type.descs,@object # @gimp_gradient_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_gradient_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.167
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.168
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.169
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.170
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.171
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.172
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.173
	.quad	0
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.174
	.quad	0
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.175
	.quad	0
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.176
	.quad	0
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.177
	.quad	0
	.zero	24
	.size	gimp_gradient_type_get_type.descs, 288

	.type	.L.str.167,@object      # @.str.167
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.167:
	.asciz	"Linear"
	.size	.L.str.167, 7

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"Bi-linear"
	.size	.L.str.168, 10

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"Radial"
	.size	.L.str.169, 7

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"Square"
	.size	.L.str.170, 7

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"Conical (sym)"
	.size	.L.str.171, 14

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"Conical (asym)"
	.size	.L.str.172, 15

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"Shaped (angular)"
	.size	.L.str.173, 17

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"Shaped (spherical)"
	.size	.L.str.174, 19

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"Shaped (dimpled)"
	.size	.L.str.175, 17

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"Spiral (cw)"
	.size	.L.str.176, 12

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"Spiral (ccw)"
	.size	.L.str.177, 13

	.type	gimp_gradient_type_get_type.type,@object # @gimp_gradient_type_get_type.type
	.local	gimp_gradient_type_get_type.type
	.comm	gimp_gradient_type_get_type.type,8,8
	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"GimpGradientType"
	.size	.L.str.178, 17

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"gradient-type"
	.size	.L.str.179, 14

	.type	gimp_grid_style_get_type.values,@object # @gimp_grid_style_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_grid_style_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.180
	.quad	.L.str.181
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.182
	.quad	.L.str.183
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.184
	.quad	.L.str.185
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.186
	.quad	.L.str.187
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.188
	.quad	.L.str.189
	.zero	24
	.size	gimp_grid_style_get_type.values, 144

	.type	.L.str.180,@object      # @.str.180
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.180:
	.asciz	"GIMP_GRID_DOTS"
	.size	.L.str.180, 15

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"dots"
	.size	.L.str.181, 5

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"GIMP_GRID_INTERSECTIONS"
	.size	.L.str.182, 24

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"intersections"
	.size	.L.str.183, 14

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"GIMP_GRID_ON_OFF_DASH"
	.size	.L.str.184, 22

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"on-off-dash"
	.size	.L.str.185, 12

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"GIMP_GRID_DOUBLE_DASH"
	.size	.L.str.186, 22

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"double-dash"
	.size	.L.str.187, 12

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"GIMP_GRID_SOLID"
	.size	.L.str.188, 16

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"solid"
	.size	.L.str.189, 6

	.type	gimp_grid_style_get_type.descs,@object # @gimp_grid_style_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_grid_style_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.190
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.191
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.192
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.193
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.194
	.quad	0
	.zero	24
	.size	gimp_grid_style_get_type.descs, 144

	.type	.L.str.190,@object      # @.str.190
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.190:
	.asciz	"Intersections (dots)"
	.size	.L.str.190, 21

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"Intersections (crosshairs)"
	.size	.L.str.191, 27

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"Dashed"
	.size	.L.str.192, 7

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"Double dashed"
	.size	.L.str.193, 14

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"Solid"
	.size	.L.str.194, 6

	.type	gimp_grid_style_get_type.type,@object # @gimp_grid_style_get_type.type
	.local	gimp_grid_style_get_type.type
	.comm	gimp_grid_style_get_type.type,8,8
	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"GimpGridStyle"
	.size	.L.str.195, 14

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"grid-style"
	.size	.L.str.196, 11

	.type	gimp_icon_type_get_type.values,@object # @gimp_icon_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_icon_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.197
	.quad	.L.str.198
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.199
	.quad	.L.str.200
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.201
	.quad	.L.str.202
	.zero	24
	.size	gimp_icon_type_get_type.values, 96

	.type	.L.str.197,@object      # @.str.197
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.197:
	.asciz	"GIMP_ICON_TYPE_STOCK_ID"
	.size	.L.str.197, 24

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"stock-id"
	.size	.L.str.198, 9

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"GIMP_ICON_TYPE_INLINE_PIXBUF"
	.size	.L.str.199, 29

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"inline-pixbuf"
	.size	.L.str.200, 14

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"GIMP_ICON_TYPE_IMAGE_FILE"
	.size	.L.str.201, 26

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"image-file"
	.size	.L.str.202, 11

	.type	gimp_icon_type_get_type.descs,@object # @gimp_icon_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_icon_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.203
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.204
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.205
	.quad	0
	.zero	24
	.size	gimp_icon_type_get_type.descs, 96

	.type	.L.str.203,@object      # @.str.203
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.203:
	.asciz	"Stock ID"
	.size	.L.str.203, 9

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"Inline pixbuf"
	.size	.L.str.204, 14

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"Image file"
	.size	.L.str.205, 11

	.type	gimp_icon_type_get_type.type,@object # @gimp_icon_type_get_type.type
	.local	gimp_icon_type_get_type.type
	.comm	gimp_icon_type_get_type.type,8,8
	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"GimpIconType"
	.size	.L.str.206, 13

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"icon-type"
	.size	.L.str.207, 10

	.type	gimp_image_base_type_get_type.values,@object # @gimp_image_base_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_image_base_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.208
	.quad	.L.str.209
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.210
	.quad	.L.str.211
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.212
	.quad	.L.str.213
	.zero	24
	.size	gimp_image_base_type_get_type.values, 96

	.type	.L.str.208,@object      # @.str.208
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.208:
	.asciz	"GIMP_RGB"
	.size	.L.str.208, 9

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"rgb"
	.size	.L.str.209, 4

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"GIMP_GRAY"
	.size	.L.str.210, 10

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"gray"
	.size	.L.str.211, 5

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"GIMP_INDEXED"
	.size	.L.str.212, 13

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"indexed"
	.size	.L.str.213, 8

	.type	gimp_image_base_type_get_type.descs,@object # @gimp_image_base_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_image_base_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.214
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.215
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.216
	.quad	0
	.zero	24
	.size	gimp_image_base_type_get_type.descs, 96

	.type	.L.str.214,@object      # @.str.214
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.214:
	.asciz	"RGB color"
	.size	.L.str.214, 10

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"Grayscale"
	.size	.L.str.215, 10

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"Indexed color"
	.size	.L.str.216, 14

	.type	gimp_image_base_type_get_type.type,@object # @gimp_image_base_type_get_type.type
	.local	gimp_image_base_type_get_type.type
	.comm	gimp_image_base_type_get_type.type,8,8
	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"GimpImageBaseType"
	.size	.L.str.217, 18

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"image-base-type"
	.size	.L.str.218, 16

	.type	gimp_image_type_get_type.values,@object # @gimp_image_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_image_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.219
	.quad	.L.str.220
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.221
	.quad	.L.str.222
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.223
	.quad	.L.str.224
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.225
	.quad	.L.str.226
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.227
	.quad	.L.str.228
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.229
	.quad	.L.str.230
	.zero	24
	.size	gimp_image_type_get_type.values, 168

	.type	.L.str.219,@object      # @.str.219
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.219:
	.asciz	"GIMP_RGB_IMAGE"
	.size	.L.str.219, 15

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"rgb-image"
	.size	.L.str.220, 10

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"GIMP_RGBA_IMAGE"
	.size	.L.str.221, 16

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"rgba-image"
	.size	.L.str.222, 11

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"GIMP_GRAY_IMAGE"
	.size	.L.str.223, 16

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"gray-image"
	.size	.L.str.224, 11

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"GIMP_GRAYA_IMAGE"
	.size	.L.str.225, 17

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"graya-image"
	.size	.L.str.226, 12

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"GIMP_INDEXED_IMAGE"
	.size	.L.str.227, 19

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"indexed-image"
	.size	.L.str.228, 14

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"GIMP_INDEXEDA_IMAGE"
	.size	.L.str.229, 20

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"indexeda-image"
	.size	.L.str.230, 15

	.type	gimp_image_type_get_type.descs,@object # @gimp_image_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_image_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.231
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.232
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.215
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.233
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.79
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.234
	.quad	0
	.zero	24
	.size	gimp_image_type_get_type.descs, 168

	.type	.L.str.231,@object      # @.str.231
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.231:
	.asciz	"RGB"
	.size	.L.str.231, 4

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"RGB-alpha"
	.size	.L.str.232, 10

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"Grayscale-alpha"
	.size	.L.str.233, 16

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"Indexed-alpha"
	.size	.L.str.234, 14

	.type	gimp_image_type_get_type.type,@object # @gimp_image_type_get_type.type
	.local	gimp_image_type_get_type.type
	.comm	gimp_image_type_get_type.type,8,8
	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"GimpImageType"
	.size	.L.str.235, 14

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"image-type"
	.size	.L.str.236, 11

	.type	gimp_interpolation_type_get_type.values,@object # @gimp_interpolation_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_interpolation_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.237
	.quad	.L.str.238
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.239
	.quad	.L.str.146
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.240
	.quad	.L.str.241
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.242
	.quad	.L.str.243
	.zero	24
	.size	gimp_interpolation_type_get_type.values, 120

	.type	.L.str.237,@object      # @.str.237
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.237:
	.asciz	"GIMP_INTERPOLATION_NONE"
	.size	.L.str.237, 24

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"none"
	.size	.L.str.238, 5

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"GIMP_INTERPOLATION_LINEAR"
	.size	.L.str.239, 26

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"GIMP_INTERPOLATION_CUBIC"
	.size	.L.str.240, 25

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"cubic"
	.size	.L.str.241, 6

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"GIMP_INTERPOLATION_LANCZOS"
	.size	.L.str.242, 27

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"lanczos"
	.size	.L.str.243, 8

	.type	gimp_interpolation_type_get_type.descs,@object # @gimp_interpolation_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_interpolation_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.244
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.167
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.245
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.246
	.quad	0
	.zero	24
	.size	gimp_interpolation_type_get_type.descs, 120

	.type	.L.str.244,@object      # @.str.244
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.244:
	.asciz	"None"
	.size	.L.str.244, 5

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"Cubic"
	.size	.L.str.245, 6

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"Sinc (Lanczos3)"
	.size	.L.str.246, 16

	.type	gimp_interpolation_type_get_type.type,@object # @gimp_interpolation_type_get_type.type
	.local	gimp_interpolation_type_get_type.type
	.comm	gimp_interpolation_type_get_type.type,8,8
	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"GimpInterpolationType"
	.size	.L.str.247, 22

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"interpolation-type"
	.size	.L.str.248, 19

	.type	gimp_paint_application_mode_get_type.values,@object # @gimp_paint_application_mode_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_paint_application_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.249
	.quad	.L.str.250
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.251
	.quad	.L.str.252
	.zero	24
	.size	gimp_paint_application_mode_get_type.values, 72

	.type	.L.str.249,@object      # @.str.249
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.249:
	.asciz	"GIMP_PAINT_CONSTANT"
	.size	.L.str.249, 20

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"constant"
	.size	.L.str.250, 9

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"GIMP_PAINT_INCREMENTAL"
	.size	.L.str.251, 23

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"incremental"
	.size	.L.str.252, 12

	.type	gimp_paint_application_mode_get_type.descs,@object # @gimp_paint_application_mode_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_paint_application_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.253
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.254
	.quad	0
	.zero	24
	.size	gimp_paint_application_mode_get_type.descs, 72

	.type	.L.str.253,@object      # @.str.253
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.253:
	.asciz	"Constant"
	.size	.L.str.253, 9

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"Incremental"
	.size	.L.str.254, 12

	.type	gimp_paint_application_mode_get_type.type,@object # @gimp_paint_application_mode_get_type.type
	.local	gimp_paint_application_mode_get_type.type
	.comm	gimp_paint_application_mode_get_type.type,8,8
	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"GimpPaintApplicationMode"
	.size	.L.str.255, 25

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"paint-application-mode"
	.size	.L.str.256, 23

	.type	gimp_repeat_mode_get_type.values,@object # @gimp_repeat_mode_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_repeat_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.257
	.quad	.L.str.238
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.258
	.quad	.L.str.259
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.260
	.quad	.L.str.261
	.zero	24
	.size	gimp_repeat_mode_get_type.values, 96

	.type	.L.str.257,@object      # @.str.257
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.257:
	.asciz	"GIMP_REPEAT_NONE"
	.size	.L.str.257, 17

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"GIMP_REPEAT_SAWTOOTH"
	.size	.L.str.258, 21

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"sawtooth"
	.size	.L.str.259, 9

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"GIMP_REPEAT_TRIANGULAR"
	.size	.L.str.260, 23

	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"triangular"
	.size	.L.str.261, 11

	.type	gimp_repeat_mode_get_type.descs,@object # @gimp_repeat_mode_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_repeat_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.244
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.262
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.263
	.quad	0
	.zero	24
	.size	gimp_repeat_mode_get_type.descs, 96

	.type	.L.str.262,@object      # @.str.262
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.262:
	.asciz	"Sawtooth wave"
	.size	.L.str.262, 14

	.type	.L.str.263,@object      # @.str.263
.L.str.263:
	.asciz	"Triangular wave"
	.size	.L.str.263, 16

	.type	gimp_repeat_mode_get_type.type,@object # @gimp_repeat_mode_get_type.type
	.local	gimp_repeat_mode_get_type.type
	.comm	gimp_repeat_mode_get_type.type,8,8
	.type	.L.str.264,@object      # @.str.264
.L.str.264:
	.asciz	"GimpRepeatMode"
	.size	.L.str.264, 15

	.type	.L.str.265,@object      # @.str.265
.L.str.265:
	.asciz	"repeat-mode"
	.size	.L.str.265, 12

	.type	gimp_run_mode_get_type.values,@object # @gimp_run_mode_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_run_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.266
	.quad	.L.str.267
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.268
	.quad	.L.str.269
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.270
	.quad	.L.str.271
	.zero	24
	.size	gimp_run_mode_get_type.values, 96

	.type	.L.str.266,@object      # @.str.266
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.266:
	.asciz	"GIMP_RUN_INTERACTIVE"
	.size	.L.str.266, 21

	.type	.L.str.267,@object      # @.str.267
.L.str.267:
	.asciz	"interactive"
	.size	.L.str.267, 12

	.type	.L.str.268,@object      # @.str.268
.L.str.268:
	.asciz	"GIMP_RUN_NONINTERACTIVE"
	.size	.L.str.268, 24

	.type	.L.str.269,@object      # @.str.269
.L.str.269:
	.asciz	"noninteractive"
	.size	.L.str.269, 15

	.type	.L.str.270,@object      # @.str.270
.L.str.270:
	.asciz	"GIMP_RUN_WITH_LAST_VALS"
	.size	.L.str.270, 24

	.type	.L.str.271,@object      # @.str.271
.L.str.271:
	.asciz	"with-last-vals"
	.size	.L.str.271, 15

	.type	gimp_run_mode_get_type.descs,@object # @gimp_run_mode_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_run_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.272
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.273
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.274
	.quad	0
	.zero	24
	.size	gimp_run_mode_get_type.descs, 96

	.type	.L.str.272,@object      # @.str.272
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.272:
	.asciz	"Run interactively"
	.size	.L.str.272, 18

	.type	.L.str.273,@object      # @.str.273
.L.str.273:
	.asciz	"Run non-interactively"
	.size	.L.str.273, 22

	.type	.L.str.274,@object      # @.str.274
.L.str.274:
	.asciz	"Run with last used values"
	.size	.L.str.274, 26

	.type	gimp_run_mode_get_type.type,@object # @gimp_run_mode_get_type.type
	.local	gimp_run_mode_get_type.type
	.comm	gimp_run_mode_get_type.type,8,8
	.type	.L.str.275,@object      # @.str.275
.L.str.275:
	.asciz	"GimpRunMode"
	.size	.L.str.275, 12

	.type	.L.str.276,@object      # @.str.276
.L.str.276:
	.asciz	"run-mode"
	.size	.L.str.276, 9

	.type	gimp_size_type_get_type.values,@object # @gimp_size_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_size_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.277
	.quad	.L.str.278
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.279
	.quad	.L.str.280
	.zero	24
	.size	gimp_size_type_get_type.values, 72

	.type	.L.str.277,@object      # @.str.277
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.277:
	.asciz	"GIMP_PIXELS"
	.size	.L.str.277, 12

	.type	.L.str.278,@object      # @.str.278
.L.str.278:
	.asciz	"pixels"
	.size	.L.str.278, 7

	.type	.L.str.279,@object      # @.str.279
.L.str.279:
	.asciz	"GIMP_POINTS"
	.size	.L.str.279, 12

	.type	.L.str.280,@object      # @.str.280
.L.str.280:
	.asciz	"points"
	.size	.L.str.280, 7

	.type	gimp_size_type_get_type.descs,@object # @gimp_size_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_size_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.281
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.282
	.quad	0
	.zero	24
	.size	gimp_size_type_get_type.descs, 72

	.type	.L.str.281,@object      # @.str.281
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.281:
	.asciz	"Pixels"
	.size	.L.str.281, 7

	.type	.L.str.282,@object      # @.str.282
.L.str.282:
	.asciz	"Points"
	.size	.L.str.282, 7

	.type	gimp_size_type_get_type.type,@object # @gimp_size_type_get_type.type
	.local	gimp_size_type_get_type.type
	.comm	gimp_size_type_get_type.type,8,8
	.type	.L.str.283,@object      # @.str.283
.L.str.283:
	.asciz	"GimpSizeType"
	.size	.L.str.283, 13

	.type	.L.str.284,@object      # @.str.284
.L.str.284:
	.asciz	"size-type"
	.size	.L.str.284, 10

	.type	gimp_transfer_mode_get_type.values,@object # @gimp_transfer_mode_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_transfer_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.285
	.quad	.L.str.286
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.287
	.quad	.L.str.288
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.289
	.quad	.L.str.290
	.zero	24
	.size	gimp_transfer_mode_get_type.values, 96

	.type	.L.str.285,@object      # @.str.285
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.285:
	.asciz	"GIMP_SHADOWS"
	.size	.L.str.285, 13

	.type	.L.str.286,@object      # @.str.286
.L.str.286:
	.asciz	"shadows"
	.size	.L.str.286, 8

	.type	.L.str.287,@object      # @.str.287
.L.str.287:
	.asciz	"GIMP_MIDTONES"
	.size	.L.str.287, 14

	.type	.L.str.288,@object      # @.str.288
.L.str.288:
	.asciz	"midtones"
	.size	.L.str.288, 9

	.type	.L.str.289,@object      # @.str.289
.L.str.289:
	.asciz	"GIMP_HIGHLIGHTS"
	.size	.L.str.289, 16

	.type	.L.str.290,@object      # @.str.290
.L.str.290:
	.asciz	"highlights"
	.size	.L.str.290, 11

	.type	gimp_transfer_mode_get_type.descs,@object # @gimp_transfer_mode_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_transfer_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.291
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.292
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.293
	.quad	0
	.zero	24
	.size	gimp_transfer_mode_get_type.descs, 96

	.type	.L.str.291,@object      # @.str.291
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.291:
	.asciz	"Shadows"
	.size	.L.str.291, 8

	.type	.L.str.292,@object      # @.str.292
.L.str.292:
	.asciz	"Midtones"
	.size	.L.str.292, 9

	.type	.L.str.293,@object      # @.str.293
.L.str.293:
	.asciz	"Highlights"
	.size	.L.str.293, 11

	.type	gimp_transfer_mode_get_type.type,@object # @gimp_transfer_mode_get_type.type
	.local	gimp_transfer_mode_get_type.type
	.comm	gimp_transfer_mode_get_type.type,8,8
	.type	.L.str.294,@object      # @.str.294
.L.str.294:
	.asciz	"GimpTransferMode"
	.size	.L.str.294, 17

	.type	.L.str.295,@object      # @.str.295
.L.str.295:
	.asciz	"transfer-mode"
	.size	.L.str.295, 14

	.type	gimp_transform_direction_get_type.values,@object # @gimp_transform_direction_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_transform_direction_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.296
	.quad	.L.str.297
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.298
	.quad	.L.str.299
	.zero	24
	.size	gimp_transform_direction_get_type.values, 72

	.type	.L.str.296,@object      # @.str.296
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.296:
	.asciz	"GIMP_TRANSFORM_FORWARD"
	.size	.L.str.296, 23

	.type	.L.str.297,@object      # @.str.297
.L.str.297:
	.asciz	"forward"
	.size	.L.str.297, 8

	.type	.L.str.298,@object      # @.str.298
.L.str.298:
	.asciz	"GIMP_TRANSFORM_BACKWARD"
	.size	.L.str.298, 24

	.type	.L.str.299,@object      # @.str.299
.L.str.299:
	.asciz	"backward"
	.size	.L.str.299, 9

	.type	gimp_transform_direction_get_type.descs,@object # @gimp_transform_direction_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_transform_direction_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.300
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.301
	.quad	0
	.zero	24
	.size	gimp_transform_direction_get_type.descs, 72

	.type	.L.str.300,@object      # @.str.300
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.300:
	.asciz	"Normal (Forward)"
	.size	.L.str.300, 17

	.type	.L.str.301,@object      # @.str.301
.L.str.301:
	.asciz	"Corrective (Backward)"
	.size	.L.str.301, 22

	.type	gimp_transform_direction_get_type.type,@object # @gimp_transform_direction_get_type.type
	.local	gimp_transform_direction_get_type.type
	.comm	gimp_transform_direction_get_type.type,8,8
	.type	.L.str.302,@object      # @.str.302
.L.str.302:
	.asciz	"GimpTransformDirection"
	.size	.L.str.302, 23

	.type	.L.str.303,@object      # @.str.303
.L.str.303:
	.asciz	"transform-direction"
	.size	.L.str.303, 20

	.type	gimp_transform_resize_get_type.values,@object # @gimp_transform_resize_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_transform_resize_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.304
	.quad	.L.str.305
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.306
	.quad	.L.str.307
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.308
	.quad	.L.str.309
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.310
	.quad	.L.str.311
	.zero	24
	.size	gimp_transform_resize_get_type.values, 120

	.type	.L.str.304,@object      # @.str.304
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.304:
	.asciz	"GIMP_TRANSFORM_RESIZE_ADJUST"
	.size	.L.str.304, 29

	.type	.L.str.305,@object      # @.str.305
.L.str.305:
	.asciz	"adjust"
	.size	.L.str.305, 7

	.type	.L.str.306,@object      # @.str.306
.L.str.306:
	.asciz	"GIMP_TRANSFORM_RESIZE_CLIP"
	.size	.L.str.306, 27

	.type	.L.str.307,@object      # @.str.307
.L.str.307:
	.asciz	"clip"
	.size	.L.str.307, 5

	.type	.L.str.308,@object      # @.str.308
.L.str.308:
	.asciz	"GIMP_TRANSFORM_RESIZE_CROP"
	.size	.L.str.308, 27

	.type	.L.str.309,@object      # @.str.309
.L.str.309:
	.asciz	"crop"
	.size	.L.str.309, 5

	.type	.L.str.310,@object      # @.str.310
.L.str.310:
	.asciz	"GIMP_TRANSFORM_RESIZE_CROP_WITH_ASPECT"
	.size	.L.str.310, 39

	.type	.L.str.311,@object      # @.str.311
.L.str.311:
	.asciz	"crop-with-aspect"
	.size	.L.str.311, 17

	.type	gimp_transform_resize_get_type.descs,@object # @gimp_transform_resize_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_transform_resize_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.312
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.313
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.314
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.315
	.quad	0
	.zero	24
	.size	gimp_transform_resize_get_type.descs, 120

	.type	.L.str.312,@object      # @.str.312
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.312:
	.asciz	"Adjust"
	.size	.L.str.312, 7

	.type	.L.str.313,@object      # @.str.313
.L.str.313:
	.asciz	"Clip"
	.size	.L.str.313, 5

	.type	.L.str.314,@object      # @.str.314
.L.str.314:
	.asciz	"Crop to result"
	.size	.L.str.314, 15

	.type	.L.str.315,@object      # @.str.315
.L.str.315:
	.asciz	"Crop with aspect"
	.size	.L.str.315, 17

	.type	gimp_transform_resize_get_type.type,@object # @gimp_transform_resize_get_type.type
	.local	gimp_transform_resize_get_type.type
	.comm	gimp_transform_resize_get_type.type,8,8
	.type	.L.str.316,@object      # @.str.316
.L.str.316:
	.asciz	"GimpTransformResize"
	.size	.L.str.316, 20

	.type	.L.str.317,@object      # @.str.317
.L.str.317:
	.asciz	"transform-resize"
	.size	.L.str.317, 17

	.type	gimp_pdb_arg_type_get_type.values,@object # @gimp_pdb_arg_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_pdb_arg_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.318
	.quad	.L.str.319
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.320
	.quad	.L.str.321
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.322
	.quad	.L.str.323
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.324
	.quad	.L.str.325
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.326
	.quad	.L.str.327
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.328
	.quad	.L.str.329
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.330
	.quad	.L.str.331
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.332
	.quad	.L.str.333
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.334
	.quad	.L.str.335
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.336
	.quad	.L.str.337
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.338
	.quad	.L.str.339
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.340
	.quad	.L.str.341
	.long	12                      # 0xc
	.zero	4
	.quad	.L.str.342
	.quad	.L.str.343
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.344
	.quad	.L.str.345
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.346
	.quad	.L.str.347
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.348
	.quad	.L.str.349
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.350
	.quad	.L.str.351
	.long	17                      # 0x11
	.zero	4
	.quad	.L.str.352
	.quad	.L.str.353
	.long	18                      # 0x12
	.zero	4
	.quad	.L.str.354
	.quad	.L.str.355
	.long	19                      # 0x13
	.zero	4
	.quad	.L.str.356
	.quad	.L.str.357
	.long	20                      # 0x14
	.zero	4
	.quad	.L.str.358
	.quad	.L.str.359
	.long	21                      # 0x15
	.zero	4
	.quad	.L.str.360
	.quad	.L.str.361
	.long	22                      # 0x16
	.zero	4
	.quad	.L.str.362
	.quad	.L.str.363
	.zero	24
	.size	gimp_pdb_arg_type_get_type.values, 576

	.type	.L.str.318,@object      # @.str.318
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.318:
	.asciz	"GIMP_PDB_INT32"
	.size	.L.str.318, 15

	.type	.L.str.319,@object      # @.str.319
.L.str.319:
	.asciz	"int32"
	.size	.L.str.319, 6

	.type	.L.str.320,@object      # @.str.320
.L.str.320:
	.asciz	"GIMP_PDB_INT16"
	.size	.L.str.320, 15

	.type	.L.str.321,@object      # @.str.321
.L.str.321:
	.asciz	"int16"
	.size	.L.str.321, 6

	.type	.L.str.322,@object      # @.str.322
.L.str.322:
	.asciz	"GIMP_PDB_INT8"
	.size	.L.str.322, 14

	.type	.L.str.323,@object      # @.str.323
.L.str.323:
	.asciz	"int8"
	.size	.L.str.323, 5

	.type	.L.str.324,@object      # @.str.324
.L.str.324:
	.asciz	"GIMP_PDB_FLOAT"
	.size	.L.str.324, 15

	.type	.L.str.325,@object      # @.str.325
.L.str.325:
	.asciz	"float"
	.size	.L.str.325, 6

	.type	.L.str.326,@object      # @.str.326
.L.str.326:
	.asciz	"GIMP_PDB_STRING"
	.size	.L.str.326, 16

	.type	.L.str.327,@object      # @.str.327
.L.str.327:
	.asciz	"string"
	.size	.L.str.327, 7

	.type	.L.str.328,@object      # @.str.328
.L.str.328:
	.asciz	"GIMP_PDB_INT32ARRAY"
	.size	.L.str.328, 20

	.type	.L.str.329,@object      # @.str.329
.L.str.329:
	.asciz	"int32array"
	.size	.L.str.329, 11

	.type	.L.str.330,@object      # @.str.330
.L.str.330:
	.asciz	"GIMP_PDB_INT16ARRAY"
	.size	.L.str.330, 20

	.type	.L.str.331,@object      # @.str.331
.L.str.331:
	.asciz	"int16array"
	.size	.L.str.331, 11

	.type	.L.str.332,@object      # @.str.332
.L.str.332:
	.asciz	"GIMP_PDB_INT8ARRAY"
	.size	.L.str.332, 19

	.type	.L.str.333,@object      # @.str.333
.L.str.333:
	.asciz	"int8array"
	.size	.L.str.333, 10

	.type	.L.str.334,@object      # @.str.334
.L.str.334:
	.asciz	"GIMP_PDB_FLOATARRAY"
	.size	.L.str.334, 20

	.type	.L.str.335,@object      # @.str.335
.L.str.335:
	.asciz	"floatarray"
	.size	.L.str.335, 11

	.type	.L.str.336,@object      # @.str.336
.L.str.336:
	.asciz	"GIMP_PDB_STRINGARRAY"
	.size	.L.str.336, 21

	.type	.L.str.337,@object      # @.str.337
.L.str.337:
	.asciz	"stringarray"
	.size	.L.str.337, 12

	.type	.L.str.338,@object      # @.str.338
.L.str.338:
	.asciz	"GIMP_PDB_COLOR"
	.size	.L.str.338, 15

	.type	.L.str.339,@object      # @.str.339
.L.str.339:
	.asciz	"color"
	.size	.L.str.339, 6

	.type	.L.str.340,@object      # @.str.340
.L.str.340:
	.asciz	"GIMP_PDB_ITEM"
	.size	.L.str.340, 14

	.type	.L.str.341,@object      # @.str.341
.L.str.341:
	.asciz	"item"
	.size	.L.str.341, 5

	.type	.L.str.342,@object      # @.str.342
.L.str.342:
	.asciz	"GIMP_PDB_DISPLAY"
	.size	.L.str.342, 17

	.type	.L.str.343,@object      # @.str.343
.L.str.343:
	.asciz	"display"
	.size	.L.str.343, 8

	.type	.L.str.344,@object      # @.str.344
.L.str.344:
	.asciz	"GIMP_PDB_IMAGE"
	.size	.L.str.344, 15

	.type	.L.str.345,@object      # @.str.345
.L.str.345:
	.asciz	"image"
	.size	.L.str.345, 6

	.type	.L.str.346,@object      # @.str.346
.L.str.346:
	.asciz	"GIMP_PDB_LAYER"
	.size	.L.str.346, 15

	.type	.L.str.347,@object      # @.str.347
.L.str.347:
	.asciz	"layer"
	.size	.L.str.347, 6

	.type	.L.str.348,@object      # @.str.348
.L.str.348:
	.asciz	"GIMP_PDB_CHANNEL"
	.size	.L.str.348, 17

	.type	.L.str.349,@object      # @.str.349
.L.str.349:
	.asciz	"channel"
	.size	.L.str.349, 8

	.type	.L.str.350,@object      # @.str.350
.L.str.350:
	.asciz	"GIMP_PDB_DRAWABLE"
	.size	.L.str.350, 18

	.type	.L.str.351,@object      # @.str.351
.L.str.351:
	.asciz	"drawable"
	.size	.L.str.351, 9

	.type	.L.str.352,@object      # @.str.352
.L.str.352:
	.asciz	"GIMP_PDB_SELECTION"
	.size	.L.str.352, 19

	.type	.L.str.353,@object      # @.str.353
.L.str.353:
	.asciz	"selection"
	.size	.L.str.353, 10

	.type	.L.str.354,@object      # @.str.354
.L.str.354:
	.asciz	"GIMP_PDB_COLORARRAY"
	.size	.L.str.354, 20

	.type	.L.str.355,@object      # @.str.355
.L.str.355:
	.asciz	"colorarray"
	.size	.L.str.355, 11

	.type	.L.str.356,@object      # @.str.356
.L.str.356:
	.asciz	"GIMP_PDB_VECTORS"
	.size	.L.str.356, 17

	.type	.L.str.357,@object      # @.str.357
.L.str.357:
	.asciz	"vectors"
	.size	.L.str.357, 8

	.type	.L.str.358,@object      # @.str.358
.L.str.358:
	.asciz	"GIMP_PDB_PARASITE"
	.size	.L.str.358, 18

	.type	.L.str.359,@object      # @.str.359
.L.str.359:
	.asciz	"parasite"
	.size	.L.str.359, 9

	.type	.L.str.360,@object      # @.str.360
.L.str.360:
	.asciz	"GIMP_PDB_STATUS"
	.size	.L.str.360, 16

	.type	.L.str.361,@object      # @.str.361
.L.str.361:
	.asciz	"status"
	.size	.L.str.361, 7

	.type	.L.str.362,@object      # @.str.362
.L.str.362:
	.asciz	"GIMP_PDB_END"
	.size	.L.str.362, 13

	.type	.L.str.363,@object      # @.str.363
.L.str.363:
	.asciz	"end"
	.size	.L.str.363, 4

	.type	gimp_pdb_arg_type_get_type.descs,@object # @gimp_pdb_arg_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_pdb_arg_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.318
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.320
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.322
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.324
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.326
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.328
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.330
	.quad	0
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.332
	.quad	0
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.334
	.quad	0
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.336
	.quad	0
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.338
	.quad	0
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.340
	.quad	0
	.long	12                      # 0xc
	.zero	4
	.quad	.L.str.342
	.quad	0
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.344
	.quad	0
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.346
	.quad	0
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.348
	.quad	0
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.350
	.quad	0
	.long	17                      # 0x11
	.zero	4
	.quad	.L.str.352
	.quad	0
	.long	18                      # 0x12
	.zero	4
	.quad	.L.str.354
	.quad	0
	.long	19                      # 0x13
	.zero	4
	.quad	.L.str.356
	.quad	0
	.long	20                      # 0x14
	.zero	4
	.quad	.L.str.358
	.quad	0
	.long	21                      # 0x15
	.zero	4
	.quad	.L.str.360
	.quad	0
	.long	22                      # 0x16
	.zero	4
	.quad	.L.str.362
	.quad	0
	.zero	24
	.size	gimp_pdb_arg_type_get_type.descs, 576

	.type	gimp_pdb_arg_type_get_type.type,@object # @gimp_pdb_arg_type_get_type.type
	.local	gimp_pdb_arg_type_get_type.type
	.comm	gimp_pdb_arg_type_get_type.type,8,8
	.type	.L.str.364,@object      # @.str.364
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.364:
	.asciz	"GimpPDBArgType"
	.size	.L.str.364, 15

	.type	.L.str.365,@object      # @.str.365
.L.str.365:
	.asciz	"pdb-arg-type"
	.size	.L.str.365, 13

	.type	gimp_pdb_error_handler_get_type.values,@object # @gimp_pdb_error_handler_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_pdb_error_handler_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.366
	.quad	.L.str.367
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.368
	.quad	.L.str.369
	.zero	24
	.size	gimp_pdb_error_handler_get_type.values, 72

	.type	.L.str.366,@object      # @.str.366
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.366:
	.asciz	"GIMP_PDB_ERROR_HANDLER_INTERNAL"
	.size	.L.str.366, 32

	.type	.L.str.367,@object      # @.str.367
.L.str.367:
	.asciz	"internal"
	.size	.L.str.367, 9

	.type	.L.str.368,@object      # @.str.368
.L.str.368:
	.asciz	"GIMP_PDB_ERROR_HANDLER_PLUGIN"
	.size	.L.str.368, 30

	.type	.L.str.369,@object      # @.str.369
.L.str.369:
	.asciz	"plugin"
	.size	.L.str.369, 7

	.type	gimp_pdb_error_handler_get_type.descs,@object # @gimp_pdb_error_handler_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_pdb_error_handler_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.366
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.368
	.quad	0
	.zero	24
	.size	gimp_pdb_error_handler_get_type.descs, 72

	.type	gimp_pdb_error_handler_get_type.type,@object # @gimp_pdb_error_handler_get_type.type
	.local	gimp_pdb_error_handler_get_type.type
	.comm	gimp_pdb_error_handler_get_type.type,8,8
	.type	.L.str.370,@object      # @.str.370
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.370:
	.asciz	"GimpPDBErrorHandler"
	.size	.L.str.370, 20

	.type	.L.str.371,@object      # @.str.371
.L.str.371:
	.asciz	"pdb-error-handler"
	.size	.L.str.371, 18

	.type	gimp_pdb_proc_type_get_type.values,@object # @gimp_pdb_proc_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_pdb_proc_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.372
	.quad	.L.str.367
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.373
	.quad	.L.str.369
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.374
	.quad	.L.str.375
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.376
	.quad	.L.str.377
	.zero	24
	.size	gimp_pdb_proc_type_get_type.values, 120

	.type	.L.str.372,@object      # @.str.372
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.372:
	.asciz	"GIMP_INTERNAL"
	.size	.L.str.372, 14

	.type	.L.str.373,@object      # @.str.373
.L.str.373:
	.asciz	"GIMP_PLUGIN"
	.size	.L.str.373, 12

	.type	.L.str.374,@object      # @.str.374
.L.str.374:
	.asciz	"GIMP_EXTENSION"
	.size	.L.str.374, 15

	.type	.L.str.375,@object      # @.str.375
.L.str.375:
	.asciz	"extension"
	.size	.L.str.375, 10

	.type	.L.str.376,@object      # @.str.376
.L.str.376:
	.asciz	"GIMP_TEMPORARY"
	.size	.L.str.376, 15

	.type	.L.str.377,@object      # @.str.377
.L.str.377:
	.asciz	"temporary"
	.size	.L.str.377, 10

	.type	gimp_pdb_proc_type_get_type.descs,@object # @gimp_pdb_proc_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_pdb_proc_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.378
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.379
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.380
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.381
	.quad	0
	.zero	24
	.size	gimp_pdb_proc_type_get_type.descs, 120

	.type	.L.str.378,@object      # @.str.378
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.378:
	.asciz	"Internal GIMP procedure"
	.size	.L.str.378, 24

	.type	.L.str.379,@object      # @.str.379
.L.str.379:
	.asciz	"GIMP Plug-In"
	.size	.L.str.379, 13

	.type	.L.str.380,@object      # @.str.380
.L.str.380:
	.asciz	"GIMP Extension"
	.size	.L.str.380, 15

	.type	.L.str.381,@object      # @.str.381
.L.str.381:
	.asciz	"Temporary Procedure"
	.size	.L.str.381, 20

	.type	gimp_pdb_proc_type_get_type.type,@object # @gimp_pdb_proc_type_get_type.type
	.local	gimp_pdb_proc_type_get_type.type
	.comm	gimp_pdb_proc_type_get_type.type,8,8
	.type	.L.str.382,@object      # @.str.382
.L.str.382:
	.asciz	"GimpPDBProcType"
	.size	.L.str.382, 16

	.type	.L.str.383,@object      # @.str.383
.L.str.383:
	.asciz	"pdb-proc-type"
	.size	.L.str.383, 14

	.type	gimp_pdb_status_type_get_type.values,@object # @gimp_pdb_status_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_pdb_status_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.384
	.quad	.L.str.385
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.386
	.quad	.L.str.387
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.388
	.quad	.L.str.389
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.390
	.quad	.L.str.391
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.392
	.quad	.L.str.393
	.zero	24
	.size	gimp_pdb_status_type_get_type.values, 144

	.type	.L.str.384,@object      # @.str.384
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.384:
	.asciz	"GIMP_PDB_EXECUTION_ERROR"
	.size	.L.str.384, 25

	.type	.L.str.385,@object      # @.str.385
.L.str.385:
	.asciz	"execution-error"
	.size	.L.str.385, 16

	.type	.L.str.386,@object      # @.str.386
.L.str.386:
	.asciz	"GIMP_PDB_CALLING_ERROR"
	.size	.L.str.386, 23

	.type	.L.str.387,@object      # @.str.387
.L.str.387:
	.asciz	"calling-error"
	.size	.L.str.387, 14

	.type	.L.str.388,@object      # @.str.388
.L.str.388:
	.asciz	"GIMP_PDB_PASS_THROUGH"
	.size	.L.str.388, 22

	.type	.L.str.389,@object      # @.str.389
.L.str.389:
	.asciz	"pass-through"
	.size	.L.str.389, 13

	.type	.L.str.390,@object      # @.str.390
.L.str.390:
	.asciz	"GIMP_PDB_SUCCESS"
	.size	.L.str.390, 17

	.type	.L.str.391,@object      # @.str.391
.L.str.391:
	.asciz	"success"
	.size	.L.str.391, 8

	.type	.L.str.392,@object      # @.str.392
.L.str.392:
	.asciz	"GIMP_PDB_CANCEL"
	.size	.L.str.392, 16

	.type	.L.str.393,@object      # @.str.393
.L.str.393:
	.asciz	"cancel"
	.size	.L.str.393, 7

	.type	gimp_pdb_status_type_get_type.descs,@object # @gimp_pdb_status_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_pdb_status_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.384
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.386
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.388
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.390
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.392
	.quad	0
	.zero	24
	.size	gimp_pdb_status_type_get_type.descs, 144

	.type	gimp_pdb_status_type_get_type.type,@object # @gimp_pdb_status_type_get_type.type
	.local	gimp_pdb_status_type_get_type.type
	.comm	gimp_pdb_status_type_get_type.type,8,8
	.type	.L.str.394,@object      # @.str.394
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.394:
	.asciz	"GimpPDBStatusType"
	.size	.L.str.394, 18

	.type	.L.str.395,@object      # @.str.395
.L.str.395:
	.asciz	"pdb-status-type"
	.size	.L.str.395, 16

	.type	gimp_message_handler_type_get_type.values,@object # @gimp_message_handler_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_message_handler_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.396
	.quad	.L.str.397
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.398
	.quad	.L.str.399
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.400
	.quad	.L.str.401
	.zero	24
	.size	gimp_message_handler_type_get_type.values, 96

	.type	.L.str.396,@object      # @.str.396
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.396:
	.asciz	"GIMP_MESSAGE_BOX"
	.size	.L.str.396, 17

	.type	.L.str.397,@object      # @.str.397
.L.str.397:
	.asciz	"message-box"
	.size	.L.str.397, 12

	.type	.L.str.398,@object      # @.str.398
.L.str.398:
	.asciz	"GIMP_CONSOLE"
	.size	.L.str.398, 13

	.type	.L.str.399,@object      # @.str.399
.L.str.399:
	.asciz	"console"
	.size	.L.str.399, 8

	.type	.L.str.400,@object      # @.str.400
.L.str.400:
	.asciz	"GIMP_ERROR_CONSOLE"
	.size	.L.str.400, 19

	.type	.L.str.401,@object      # @.str.401
.L.str.401:
	.asciz	"error-console"
	.size	.L.str.401, 14

	.type	gimp_message_handler_type_get_type.descs,@object # @gimp_message_handler_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_message_handler_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.396
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.398
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.400
	.quad	0
	.zero	24
	.size	gimp_message_handler_type_get_type.descs, 96

	.type	gimp_message_handler_type_get_type.type,@object # @gimp_message_handler_type_get_type.type
	.local	gimp_message_handler_type_get_type.type
	.comm	gimp_message_handler_type_get_type.type,8,8
	.type	.L.str.402,@object      # @.str.402
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.402:
	.asciz	"GimpMessageHandlerType"
	.size	.L.str.402, 23

	.type	.L.str.403,@object      # @.str.403
.L.str.403:
	.asciz	"message-handler-type"
	.size	.L.str.403, 21

	.type	gimp_stack_trace_mode_get_type.values,@object # @gimp_stack_trace_mode_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_stack_trace_mode_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.404
	.quad	.L.str.405
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.406
	.quad	.L.str.407
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.408
	.quad	.L.str.409
	.zero	24
	.size	gimp_stack_trace_mode_get_type.values, 96

	.type	.L.str.404,@object      # @.str.404
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.404:
	.asciz	"GIMP_STACK_TRACE_NEVER"
	.size	.L.str.404, 23

	.type	.L.str.405,@object      # @.str.405
.L.str.405:
	.asciz	"never"
	.size	.L.str.405, 6

	.type	.L.str.406,@object      # @.str.406
.L.str.406:
	.asciz	"GIMP_STACK_TRACE_QUERY"
	.size	.L.str.406, 23

	.type	.L.str.407,@object      # @.str.407
.L.str.407:
	.asciz	"query"
	.size	.L.str.407, 6

	.type	.L.str.408,@object      # @.str.408
.L.str.408:
	.asciz	"GIMP_STACK_TRACE_ALWAYS"
	.size	.L.str.408, 24

	.type	.L.str.409,@object      # @.str.409
.L.str.409:
	.asciz	"always"
	.size	.L.str.409, 7

	.type	gimp_stack_trace_mode_get_type.descs,@object # @gimp_stack_trace_mode_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_stack_trace_mode_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.404
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.406
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.408
	.quad	0
	.zero	24
	.size	gimp_stack_trace_mode_get_type.descs, 96

	.type	gimp_stack_trace_mode_get_type.type,@object # @gimp_stack_trace_mode_get_type.type
	.local	gimp_stack_trace_mode_get_type.type
	.comm	gimp_stack_trace_mode_get_type.type,8,8
	.type	.L.str.410,@object      # @.str.410
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.410:
	.asciz	"GimpStackTraceMode"
	.size	.L.str.410, 19

	.type	.L.str.411,@object      # @.str.411
.L.str.411:
	.asciz	"stack-trace-mode"
	.size	.L.str.411, 17

	.type	gimp_progress_command_get_type.values,@object # @gimp_progress_command_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_progress_command_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.412
	.quad	.L.str.413
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.414
	.quad	.L.str.363
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.415
	.quad	.L.str.416
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.417
	.quad	.L.str.418
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.419
	.quad	.L.str.420
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.421
	.quad	.L.str.422
	.zero	24
	.size	gimp_progress_command_get_type.values, 168

	.type	.L.str.412,@object      # @.str.412
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.412:
	.asciz	"GIMP_PROGRESS_COMMAND_START"
	.size	.L.str.412, 28

	.type	.L.str.413,@object      # @.str.413
.L.str.413:
	.asciz	"start"
	.size	.L.str.413, 6

	.type	.L.str.414,@object      # @.str.414
.L.str.414:
	.asciz	"GIMP_PROGRESS_COMMAND_END"
	.size	.L.str.414, 26

	.type	.L.str.415,@object      # @.str.415
.L.str.415:
	.asciz	"GIMP_PROGRESS_COMMAND_SET_TEXT"
	.size	.L.str.415, 31

	.type	.L.str.416,@object      # @.str.416
.L.str.416:
	.asciz	"set-text"
	.size	.L.str.416, 9

	.type	.L.str.417,@object      # @.str.417
.L.str.417:
	.asciz	"GIMP_PROGRESS_COMMAND_SET_VALUE"
	.size	.L.str.417, 32

	.type	.L.str.418,@object      # @.str.418
.L.str.418:
	.asciz	"set-value"
	.size	.L.str.418, 10

	.type	.L.str.419,@object      # @.str.419
.L.str.419:
	.asciz	"GIMP_PROGRESS_COMMAND_PULSE"
	.size	.L.str.419, 28

	.type	.L.str.420,@object      # @.str.420
.L.str.420:
	.asciz	"pulse"
	.size	.L.str.420, 6

	.type	.L.str.421,@object      # @.str.421
.L.str.421:
	.asciz	"GIMP_PROGRESS_COMMAND_GET_WINDOW"
	.size	.L.str.421, 33

	.type	.L.str.422,@object      # @.str.422
.L.str.422:
	.asciz	"get-window"
	.size	.L.str.422, 11

	.type	gimp_progress_command_get_type.descs,@object # @gimp_progress_command_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_progress_command_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.412
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.414
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.415
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.417
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.419
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.421
	.quad	0
	.zero	24
	.size	gimp_progress_command_get_type.descs, 168

	.type	gimp_progress_command_get_type.type,@object # @gimp_progress_command_get_type.type
	.local	gimp_progress_command_get_type.type
	.comm	gimp_progress_command_get_type.type,8,8
	.type	.L.str.423,@object      # @.str.423
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.423:
	.asciz	"GimpProgressCommand"
	.size	.L.str.423, 20

	.type	.L.str.424,@object      # @.str.424
.L.str.424:
	.asciz	"progress-command"
	.size	.L.str.424, 17

	.type	gimp_text_direction_get_type.values,@object # @gimp_text_direction_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_text_direction_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.425
	.quad	.L.str.426
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.427
	.quad	.L.str.428
	.zero	24
	.size	gimp_text_direction_get_type.values, 72

	.type	.L.str.425,@object      # @.str.425
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.425:
	.asciz	"GIMP_TEXT_DIRECTION_LTR"
	.size	.L.str.425, 24

	.type	.L.str.426,@object      # @.str.426
.L.str.426:
	.asciz	"ltr"
	.size	.L.str.426, 4

	.type	.L.str.427,@object      # @.str.427
.L.str.427:
	.asciz	"GIMP_TEXT_DIRECTION_RTL"
	.size	.L.str.427, 24

	.type	.L.str.428,@object      # @.str.428
.L.str.428:
	.asciz	"rtl"
	.size	.L.str.428, 4

	.type	gimp_text_direction_get_type.descs,@object # @gimp_text_direction_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_text_direction_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.429
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.430
	.quad	0
	.zero	24
	.size	gimp_text_direction_get_type.descs, 72

	.type	.L.str.429,@object      # @.str.429
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.429:
	.asciz	"From left to right"
	.size	.L.str.429, 19

	.type	.L.str.430,@object      # @.str.430
.L.str.430:
	.asciz	"From right to left"
	.size	.L.str.430, 19

	.type	gimp_text_direction_get_type.type,@object # @gimp_text_direction_get_type.type
	.local	gimp_text_direction_get_type.type
	.comm	gimp_text_direction_get_type.type,8,8
	.type	.L.str.431,@object      # @.str.431
.L.str.431:
	.asciz	"GimpTextDirection"
	.size	.L.str.431, 18

	.type	.L.str.432,@object      # @.str.432
.L.str.432:
	.asciz	"text-direction"
	.size	.L.str.432, 15

	.type	gimp_text_hint_style_get_type.values,@object # @gimp_text_hint_style_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_text_hint_style_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.433
	.quad	.L.str.238
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.434
	.quad	.L.str.435
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.436
	.quad	.L.str.437
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.438
	.quad	.L.str.439
	.zero	24
	.size	gimp_text_hint_style_get_type.values, 120

	.type	.L.str.433,@object      # @.str.433
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.433:
	.asciz	"GIMP_TEXT_HINT_STYLE_NONE"
	.size	.L.str.433, 26

	.type	.L.str.434,@object      # @.str.434
.L.str.434:
	.asciz	"GIMP_TEXT_HINT_STYLE_SLIGHT"
	.size	.L.str.434, 28

	.type	.L.str.435,@object      # @.str.435
.L.str.435:
	.asciz	"slight"
	.size	.L.str.435, 7

	.type	.L.str.436,@object      # @.str.436
.L.str.436:
	.asciz	"GIMP_TEXT_HINT_STYLE_MEDIUM"
	.size	.L.str.436, 28

	.type	.L.str.437,@object      # @.str.437
.L.str.437:
	.asciz	"medium"
	.size	.L.str.437, 7

	.type	.L.str.438,@object      # @.str.438
.L.str.438:
	.asciz	"GIMP_TEXT_HINT_STYLE_FULL"
	.size	.L.str.438, 26

	.type	.L.str.439,@object      # @.str.439
.L.str.439:
	.asciz	"full"
	.size	.L.str.439, 5

	.type	gimp_text_hint_style_get_type.descs,@object # @gimp_text_hint_style_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_text_hint_style_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.244
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.440
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.90
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.441
	.quad	0
	.zero	24
	.size	gimp_text_hint_style_get_type.descs, 120

	.type	.L.str.440,@object      # @.str.440
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.440:
	.asciz	"Slight"
	.size	.L.str.440, 7

	.type	.L.str.441,@object      # @.str.441
.L.str.441:
	.asciz	"Full"
	.size	.L.str.441, 5

	.type	gimp_text_hint_style_get_type.type,@object # @gimp_text_hint_style_get_type.type
	.local	gimp_text_hint_style_get_type.type
	.comm	gimp_text_hint_style_get_type.type,8,8
	.type	.L.str.442,@object      # @.str.442
.L.str.442:
	.asciz	"GimpTextHintStyle"
	.size	.L.str.442, 18

	.type	.L.str.443,@object      # @.str.443
.L.str.443:
	.asciz	"text-hint-style"
	.size	.L.str.443, 16

	.type	gimp_text_justification_get_type.values,@object # @gimp_text_justification_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_text_justification_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.444
	.quad	.L.str.445
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.446
	.quad	.L.str.447
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.448
	.quad	.L.str.449
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.450
	.quad	.L.str.451
	.zero	24
	.size	gimp_text_justification_get_type.values, 120

	.type	.L.str.444,@object      # @.str.444
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.444:
	.asciz	"GIMP_TEXT_JUSTIFY_LEFT"
	.size	.L.str.444, 23

	.type	.L.str.445,@object      # @.str.445
.L.str.445:
	.asciz	"left"
	.size	.L.str.445, 5

	.type	.L.str.446,@object      # @.str.446
.L.str.446:
	.asciz	"GIMP_TEXT_JUSTIFY_RIGHT"
	.size	.L.str.446, 24

	.type	.L.str.447,@object      # @.str.447
.L.str.447:
	.asciz	"right"
	.size	.L.str.447, 6

	.type	.L.str.448,@object      # @.str.448
.L.str.448:
	.asciz	"GIMP_TEXT_JUSTIFY_CENTER"
	.size	.L.str.448, 25

	.type	.L.str.449,@object      # @.str.449
.L.str.449:
	.asciz	"center"
	.size	.L.str.449, 7

	.type	.L.str.450,@object      # @.str.450
.L.str.450:
	.asciz	"GIMP_TEXT_JUSTIFY_FILL"
	.size	.L.str.450, 23

	.type	.L.str.451,@object      # @.str.451
.L.str.451:
	.asciz	"fill"
	.size	.L.str.451, 5

	.type	gimp_text_justification_get_type.descs,@object # @gimp_text_justification_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_text_justification_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.452
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.453
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.454
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.455
	.quad	0
	.zero	24
	.size	gimp_text_justification_get_type.descs, 120

	.type	.L.str.452,@object      # @.str.452
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.452:
	.asciz	"Left justified"
	.size	.L.str.452, 15

	.type	.L.str.453,@object      # @.str.453
.L.str.453:
	.asciz	"Right justified"
	.size	.L.str.453, 16

	.type	.L.str.454,@object      # @.str.454
.L.str.454:
	.asciz	"Centered"
	.size	.L.str.454, 9

	.type	.L.str.455,@object      # @.str.455
.L.str.455:
	.asciz	"Filled"
	.size	.L.str.455, 7

	.type	gimp_text_justification_get_type.type,@object # @gimp_text_justification_get_type.type
	.local	gimp_text_justification_get_type.type
	.comm	gimp_text_justification_get_type.type,8,8
	.type	.L.str.456,@object      # @.str.456
.L.str.456:
	.asciz	"GimpTextJustification"
	.size	.L.str.456, 22

	.type	.L.str.457,@object      # @.str.457
.L.str.457:
	.asciz	"text-justification"
	.size	.L.str.457, 19

	.type	gimp_user_directory_get_type.values,@object # @gimp_user_directory_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_user_directory_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.458
	.quad	.L.str.459
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.460
	.quad	.L.str.461
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.462
	.quad	.L.str.463
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.464
	.quad	.L.str.465
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.466
	.quad	.L.str.467
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.468
	.quad	.L.str.469
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.470
	.quad	.L.str.471
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.472
	.quad	.L.str.473
	.zero	24
	.size	gimp_user_directory_get_type.values, 216

	.type	.L.str.458,@object      # @.str.458
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.458:
	.asciz	"GIMP_USER_DIRECTORY_DESKTOP"
	.size	.L.str.458, 28

	.type	.L.str.459,@object      # @.str.459
.L.str.459:
	.asciz	"desktop"
	.size	.L.str.459, 8

	.type	.L.str.460,@object      # @.str.460
.L.str.460:
	.asciz	"GIMP_USER_DIRECTORY_DOCUMENTS"
	.size	.L.str.460, 30

	.type	.L.str.461,@object      # @.str.461
.L.str.461:
	.asciz	"documents"
	.size	.L.str.461, 10

	.type	.L.str.462,@object      # @.str.462
.L.str.462:
	.asciz	"GIMP_USER_DIRECTORY_DOWNLOAD"
	.size	.L.str.462, 29

	.type	.L.str.463,@object      # @.str.463
.L.str.463:
	.asciz	"download"
	.size	.L.str.463, 9

	.type	.L.str.464,@object      # @.str.464
.L.str.464:
	.asciz	"GIMP_USER_DIRECTORY_MUSIC"
	.size	.L.str.464, 26

	.type	.L.str.465,@object      # @.str.465
.L.str.465:
	.asciz	"music"
	.size	.L.str.465, 6

	.type	.L.str.466,@object      # @.str.466
.L.str.466:
	.asciz	"GIMP_USER_DIRECTORY_PICTURES"
	.size	.L.str.466, 29

	.type	.L.str.467,@object      # @.str.467
.L.str.467:
	.asciz	"pictures"
	.size	.L.str.467, 9

	.type	.L.str.468,@object      # @.str.468
.L.str.468:
	.asciz	"GIMP_USER_DIRECTORY_PUBLIC_SHARE"
	.size	.L.str.468, 33

	.type	.L.str.469,@object      # @.str.469
.L.str.469:
	.asciz	"public-share"
	.size	.L.str.469, 13

	.type	.L.str.470,@object      # @.str.470
.L.str.470:
	.asciz	"GIMP_USER_DIRECTORY_TEMPLATES"
	.size	.L.str.470, 30

	.type	.L.str.471,@object      # @.str.471
.L.str.471:
	.asciz	"templates"
	.size	.L.str.471, 10

	.type	.L.str.472,@object      # @.str.472
.L.str.472:
	.asciz	"GIMP_USER_DIRECTORY_VIDEOS"
	.size	.L.str.472, 27

	.type	.L.str.473,@object      # @.str.473
.L.str.473:
	.asciz	"videos"
	.size	.L.str.473, 7

	.type	gimp_user_directory_get_type.descs,@object # @gimp_user_directory_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_user_directory_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.458
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.460
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.462
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.464
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.466
	.quad	0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.468
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.470
	.quad	0
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.472
	.quad	0
	.zero	24
	.size	gimp_user_directory_get_type.descs, 216

	.type	gimp_user_directory_get_type.type,@object # @gimp_user_directory_get_type.type
	.local	gimp_user_directory_get_type.type
	.comm	gimp_user_directory_get_type.type,8,8
	.type	.L.str.474,@object      # @.str.474
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.474:
	.asciz	"GimpUserDirectory"
	.size	.L.str.474, 18

	.type	.L.str.475,@object      # @.str.475
.L.str.475:
	.asciz	"user-directory"
	.size	.L.str.475, 15

	.type	gimp_vectors_stroke_type_get_type.values,@object # @gimp_vectors_stroke_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_vectors_stroke_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.476
	.quad	.L.str.477
	.zero	24
	.size	gimp_vectors_stroke_type_get_type.values, 48

	.type	.L.str.476,@object      # @.str.476
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.476:
	.asciz	"GIMP_VECTORS_STROKE_TYPE_BEZIER"
	.size	.L.str.476, 32

	.type	.L.str.477,@object      # @.str.477
.L.str.477:
	.asciz	"bezier"
	.size	.L.str.477, 7

	.type	gimp_vectors_stroke_type_get_type.descs,@object # @gimp_vectors_stroke_type_get_type.descs
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_vectors_stroke_type_get_type.descs:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.476
	.quad	0
	.zero	24
	.size	gimp_vectors_stroke_type_get_type.descs, 48

	.type	gimp_vectors_stroke_type_get_type.type,@object # @gimp_vectors_stroke_type_get_type.type
	.local	gimp_vectors_stroke_type_get_type.type
	.comm	gimp_vectors_stroke_type_get_type.type,8,8
	.type	.L.str.478,@object      # @.str.478
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.478:
	.asciz	"GimpVectorsStrokeType"
	.size	.L.str.478, 22

	.type	.L.str.479,@object      # @.str.479
.L.str.479:
	.asciz	"vectors-stroke-type"
	.size	.L.str.479, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
