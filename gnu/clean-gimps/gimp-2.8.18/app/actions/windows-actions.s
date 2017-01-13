	.text
	.file	"windows-actions.bc"
	.globl	windows_actions_setup
	.align	16, 0x90
	.type	windows_actions_setup,@function
windows_actions_setup:                  # @windows_actions_setup
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
	subq	$208, %rsp
	movabsq	$.L.str, %rsi
	movabsq	$windows_actions, %rdx
	movl	$5, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$windows_toggle_actions, %rdx
	movl	$2, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_toggle_actions
	movabsq	$.L.str.1, %rsi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_hide_empty
	movabsq	$.L.str.2, %rsi
	movabsq	$windows_actions_display_add, %rdi
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	416(%rax), %rax
	movq	-8(%rbp), %r9
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%r9, %rcx
	callq	g_signal_connect_object
	movabsq	$.L.str.3, %rsi
	movabsq	$windows_actions_display_remove, %rcx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	416(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_get_display_iter
	movq	%rax, -16(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB0_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	416(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	windows_actions_display_add
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB0_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB0_6
.LBB0_5:                                # %cond.false
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB0_6
.LBB0_6:                                # %cond.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_7:                                # %for.end
	callq	gimp_dialog_factory_get_singleton
	movabsq	$.L.str.4, %rsi
	movabsq	$windows_actions_dock_window_added, %rcx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movabsq	$.L.str.5, %rsi
	movabsq	$windows_actions_dock_window_removed, %rcx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movq	%rax, %rdi
	callq	gimp_dialog_factory_get_open_dialogs
	movq	%rax, -16(%rbp)
.LBB0_8:                                # %for.cond.15
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB0_23
# BB#9:                                 # %for.body.17
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_11
# BB#10:                                # %if.then
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	$0, -52(%rbp)
	jmp	.LBB0_16
.LBB0_11:                               # %if.else
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB0_14
# BB#13:                                # %if.then.23
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	$1, -52(%rbp)
	jmp	.LBB0_15
.LBB0_14:                               # %if.else.24
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB0_15:                               # %if.end
                                        #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               # %if.end.26
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB0_18
# BB#17:                                # %if.then.28
                                        #   in Loop: Header=BB0_8 Depth=1
	callq	gimp_dialog_factory_get_singleton
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	callq	windows_actions_dock_window_added
.LBB0_18:                               # %if.end.30
                                        #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               # %for.inc.31
                                        #   in Loop: Header=BB0_8 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB0_21
# BB#20:                                # %cond.true.33
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB0_22
.LBB0_21:                               # %cond.false.35
                                        #   in Loop: Header=BB0_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB0_22
.LBB0_22:                               # %cond.end.36
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB0_8
.LBB0_23:                               # %for.end.38
	movabsq	$.L.str.2, %rsi
	movabsq	$windows_actions_recent_add, %rax
	xorl	%r8d, %r8d
	movq	global_recent_docks, %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.3, %rsi
	movabsq	$windows_actions_recent_remove, %rcx
	xorl	%r8d, %r8d
	movq	global_recent_docks, %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	global_recent_docks, %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gimp_list_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB0_24:                               # %for.cond.44
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB0_30
# BB#25:                                # %for.body.46
                                        #   in Loop: Header=BB0_24 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	global_recent_docks, %rdi
	movq	-64(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	windows_actions_recent_add
# BB#26:                                # %for.inc.49
                                        #   in Loop: Header=BB0_24 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB0_28
# BB#27:                                # %cond.true.51
                                        #   in Loop: Header=BB0_24 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB0_29
.LBB0_28:                               # %cond.false.53
                                        #   in Loop: Header=BB0_24 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB0_29
.LBB0_29:                               # %cond.end.54
                                        #   in Loop: Header=BB0_24 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB0_24
.LBB0_30:                               # %for.end.56
	movabsq	$.L.str.6, %rsi
	movabsq	$windows_actions_single_window_mode_notify, %rax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -208(%rbp)        # 8-byte Spill
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	windows_actions_setup, .Lfunc_end0-windows_actions_setup
	.cfi_endproc

	.align	16, 0x90
	.type	windows_actions_display_add,@function
windows_actions_display_add:            # @windows_actions_display_add
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
	movabsq	$.L.str.30, %rax
	movabsq	$windows_actions_image_notify, %rcx
	xorl	%r8d, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	-16(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB1_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	windows_actions_image_notify
.LBB1_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	windows_actions_display_add, .Lfunc_end1-windows_actions_display_add
	.cfi_endproc

	.align	16, 0x90
	.type	windows_actions_display_remove,@function
windows_actions_display_remove:         # @windows_actions_display_remove
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_action_name
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_remove_action
.LBB2_2:                                # %if.end
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	windows_actions_update_display_accels
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	windows_actions_display_remove, .Lfunc_end2-windows_actions_display_remove
	.cfi_endproc

	.align	16, 0x90
	.type	windows_actions_dock_window_added,@function
windows_actions_dock_window_added:      # @windows_actions_dock_window_added
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	windows_actions_dock_window_to_action_name
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-88(%rbp), %rdx
	movl	$1, %ecx
	movabsq	$.L.str.39, %rdi
	movabsq	$windows_show_dock_cmd_callback, %r8
	movabsq	$.L.str.32, %r9
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	%r9, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	%rdi, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movabsq	$.L.str.40, %rsi
	movl	$3, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movl	$80, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-96(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.42, %rsi
	movabsq	$windows_actions_dock_window_notify, %rax
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_get_title
	cmpq	$0, %rax
	je	.LBB3_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	windows_actions_dock_window_notify
.LBB3_2:                                # %if.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	windows_actions_dock_window_added, .Lfunc_end3-windows_actions_dock_window_added
	.cfi_endproc

	.align	16, 0x90
	.type	windows_actions_dock_window_removed,@function
windows_actions_dock_window_removed:    # @windows_actions_dock_window_removed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	windows_actions_dock_window_to_action_name
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_remove_action
.LBB4_2:                                # %if.end
	movq	-40(%rbp), %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	windows_actions_dock_window_removed, .Lfunc_end4-windows_actions_dock_window_removed
	.cfi_endproc

	.align	16, 0x90
	.type	windows_actions_recent_add,@function
windows_actions_recent_add:             # @windows_actions_recent_add
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
	subq	$112, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %r8d
	movl	%r8d, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movl	windows_actions_recent_add.info_id_counter, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, windows_actions_recent_add.info_id_counter
	movl	%eax, -92(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rsi
	movslq	-92(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB5_2:                                # %if.end
	movabsq	$.L.str.44, %rdi
	movl	-92(%rbp), %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	leaq	-88(%rbp), %rdx
	movl	$1, %ecx
	movabsq	$.L.str.45, %rdi
	movabsq	$windows_open_recent_cmd_callback, %r8
	movq	%rax, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	%rdi, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movabsq	$.L.str.40, %rsi
	movl	$3, %edx
	movabsq	$.L.str.46, %rcx
	movl	$30, %r8d
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movl	$80, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.47, %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-104(%rbp), %rdi
	callq	g_free
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	windows_actions_recent_add, .Lfunc_end5-windows_actions_recent_add
	.cfi_endproc

	.align	16, 0x90
	.type	windows_actions_recent_remove,@function
windows_actions_recent_remove:          # @windows_actions_recent_remove
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
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movabsq	$.L.str.44, %rdi
	movl	%eax, %r8d
	movl	%r8d, -36(%rbp)
	movl	-36(%rbp), %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_remove_action
.LBB6_2:                                # %if.end
	movq	-48(%rbp), %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	windows_actions_recent_remove, .Lfunc_end6-windows_actions_recent_remove
	.cfi_endproc

	.align	16, 0x90
	.type	windows_actions_single_window_mode_notify,@function
windows_actions_single_window_mode_notify: # @windows_actions_single_window_mode_notify
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movl	728(%rax), %edx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	gimp_action_group_set_action_active
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	windows_actions_single_window_mode_notify, .Lfunc_end7-windows_actions_single_window_mode_notify
	.cfi_endproc

	.globl	windows_actions_update
	.align	16, 0x90
	.type	windows_actions_update,@function
windows_actions_update:                 # @windows_actions_update
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	cmpl	$0, 728(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.8, %rsi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	cmpl	$0, 724(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	gimp_action_group_set_action_active
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	windows_actions_update, .Lfunc_end8-windows_actions_update
	.cfi_endproc

	.globl	windows_actions_dock_window_to_action_name
	.align	16, 0x90
	.type	windows_actions_dock_window_to_action_name,@function
windows_actions_dock_window_to_action_name: # @windows_actions_dock_window_to_action_name
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_dock_window_get_id
	movabsq	$.L.str.9, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	windows_actions_dock_window_to_action_name, .Lfunc_end9-windows_actions_dock_window_to_action_name
	.cfi_endproc

	.align	16, 0x90
	.type	windows_actions_image_notify,@function
windows_actions_image_notify:           # @windows_actions_image_notify
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
	pushq	%rbx
	subq	$248, %rsp
.Ltmp33:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB10_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_action_name
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then.6
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-112(%rbp), %rdx
	movl	$1, %ecx
	movabsq	$windows_show_display_cmd_callback, %rdi
	movabsq	$.L.str.32, %r8
	movabsq	$.L.str.31, %r9
	movq	-56(%rbp), %r10
	movq	%r10, -112(%rbp)
	movq	%r9, -104(%rbp)
	movq	%r8, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	%rdi, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_action_group_set_action_always_show_image
	movq	-32(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
.LBB10_3:                               # %if.end
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_display_name
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	gimp_escape_uline
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gimp_image_get_ID
	movq	-16(%rbp), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_display_get_instance
	movabsq	$.L.str.34, %rdi
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movl	-172(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	callq	gimp_image_get_display_path
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	callq	gimp_get_user_context
	movabsq	$.L.str.35, %rsi
	movabsq	$.L.str.36, %rcx
	movabsq	$.L.str.37, %r9
	movabsq	$.L.str.38, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movq	-184(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-192(%rbp), %r11        # 8-byte Reload
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%r11, %rdx
	movq	-200(%rbp), %r8         # 8-byte Reload
	movq	-208(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	-224(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	g_object_set
	movq	-136(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	windows_actions_update_display_accels
	jmp	.LBB10_5
.LBB10_4:                               # %if.else
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	416(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	windows_actions_display_remove
.LBB10_5:                               # %if.end.20
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	windows_actions_image_notify, .Lfunc_end10-windows_actions_image_notify
	.cfi_endproc

	.align	16, 0x90
	.type	windows_actions_update_display_accels,@function
windows_actions_update_display_accels:  # @windows_actions_update_display_accels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	gimp_get_display_iter
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -16(%rbp)
	movb	%cl, -61(%rbp)          # 1-byte Spill
	je	.LBB11_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$10, -20(%rbp)
	setl	%al
	movb	%al, -61(%rbp)          # 1-byte Spill
.LBB11_3:                               # %land.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movb	-61(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_4
	jmp	.LBB11_16
.LBB11_4:                               # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then
	jmp	.LBB11_16
.LBB11_6:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_action_name
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
	cmpq	$0, -40(%rbp)
	je	.LBB11_11
# BB#7:                                 # %if.then.8
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	gtk_action_get_accel_path
	movq	%rax, -56(%rbp)
	cmpl	$9, -20(%rbp)
	jge	.LBB11_9
# BB#8:                                 # %if.then.11
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$49, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB11_10
.LBB11_9:                               # %if.else
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$48, -60(%rbp)
.LBB11_10:                              # %if.end.12
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$8, %edx
	movl	$1, %ecx
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gtk_accel_map_change_entry
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB11_11:                              # %if.end.14
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_12
.LBB11_12:                              # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB11_14
# BB#13:                                # %cond.true
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB11_15
.LBB11_14:                              # %cond.false
                                        #   in Loop: Header=BB11_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB11_15
.LBB11_15:                              # %cond.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -20(%rbp)
	jmp	.LBB11_1
.LBB11_16:                              # %for.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	windows_actions_update_display_accels, .Lfunc_end11-windows_actions_update_display_accels
	.cfi_endproc

	.align	16, 0x90
	.type	windows_actions_dock_window_notify,@function
windows_actions_dock_window_notify:     # @windows_actions_dock_window_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	windows_actions_dock_window_to_action_name
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free
	cmpq	$0, -32(%rbp)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_get_title
	movq	-8(%rbp), %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_get_title
	movabsq	$.L.str.35, %rsi
	movabsq	$.L.str.36, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_object_set
.LBB12_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	windows_actions_dock_window_notify, .Lfunc_end12-windows_actions_dock_window_notify
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"windows-action"
	.size	.L.str, 15

	.type	windows_actions,@object # @windows_actions
	.section	.rodata,"a",@progbits
	.align	16
windows_actions:
	.quad	.L.str.10
	.quad	0
	.quad	.L.str.11
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.1
	.quad	0
	.quad	.L.str.12
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.13
	.quad	0
	.quad	.L.str.14
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.15
	.quad	0
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	windows_show_display_next_cmd_callback
	.quad	0
	.quad	.L.str.19
	.quad	0
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	windows_show_display_previous_cmd_callback
	.quad	0
	.size	windows_actions, 280

	.type	windows_toggle_actions,@object # @windows_toggle_actions
	.align	16
windows_toggle_actions:
	.quad	.L.str.8
	.quad	0
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	windows_hide_docks_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.26
	.quad	.L.str.7
	.quad	0
	.quad	.L.str.27
	.quad	0
	.quad	.L.str.28
	.quad	windows_use_single_window_mode_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.29
	.size	windows_toggle_actions, 128

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"windows-docks-menu"
	.size	.L.str.1, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"add"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"remove"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"dock-window-added"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"dock-window-removed"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"notify::single-window-mode"
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"windows-use-single-window-mode"
	.size	.L.str.7, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"windows-hide-docks"
	.size	.L.str.8, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"windows-dock-%04d"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"windows-menu"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Windows"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"_Recently Closed Docks"
	.size	.L.str.12, 23

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"windows-dialogs-menu"
	.size	.L.str.13, 21

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"_Dockable Dialogs"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"windows-show-display-next"
	.size	.L.str.15, 26

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Next Image"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"<alt>Tab"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Switch to the next image"
	.size	.L.str.18, 25

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"windows-show-display-previous"
	.size	.L.str.19, 30

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Previous Image"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"<alt><shift>Tab"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Switch to the previous image"
	.size	.L.str.22, 29

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Hide Docks"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Tab"
	.size	.L.str.24, 4

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"When enabled docks and other dialogs are hidden, leaving only image windows."
	.size	.L.str.25, 77

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-windows-hide-docks"
	.size	.L.str.26, 24

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Single-Window Mode"
	.size	.L.str.27, 19

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"When enabled GIMP is in a single-window mode."
	.size	.L.str.28, 46

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-windows-use-single-window-mode"
	.size	.L.str.29, 36

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"notify::image"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-image"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.zero	1
	.size	.L.str.32, 1

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"display"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%s-%d.%d"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"label"
	.size	.L.str.35, 6

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"tooltip"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"viewable"
	.size	.L.str.37, 9

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"context"
	.size	.L.str.38, 8

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp-windows-show-dock"
	.size	.L.str.39, 23

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"ellipsize"
	.size	.L.str.40, 10

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"dock-window"
	.size	.L.str.41, 12

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"notify::title"
	.size	.L.str.42, 14

	.type	windows_actions_recent_add.info_id_counter,@object # @windows_actions_recent_add.info_id_counter
	.data
	.align	4
windows_actions_recent_add.info_id_counter:
	.long	1                       # 0x1
	.size	windows_actions_recent_add.info_id_counter, 4

	.type	.L.str.43,@object       # @.str.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.43:
	.asciz	"recent-action-id"
	.size	.L.str.43, 17

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"windows-recent-%04d"
	.size	.L.str.44, 20

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp-windows-open-recent-dock"
	.size	.L.str.45, 30

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"max-width-chars"
	.size	.L.str.46, 16

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"info"
	.size	.L.str.47, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
