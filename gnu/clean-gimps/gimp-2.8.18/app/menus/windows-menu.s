	.text
	.file	"windows-menu.bc"
	.globl	windows_menu_setup
	.align	16, 0x90
	.type	windows_menu_setup,@function
windows_menu_setup:                     # @windows_menu_setup
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_ui_manager_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.windows_menu_setup, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_47
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.windows_menu_setup, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_47
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.4, %rsi
	movabsq	$windows_menu_display_add, %rax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	416(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.5, %rsi
	movabsq	$windows_menu_display_remove, %rcx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	416(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_get_display_iter
	movq	%rax, -24(%rbp)
.LBB0_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_24
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	416(%rax), %rdi
	movq	-56(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	windows_menu_display_add
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB0_18 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_22
# BB#21:                                # %cond.true
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB0_23
.LBB0_22:                               # %cond.false
                                        #   in Loop: Header=BB0_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB0_23
.LBB0_23:                               # %cond.end
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB0_18
.LBB0_24:                               # %for.end
	callq	gimp_dialog_factory_get_singleton
	movabsq	$.L.str.6, %rsi
	movabsq	$windows_menu_dock_window_added, %rcx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movabsq	$.L.str.7, %rsi
	movabsq	$windows_menu_dock_window_removed, %rcx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movq	%rax, %rdi
	callq	gimp_dialog_factory_get_open_dialogs
	movq	%rax, -24(%rbp)
.LBB0_25:                               # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_40
# BB#26:                                # %for.body.37
                                        #   in Loop: Header=BB0_25 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_28
# BB#27:                                # %if.then.48
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	$0, -84(%rbp)
	jmp	.LBB0_33
.LBB0_28:                               # %if.else.49
                                        #   in Loop: Header=BB0_25 Depth=1
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_31
# BB#29:                                # %land.lhs.true.52
                                        #   in Loop: Header=BB0_25 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB0_31
# BB#30:                                # %if.then.56
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	$1, -84(%rbp)
	jmp	.LBB0_32
.LBB0_31:                               # %if.else.57
                                        #   in Loop: Header=BB0_25 Depth=1
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB0_32:                               # %if.end.59
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_33
.LBB0_33:                               # %if.end.60
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB0_35
# BB#34:                                # %if.then.63
                                        #   in Loop: Header=BB0_25 Depth=1
	callq	gimp_dialog_factory_get_singleton
	movq	-64(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	callq	windows_menu_dock_window_added
.LBB0_35:                               # %if.end.65
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_36
.LBB0_36:                               # %for.inc.66
                                        #   in Loop: Header=BB0_25 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_38
# BB#37:                                # %cond.true.68
                                        #   in Loop: Header=BB0_25 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB0_39
.LBB0_38:                               # %cond.false.70
                                        #   in Loop: Header=BB0_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB0_39
.LBB0_39:                               # %cond.end.71
                                        #   in Loop: Header=BB0_25 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB0_25
.LBB0_40:                               # %for.end.73
	movabsq	$.L.str.4, %rsi
	movabsq	$windows_menu_recent_add, %rax
	xorl	%r8d, %r8d
	movq	global_recent_docks, %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.5, %rsi
	movabsq	$windows_menu_recent_remove, %rcx
	xorl	%r8d, %r8d
	movq	global_recent_docks, %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	global_recent_docks, %rcx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	callq	gimp_list_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rdi
	callq	g_list_last
	movq	%rax, -24(%rbp)
.LBB0_41:                               # %for.cond.80
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_47
# BB#42:                                # %for.body.82
                                        #   in Loop: Header=BB0_41 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	global_recent_docks, %rdi
	movq	-96(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	windows_menu_recent_add
# BB#43:                                # %for.inc.85
                                        #   in Loop: Header=BB0_41 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_45
# BB#44:                                # %cond.true.87
                                        #   in Loop: Header=BB0_41 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB0_46
.LBB0_45:                               # %cond.false.88
                                        #   in Loop: Header=BB0_41 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB0_46
.LBB0_46:                               # %cond.end.89
                                        #   in Loop: Header=BB0_41 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB0_41
.LBB0_47:                               # %for.end.91
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	windows_menu_setup, .Lfunc_end0-windows_menu_setup
	.cfi_endproc

	.align	16, 0x90
	.type	windows_menu_display_add,@function
windows_menu_display_add:               # @windows_menu_display_add
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
	movabsq	$.L.str.8, %rax
	movabsq	$windows_menu_image_notify, %rcx
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
	callq	windows_menu_image_notify
.LBB1_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	windows_menu_display_add, .Lfunc_end1-windows_menu_display_add
	.cfi_endproc

	.align	16, 0x90
	.type	windows_menu_display_remove,@function
windows_menu_display_remove:            # @windows_menu_display_remove
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_ID
	movabsq	$.L.str.9, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_ui_manager_remove_ui
.LBB2_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-32(%rbp), %rdi
	callq	g_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	windows_menu_display_remove, .Lfunc_end2-windows_menu_display_remove
	.cfi_endproc

	.align	16, 0x90
	.type	windows_menu_dock_window_added,@function
windows_menu_dock_window_added:         # @windows_menu_dock_window_added
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
	subq	$112, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	windows_actions_dock_window_to_action_name
	movabsq	$.L.str.14, %rdi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	windows_menu_dock_window_to_merge_id
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_ui_manager_new_merge_id
	movl	$80, %r8d
	movl	%r8d, %esi
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movl	-60(%rbp), %r8d
	movl	%r8d, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$32, %r9d
	xorl	%r8d, %r8d
	movl	-60(%rbp), %esi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movl	$0, (%rsp)
	callq	gtk_ui_manager_add_ui
	movq	-16(%rbp), %rdi
	callq	windows_menu_is_toolbox_dock_window
	cmpl	$0, %eax
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	global_recent_docks, %rdi
	callq	windows_menu_remove_toolbox_entries
.LBB3_2:                                # %if.end
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	windows_menu_dock_window_added, .Lfunc_end3-windows_menu_dock_window_added
	.cfi_endproc

	.align	16, 0x90
	.type	windows_menu_dock_window_removed,@function
windows_menu_dock_window_removed:       # @windows_menu_dock_window_removed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	windows_menu_dock_window_to_merge_id
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_ui_manager_remove_ui
.LBB4_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-32(%rbp), %rdi
	callq	g_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	windows_menu_dock_window_removed, .Lfunc_end4-windows_menu_dock_window_removed
	.cfi_endproc

	.align	16, 0x90
	.type	windows_menu_recent_add,@function
windows_menu_recent_add:                # @windows_menu_recent_add
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
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movabsq	$.L.str.18, %rdi
	movl	%eax, %r8d
	movl	%r8d, -52(%rbp)
	movl	-52(%rbp), %esi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.19, %rdi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.20, %rdi
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_ui_manager_new_merge_id
	movl	$80, %r8d
	movl	%r8d, %esi
	movl	%eax, -68(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movl	-68(%rbp), %r8d
	movl	%r8d, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$32, %r9d
	movl	$1, %r8d
	movl	-68(%rbp), %esi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movl	$1, (%rsp)
	callq	gtk_ui_manager_add_ui
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	windows_menu_recent_add, .Lfunc_end5-windows_menu_recent_add
	.cfi_endproc

	.align	16, 0x90
	.type	windows_menu_recent_remove,@function
windows_menu_recent_remove:             # @windows_menu_recent_remove
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
	movabsq	$.L.str.17, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movabsq	$.L.str.20, %rdi
	movl	%eax, %r8d
	movl	%r8d, -28(%rbp)
	movl	-28(%rbp), %esi
	movb	$0, %al
	callq	g_strdup_printf
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %r8d
	movl	%r8d, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-44(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_ui_manager_remove_ui
.LBB6_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-40(%rbp), %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	windows_menu_recent_remove, .Lfunc_end6-windows_menu_recent_remove
	.cfi_endproc

	.align	16, 0x90
	.type	windows_menu_image_notify,@function
windows_menu_image_notify:              # @windows_menu_image_notify
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB7_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_display_get_ID
	movabsq	$.L.str.9, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB7_5
# BB#2:                                 # %if.then.6
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_display_get_action_name
	movabsq	$.L.str.10, %rdi
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_ui_manager_new_merge_id
	movl	$80, %edx
	movl	%edx, %esi
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$32, %r9d
	xorl	%r8d, %r8d
	movl	-36(%rbp), %esi
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-64(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movl	$0, (%rsp)
	callq	gtk_ui_manager_add_ui
	movabsq	$.L.str.11, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB7_4
# BB#3:                                 # %if.then.23
	movabsq	$.L.str.12, %rsi
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rdx
	callq	gimp_ui_manager_find_action
	movabsq	$.L.str.13, %rsi
	movabsq	$windows_menu_display_query_tooltip, %rdx
	xorl	%r8d, %r8d
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	-88(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB7_4:                                # %if.end
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	g_free
.LBB7_5:                                # %if.end.26
	movq	-32(%rbp), %rdi
	callq	g_free
	jmp	.LBB7_7
.LBB7_6:                                # %if.else
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	416(%rax), %rdi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	windows_menu_display_remove
.LBB7_7:                                # %if.end.27
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	windows_menu_image_notify, .Lfunc_end7-windows_menu_image_notify
	.cfi_endproc

	.align	16, 0x90
	.type	windows_menu_display_query_tooltip,@function
windows_menu_display_query_tooltip:     # @windows_menu_display_query_tooltip
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_tooltip_text
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_tooltip_set_text
	movq	-56(%rbp), %rdi
	callq	g_free
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_resolution
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_width
	movq	-48(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	movl	$96, %ecx
	xorl	%r8d, %r8d
	leaq	-76(%rbp), %r9
	leaq	-80(%rbp), %rdx
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-92(%rbp), %edi         # 4-byte Reload
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movq	-112(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_viewable_calc_preview_size
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %r9
	movq	48(%r9), %r9
	movq	-40(%rbp), %r11
	movq	32(%r11), %rsi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	callq	gimp_viewable_get_pixbuf
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_tooltip_set_icon
	movl	$1, %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	windows_menu_display_query_tooltip, .Lfunc_end8-windows_menu_display_query_tooltip
	.cfi_endproc

	.align	16, 0x90
	.type	windows_menu_dock_window_to_merge_id,@function
windows_menu_dock_window_to_merge_id:   # @windows_menu_dock_window_to_merge_id
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
	movabsq	$.L.str.15, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	windows_menu_dock_window_to_merge_id, .Lfunc_end9-windows_menu_dock_window_to_merge_id
	.cfi_endproc

	.align	16, 0x90
	.type	windows_menu_is_toolbox_dock_window,@function
windows_menu_is_toolbox_dock_window:    # @windows_menu_is_toolbox_dock_window
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_factory_from_widget
	cmpq	$0, -16(%rbp)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	je	.LBB10_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movl	$.L.str.16, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$1, -20(%rbp)
.LBB10_3:                               # %if.end
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	windows_menu_is_toolbox_dock_window, .Lfunc_end10-windows_menu_is_toolbox_dock_window
	.cfi_endproc

	.align	16, 0x90
	.type	windows_menu_remove_toolbox_entries,@function
windows_menu_remove_toolbox_entries:    # @windows_menu_remove_toolbox_entries
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB11_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_session_info_get_factory_entry
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB11_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movl	$.L.str.16, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -24(%rbp)
.LBB11_5:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_6
.LBB11_6:                               # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB11_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB11_9
.LBB11_8:                               # %cond.false
                                        #   in Loop: Header=BB11_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB11_9
.LBB11_9:                               # %cond.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB11_1
.LBB11_10:                              # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB11_11:                              # %for.cond.8
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB11_17
# BB#12:                                # %for.body.10
                                        #   in Loop: Header=BB11_11 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_remove
	movl	%eax, -84(%rbp)         # 4-byte Spill
# BB#13:                                # %for.inc.16
                                        #   in Loop: Header=BB11_11 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB11_15
# BB#14:                                # %cond.true.18
                                        #   in Loop: Header=BB11_11 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB11_16
.LBB11_15:                              # %cond.false.20
                                        #   in Loop: Header=BB11_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB11_16
.LBB11_16:                              # %cond.end.21
                                        #   in Loop: Header=BB11_11 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB11_11
.LBB11_17:                              # %for.end.23
	movq	-24(%rbp), %rdi
	callq	g_list_free
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	windows_menu_remove_toolbox_entries, .Lfunc_end11-windows_menu_remove_toolbox_entries
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Menus"
	.size	.L.str, 11

	.type	.L__func__.windows_menu_setup,@object # @__func__.windows_menu_setup
.L__func__.windows_menu_setup:
	.asciz	"windows_menu_setup"
	.size	.L__func__.windows_menu_setup, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_UI_MANAGER (manager)"
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ui_path != NULL"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"image-menu-ui-path"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"add"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"remove"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"dock-window-added"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"dock-window-removed"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"notify::image"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"windows-display-%04d-merge-id"
	.size	.L.str.9, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s/Windows/Images"
	.size	.L.str.10, 18

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"/"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"windows"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"query-tooltip"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s/Windows/Docks"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"windows-dock-%04d-merge-id"
	.size	.L.str.15, 27

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-toolbox-window"
	.size	.L.str.16, 20

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"recent-action-id"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"windows-recent-%04d"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s/Windows/Recently Closed Docks"
	.size	.L.str.19, 33

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"windows-recent-%04d-merge-id"
	.size	.L.str.20, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
