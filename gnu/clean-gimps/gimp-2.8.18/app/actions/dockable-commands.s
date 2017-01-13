	.text
	.file	"dockable-commands.bc"
	.globl	dockable_add_tab_cmd_callback
	.align	16, 0x90
	.type	dockable_add_tab_cmd_callback,@function
dockable_add_tab_cmd_callback:          # @dockable_add_tab_cmd_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_dockbook_add_from_dialog_factory
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	dockable_add_tab_cmd_callback, .Lfunc_end0-dockable_add_tab_cmd_callback
	.cfi_endproc

	.globl	dockable_close_tab_cmd_callback
	.align	16, 0x90
	.type	dockable_close_tab_cmd_callback,@function
dockable_close_tab_cmd_callback:        # @dockable_close_tab_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	dockable_get_current
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_remove
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB1_2:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	dockable_close_tab_cmd_callback, .Lfunc_end1-dockable_close_tab_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	dockable_get_current,@function
dockable_get_current:                   # @dockable_get_current
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_notebook_get_current_page
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_notebook_get_nth_page
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	dockable_get_current, .Lfunc_end2-dockable_get_current
	.cfi_endproc

	.globl	dockable_detach_tab_cmd_callback
	.align	16, 0x90
	.type	dockable_detach_tab_cmd_callback,@function
dockable_detach_tab_cmd_callback:       # @dockable_detach_tab_cmd_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	dockable_get_current
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_dockable_detach
.LBB3_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	dockable_detach_tab_cmd_callback, .Lfunc_end3-dockable_detach_tab_cmd_callback
	.cfi_endproc

	.globl	dockable_lock_tab_cmd_callback
	.align	16, 0x90
	.type	dockable_lock_tab_cmd_callback,@function
dockable_lock_tab_cmd_callback:         # @dockable_lock_tab_cmd_callback
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
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	dockable_get_current
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_dockable_set_locked
.LBB4_2:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	dockable_lock_tab_cmd_callback, .Lfunc_end4-dockable_lock_tab_cmd_callback
	.cfi_endproc

	.globl	dockable_toggle_view_cmd_callback
	.align	16, 0x90
	.type	dockable_toggle_view_cmd_callback,@function
dockable_toggle_view_cmd_callback:      # @dockable_toggle_view_cmd_callback
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_radio_action_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_action_get_current_value
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_notebook_get_current_page
	movl	%eax, -48(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-48(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_notebook_get_nth_page
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB5_25
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_factory_from_widget
	cmpq	$0, -56(%rbp)
	movq	%rax, -176(%rbp)        # 8-byte Spill
	je	.LBB5_24
# BB#2:                                 # %if.then.16
	movq	$0, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movabsq	$.L.str, %rsi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	strstr
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB5_5
# BB#3:                                 # %land.lhs.true
	cmpl	$1, -44(%rbp)
	jne	.LBB5_5
# BB#4:                                 # %if.then.21
	movq	-64(%rbp), %rdi
	callq	g_free
	jmp	.LBB5_25
.LBB5_5:                                # %if.end
	cmpq	$0, -72(%rbp)
	jne	.LBB5_10
# BB#6:                                 # %if.then.23
	movabsq	$.L.str.1, %rsi
	movq	-64(%rbp), %rdi
	callq	strstr
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB5_9
# BB#7:                                 # %land.lhs.true.26
	cmpl	$0, -44(%rbp)
	jne	.LBB5_9
# BB#8:                                 # %if.then.28
	movq	-64(%rbp), %rdi
	callq	g_free
	jmp	.LBB5_25
.LBB5_9:                                # %if.end.29
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.30
	cmpq	$0, -72(%rbp)
	je	.LBB5_23
# BB#11:                                # %if.then.32
	movl	$-1, -100(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB5_13
# BB#12:                                # %if.then.34
	movq	-72(%rbp), %rax
	movl	.L.str.1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB5_16
.LBB5_13:                               # %if.else
	cmpl	$1, -44(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.36
	movq	-72(%rbp), %rax
	movl	.L.str, %ecx
	movl	%ecx, (%rax)
.LBB5_15:                               # %if.end.37
	jmp	.LBB5_16
.LBB5_16:                               # %if.end.38
	movq	-40(%rbp), %rdi
	callq	gimp_container_view_get_by_dockable
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB5_18
# BB#17:                                # %if.then.41
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	callq	gimp_container_view_get_view_size
	movl	%eax, -100(%rbp)
.LBB5_18:                               # %if.end.43
	movq	-32(%rbp), %rdi
	callq	gimp_dockbook_get_dock
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_dock_get_dialog_factory
	movq	-96(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	-100(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_dialog_factory_dockable_new
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB5_22
# BB#19:                                # %if.then.48
	movq	-88(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_dockable_is_locked
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_dockable_set_locked
	movq	-40(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_docked_get_show_button_bar
	movl	%eax, -124(%rbp)
	movq	-120(%rbp), %rdi
	movl	-124(%rbp), %esi
	callq	gimp_docked_set_show_button_bar
	movq	-88(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dockable_get_dockbook
	cmpq	$0, %rax
	jne	.LBB5_21
# BB#20:                                # %if.then.67
	movq	-32(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-48(%rbp), %edx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dockbook_add
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_dockbook_remove
	movq	-40(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-48(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_current_page
.LBB5_21:                               # %if.end.75
	jmp	.LBB5_22
.LBB5_22:                               # %if.end.76
	jmp	.LBB5_23
.LBB5_23:                               # %if.end.77
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB5_24:                               # %if.end.78
	jmp	.LBB5_25
.LBB5_25:                               # %if.end.79
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end5:
	.size	dockable_toggle_view_cmd_callback, .Lfunc_end5-dockable_toggle_view_cmd_callback
	.cfi_endproc

	.globl	dockable_view_size_cmd_callback
	.align	16, 0x90
	.type	dockable_view_size_cmd_callback,@function
dockable_view_size_cmd_callback:        # @dockable_view_size_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	dockable_get_current
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_radio_action_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_action_get_current_value
	movl	%eax, -44(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB6_6
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	gimp_container_view_get_by_dockable
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB6_5
# BB#2:                                 # %if.then.8
	leaq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gimp_container_view_get_view_size
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.LBB6_4
# BB#3:                                 # %if.then.10
	movq	-56(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-64(%rbp), %edx
	callq	gimp_container_view_set_view_size
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %if.end.11
	jmp	.LBB6_6
.LBB6_6:                                # %if.end.12
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	dockable_view_size_cmd_callback, .Lfunc_end6-dockable_view_size_cmd_callback
	.cfi_endproc

	.globl	dockable_tab_style_cmd_callback
	.align	16, 0x90
	.type	dockable_tab_style_cmd_callback,@function
dockable_tab_style_cmd_callback:        # @dockable_tab_style_cmd_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	dockable_get_current
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_radio_action_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_action_get_current_value
	movl	%eax, -44(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB7_3
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	gimp_dockable_get_tab_style
	cmpl	-44(%rbp), %eax
	je	.LBB7_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_dockable_set_tab_style
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_dockbook_create_tab_widget
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_notebook_set_tab_label
.LBB7_3:                                # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	dockable_tab_style_cmd_callback, .Lfunc_end7-dockable_tab_style_cmd_callback
	.cfi_endproc

	.globl	dockable_show_button_bar_cmd_callback
	.align	16, 0x90
	.type	dockable_show_button_bar_cmd_callback,@function
dockable_show_button_bar_cmd_callback:  # @dockable_show_button_bar_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	dockable_get_current
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_docked_set_show_button_bar
.LBB8_2:                                # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	dockable_show_button_bar_cmd_callback, .Lfunc_end8-dockable_show_button_bar_cmd_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"grid"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"list"
	.size	.L.str.1, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
