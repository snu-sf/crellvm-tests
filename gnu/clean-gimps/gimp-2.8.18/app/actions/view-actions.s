	.text
	.file	"view-actions.bc"
	.globl	view_actions_setup
	.align	16, 0x90
	.type	view_actions_setup,@function
view_actions_setup:                     # @view_actions_setup
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
	subq	$144, %rsp
	movabsq	$.L.str, %rsi
	movabsq	$view_actions, %rdx
	movl	$13, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$view_toggle_actions, %rdx
	movl	$16, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_toggle_actions
	movabsq	$.L.str.1, %rsi
	movabsq	$view_zoom_actions, %rdx
	movl	$9, %ecx
	movabsq	$view_zoom_cmd_callback, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_enum_actions
	movabsq	$.L.str.1, %rsi
	movabsq	$view_zoom_explicit_actions, %rdx
	movl	$15, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$10000, %r9d            # imm = 0x2710
	movabsq	$view_zoom_explicit_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, (%rsp)
	callq	gimp_action_group_add_radio_actions
	movabsq	$.L.str.2, %rsi
	movabsq	$view_padding_color_actions, %rdx
	movl	$5, %ecx
	movabsq	$view_padding_color_cmd_callback, %rdi
	movq	-8(%rbp), %r8
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$view_scroll_horizontal_actions, %rdx
	movl	$7, %ecx
	movabsq	$view_scroll_horizontal_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$view_scroll_vertical_actions, %rdx
	movl	$7, %ecx
	movabsq	$view_scroll_vertical_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movabsq	$.L.str.4, %rsi
	movabsq	$view_zoom_other_cmd_callback, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	56(%rdi), %rcx
	movq	%rax, %rdi
	callq	g_signal_connect_data
	movabsq	$.L.str.5, %rsi
	movabsq	$view_actions_check_type_notify, %rcx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_display_config_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	callq	view_actions_check_type_notify
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB0_7
.LBB0_2:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_5
# BB#4:                                 # %if.then.14
	movl	$1, -36(%rbp)
	jmp	.LBB0_6
.LBB0_5:                                # %if.else.15
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB0_6:                                # %if.end
	jmp	.LBB0_7
.LBB0_7:                                # %if.end.17
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.LBB0_16
# BB#8:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_10
# BB#9:                                 # %if.then.28
	movl	$0, -60(%rbp)
	jmp	.LBB0_15
.LBB0_10:                               # %if.else.29
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_13
# BB#11:                                # %land.lhs.true.32
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_13
# BB#12:                                # %if.then.36
	movl	$1, -60(%rbp)
	jmp	.LBB0_14
.LBB0_13:                               # %if.else.37
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB0_14:                               # %if.end.39
	jmp	.LBB0_15
.LBB0_15:                               # %if.end.40
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB0_17
.LBB0_16:                               # %if.then.43
	movabsq	$.L.str.6, %rsi
	movq	-8(%rbp), %rdi
	callq	window_actions_setup
.LBB0_17:                               # %if.end.44
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	view_actions_setup, .Lfunc_end0-view_actions_setup
	.cfi_endproc

	.align	16, 0x90
	.type	view_actions_check_type_notify,@function
view_actions_check_type_notify:         # @view_actions_check_type_notify
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_render_light_check_color
	movabsq	$.L.str.38, %rsi
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movq	-24(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_render_dark_check_color
	movabsq	$.L.str.39, %rsi
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	view_actions_check_type_notify, .Lfunc_end1-view_actions_check_type_notify
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4602678819172646912     # double 0.5
.LCPI2_1:
	.quad	4636737291354636288     # double 100
.LCPI2_2:
	.quad	4607182418800017408     # double 1
	.text
	.globl	view_actions_update
	.align	16, 0x90
	.type	view_actions_update,@function
view_actions_update:                    # @view_actions_update
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
	subq	$480, %rsp              # imm = 0x1E0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB2_12
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then.5
	movq	-80(%rbp), %rdi
	callq	gimp_image_window_get_fullscreen
	movl	%eax, -60(%rbp)
.LBB2_3:                                # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB2_8
# BB#4:                                 # %cond.true
	cmpl	$0, -60(%rbp)
	je	.LBB2_6
# BB#5:                                 # %cond.true.9
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB2_7
.LBB2_6:                                # %cond.false
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB2_7:                                # %cond.end
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB2_9
.LBB2_8:                                # %cond.false.11
	movq	-40(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB2_9:                                # %cond.end.12
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_shell_scale_can_revert
	movl	%eax, -64(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB2_11
# BB#10:                                # %if.then.16
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_projection
	movl	128(%rax), %ecx
	movl	%ecx, -68(%rbp)
.LBB2_11:                               # %if.end.19
	jmp	.LBB2_12
.LBB2_12:                               # %if.end.20
	movabsq	$.L.str.7, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.8, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.9, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%edx, %edx
	movb	%dl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movb	%al, -225(%rbp)         # 1-byte Spill
	je	.LBB2_14
# BB#13:                                # %land.rhs
	movq	-40(%rbp), %rax
	cmpl	$0, 232(%rax)
	setne	%cl
	movb	%cl, -225(%rbp)         # 1-byte Spill
.LBB2_14:                               # %land.end
	movb	-225(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.9, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.10, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -64(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	cmpl	$0, -64(%rbp)
	je	.LBB2_16
# BB#15:                                # %if.then.32
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rdi
	mulsd	264(%rdi), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.10, %rsi
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	gimp_action_group_set_action_label
	movq	-56(%rbp), %rdi
	callq	g_free
	jmp	.LBB2_17
.LBB2_16:                               # %if.else
	movabsq	$.L.str.12, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.10, %rsi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
.LBB2_17:                               # %if.end.37
	movabsq	$.L.str.13, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.14, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.15, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.16, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.17, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.18, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.19, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.20, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.21, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.22, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.23, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.24, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.25, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.3, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	cmpq	$0, -32(%rbp)
	je	.LBB2_19
# BB#18:                                # %if.then.67
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	view_actions_set_zoom
.LBB2_19:                               # %if.end.68
	movabsq	$.L.str.26, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.27, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.28, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%edx, %edx
	movb	%dl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movb	%al, -249(%rbp)         # 1-byte Spill
	je	.LBB2_21
# BB#20:                                # %land.rhs.76
	movq	-48(%rbp), %rax
	cmpl	$0, 40(%rax)
	setne	%cl
	movb	%cl, -249(%rbp)         # 1-byte Spill
.LBB2_21:                               # %land.end.78
	movb	-249(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.28, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.29, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movb	%al, -265(%rbp)         # 1-byte Spill
	je	.LBB2_23
# BB#22:                                # %land.rhs.85
	movq	-48(%rbp), %rax
	cmpl	$0, 44(%rax)
	setne	%cl
	movb	%cl, -265(%rbp)         # 1-byte Spill
.LBB2_23:                               # %land.end.87
	movb	-265(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.29, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.30, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movb	%al, -281(%rbp)         # 1-byte Spill
	je	.LBB2_25
# BB#24:                                # %land.rhs.94
	movq	-48(%rbp), %rax
	cmpl	$0, 48(%rax)
	setne	%cl
	movb	%cl, -281(%rbp)         # 1-byte Spill
.LBB2_25:                               # %land.end.96
	movb	-281(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.30, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.31, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movb	%al, -297(%rbp)         # 1-byte Spill
	je	.LBB2_27
# BB#26:                                # %land.rhs.103
	movq	-48(%rbp), %rax
	cmpl	$0, 52(%rax)
	setne	%cl
	movb	%cl, -297(%rbp)         # 1-byte Spill
.LBB2_27:                               # %land.end.105
	movb	-297(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.31, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-296(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.32, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movb	%al, -313(%rbp)         # 1-byte Spill
	je	.LBB2_29
# BB#28:                                # %land.rhs.112
	movq	-48(%rbp), %rax
	cmpl	$0, 56(%rax)
	setne	%cl
	movb	%cl, -313(%rbp)         # 1-byte Spill
.LBB2_29:                               # %land.end.114
	movb	-313(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.32, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-312(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.33, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movb	%al, -329(%rbp)         # 1-byte Spill
	je	.LBB2_31
# BB#30:                                # %land.rhs.121
	movq	-40(%rbp), %rax
	cmpl	$0, 168(%rax)
	setne	%cl
	movb	%cl, -329(%rbp)         # 1-byte Spill
.LBB2_31:                               # %land.end.123
	movb	-329(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.33, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.34, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movb	%al, -345(%rbp)         # 1-byte Spill
	je	.LBB2_33
# BB#32:                                # %land.rhs.130
	movq	-40(%rbp), %rax
	cmpl	$0, 172(%rax)
	setne	%cl
	movb	%cl, -345(%rbp)         # 1-byte Spill
.LBB2_33:                               # %land.end.132
	movb	-345(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.34, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-344(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.35, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movb	%al, -361(%rbp)         # 1-byte Spill
	je	.LBB2_35
# BB#34:                                # %land.rhs.139
	movq	-40(%rbp), %rax
	cmpl	$0, 176(%rax)
	setne	%cl
	movb	%cl, -361(%rbp)         # 1-byte Spill
.LBB2_35:                               # %land.end.141
	movb	-361(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.35, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-360(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.36, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movb	%al, -377(%rbp)         # 1-byte Spill
	je	.LBB2_37
# BB#36:                                # %land.rhs.148
	movq	-40(%rbp), %rax
	cmpl	$0, 180(%rax)
	setne	%cl
	movb	%cl, -377(%rbp)         # 1-byte Spill
.LBB2_37:                               # %land.end.150
	movb	-377(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.36, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-376(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.37, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.38, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.39, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.40, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.41, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	cmpq	$0, -24(%rbp)
	je	.LBB2_41
# BB#38:                                # %if.then.165
	movabsq	$.L.str.42, %rsi
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movq	-40(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB2_40
# BB#39:                                # %if.then.167
	movq	-40(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_ensure_style
	leaq	-120(%rbp), %rdi
	movq	-88(%rbp), %rax
	addq	$84, %rax
	movq	%rax, %rsi
	callq	gimp_rgb_set_gdk_color
	leaq	-120(%rbp), %rdi
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_rgb_set_alpha
	movabsq	$.L.str.37, %rsi
	leaq	-120(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_color
.LBB2_40:                               # %if.end.171
	jmp	.LBB2_41
.LBB2_41:                               # %if.end.172
	movabsq	$.L.str.43, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%edx, %edx
	movb	%dl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movb	%al, -393(%rbp)         # 1-byte Spill
	je	.LBB2_43
# BB#42:                                # %land.rhs.176
	movq	-48(%rbp), %rax
	cmpl	$0, 24(%rax)
	setne	%cl
	movb	%cl, -393(%rbp)         # 1-byte Spill
.LBB2_43:                               # %land.end.178
	movb	-393(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.43, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-392(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.44, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movb	%al, -409(%rbp)         # 1-byte Spill
	je	.LBB2_45
# BB#44:                                # %land.rhs.185
	movq	-48(%rbp), %rax
	cmpl	$0, 32(%rax)
	setne	%cl
	movb	%cl, -409(%rbp)         # 1-byte Spill
.LBB2_45:                               # %land.end.187
	movb	-409(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.44, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-408(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.45, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movb	%al, -425(%rbp)         # 1-byte Spill
	je	.LBB2_47
# BB#46:                                # %land.rhs.194
	movq	-48(%rbp), %rax
	cmpl	$0, 36(%rax)
	setne	%cl
	movb	%cl, -425(%rbp)         # 1-byte Spill
.LBB2_47:                               # %land.end.196
	movb	-425(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.45, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-424(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.46, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movb	%al, -441(%rbp)         # 1-byte Spill
	je	.LBB2_49
# BB#48:                                # %land.rhs.203
	movq	-48(%rbp), %rax
	cmpl	$0, 28(%rax)
	setne	%cl
	movb	%cl, -441(%rbp)         # 1-byte Spill
.LBB2_49:                               # %land.end.205
	movb	-441(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.46, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-440(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.47, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movb	%al, -457(%rbp)         # 1-byte Spill
	je	.LBB2_51
# BB#50:                                # %land.rhs.212
	cmpl	$0, -60(%rbp)
	setne	%al
	movb	%al, -457(%rbp)         # 1-byte Spill
.LBB2_51:                               # %land.end.214
	movb	-457(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.48, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-456(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.49, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -68(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_active
	movq	-8(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rsi, -128(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB2_53
# BB#52:                                # %if.then.222
	movl	$0, -140(%rbp)
	jmp	.LBB2_58
.LBB2_53:                               # %if.else.223
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_56
# BB#54:                                # %land.lhs.true
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB2_56
# BB#55:                                # %if.then.228
	movl	$1, -140(%rbp)
	jmp	.LBB2_57
.LBB2_56:                               # %if.else.229
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB2_57:                               # %if.end.231
	jmp	.LBB2_58
.LBB2_58:                               # %if.end.232
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	jne	.LBB2_67
# BB#59:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB2_61
# BB#60:                                # %if.then.243
	movl	$0, -164(%rbp)
	jmp	.LBB2_66
.LBB2_61:                               # %if.else.244
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_64
# BB#62:                                # %land.lhs.true.247
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB2_64
# BB#63:                                # %if.then.252
	movl	$1, -164(%rbp)
	jmp	.LBB2_65
.LBB2_64:                               # %if.else.253
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB2_65:                               # %if.end.255
	jmp	.LBB2_66
.LBB2_66:                               # %if.end.256
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB2_79
.LBB2_67:                               # %if.then.259
	movq	$0, -176(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB2_69
# BB#68:                                # %if.then.263
	movq	-40(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -176(%rbp)
.LBB2_69:                               # %if.end.267
	movq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gtk_window_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB2_71
# BB#70:                                # %if.then.276
	movl	$0, -196(%rbp)
	jmp	.LBB2_76
.LBB2_71:                               # %if.else.277
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_74
# BB#72:                                # %land.lhs.true.280
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB2_74
# BB#73:                                # %if.then.285
	movl	$1, -196(%rbp)
	jmp	.LBB2_75
.LBB2_74:                               # %if.else.286
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB2_75:                               # %if.end.288
	jmp	.LBB2_76
.LBB2_76:                               # %if.end.289
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB2_78
# BB#77:                                # %if.then.292
	movq	-8(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	window_actions_update
.LBB2_78:                               # %if.end.293
	jmp	.LBB2_79
.LBB2_79:                               # %if.end.294
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end2:
	.size	view_actions_update, .Lfunc_end2-view_actions_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4652007308841189376     # double 1000
.LCPI3_1:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_2:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	view_actions_set_zoom,@function
view_actions_set_zoom:                  # @view_actions_set_zoom
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	256(%rsi), %rdi
	movl	$.L.str.257, %eax
	movl	%eax, %esi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movb	%al, %dl
	leaq	-32(%rbp), %r8
	movb	%dl, -45(%rbp)          # 1-byte Spill
	movq	%r8, %rdx
	movb	-45(%rbp), %al          # 1-byte Reload
	callq	g_object_get
	movq	-16(%rbp), %rcx
	movq	256(%rcx), %rdi
	callq	gimp_zoom_model_get_factor
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI3_1(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r9d
	movl	%r9d, -44(%rbp)
	movl	%r9d, %r10d
	addl	$-62, %r10d
	subl	$2, %r10d
	movl	%r9d, -52(%rbp)         # 4-byte Spill
	movl	%r10d, -56(%rbp)        # 4-byte Spill
	jb	.LBB3_9
	jmp	.LBB3_13
.LBB3_13:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$125, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB3_8
	jmp	.LBB3_14
.LBB3_14:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$250, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB3_7
	jmp	.LBB3_15
.LBB3_15:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$500, %eax              # imm = 0x1F4
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB3_6
	jmp	.LBB3_16
.LBB3_16:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$1000, %eax             # imm = 0x3E8
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB3_5
	jmp	.LBB3_17
.LBB3_17:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$2000, %eax             # imm = 0x7D0
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB3_4
	jmp	.LBB3_18
.LBB3_18:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$4000, %eax             # imm = 0xFA0
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB3_3
	jmp	.LBB3_19
.LBB3_19:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$8000, %eax             # imm = 0x1F40
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB3_2
	jmp	.LBB3_20
.LBB3_20:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$16000, %eax            # imm = 0x3E80
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jne	.LBB3_10
	jmp	.LBB3_1
.LBB3_1:                                # %sw.bb
	movabsq	$.L.str.17, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB3_10
.LBB3_2:                                # %sw.bb.2
	movabsq	$.L.str.18, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB3_10
.LBB3_3:                                # %sw.bb.3
	movabsq	$.L.str.19, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB3_10
.LBB3_4:                                # %sw.bb.4
	movabsq	$.L.str.20, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB3_10
.LBB3_5:                                # %sw.bb.5
	movabsq	$.L.str.21, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB3_10
.LBB3_6:                                # %sw.bb.6
	movabsq	$.L.str.22, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB3_10
.LBB3_7:                                # %sw.bb.7
	movabsq	$.L.str.23, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB3_10
.LBB3_8:                                # %sw.bb.8
	movabsq	$.L.str.24, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB3_10
.LBB3_9:                                # %sw.bb.9
	movabsq	$.L.str.25, %rax
	movq	%rax, -24(%rbp)
.LBB3_10:                               # %sw.epilog
	cmpq	$0, -24(%rbp)
	jne	.LBB3_12
# BB#11:                                # %if.then
	movabsq	$.L.str.258, %rdi
	movabsq	$.L.str.3, %rax
	movq	%rax, -24(%rbp)
	callq	gettext
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_action_group_set_action_label
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gimp_zoom_model_get_factor
	movq	-16(%rbp), %rax
	movsd	%xmm0, 288(%rax)
.LBB3_12:                               # %if.end
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.259, %rdi
	callq	gettext
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.52, %rsi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	gimp_action_group_set_action_label
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movsd	288(%rax), %xmm0        # xmm0 = mem[0],zero
	movapd	.LCPI3_2(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rax
	movd	%rax, %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, 288(%rax)
	movq	-32(%rbp), %rdi
	callq	g_free
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	view_actions_set_zoom, .Lfunc_end3-view_actions_set_zoom
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"view-action"
	.size	.L.str, 12

	.type	view_actions,@object    # @view_actions
	.section	.rodata,"a",@progbits
	.align	16
view_actions:
	.quad	.L.str.50
	.quad	0
	.quad	.L.str.51
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.52
	.quad	0
	.quad	.L.str.53
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.42
	.quad	0
	.quad	.L.str.54
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	view_new_cmd_callback
	.quad	.L.str.62
	.quad	.L.str.8
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	view_close_cmd_callback
	.quad	.L.str.67
	.quad	.L.str.15
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	view_zoom_fit_in_cmd_callback
	.quad	.L.str.72
	.quad	.L.str.16
	.quad	.L.str.68
	.quad	.L.str.73
	.quad	0
	.quad	.L.str.74
	.quad	view_zoom_fill_cmd_callback
	.quad	.L.str.75
	.quad	.L.str.10
	.quad	0
	.quad	.L.str.12
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	view_zoom_revert_cmd_callback
	.quad	.L.str.78
	.quad	.L.str.26
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	0
	.quad	.L.str.81
	.quad	view_navigation_window_cmd_callback
	.quad	.L.str.82
	.quad	.L.str.27
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	0
	.quad	.L.str.85
	.quad	view_display_filters_cmd_callback
	.quad	.L.str.86
	.quad	.L.str.47
	.quad	.L.str.68
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	view_shrink_wrap_cmd_callback
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	0
	.quad	.L.str.92
	.quad	0
	.quad	.L.str.93
	.quad	window_open_display_cmd_callback
	.quad	0
	.size	view_actions, 728

	.type	view_toggle_actions,@object # @view_toggle_actions
	.align	16
view_toggle_actions:
	.quad	.L.str.9
	.quad	0
	.quad	.L.str.94
	.quad	0
	.quad	.L.str.95
	.quad	view_dot_for_dot_cmd_callback
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.96
	.quad	.L.str.28
	.quad	0
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	view_toggle_selection_cmd_callback
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.100
	.quad	.L.str.29
	.quad	0
	.quad	.L.str.101
	.quad	0
	.quad	.L.str.102
	.quad	view_toggle_layer_boundary_cmd_callback
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.103
	.quad	.L.str.30
	.quad	0
	.quad	.L.str.104
	.quad	.L.str.105
	.quad	.L.str.106
	.quad	view_toggle_guides_cmd_callback
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.107
	.quad	.L.str.31
	.quad	0
	.quad	.L.str.108
	.quad	0
	.quad	.L.str.109
	.quad	view_toggle_grid_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.110
	.quad	.L.str.32
	.quad	0
	.quad	.L.str.111
	.quad	0
	.quad	.L.str.112
	.quad	view_toggle_sample_points_cmd_callback
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.113
	.quad	.L.str.33
	.quad	0
	.quad	.L.str.114
	.quad	0
	.quad	.L.str.115
	.quad	view_snap_to_guides_cmd_callback
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.116
	.quad	.L.str.34
	.quad	0
	.quad	.L.str.117
	.quad	0
	.quad	.L.str.118
	.quad	view_snap_to_grid_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.119
	.quad	.L.str.35
	.quad	0
	.quad	.L.str.120
	.quad	0
	.quad	.L.str.121
	.quad	view_snap_to_canvas_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.122
	.quad	.L.str.36
	.quad	0
	.quad	.L.str.123
	.quad	0
	.quad	.L.str.124
	.quad	view_snap_to_vectors_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.125
	.quad	.L.str.43
	.quad	0
	.quad	.L.str.126
	.quad	0
	.quad	.L.str.127
	.quad	view_toggle_menubar_cmd_callback
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.128
	.quad	.L.str.44
	.quad	0
	.quad	.L.str.129
	.quad	.L.str.130
	.quad	.L.str.131
	.quad	view_toggle_rulers_cmd_callback
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.132
	.quad	.L.str.45
	.quad	0
	.quad	.L.str.133
	.quad	0
	.quad	.L.str.134
	.quad	view_toggle_scrollbars_cmd_callback
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.135
	.quad	.L.str.46
	.quad	0
	.quad	.L.str.136
	.quad	0
	.quad	.L.str.137
	.quad	view_toggle_statusbar_cmd_callback
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.138
	.quad	.L.str.48
	.quad	.L.str.139
	.quad	.L.str.140
	.quad	.L.str.141
	.quad	.L.str.142
	.quad	view_fullscreen_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.143
	.quad	.L.str.49
	.quad	.L.str.144
	.quad	.L.str.145
	.quad	0
	.quad	.L.str.146
	.quad	view_use_gegl_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.size	view_toggle_actions, 1024

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"view-zoom-action"
	.size	.L.str.1, 17

	.type	view_zoom_actions,@object # @view_zoom_actions
	.section	.rodata,"a",@progbits
	.align	16
view_zoom_actions:
	.quad	.L.str.147
	.quad	0
	.quad	.L.str.148
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.149
	.quad	.L.str.150
	.quad	.L.str.151
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	.L.str.152
	.quad	.L.str.153
	.quad	.L.str.154
	.quad	.L.str.155
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	.L.str.156
	.quad	.L.str.13
	.quad	.L.str.150
	.quad	.L.str.157
	.quad	.L.str.158
	.quad	.L.str.159
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	.L.str.152
	.quad	.L.str.14
	.quad	.L.str.154
	.quad	.L.str.160
	.quad	.L.str.161
	.quad	.L.str.162
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	.L.str.156
	.quad	.L.str.163
	.quad	.L.str.164
	.quad	.L.str.165
	.quad	.L.str.166
	.quad	.L.str.159
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	.L.str.152
	.quad	.L.str.167
	.quad	.L.str.164
	.quad	.L.str.168
	.quad	.L.str.169
	.quad	.L.str.162
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	.L.str.156
	.quad	.L.str.170
	.quad	.L.str.150
	.quad	.L.str.171
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	.L.str.152
	.quad	.L.str.172
	.quad	.L.str.154
	.quad	.L.str.173
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	.L.str.156
	.size	view_zoom_actions, 504

	.type	view_zoom_explicit_actions,@object # @view_zoom_explicit_actions
	.align	16
view_zoom_explicit_actions:
	.quad	.L.str.17
	.quad	0
	.quad	.L.str.174
	.quad	.L.str.175
	.quad	.L.str.176
	.long	160000                  # 0x27100
	.zero	4
	.quad	.L.str.156
	.quad	.L.str.177
	.quad	0
	.quad	.L.str.174
	.quad	.L.str.178
	.quad	.L.str.176
	.long	160000                  # 0x27100
	.zero	4
	.quad	.L.str.156
	.quad	.L.str.18
	.quad	0
	.quad	.L.str.179
	.quad	.L.str.180
	.quad	.L.str.181
	.long	80000                   # 0x13880
	.zero	4
	.quad	.L.str.156
	.quad	.L.str.182
	.quad	0
	.quad	.L.str.179
	.quad	.L.str.183
	.quad	.L.str.181
	.long	80000                   # 0x13880
	.zero	4
	.quad	.L.str.156
	.quad	.L.str.19
	.quad	0
	.quad	.L.str.184
	.quad	.L.str.185
	.quad	.L.str.186
	.long	40000                   # 0x9c40
	.zero	4
	.quad	.L.str.156
	.quad	.L.str.187
	.quad	0
	.quad	.L.str.184
	.quad	.L.str.188
	.quad	.L.str.186
	.long	40000                   # 0x9c40
	.zero	4
	.quad	.L.str.156
	.quad	.L.str.20
	.quad	0
	.quad	.L.str.189
	.quad	.L.str.190
	.quad	.L.str.191
	.long	20000                   # 0x4e20
	.zero	4
	.quad	.L.str.156
	.quad	.L.str.192
	.quad	0
	.quad	.L.str.189
	.quad	.L.str.193
	.quad	.L.str.191
	.long	20000                   # 0x4e20
	.zero	4
	.quad	.L.str.156
	.quad	.L.str.21
	.quad	.L.str.194
	.quad	.L.str.195
	.quad	.L.str.196
	.quad	.L.str.197
	.long	10000                   # 0x2710
	.zero	4
	.quad	.L.str.198
	.quad	.L.str.199
	.quad	.L.str.194
	.quad	.L.str.195
	.quad	.L.str.200
	.quad	.L.str.197
	.long	10000                   # 0x2710
	.zero	4
	.quad	.L.str.198
	.quad	.L.str.22
	.quad	0
	.quad	.L.str.201
	.quad	.L.str.202
	.quad	.L.str.203
	.long	5000                    # 0x1388
	.zero	4
	.quad	.L.str.152
	.quad	.L.str.23
	.quad	0
	.quad	.L.str.204
	.quad	.L.str.205
	.quad	.L.str.206
	.long	2500                    # 0x9c4
	.zero	4
	.quad	.L.str.152
	.quad	.L.str.24
	.quad	0
	.quad	.L.str.207
	.quad	.L.str.208
	.quad	.L.str.209
	.long	1250                    # 0x4e2
	.zero	4
	.quad	.L.str.152
	.quad	.L.str.25
	.quad	0
	.quad	.L.str.210
	.quad	.L.str.211
	.quad	.L.str.212
	.long	625                     # 0x271
	.zero	4
	.quad	.L.str.152
	.quad	.L.str.3
	.quad	0
	.quad	.L.str.213
	.quad	0
	.quad	.L.str.214
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.215
	.size	view_zoom_explicit_actions, 840

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"view-padding-color"
	.size	.L.str.2, 19

	.type	view_padding_color_actions,@object # @view_padding_color_actions
	.section	.rodata,"a",@progbits
	.align	16
view_padding_color_actions:
	.quad	.L.str.37
	.quad	0
	.quad	.L.str.216
	.quad	0
	.quad	.L.str.217
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.218
	.quad	.L.str.38
	.quad	0
	.quad	.L.str.219
	.quad	0
	.quad	.L.str.220
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.218
	.quad	.L.str.39
	.quad	0
	.quad	.L.str.221
	.quad	0
	.quad	.L.str.222
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	.L.str.218
	.quad	.L.str.40
	.quad	.L.str.223
	.quad	.L.str.224
	.quad	0
	.quad	.L.str.225
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	.L.str.218
	.quad	.L.str.41
	.quad	.L.str.226
	.quad	.L.str.227
	.quad	0
	.quad	.L.str.228
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	.L.str.218
	.size	view_padding_color_actions, 280

	.type	view_scroll_horizontal_actions,@object # @view_scroll_horizontal_actions
	.align	16
view_scroll_horizontal_actions:
	.quad	.L.str.229
	.quad	0
	.quad	.L.str.230
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.231
	.quad	0
	.quad	.L.str.232
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.233
	.quad	0
	.quad	.L.str.234
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.235
	.quad	0
	.quad	.L.str.236
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.237
	.quad	0
	.quad	.L.str.238
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.239
	.quad	0
	.quad	.L.str.240
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.241
	.quad	0
	.quad	.L.str.242
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	view_scroll_horizontal_actions, 392

	.type	view_scroll_vertical_actions,@object # @view_scroll_vertical_actions
	.align	16
view_scroll_vertical_actions:
	.quad	.L.str.243
	.quad	0
	.quad	.L.str.244
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	.L.str.245
	.quad	0
	.quad	.L.str.246
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.247
	.quad	0
	.quad	.L.str.248
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.249
	.quad	0
	.quad	.L.str.250
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.251
	.quad	0
	.quad	.L.str.252
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.253
	.quad	0
	.quad	.L.str.254
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	0
	.quad	.L.str.255
	.quad	0
	.quad	.L.str.256
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	0
	.size	view_scroll_vertical_actions, 392

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"view-zoom-other"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"activate"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"notify::check-type"
	.size	.L.str.5, 19

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-view-change-screen"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"view-new"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"view-close"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"view-dot-for-dot"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"view-zoom-revert"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Re_vert Zoom (%d%%)"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Re_vert Zoom"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"view-zoom-out"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"view-zoom-in"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"view-zoom-fit-in"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"view-zoom-fill"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"view-zoom-16-1"
	.size	.L.str.17, 15

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"view-zoom-8-1"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"view-zoom-4-1"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"view-zoom-2-1"
	.size	.L.str.20, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"view-zoom-1-1"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"view-zoom-1-2"
	.size	.L.str.22, 14

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"view-zoom-1-4"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"view-zoom-1-8"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"view-zoom-1-16"
	.size	.L.str.25, 15

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"view-navigation-window"
	.size	.L.str.26, 23

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"view-display-filters"
	.size	.L.str.27, 21

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"view-show-selection"
	.size	.L.str.28, 20

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"view-show-layer-boundary"
	.size	.L.str.29, 25

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"view-show-guides"
	.size	.L.str.30, 17

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"view-show-grid"
	.size	.L.str.31, 15

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"view-show-sample-points"
	.size	.L.str.32, 24

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"view-snap-to-guides"
	.size	.L.str.33, 20

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"view-snap-to-grid"
	.size	.L.str.34, 18

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"view-snap-to-canvas"
	.size	.L.str.35, 20

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"view-snap-to-vectors"
	.size	.L.str.36, 21

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"view-padding-color-theme"
	.size	.L.str.37, 25

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"view-padding-color-light-check"
	.size	.L.str.38, 31

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"view-padding-color-dark-check"
	.size	.L.str.39, 30

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"view-padding-color-custom"
	.size	.L.str.40, 26

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"view-padding-color-prefs"
	.size	.L.str.41, 25

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"view-padding-color-menu"
	.size	.L.str.42, 24

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"view-show-menubar"
	.size	.L.str.43, 18

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"view-show-rulers"
	.size	.L.str.44, 17

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"view-show-scrollbars"
	.size	.L.str.45, 21

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"view-show-statusbar"
	.size	.L.str.46, 20

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"view-shrink-wrap"
	.size	.L.str.47, 17

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"view-fullscreen"
	.size	.L.str.48, 16

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"view-use-gegl"
	.size	.L.str.49, 14

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"view-menu"
	.size	.L.str.50, 10

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"_View"
	.size	.L.str.51, 6

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"view-zoom-menu"
	.size	.L.str.52, 15

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"_Zoom"
	.size	.L.str.53, 6

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"_Padding Color"
	.size	.L.str.54, 15

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"view-move-to-screen-menu"
	.size	.L.str.55, 25

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"gimp-move-to-screen"
	.size	.L.str.56, 20

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Move to Screen"
	.size	.L.str.57, 15

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"gtk-new"
	.size	.L.str.58, 8

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"_New View"
	.size	.L.str.59, 10

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.zero	1
	.size	.L.str.60, 1

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Create another view on this image"
	.size	.L.str.61, 34

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"gimp-view-new"
	.size	.L.str.62, 14

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"gtk-close"
	.size	.L.str.63, 10

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"_Close View"
	.size	.L.str.64, 12

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"<primary>W"
	.size	.L.str.65, 11

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Close the active image view"
	.size	.L.str.66, 28

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"gimp-file-close"
	.size	.L.str.67, 16

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"gtk-zoom-fit"
	.size	.L.str.68, 13

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"_Fit Image in Window"
	.size	.L.str.69, 21

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"<primary><shift>J"
	.size	.L.str.70, 18

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Adjust the zoom ratio so that the image becomes fully visible"
	.size	.L.str.71, 62

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"gimp-view-zoom-fit-in"
	.size	.L.str.72, 22

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Fi_ll Window"
	.size	.L.str.73, 13

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Adjust the zoom ratio so that the entire window is used"
	.size	.L.str.74, 56

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"gimp-view-zoom-fill"
	.size	.L.str.75, 20

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"grave"
	.size	.L.str.76, 6

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Restore the previous zoom level"
	.size	.L.str.77, 32

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"gimp-view-zoom-revert"
	.size	.L.str.78, 22

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"gimp-navigation"
	.size	.L.str.79, 16

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Na_vigation Window"
	.size	.L.str.80, 19

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Show an overview window for this image"
	.size	.L.str.81, 39

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"gimp-navigation-dialog"
	.size	.L.str.82, 23

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"gimp-display-filter"
	.size	.L.str.83, 20

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Display _Filters..."
	.size	.L.str.84, 20

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Configure filters applied to this view"
	.size	.L.str.85, 39

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"gimp-display-filter-dialog"
	.size	.L.str.86, 27

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Shrink _Wrap"
	.size	.L.str.87, 13

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"<primary>J"
	.size	.L.str.88, 11

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Reduce the image window to the size of the image display"
	.size	.L.str.89, 57

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"gimp-view-shrink-wrap"
	.size	.L.str.90, 22

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"view-open-display"
	.size	.L.str.91, 18

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"_Open Display..."
	.size	.L.str.92, 17

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Connect to another display"
	.size	.L.str.93, 27

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"_Dot for Dot"
	.size	.L.str.94, 13

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"A pixel on the screen represents an image pixel"
	.size	.L.str.95, 48

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"gimp-view-dot-for-dot"
	.size	.L.str.96, 22

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Show _Selection"
	.size	.L.str.97, 16

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"<primary>T"
	.size	.L.str.98, 11

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Display the selection outline"
	.size	.L.str.99, 30

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"gimp-view-show-selection"
	.size	.L.str.100, 25

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Show _Layer Boundary"
	.size	.L.str.101, 21

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Draw a border around the active layer"
	.size	.L.str.102, 38

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"gimp-view-show-layer-boundary"
	.size	.L.str.103, 30

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Show _Guides"
	.size	.L.str.104, 13

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"<primary><shift>T"
	.size	.L.str.105, 18

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Display the image's guides"
	.size	.L.str.106, 27

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"gimp-view-show-guides"
	.size	.L.str.107, 22

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"S_how Grid"
	.size	.L.str.108, 11

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"Display the image's grid"
	.size	.L.str.109, 25

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"gimp-view-show-grid"
	.size	.L.str.110, 20

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Show Sample Points"
	.size	.L.str.111, 19

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"Display the image's color sample points"
	.size	.L.str.112, 40

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"gimp-view-show-sample-points"
	.size	.L.str.113, 29

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"Sn_ap to Guides"
	.size	.L.str.114, 16

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"Tool operations snap to guides"
	.size	.L.str.115, 31

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"gimp-view-snap-to-guides"
	.size	.L.str.116, 25

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Sna_p to Grid"
	.size	.L.str.117, 14

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Tool operations snap to the grid"
	.size	.L.str.118, 33

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"gimp-view-snap-to-grid"
	.size	.L.str.119, 23

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"Snap to _Canvas Edges"
	.size	.L.str.120, 22

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"Tool operations snap to the canvas edges"
	.size	.L.str.121, 41

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"gimp-view-snap-to-canvas"
	.size	.L.str.122, 25

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"Snap t_o Active Path"
	.size	.L.str.123, 21

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"Tool operations snap to the active path"
	.size	.L.str.124, 40

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"gimp-view-snap-to-vectors"
	.size	.L.str.125, 26

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"Show _Menubar"
	.size	.L.str.126, 14

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"Show this window's menubar"
	.size	.L.str.127, 27

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"gimp-view-show-menubar"
	.size	.L.str.128, 23

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"Show R_ulers"
	.size	.L.str.129, 13

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"<primary><shift>R"
	.size	.L.str.130, 18

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"Show this window's rulers"
	.size	.L.str.131, 26

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"gimp-view-show-rulers"
	.size	.L.str.132, 22

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"Show Scroll_bars"
	.size	.L.str.133, 17

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"Show this window's scrollbars"
	.size	.L.str.134, 30

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"gimp-view-show-scrollbars"
	.size	.L.str.135, 26

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"Show S_tatusbar"
	.size	.L.str.136, 16

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"Show this window's statusbar"
	.size	.L.str.137, 29

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"gimp-view-show-statusbar"
	.size	.L.str.138, 25

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"gtk-fullscreen"
	.size	.L.str.139, 15

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"Fullscr_een"
	.size	.L.str.140, 12

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"F11"
	.size	.L.str.141, 4

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"Toggle fullscreen view"
	.size	.L.str.142, 23

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"gimp-view-fullscreen"
	.size	.L.str.143, 21

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"gimp-gegl"
	.size	.L.str.144, 10

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"Use GEGL"
	.size	.L.str.145, 9

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"Use GEGL to create this window's projection"
	.size	.L.str.146, 44

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"view-zoom"
	.size	.L.str.147, 10

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"Set zoom factor"
	.size	.L.str.148, 16

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"view-zoom-minimum"
	.size	.L.str.149, 18

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"gtk-zoom-out"
	.size	.L.str.150, 13

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"Zoom out as far as possible"
	.size	.L.str.151, 28

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"gimp-view-zoom-out"
	.size	.L.str.152, 19

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"view-zoom-maximum"
	.size	.L.str.153, 18

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"gtk-zoom-in"
	.size	.L.str.154, 12

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"Zoom in as far as possible"
	.size	.L.str.155, 27

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"gimp-view-zoom-in"
	.size	.L.str.156, 18

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"Zoom _Out"
	.size	.L.str.157, 10

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"minus"
	.size	.L.str.158, 6

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"Zoom out"
	.size	.L.str.159, 9

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"Zoom _In"
	.size	.L.str.160, 9

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"plus"
	.size	.L.str.161, 5

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"Zoom in"
	.size	.L.str.162, 8

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"view-zoom-out-accel"
	.size	.L.str.163, 20

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"gimp-char-picker"
	.size	.L.str.164, 17

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"Zoom Out"
	.size	.L.str.165, 9

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"KP_Subtract"
	.size	.L.str.166, 12

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"view-zoom-in-accel"
	.size	.L.str.167, 19

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"Zoom In"
	.size	.L.str.168, 8

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"KP_Add"
	.size	.L.str.169, 7

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"view-zoom-out-skip"
	.size	.L.str.170, 19

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"Zoom out a lot"
	.size	.L.str.171, 15

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"view-zoom-in-skip"
	.size	.L.str.172, 18

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"Zoom in a lot"
	.size	.L.str.173, 14

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"1_6:1  (1600%)"
	.size	.L.str.174, 15

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"5"
	.size	.L.str.175, 2

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"Zoom 16:1"
	.size	.L.str.176, 10

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"view-zoom-16-1-accel"
	.size	.L.str.177, 21

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"KP_5"
	.size	.L.str.178, 5

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"_8:1  (800%)"
	.size	.L.str.179, 13

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"4"
	.size	.L.str.180, 2

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"Zoom 8:1"
	.size	.L.str.181, 9

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"view-zoom-8-1-accel"
	.size	.L.str.182, 20

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"KP_4"
	.size	.L.str.183, 5

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"_4:1  (400%)"
	.size	.L.str.184, 13

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"3"
	.size	.L.str.185, 2

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"Zoom 4:1"
	.size	.L.str.186, 9

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"view-zoom-4-1-accel"
	.size	.L.str.187, 20

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"KP_3"
	.size	.L.str.188, 5

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"_2:1  (200%)"
	.size	.L.str.189, 13

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"2"
	.size	.L.str.190, 2

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"Zoom 2:1"
	.size	.L.str.191, 9

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"view-zoom-2-1-accel"
	.size	.L.str.192, 20

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"KP_2"
	.size	.L.str.193, 5

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"gtk-zoom-100"
	.size	.L.str.194, 13

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"_1:1  (100%)"
	.size	.L.str.195, 13

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"1"
	.size	.L.str.196, 2

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"Zoom 1:1"
	.size	.L.str.197, 9

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"gimp-view-zoom-100"
	.size	.L.str.198, 19

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"view-zoom-1-1-accel"
	.size	.L.str.199, 20

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"KP_1"
	.size	.L.str.200, 5

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"1:_2  (50%)"
	.size	.L.str.201, 12

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"<shift>2"
	.size	.L.str.202, 9

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"Zoom 1:2"
	.size	.L.str.203, 9

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"1:_4  (25%)"
	.size	.L.str.204, 12

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"<shift>3"
	.size	.L.str.205, 9

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"Zoom 1:4"
	.size	.L.str.206, 9

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"1:_8  (12.5%)"
	.size	.L.str.207, 14

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"<shift>4"
	.size	.L.str.208, 9

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"Zoom 1:8"
	.size	.L.str.209, 9

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"1:1_6  (6.25%)"
	.size	.L.str.210, 15

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"<shift>5"
	.size	.L.str.211, 9

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"Zoom 1:16"
	.size	.L.str.212, 10

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"Othe_r..."
	.size	.L.str.213, 10

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"Set a custom zoom factor"
	.size	.L.str.214, 25

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"gimp-view-zoom-other"
	.size	.L.str.215, 21

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"From _Theme"
	.size	.L.str.216, 12

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"Use the current theme's background color"
	.size	.L.str.217, 41

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"gimp-view-padding-color"
	.size	.L.str.218, 24

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"_Light Check Color"
	.size	.L.str.219, 19

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"Use the light check color"
	.size	.L.str.220, 26

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"_Dark Check Color"
	.size	.L.str.221, 18

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"Use the dark check color"
	.size	.L.str.222, 25

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"gtk-select-color"
	.size	.L.str.223, 17

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"Select _Custom Color..."
	.size	.L.str.224, 24

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"Use an arbitrary color"
	.size	.L.str.225, 23

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"gimp-reset"
	.size	.L.str.226, 11

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"As in _Preferences"
	.size	.L.str.227, 19

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"Reset padding color to what's configured in preferences"
	.size	.L.str.228, 56

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"view-scroll-horizontal"
	.size	.L.str.229, 23

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"Set horizontal scroll offset"
	.size	.L.str.230, 29

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"view-scroll-left-border"
	.size	.L.str.231, 24

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"Scroll to left border"
	.size	.L.str.232, 22

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"view-scroll-right-border"
	.size	.L.str.233, 25

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"Scroll to right border"
	.size	.L.str.234, 23

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"view-scroll-left"
	.size	.L.str.235, 17

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"Scroll left"
	.size	.L.str.236, 12

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"view-scroll-right"
	.size	.L.str.237, 18

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"Scroll right"
	.size	.L.str.238, 13

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"view-scroll-page-left"
	.size	.L.str.239, 22

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"Scroll page left"
	.size	.L.str.240, 17

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"view-scroll-page-right"
	.size	.L.str.241, 23

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"Scroll page right"
	.size	.L.str.242, 18

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"view-scroll-vertical"
	.size	.L.str.243, 21

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"Set vertical scroll offset"
	.size	.L.str.244, 27

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"view-scroll-top-border"
	.size	.L.str.245, 23

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"Scroll to top border"
	.size	.L.str.246, 21

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"view-scroll-bottom-border"
	.size	.L.str.247, 26

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"Scroll to bottom border"
	.size	.L.str.248, 24

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"view-scroll-up"
	.size	.L.str.249, 15

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"Scroll up"
	.size	.L.str.250, 10

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"view-scroll-down"
	.size	.L.str.251, 17

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"Scroll down"
	.size	.L.str.252, 12

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"view-scroll-page-up"
	.size	.L.str.253, 20

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"Scroll page up"
	.size	.L.str.254, 15

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"view-scroll-page-down"
	.size	.L.str.255, 22

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"Scroll page down"
	.size	.L.str.256, 17

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"percentage"
	.size	.L.str.257, 11

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"Othe_r (%s)..."
	.size	.L.str.258, 15

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"_Zoom (%s)"
	.size	.L.str.259, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
