	.text
	.file	"window-actions.bc"
	.globl	window_actions_setup
	.align	16, 0x90
	.type	window_actions_setup,@function
window_actions_setup:                   # @window_actions_setup
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gdk_display_manager_get
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_strdup
	movabsq	$.L.str, %rsi
	movabsq	$g_free, %rcx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
	movq	-24(%rbp), %rdi
	callq	gdk_display_manager_list_displays
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_slist_reverse
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	callq	window_actions_display_opened
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_6
.LBB0_5:                                # %cond.false
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_6
.LBB0_6:                                # %cond.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_7:                                # %for.end
	movq	-32(%rbp), %rdi
	callq	g_slist_free
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rsi
	movabsq	$window_actions_display_opened, %rcx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movq	%rax, -72(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	window_actions_setup, .Lfunc_end0-window_actions_setup
	.cfi_endproc

	.align	16, 0x90
	.type	window_actions_display_opened,@function
window_actions_display_opened:          # @window_actions_display_opened
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
	subq	$160, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_action_group_get_name
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_display_get_n_screens
	movl	$56, %r8d
	movl	%r8d, %esi
	movl	%eax, -60(%rbp)
	movslq	-60(%rbp), %rdi
	callq	g_malloc0_n
	movq	%rax, -32(%rbp)
	movl	$0, -64(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB1_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-64(%rbp), %esi
	callq	gdk_display_get_screen
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gdk_screen_make_display_name
	movabsq	$.L.str.2, %rdi
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.5, %rdx
	movslq	-64(%rbp), %rsi
	imulq	$56, %rsi, %rsi
	addq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	movslq	-64(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	callq	gettext
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.7, %rdi
	movslq	-64(%rbp), %rdx
	imulq	$56, %rdx, %rdx
	addq	-32(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movslq	-64(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-32(%rbp), %rax
	movq	$0, 24(%rax)
	callq	gettext
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movslq	-64(%rbp), %rdx
	imulq	$56, %rdx, %rdx
	addq	-32(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-80(%rbp), %rdi
	callq	g_quark_from_string
	movslq	-64(%rbp), %rdx
	imulq	$56, %rdx, %rdx
	addq	-32(%rbp), %rdx
	movl	%eax, 40(%rdx)
	movq	-40(%rbp), %rdx
	movslq	-64(%rbp), %rsi
	imulq	$56, %rsi, %rsi
	addq	-32(%rbp), %rsi
	movq	%rdx, 48(%rsi)
	movq	-80(%rbp), %rdi
	callq	g_free
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB1_1
.LBB1_4:                                # %for.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	xorl	%edx, %edx
	movl	%edx, %esi
	xorl	%r9d, %r9d
	movabsq	$window_move_to_screen_cmd_callback, %rcx
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movq	%rax, %r8
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_action_group_add_radio_actions
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movl	$0, -64(%rbp)
.LBB1_5:                                # %for.cond.33
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB1_10
# BB#6:                                 # %for.body.36
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-16(%rbp), %rdi
	movl	-64(%rbp), %esi
	callq	gdk_display_get_screen
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-64(%rbp), %rsi
	imulq	$56, %rsi, %rsi
	addq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	-88(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
.LBB1_8:                                # %if.end
                                        #   in Loop: Header=BB1_5 Depth=1
	movslq	-64(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movslq	-64(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
	movslq	-64(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
# BB#9:                                 # %for.inc.55
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB1_5
.LBB1_10:                               # %for.end.57
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movabsq	$window_actions_display_closed, %rdi
	xorl	%r8d, %r8d
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movq	%rax, -144(%rbp)        # 8-byte Spill
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	window_actions_display_opened, .Lfunc_end1-window_actions_display_opened
	.cfi_endproc

	.globl	window_actions_update
	.align	16, 0x90
	.type	window_actions_update,@function
window_actions_update:                  # @window_actions_update
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -28(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_action_group_get_name
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_window_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB2_7
.LBB2_2:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_5
# BB#3:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB2_5
# BB#4:                                 # %if.then.6
	movl	$1, -60(%rbp)
	jmp	.LBB2_6
.LBB2_5:                                # %if.else.7
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB2_6:                                # %if.end
	jmp	.LBB2_7
.LBB2_7:                                # %if.end.9
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB2_11
# BB#8:                                 # %if.then.11
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_display
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gdk_display_get_n_screens
	cmpl	$1, %eax
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB2_10
# BB#9:                                 # %if.then.19
	callq	gdk_display_manager_get
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gdk_display_manager_list_displays
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpq	$0, 8(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -28(%rbp)
	movq	-104(%rbp), %rdi
	callq	g_slist_free
.LBB2_10:                               # %if.end.26
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_screen
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gdk_screen_make_display_name
	movabsq	$.L.str.2, %rdi
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_free
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_action_group_set_action_active
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB2_11:                               # %if.end.30
	movabsq	$.L.str.3, %rdi
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	cmpl	$0, -28(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	gimp_action_group_set_action_visible
	movq	-40(%rbp), %rdi
	callq	g_free
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	window_actions_update, .Lfunc_end2-window_actions_update
	.cfi_endproc

	.align	16, 0x90
	.type	window_actions_display_closed,@function
window_actions_display_closed:          # @window_actions_display_closed
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_action_group_get_name
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gdk_display_get_n_screens
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB3_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %esi
	callq	gdk_display_get_screen
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gdk_screen_make_display_name
	movabsq	$.L.str.2, %rdi
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB3_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_radio_action_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_action_get_group
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rsi
	cmpq	%rsi, %rax
	jne	.LBB3_5
# BB#4:                                 # %if.then.14
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB3_5:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_remove_action
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	-80(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
.LBB3_6:                                # %if.end.18
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-72(%rbp), %rdi
	callq	g_free
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB3_1
.LBB3_8:                                # %for.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	window_actions_display_closed, .Lfunc_end3-window_actions_display_closed
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"move-to-screen-help-id"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"display-opened"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s-move-to-screen-%s"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s-move-to-screen-menu"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"change-to-screen-help-id"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-move-to-screen"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Screen %s"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Move this window to screen %s"
	.size	.L.str.7, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"change-to-screen-radio-group"
	.size	.L.str.8, 29

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"screen"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"closed"
	.size	.L.str.10, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
