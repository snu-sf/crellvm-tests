	.text
	.file	"tools-actions.bc"
	.globl	tools_actions_setup
	.align	16, 0x90
	.type	tools_actions_setup,@function
tools_actions_setup:                    # @tools_actions_setup
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
	subq	$160, %rsp
	movabsq	$.L.str, %rsi
	movabsq	$tools_actions, %rdx
	movl	$5, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$tools_alternative_actions, %rdx
	movl	$2, %ecx
	movabsq	$tools_select_cmd_callback, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %r8         # 8-byte Reload
	callq	gimp_action_group_add_string_actions
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movabsq	$.L.str.2, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_action_set_accel_path
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$tools_color_average_radius_actions, %rdx
	movl	$8, %ecx
	movabsq	$tools_color_average_radius_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$tools_paint_brush_size_actions, %rdx
	movl	$10, %ecx
	movabsq	$tools_paint_brush_size_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$tools_paint_brush_angle_actions, %rdx
	movl	$8, %ecx
	movabsq	$tools_paint_brush_angle_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$tools_paint_brush_aspect_ratio_actions, %rdx
	movl	$8, %ecx
	movabsq	$tools_paint_brush_aspect_ratio_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$tools_ink_blob_size_actions, %rdx
	movl	$9, %ecx
	movabsq	$tools_ink_blob_size_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$tools_ink_blob_aspect_actions, %rdx
	movl	$8, %ecx
	movabsq	$tools_ink_blob_aspect_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$tools_ink_blob_angle_actions, %rdx
	movl	$7, %ecx
	movabsq	$tools_ink_blob_angle_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$tools_foreground_select_brush_size_actions, %rdx
	movl	$10, %ecx
	movabsq	$tools_fg_select_brush_size_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$tools_transform_preview_opacity_actions, %rdx
	movl	$7, %ecx
	movabsq	$tools_transform_preview_opacity_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$tools_value_1_actions, %rdx
	movl	$10, %ecx
	movabsq	$tools_value_1_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$tools_value_2_actions, %rdx
	movl	$10, %ecx
	movabsq	$tools_value_2_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$tools_value_3_actions, %rdx
	movl	$10, %ecx
	movabsq	$tools_value_3_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$tools_value_4_actions, %rdx
	movl	$10, %ecx
	movabsq	$tools_value_4_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$tools_object_1_actions, %rdx
	movl	$5, %ecx
	movabsq	$tools_object_1_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$tools_object_2_actions, %rdx
	movl	$5, %ecx
	movabsq	$tools_object_2_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_tool_info_iter
	movq	%rax, -24(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB0_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_stock_id
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	addq	$5, %rax
	movq	-104(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	strlen
	subq	$10, %rax
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strndup
	movabsq	$.L.str.3, %rdi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rdi
	callq	g_free
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-88(%rbp), %rdx
	movl	$1, %ecx
	movabsq	$tools_select_cmd_callback, %rax
	movq	-120(%rbp), %rdi
	movq	%rdi, -88(%rbp)
	movq	-96(%rbp), %rdi
	movq	%rdi, -80(%rbp)
	movq	-32(%rbp), %rdi
	movq	80(%rdi), %rdi
	movq	%rdi, -72(%rbp)
	movq	-32(%rbp), %rdi
	movq	88(%rdi), %rdi
	movq	%rdi, -64(%rbp)
	movq	-32(%rbp), %rdi
	movq	72(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	movq	-32(%rbp), %rdi
	movq	104(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	movq	-104(%rbp), %rdi
	movq	%rdi, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_string_actions
	movq	-120(%rbp), %rdi
	callq	g_free
.LBB0_4:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_8
.LBB0_7:                                # %cond.false
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_8
.LBB0_8:                                # %cond.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_9:                                # %for.end
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tools_actions_setup, .Lfunc_end0-tools_actions_setup
	.cfi_endproc

	.globl	tools_actions_update
	.align	16, 0x90
	.type	tools_actions_update,@function
tools_actions_update:                   # @tools_actions_update
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	tools_actions_update, .Lfunc_end1-tools_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tools-action"
	.size	.L.str, 13

	.type	tools_actions,@object   # @tools_actions
	.section	.rodata,"a",@progbits
	.align	16
tools_actions:
	.quad	.L.str.4
	.quad	0
	.quad	.L.str.5
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.6
	.quad	0
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.8
	.quad	0
	.quad	.L.str.9
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.10
	.quad	0
	.quad	.L.str.11
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.12
	.quad	0
	.quad	.L.str.13
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	tools_actions, 280

	.type	tools_alternative_actions,@object # @tools_alternative_actions
	.align	16
tools_alternative_actions:
	.quad	.L.str.1
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	0
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.14
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.19
	.size	tools_alternative_actions, 112

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"tools-by-color-select-short"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"<Actions>/tools/tools-by-color-select"
	.size	.L.str.2, 38

	.type	tools_color_average_radius_actions,@object # @tools_color_average_radius_actions
	.section	.rodata,"a",@progbits
	.align	16
tools_color_average_radius_actions:
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.27
	.quad	.L.str.25
	.quad	.L.str.28
	.quad	0
	.quad	0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.29
	.quad	.L.str.25
	.quad	.L.str.30
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.31
	.quad	.L.str.25
	.quad	.L.str.32
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.33
	.quad	.L.str.25
	.quad	.L.str.34
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.35
	.quad	.L.str.25
	.quad	.L.str.36
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.37
	.quad	.L.str.25
	.quad	.L.str.38
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.39
	.quad	.L.str.25
	.quad	.L.str.40
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	tools_color_average_radius_actions, 448

	.type	tools_paint_brush_size_actions,@object # @tools_paint_brush_size_actions
	.align	16
tools_paint_brush_size_actions:
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.44
	.quad	.L.str.42
	.quad	.L.str.45
	.quad	0
	.quad	0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.46
	.quad	.L.str.42
	.quad	.L.str.47
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.48
	.quad	.L.str.42
	.quad	.L.str.49
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.50
	.quad	.L.str.42
	.quad	.L.str.51
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.52
	.quad	.L.str.42
	.quad	.L.str.53
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.54
	.quad	.L.str.42
	.quad	.L.str.55
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.56
	.quad	.L.str.42
	.quad	.L.str.57
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.58
	.quad	.L.str.42
	.quad	.L.str.59
	.quad	0
	.quad	0
	.long	4294967286              # 0xfffffff6
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.60
	.quad	.L.str.42
	.quad	.L.str.61
	.quad	0
	.quad	0
	.long	4294967285              # 0xfffffff5
	.long	0                       # 0x0
	.quad	0
	.size	tools_paint_brush_size_actions, 560

	.type	tools_paint_brush_angle_actions,@object # @tools_paint_brush_angle_actions
	.align	16
tools_paint_brush_angle_actions:
	.quad	.L.str.62
	.quad	.L.str.42
	.quad	.L.str.63
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.64
	.quad	.L.str.42
	.quad	.L.str.65
	.quad	0
	.quad	0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.66
	.quad	.L.str.42
	.quad	.L.str.67
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.68
	.quad	.L.str.42
	.quad	.L.str.69
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.70
	.quad	.L.str.42
	.quad	.L.str.71
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.72
	.quad	.L.str.42
	.quad	.L.str.73
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.74
	.quad	.L.str.42
	.quad	.L.str.75
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.76
	.quad	.L.str.42
	.quad	.L.str.77
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	tools_paint_brush_angle_actions, 448

	.type	tools_paint_brush_aspect_ratio_actions,@object # @tools_paint_brush_aspect_ratio_actions
	.align	16
tools_paint_brush_aspect_ratio_actions:
	.quad	.L.str.78
	.quad	.L.str.42
	.quad	.L.str.79
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.80
	.quad	.L.str.42
	.quad	.L.str.81
	.quad	0
	.quad	0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.82
	.quad	.L.str.42
	.quad	.L.str.83
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.84
	.quad	.L.str.42
	.quad	.L.str.85
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.86
	.quad	.L.str.42
	.quad	.L.str.87
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.88
	.quad	.L.str.42
	.quad	.L.str.89
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.90
	.quad	.L.str.42
	.quad	.L.str.91
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.92
	.quad	.L.str.42
	.quad	.L.str.93
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	tools_paint_brush_aspect_ratio_actions, 448

	.type	tools_ink_blob_size_actions,@object # @tools_ink_blob_size_actions
	.align	16
tools_ink_blob_size_actions:
	.quad	.L.str.94
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.97
	.quad	.L.str.95
	.quad	.L.str.98
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.99
	.quad	.L.str.95
	.quad	.L.str.100
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.101
	.quad	.L.str.95
	.quad	.L.str.102
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.103
	.quad	.L.str.95
	.quad	.L.str.104
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.105
	.quad	.L.str.95
	.quad	.L.str.106
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.107
	.quad	.L.str.95
	.quad	.L.str.108
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.109
	.quad	.L.str.95
	.quad	.L.str.110
	.quad	0
	.quad	0
	.long	4294967286              # 0xfffffff6
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.111
	.quad	.L.str.95
	.quad	.L.str.112
	.quad	0
	.quad	0
	.long	4294967285              # 0xfffffff5
	.long	0                       # 0x0
	.quad	0
	.size	tools_ink_blob_size_actions, 504

	.type	tools_ink_blob_aspect_actions,@object # @tools_ink_blob_aspect_actions
	.align	16
tools_ink_blob_aspect_actions:
	.quad	.L.str.113
	.quad	.L.str.95
	.quad	.L.str.114
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.115
	.quad	.L.str.95
	.quad	.L.str.116
	.quad	0
	.quad	0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.117
	.quad	.L.str.95
	.quad	.L.str.118
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.119
	.quad	.L.str.95
	.quad	.L.str.120
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.121
	.quad	.L.str.95
	.quad	.L.str.122
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.123
	.quad	.L.str.95
	.quad	.L.str.124
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.125
	.quad	.L.str.95
	.quad	.L.str.126
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.127
	.quad	.L.str.95
	.quad	.L.str.128
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	tools_ink_blob_aspect_actions, 448

	.type	tools_ink_blob_angle_actions,@object # @tools_ink_blob_angle_actions
	.align	16
tools_ink_blob_angle_actions:
	.quad	.L.str.129
	.quad	.L.str.95
	.quad	.L.str.130
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.131
	.quad	.L.str.95
	.quad	.L.str.132
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.133
	.quad	.L.str.95
	.quad	.L.str.134
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.135
	.quad	.L.str.95
	.quad	.L.str.136
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.137
	.quad	.L.str.95
	.quad	.L.str.138
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.139
	.quad	.L.str.95
	.quad	.L.str.140
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.141
	.quad	.L.str.95
	.quad	.L.str.142
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	tools_ink_blob_angle_actions, 392

	.type	tools_foreground_select_brush_size_actions,@object # @tools_foreground_select_brush_size_actions
	.align	16
tools_foreground_select_brush_size_actions:
	.quad	.L.str.143
	.quad	.L.str.144
	.quad	.L.str.145
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.146
	.quad	.L.str.144
	.quad	.L.str.147
	.quad	0
	.quad	0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.148
	.quad	.L.str.144
	.quad	.L.str.149
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.150
	.quad	.L.str.144
	.quad	.L.str.151
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.152
	.quad	.L.str.144
	.quad	.L.str.153
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.154
	.quad	.L.str.144
	.quad	.L.str.155
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.156
	.quad	.L.str.144
	.quad	.L.str.157
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.158
	.quad	.L.str.144
	.quad	.L.str.159
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.160
	.quad	.L.str.144
	.quad	.L.str.161
	.quad	0
	.quad	0
	.long	4294967286              # 0xfffffff6
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.162
	.quad	.L.str.144
	.quad	.L.str.155
	.quad	0
	.quad	0
	.long	4294967285              # 0xfffffff5
	.long	0                       # 0x0
	.quad	0
	.size	tools_foreground_select_brush_size_actions, 560

	.type	tools_transform_preview_opacity_actions,@object # @tools_transform_preview_opacity_actions
	.align	16
tools_transform_preview_opacity_actions:
	.quad	.L.str.163
	.quad	.L.str.164
	.quad	.L.str.165
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.166
	.quad	.L.str.164
	.quad	.L.str.167
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.168
	.quad	.L.str.164
	.quad	.L.str.169
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.170
	.quad	.L.str.164
	.quad	.L.str.171
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.172
	.quad	.L.str.164
	.quad	.L.str.173
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.174
	.quad	.L.str.164
	.quad	.L.str.175
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.176
	.quad	.L.str.164
	.quad	.L.str.177
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	tools_transform_preview_opacity_actions, 392

	.type	tools_value_1_actions,@object # @tools_value_1_actions
	.align	16
tools_value_1_actions:
	.quad	.L.str.178
	.quad	.L.str.179
	.quad	.L.str.180
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.181
	.quad	.L.str.179
	.quad	.L.str.182
	.quad	0
	.quad	0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.183
	.quad	.L.str.179
	.quad	.L.str.184
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.185
	.quad	.L.str.179
	.quad	.L.str.186
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.187
	.quad	.L.str.179
	.quad	.L.str.188
	.quad	.L.str.189
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.190
	.quad	.L.str.179
	.quad	.L.str.191
	.quad	.L.str.192
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.193
	.quad	.L.str.179
	.quad	.L.str.194
	.quad	.L.str.195
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.196
	.quad	.L.str.179
	.quad	.L.str.197
	.quad	.L.str.198
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.199
	.quad	.L.str.179
	.quad	.L.str.200
	.quad	0
	.quad	0
	.long	4294967286              # 0xfffffff6
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.201
	.quad	.L.str.179
	.quad	.L.str.202
	.quad	0
	.quad	0
	.long	4294967285              # 0xfffffff5
	.long	0                       # 0x0
	.quad	0
	.size	tools_value_1_actions, 560

	.type	tools_value_2_actions,@object # @tools_value_2_actions
	.align	16
tools_value_2_actions:
	.quad	.L.str.203
	.quad	.L.str.179
	.quad	.L.str.204
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.205
	.quad	.L.str.179
	.quad	.L.str.206
	.quad	.L.str.207
	.quad	0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.208
	.quad	.L.str.179
	.quad	.L.str.209
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.210
	.quad	.L.str.179
	.quad	.L.str.211
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.212
	.quad	.L.str.179
	.quad	.L.str.213
	.quad	.L.str.214
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.215
	.quad	.L.str.179
	.quad	.L.str.216
	.quad	.L.str.217
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.218
	.quad	.L.str.179
	.quad	.L.str.219
	.quad	.L.str.220
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.221
	.quad	.L.str.179
	.quad	.L.str.222
	.quad	.L.str.223
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.224
	.quad	.L.str.179
	.quad	.L.str.225
	.quad	0
	.quad	0
	.long	4294967286              # 0xfffffff6
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.226
	.quad	.L.str.179
	.quad	.L.str.227
	.quad	0
	.quad	0
	.long	4294967285              # 0xfffffff5
	.long	0                       # 0x0
	.quad	0
	.size	tools_value_2_actions, 560

	.type	tools_value_3_actions,@object # @tools_value_3_actions
	.align	16
tools_value_3_actions:
	.quad	.L.str.228
	.quad	.L.str.179
	.quad	.L.str.229
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.230
	.quad	.L.str.179
	.quad	.L.str.231
	.quad	0
	.quad	0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.232
	.quad	.L.str.179
	.quad	.L.str.233
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.234
	.quad	.L.str.179
	.quad	.L.str.235
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.236
	.quad	.L.str.179
	.quad	.L.str.237
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.238
	.quad	.L.str.179
	.quad	.L.str.239
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.240
	.quad	.L.str.179
	.quad	.L.str.241
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.242
	.quad	.L.str.179
	.quad	.L.str.243
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.244
	.quad	.L.str.179
	.quad	.L.str.245
	.quad	0
	.quad	0
	.long	4294967286              # 0xfffffff6
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.246
	.quad	.L.str.179
	.quad	.L.str.247
	.quad	0
	.quad	0
	.long	4294967285              # 0xfffffff5
	.long	0                       # 0x0
	.quad	0
	.size	tools_value_3_actions, 560

	.type	tools_value_4_actions,@object # @tools_value_4_actions
	.align	16
tools_value_4_actions:
	.quad	.L.str.248
	.quad	.L.str.179
	.quad	.L.str.249
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.250
	.quad	.L.str.179
	.quad	.L.str.251
	.quad	0
	.quad	0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.252
	.quad	.L.str.179
	.quad	.L.str.253
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.254
	.quad	.L.str.179
	.quad	.L.str.255
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.256
	.quad	.L.str.179
	.quad	.L.str.257
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.258
	.quad	.L.str.179
	.quad	.L.str.259
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.260
	.quad	.L.str.179
	.quad	.L.str.261
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.262
	.quad	.L.str.179
	.quad	.L.str.263
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.264
	.quad	.L.str.179
	.quad	.L.str.265
	.quad	0
	.quad	0
	.long	4294967286              # 0xfffffff6
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.266
	.quad	.L.str.179
	.quad	.L.str.267
	.quad	0
	.quad	0
	.long	4294967285              # 0xfffffff5
	.long	0                       # 0x0
	.quad	0
	.size	tools_value_4_actions, 560

	.type	tools_object_1_actions,@object # @tools_object_1_actions
	.align	16
tools_object_1_actions:
	.quad	.L.str.268
	.quad	.L.str.179
	.quad	.L.str.269
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.270
	.quad	.L.str.179
	.quad	.L.str.271
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.272
	.quad	.L.str.179
	.quad	.L.str.273
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.274
	.quad	.L.str.179
	.quad	.L.str.275
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.276
	.quad	.L.str.179
	.quad	.L.str.277
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.size	tools_object_1_actions, 280

	.type	tools_object_2_actions,@object # @tools_object_2_actions
	.align	16
tools_object_2_actions:
	.quad	.L.str.278
	.quad	.L.str.179
	.quad	.L.str.279
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.280
	.quad	.L.str.179
	.quad	.L.str.281
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.282
	.quad	.L.str.179
	.quad	.L.str.283
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.284
	.quad	.L.str.179
	.quad	.L.str.285
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.286
	.quad	.L.str.179
	.quad	.L.str.287
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.size	tools_object_2_actions, 280

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"tools-%s"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"tools-menu"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"_Tools"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"tools-select-menu"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"_Selection Tools"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"tools-paint-menu"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"_Paint Tools"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"tools-transform-menu"
	.size	.L.str.10, 21

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Transform Tools"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"tools-color-menu"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"_Color Tools"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-tool-by-color-select"
	.size	.L.str.14, 26

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"_By Color"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Select regions with similar colors"
	.size	.L.str.16, 35

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-by-color-select-tool"
	.size	.L.str.17, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"tools-rotate-arbitrary"
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-tool-rotate"
	.size	.L.str.19, 17

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"_Arbitrary Rotation..."
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.zero	1
	.size	.L.str.21, 1

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Rotate by an arbitrary angle"
	.size	.L.str.22, 29

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-rotate-layer"
	.size	.L.str.23, 18

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"tools-color-average-radius-set"
	.size	.L.str.24, 31

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-tool-color-picker"
	.size	.L.str.25, 23

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Set Color Picker Radius"
	.size	.L.str.26, 24

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"tools-color-average-set-to-default"
	.size	.L.str.27, 35

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Set Color Picker Radius To Default Value"
	.size	.L.str.28, 41

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"tools-color-average-radius-minimum"
	.size	.L.str.29, 35

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Minimize Color Picker Radius"
	.size	.L.str.30, 29

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"tools-color-average-radius-maximum"
	.size	.L.str.31, 35

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Maximize Color Picker Radius"
	.size	.L.str.32, 29

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"tools-color-average-radius-decrease"
	.size	.L.str.33, 36

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Decrease Color Picker Radius"
	.size	.L.str.34, 29

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"tools-color-average-radius-increase"
	.size	.L.str.35, 36

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Increase Color Picker Radius"
	.size	.L.str.36, 29

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"tools-color-average-radius-decrease-skip"
	.size	.L.str.37, 41

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Decrease Color Picker Radius More"
	.size	.L.str.38, 34

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"tools-color-average-radius-increase-skip"
	.size	.L.str.39, 41

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Increase Color Picker Radius More"
	.size	.L.str.40, 34

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"tools-paint-brush-size-set"
	.size	.L.str.41, 27

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-tool-paintbrush"
	.size	.L.str.42, 21

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Set Brush Size"
	.size	.L.str.43, 15

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"tools-paint-brush-size-set-to-default"
	.size	.L.str.44, 38

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Set Brush Size To Default Value"
	.size	.L.str.45, 32

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"tools-paint-brush-size-minimum"
	.size	.L.str.46, 31

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Minimize Brush Size"
	.size	.L.str.47, 20

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"tools-paint-brush-size-maximum"
	.size	.L.str.48, 31

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Maximize Brush Size"
	.size	.L.str.49, 20

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"tools-paint-brush-size-decrease"
	.size	.L.str.50, 32

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Decrease Brush Size"
	.size	.L.str.51, 20

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"tools-paint-brush-size-increase"
	.size	.L.str.52, 32

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Increase Brush Size"
	.size	.L.str.53, 20

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"tools-paint-brush-size-decrease-skip"
	.size	.L.str.54, 37

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Decrease Brush Size More"
	.size	.L.str.55, 25

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"tools-paint-brush-size-increase-skip"
	.size	.L.str.56, 37

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Increase Brush Size More"
	.size	.L.str.57, 25

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"tools-paint-brush-size-decrease-percent"
	.size	.L.str.58, 40

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Decrease Brush Size Relative"
	.size	.L.str.59, 29

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"tools-paint-brush-size-increase-percent"
	.size	.L.str.60, 40

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Increase Brush Size Relative"
	.size	.L.str.61, 29

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"tools-paint-brush-angle-set"
	.size	.L.str.62, 28

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Set Brush Angle"
	.size	.L.str.63, 16

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"tools-paint-brush-angle-set-to-default"
	.size	.L.str.64, 39

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Set Brush Angle To Default Value"
	.size	.L.str.65, 33

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"tools-paint-brush-angle-minimum"
	.size	.L.str.66, 32

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Minimize Brush Angle"
	.size	.L.str.67, 21

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"tools-paint-brush-angle-maximum"
	.size	.L.str.68, 32

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Maximize Brush Angle"
	.size	.L.str.69, 21

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"tools-paint-brush-angle-decrease"
	.size	.L.str.70, 33

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Decrease Brush Angle"
	.size	.L.str.71, 21

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"tools-paint-brush-angle-increase"
	.size	.L.str.72, 33

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Increase Brush Angle"
	.size	.L.str.73, 21

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"tools-paint-brush-angle-decrease-skip"
	.size	.L.str.74, 38

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Decrease Brush Angle More"
	.size	.L.str.75, 26

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"tools-paint-brush-angle-increase-skip"
	.size	.L.str.76, 38

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Increase Brush Angle More"
	.size	.L.str.77, 26

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"tools-paint-brush-aspect-ratio-set"
	.size	.L.str.78, 35

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Set Brush Aspect Ratio"
	.size	.L.str.79, 23

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"tools-paint-brush-aspect-ratio-set-to-default"
	.size	.L.str.80, 46

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Set Brush Aspect Ratio To Default Value"
	.size	.L.str.81, 40

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"tools-paint-brush-aspect-ratio-minimum"
	.size	.L.str.82, 39

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Minimize Brush Aspect Ratio"
	.size	.L.str.83, 28

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"tools-paint-brush-aspect-ratio-maximum"
	.size	.L.str.84, 39

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Maximize Brush Aspect Ratio"
	.size	.L.str.85, 28

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"tools-paint-brush-aspect-ratio-decrease"
	.size	.L.str.86, 40

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Decrease Brush Aspect Ratio"
	.size	.L.str.87, 28

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"tools-paint-brush-aspect-ratio-increase"
	.size	.L.str.88, 40

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Increase Brush Aspect Ratio"
	.size	.L.str.89, 28

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"tools-paint-brush-aspect-ratio-decrease-skip"
	.size	.L.str.90, 45

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Decrease Brush Aspect Ratio More"
	.size	.L.str.91, 33

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"tools-paint-brush-aspect-ratio-increase-skip"
	.size	.L.str.92, 45

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Increase Brush Aspect Ratio More"
	.size	.L.str.93, 33

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"tools-ink-blob-size-set"
	.size	.L.str.94, 24

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"gimp-tool-ink"
	.size	.L.str.95, 14

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Set Ink Blob Size"
	.size	.L.str.96, 18

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"tools-ink-blob-size-minimum"
	.size	.L.str.97, 28

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Minimize Ink Blob Size"
	.size	.L.str.98, 23

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"tools-ink-blob-size-maximum"
	.size	.L.str.99, 28

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Maximize Ink Blob Size"
	.size	.L.str.100, 23

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"tools-ink-blob-size-decrease"
	.size	.L.str.101, 29

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Decrease Ink Blob Size"
	.size	.L.str.102, 23

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"tools-ink-blob-size-increase"
	.size	.L.str.103, 29

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Increase Ink Blob Size"
	.size	.L.str.104, 23

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"tools-ink-blob-size-decrease-skip"
	.size	.L.str.105, 34

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Decrease Ink Blob Size More"
	.size	.L.str.106, 28

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"tools-ink-blob-size-increase-skip"
	.size	.L.str.107, 34

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Increase Ink Blob Size More"
	.size	.L.str.108, 28

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"tools-ink-blob-size-decrease-percent"
	.size	.L.str.109, 37

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Decrease Ink Blob Size Relative"
	.size	.L.str.110, 32

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"tools-ink-blob-size-increase-percent"
	.size	.L.str.111, 37

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"Increase Ink Blob Size Relative"
	.size	.L.str.112, 32

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"tools-ink-blob-aspect-set"
	.size	.L.str.113, 26

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"Set Ink Blob Aspect"
	.size	.L.str.114, 20

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"tools-ink-blob-aspect-set-to-default"
	.size	.L.str.115, 37

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"Set Ink Blob Aspect To Default Value"
	.size	.L.str.116, 37

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"tools-ink-blob-aspect-minimum"
	.size	.L.str.117, 30

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Minimize Ink Blob Aspect"
	.size	.L.str.118, 25

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"tools-ink-blob-aspect-maximum"
	.size	.L.str.119, 30

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"Maximize Ink Blob Aspect"
	.size	.L.str.120, 25

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"tools-ink-blob-aspect-decrease"
	.size	.L.str.121, 31

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"Decrease Ink Blob Aspect"
	.size	.L.str.122, 25

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"tools-ink-blob-aspect-increase"
	.size	.L.str.123, 31

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"Increase Ink Blob Aspect"
	.size	.L.str.124, 25

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"tools-ink-blob-aspect-decrease-skip"
	.size	.L.str.125, 36

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"Decrease Ink Blob Aspect More"
	.size	.L.str.126, 30

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"tools-ink-blob-aspect-increase-skip"
	.size	.L.str.127, 36

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"Increase Ink Blob Aspect More"
	.size	.L.str.128, 30

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"tools-ink-blob-angle-set"
	.size	.L.str.129, 25

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"Set Ink Blob Angle"
	.size	.L.str.130, 19

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"tools-ink-blob-angle-minimum"
	.size	.L.str.131, 29

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"Minimize Ink Blob Angle"
	.size	.L.str.132, 24

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"tools-ink-blob-angle-maximum"
	.size	.L.str.133, 29

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"Maximize Ink Blob Angle"
	.size	.L.str.134, 24

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"tools-ink-blob-angle-decrease"
	.size	.L.str.135, 30

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"Decrease Ink Blob Angle"
	.size	.L.str.136, 24

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"tools-ink-blob-angle-increase"
	.size	.L.str.137, 30

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"Increase Ink Blob Angle"
	.size	.L.str.138, 24

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"tools-ink-blob-angle-decrease-skip"
	.size	.L.str.139, 35

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"Decrease Ink Blob Angle More"
	.size	.L.str.140, 29

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"tools-ink-blob-angle-increase-skip"
	.size	.L.str.141, 35

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"Increase Ink Blob Angle More"
	.size	.L.str.142, 29

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"tools-foreground-select-brush-size-set"
	.size	.L.str.143, 39

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"gimp-tool-foreground-select"
	.size	.L.str.144, 28

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"Set Foreground Select Brush Size"
	.size	.L.str.145, 33

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"tools-foreground-select-brush-size-set-to-default"
	.size	.L.str.146, 50

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"Set Foreground Select Brush Size to Default Value"
	.size	.L.str.147, 50

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"tools-foreground-select-brush-size-minimum"
	.size	.L.str.148, 43

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"Minimize Foreground Select Brush Size"
	.size	.L.str.149, 38

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"tools-foreground-select-brush-size-maximum"
	.size	.L.str.150, 43

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"Maximize Foreground Select Brush Size"
	.size	.L.str.151, 38

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"tools-foreground-select-brush-size-decrease"
	.size	.L.str.152, 44

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"Decrease Foreground Select Brush Size"
	.size	.L.str.153, 38

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"tools-foreground-select-brush-size-increase"
	.size	.L.str.154, 44

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"Increase Foreground Select Brush Size"
	.size	.L.str.155, 38

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"tools-foreground-select-brush-size-decrease-skip"
	.size	.L.str.156, 49

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"Decrease Foreground Select Brush Size More"
	.size	.L.str.157, 43

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"tools-foreground-select-brush-size-increase-skip"
	.size	.L.str.158, 49

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"Increase Foreground Select Brush Size More"
	.size	.L.str.159, 43

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"tools-foreground-select-brush-size-decrease-percent"
	.size	.L.str.160, 52

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"Decrease Foreground Select Brush Size Relative"
	.size	.L.str.161, 47

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"tools-foreground-select-brush-size-increase-percent"
	.size	.L.str.162, 52

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"tools-transform-preview-opacity-set"
	.size	.L.str.163, 36

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"gimp-tool-perspective"
	.size	.L.str.164, 22

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"Set Transform Tool Preview Opacity"
	.size	.L.str.165, 35

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"tools-transform-preview-opacity-minimum"
	.size	.L.str.166, 40

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"Minimize Transform Tool Preview Opacity"
	.size	.L.str.167, 40

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"tools-transform-preview-opacity-maximum"
	.size	.L.str.168, 40

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"Maximize Transform Tool Preview Opacity"
	.size	.L.str.169, 40

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"tools-transform-preview-opacity-decrease"
	.size	.L.str.170, 41

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"Decrease Transform Tool Preview Opacity"
	.size	.L.str.171, 40

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"tools-transform-preview-opacity-increase"
	.size	.L.str.172, 41

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"Increase Transform Tool Preview Opacity"
	.size	.L.str.173, 40

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"tools-transform-preview-opacity-decrease-skip"
	.size	.L.str.174, 46

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"Decrease Transform Tool Preview Opacity More"
	.size	.L.str.175, 45

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"tools-transform-preview-opacity-increase-skip"
	.size	.L.str.176, 46

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"Increase Transform Tool Preview Opacity More"
	.size	.L.str.177, 45

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"tools-value-1-set"
	.size	.L.str.178, 18

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"gimp-tool-options"
	.size	.L.str.179, 18

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"Set Value 1"
	.size	.L.str.180, 12

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"tools-value-1-set-to-default"
	.size	.L.str.181, 29

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"Set Value 1 To Default Value"
	.size	.L.str.182, 29

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"tools-value-1-minimum"
	.size	.L.str.183, 22

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"Minimize Value 1"
	.size	.L.str.184, 17

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"tools-value-1-maximum"
	.size	.L.str.185, 22

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"Maximize Value 1"
	.size	.L.str.186, 17

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"tools-value-1-decrease"
	.size	.L.str.187, 23

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"Decrease Value 1"
	.size	.L.str.188, 17

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"less"
	.size	.L.str.189, 5

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"tools-value-1-increase"
	.size	.L.str.190, 23

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"Increase Value 1"
	.size	.L.str.191, 17

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"greater"
	.size	.L.str.192, 8

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"tools-value-1-decrease-skip"
	.size	.L.str.193, 28

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"Decrease Value 1 More"
	.size	.L.str.194, 22

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"<primary>less"
	.size	.L.str.195, 14

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"tools-value-1-increase-skip"
	.size	.L.str.196, 28

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"Increase Value 1 More"
	.size	.L.str.197, 22

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"<primary>greater"
	.size	.L.str.198, 17

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"tools-value-1-decrease-percent"
	.size	.L.str.199, 31

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"Decrease Value 1 Relative"
	.size	.L.str.200, 26

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"tools-value-1-increase-percent"
	.size	.L.str.201, 31

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"Increase Value 1 Relative"
	.size	.L.str.202, 26

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"tools-value-2-set"
	.size	.L.str.203, 18

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"Set Value 2"
	.size	.L.str.204, 12

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"tools-value-2-set-to-default"
	.size	.L.str.205, 29

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"Set Value 2 To Default Value"
	.size	.L.str.206, 29

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"backslash"
	.size	.L.str.207, 10

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"tools-value-2-minimum"
	.size	.L.str.208, 22

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"Minimize Value 2"
	.size	.L.str.209, 17

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"tools-value-2-maximum"
	.size	.L.str.210, 22

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"Maximize Value 2"
	.size	.L.str.211, 17

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"tools-value-2-decrease"
	.size	.L.str.212, 23

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"Decrease Value 2"
	.size	.L.str.213, 17

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"bracketleft"
	.size	.L.str.214, 12

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"tools-value-2-increase"
	.size	.L.str.215, 23

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"Increase Value 2"
	.size	.L.str.216, 17

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"bracketright"
	.size	.L.str.217, 13

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"tools-value-2-decrease-skip"
	.size	.L.str.218, 28

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"Decrease Value 2 More"
	.size	.L.str.219, 22

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"<shift>bracketleft"
	.size	.L.str.220, 19

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"tools-value-2-increase-skip"
	.size	.L.str.221, 28

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"Increase Value 2 More"
	.size	.L.str.222, 22

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"<shift>bracketright"
	.size	.L.str.223, 20

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"tools-value-2-decrease-percent"
	.size	.L.str.224, 31

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"Decrease Value 2 Relative"
	.size	.L.str.225, 26

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"tools-value-2-increase-percent"
	.size	.L.str.226, 31

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"Increase Value 2 Relative"
	.size	.L.str.227, 26

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"tools-value-3-set"
	.size	.L.str.228, 18

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"Set Value 3"
	.size	.L.str.229, 12

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"tools-value-3-set-to-default"
	.size	.L.str.230, 29

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"Set Value 3 To Default Value"
	.size	.L.str.231, 29

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"tools-value-3-minimum"
	.size	.L.str.232, 22

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"Minimize Value 3"
	.size	.L.str.233, 17

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"tools-value-3-maximum"
	.size	.L.str.234, 22

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"Maximize Value 3"
	.size	.L.str.235, 17

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"tools-value-3-decrease"
	.size	.L.str.236, 23

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"Decrease Value 3"
	.size	.L.str.237, 17

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"tools-value-3-increase"
	.size	.L.str.238, 23

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"Increase Value 3"
	.size	.L.str.239, 17

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"tools-value-3-decrease-skip"
	.size	.L.str.240, 28

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"Decrease Value 3 More"
	.size	.L.str.241, 22

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"tools-value-3-increase-skip"
	.size	.L.str.242, 28

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"Increase Value 3 More"
	.size	.L.str.243, 22

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"tools-value-3-decrease-percent"
	.size	.L.str.244, 31

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"Decrease Value 3 Relative"
	.size	.L.str.245, 26

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"tools-value-3-increase-percent"
	.size	.L.str.246, 31

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"Increase Value 3 Relative"
	.size	.L.str.247, 26

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"tools-value-4-set"
	.size	.L.str.248, 18

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"Set Value 4"
	.size	.L.str.249, 12

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"tools-value-4-set-to-default"
	.size	.L.str.250, 29

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"Set Value 4 To Default Value"
	.size	.L.str.251, 29

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"tools-value-4-minimum"
	.size	.L.str.252, 22

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"Minimize Value 4"
	.size	.L.str.253, 17

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"tools-value-4-maximum"
	.size	.L.str.254, 22

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"Maximize Value 4"
	.size	.L.str.255, 17

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"tools-value-4-decrease"
	.size	.L.str.256, 23

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"Decrease Value 4"
	.size	.L.str.257, 17

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"tools-value-4-increase"
	.size	.L.str.258, 23

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"Increase Value 4"
	.size	.L.str.259, 17

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"tools-value-4-decrease-skip"
	.size	.L.str.260, 28

	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"Decrease Value 4 More"
	.size	.L.str.261, 22

	.type	.L.str.262,@object      # @.str.262
.L.str.262:
	.asciz	"tools-value-4-increase-skip"
	.size	.L.str.262, 28

	.type	.L.str.263,@object      # @.str.263
.L.str.263:
	.asciz	"Increase Value 4 More"
	.size	.L.str.263, 22

	.type	.L.str.264,@object      # @.str.264
.L.str.264:
	.asciz	"tools-value-4-decrease-percent"
	.size	.L.str.264, 31

	.type	.L.str.265,@object      # @.str.265
.L.str.265:
	.asciz	"Decrease Value 4 Relative"
	.size	.L.str.265, 26

	.type	.L.str.266,@object      # @.str.266
.L.str.266:
	.asciz	"tools-value-4-increase-percent"
	.size	.L.str.266, 31

	.type	.L.str.267,@object      # @.str.267
.L.str.267:
	.asciz	"Increase Value 4 Relative"
	.size	.L.str.267, 26

	.type	.L.str.268,@object      # @.str.268
.L.str.268:
	.asciz	"tools-object-1-set"
	.size	.L.str.268, 19

	.type	.L.str.269,@object      # @.str.269
.L.str.269:
	.asciz	"Select Object 1 by Index"
	.size	.L.str.269, 25

	.type	.L.str.270,@object      # @.str.270
.L.str.270:
	.asciz	"tools-object-1-first"
	.size	.L.str.270, 21

	.type	.L.str.271,@object      # @.str.271
.L.str.271:
	.asciz	"First Object 1"
	.size	.L.str.271, 15

	.type	.L.str.272,@object      # @.str.272
.L.str.272:
	.asciz	"tools-object-1-last"
	.size	.L.str.272, 20

	.type	.L.str.273,@object      # @.str.273
.L.str.273:
	.asciz	"Last Object 1"
	.size	.L.str.273, 14

	.type	.L.str.274,@object      # @.str.274
.L.str.274:
	.asciz	"tools-object-1-previous"
	.size	.L.str.274, 24

	.type	.L.str.275,@object      # @.str.275
.L.str.275:
	.asciz	"Previous Object 1"
	.size	.L.str.275, 18

	.type	.L.str.276,@object      # @.str.276
.L.str.276:
	.asciz	"tools-object-1-next"
	.size	.L.str.276, 20

	.type	.L.str.277,@object      # @.str.277
.L.str.277:
	.asciz	"Next Object 1"
	.size	.L.str.277, 14

	.type	.L.str.278,@object      # @.str.278
.L.str.278:
	.asciz	"tools-object-2-set"
	.size	.L.str.278, 19

	.type	.L.str.279,@object      # @.str.279
.L.str.279:
	.asciz	"Select Object 2 by Index"
	.size	.L.str.279, 25

	.type	.L.str.280,@object      # @.str.280
.L.str.280:
	.asciz	"tools-object-2-first"
	.size	.L.str.280, 21

	.type	.L.str.281,@object      # @.str.281
.L.str.281:
	.asciz	"First Object 2"
	.size	.L.str.281, 15

	.type	.L.str.282,@object      # @.str.282
.L.str.282:
	.asciz	"tools-object-2-last"
	.size	.L.str.282, 20

	.type	.L.str.283,@object      # @.str.283
.L.str.283:
	.asciz	"Last Object 2"
	.size	.L.str.283, 14

	.type	.L.str.284,@object      # @.str.284
.L.str.284:
	.asciz	"tools-object-2-previous"
	.size	.L.str.284, 24

	.type	.L.str.285,@object      # @.str.285
.L.str.285:
	.asciz	"Previous Object 2"
	.size	.L.str.285, 18

	.type	.L.str.286,@object      # @.str.286
.L.str.286:
	.asciz	"tools-object-2-next"
	.size	.L.str.286, 20

	.type	.L.str.287,@object      # @.str.287
.L.str.287:
	.asciz	"Next Object 2"
	.size	.L.str.287, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
