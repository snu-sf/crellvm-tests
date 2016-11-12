	.text
	.file	"context-actions.bc"
	.globl	context_actions_setup
	.align	16, 0x90
	.type	context_actions_setup,@function
context_actions_setup:                  # @context_actions_setup
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
	subq	$16, %rsp
	movabsq	$.L.str, %rsi
	movabsq	$context_actions, %rdx
	movl	$18, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_palette_foreground_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_palette_foreground_cmd_callback, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_palette_background_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_palette_background_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_colormap_foreground_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_colormap_foreground_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_colormap_background_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_colormap_background_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_swatch_foreground_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_swatch_foreground_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_swatch_background_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_swatch_background_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_foreground_red_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_foreground_red_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_foreground_green_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_foreground_green_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_foreground_blue_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_foreground_blue_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_foreground_hue_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_foreground_hue_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_foreground_saturation_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_foreground_saturation_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_foreground_value_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_foreground_value_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_background_red_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_background_red_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_background_green_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_background_green_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_background_blue_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_background_blue_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_background_hue_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_background_hue_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_background_saturation_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_background_saturation_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_background_value_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_background_value_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_opacity_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_opacity_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_paint_mode_actions, %rdx
	movl	$4, %ecx
	movabsq	$context_paint_mode_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_tool_select_actions, %rdx
	movl	$5, %ecx
	movabsq	$context_tool_select_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_brush_select_actions, %rdx
	movl	$5, %ecx
	movabsq	$context_brush_select_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_pattern_select_actions, %rdx
	movl	$5, %ecx
	movabsq	$context_pattern_select_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_palette_select_actions, %rdx
	movl	$5, %ecx
	movabsq	$context_palette_select_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_gradient_select_actions, %rdx
	movl	$5, %ecx
	movabsq	$context_gradient_select_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_font_select_actions, %rdx
	movl	$5, %ecx
	movabsq	$context_font_select_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_brush_spacing_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_brush_spacing_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_brush_shape_actions, %rdx
	movl	$3, %ecx
	movabsq	$context_brush_shape_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_brush_radius_actions, %rdx
	movl	$11, %ecx
	movabsq	$context_brush_radius_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_brush_spikes_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_brush_spikes_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_brush_hardness_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_brush_hardness_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_brush_aspect_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_brush_aspect_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$context_brush_angle_actions, %rdx
	movl	$7, %ecx
	movabsq	$context_brush_angle_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	context_actions_setup, .Lfunc_end0-context_actions_setup
	.cfi_endproc

	.globl	context_actions_update
	.align	16, 0x90
	.type	context_actions_update,@function
context_actions_update:                 # @context_actions_update
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_context
	xorps	%xmm0, %xmm0
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	$0, -44(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_11
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_brush
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then.4
	movl	$0, -100(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.7
	movl	$1, -100(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.8
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.10
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.12
	movq	-80(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movl	$1, -28(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_brush_generated_get_radius
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_brush_generated_get_spikes
	movl	%eax, -44(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_brush_generated_get_hardness
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_brush_generated_get_aspect_ratio
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_brush_generated_get_angle
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB1_10:                               # %if.end.24
	jmp	.LBB1_11
.LBB1_11:                               # %if.end.25
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	context_actions_update, .Lfunc_end1-context_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"context-action"
	.size	.L.str, 15

	.type	context_actions,@object # @context_actions
	.section	.rodata,"a",@progbits
	.align	16
context_actions:
	.quad	.L.str.1
	.quad	0
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.30
	.quad	0
	.quad	.L.str.31
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.32
	.quad	0
	.quad	.L.str.33
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.34
	.quad	0
	.quad	.L.str.35
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.36
	.quad	0
	.quad	.L.str.37
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.38
	.quad	0
	.quad	.L.str.39
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.40
	.quad	0
	.quad	.L.str.41
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.42
	.quad	.L.str.4
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	context_colors_default_cmd_callback
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	context_colors_swap_cmd_callback
	.quad	.L.str.52
	.size	context_actions, 1008

	.type	context_palette_foreground_actions,@object # @context_palette_foreground_actions
	.data
	.align	16
context_palette_foreground_actions:
	.quad	.L.str.53
	.quad	.L.str.22
	.quad	.L.str.54
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.55
	.quad	.L.str.22
	.quad	.L.str.56
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.57
	.quad	.L.str.22
	.quad	.L.str.58
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.59
	.quad	.L.str.22
	.quad	.L.str.60
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.61
	.quad	.L.str.22
	.quad	.L.str.62
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.63
	.quad	.L.str.22
	.quad	.L.str.64
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.65
	.quad	.L.str.22
	.quad	.L.str.66
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_palette_foreground_actions, 392

	.type	context_palette_background_actions,@object # @context_palette_background_actions
	.align	16
context_palette_background_actions:
	.quad	.L.str.67
	.quad	.L.str.22
	.quad	.L.str.68
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.69
	.quad	.L.str.22
	.quad	.L.str.70
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.71
	.quad	.L.str.22
	.quad	.L.str.72
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.73
	.quad	.L.str.22
	.quad	.L.str.74
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.75
	.quad	.L.str.22
	.quad	.L.str.76
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.77
	.quad	.L.str.22
	.quad	.L.str.78
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.79
	.quad	.L.str.22
	.quad	.L.str.80
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_palette_background_actions, 392

	.type	context_colormap_foreground_actions,@object # @context_colormap_foreground_actions
	.align	16
context_colormap_foreground_actions:
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.84
	.quad	.L.str.82
	.quad	.L.str.85
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.86
	.quad	.L.str.82
	.quad	.L.str.87
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.88
	.quad	.L.str.82
	.quad	.L.str.89
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.90
	.quad	.L.str.82
	.quad	.L.str.91
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.92
	.quad	.L.str.82
	.quad	.L.str.93
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.94
	.quad	.L.str.82
	.quad	.L.str.95
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_colormap_foreground_actions, 392

	.type	context_colormap_background_actions,@object # @context_colormap_background_actions
	.align	16
context_colormap_background_actions:
	.quad	.L.str.96
	.quad	.L.str.82
	.quad	.L.str.97
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.98
	.quad	.L.str.82
	.quad	.L.str.99
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.100
	.quad	.L.str.82
	.quad	.L.str.101
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.102
	.quad	.L.str.82
	.quad	.L.str.103
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.104
	.quad	.L.str.82
	.quad	.L.str.105
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.106
	.quad	.L.str.82
	.quad	.L.str.107
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.108
	.quad	.L.str.82
	.quad	.L.str.109
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_colormap_background_actions, 392

	.type	context_swatch_foreground_actions,@object # @context_swatch_foreground_actions
	.align	16
context_swatch_foreground_actions:
	.quad	.L.str.110
	.quad	.L.str.22
	.quad	.L.str.111
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.112
	.quad	.L.str.22
	.quad	.L.str.113
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.114
	.quad	.L.str.22
	.quad	.L.str.115
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.116
	.quad	.L.str.22
	.quad	.L.str.117
	.quad	.L.str.118
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.119
	.quad	.L.str.22
	.quad	.L.str.120
	.quad	.L.str.121
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.122
	.quad	.L.str.22
	.quad	.L.str.123
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.124
	.quad	.L.str.22
	.quad	.L.str.125
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_swatch_foreground_actions, 392

	.type	context_swatch_background_actions,@object # @context_swatch_background_actions
	.align	16
context_swatch_background_actions:
	.quad	.L.str.126
	.quad	.L.str.22
	.quad	.L.str.127
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.128
	.quad	.L.str.22
	.quad	.L.str.129
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.130
	.quad	.L.str.22
	.quad	.L.str.131
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.132
	.quad	.L.str.22
	.quad	.L.str.133
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.134
	.quad	.L.str.22
	.quad	.L.str.135
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.136
	.quad	.L.str.22
	.quad	.L.str.137
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.138
	.quad	.L.str.22
	.quad	.L.str.139
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_swatch_background_actions, 392

	.type	context_foreground_red_actions,@object # @context_foreground_red_actions
	.section	.rodata,"a",@progbits
	.align	16
context_foreground_red_actions:
	.quad	.L.str.140
	.quad	.L.str.141
	.quad	.L.str.142
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.143
	.quad	.L.str.141
	.quad	.L.str.144
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.145
	.quad	.L.str.141
	.quad	.L.str.146
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.147
	.quad	.L.str.141
	.quad	.L.str.148
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.149
	.quad	.L.str.141
	.quad	.L.str.150
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.151
	.quad	.L.str.141
	.quad	.L.str.152
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.153
	.quad	.L.str.141
	.quad	.L.str.154
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_foreground_red_actions, 392

	.type	context_foreground_green_actions,@object # @context_foreground_green_actions
	.align	16
context_foreground_green_actions:
	.quad	.L.str.155
	.quad	.L.str.156
	.quad	.L.str.157
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.158
	.quad	.L.str.156
	.quad	.L.str.159
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.160
	.quad	.L.str.156
	.quad	.L.str.161
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.162
	.quad	.L.str.156
	.quad	.L.str.163
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.164
	.quad	.L.str.156
	.quad	.L.str.165
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.166
	.quad	.L.str.156
	.quad	.L.str.167
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.168
	.quad	.L.str.156
	.quad	.L.str.169
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_foreground_green_actions, 392

	.type	context_foreground_blue_actions,@object # @context_foreground_blue_actions
	.align	16
context_foreground_blue_actions:
	.quad	.L.str.170
	.quad	.L.str.171
	.quad	.L.str.172
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.173
	.quad	.L.str.171
	.quad	.L.str.174
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.175
	.quad	.L.str.171
	.quad	.L.str.176
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.177
	.quad	.L.str.171
	.quad	.L.str.178
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.179
	.quad	.L.str.171
	.quad	.L.str.180
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.181
	.quad	.L.str.171
	.quad	.L.str.182
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.183
	.quad	.L.str.171
	.quad	.L.str.184
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_foreground_blue_actions, 392

	.type	context_foreground_hue_actions,@object # @context_foreground_hue_actions
	.align	16
context_foreground_hue_actions:
	.quad	.L.str.185
	.quad	.L.str.186
	.quad	.L.str.187
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.188
	.quad	.L.str.186
	.quad	.L.str.189
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.190
	.quad	.L.str.186
	.quad	.L.str.191
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.192
	.quad	.L.str.186
	.quad	.L.str.193
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.194
	.quad	.L.str.186
	.quad	.L.str.195
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.196
	.quad	.L.str.186
	.quad	.L.str.197
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.198
	.quad	.L.str.186
	.quad	.L.str.199
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_foreground_hue_actions, 392

	.type	context_foreground_saturation_actions,@object # @context_foreground_saturation_actions
	.align	16
context_foreground_saturation_actions:
	.quad	.L.str.200
	.quad	.L.str.186
	.quad	.L.str.201
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.202
	.quad	.L.str.186
	.quad	.L.str.203
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.204
	.quad	.L.str.186
	.quad	.L.str.205
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.206
	.quad	.L.str.186
	.quad	.L.str.207
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.208
	.quad	.L.str.186
	.quad	.L.str.209
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.210
	.quad	.L.str.186
	.quad	.L.str.211
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.212
	.quad	.L.str.186
	.quad	.L.str.213
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_foreground_saturation_actions, 392

	.type	context_foreground_value_actions,@object # @context_foreground_value_actions
	.align	16
context_foreground_value_actions:
	.quad	.L.str.214
	.quad	.L.str.186
	.quad	.L.str.215
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.216
	.quad	.L.str.186
	.quad	.L.str.217
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.218
	.quad	.L.str.186
	.quad	.L.str.219
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.220
	.quad	.L.str.186
	.quad	.L.str.221
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.222
	.quad	.L.str.186
	.quad	.L.str.223
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.224
	.quad	.L.str.186
	.quad	.L.str.225
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.226
	.quad	.L.str.186
	.quad	.L.str.227
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_foreground_value_actions, 392

	.type	context_background_red_actions,@object # @context_background_red_actions
	.align	16
context_background_red_actions:
	.quad	.L.str.228
	.quad	.L.str.141
	.quad	.L.str.229
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.230
	.quad	.L.str.141
	.quad	.L.str.231
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.232
	.quad	.L.str.141
	.quad	.L.str.233
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.234
	.quad	.L.str.141
	.quad	.L.str.235
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.236
	.quad	.L.str.141
	.quad	.L.str.237
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.238
	.quad	.L.str.141
	.quad	.L.str.239
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.240
	.quad	.L.str.141
	.quad	.L.str.241
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_background_red_actions, 392

	.type	context_background_green_actions,@object # @context_background_green_actions
	.align	16
context_background_green_actions:
	.quad	.L.str.242
	.quad	.L.str.156
	.quad	.L.str.243
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.244
	.quad	.L.str.156
	.quad	.L.str.245
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.246
	.quad	.L.str.156
	.quad	.L.str.247
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.248
	.quad	.L.str.156
	.quad	.L.str.249
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.250
	.quad	.L.str.156
	.quad	.L.str.251
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.252
	.quad	.L.str.156
	.quad	.L.str.253
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.254
	.quad	.L.str.156
	.quad	.L.str.255
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_background_green_actions, 392

	.type	context_background_blue_actions,@object # @context_background_blue_actions
	.align	16
context_background_blue_actions:
	.quad	.L.str.256
	.quad	.L.str.171
	.quad	.L.str.257
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.258
	.quad	.L.str.171
	.quad	.L.str.259
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.260
	.quad	.L.str.171
	.quad	.L.str.261
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.262
	.quad	.L.str.171
	.quad	.L.str.263
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.264
	.quad	.L.str.171
	.quad	.L.str.265
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.266
	.quad	.L.str.171
	.quad	.L.str.267
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.268
	.quad	.L.str.171
	.quad	.L.str.269
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_background_blue_actions, 392

	.type	context_background_hue_actions,@object # @context_background_hue_actions
	.align	16
context_background_hue_actions:
	.quad	.L.str.270
	.quad	.L.str.186
	.quad	.L.str.271
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.272
	.quad	.L.str.186
	.quad	.L.str.273
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.274
	.quad	.L.str.186
	.quad	.L.str.275
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.276
	.quad	.L.str.186
	.quad	.L.str.277
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.278
	.quad	.L.str.186
	.quad	.L.str.279
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.280
	.quad	.L.str.186
	.quad	.L.str.281
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.282
	.quad	.L.str.186
	.quad	.L.str.283
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_background_hue_actions, 392

	.type	context_background_saturation_actions,@object # @context_background_saturation_actions
	.align	16
context_background_saturation_actions:
	.quad	.L.str.284
	.quad	.L.str.186
	.quad	.L.str.285
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.286
	.quad	.L.str.186
	.quad	.L.str.287
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.288
	.quad	.L.str.186
	.quad	.L.str.289
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.290
	.quad	.L.str.186
	.quad	.L.str.291
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.292
	.quad	.L.str.186
	.quad	.L.str.293
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.294
	.quad	.L.str.186
	.quad	.L.str.295
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.296
	.quad	.L.str.186
	.quad	.L.str.297
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_background_saturation_actions, 392

	.type	context_background_value_actions,@object # @context_background_value_actions
	.align	16
context_background_value_actions:
	.quad	.L.str.298
	.quad	.L.str.186
	.quad	.L.str.299
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.300
	.quad	.L.str.186
	.quad	.L.str.301
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.302
	.quad	.L.str.186
	.quad	.L.str.303
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.304
	.quad	.L.str.186
	.quad	.L.str.305
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.306
	.quad	.L.str.186
	.quad	.L.str.307
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.308
	.quad	.L.str.186
	.quad	.L.str.309
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.310
	.quad	.L.str.186
	.quad	.L.str.311
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_background_value_actions, 392

	.type	context_opacity_actions,@object # @context_opacity_actions
	.align	16
context_opacity_actions:
	.quad	.L.str.312
	.quad	.L.str.7
	.quad	.L.str.313
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.314
	.quad	.L.str.7
	.quad	.L.str.315
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.316
	.quad	.L.str.7
	.quad	.L.str.317
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.318
	.quad	.L.str.7
	.quad	.L.str.319
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.320
	.quad	.L.str.7
	.quad	.L.str.321
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.322
	.quad	.L.str.7
	.quad	.L.str.323
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.324
	.quad	.L.str.7
	.quad	.L.str.325
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_opacity_actions, 392

	.type	context_paint_mode_actions,@object # @context_paint_mode_actions
	.align	16
context_paint_mode_actions:
	.quad	.L.str.326
	.quad	.L.str.10
	.quad	.L.str.327
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.328
	.quad	.L.str.10
	.quad	.L.str.329
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.330
	.quad	.L.str.10
	.quad	.L.str.331
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.332
	.quad	.L.str.10
	.quad	.L.str.333
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.size	context_paint_mode_actions, 224

	.type	context_tool_select_actions,@object # @context_tool_select_actions
	.align	16
context_tool_select_actions:
	.quad	.L.str.334
	.quad	.L.str.13
	.quad	.L.str.335
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.336
	.quad	.L.str.13
	.quad	.L.str.337
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.338
	.quad	.L.str.13
	.quad	.L.str.339
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.340
	.quad	.L.str.13
	.quad	.L.str.341
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.342
	.quad	.L.str.13
	.quad	.L.str.343
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.size	context_tool_select_actions, 280

	.type	context_brush_select_actions,@object # @context_brush_select_actions
	.align	16
context_brush_select_actions:
	.quad	.L.str.344
	.quad	.L.str.16
	.quad	.L.str.345
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.346
	.quad	.L.str.16
	.quad	.L.str.347
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.348
	.quad	.L.str.16
	.quad	.L.str.349
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.350
	.quad	.L.str.16
	.quad	.L.str.351
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.352
	.quad	.L.str.16
	.quad	.L.str.353
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.size	context_brush_select_actions, 280

	.type	context_pattern_select_actions,@object # @context_pattern_select_actions
	.align	16
context_pattern_select_actions:
	.quad	.L.str.354
	.quad	.L.str.19
	.quad	.L.str.355
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.356
	.quad	.L.str.19
	.quad	.L.str.357
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.358
	.quad	.L.str.19
	.quad	.L.str.359
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.360
	.quad	.L.str.19
	.quad	.L.str.361
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.362
	.quad	.L.str.19
	.quad	.L.str.363
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.size	context_pattern_select_actions, 280

	.type	context_palette_select_actions,@object # @context_palette_select_actions
	.align	16
context_palette_select_actions:
	.quad	.L.str.364
	.quad	.L.str.22
	.quad	.L.str.365
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.366
	.quad	.L.str.22
	.quad	.L.str.367
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.368
	.quad	.L.str.22
	.quad	.L.str.369
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.370
	.quad	.L.str.22
	.quad	.L.str.371
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.372
	.quad	.L.str.22
	.quad	.L.str.373
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.size	context_palette_select_actions, 280

	.type	context_gradient_select_actions,@object # @context_gradient_select_actions
	.align	16
context_gradient_select_actions:
	.quad	.L.str.374
	.quad	.L.str.25
	.quad	.L.str.375
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.376
	.quad	.L.str.25
	.quad	.L.str.377
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.378
	.quad	.L.str.25
	.quad	.L.str.379
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.380
	.quad	.L.str.25
	.quad	.L.str.381
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.382
	.quad	.L.str.25
	.quad	.L.str.383
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.size	context_gradient_select_actions, 280

	.type	context_font_select_actions,@object # @context_font_select_actions
	.align	16
context_font_select_actions:
	.quad	.L.str.384
	.quad	.L.str.28
	.quad	.L.str.385
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.386
	.quad	.L.str.28
	.quad	.L.str.387
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.388
	.quad	.L.str.28
	.quad	.L.str.389
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.390
	.quad	.L.str.28
	.quad	.L.str.391
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.392
	.quad	.L.str.28
	.quad	.L.str.393
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.size	context_font_select_actions, 280

	.type	context_brush_spacing_actions,@object # @context_brush_spacing_actions
	.align	16
context_brush_spacing_actions:
	.quad	.L.str.394
	.quad	.L.str.16
	.quad	.L.str.395
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.396
	.quad	.L.str.16
	.quad	.L.str.397
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.398
	.quad	.L.str.16
	.quad	.L.str.399
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.400
	.quad	.L.str.16
	.quad	.L.str.401
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.402
	.quad	.L.str.16
	.quad	.L.str.403
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.404
	.quad	.L.str.16
	.quad	.L.str.405
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.406
	.quad	.L.str.16
	.quad	.L.str.407
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_brush_spacing_actions, 392

	.type	context_brush_shape_actions,@object # @context_brush_shape_actions
	.align	16
context_brush_shape_actions:
	.quad	.L.str.408
	.quad	.L.str.16
	.quad	.L.str.409
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.410
	.quad	.L.str.16
	.quad	.L.str.411
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.412
	.quad	.L.str.16
	.quad	.L.str.413
	.quad	0
	.quad	0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	0
	.size	context_brush_shape_actions, 168

	.type	context_brush_radius_actions,@object # @context_brush_radius_actions
	.align	16
context_brush_radius_actions:
	.quad	.L.str.414
	.quad	.L.str.16
	.quad	.L.str.415
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.416
	.quad	.L.str.16
	.quad	.L.str.417
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.418
	.quad	.L.str.16
	.quad	.L.str.419
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.420
	.quad	.L.str.16
	.quad	.L.str.421
	.quad	0
	.quad	0
	.long	4294967292              # 0xfffffffc
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.422
	.quad	.L.str.16
	.quad	.L.str.423
	.quad	0
	.quad	0
	.long	4294967291              # 0xfffffffb
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.424
	.quad	.L.str.16
	.quad	.L.str.425
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.426
	.quad	.L.str.16
	.quad	.L.str.427
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.428
	.quad	.L.str.16
	.quad	.L.str.429
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.430
	.quad	.L.str.16
	.quad	.L.str.431
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.432
	.quad	.L.str.16
	.quad	.L.str.433
	.quad	0
	.quad	0
	.long	4294967286              # 0xfffffff6
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.434
	.quad	.L.str.16
	.quad	.L.str.435
	.quad	0
	.quad	0
	.long	4294967285              # 0xfffffff5
	.long	0                       # 0x0
	.quad	0
	.size	context_brush_radius_actions, 616

	.type	context_brush_spikes_actions,@object # @context_brush_spikes_actions
	.align	16
context_brush_spikes_actions:
	.quad	.L.str.436
	.quad	.L.str.16
	.quad	.L.str.437
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.438
	.quad	.L.str.16
	.quad	.L.str.439
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.440
	.quad	.L.str.16
	.quad	.L.str.441
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.442
	.quad	.L.str.16
	.quad	.L.str.443
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.444
	.quad	.L.str.16
	.quad	.L.str.445
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.446
	.quad	.L.str.16
	.quad	.L.str.447
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.448
	.quad	.L.str.16
	.quad	.L.str.449
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_brush_spikes_actions, 392

	.type	context_brush_hardness_actions,@object # @context_brush_hardness_actions
	.align	16
context_brush_hardness_actions:
	.quad	.L.str.450
	.quad	.L.str.16
	.quad	.L.str.451
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.452
	.quad	.L.str.16
	.quad	.L.str.453
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.454
	.quad	.L.str.16
	.quad	.L.str.455
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.456
	.quad	.L.str.16
	.quad	.L.str.457
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.458
	.quad	.L.str.16
	.quad	.L.str.459
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.460
	.quad	.L.str.16
	.quad	.L.str.461
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.462
	.quad	.L.str.16
	.quad	.L.str.463
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_brush_hardness_actions, 392

	.type	context_brush_aspect_actions,@object # @context_brush_aspect_actions
	.align	16
context_brush_aspect_actions:
	.quad	.L.str.464
	.quad	.L.str.16
	.quad	.L.str.465
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.466
	.quad	.L.str.16
	.quad	.L.str.467
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.468
	.quad	.L.str.16
	.quad	.L.str.469
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.470
	.quad	.L.str.16
	.quad	.L.str.471
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.472
	.quad	.L.str.16
	.quad	.L.str.473
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.474
	.quad	.L.str.16
	.quad	.L.str.475
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.476
	.quad	.L.str.16
	.quad	.L.str.477
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_brush_aspect_actions, 392

	.type	context_brush_angle_actions,@object # @context_brush_angle_actions
	.align	16
context_brush_angle_actions:
	.quad	.L.str.478
	.quad	.L.str.16
	.quad	.L.str.479
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.480
	.quad	.L.str.16
	.quad	.L.str.481
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.482
	.quad	.L.str.16
	.quad	.L.str.483
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.484
	.quad	.L.str.16
	.quad	.L.str.485
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.486
	.quad	.L.str.16
	.quad	.L.str.487
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.488
	.quad	.L.str.16
	.quad	.L.str.489
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.490
	.quad	.L.str.16
	.quad	.L.str.491
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	context_brush_angle_actions, 392

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"context-menu"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"_Context"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"context-colors-menu"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-default-colors"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"_Colors"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"context-opacity-menu"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-transparency"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"_Opacity"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"context-paint-mode-menu"
	.size	.L.str.9, 24

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-tool-pencil"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Paint _Mode"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"context-tool-menu"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-tools"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"_Tool"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"context-brush-menu"
	.size	.L.str.15, 19

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-tool-paintbrush"
	.size	.L.str.16, 21

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"_Brush"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"context-pattern-menu"
	.size	.L.str.18, 21

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-tool-bucket-fill"
	.size	.L.str.19, 22

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"_Pattern"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"context-palette-menu"
	.size	.L.str.21, 21

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gtk-select-color"
	.size	.L.str.22, 17

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"_Palette"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"context-gradient-menu"
	.size	.L.str.24, 22

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-tool-blend"
	.size	.L.str.25, 16

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"_Gradient"
	.size	.L.str.26, 10

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"context-font-menu"
	.size	.L.str.27, 18

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gtk-select-font"
	.size	.L.str.28, 16

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"_Font"
	.size	.L.str.29, 6

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"context-brush-shape-menu"
	.size	.L.str.30, 25

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"_Shape"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"context-brush-radius-menu"
	.size	.L.str.32, 26

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"_Radius"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"context-brush-spikes-menu"
	.size	.L.str.34, 26

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"S_pikes"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"context-brush-hardness-menu"
	.size	.L.str.36, 28

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"_Hardness"
	.size	.L.str.37, 10

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"context-brush-aspect-menu"
	.size	.L.str.38, 26

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"_Aspect Ratio"
	.size	.L.str.39, 14

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"context-brush-angle-menu"
	.size	.L.str.40, 25

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"A_ngle"
	.size	.L.str.41, 7

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"context-colors-default"
	.size	.L.str.42, 23

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"_Default Colors"
	.size	.L.str.43, 16

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"D"
	.size	.L.str.44, 2

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Set foreground color to black, background color to white"
	.size	.L.str.45, 57

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-toolbox-default-colors"
	.size	.L.str.46, 28

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"context-colors-swap"
	.size	.L.str.47, 20

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gimp-swap-colors"
	.size	.L.str.48, 17

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"S_wap Colors"
	.size	.L.str.49, 13

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"X"
	.size	.L.str.50, 2

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Exchange foreground and background colors"
	.size	.L.str.51, 42

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp-toolbox-swap-colors"
	.size	.L.str.52, 25

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"context-palette-foreground-set"
	.size	.L.str.53, 31

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Foreground Palette Color Set"
	.size	.L.str.54, 29

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"context-palette-foreground-first"
	.size	.L.str.55, 33

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Foreground Palette Color First"
	.size	.L.str.56, 31

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"context-palette-foreground-last"
	.size	.L.str.57, 32

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Foreground Palette Color Last"
	.size	.L.str.58, 30

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"context-palette-foreground-previous"
	.size	.L.str.59, 36

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Foreground Palette Color Previous"
	.size	.L.str.60, 34

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"context-palette-foreground-next"
	.size	.L.str.61, 32

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Foreground Palette Color Next"
	.size	.L.str.62, 30

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"context-palette-foreground-previous-skip"
	.size	.L.str.63, 41

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Foreground Palette Color Skip Back"
	.size	.L.str.64, 35

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"context-palette-foreground-next-skip"
	.size	.L.str.65, 37

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Foreground Palette Color Skip Forward"
	.size	.L.str.66, 38

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"context-palette-background-set"
	.size	.L.str.67, 31

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Background Palette Color Set"
	.size	.L.str.68, 29

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"context-palette-background-first"
	.size	.L.str.69, 33

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Background Palette Color First"
	.size	.L.str.70, 31

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"context-palette-background-last"
	.size	.L.str.71, 32

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Background Palette Color Last"
	.size	.L.str.72, 30

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"context-palette-background-previous"
	.size	.L.str.73, 36

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Background Palette Color Previous"
	.size	.L.str.74, 34

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"context-palette-background-next"
	.size	.L.str.75, 32

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Background Palette Color Next"
	.size	.L.str.76, 30

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"context-palette-background-previous-skip"
	.size	.L.str.77, 41

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Background Palette Color Skip Back"
	.size	.L.str.78, 35

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"context-palette-background-next-skip"
	.size	.L.str.79, 37

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Background Palette Color Skip Forward"
	.size	.L.str.80, 38

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"context-colormap-foreground-set"
	.size	.L.str.81, 32

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"gimp-colormap"
	.size	.L.str.82, 14

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Foreground Colormap Color Set"
	.size	.L.str.83, 30

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"context-colormap-foreground-first"
	.size	.L.str.84, 34

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Foreground Colormap Color First"
	.size	.L.str.85, 32

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"context-colormap-foreground-last"
	.size	.L.str.86, 33

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Foreground Colormap Color Last"
	.size	.L.str.87, 31

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"context-colormap-foreground-previous"
	.size	.L.str.88, 37

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Foreground Colormap Color Previous"
	.size	.L.str.89, 35

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"context-colormap-foreground-next"
	.size	.L.str.90, 33

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Foreground Colormap Color Next"
	.size	.L.str.91, 31

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"context-colormap-foreground-previous-skip"
	.size	.L.str.92, 42

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Foreground Colormap Color Skip Back"
	.size	.L.str.93, 36

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"context-colormap-foreground-next-skip"
	.size	.L.str.94, 38

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Foreground Colormap Color Skip Forward"
	.size	.L.str.95, 39

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"context-colormap-background-set"
	.size	.L.str.96, 32

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Background Colormap Color Set"
	.size	.L.str.97, 30

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"context-colormap-background-first"
	.size	.L.str.98, 34

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Background Colormap Color First"
	.size	.L.str.99, 32

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"context-colormap-background-last"
	.size	.L.str.100, 33

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Background Colormap Color Last"
	.size	.L.str.101, 31

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"context-colormap-background-previous"
	.size	.L.str.102, 37

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"Background Colormap Color Previous"
	.size	.L.str.103, 35

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"context-colormap-background-next"
	.size	.L.str.104, 33

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Background Colormap Color Next"
	.size	.L.str.105, 31

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"context-colormap-background-previous-skip"
	.size	.L.str.106, 42

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Background Colormap Color Skip Back"
	.size	.L.str.107, 36

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"context-colormap-background-next-skip"
	.size	.L.str.108, 38

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"Background Colormap Color Skip Forward"
	.size	.L.str.109, 39

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"context-swatch-foreground-set"
	.size	.L.str.110, 30

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Foreground Swatch Color Set"
	.size	.L.str.111, 28

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"context-swatch-foreground-first"
	.size	.L.str.112, 32

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"Foreground Swatch Color First"
	.size	.L.str.113, 30

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"context-swatch-foreground-last"
	.size	.L.str.114, 31

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"Foreground Swatch Color Last"
	.size	.L.str.115, 29

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"context-swatch-foreground-previous"
	.size	.L.str.116, 35

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Foreground Swatch Color Previous"
	.size	.L.str.117, 33

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"9"
	.size	.L.str.118, 2

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"context-swatch-foreground-next"
	.size	.L.str.119, 31

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"Foreground Swatch Color Next"
	.size	.L.str.120, 29

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"0"
	.size	.L.str.121, 2

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"context-swatch-foreground-previous-skip"
	.size	.L.str.122, 40

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"Foreground Swatch Color Skip Back"
	.size	.L.str.123, 34

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"context-swatch-foreground-next-skip"
	.size	.L.str.124, 36

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"Foreground Swatch Color Skip Forward"
	.size	.L.str.125, 37

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"context-swatch-background-set"
	.size	.L.str.126, 30

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"Background Swatch Color Set"
	.size	.L.str.127, 28

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"context-swatch-background-first"
	.size	.L.str.128, 32

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"Background Swatch Color First"
	.size	.L.str.129, 30

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"context-swatch-background-last"
	.size	.L.str.130, 31

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"Background Swatch Color Last"
	.size	.L.str.131, 29

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"context-swatch-background-previous"
	.size	.L.str.132, 35

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"Background Swatch Color Previous"
	.size	.L.str.133, 33

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"context-swatch-background-next"
	.size	.L.str.134, 31

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"Background Swatch Color Next"
	.size	.L.str.135, 29

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"context-swatch-background-previous-skip"
	.size	.L.str.136, 40

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"Background Swatch Color Skip Back"
	.size	.L.str.137, 34

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"context-swatch-background-next-skip"
	.size	.L.str.138, 36

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"Background Swatch Color Skip Forward"
	.size	.L.str.139, 37

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"context-foreground-red-set"
	.size	.L.str.140, 27

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"gimp-channel-red"
	.size	.L.str.141, 17

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"Foreground Red Set"
	.size	.L.str.142, 19

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"context-foreground-red-minimum"
	.size	.L.str.143, 31

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"Foreground Red Minimum"
	.size	.L.str.144, 23

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"context-foreground-red-maximum"
	.size	.L.str.145, 31

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"Foreground Red Maximum"
	.size	.L.str.146, 23

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"context-foreground-red-decrease"
	.size	.L.str.147, 32

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"Foreground Red Decrease"
	.size	.L.str.148, 24

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"context-foreground-red-increase"
	.size	.L.str.149, 32

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"Foreground Red Increase"
	.size	.L.str.150, 24

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"context-foreground-red-decrease-skip"
	.size	.L.str.151, 37

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"Foreground Red Decrease 10%"
	.size	.L.str.152, 28

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"context-foreground-red-increase-skip"
	.size	.L.str.153, 37

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"Foreground Red Increase 10%"
	.size	.L.str.154, 28

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"context-foreground-green-set"
	.size	.L.str.155, 29

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"gimp-channel-green"
	.size	.L.str.156, 19

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"Foreground Green Set"
	.size	.L.str.157, 21

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"context-foreground-green-minimum"
	.size	.L.str.158, 33

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"Foreground Green Minimum"
	.size	.L.str.159, 25

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"context-foreground-green-maximum"
	.size	.L.str.160, 33

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"Foreground Green Maximum"
	.size	.L.str.161, 25

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"context-foreground-green-decrease"
	.size	.L.str.162, 34

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"Foreground Green Decrease"
	.size	.L.str.163, 26

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"context-foreground-green-increase"
	.size	.L.str.164, 34

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"Foreground Green Increase"
	.size	.L.str.165, 26

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"context-foreground-green-decrease-skip"
	.size	.L.str.166, 39

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"Foreground Green Decrease 10%"
	.size	.L.str.167, 30

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"context-foreground-green-increase-skip"
	.size	.L.str.168, 39

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"Foreground Green Increase 10%"
	.size	.L.str.169, 30

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"context-foreground-blue-set"
	.size	.L.str.170, 28

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"gimp-channel-blue"
	.size	.L.str.171, 18

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"Foreground Blue Set"
	.size	.L.str.172, 20

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"context-foreground-blue-minimum"
	.size	.L.str.173, 32

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"Foreground Blue Minimum"
	.size	.L.str.174, 24

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"context-foreground-blue-maximum"
	.size	.L.str.175, 32

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"Foreground Blue Maximum"
	.size	.L.str.176, 24

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"context-foreground-blue-decrease"
	.size	.L.str.177, 33

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"Foreground Blue Decrease"
	.size	.L.str.178, 25

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"context-foreground-blue-increase"
	.size	.L.str.179, 33

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"Foreground Blue Increase"
	.size	.L.str.180, 25

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"context-foreground-blue-decrease-skip"
	.size	.L.str.181, 38

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"Foreground Blue Decrease 10%"
	.size	.L.str.182, 29

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"context-foreground-blue-increase-skip"
	.size	.L.str.183, 38

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"Foreground Blue Increase 10%"
	.size	.L.str.184, 29

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"context-foreground-hue-set"
	.size	.L.str.185, 27

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"gimp-tool-hue-saturation"
	.size	.L.str.186, 25

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"Foreground Hue Set"
	.size	.L.str.187, 19

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"context-foreground-hue-minimum"
	.size	.L.str.188, 31

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"Foreground Hue Minimum"
	.size	.L.str.189, 23

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"context-foreground-hue-maximum"
	.size	.L.str.190, 31

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"Foreground Hue Maximum"
	.size	.L.str.191, 23

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"context-foreground-hue-decrease"
	.size	.L.str.192, 32

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"Foreground Hue Decrease"
	.size	.L.str.193, 24

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"context-foreground-hue-increase"
	.size	.L.str.194, 32

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"Foreground Hue Increase"
	.size	.L.str.195, 24

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"context-foreground-hue-decrease-skip"
	.size	.L.str.196, 37

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"Foreground Hue Decrease 10%"
	.size	.L.str.197, 28

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"context-foreground-hue-increase-skip"
	.size	.L.str.198, 37

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"Foreground Hue Increase 10%"
	.size	.L.str.199, 28

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"context-foreground-saturation-set"
	.size	.L.str.200, 34

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"Foreground Saturation Set"
	.size	.L.str.201, 26

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"context-foreground-saturation-minimum"
	.size	.L.str.202, 38

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"Foreground Saturation Minimum"
	.size	.L.str.203, 30

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"context-foreground-saturation-maximum"
	.size	.L.str.204, 38

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"Foreground Saturation Maximum"
	.size	.L.str.205, 30

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"context-foreground-saturation-decrease"
	.size	.L.str.206, 39

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"Foreground Saturation Decrease"
	.size	.L.str.207, 31

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"context-foreground-saturation-increase"
	.size	.L.str.208, 39

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"Foreground Saturation Increase"
	.size	.L.str.209, 31

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"context-foreground-saturation-decrease-skip"
	.size	.L.str.210, 44

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"Foreground Saturation Decrease 10%"
	.size	.L.str.211, 35

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"context-foreground-saturation-increase-skip"
	.size	.L.str.212, 44

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"Foreground Saturation Increase 10%"
	.size	.L.str.213, 35

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"context-foreground-value-set"
	.size	.L.str.214, 29

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"Foreground Value Set"
	.size	.L.str.215, 21

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"context-foreground-value-minimum"
	.size	.L.str.216, 33

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"Foreground Value Minimum"
	.size	.L.str.217, 25

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"context-foreground-value-maximum"
	.size	.L.str.218, 33

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"Foreground Value Maximum"
	.size	.L.str.219, 25

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"context-foreground-value-decrease"
	.size	.L.str.220, 34

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"Foreground Value Decrease"
	.size	.L.str.221, 26

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"context-foreground-value-increase"
	.size	.L.str.222, 34

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"Foreground Value Increase"
	.size	.L.str.223, 26

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"context-foreground-value-decrease-skip"
	.size	.L.str.224, 39

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"Foreground Value Decrease 10%"
	.size	.L.str.225, 30

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"context-foreground-value-increase-skip"
	.size	.L.str.226, 39

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"Foreground Value Increase 10%"
	.size	.L.str.227, 30

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"context-background-red-set"
	.size	.L.str.228, 27

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"Background Red Set"
	.size	.L.str.229, 19

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"context-background-red-minimum"
	.size	.L.str.230, 31

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"Background Red Minimum"
	.size	.L.str.231, 23

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"context-background-red-maximum"
	.size	.L.str.232, 31

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"Background Red Maximum"
	.size	.L.str.233, 23

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"context-background-red-decrease"
	.size	.L.str.234, 32

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"Background Red Decrease"
	.size	.L.str.235, 24

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"context-background-red-increase"
	.size	.L.str.236, 32

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"Background Red Increase"
	.size	.L.str.237, 24

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"context-background-red-decrease-skip"
	.size	.L.str.238, 37

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"Background Red Decrease 10%"
	.size	.L.str.239, 28

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"context-background-red-increase-skip"
	.size	.L.str.240, 37

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"Background Red Increase 10%"
	.size	.L.str.241, 28

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"context-background-green-set"
	.size	.L.str.242, 29

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"Background Green Set"
	.size	.L.str.243, 21

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"context-background-green-minimum"
	.size	.L.str.244, 33

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"Background Green Minimum"
	.size	.L.str.245, 25

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"context-background-green-maximum"
	.size	.L.str.246, 33

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"Background Green Maximum"
	.size	.L.str.247, 25

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"context-background-green-decrease"
	.size	.L.str.248, 34

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"Background Green Decrease"
	.size	.L.str.249, 26

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"context-background-green-increase"
	.size	.L.str.250, 34

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"Background Green Increase"
	.size	.L.str.251, 26

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"context-background-green-decrease-skip"
	.size	.L.str.252, 39

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"Background Green Decrease 10%"
	.size	.L.str.253, 30

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"context-background-green-increase-skip"
	.size	.L.str.254, 39

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"Background Green Increase 10%"
	.size	.L.str.255, 30

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"context-background-blue-set"
	.size	.L.str.256, 28

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"Background Blue Set"
	.size	.L.str.257, 20

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"context-background-blue-minimum"
	.size	.L.str.258, 32

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"Background Blue Minimum"
	.size	.L.str.259, 24

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"context-background-blue-maximum"
	.size	.L.str.260, 32

	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"Background Blue Maximum"
	.size	.L.str.261, 24

	.type	.L.str.262,@object      # @.str.262
.L.str.262:
	.asciz	"context-background-blue-decrease"
	.size	.L.str.262, 33

	.type	.L.str.263,@object      # @.str.263
.L.str.263:
	.asciz	"Background Blue Decrease"
	.size	.L.str.263, 25

	.type	.L.str.264,@object      # @.str.264
.L.str.264:
	.asciz	"context-background-blue-increase"
	.size	.L.str.264, 33

	.type	.L.str.265,@object      # @.str.265
.L.str.265:
	.asciz	"Background Blue Increase"
	.size	.L.str.265, 25

	.type	.L.str.266,@object      # @.str.266
.L.str.266:
	.asciz	"context-background-blue-decrease-skip"
	.size	.L.str.266, 38

	.type	.L.str.267,@object      # @.str.267
.L.str.267:
	.asciz	"Background Blue Decrease 10%"
	.size	.L.str.267, 29

	.type	.L.str.268,@object      # @.str.268
.L.str.268:
	.asciz	"context-background-blue-increase-skip"
	.size	.L.str.268, 38

	.type	.L.str.269,@object      # @.str.269
.L.str.269:
	.asciz	"Background Blue Increase 10%"
	.size	.L.str.269, 29

	.type	.L.str.270,@object      # @.str.270
.L.str.270:
	.asciz	"context-background-hue-set"
	.size	.L.str.270, 27

	.type	.L.str.271,@object      # @.str.271
.L.str.271:
	.asciz	"Background Hue Set"
	.size	.L.str.271, 19

	.type	.L.str.272,@object      # @.str.272
.L.str.272:
	.asciz	"context-background-hue-minimum"
	.size	.L.str.272, 31

	.type	.L.str.273,@object      # @.str.273
.L.str.273:
	.asciz	"Background Hue Minimum"
	.size	.L.str.273, 23

	.type	.L.str.274,@object      # @.str.274
.L.str.274:
	.asciz	"context-background-hue-maximum"
	.size	.L.str.274, 31

	.type	.L.str.275,@object      # @.str.275
.L.str.275:
	.asciz	"Background Hue Maximum"
	.size	.L.str.275, 23

	.type	.L.str.276,@object      # @.str.276
.L.str.276:
	.asciz	"context-background-hue-decrease"
	.size	.L.str.276, 32

	.type	.L.str.277,@object      # @.str.277
.L.str.277:
	.asciz	"Background Hue Decrease"
	.size	.L.str.277, 24

	.type	.L.str.278,@object      # @.str.278
.L.str.278:
	.asciz	"context-background-hue-increase"
	.size	.L.str.278, 32

	.type	.L.str.279,@object      # @.str.279
.L.str.279:
	.asciz	"Background Hue Increase"
	.size	.L.str.279, 24

	.type	.L.str.280,@object      # @.str.280
.L.str.280:
	.asciz	"context-background-hue-decrease-skip"
	.size	.L.str.280, 37

	.type	.L.str.281,@object      # @.str.281
.L.str.281:
	.asciz	"Background Hue Decrease 10%"
	.size	.L.str.281, 28

	.type	.L.str.282,@object      # @.str.282
.L.str.282:
	.asciz	"context-background-hue-increase-skip"
	.size	.L.str.282, 37

	.type	.L.str.283,@object      # @.str.283
.L.str.283:
	.asciz	"Background Hue Increase 10%"
	.size	.L.str.283, 28

	.type	.L.str.284,@object      # @.str.284
.L.str.284:
	.asciz	"context-background-saturation-set"
	.size	.L.str.284, 34

	.type	.L.str.285,@object      # @.str.285
.L.str.285:
	.asciz	"Background Saturation Set"
	.size	.L.str.285, 26

	.type	.L.str.286,@object      # @.str.286
.L.str.286:
	.asciz	"context-background-saturation-minimum"
	.size	.L.str.286, 38

	.type	.L.str.287,@object      # @.str.287
.L.str.287:
	.asciz	"Background Saturation Minimum"
	.size	.L.str.287, 30

	.type	.L.str.288,@object      # @.str.288
.L.str.288:
	.asciz	"context-background-saturation-maximum"
	.size	.L.str.288, 38

	.type	.L.str.289,@object      # @.str.289
.L.str.289:
	.asciz	"Background Saturation Maximum"
	.size	.L.str.289, 30

	.type	.L.str.290,@object      # @.str.290
.L.str.290:
	.asciz	"context-background-saturation-decrease"
	.size	.L.str.290, 39

	.type	.L.str.291,@object      # @.str.291
.L.str.291:
	.asciz	"Background Saturation Decrease"
	.size	.L.str.291, 31

	.type	.L.str.292,@object      # @.str.292
.L.str.292:
	.asciz	"context-background-saturation-increase"
	.size	.L.str.292, 39

	.type	.L.str.293,@object      # @.str.293
.L.str.293:
	.asciz	"Background Saturation Increase"
	.size	.L.str.293, 31

	.type	.L.str.294,@object      # @.str.294
.L.str.294:
	.asciz	"context-background-saturation-decrease-skip"
	.size	.L.str.294, 44

	.type	.L.str.295,@object      # @.str.295
.L.str.295:
	.asciz	"Background Saturation Decrease 10%"
	.size	.L.str.295, 35

	.type	.L.str.296,@object      # @.str.296
.L.str.296:
	.asciz	"context-background-saturation-increase-skip"
	.size	.L.str.296, 44

	.type	.L.str.297,@object      # @.str.297
.L.str.297:
	.asciz	"Background Saturation Increase 10%"
	.size	.L.str.297, 35

	.type	.L.str.298,@object      # @.str.298
.L.str.298:
	.asciz	"context-background-value-set"
	.size	.L.str.298, 29

	.type	.L.str.299,@object      # @.str.299
.L.str.299:
	.asciz	"Background Value Set"
	.size	.L.str.299, 21

	.type	.L.str.300,@object      # @.str.300
.L.str.300:
	.asciz	"context-background-value-minimum"
	.size	.L.str.300, 33

	.type	.L.str.301,@object      # @.str.301
.L.str.301:
	.asciz	"Background Value Minimum"
	.size	.L.str.301, 25

	.type	.L.str.302,@object      # @.str.302
.L.str.302:
	.asciz	"context-background-value-maximum"
	.size	.L.str.302, 33

	.type	.L.str.303,@object      # @.str.303
.L.str.303:
	.asciz	"Background Value Maximum"
	.size	.L.str.303, 25

	.type	.L.str.304,@object      # @.str.304
.L.str.304:
	.asciz	"context-background-value-decrease"
	.size	.L.str.304, 34

	.type	.L.str.305,@object      # @.str.305
.L.str.305:
	.asciz	"Background Value Decrease"
	.size	.L.str.305, 26

	.type	.L.str.306,@object      # @.str.306
.L.str.306:
	.asciz	"context-background-value-increase"
	.size	.L.str.306, 34

	.type	.L.str.307,@object      # @.str.307
.L.str.307:
	.asciz	"Background Value Increase"
	.size	.L.str.307, 26

	.type	.L.str.308,@object      # @.str.308
.L.str.308:
	.asciz	"context-background-value-decrease-skip"
	.size	.L.str.308, 39

	.type	.L.str.309,@object      # @.str.309
.L.str.309:
	.asciz	"Background Value Decrease 10%"
	.size	.L.str.309, 30

	.type	.L.str.310,@object      # @.str.310
.L.str.310:
	.asciz	"context-background-value-increase-skip"
	.size	.L.str.310, 39

	.type	.L.str.311,@object      # @.str.311
.L.str.311:
	.asciz	"Background Value Increase 10%"
	.size	.L.str.311, 30

	.type	.L.str.312,@object      # @.str.312
.L.str.312:
	.asciz	"context-opacity-set"
	.size	.L.str.312, 20

	.type	.L.str.313,@object      # @.str.313
.L.str.313:
	.asciz	"Set Transparency"
	.size	.L.str.313, 17

	.type	.L.str.314,@object      # @.str.314
.L.str.314:
	.asciz	"context-opacity-transparent"
	.size	.L.str.314, 28

	.type	.L.str.315,@object      # @.str.315
.L.str.315:
	.asciz	"Completely Transparent"
	.size	.L.str.315, 23

	.type	.L.str.316,@object      # @.str.316
.L.str.316:
	.asciz	"context-opacity-opaque"
	.size	.L.str.316, 23

	.type	.L.str.317,@object      # @.str.317
.L.str.317:
	.asciz	"Completely Opaque"
	.size	.L.str.317, 18

	.type	.L.str.318,@object      # @.str.318
.L.str.318:
	.asciz	"context-opacity-decrease"
	.size	.L.str.318, 25

	.type	.L.str.319,@object      # @.str.319
.L.str.319:
	.asciz	"More Transparent"
	.size	.L.str.319, 17

	.type	.L.str.320,@object      # @.str.320
.L.str.320:
	.asciz	"context-opacity-increase"
	.size	.L.str.320, 25

	.type	.L.str.321,@object      # @.str.321
.L.str.321:
	.asciz	"More Opaque"
	.size	.L.str.321, 12

	.type	.L.str.322,@object      # @.str.322
.L.str.322:
	.asciz	"context-opacity-decrease-skip"
	.size	.L.str.322, 30

	.type	.L.str.323,@object      # @.str.323
.L.str.323:
	.asciz	"10% More Transparent"
	.size	.L.str.323, 21

	.type	.L.str.324,@object      # @.str.324
.L.str.324:
	.asciz	"context-opacity-increase-skip"
	.size	.L.str.324, 30

	.type	.L.str.325,@object      # @.str.325
.L.str.325:
	.asciz	"10% More Opaque"
	.size	.L.str.325, 16

	.type	.L.str.326,@object      # @.str.326
.L.str.326:
	.asciz	"context-paint-mode-first"
	.size	.L.str.326, 25

	.type	.L.str.327,@object      # @.str.327
.L.str.327:
	.asciz	"First Paint Mode"
	.size	.L.str.327, 17

	.type	.L.str.328,@object      # @.str.328
.L.str.328:
	.asciz	"context-paint-mode-last"
	.size	.L.str.328, 24

	.type	.L.str.329,@object      # @.str.329
.L.str.329:
	.asciz	"Last Paint Mode"
	.size	.L.str.329, 16

	.type	.L.str.330,@object      # @.str.330
.L.str.330:
	.asciz	"context-paint-mode-previous"
	.size	.L.str.330, 28

	.type	.L.str.331,@object      # @.str.331
.L.str.331:
	.asciz	"Previous Paint Mode"
	.size	.L.str.331, 20

	.type	.L.str.332,@object      # @.str.332
.L.str.332:
	.asciz	"context-paint-mode-next"
	.size	.L.str.332, 24

	.type	.L.str.333,@object      # @.str.333
.L.str.333:
	.asciz	"Next Paint Mode"
	.size	.L.str.333, 16

	.type	.L.str.334,@object      # @.str.334
.L.str.334:
	.asciz	"context-tool-select-set"
	.size	.L.str.334, 24

	.type	.L.str.335,@object      # @.str.335
.L.str.335:
	.asciz	"Select Tool by Index"
	.size	.L.str.335, 21

	.type	.L.str.336,@object      # @.str.336
.L.str.336:
	.asciz	"context-tool-select-first"
	.size	.L.str.336, 26

	.type	.L.str.337,@object      # @.str.337
.L.str.337:
	.asciz	"First Tool"
	.size	.L.str.337, 11

	.type	.L.str.338,@object      # @.str.338
.L.str.338:
	.asciz	"context-tool-select-last"
	.size	.L.str.338, 25

	.type	.L.str.339,@object      # @.str.339
.L.str.339:
	.asciz	"Last Tool"
	.size	.L.str.339, 10

	.type	.L.str.340,@object      # @.str.340
.L.str.340:
	.asciz	"context-tool-select-previous"
	.size	.L.str.340, 29

	.type	.L.str.341,@object      # @.str.341
.L.str.341:
	.asciz	"Previous Tool"
	.size	.L.str.341, 14

	.type	.L.str.342,@object      # @.str.342
.L.str.342:
	.asciz	"context-tool-select-next"
	.size	.L.str.342, 25

	.type	.L.str.343,@object      # @.str.343
.L.str.343:
	.asciz	"Next Tool"
	.size	.L.str.343, 10

	.type	.L.str.344,@object      # @.str.344
.L.str.344:
	.asciz	"context-brush-select-set"
	.size	.L.str.344, 25

	.type	.L.str.345,@object      # @.str.345
.L.str.345:
	.asciz	"Select Brush by Index"
	.size	.L.str.345, 22

	.type	.L.str.346,@object      # @.str.346
.L.str.346:
	.asciz	"context-brush-select-first"
	.size	.L.str.346, 27

	.type	.L.str.347,@object      # @.str.347
.L.str.347:
	.asciz	"First Brush"
	.size	.L.str.347, 12

	.type	.L.str.348,@object      # @.str.348
.L.str.348:
	.asciz	"context-brush-select-last"
	.size	.L.str.348, 26

	.type	.L.str.349,@object      # @.str.349
.L.str.349:
	.asciz	"Last Brush"
	.size	.L.str.349, 11

	.type	.L.str.350,@object      # @.str.350
.L.str.350:
	.asciz	"context-brush-select-previous"
	.size	.L.str.350, 30

	.type	.L.str.351,@object      # @.str.351
.L.str.351:
	.asciz	"Previous Brush"
	.size	.L.str.351, 15

	.type	.L.str.352,@object      # @.str.352
.L.str.352:
	.asciz	"context-brush-select-next"
	.size	.L.str.352, 26

	.type	.L.str.353,@object      # @.str.353
.L.str.353:
	.asciz	"Next Brush"
	.size	.L.str.353, 11

	.type	.L.str.354,@object      # @.str.354
.L.str.354:
	.asciz	"context-pattern-select-set"
	.size	.L.str.354, 27

	.type	.L.str.355,@object      # @.str.355
.L.str.355:
	.asciz	"Select Pattern by Index"
	.size	.L.str.355, 24

	.type	.L.str.356,@object      # @.str.356
.L.str.356:
	.asciz	"context-pattern-select-first"
	.size	.L.str.356, 29

	.type	.L.str.357,@object      # @.str.357
.L.str.357:
	.asciz	"First Pattern"
	.size	.L.str.357, 14

	.type	.L.str.358,@object      # @.str.358
.L.str.358:
	.asciz	"context-pattern-select-last"
	.size	.L.str.358, 28

	.type	.L.str.359,@object      # @.str.359
.L.str.359:
	.asciz	"Last Pattern"
	.size	.L.str.359, 13

	.type	.L.str.360,@object      # @.str.360
.L.str.360:
	.asciz	"context-pattern-select-previous"
	.size	.L.str.360, 32

	.type	.L.str.361,@object      # @.str.361
.L.str.361:
	.asciz	"Previous Pattern"
	.size	.L.str.361, 17

	.type	.L.str.362,@object      # @.str.362
.L.str.362:
	.asciz	"context-pattern-select-next"
	.size	.L.str.362, 28

	.type	.L.str.363,@object      # @.str.363
.L.str.363:
	.asciz	"Next Pattern"
	.size	.L.str.363, 13

	.type	.L.str.364,@object      # @.str.364
.L.str.364:
	.asciz	"context-palette-select-set"
	.size	.L.str.364, 27

	.type	.L.str.365,@object      # @.str.365
.L.str.365:
	.asciz	"Select Palette by Index"
	.size	.L.str.365, 24

	.type	.L.str.366,@object      # @.str.366
.L.str.366:
	.asciz	"context-palette-select-first"
	.size	.L.str.366, 29

	.type	.L.str.367,@object      # @.str.367
.L.str.367:
	.asciz	"First Palette"
	.size	.L.str.367, 14

	.type	.L.str.368,@object      # @.str.368
.L.str.368:
	.asciz	"context-palette-select-last"
	.size	.L.str.368, 28

	.type	.L.str.369,@object      # @.str.369
.L.str.369:
	.asciz	"Last Palette"
	.size	.L.str.369, 13

	.type	.L.str.370,@object      # @.str.370
.L.str.370:
	.asciz	"context-palette-select-previous"
	.size	.L.str.370, 32

	.type	.L.str.371,@object      # @.str.371
.L.str.371:
	.asciz	"Previous Palette"
	.size	.L.str.371, 17

	.type	.L.str.372,@object      # @.str.372
.L.str.372:
	.asciz	"context-palette-select-next"
	.size	.L.str.372, 28

	.type	.L.str.373,@object      # @.str.373
.L.str.373:
	.asciz	"Next Palette"
	.size	.L.str.373, 13

	.type	.L.str.374,@object      # @.str.374
.L.str.374:
	.asciz	"context-gradient-select-set"
	.size	.L.str.374, 28

	.type	.L.str.375,@object      # @.str.375
.L.str.375:
	.asciz	"Select Gradient by Index"
	.size	.L.str.375, 25

	.type	.L.str.376,@object      # @.str.376
.L.str.376:
	.asciz	"context-gradient-select-first"
	.size	.L.str.376, 30

	.type	.L.str.377,@object      # @.str.377
.L.str.377:
	.asciz	"First Gradient"
	.size	.L.str.377, 15

	.type	.L.str.378,@object      # @.str.378
.L.str.378:
	.asciz	"context-gradient-select-last"
	.size	.L.str.378, 29

	.type	.L.str.379,@object      # @.str.379
.L.str.379:
	.asciz	"Last Gradient"
	.size	.L.str.379, 14

	.type	.L.str.380,@object      # @.str.380
.L.str.380:
	.asciz	"context-gradient-select-previous"
	.size	.L.str.380, 33

	.type	.L.str.381,@object      # @.str.381
.L.str.381:
	.asciz	"Previous Gradient"
	.size	.L.str.381, 18

	.type	.L.str.382,@object      # @.str.382
.L.str.382:
	.asciz	"context-gradient-select-next"
	.size	.L.str.382, 29

	.type	.L.str.383,@object      # @.str.383
.L.str.383:
	.asciz	"Next Gradient"
	.size	.L.str.383, 14

	.type	.L.str.384,@object      # @.str.384
.L.str.384:
	.asciz	"context-font-select-set"
	.size	.L.str.384, 24

	.type	.L.str.385,@object      # @.str.385
.L.str.385:
	.asciz	"Select Font by Index"
	.size	.L.str.385, 21

	.type	.L.str.386,@object      # @.str.386
.L.str.386:
	.asciz	"context-font-select-first"
	.size	.L.str.386, 26

	.type	.L.str.387,@object      # @.str.387
.L.str.387:
	.asciz	"First Font"
	.size	.L.str.387, 11

	.type	.L.str.388,@object      # @.str.388
.L.str.388:
	.asciz	"context-font-select-last"
	.size	.L.str.388, 25

	.type	.L.str.389,@object      # @.str.389
.L.str.389:
	.asciz	"Last Font"
	.size	.L.str.389, 10

	.type	.L.str.390,@object      # @.str.390
.L.str.390:
	.asciz	"context-font-select-previous"
	.size	.L.str.390, 29

	.type	.L.str.391,@object      # @.str.391
.L.str.391:
	.asciz	"Previous Font"
	.size	.L.str.391, 14

	.type	.L.str.392,@object      # @.str.392
.L.str.392:
	.asciz	"context-font-select-next"
	.size	.L.str.392, 25

	.type	.L.str.393,@object      # @.str.393
.L.str.393:
	.asciz	"Next Font"
	.size	.L.str.393, 10

	.type	.L.str.394,@object      # @.str.394
.L.str.394:
	.asciz	"context-brush-spacing-set"
	.size	.L.str.394, 26

	.type	.L.str.395,@object      # @.str.395
.L.str.395:
	.asciz	"Set Brush Spacing"
	.size	.L.str.395, 18

	.type	.L.str.396,@object      # @.str.396
.L.str.396:
	.asciz	"context-brush-spacing-minimum"
	.size	.L.str.396, 30

	.type	.L.str.397,@object      # @.str.397
.L.str.397:
	.asciz	"Minimum Spacing"
	.size	.L.str.397, 16

	.type	.L.str.398,@object      # @.str.398
.L.str.398:
	.asciz	"context-brush-spacing-maximum"
	.size	.L.str.398, 30

	.type	.L.str.399,@object      # @.str.399
.L.str.399:
	.asciz	"Maximum Spacing"
	.size	.L.str.399, 16

	.type	.L.str.400,@object      # @.str.400
.L.str.400:
	.asciz	"context-brush-spacing-decrease"
	.size	.L.str.400, 31

	.type	.L.str.401,@object      # @.str.401
.L.str.401:
	.asciz	"Decrease Spacing"
	.size	.L.str.401, 17

	.type	.L.str.402,@object      # @.str.402
.L.str.402:
	.asciz	"context-brush-spacing-increase"
	.size	.L.str.402, 31

	.type	.L.str.403,@object      # @.str.403
.L.str.403:
	.asciz	"Increase Spacing"
	.size	.L.str.403, 17

	.type	.L.str.404,@object      # @.str.404
.L.str.404:
	.asciz	"context-brush-spacing-decrease-skip"
	.size	.L.str.404, 36

	.type	.L.str.405,@object      # @.str.405
.L.str.405:
	.asciz	"Decrease Spacing More"
	.size	.L.str.405, 22

	.type	.L.str.406,@object      # @.str.406
.L.str.406:
	.asciz	"context-brush-spacing-increase-skip"
	.size	.L.str.406, 36

	.type	.L.str.407,@object      # @.str.407
.L.str.407:
	.asciz	"Increase Spacing More"
	.size	.L.str.407, 22

	.type	.L.str.408,@object      # @.str.408
.L.str.408:
	.asciz	"context-brush-shape-circle"
	.size	.L.str.408, 27

	.type	.L.str.409,@object      # @.str.409
.L.str.409:
	.asciz	"Circular Brush"
	.size	.L.str.409, 15

	.type	.L.str.410,@object      # @.str.410
.L.str.410:
	.asciz	"context-brush-shape-square"
	.size	.L.str.410, 27

	.type	.L.str.411,@object      # @.str.411
.L.str.411:
	.asciz	"Square Brush"
	.size	.L.str.411, 13

	.type	.L.str.412,@object      # @.str.412
.L.str.412:
	.asciz	"context-brush-shape-diamond"
	.size	.L.str.412, 28

	.type	.L.str.413,@object      # @.str.413
.L.str.413:
	.asciz	"Diamond Brush"
	.size	.L.str.413, 14

	.type	.L.str.414,@object      # @.str.414
.L.str.414:
	.asciz	"context-brush-radius-set"
	.size	.L.str.414, 25

	.type	.L.str.415,@object      # @.str.415
.L.str.415:
	.asciz	"Set Brush Radius"
	.size	.L.str.415, 17

	.type	.L.str.416,@object      # @.str.416
.L.str.416:
	.asciz	"context-brush-radius-minimum"
	.size	.L.str.416, 29

	.type	.L.str.417,@object      # @.str.417
.L.str.417:
	.asciz	"Minimum Radius"
	.size	.L.str.417, 15

	.type	.L.str.418,@object      # @.str.418
.L.str.418:
	.asciz	"context-brush-radius-maximum"
	.size	.L.str.418, 29

	.type	.L.str.419,@object      # @.str.419
.L.str.419:
	.asciz	"Maximum Radius"
	.size	.L.str.419, 15

	.type	.L.str.420,@object      # @.str.420
.L.str.420:
	.asciz	"context-brush-radius-decrease-less"
	.size	.L.str.420, 35

	.type	.L.str.421,@object      # @.str.421
.L.str.421:
	.asciz	"Decrease Radius Less"
	.size	.L.str.421, 21

	.type	.L.str.422,@object      # @.str.422
.L.str.422:
	.asciz	"context-brush-radius-increase-less"
	.size	.L.str.422, 35

	.type	.L.str.423,@object      # @.str.423
.L.str.423:
	.asciz	"Increase Radius Less"
	.size	.L.str.423, 21

	.type	.L.str.424,@object      # @.str.424
.L.str.424:
	.asciz	"context-brush-radius-decrease"
	.size	.L.str.424, 30

	.type	.L.str.425,@object      # @.str.425
.L.str.425:
	.asciz	"Decrease Radius"
	.size	.L.str.425, 16

	.type	.L.str.426,@object      # @.str.426
.L.str.426:
	.asciz	"context-brush-radius-increase"
	.size	.L.str.426, 30

	.type	.L.str.427,@object      # @.str.427
.L.str.427:
	.asciz	"Increase Radius"
	.size	.L.str.427, 16

	.type	.L.str.428,@object      # @.str.428
.L.str.428:
	.asciz	"context-brush-radius-decrease-skip"
	.size	.L.str.428, 35

	.type	.L.str.429,@object      # @.str.429
.L.str.429:
	.asciz	"Decrease Radius More"
	.size	.L.str.429, 21

	.type	.L.str.430,@object      # @.str.430
.L.str.430:
	.asciz	"context-brush-radius-increase-skip"
	.size	.L.str.430, 35

	.type	.L.str.431,@object      # @.str.431
.L.str.431:
	.asciz	"Increase Radius More"
	.size	.L.str.431, 21

	.type	.L.str.432,@object      # @.str.432
.L.str.432:
	.asciz	"context-brush-radius-decrease-percent"
	.size	.L.str.432, 38

	.type	.L.str.433,@object      # @.str.433
.L.str.433:
	.asciz	"Decrease Radius Relative"
	.size	.L.str.433, 25

	.type	.L.str.434,@object      # @.str.434
.L.str.434:
	.asciz	"context-brush-radius-increase-percent"
	.size	.L.str.434, 38

	.type	.L.str.435,@object      # @.str.435
.L.str.435:
	.asciz	"Increase Radius Relative"
	.size	.L.str.435, 25

	.type	.L.str.436,@object      # @.str.436
.L.str.436:
	.asciz	"context-brush-spikes-set"
	.size	.L.str.436, 25

	.type	.L.str.437,@object      # @.str.437
.L.str.437:
	.asciz	"Set Brush Spikes"
	.size	.L.str.437, 17

	.type	.L.str.438,@object      # @.str.438
.L.str.438:
	.asciz	"context-brush-spikes-minimum"
	.size	.L.str.438, 29

	.type	.L.str.439,@object      # @.str.439
.L.str.439:
	.asciz	"Minimum Spikes"
	.size	.L.str.439, 15

	.type	.L.str.440,@object      # @.str.440
.L.str.440:
	.asciz	"context-brush-spikes-maximum"
	.size	.L.str.440, 29

	.type	.L.str.441,@object      # @.str.441
.L.str.441:
	.asciz	"Maximum Spikes"
	.size	.L.str.441, 15

	.type	.L.str.442,@object      # @.str.442
.L.str.442:
	.asciz	"context-brush-spikes-decrease"
	.size	.L.str.442, 30

	.type	.L.str.443,@object      # @.str.443
.L.str.443:
	.asciz	"Decrease Spikes"
	.size	.L.str.443, 16

	.type	.L.str.444,@object      # @.str.444
.L.str.444:
	.asciz	"context-brush-spikes-increase"
	.size	.L.str.444, 30

	.type	.L.str.445,@object      # @.str.445
.L.str.445:
	.asciz	"Increase Spikes"
	.size	.L.str.445, 16

	.type	.L.str.446,@object      # @.str.446
.L.str.446:
	.asciz	"context-brush-spikes-decrease-skip"
	.size	.L.str.446, 35

	.type	.L.str.447,@object      # @.str.447
.L.str.447:
	.asciz	"Decrease Spikes More"
	.size	.L.str.447, 21

	.type	.L.str.448,@object      # @.str.448
.L.str.448:
	.asciz	"context-brush-spikes-increase-skip"
	.size	.L.str.448, 35

	.type	.L.str.449,@object      # @.str.449
.L.str.449:
	.asciz	"Increase Spikes More"
	.size	.L.str.449, 21

	.type	.L.str.450,@object      # @.str.450
.L.str.450:
	.asciz	"context-brush-hardness-set"
	.size	.L.str.450, 27

	.type	.L.str.451,@object      # @.str.451
.L.str.451:
	.asciz	"Set Brush Hardness"
	.size	.L.str.451, 19

	.type	.L.str.452,@object      # @.str.452
.L.str.452:
	.asciz	"context-brush-hardness-minimum"
	.size	.L.str.452, 31

	.type	.L.str.453,@object      # @.str.453
.L.str.453:
	.asciz	"Minimum Hardness"
	.size	.L.str.453, 17

	.type	.L.str.454,@object      # @.str.454
.L.str.454:
	.asciz	"context-brush-hardness-maximum"
	.size	.L.str.454, 31

	.type	.L.str.455,@object      # @.str.455
.L.str.455:
	.asciz	"Maximum Hardness"
	.size	.L.str.455, 17

	.type	.L.str.456,@object      # @.str.456
.L.str.456:
	.asciz	"context-brush-hardness-decrease"
	.size	.L.str.456, 32

	.type	.L.str.457,@object      # @.str.457
.L.str.457:
	.asciz	"Decrease Hardness"
	.size	.L.str.457, 18

	.type	.L.str.458,@object      # @.str.458
.L.str.458:
	.asciz	"context-brush-hardness-increase"
	.size	.L.str.458, 32

	.type	.L.str.459,@object      # @.str.459
.L.str.459:
	.asciz	"Increase Hardness"
	.size	.L.str.459, 18

	.type	.L.str.460,@object      # @.str.460
.L.str.460:
	.asciz	"context-brush-hardness-decrease-skip"
	.size	.L.str.460, 37

	.type	.L.str.461,@object      # @.str.461
.L.str.461:
	.asciz	"Decrease Hardness More"
	.size	.L.str.461, 23

	.type	.L.str.462,@object      # @.str.462
.L.str.462:
	.asciz	"context-brush-hardness-increase-skip"
	.size	.L.str.462, 37

	.type	.L.str.463,@object      # @.str.463
.L.str.463:
	.asciz	"Increase Hardness More"
	.size	.L.str.463, 23

	.type	.L.str.464,@object      # @.str.464
.L.str.464:
	.asciz	"context-brush-aspect-set"
	.size	.L.str.464, 25

	.type	.L.str.465,@object      # @.str.465
.L.str.465:
	.asciz	"Set Brush Aspect"
	.size	.L.str.465, 17

	.type	.L.str.466,@object      # @.str.466
.L.str.466:
	.asciz	"context-brush-aspect-minimum"
	.size	.L.str.466, 29

	.type	.L.str.467,@object      # @.str.467
.L.str.467:
	.asciz	"Minimum Aspect"
	.size	.L.str.467, 15

	.type	.L.str.468,@object      # @.str.468
.L.str.468:
	.asciz	"context-brush-aspect-maximum"
	.size	.L.str.468, 29

	.type	.L.str.469,@object      # @.str.469
.L.str.469:
	.asciz	"Maximum Aspect"
	.size	.L.str.469, 15

	.type	.L.str.470,@object      # @.str.470
.L.str.470:
	.asciz	"context-brush-aspect-decrease"
	.size	.L.str.470, 30

	.type	.L.str.471,@object      # @.str.471
.L.str.471:
	.asciz	"Decrease Aspect"
	.size	.L.str.471, 16

	.type	.L.str.472,@object      # @.str.472
.L.str.472:
	.asciz	"context-brush-aspect-increase"
	.size	.L.str.472, 30

	.type	.L.str.473,@object      # @.str.473
.L.str.473:
	.asciz	"Increase Aspect"
	.size	.L.str.473, 16

	.type	.L.str.474,@object      # @.str.474
.L.str.474:
	.asciz	"context-brush-aspect-decrease-skip"
	.size	.L.str.474, 35

	.type	.L.str.475,@object      # @.str.475
.L.str.475:
	.asciz	"Decrease Aspect More"
	.size	.L.str.475, 21

	.type	.L.str.476,@object      # @.str.476
.L.str.476:
	.asciz	"context-brush-aspect-increase-skip"
	.size	.L.str.476, 35

	.type	.L.str.477,@object      # @.str.477
.L.str.477:
	.asciz	"Increase Aspect More"
	.size	.L.str.477, 21

	.type	.L.str.478,@object      # @.str.478
.L.str.478:
	.asciz	"context-brush-angle-set"
	.size	.L.str.478, 24

	.type	.L.str.479,@object      # @.str.479
.L.str.479:
	.asciz	"Set Brush Angle"
	.size	.L.str.479, 16

	.type	.L.str.480,@object      # @.str.480
.L.str.480:
	.asciz	"context-brush-angle-minimum"
	.size	.L.str.480, 28

	.type	.L.str.481,@object      # @.str.481
.L.str.481:
	.asciz	"Horizontal"
	.size	.L.str.481, 11

	.type	.L.str.482,@object      # @.str.482
.L.str.482:
	.asciz	"context-brush-angle-maximum"
	.size	.L.str.482, 28

	.type	.L.str.483,@object      # @.str.483
.L.str.483:
	.asciz	"Vertical"
	.size	.L.str.483, 9

	.type	.L.str.484,@object      # @.str.484
.L.str.484:
	.asciz	"context-brush-angle-decrease"
	.size	.L.str.484, 29

	.type	.L.str.485,@object      # @.str.485
.L.str.485:
	.asciz	"Rotate Right"
	.size	.L.str.485, 13

	.type	.L.str.486,@object      # @.str.486
.L.str.486:
	.asciz	"context-brush-angle-increase"
	.size	.L.str.486, 29

	.type	.L.str.487,@object      # @.str.487
.L.str.487:
	.asciz	"Rotate Left"
	.size	.L.str.487, 12

	.type	.L.str.488,@object      # @.str.488
.L.str.488:
	.asciz	"context-brush-angle-decrease-skip"
	.size	.L.str.488, 34

	.type	.L.str.489,@object      # @.str.489
.L.str.489:
	.asciz	"Rotate Right 15\302\260"
	.size	.L.str.489, 18

	.type	.L.str.490,@object      # @.str.490
.L.str.490:
	.asciz	"context-brush-angle-increase-skip"
	.size	.L.str.490, 34

	.type	.L.str.491,@object      # @.str.491
.L.str.491:
	.asciz	"Rotate Left 15\302\260"
	.size	.L.str.491, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
