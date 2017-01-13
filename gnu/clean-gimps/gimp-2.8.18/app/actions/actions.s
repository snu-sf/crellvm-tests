	.text
	.file	"actions.bc"
	.globl	actions_init
	.align	16, 0x90
	.type	actions_init,@function
actions_init:                           # @actions_init
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.actions_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_21
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, global_action_factory
	jne	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.actions_init, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_21
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	movq	-8(%rbp), %rdi
	callq	gimp_action_factory_new
	movq	%rax, global_action_factory
	movl	$0, -12(%rbp)
.LBB0_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-12(%rbp), %rax
	cmpq	$43, %rax
	jae	.LBB0_21
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB0_18 Depth=1
	movabsq	$action_groups, %rax
	movq	global_action_factory, %rdi
	movslq	-12(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rsi
	movslq	-12(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$action_groups, %rcx
	movslq	-12(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movslq	-12(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movq	24(%rdi), %r8
	movslq	-12(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rcx
	movq	32(%rcx), %r9
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	gimp_action_factory_group_register
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB0_18 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_18
.LBB0_21:                               # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	actions_init, .Lfunc_end0-actions_init
	.cfi_endproc

	.globl	actions_exit
	.align	16, 0x90
	.type	actions_exit,@function
actions_exit:                           # @actions_exit
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.actions_exit, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_23
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	cmpq	$0, global_action_factory
	je	.LBB1_15
# BB#14:                                # %if.then.13
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.actions_exit, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_23
.LBB1_16:                               # %if.end.15
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.16
	jmp	.LBB1_18
.LBB1_18:                               # %do.body.17
	movq	global_action_factory, %rax
	movq	32(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB1_20
# BB#19:                                # %if.then.20
	jmp	.LBB1_21
.LBB1_20:                               # %if.else.21
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.actions_exit, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_23
.LBB1_21:                               # %if.end.22
	jmp	.LBB1_22
.LBB1_22:                               # %do.end.23
	movq	global_action_factory, %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	$0, global_action_factory
.LBB1_23:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	actions_exit, .Lfunc_end1-actions_exit
	.cfi_endproc

	.globl	action_data_get_gimp
	.align	16, 0x90
	.type	action_data_get_gimp,@function
action_data_get_gimp:                   # @action_data_get_gimp
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB2_97
.LBB2_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then.2
	movl	$0, -44(%rbp)
	jmp	.LBB2_9
.LBB2_4:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_7
# BB#5:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB2_7
# BB#6:                                 # %if.then.5
	movl	$1, -44(%rbp)
	jmp	.LBB2_8
.LBB2_7:                                # %if.else.6
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB2_8:                                # %if.end.8
	jmp	.LBB2_9
.LBB2_9:                                # %if.end.9
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB2_11
# BB#10:                                # %if.then.11
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_97
.LBB2_11:                               # %if.else.12
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB2_13
# BB#12:                                # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB2_18
.LBB2_13:                               # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_16
# BB#14:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB2_16
# BB#15:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB2_17
.LBB2_16:                               # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB2_17:                               # %if.end.32
	jmp	.LBB2_18
.LBB2_18:                               # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB2_23
# BB#19:                                # %if.then.36
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_image_window_get_active_shell
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB2_21
# BB#20:                                # %cond.true
	movq	-80(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB2_22
.LBB2_21:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB2_22
.LBB2_22:                               # %cond.end
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB2_97
.LBB2_23:                               # %if.else.41
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB2_25
# BB#24:                                # %if.then.50
	movl	$0, -100(%rbp)
	jmp	.LBB2_30
.LBB2_25:                               # %if.else.51
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_28
# BB#26:                                # %land.lhs.true.54
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB2_28
# BB#27:                                # %if.then.58
	movl	$1, -100(%rbp)
	jmp	.LBB2_29
.LBB2_28:                               # %if.else.59
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB2_29:                               # %if.end.61
	jmp	.LBB2_30
.LBB2_30:                               # %if.end.62
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB2_32
# BB#31:                                # %if.then.65
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_97
.LBB2_32:                               # %if.else.66
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB2_34
# BB#33:                                # %if.then.75
	movl	$0, -124(%rbp)
	jmp	.LBB2_39
.LBB2_34:                               # %if.else.76
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_37
# BB#35:                                # %land.lhs.true.79
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB2_37
# BB#36:                                # %if.then.83
	movl	$1, -124(%rbp)
	jmp	.LBB2_38
.LBB2_37:                               # %if.else.84
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB2_38:                               # %if.end.86
	jmp	.LBB2_39
.LBB2_39:                               # %if.end.87
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB2_41
# BB#40:                                # %if.then.90
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dock_get_context
	movq	%rax, -24(%rbp)
	jmp	.LBB2_91
.LBB2_41:                               # %if.else.92
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB2_43
# BB#42:                                # %if.then.101
	movl	$0, -148(%rbp)
	jmp	.LBB2_48
.LBB2_43:                               # %if.else.102
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_46
# BB#44:                                # %land.lhs.true.105
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB2_46
# BB#45:                                # %if.then.109
	movl	$1, -148(%rbp)
	jmp	.LBB2_47
.LBB2_46:                               # %if.else.110
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB2_47:                               # %if.end.112
	jmp	.LBB2_48
.LBB2_48:                               # %if.end.113
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB2_50
# BB#49:                                # %if.then.116
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dock_window_get_context
	movq	%rax, -24(%rbp)
	jmp	.LBB2_90
.LBB2_50:                               # %if.else.118
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB2_52
# BB#51:                                # %if.then.127
	movl	$0, -172(%rbp)
	jmp	.LBB2_57
.LBB2_52:                               # %if.else.128
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_55
# BB#53:                                # %land.lhs.true.131
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB2_55
# BB#54:                                # %if.then.135
	movl	$1, -172(%rbp)
	jmp	.LBB2_56
.LBB2_55:                               # %if.else.136
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB2_56:                               # %if.end.138
	jmp	.LBB2_57
.LBB2_57:                               # %if.end.139
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB2_59
# BB#58:                                # %if.then.142
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -24(%rbp)
	jmp	.LBB2_89
.LBB2_59:                               # %if.else.144
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_container_editor_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB2_61
# BB#60:                                # %if.then.153
	movl	$0, -196(%rbp)
	jmp	.LBB2_66
.LBB2_61:                               # %if.else.154
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_64
# BB#62:                                # %land.lhs.true.157
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB2_64
# BB#63:                                # %if.then.161
	movl	$1, -196(%rbp)
	jmp	.LBB2_65
.LBB2_64:                               # %if.else.162
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB2_65:                               # %if.end.164
	jmp	.LBB2_66
.LBB2_66:                               # %if.end.165
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB2_68
# BB#67:                                # %if.then.168
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -24(%rbp)
	jmp	.LBB2_88
.LBB2_68:                               # %if.else.170
	movq	-16(%rbp), %rax
	movq	%rax, -208(%rbp)
	callq	gimp_image_editor_get_type
	movq	%rax, -216(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB2_70
# BB#69:                                # %if.then.179
	movl	$0, -220(%rbp)
	jmp	.LBB2_75
.LBB2_70:                               # %if.else.180
	movq	-208(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_73
# BB#71:                                # %land.lhs.true.183
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-216(%rbp), %rax
	jne	.LBB2_73
# BB#72:                                # %if.then.187
	movl	$1, -220(%rbp)
	jmp	.LBB2_74
.LBB2_73:                               # %if.else.188
	movq	-208(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -220(%rbp)
.LBB2_74:                               # %if.end.190
	jmp	.LBB2_75
.LBB2_75:                               # %if.end.191
	movl	-220(%rbp), %eax
	movl	%eax, -224(%rbp)
	cmpl	$0, -224(%rbp)
	je	.LBB2_77
# BB#76:                                # %if.then.194
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_87
.LBB2_77:                               # %if.else.196
	movq	-16(%rbp), %rax
	movq	%rax, -232(%rbp)
	callq	gimp_navigation_editor_get_type
	movq	%rax, -240(%rbp)
	cmpq	$0, -232(%rbp)
	jne	.LBB2_79
# BB#78:                                # %if.then.205
	movl	$0, -244(%rbp)
	jmp	.LBB2_84
.LBB2_79:                               # %if.else.206
	movq	-232(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_82
# BB#80:                                # %land.lhs.true.209
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-240(%rbp), %rax
	jne	.LBB2_82
# BB#81:                                # %if.then.213
	movl	$1, -244(%rbp)
	jmp	.LBB2_83
.LBB2_82:                               # %if.else.214
	movq	-232(%rbp), %rdi
	movq	-240(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -244(%rbp)
.LBB2_83:                               # %if.end.216
	jmp	.LBB2_84
.LBB2_84:                               # %if.end.217
	movl	-244(%rbp), %eax
	movl	%eax, -248(%rbp)
	cmpl	$0, -248(%rbp)
	je	.LBB2_86
# BB#85:                                # %if.then.220
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB2_86:                               # %if.end.222
	jmp	.LBB2_87
.LBB2_87:                               # %if.end.223
	jmp	.LBB2_88
.LBB2_88:                               # %if.end.224
	jmp	.LBB2_89
.LBB2_89:                               # %if.end.225
	jmp	.LBB2_90
.LBB2_90:                               # %if.end.226
	jmp	.LBB2_91
.LBB2_91:                               # %if.end.227
	jmp	.LBB2_92
.LBB2_92:                               # %if.end.228
	jmp	.LBB2_93
.LBB2_93:                               # %if.end.229
	jmp	.LBB2_94
.LBB2_94:                               # %if.end.230
	cmpq	$0, -24(%rbp)
	je	.LBB2_96
# BB#95:                                # %if.then.232
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_97
.LBB2_96:                               # %if.end.234
	movq	$0, -8(%rbp)
.LBB2_97:                               # %return
	movq	-8(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end2:
	.size	action_data_get_gimp, .Lfunc_end2-action_data_get_gimp
	.cfi_endproc

	.globl	action_data_get_context
	.align	16, 0x90
	.type	action_data_get_context,@function
action_data_get_context:                # @action_data_get_context
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB3_95
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then.2
	movl	$0, -36(%rbp)
	jmp	.LBB3_9
.LBB3_4:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_7
# BB#5:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_7
# BB#6:                                 # %if.then.5
	movl	$1, -36(%rbp)
	jmp	.LBB3_8
.LBB3_7:                                # %if.else.6
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_8:                                # %if.end.8
	jmp	.LBB3_9
.LBB3_9:                                # %if.end.9
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_11
# BB#10:                                # %if.then.11
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_user_context
	movq	%rax, -8(%rbp)
	jmp	.LBB3_95
.LBB3_11:                               # %if.else.13
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_13
# BB#12:                                # %if.then.22
	movl	$0, -60(%rbp)
	jmp	.LBB3_18
.LBB3_13:                               # %if.else.23
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_16
# BB#14:                                # %land.lhs.true.26
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_16
# BB#15:                                # %if.then.30
	movl	$1, -60(%rbp)
	jmp	.LBB3_17
.LBB3_16:                               # %if.else.31
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB3_17:                               # %if.end.33
	jmp	.LBB3_18
.LBB3_18:                               # %if.end.34
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB3_23
# BB#19:                                # %if.then.37
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_image_window_get_active_shell
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB3_21
# BB#20:                                # %cond.true
	movq	-72(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_user_context
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB3_22
.LBB3_21:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB3_22
.LBB3_22:                               # %cond.end
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB3_95
.LBB3_23:                               # %if.else.43
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB3_25
# BB#24:                                # %if.then.52
	movl	$0, -92(%rbp)
	jmp	.LBB3_30
.LBB3_25:                               # %if.else.53
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_28
# BB#26:                                # %land.lhs.true.56
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB3_28
# BB#27:                                # %if.then.60
	movl	$1, -92(%rbp)
	jmp	.LBB3_29
.LBB3_28:                               # %if.else.61
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB3_29:                               # %if.end.63
	jmp	.LBB3_30
.LBB3_30:                               # %if.end.64
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB3_32
# BB#31:                                # %if.then.67
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_get_user_context
	movq	%rax, -8(%rbp)
	jmp	.LBB3_95
.LBB3_32:                               # %if.else.69
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB3_34
# BB#33:                                # %if.then.78
	movl	$0, -116(%rbp)
	jmp	.LBB3_39
.LBB3_34:                               # %if.else.79
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_37
# BB#35:                                # %land.lhs.true.82
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB3_37
# BB#36:                                # %if.then.86
	movl	$1, -116(%rbp)
	jmp	.LBB3_38
.LBB3_37:                               # %if.else.87
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB3_38:                               # %if.end.89
	jmp	.LBB3_39
.LBB3_39:                               # %if.end.90
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB3_41
# BB#40:                                # %if.then.93
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dock_get_context
	movq	%rax, -8(%rbp)
	jmp	.LBB3_95
.LBB3_41:                               # %if.else.95
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB3_43
# BB#42:                                # %if.then.104
	movl	$0, -140(%rbp)
	jmp	.LBB3_48
.LBB3_43:                               # %if.else.105
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_46
# BB#44:                                # %land.lhs.true.108
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB3_46
# BB#45:                                # %if.then.112
	movl	$1, -140(%rbp)
	jmp	.LBB3_47
.LBB3_46:                               # %if.else.113
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB3_47:                               # %if.end.115
	jmp	.LBB3_48
.LBB3_48:                               # %if.end.116
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB3_50
# BB#49:                                # %if.then.119
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dock_window_get_context
	movq	%rax, -8(%rbp)
	jmp	.LBB3_95
.LBB3_50:                               # %if.else.121
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB3_52
# BB#51:                                # %if.then.130
	movl	$0, -164(%rbp)
	jmp	.LBB3_57
.LBB3_52:                               # %if.else.131
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_55
# BB#53:                                # %land.lhs.true.134
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB3_55
# BB#54:                                # %if.then.138
	movl	$1, -164(%rbp)
	jmp	.LBB3_56
.LBB3_55:                               # %if.else.139
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB3_56:                               # %if.end.141
	jmp	.LBB3_57
.LBB3_57:                               # %if.end.142
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB3_59
# BB#58:                                # %if.then.145
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -8(%rbp)
	jmp	.LBB3_95
.LBB3_59:                               # %if.else.147
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_container_editor_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB3_61
# BB#60:                                # %if.then.156
	movl	$0, -188(%rbp)
	jmp	.LBB3_66
.LBB3_61:                               # %if.else.157
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_64
# BB#62:                                # %land.lhs.true.160
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB3_64
# BB#63:                                # %if.then.164
	movl	$1, -188(%rbp)
	jmp	.LBB3_65
.LBB3_64:                               # %if.else.165
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB3_65:                               # %if.end.167
	jmp	.LBB3_66
.LBB3_66:                               # %if.end.168
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB3_68
# BB#67:                                # %if.then.171
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -8(%rbp)
	jmp	.LBB3_95
.LBB3_68:                               # %if.else.173
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)
	callq	gimp_image_editor_get_type
	movq	%rax, -208(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB3_70
# BB#69:                                # %if.then.182
	movl	$0, -212(%rbp)
	jmp	.LBB3_75
.LBB3_70:                               # %if.else.183
	movq	-200(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_73
# BB#71:                                # %land.lhs.true.186
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-208(%rbp), %rax
	jne	.LBB3_73
# BB#72:                                # %if.then.190
	movl	$1, -212(%rbp)
	jmp	.LBB3_74
.LBB3_73:                               # %if.else.191
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -212(%rbp)
.LBB3_74:                               # %if.end.193
	jmp	.LBB3_75
.LBB3_75:                               # %if.end.194
	movl	-212(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	je	.LBB3_77
# BB#76:                                # %if.then.197
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_95
.LBB3_77:                               # %if.else.198
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gimp_navigation_editor_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB3_79
# BB#78:                                # %if.then.207
	movl	$0, -236(%rbp)
	jmp	.LBB3_84
.LBB3_79:                               # %if.else.208
	movq	-224(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_82
# BB#80:                                # %land.lhs.true.211
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB3_82
# BB#81:                                # %if.then.215
	movl	$1, -236(%rbp)
	jmp	.LBB3_83
.LBB3_82:                               # %if.else.216
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -236(%rbp)
.LBB3_83:                               # %if.end.218
	jmp	.LBB3_84
.LBB3_84:                               # %if.end.219
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB3_86
# BB#85:                                # %if.then.222
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_95
.LBB3_86:                               # %if.end.224
	jmp	.LBB3_87
.LBB3_87:                               # %if.end.225
	jmp	.LBB3_88
.LBB3_88:                               # %if.end.226
	jmp	.LBB3_89
.LBB3_89:                               # %if.end.227
	jmp	.LBB3_90
.LBB3_90:                               # %if.end.228
	jmp	.LBB3_91
.LBB3_91:                               # %if.end.229
	jmp	.LBB3_92
.LBB3_92:                               # %if.end.230
	jmp	.LBB3_93
.LBB3_93:                               # %if.end.231
	jmp	.LBB3_94
.LBB3_94:                               # %if.end.232
	movq	$0, -8(%rbp)
.LBB3_95:                               # %return
	movq	-8(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end3:
	.size	action_data_get_context, .Lfunc_end3-action_data_get_context
	.cfi_endproc

	.globl	action_data_get_image
	.align	16, 0x90
	.type	action_data_get_image,@function
action_data_get_image:                  # @action_data_get_image
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
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB4_90
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_4
# BB#3:                                 # %if.then.2
	movl	$0, -52(%rbp)
	jmp	.LBB4_9
.LBB4_4:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_7
# BB#5:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB4_7
# BB#6:                                 # %if.then.5
	movl	$1, -52(%rbp)
	jmp	.LBB4_8
.LBB4_7:                                # %if.else.6
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB4_8:                                # %if.end.8
	jmp	.LBB4_9
.LBB4_9:                                # %if.end.9
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB4_11
# BB#10:                                # %if.then.11
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB4_84
.LBB4_11:                               # %if.else.12
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB4_13
# BB#12:                                # %if.then.21
	movl	$0, -76(%rbp)
	jmp	.LBB4_18
.LBB4_13:                               # %if.else.22
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_16
# BB#14:                                # %land.lhs.true.25
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB4_16
# BB#15:                                # %if.then.29
	movl	$1, -76(%rbp)
	jmp	.LBB4_17
.LBB4_16:                               # %if.else.30
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB4_17:                               # %if.end.32
	jmp	.LBB4_18
.LBB4_18:                               # %if.end.33
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB4_23
# BB#19:                                # %if.then.36
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_image_window_get_active_shell
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB4_21
# BB#20:                                # %cond.true
	movq	-88(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB4_22
.LBB4_21:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB4_22
.LBB4_22:                               # %cond.end
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB4_83
.LBB4_23:                               # %if.else.41
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB4_25
# BB#24:                                # %if.then.50
	movl	$0, -108(%rbp)
	jmp	.LBB4_30
.LBB4_25:                               # %if.else.51
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_28
# BB#26:                                # %land.lhs.true.54
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB4_28
# BB#27:                                # %if.then.58
	movl	$1, -108(%rbp)
	jmp	.LBB4_29
.LBB4_28:                               # %if.else.59
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB4_29:                               # %if.end.61
	jmp	.LBB4_30
.LBB4_30:                               # %if.end.62
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB4_32
# BB#31:                                # %if.then.65
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_get_user_context
	movq	%rax, -24(%rbp)
	jmp	.LBB4_82
.LBB4_32:                               # %if.else.67
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB4_34
# BB#33:                                # %if.then.76
	movl	$0, -132(%rbp)
	jmp	.LBB4_39
.LBB4_34:                               # %if.else.77
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_37
# BB#35:                                # %land.lhs.true.80
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB4_37
# BB#36:                                # %if.then.84
	movl	$1, -132(%rbp)
	jmp	.LBB4_38
.LBB4_37:                               # %if.else.85
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB4_38:                               # %if.end.87
	jmp	.LBB4_39
.LBB4_39:                               # %if.end.88
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB4_41
# BB#40:                                # %if.then.91
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dock_get_context
	movq	%rax, -24(%rbp)
	jmp	.LBB4_81
.LBB4_41:                               # %if.else.93
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB4_43
# BB#42:                                # %if.then.102
	movl	$0, -156(%rbp)
	jmp	.LBB4_48
.LBB4_43:                               # %if.else.103
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_46
# BB#44:                                # %land.lhs.true.106
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB4_46
# BB#45:                                # %if.then.110
	movl	$1, -156(%rbp)
	jmp	.LBB4_47
.LBB4_46:                               # %if.else.111
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB4_47:                               # %if.end.113
	jmp	.LBB4_48
.LBB4_48:                               # %if.end.114
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB4_50
# BB#49:                                # %if.then.117
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dock_window_get_context
	movq	%rax, -24(%rbp)
	jmp	.LBB4_80
.LBB4_50:                               # %if.else.119
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_item_tree_view_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB4_52
# BB#51:                                # %if.then.128
	movl	$0, -180(%rbp)
	jmp	.LBB4_57
.LBB4_52:                               # %if.else.129
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_55
# BB#53:                                # %land.lhs.true.132
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB4_55
# BB#54:                                # %if.then.136
	movl	$1, -180(%rbp)
	jmp	.LBB4_56
.LBB4_55:                               # %if.else.137
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB4_56:                               # %if.end.139
	jmp	.LBB4_57
.LBB4_57:                               # %if.end.140
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB4_59
# BB#58:                                # %if.then.143
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_item_tree_view_get_image
	movq	%rax, -8(%rbp)
	jmp	.LBB4_90
.LBB4_59:                               # %if.else.145
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)
	callq	gimp_image_editor_get_type
	movq	%rax, -200(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB4_61
# BB#60:                                # %if.then.154
	movl	$0, -204(%rbp)
	jmp	.LBB4_66
.LBB4_61:                               # %if.else.155
	movq	-192(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_64
# BB#62:                                # %land.lhs.true.158
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB4_64
# BB#63:                                # %if.then.162
	movl	$1, -204(%rbp)
	jmp	.LBB4_65
.LBB4_64:                               # %if.else.163
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -204(%rbp)
.LBB4_65:                               # %if.end.165
	jmp	.LBB4_66
.LBB4_66:                               # %if.end.166
	movl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	je	.LBB4_68
# BB#67:                                # %if.then.169
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_90
.LBB4_68:                               # %if.else.170
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)
	callq	gimp_navigation_editor_get_type
	movq	%rax, -224(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB4_70
# BB#69:                                # %if.then.179
	movl	$0, -228(%rbp)
	jmp	.LBB4_75
.LBB4_70:                               # %if.else.180
	movq	-216(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_73
# BB#71:                                # %land.lhs.true.183
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB4_73
# BB#72:                                # %if.then.187
	movl	$1, -228(%rbp)
	jmp	.LBB4_74
.LBB4_73:                               # %if.else.188
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -228(%rbp)
.LBB4_74:                               # %if.end.190
	jmp	.LBB4_75
.LBB4_75:                               # %if.end.191
	movl	-228(%rbp), %eax
	movl	%eax, -232(%rbp)
	cmpl	$0, -232(%rbp)
	je	.LBB4_77
# BB#76:                                # %if.then.194
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB4_77:                               # %if.end.196
	jmp	.LBB4_78
.LBB4_78:                               # %if.end.197
	jmp	.LBB4_79
.LBB4_79:                               # %if.end.198
	jmp	.LBB4_80
.LBB4_80:                               # %if.end.199
	jmp	.LBB4_81
.LBB4_81:                               # %if.end.200
	jmp	.LBB4_82
.LBB4_82:                               # %if.end.201
	jmp	.LBB4_83
.LBB4_83:                               # %if.end.202
	jmp	.LBB4_84
.LBB4_84:                               # %if.end.203
	cmpq	$0, -24(%rbp)
	je	.LBB4_86
# BB#85:                                # %if.then.205
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_image
	movq	%rax, -8(%rbp)
	jmp	.LBB4_90
.LBB4_86:                               # %if.else.207
	cmpq	$0, -32(%rbp)
	je	.LBB4_88
# BB#87:                                # %if.then.209
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -8(%rbp)
	jmp	.LBB4_90
.LBB4_88:                               # %if.end.211
	jmp	.LBB4_89
.LBB4_89:                               # %if.end.212
	movq	$0, -8(%rbp)
.LBB4_90:                               # %return
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	action_data_get_image, .Lfunc_end4-action_data_get_image
	.cfi_endproc

	.globl	action_data_get_display
	.align	16, 0x90
	.type	action_data_get_display,@function
action_data_get_display:                # @action_data_get_display
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB5_67
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_4
# BB#3:                                 # %if.then.2
	movl	$0, -44(%rbp)
	jmp	.LBB5_9
.LBB5_4:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_7
# BB#5:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_7
# BB#6:                                 # %if.then.5
	movl	$1, -44(%rbp)
	jmp	.LBB5_8
.LBB5_7:                                # %if.else.6
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_8:                                # %if.end.8
	jmp	.LBB5_9
.LBB5_9:                                # %if.end.9
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_11
# BB#10:                                # %if.then.11
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_67
.LBB5_11:                               # %if.else.12
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_13
# BB#12:                                # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB5_18
.LBB5_13:                               # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_16
# BB#14:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB5_16
# BB#15:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB5_17
.LBB5_16:                               # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB5_17:                               # %if.end.32
	jmp	.LBB5_18
.LBB5_18:                               # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB5_23
# BB#19:                                # %if.then.36
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_image_window_get_active_shell
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB5_21
# BB#20:                                # %cond.true
	movq	-80(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB5_22
.LBB5_21:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB5_22
.LBB5_22:                               # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB5_67
.LBB5_23:                               # %if.else.40
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB5_25
# BB#24:                                # %if.then.49
	movl	$0, -100(%rbp)
	jmp	.LBB5_30
.LBB5_25:                               # %if.else.50
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_28
# BB#26:                                # %land.lhs.true.53
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB5_28
# BB#27:                                # %if.then.57
	movl	$1, -100(%rbp)
	jmp	.LBB5_29
.LBB5_28:                               # %if.else.58
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB5_29:                               # %if.end.60
	jmp	.LBB5_30
.LBB5_30:                               # %if.end.61
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB5_32
# BB#31:                                # %if.then.64
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_get_user_context
	movq	%rax, -24(%rbp)
	jmp	.LBB5_62
.LBB5_32:                               # %if.else.66
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB5_34
# BB#33:                                # %if.then.75
	movl	$0, -124(%rbp)
	jmp	.LBB5_39
.LBB5_34:                               # %if.else.76
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_37
# BB#35:                                # %land.lhs.true.79
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB5_37
# BB#36:                                # %if.then.83
	movl	$1, -124(%rbp)
	jmp	.LBB5_38
.LBB5_37:                               # %if.else.84
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB5_38:                               # %if.end.86
	jmp	.LBB5_39
.LBB5_39:                               # %if.end.87
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB5_41
# BB#40:                                # %if.then.90
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dock_get_context
	movq	%rax, -24(%rbp)
	jmp	.LBB5_61
.LBB5_41:                               # %if.else.92
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB5_43
# BB#42:                                # %if.then.101
	movl	$0, -148(%rbp)
	jmp	.LBB5_48
.LBB5_43:                               # %if.else.102
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_46
# BB#44:                                # %land.lhs.true.105
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB5_46
# BB#45:                                # %if.then.109
	movl	$1, -148(%rbp)
	jmp	.LBB5_47
.LBB5_46:                               # %if.else.110
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB5_47:                               # %if.end.112
	jmp	.LBB5_48
.LBB5_48:                               # %if.end.113
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB5_50
# BB#49:                                # %if.then.116
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dock_window_get_context
	movq	%rax, -24(%rbp)
	jmp	.LBB5_60
.LBB5_50:                               # %if.else.118
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_navigation_editor_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB5_52
# BB#51:                                # %if.then.127
	movl	$0, -172(%rbp)
	jmp	.LBB5_57
.LBB5_52:                               # %if.else.128
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_55
# BB#53:                                # %land.lhs.true.131
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB5_55
# BB#54:                                # %if.then.135
	movl	$1, -172(%rbp)
	jmp	.LBB5_56
.LBB5_55:                               # %if.else.136
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB5_56:                               # %if.end.138
	jmp	.LBB5_57
.LBB5_57:                               # %if.end.139
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB5_59
# BB#58:                                # %if.then.142
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB5_59:                               # %if.end.144
	jmp	.LBB5_60
.LBB5_60:                               # %if.end.145
	jmp	.LBB5_61
.LBB5_61:                               # %if.end.146
	jmp	.LBB5_62
.LBB5_62:                               # %if.end.147
	jmp	.LBB5_63
.LBB5_63:                               # %if.end.148
	jmp	.LBB5_64
.LBB5_64:                               # %if.end.149
	cmpq	$0, -24(%rbp)
	je	.LBB5_66
# BB#65:                                # %if.then.151
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_display
	movq	%rax, -8(%rbp)
	jmp	.LBB5_67
.LBB5_66:                               # %if.end.153
	movq	$0, -8(%rbp)
.LBB5_67:                               # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	action_data_get_display, .Lfunc_end5-action_data_get_display
	.cfi_endproc

	.globl	action_data_get_shell
	.align	16, 0x90
	.type	action_data_get_shell,@function
action_data_get_shell:                  # @action_data_get_shell
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -24(%rbp)
.LBB6_2:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	action_data_get_shell, .Lfunc_end6-action_data_get_shell
	.cfi_endproc

	.globl	action_data_get_widget
	.align	16, 0x90
	.type	action_data_get_widget,@function
action_data_get_widget:                 # @action_data_get_widget
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB7_34
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_4
# BB#3:                                 # %if.then.2
	movl	$0, -44(%rbp)
	jmp	.LBB7_9
.LBB7_4:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_7
# BB#5:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_7
# BB#6:                                 # %if.then.5
	movl	$1, -44(%rbp)
	jmp	.LBB7_8
.LBB7_7:                                # %if.else.6
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB7_8:                                # %if.end.8
	jmp	.LBB7_9
.LBB7_9:                                # %if.end.9
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_11
# BB#10:                                # %if.then.11
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB7_31
.LBB7_11:                               # %if.else.12
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB7_13
# BB#12:                                # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB7_18
.LBB7_13:                               # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_16
# BB#14:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB7_16
# BB#15:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB7_17
.LBB7_16:                               # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB7_17:                               # %if.end.32
	jmp	.LBB7_18
.LBB7_18:                               # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB7_20
# BB#19:                                # %if.then.36
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_get_user_context
	movq	%rax, %rdi
	callq	gimp_context_get_display
	movq	%rax, -24(%rbp)
	jmp	.LBB7_30
.LBB7_20:                               # %if.else.39
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB7_22
# BB#21:                                # %if.then.48
	movl	$0, -92(%rbp)
	jmp	.LBB7_27
.LBB7_22:                               # %if.else.49
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_25
# BB#23:                                # %land.lhs.true.52
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB7_25
# BB#24:                                # %if.then.56
	movl	$1, -92(%rbp)
	jmp	.LBB7_26
.LBB7_25:                               # %if.else.57
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB7_26:                               # %if.end.59
	jmp	.LBB7_27
.LBB7_27:                               # %if.end.60
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB7_29
# BB#28:                                # %if.then.63
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_34
.LBB7_29:                               # %if.end.64
	jmp	.LBB7_30
.LBB7_30:                               # %if.end.65
	jmp	.LBB7_31
.LBB7_31:                               # %if.end.66
	cmpq	$0, -24(%rbp)
	je	.LBB7_33
# BB#32:                                # %if.then.68
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
	jmp	.LBB7_34
.LBB7_33:                               # %if.end.72
	callq	dialogs_get_toolbox
	movq	%rax, -8(%rbp)
.LBB7_34:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	action_data_get_widget, .Lfunc_end7-action_data_get_widget
	.cfi_endproc

	.globl	action_data_sel_count
	.align	16, 0x90
	.type	action_data_sel_count,@function
action_data_sel_count:                  # @action_data_sel_count
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	callq	gimp_container_editor_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_7
.LBB8_2:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_5
# BB#4:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_6
.LBB8_5:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB8_6:                                # %if.end
	jmp	.LBB8_7
.LBB8_7:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_9
# BB#8:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_selected
	movl	%eax, -4(%rbp)
	jmp	.LBB8_10
.LBB8_9:                                # %if.else.13
	movl	$0, -4(%rbp)
.LBB8_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	action_data_sel_count, .Lfunc_end8-action_data_sel_count
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
.LCPI9_1:
	.quad	4652007308841189376     # double 1000
	.text
	.globl	action_select_value
	.align	16, 0x90
	.type	action_select_value,@function
action_select_value:                    # @action_select_value
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
	subq	$128, %rsp
	movl	%edi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movsd	%xmm4, -56(%rbp)
	movsd	%xmm5, -64(%rbp)
	movsd	%xmm6, -72(%rbp)
	movsd	%xmm7, -80(%rbp)
	movl	%esi, -84(%rbp)
	movl	-12(%rbp), %esi
	addl	$11, %esi
	movl	%esi, %eax
	subl	$10, %esi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	ja	.LBB9_22
# BB#44:                                # %entry
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_1:                                # %sw.bb
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB9_27
.LBB9_2:                                # %sw.bb.1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB9_27
.LBB9_3:                                # %sw.bb.2
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB9_27
.LBB9_4:                                # %sw.bb.3
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB9_27
.LBB9_5:                                # %sw.bb.4
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB9_27
.LBB9_6:                                # %sw.bb.5
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB9_27
.LBB9_7:                                # %sw.bb.7
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB9_27
.LBB9_8:                                # %sw.bb.9
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB9_27
.LBB9_9:                                # %sw.bb.11
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB9_27
.LBB9_10:                               # %sw.bb.13
	jmp	.LBB9_11
.LBB9_11:                               # %do.body
	xorps	%xmm0, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB9_13
# BB#12:                                # %if.then
	jmp	.LBB9_14
.LBB9_13:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.action_select_value, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB9_43
.LBB9_14:                               # %if.end
	jmp	.LBB9_15
.LBB9_15:                               # %do.end
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB9_27
.LBB9_16:                               # %sw.bb.15
	jmp	.LBB9_17
.LBB9_17:                               # %do.body.16
	xorps	%xmm0, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB9_19
# BB#18:                                # %if.then.18
	jmp	.LBB9_20
.LBB9_19:                               # %if.else.19
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.action_select_value, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB9_43
.LBB9_20:                               # %if.end.20
	jmp	.LBB9_21
.LBB9_21:                               # %do.end.21
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB9_27
.LBB9_22:                               # %sw.default
	cmpl	$0, -12(%rbp)
	jl	.LBB9_24
# BB#23:                                # %if.then.24
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm1
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-32(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	addsd	-32(%rbp), %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB9_26
.LBB9_24:                               # %if.else.29
	jmp	.LBB9_25
.LBB9_25:                               # %do.body.30
	movabsq	$.L.str, %rdi
	movl	$8, %esi
	movabsq	$.L.str.6, %rdx
	movabsq	$.L.str.7, %rcx
	movl	$522, %r8d              # imm = 0x20A
	movabsq	$.L__func__.action_select_value, %r9
	movb	$0, %al
	callq	g_log
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB9_43
.LBB9_26:                               # %if.end.32
	jmp	.LBB9_27
.LBB9_27:                               # %sw.epilog
	cmpl	$0, -84(%rbp)
	je	.LBB9_35
# BB#28:                                # %if.then.33
	jmp	.LBB9_29
.LBB9_29:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_31
# BB#30:                                # %while.body
                                        #   in Loop: Header=BB9_29 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB9_29
.LBB9_31:                               # %while.end
	jmp	.LBB9_32
.LBB9_32:                               # %while.cond.38
                                        # =>This Inner Loop Header: Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB9_34
# BB#33:                                # %while.body.41
                                        #   in Loop: Header=BB9_32 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB9_32
.LBB9_34:                               # %while.end.44
	jmp	.LBB9_42
.LBB9_35:                               # %if.else.45
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB9_37
# BB#36:                                # %cond.true
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB9_41
.LBB9_37:                               # %cond.false
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_39
# BB#38:                                # %cond.true.50
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB9_40
.LBB9_39:                               # %cond.false.51
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB9_40:                               # %cond.end
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
.LBB9_41:                               # %cond.end.52
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB9_42:                               # %if.end.54
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB9_43:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	action_select_value, .Lfunc_end9-action_select_value
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_16
	.quad	.LBB9_10
	.quad	.LBB9_9
	.quad	.LBB9_8
	.quad	.LBB9_7
	.quad	.LBB9_6
	.quad	.LBB9_5
	.quad	.LBB9_4
	.quad	.LBB9_3
	.quad	.LBB9_2
	.quad	.LBB9_1

	.text
	.globl	action_select_property
	.align	16, 0x90
	.type	action_select_property,@function
action_select_property:                 # @action_select_property
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
	subq	$304, %rsp              # imm = 0x130
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm2, -56(%rbp)
	movsd	%xmm3, -64(%rbp)
	movl	%r8d, -68(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB10_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB10_4
# BB#3:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB10_9
.LBB10_4:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_7
# BB#5:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB10_7
# BB#6:                                 # %if.then.4
	movl	$1, -100(%rbp)
	jmp	.LBB10_8
.LBB10_7:                               # %if.else.5
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB10_8:                               # %if.end
	jmp	.LBB10_9
.LBB10_9:                               # %if.end.7
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB10_11
.LBB10_10:                              # %if.then.9
	jmp	.LBB10_12
.LBB10_11:                              # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.action_select_property, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_52
.LBB10_12:                              # %if.end.11
	jmp	.LBB10_13
.LBB10_13:                              # %do.end
	jmp	.LBB10_14
.LBB10_14:                              # %do.body.12
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a
	cmpl	$0, %eax
	je	.LBB10_16
# BB#15:                                # %if.then.15
	jmp	.LBB10_17
.LBB10_16:                              # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.action_select_property, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_52
.LBB10_17:                              # %if.end.17
	jmp	.LBB10_18
.LBB10_18:                              # %do.end.18
	jmp	.LBB10_19
.LBB10_19:                              # %do.body.19
	cmpq	$0, -32(%rbp)
	je	.LBB10_21
# BB#20:                                # %if.then.21
	jmp	.LBB10_22
.LBB10_21:                              # %if.else.22
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.action_select_property, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_52
.LBB10_22:                              # %if.end.23
	jmp	.LBB10_23
.LBB10_23:                              # %do.end.24
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_class_find_property
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	g_param_spec_types, %rax
	movq	104(%rax), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB10_25
# BB#24:                                # %if.then.34
	movl	$0, -124(%rbp)
	jmp	.LBB10_30
.LBB10_25:                              # %if.else.35
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_28
# BB#26:                                # %land.lhs.true.38
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB10_28
# BB#27:                                # %if.then.42
	movl	$1, -124(%rbp)
	jmp	.LBB10_29
.LBB10_28:                              # %if.else.43
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB10_29:                              # %if.end.45
	jmp	.LBB10_30
.LBB10_30:                              # %if.end.46
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB10_36
# BB#31:                                # %if.then.49
	leaq	-136(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movl	-4(%rbp), %edi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-80(%rbp), %rcx
	movq	g_param_spec_types, %rdx
	movq	104(%rdx), %rsi
	movl	%edi, -196(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	callq	g_type_check_instance_cast
	movsd	72(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-80(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	104(%rcx), %rsi
	movq	%rax, %rdi
	movsd	%xmm1, -216(%rbp)       # 8-byte Spill
	callq	g_type_check_instance_cast
	movsd	80(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-80(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	104(%rcx), %rsi
	movq	%rax, %rdi
	movsd	%xmm2, -224(%rbp)       # 8-byte Spill
	callq	g_type_check_instance_cast
	movsd	88(%rax), %xmm3         # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-48(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-56(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-64(%rbp), %xmm7        # xmm7 = mem[0],zero
	movl	-68(%rbp), %esi
	movl	-196(%rbp), %edi        # 4-byte Reload
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-224(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	action_select_value
	xorl	%esi, %esi
	movl	%esi, %edx
	movsd	%xmm0, -136(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movb	$1, %al
	callq	g_object_set
	cmpq	$0, -16(%rbp)
	je	.LBB10_35
# BB#32:                                # %if.then.59
	movq	-80(%rbp), %rdi
	callq	g_param_spec_get_blurb
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB10_34
# BB#33:                                # %if.then.63
	movabsq	$.L.str.11, %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-144(%rbp), %rcx
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$1, %al
	callq	action_message
.LBB10_34:                              # %if.end.65
	jmp	.LBB10_35
.LBB10_35:                              # %if.end.66
	jmp	.LBB10_52
.LBB10_36:                              # %if.else.67
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	g_param_spec_types, %rax
	movq	24(%rax), %rax
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB10_38
# BB#37:                                # %if.then.76
	movl	$0, -164(%rbp)
	jmp	.LBB10_43
.LBB10_38:                              # %if.else.77
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_41
# BB#39:                                # %land.lhs.true.80
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB10_41
# BB#40:                                # %if.then.84
	movl	$1, -164(%rbp)
	jmp	.LBB10_42
.LBB10_41:                              # %if.else.85
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB10_42:                              # %if.end.87
	jmp	.LBB10_43
.LBB10_43:                              # %if.end.88
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB10_49
# BB#44:                                # %if.then.91
	leaq	-172(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movl	-4(%rbp), %edi
	cvtsi2sdl	-172(%rbp), %xmm0
	movq	-80(%rbp), %rcx
	movq	g_param_spec_types, %rdx
	movq	24(%rdx), %rsi
	movl	%edi, -252(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	callq	g_type_check_instance_cast
	cvtsi2sdl	72(%rax), %xmm1
	movq	-80(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	movsd	%xmm1, -272(%rbp)       # 8-byte Spill
	callq	g_type_check_instance_cast
	cvtsi2sdl	76(%rax), %xmm2
	movq	-80(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	movsd	%xmm2, -280(%rbp)       # 8-byte Spill
	callq	g_type_check_instance_cast
	cvtsi2sdl	80(%rax), %xmm3
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-48(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-56(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-64(%rbp), %xmm7        # xmm7 = mem[0],zero
	movl	-68(%rbp), %esi
	movl	-252(%rbp), %edi        # 4-byte Reload
	movsd	-264(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-280(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	action_select_value
	xorl	%esi, %esi
	movl	%esi, %ecx
	cvttsd2si	%xmm0, %esi
	movl	%esi, -172(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	movl	-172(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	cmpq	$0, -16(%rbp)
	je	.LBB10_48
# BB#45:                                # %if.then.109
	movq	-80(%rbp), %rdi
	callq	g_param_spec_get_blurb
	movq	%rax, -184(%rbp)
	cmpq	$0, -184(%rbp)
	je	.LBB10_47
# BB#46:                                # %if.then.114
	movabsq	$.L.str.12, %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-184(%rbp), %rcx
	movl	-172(%rbp), %r8d
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	action_message
.LBB10_47:                              # %if.end.116
	jmp	.LBB10_48
.LBB10_48:                              # %if.end.117
	jmp	.LBB10_51
.LBB10_49:                              # %if.else.118
	jmp	.LBB10_50
.LBB10_50:                              # %do.body.119
	movabsq	$.L.str, %rdi
	movl	$8, %esi
	movabsq	$.L.str.6, %rdx
	movabsq	$.L.str.7, %rcx
	movl	$616, %r8d              # imm = 0x268
	movabsq	$.L__func__.action_select_property, %r9
	movb	$0, %al
	callq	g_log
	jmp	.LBB10_52
.LBB10_51:                              # %if.end.121
	jmp	.LBB10_52
.LBB10_52:                              # %if.end.122
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end10:
	.size	action_select_property, .Lfunc_end10-action_select_property
	.cfi_endproc

	.globl	action_message
	.align	16, 0x90
	.type	action_message,@function
action_message:                         # @action_message
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
	subq	$528, %rsp              # imm = 0x210
	testb	%al, %al
	movaps	%xmm7, -336(%rbp)       # 16-byte Spill
	movaps	%xmm6, -352(%rbp)       # 16-byte Spill
	movaps	%xmm5, -368(%rbp)       # 16-byte Spill
	movaps	%xmm4, -384(%rbp)       # 16-byte Spill
	movaps	%xmm3, -400(%rbp)       # 16-byte Spill
	movaps	%xmm2, -416(%rbp)       # 16-byte Spill
	movaps	%xmm1, -432(%rbp)       # 16-byte Spill
	movaps	%xmm0, -448(%rbp)       # 16-byte Spill
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%r9, -464(%rbp)         # 8-byte Spill
	movq	%r8, -472(%rbp)         # 8-byte Spill
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	je	.LBB11_21
# BB#20:                                # %entry
	movaps	-448(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -272(%rbp)
	movaps	-432(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -256(%rbp)
	movaps	-416(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -240(%rbp)
	movaps	-400(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -224(%rbp)
	movaps	-384(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -208(%rbp)
	movaps	-368(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -192(%rbp)
	movaps	-352(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -176(%rbp)
	movaps	-336(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -160(%rbp)
.LBB11_21:                              # %entry
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	%rax, -280(%rbp)
	movq	-472(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -288(%rbp)
	movq	-480(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -296(%rbp)
	movq	-488(%rbp), %rsi        # 8-byte Reload
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	-456(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_tool_options_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB11_7
.LBB11_2:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_5
# BB#3:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB11_5
# BB#4:                                 # %if.then.5
	movl	$1, -100(%rbp)
	jmp	.LBB11_6
.LBB11_5:                               # %if.else.6
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB11_6:                               # %if.end
	jmp	.LBB11_7
.LBB11_7:                               # %if.end.8
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB11_9
# BB#8:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gimp_tool_options_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	344(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_stock_id
	movq	%rax, -48(%rbp)
	jmp	.LBB11_19
.LBB11_9:                               # %if.else.18
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB11_11
# BB#10:                                # %if.then.27
	movl	$0, -132(%rbp)
	jmp	.LBB11_16
.LBB11_11:                              # %if.else.28
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_14
# BB#12:                                # %land.lhs.true.31
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB11_14
# BB#13:                                # %if.then.35
	movl	$1, -132(%rbp)
	jmp	.LBB11_15
.LBB11_14:                              # %if.else.36
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB11_15:                              # %if.end.38
	jmp	.LBB11_16
.LBB11_16:                              # %if.end.39
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB11_18
# BB#17:                                # %if.then.42
	movq	-16(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_stock_id
	movq	%rax, -48(%rbp)
.LBB11_18:                              # %if.end.46
	jmp	.LBB11_19
.LBB11_19:                              # %if.end.47
	leaq	-320(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$48, -76(%rbp)
	movl	$24, -80(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rcx
	xorl	%esi, %esi
	leaq	-80(%rbp), %r8
	callq	gimp_statusbar_push_temp_valist
	addq	$528, %rsp              # imm = 0x210
	popq	%rbp
	retq
.Lfunc_end11:
	.size	action_message, .Lfunc_end11-action_message
	.cfi_endproc

	.globl	action_select_object
	.align	16, 0x90
	.type	action_select_object,@function
action_select_object:                   # @action_select_object
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
	subq	$112, %rsp
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.action_select_object, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_48
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB12_22
# BB#14:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_object_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB12_16
# BB#15:                                # %if.then.21
	movl	$0, -84(%rbp)
	jmp	.LBB12_21
.LBB12_16:                              # %if.else.22
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_19
# BB#17:                                # %land.lhs.true.25
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB12_19
# BB#18:                                # %if.then.29
	movl	$1, -84(%rbp)
	jmp	.LBB12_20
.LBB12_19:                              # %if.else.30
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB12_20:                              # %if.end.32
	jmp	.LBB12_21
.LBB12_21:                              # %if.end.33
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB12_23
.LBB12_22:                              # %if.then.36
	jmp	.LBB12_24
.LBB12_23:                              # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.action_select_object, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_48
.LBB12_24:                              # %if.end.38
	jmp	.LBB12_25
.LBB12_25:                              # %do.end.39
	cmpq	$0, -32(%rbp)
	jne	.LBB12_27
# BB#26:                                # %if.then.41
	movq	$0, -8(%rbp)
	jmp	.LBB12_48
.LBB12_27:                              # %if.end.42
	movq	-24(%rbp), %rdi
	callq	gimp_container_get_n_children
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.LBB12_29
# BB#28:                                # %if.then.45
	movq	$0, -8(%rbp)
	jmp	.LBB12_48
.LBB12_29:                              # %if.end.46
	movl	-12(%rbp), %eax
	addl	$9, %eax
	movl	%eax, %ecx
	subl	$7, %eax
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%eax, -100(%rbp)        # 4-byte Spill
	ja	.LBB12_36
# BB#49:                                # %if.end.46
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI12_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB12_30:                              # %sw.bb
	movl	$0, -36(%rbp)
	jmp	.LBB12_41
.LBB12_31:                              # %sw.bb.47
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB12_41
.LBB12_32:                              # %sw.bb.48
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_container_get_child_index
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB12_41
.LBB12_33:                              # %sw.bb.51
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_container_get_child_index
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB12_41
.LBB12_34:                              # %sw.bb.53
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_container_get_child_index
	subl	$10, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB12_41
.LBB12_35:                              # %sw.bb.56
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_container_get_child_index
	addl	$10, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB12_41
.LBB12_36:                              # %sw.default
	cmpl	$0, -12(%rbp)
	jl	.LBB12_38
# BB#37:                                # %if.then.60
	movl	-12(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB12_40
.LBB12_38:                              # %if.else.61
	jmp	.LBB12_39
.LBB12_39:                              # %do.body.62
	movabsq	$.L.str, %rdi
	movl	$8, %esi
	movabsq	$.L.str.6, %rdx
	movabsq	$.L.str.7, %rcx
	movl	$669, %r8d              # imm = 0x29D
	movabsq	$.L__func__.action_select_object, %r9
	movb	$0, %al
	callq	g_log
	movq	-32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB12_48
.LBB12_40:                              # %if.end.64
	jmp	.LBB12_41
.LBB12_41:                              # %sw.epilog
	movl	-36(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB12_43
# BB#42:                                # %cond.true
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB12_47
.LBB12_43:                              # %cond.false
	cmpl	$0, -36(%rbp)
	jge	.LBB12_45
# BB#44:                                # %cond.true.69
	xorl	%eax, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB12_46
.LBB12_45:                              # %cond.false.70
	movl	-36(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB12_46:                              # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB12_47:                              # %cond.end.71
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_container_get_child_by_index
	movq	%rax, -8(%rbp)
.LBB12_48:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	action_select_object, .Lfunc_end12-action_select_object
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI12_0:
	.quad	.LBB12_35
	.quad	.LBB12_34
	.quad	.LBB12_33
	.quad	.LBB12_32
	.quad	.LBB12_36
	.quad	.LBB12_36
	.quad	.LBB12_31
	.quad	.LBB12_30

	.type	global_action_factory,@object # @global_action_factory
	.bss
	.globl	global_action_factory
	.align	8
global_action_factory:
	.quad	0
	.size	global_action_factory, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Actions"
	.size	.L.str, 13

	.type	.L__func__.actions_init,@object # @__func__.actions_init
.L__func__.actions_init:
	.asciz	"actions_init"
	.size	.L__func__.actions_init, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"global_action_factory == NULL"
	.size	.L.str.2, 30

	.type	action_groups,@object   # @action_groups
	.section	.rodata,"a",@progbits
	.align	16
action_groups:
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	brush_editor_actions_setup
	.quad	brush_editor_actions_update
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.17
	.quad	brushes_actions_setup
	.quad	brushes_actions_update
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	buffers_actions_setup
	.quad	buffers_actions_update
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	channels_actions_setup
	.quad	channels_actions_update
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	colormap_actions_setup
	.quad	colormap_actions_update
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	config_actions_setup
	.quad	config_actions_update
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	context_actions_setup
	.quad	context_actions_update
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	0
	.quad	cursor_info_actions_setup
	.quad	cursor_info_actions_update
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	0
	.quad	debug_actions_setup
	.quad	debug_actions_update
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	0
	.quad	dialogs_actions_setup
	.quad	dialogs_actions_update
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	0
	.quad	dock_actions_setup
	.quad	dock_actions_update
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	0
	.quad	dockable_actions_setup
	.quad	dockable_actions_update
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	0
	.quad	documents_actions_setup
	.quad	documents_actions_update
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	drawable_actions_setup
	.quad	drawable_actions_update
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	dynamics_actions_setup
	.quad	dynamics_actions_update
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.52
	.quad	dynamics_editor_actions_setup
	.quad	dynamics_editor_actions_update
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	edit_actions_setup
	.quad	edit_actions_update
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	error_console_actions_setup
	.quad	error_console_actions_update
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	file_actions_setup
	.quad	file_actions_update
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	fonts_actions_setup
	.quad	fonts_actions_update
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	gradient_editor_actions_setup
	.quad	gradient_editor_actions_update
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.69
	.quad	gradients_actions_setup
	.quad	gradients_actions_update
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	tool_presets_actions_setup
	.quad	tool_presets_actions_update
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.74
	.quad	tool_preset_editor_actions_setup
	.quad	tool_preset_editor_actions_update
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	help_actions_setup
	.quad	help_actions_update
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	image_actions_setup
	.quad	image_actions_update
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.82
	.quad	images_actions_setup
	.quad	images_actions_update
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.49
	.quad	layers_actions_setup
	.quad	layers_actions_update
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	palette_editor_actions_setup
	.quad	palette_editor_actions_update
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.89
	.quad	palettes_actions_setup
	.quad	palettes_actions_update
	.quad	.L.str.92
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	patterns_actions_setup
	.quad	patterns_actions_update
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	plug_in_actions_setup
	.quad	plug_in_actions_update
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	quick_mask_actions_setup
	.quad	quick_mask_actions_update
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.103
	.quad	sample_points_actions_setup
	.quad	sample_points_actions_update
	.quad	.L.str.104
	.quad	.L.str.105
	.quad	.L.str.106
	.quad	select_actions_setup
	.quad	select_actions_update
	.quad	.L.str.107
	.quad	.L.str.108
	.quad	.L.str.109
	.quad	templates_actions_setup
	.quad	templates_actions_update
	.quad	.L.str.110
	.quad	.L.str.111
	.quad	.L.str.57
	.quad	text_tool_actions_setup
	.quad	text_tool_actions_update
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	.L.str.57
	.quad	text_editor_actions_setup
	.quad	text_editor_actions_update
	.quad	.L.str.114
	.quad	.L.str.115
	.quad	.L.str.34
	.quad	tool_options_actions_setup
	.quad	tool_options_actions_update
	.quad	.L.str.116
	.quad	.L.str.117
	.quad	.L.str.118
	.quad	tools_actions_setup
	.quad	tools_actions_update
	.quad	.L.str.119
	.quad	.L.str.120
	.quad	.L.str.121
	.quad	vectors_actions_setup
	.quad	vectors_actions_update
	.quad	.L.str.122
	.quad	.L.str.123
	.quad	.L.str.124
	.quad	view_actions_setup
	.quad	view_actions_update
	.quad	.L.str.125
	.quad	.L.str.126
	.quad	0
	.quad	windows_actions_setup
	.quad	windows_actions_update
	.size	action_groups, 1720

	.type	.L__func__.actions_exit,@object # @__func__.actions_exit
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.actions_exit:
	.asciz	"actions_exit"
	.size	.L__func__.actions_exit, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"global_action_factory != NULL"
	.size	.L.str.3, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"global_action_factory->gimp == gimp"
	.size	.L.str.4, 36

	.type	.L__func__.action_select_value,@object # @__func__.action_select_value
.L__func__.action_select_value:
	.asciz	"action_select_value"
	.size	.L__func__.action_select_value, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"delta_factor >= 0.0"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.6, 45

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"actions.c"
	.size	.L.str.7, 10

	.type	.L__func__.action_select_property,@object # @__func__.action_select_property
.L__func__.action_select_property:
	.asciz	"action_select_property"
	.size	.L__func__.action_select_property, 23

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"display == NULL || GIMP_IS_DISPLAY (display)"
	.size	.L.str.8, 45

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"G_IS_OBJECT (object)"
	.size	.L.str.9, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"property_name != NULL"
	.size	.L.str.10, 22

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s: %.2f"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s: %d"
	.size	.L.str.12, 7

	.type	.L__func__.action_select_object,@object # @__func__.action_select_object
.L__func__.action_select_object:
	.asciz	"action_select_object"
	.size	.L__func__.action_select_object, 21

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP_IS_CONTAINER (container)"
	.size	.L.str.13, 30

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"current == NULL || GIMP_IS_OBJECT (current)"
	.size	.L.str.14, 44

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"brush-editor"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Brush Editor"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-tool-paintbrush"
	.size	.L.str.17, 21

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"brushes"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Brushes"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"buffers"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Buffers"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gtk-paste"
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"channels"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Channels"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-channel"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"colormap"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Colormap"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-colormap"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"config"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Configuration"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gtk-preferences"
	.size	.L.str.31, 16

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"context"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Context"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-tool-options"
	.size	.L.str.34, 18

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"cursor-info"
	.size	.L.str.35, 12

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Pointer Information"
	.size	.L.str.36, 20

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"debug"
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Debug"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"dialogs"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Dialogs"
	.size	.L.str.40, 8

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"dock"
	.size	.L.str.41, 5

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Dock"
	.size	.L.str.42, 5

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"dockable"
	.size	.L.str.43, 9

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Dockable"
	.size	.L.str.44, 9

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"documents"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Document History"
	.size	.L.str.46, 17

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"drawable"
	.size	.L.str.47, 9

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Drawable"
	.size	.L.str.48, 9

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-layer"
	.size	.L.str.49, 11

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"dynamics"
	.size	.L.str.50, 9

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Paint Dynamics"
	.size	.L.str.51, 15

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp-dynamics"
	.size	.L.str.52, 14

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"dynamics-editor"
	.size	.L.str.53, 16

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Paint Dynamics Editor"
	.size	.L.str.54, 22

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"edit"
	.size	.L.str.55, 5

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Edit"
	.size	.L.str.56, 5

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gtk-edit"
	.size	.L.str.57, 9

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"error-console"
	.size	.L.str.58, 14

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Error Console"
	.size	.L.str.59, 14

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gimp-warning"
	.size	.L.str.60, 13

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"file"
	.size	.L.str.61, 5

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"File"
	.size	.L.str.62, 5

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"gtk-file"
	.size	.L.str.63, 9

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"fonts"
	.size	.L.str.64, 6

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Fonts"
	.size	.L.str.65, 6

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"gtk-select-font"
	.size	.L.str.66, 16

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"gradient-editor"
	.size	.L.str.67, 16

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Gradient Editor"
	.size	.L.str.68, 16

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"gimp-tool-blend"
	.size	.L.str.69, 16

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"gradients"
	.size	.L.str.70, 10

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Gradients"
	.size	.L.str.71, 10

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"tool-presets"
	.size	.L.str.72, 13

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Tool Presets"
	.size	.L.str.73, 13

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"gimp-tool-preset"
	.size	.L.str.74, 17

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"tool-preset-editor"
	.size	.L.str.75, 19

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Tool Preset Editor"
	.size	.L.str.76, 19

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"help"
	.size	.L.str.77, 5

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Help"
	.size	.L.str.78, 5

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"gtk-help"
	.size	.L.str.79, 9

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"image"
	.size	.L.str.80, 6

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Image"
	.size	.L.str.81, 6

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"gimp-image"
	.size	.L.str.82, 11

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"images"
	.size	.L.str.83, 7

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Images"
	.size	.L.str.84, 7

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"layers"
	.size	.L.str.85, 7

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Layers"
	.size	.L.str.86, 7

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"palette-editor"
	.size	.L.str.87, 15

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Palette Editor"
	.size	.L.str.88, 15

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"gtk-select-color"
	.size	.L.str.89, 17

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"palettes"
	.size	.L.str.90, 9

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Palettes"
	.size	.L.str.91, 9

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"patterns"
	.size	.L.str.92, 9

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Patterns"
	.size	.L.str.93, 9

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"gimp-tool-bucket-fill"
	.size	.L.str.94, 22

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"plug-in"
	.size	.L.str.95, 8

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Plug-Ins"
	.size	.L.str.96, 9

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"gimp-plugin"
	.size	.L.str.97, 12

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"quick-mask"
	.size	.L.str.98, 11

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Quick Mask"
	.size	.L.str.99, 11

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"gimp-quick-mask-on"
	.size	.L.str.100, 19

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"sample-points"
	.size	.L.str.101, 14

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Sample Points"
	.size	.L.str.102, 14

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"gimp-sample-point"
	.size	.L.str.103, 18

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"select"
	.size	.L.str.104, 7

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Select"
	.size	.L.str.105, 7

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"gimp-selection"
	.size	.L.str.106, 15

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"templates"
	.size	.L.str.107, 10

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Templates"
	.size	.L.str.108, 10

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"gimp-template"
	.size	.L.str.109, 14

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"text-tool"
	.size	.L.str.110, 10

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Text Tool"
	.size	.L.str.111, 10

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"text-editor"
	.size	.L.str.112, 12

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"Text Editor"
	.size	.L.str.113, 12

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"tool-options"
	.size	.L.str.114, 13

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"Tool Options"
	.size	.L.str.115, 13

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"tools"
	.size	.L.str.116, 6

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Tools"
	.size	.L.str.117, 6

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"gimp-tools"
	.size	.L.str.118, 11

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"vectors"
	.size	.L.str.119, 8

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"Paths"
	.size	.L.str.120, 6

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"gimp-path"
	.size	.L.str.121, 10

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"view"
	.size	.L.str.122, 5

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"View"
	.size	.L.str.123, 5

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"gimp-visible"
	.size	.L.str.124, 13

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"windows"
	.size	.L.str.125, 8

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"Windows"
	.size	.L.str.126, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
