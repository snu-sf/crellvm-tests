	.text
	.file	"gimpdockwindow.bc"
	.globl	gimp_dock_window_get_type
	.align	16, 0x90
	.type	gimp_dock_window_get_type,@function
gimp_dock_window_get_type:              # @gimp_dock_window_get_type
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_dock_window_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_dock_window_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_window_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$904, %edx              # imm = 0x388
	movabsq	$gimp_dock_window_class_intern_init, %rdi
	movl	$256, %r8d              # imm = 0x100
	movabsq	$gimp_dock_window_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_dock_container_interface_get_type
	movabsq	$gimp_dock_window_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_session_managed_interface_get_type
	movabsq	$gimp_dock_window_get_type.g_implement_interface_info.1, %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_dock_window_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_dock_window_get_type.g_define_type_id__volatile, %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_dock_window_get_type, .Lfunc_end0-gimp_dock_window_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_class_intern_init,@function
gimp_dock_window_class_intern_init:     # @gimp_dock_window_class_intern_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movq	%rax, gimp_dock_window_parent_class
	cmpl	$0, GimpDockWindow_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDockWindow_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dock_window_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_dock_window_class_intern_init, .Lfunc_end1-gimp_dock_window_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_init,@function
gimp_dock_window_init:                  # @gimp_dock_window_init
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
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movabsq	$.L.str.41, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, 248(%rsi)
	movl	gimp_dock_window_init.dock_window_ID, %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, gimp_dock_window_init.dock_window_ID
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movl	%ecx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movl	$1, 84(%rax)
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movl	56(%rax), %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_set_name
	movq	-16(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_focus_on_map
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_skip_taskbar_hint
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_dock_window_init, .Lfunc_end2-gimp_dock_window_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_dock_container_iface_init,@function
gimp_dock_window_dock_container_iface_init: # @gimp_dock_window_dock_container_iface_init
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
	movabsq	$gimp_dock_window_get_dock_side, %rax
	movabsq	$gimp_dock_window_add_dock_from_session, %rcx
	movabsq	$gimp_dock_window_get_ui_manager, %rdx
	movabsq	$gimp_dock_window_get_docks, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 24(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 32(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_dock_window_dock_container_iface_init, .Lfunc_end3-gimp_dock_window_dock_container_iface_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_session_managed_iface_init,@function
gimp_dock_window_session_managed_iface_init: # @gimp_dock_window_session_managed_iface_init
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
	movabsq	$gimp_dock_window_set_aux_info, %rax
	movabsq	$gimp_dock_window_get_aux_info, %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, 16(%rdi)
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_dock_window_session_managed_iface_init, .Lfunc_end4-gimp_dock_window_session_managed_iface_init
	.cfi_endproc

	.globl	gimp_dock_window_add_dock
	.align	16, 0x90
	.type	gimp_dock_window_add_dock,@function
gimp_dock_window_add_dock:              # @gimp_dock_window_add_dock
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_add_dock, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_25
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB5_20
.LBB5_15:                               # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB5_19:                               # %if.end.31
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.35
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_add_dock, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_25
.LBB5_23:                               # %if.end.37
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dock_columns_add_dock
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_dock_window_update_title, %rax
	movl	$2, %r8d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	callq	g_signal_connect_object
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dock_set_host_geometry_hints
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_dock_set_host_geometry_hints, %rax
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB5_25:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_dock_window_add_dock, .Lfunc_end5-gimp_dock_window_add_dock
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_update_title,@function
gimp_dock_window_update_title:          # @gimp_dock_window_update_title
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	248(%rdi), %rdi
	cmpl	$0, 52(%rdi)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movl	52(%rax), %edi
	callq	g_source_remove
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB6_2:                                # %if.end
	movabsq	$gimp_dock_window_update_title_idle, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_idle_add
	movq	-8(%rbp), %rcx
	movq	248(%rcx), %rcx
	movl	%eax, 52(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_dock_window_update_title, .Lfunc_end6-gimp_dock_window_update_title
	.cfi_endproc

	.globl	gimp_dock_window_remove_dock
	.align	16, 0x90
	.type	gimp_dock_window_remove_dock,@function
gimp_dock_window_remove_dock:           # @gimp_dock_window_remove_dock
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	248(%rsi), %rsi
	movq	40(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dock_columns_remove_dock
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_dock_window_update_title, %rax
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_dock_set_host_geometry_hints, %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -56(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_dock_window_remove_dock, .Lfunc_end7-gimp_dock_window_remove_dock
	.cfi_endproc

	.globl	gimp_dock_window_new
	.align	16, 0x90
	.type	gimp_dock_window_new,@function
gimp_dock_window_new:                   # @gimp_dock_window_new
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$168, %rsp
.Ltmp27:
	.cfi_offset %rbx, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_new, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB8_25
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB8_15
# BB#14:                                # %if.then.20
	movl	$0, -116(%rbp)
	jmp	.LBB8_20
.LBB8_15:                               # %if.else.21
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_18
# BB#16:                                # %land.lhs.true.24
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB8_18
# BB#17:                                # %if.then.28
	movl	$1, -116(%rbp)
	jmp	.LBB8_19
.LBB8_18:                               # %if.else.29
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB8_19:                               # %if.end.31
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.32
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB8_22
# BB#21:                                # %if.then.35
	jmp	.LBB8_23
.LBB8_22:                               # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_new, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB8_25
.LBB8_23:                               # %if.end.37
	jmp	.LBB8_24
.LBB8_24:                               # %do.end.38
	callq	gimp_dock_window_get_type
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rcx
	movabsq	$.L.str.11, %r9
	movabsq	$.L.str.12, %rdx
	movabsq	$.L.str.13, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-40(%rbp), %r11
	movq	-48(%rbp), %r8
	movl	-52(%rbp), %ebx
	movq	-64(%rbp), %r14
	movq	-72(%rbp), %r15
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%r11, %rdx
	movl	%ebx, (%rsp)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	%r11, 24(%rsp)
	movq	%r15, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r10, -144(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -32(%rbp)
.LBB8_25:                               # %return
	movq	-32(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_dock_window_new, .Lfunc_end8-gimp_dock_window_new
	.cfi_endproc

	.globl	gimp_dock_window_get_id
	.align	16, 0x90
	.type	gimp_dock_window_get_id,@function
gimp_dock_window_get_id:                # @gimp_dock_window_get_id
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_get_id, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB9_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_dock_window_get_id, .Lfunc_end9-gimp_dock_window_get_id
	.cfi_endproc

	.globl	gimp_dock_window_get_context
	.align	16, 0x90
	.type	gimp_dock_window_get_context,@function
gimp_dock_window_get_context:           # @gimp_dock_window_get_context
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_get_context, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB10_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_dock_window_get_context, .Lfunc_end10-gimp_dock_window_get_context
	.cfi_endproc

	.globl	gimp_dock_window_get_dialog_factory
	.align	16, 0x90
	.type	gimp_dock_window_get_dialog_factory,@function
gimp_dock_window_get_dialog_factory:    # @gimp_dock_window_get_dialog_factory
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_get_dialog_factory, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB11_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_dock_window_get_dialog_factory, .Lfunc_end11-gimp_dock_window_get_dialog_factory
	.cfi_endproc

	.globl	gimp_dock_window_get_auto_follow_active
	.align	16, 0x90
	.type	gimp_dock_window_get_auto_follow_active,@function
gimp_dock_window_get_auto_follow_active: # @gimp_dock_window_get_auto_follow_active
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_get_auto_follow_active, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movl	84(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB12_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_dock_window_get_auto_follow_active, .Lfunc_end12-gimp_dock_window_get_auto_follow_active
	.cfi_endproc

	.globl	gimp_dock_window_set_auto_follow_active
	.align	16, 0x90
	.type	gimp_dock_window_set_auto_follow_active,@function
gimp_dock_window_set_auto_follow_active: # @gimp_dock_window_set_auto_follow_active
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_set_auto_follow_active, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	96(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	cmpl	$0, -12(%rbp)
	cmovnel	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_toggle_button_set_active
.LBB13_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_dock_window_set_auto_follow_active, .Lfunc_end13-gimp_dock_window_set_auto_follow_active
	.cfi_endproc

	.globl	gimp_dock_window_get_show_image_menu
	.align	16, 0x90
	.type	gimp_dock_window_get_show_image_menu,@function
gimp_dock_window_get_show_image_menu:   # @gimp_dock_window_get_show_image_menu
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_get_show_image_menu, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB14_13
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movl	80(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB14_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_dock_window_get_show_image_menu, .Lfunc_end14-gimp_dock_window_get_show_image_menu
	.cfi_endproc

	.globl	gimp_dock_window_set_show_image_menu
	.align	16, 0x90
	.type	gimp_dock_window_set_show_image_menu,@function
gimp_dock_window_set_show_image_menu:   # @gimp_dock_window_set_show_image_menu
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_set_show_image_menu, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_13
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	88(%rax), %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_visible
	xorl	%esi, %esi
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movl	%esi, 80(%rax)
.LBB15_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_dock_window_set_show_image_menu, .Lfunc_end15-gimp_dock_window_set_show_image_menu
	.cfi_endproc

	.globl	gimp_dock_window_setup
	.align	16, 0x90
	.type	gimp_dock_window_setup,@function
gimp_dock_window_setup:                 # @gimp_dock_window_setup
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	248(%rsi), %rsi
	movl	84(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_dock_window_set_auto_follow_active
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	248(%rsi), %rsi
	movl	80(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_dock_window_set_show_image_menu
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_dock_window_setup, .Lfunc_end16-gimp_dock_window_setup
	.cfi_endproc

	.globl	gimp_dock_window_has_toolbox
	.align	16, 0x90
	.type	gimp_dock_window_has_toolbox,@function
gimp_dock_window_has_toolbox:           # @gimp_dock_window_has_toolbox
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_has_toolbox, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB17_29
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	40(%rax), %rdi
	callq	gimp_dock_columns_get_docks
	movq	%rax, -24(%rbp)
.LBB17_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB17_28
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB17_13 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_toolbox_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB17_16
# BB#15:                                # %if.then.21
                                        #   in Loop: Header=BB17_13 Depth=1
	movl	$0, -68(%rbp)
	jmp	.LBB17_21
.LBB17_16:                              # %if.else.22
                                        #   in Loop: Header=BB17_13 Depth=1
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_19
# BB#17:                                # %land.lhs.true.25
                                        #   in Loop: Header=BB17_13 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB17_19
# BB#18:                                # %if.then.29
                                        #   in Loop: Header=BB17_13 Depth=1
	movl	$1, -68(%rbp)
	jmp	.LBB17_20
.LBB17_19:                              # %if.else.30
                                        #   in Loop: Header=BB17_13 Depth=1
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB17_20:                              # %if.end.32
                                        #   in Loop: Header=BB17_13 Depth=1
	jmp	.LBB17_21
.LBB17_21:                              # %if.end.33
                                        #   in Loop: Header=BB17_13 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB17_23
# BB#22:                                # %if.then.36
	movl	$1, -4(%rbp)
	jmp	.LBB17_29
.LBB17_23:                              # %if.end.37
                                        #   in Loop: Header=BB17_13 Depth=1
	jmp	.LBB17_24
.LBB17_24:                              # %for.inc
                                        #   in Loop: Header=BB17_13 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB17_26
# BB#25:                                # %cond.true
                                        #   in Loop: Header=BB17_13 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB17_27
.LBB17_26:                              # %cond.false
                                        #   in Loop: Header=BB17_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB17_27
.LBB17_27:                              # %cond.end
                                        #   in Loop: Header=BB17_13 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB17_13
.LBB17_28:                              # %for.end
	movl	$0, -4(%rbp)
.LBB17_29:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_dock_window_has_toolbox, .Lfunc_end17-gimp_dock_window_has_toolbox
	.cfi_endproc

	.globl	gimp_dock_window_from_dock
	.align	16, 0x90
	.type	gimp_dock_window_from_dock,@function
gimp_dock_window_from_dock:             # @gimp_dock_window_from_dock
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_from_dock, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB18_22
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB18_14
# BB#13:                                # %if.then.22
	movl	$0, -68(%rbp)
	jmp	.LBB18_19
.LBB18_14:                              # %if.else.23
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_17
# BB#15:                                # %land.lhs.true.26
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB18_17
# BB#16:                                # %if.then.30
	movl	$1, -68(%rbp)
	jmp	.LBB18_18
.LBB18_17:                              # %if.else.31
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB18_18:                              # %if.end.33
	jmp	.LBB18_19
.LBB18_19:                              # %if.end.34
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB18_21
# BB#20:                                # %if.then.37
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
	jmp	.LBB18_22
.LBB18_21:                              # %if.else.40
	movq	$0, -8(%rbp)
.LBB18_22:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_dock_window_from_dock, .Lfunc_end18-gimp_dock_window_from_dock
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_class_init,@function
gimp_dock_window_class_init:            # @gimp_dock_window_class_init
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
	subq	$112, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_dock_window_delete_event, %rsi
	movabsq	$gimp_dock_window_style_set, %rdi
	movabsq	$gimp_dock_window_get_property, %rcx
	movabsq	$gimp_dock_window_set_property, %rdx
	movabsq	$gimp_dock_window_finalize, %r8
	movabsq	$gimp_dock_window_dispose, %r9
	movabsq	$gimp_dock_window_constructed, %r10
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r10, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%r9, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 280(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 376(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movabsq	$.L.str.13, %rdi
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_dialog_factory_get_type
	movabsq	$.L.str.12, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.10, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$235, %r8d
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$3, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movabsq	$.L.str.14, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$4, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movabsq	$.L.str.15, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$5, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.11, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$235, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$6, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.16, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$300, %r9d              # imm = 0x12C
	movl	$225, %esi
	movq	-24(%rbp), %rdx
	movl	%esi, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	$225, (%rsp)
	callq	g_param_spec_int
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gtk_icon_size_get_type
	movabsq	$.L.str.17, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$2, %r8d
	movl	$225, %r9d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property
	movl	$104, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_dock_window_class_init, .Lfunc_end19-gimp_dock_window_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_constructed,@function
gimp_dock_window_constructed:           # @gimp_dock_window_constructed
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
	subq	$384, %rsp              # imm = 0x180
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movl	$-1, -60(%rbp)
	movl	$-1, -64(%rbp)
	movq	gimp_dock_window_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_dock_window_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB20_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.18, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %rdi
	callq	gimp_context_new
	movq	-16(%rbp), %rdx
	movq	248(%rdx), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	248(%rdx), %rdx
	movq	%rax, 64(%rdx)
	movq	-48(%rbp), %rax
	movq	416(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	248(%rdx), %rdx
	movq	%rax, 72(%rdx)
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rdi
	callq	gimp_dialog_factory_get_context
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdx
	movl	712(%rdx), %esi
	movq	%rax, %rdi
	callq	gimp_window_set_hint
	movq	global_menu_factory, %rdi
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	16(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movl	600(%rdx), %ecx
	movq	%rax, %rdx
	callq	gimp_menu_factory_manager_new
	movq	-16(%rbp), %rdx
	movq	248(%rdx), %rdx
	movq	%rax, 24(%rdx)
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_accel_group
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_add_accel_group
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_dock_window_display_changed, %rax
	movl	$2, %r8d
	movq	-16(%rbp), %rdx
	movq	248(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.20, %rsi
	movabsq	$gimp_dock_window_image_changed, %rcx
	movl	$2, %r8d
	movq	-16(%rbp), %rdx
	movq	248(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.21, %rsi
	movabsq	$gimp_dock_window_image_flush, %rcx
	movq	-48(%rbp), %rdx
	movq	384(%rdx), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_container_add_handler
	movl	$1015792, %esi          # imm = 0xF7FF0
	xorl	%edx, %edx
	movq	-16(%rbp), %rcx
	movq	248(%rcx), %rcx
	movl	%eax, 32(%rcx)
	movq	-16(%rbp), %rcx
	movq	248(%rcx), %rcx
	movq	(%rcx), %rdi
	callq	gimp_context_define_properties
	movq	-16(%rbp), %rcx
	movq	248(%rcx), %rcx
	movq	(%rcx), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_context_set_parent
	movl	$1, %edi
	xorl	%esi, %esi
	movq	$0, -72(%rbp)
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$2, %esi
	movq	$0, -80(%rbp)
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %ecx        # 4-byte Reload
	movl	-188(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	cmpl	$0, 80(%rax)
	je	.LBB20_4
# BB#3:                                 # %if.then.53
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
.LBB20_4:                               # %if.end.54
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$16, %edx
	movl	$1, %eax
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movl	%eax, %ecx
	callq	gimp_container_combo_box_new
	movq	-16(%rbp), %rsi
	movq	248(%rsi), %rsi
	movq	%rax, 88(%rsi)
	movq	-80(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	248(%rsi), %rsi
	movq	88(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movabsq	$.L.str.22, %rsi
	movabsq	$gtk_widget_destroyed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	248(%rdi), %rdi
	movq	88(%rdi), %rdi
	movq	-16(%rbp), %r10
	movq	248(%r10), %r10
	addq	$88, %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movabsq	$.L.str.23, %rdx
	movq	-16(%rbp), %rcx
	movq	248(%rcx), %rcx
	movq	88(%rcx), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_help_set_help_data
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	88(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.24, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_toggle_button_new_with_label
	movq	-16(%rbp), %rcx
	movq	248(%rcx), %rcx
	movq	%rax, 96(%rcx)
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	96(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	248(%rcx), %rcx
	movl	84(%rcx), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-80(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rcx
	movq	248(%rcx), %rcx
	movq	96(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	96(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.25, %rsi
	movabsq	$gimp_dock_window_auto_clicked, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	248(%rdi), %rdi
	movq	96(%rdi), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.26, %rdi
	movq	-16(%rbp), %rcx
	movq	248(%rcx), %rcx
	movq	96(%rcx), %rcx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.27, %rdx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	24(%rax), %rdx
	callq	gimp_dock_columns_new
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_dock_columns_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	248(%rcx), %rcx
	movq	%rax, 40(%rcx)
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	248(%rcx), %rcx
	movq	40(%rcx), %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_dock_window_dock_removed, %rax
	movl	$2, %r8d
	movq	-16(%rbp), %rdi
	movq	248(%rdi), %rdi
	movq	40(%rdi), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_object
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_dock_window_update_title, %rcx
	movl	$2, %r8d
	movq	-16(%rbp), %rdx
	movq	248(%rdx), %rdx
	movq	40(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_dock_window_update_title, %rcx
	movl	$2, %r8d
	movq	-16(%rbp), %rdx
	movq	248(%rdx), %rdx
	movq	40(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	248(%rcx), %rcx
	cmpl	$0, 84(%rcx)
	movq	%rax, -320(%rbp)        # 8-byte Spill
	je	.LBB20_9
# BB#5:                                 # %if.then.122
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_display
	cmpq	$0, %rax
	je	.LBB20_7
# BB#6:                                 # %if.then.125
	movl	$3, %edx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	(%rax), %rsi
	callq	gimp_context_copy_property
	jmp	.LBB20_8
.LBB20_7:                               # %if.else
	movl	$2, %edx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	(%rax), %rsi
	callq	gimp_context_copy_property
.LBB20_8:                               # %if.end.130
	jmp	.LBB20_9
.LBB20_9:                               # %if.end.131
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_dock_window_factory_display_changed, %rax
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.20, %rsi
	movabsq	$gimp_dock_window_factory_image_changed, %rcx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_settings
	movl	$2, %esi
	leaq	-60(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_icon_size_lookup_for_settings
	movabsq	$.L.str.30, %rsi
	movabsq	$.L.str.13, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-16(%rbp), %rdx
	movq	248(%rdx), %rdx
	movq	88(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	248(%rdi), %rdi
	movq	64(%rdi), %rdi
	movq	-16(%rbp), %r10
	movq	248(%r10), %r10
	movq	(%r10), %r8
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movl	%eax, -372(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	g_object_set
	movq	-16(%rbp), %rcx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_standard_help_func, %rsi
	movabsq	$.L.str.31, %rdx
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movq	%rax, %rdi
	callq	gimp_help_connect
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	cmpl	$0, 84(%rax)
	je	.LBB20_14
# BB#10:                                # %if.then.149
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_display
	cmpq	$0, %rax
	je	.LBB20_12
# BB#11:                                # %if.then.152
	movl	$3, %edx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	(%rax), %rsi
	callq	gimp_context_copy_property
	jmp	.LBB20_13
.LBB20_12:                              # %if.else.155
	movl	$2, %edx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	(%rax), %rsi
	callq	gimp_context_copy_property
.LBB20_13:                              # %if.end.158
	jmp	.LBB20_14
.LBB20_14:                              # %if.end.159
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_dock_window_constructed, .Lfunc_end20-gimp_dock_window_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_dispose,@function
gimp_dock_window_dispose:               # @gimp_dock_window_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	cmpl	$0, 52(%rax)
	je	.LBB21_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movl	52(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movq	248(%rcx), %rcx
	movl	$0, 52(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB21_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	cmpl	$0, 32(%rax)
	je	.LBB21_4
# BB#3:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movl	32(%rax), %esi
	callq	gimp_container_remove_handler
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movl	$0, 32(%rax)
.LBB21_4:                               # %if.end.15
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB21_6
# BB#5:                                 # %if.then.18
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	$0, 24(%rax)
.LBB21_6:                               # %if.end.23
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB21_8
# BB#7:                                 # %if.then.26
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	$0, 8(%rax)
.LBB21_8:                               # %if.end.31
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB21_10
# BB#9:                                 # %if.then.35
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	$0, (%rax)
.LBB21_10:                              # %if.end.40
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_dock_window_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_dock_window_dispose, .Lfunc_end21-gimp_dock_window_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_finalize,@function
gimp_dock_window_finalize:              # @gimp_dock_window_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	$0, 16(%rax)
.LBB22_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_dock_window_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_dock_window_finalize, .Lfunc_end22-gimp_dock_window_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_set_property,@function
gimp_dock_window_set_property:          # @gimp_dock_window_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB23_7
# BB#11:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI23_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB23_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	248(%rdi), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB23_10
.LBB23_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	248(%rdi), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB23_10
.LBB23_3:                               # %sw.bb.6
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	248(%rdi), %rdi
	movq	%rax, 16(%rdi)
	jmp	.LBB23_10
.LBB23_4:                               # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	248(%rdi), %rdi
	movq	%rax, 64(%rdi)
	jmp	.LBB23_10
.LBB23_5:                               # %sw.bb.14
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	248(%rdi), %rdi
	movq	%rax, 72(%rdi)
	jmp	.LBB23_10
.LBB23_6:                               # %sw.bb.17
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movq	248(%rdi), %rdi
	movl	%eax, 48(%rdi)
	jmp	.LBB23_10
.LBB23_7:                               # %sw.default
	jmp	.LBB23_8
.LBB23_8:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.33, %rdi
	movabsq	$.L.str.34, %rsi
	movl	$564, %edx              # imm = 0x234
	movabsq	$.L.str.35, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB23_10
.LBB23_10:                              # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_dock_window_set_property, .Lfunc_end23-gimp_dock_window_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI23_0:
	.quad	.LBB23_1
	.quad	.LBB23_2
	.quad	.LBB23_3
	.quad	.LBB23_4
	.quad	.LBB23_5
	.quad	.LBB23_6

	.text
	.align	16, 0x90
	.type	gimp_dock_window_get_property,@function
gimp_dock_window_get_property:          # @gimp_dock_window_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB24_7
# BB#11:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI24_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB24_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB24_10
.LBB24_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB24_10
.LBB24_3:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	16(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB24_10
.LBB24_4:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB24_10
.LBB24_5:                               # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB24_10
.LBB24_6:                               # %sw.bb.10
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	48(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB24_10
.LBB24_7:                               # %sw.default
	jmp	.LBB24_8
.LBB24_8:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.33, %rdi
	movabsq	$.L.str.34, %rsi
	movl	$604, %edx              # imm = 0x25C
	movabsq	$.L.str.35, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB24_10
.LBB24_10:                              # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_dock_window_get_property, .Lfunc_end24-gimp_dock_window_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI24_0:
	.quad	.LBB24_1
	.quad	.LBB24_2
	.quad	.LBB24_3
	.quad	.LBB24_4
	.quad	.LBB24_5
	.quad	.LBB24_6

	.text
	.align	16, 0x90
	.type	gimp_dock_window_style_set,@function
gimp_dock_window_style_set:             # @gimp_dock_window_style_set
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movl	$18, -52(%rbp)
	movl	$18, -56(%rbp)
	movl	$300, -72(%rbp)         # imm = 0x12C
	movq	gimp_dock_window_parent_class, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movabsq	$.L.str.16, %rsi
	leaq	-72(%rbp), %rdx
	movabsq	$.L.str.17, %rcx
	leaq	-36(%rbp), %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
	movq	-8(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	-72(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_window_set_default_size
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	88(%rax), %rdi
	callq	gtk_widget_get_settings
	leaq	-52(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gtk_icon_size_lookup_for_settings
	movabsq	$.L.str.36, %rsi
	leaq	-60(%rbp), %rdx
	movabsq	$.L.str.37, %rcx
	leaq	-64(%rbp), %r8
	xorl	%r10d, %r10d
	movl	%r10d, %r9d
	movq	-24(%rbp), %rdi
	movq	248(%rdi), %rdi
	movq	96(%rdi), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_widget_style_get
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	540(%rax), %r10d
	movl	%r10d, -68(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	-56(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_container_view_set_view_size
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	96(%rax), %rdi
	movl	-56(%rbp), %edx
	movl	-68(%rbp), %r10d
	addl	$1, %r10d
	addl	-64(%rbp), %r10d
	addl	-60(%rbp), %r10d
	shll	$1, %r10d
	addl	%r10d, %edx
	callq	gtk_widget_set_size_request
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_dock_window_style_set, .Lfunc_end25-gimp_dock_window_style_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_delete_event,@function
gimp_dock_window_delete_event:          # @gimp_dock_window_delete_event
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_dock_window_should_add_to_recent
	cmpl	$0, %eax
	jne	.LBB26_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB26_3
.LBB26_2:                               # %if.end
	callq	gimp_session_info_new
	movl	$1, %esi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_dock_window_get_description
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_session_info_get_info_with_widget
	movq	-32(%rbp), %rdi
	callq	gimp_dock_window_has_toolbox
	movabsq	$.L.str.39, %rsi
	movabsq	$.L.str.38, %rdi
	cmpl	$0, %eax
	cmovneq	%rdi, %rsi
	movq	%rsi, -48(%rbp)
	callq	gimp_dialog_factory_get_singleton
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_factory_find_entry
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_session_info_set_factory_entry
	movq	global_recent_docks, %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movq	-40(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	g_object_unref
	movl	$0, -4(%rbp)
.LBB26_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_dock_window_delete_event, .Lfunc_end26-gimp_dock_window_delete_event
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_display_changed,@function
gimp_dock_window_display_changed:       # @gimp_dock_window_display_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB27_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	cmpl	$0, 84(%rax)
	je	.LBB27_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rdi
	callq	gimp_dialog_factory_get_context
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_context_set_display
.LBB27_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_dock_window_display_changed, .Lfunc_end27-gimp_dock_window_display_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_image_changed,@function
gimp_dock_window_image_changed:         # @gimp_dock_window_image_changed
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	248(%rdx), %rdx
	movq	64(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	248(%rdx), %rdx
	movq	72(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB28_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	cmpl	$0, 84(%rax)
	je	.LBB28_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rdi
	callq	gimp_dialog_factory_get_context
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_set_image
.LBB28_3:                               # %if.end
	cmpq	$0, -16(%rbp)
	jne	.LBB28_6
# BB#4:                                 # %land.lhs.true.7
	movq	-32(%rbp), %rdi
	callq	gimp_container_is_empty
	cmpl	$0, %eax
	jne	.LBB28_6
# BB#5:                                 # %if.then.10
	movq	-32(%rbp), %rdi
	callq	gimp_container_get_first_child
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_set_image
	movabsq	$.L.str.20, %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_signal_stop_emission_by_name
	jmp	.LBB28_29
.LBB28_6:                               # %if.else
	cmpq	$0, -16(%rbp)
	je	.LBB28_28
# BB#7:                                 # %land.lhs.true.15
	movq	-40(%rbp), %rdi
	callq	gimp_container_is_empty
	cmpl	$0, %eax
	jne	.LBB28_28
# BB#8:                                 # %if.then.18
	movl	$1, -68(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_display
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB28_14
# BB#9:                                 # %if.then.21
	movabsq	$.L.str.32, %rsi
	leaq	-64(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	cmpq	$0, -64(%rbp)
	je	.LBB28_13
# BB#10:                                # %if.then.23
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB28_12
# BB#11:                                # %if.then.25
	movl	$0, -68(%rbp)
.LBB28_12:                              # %if.end.26
	jmp	.LBB28_13
.LBB28_13:                              # %if.end.27
	jmp	.LBB28_14
.LBB28_14:                              # %if.end.28
	cmpl	$0, -68(%rbp)
	je	.LBB28_27
# BB#15:                                # %if.then.30
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB28_16:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB28_26
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB28_16 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rsi
	leaq	-64(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	cmpq	$0, -64(%rbp)
	je	.LBB28_21
# BB#18:                                # %if.then.38
                                        #   in Loop: Header=BB28_16 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB28_20
# BB#19:                                # %if.then.40
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_context_set_display
	jmp	.LBB28_26
.LBB28_20:                              # %if.end.41
                                        #   in Loop: Header=BB28_16 Depth=1
	jmp	.LBB28_21
.LBB28_21:                              # %if.end.42
                                        #   in Loop: Header=BB28_16 Depth=1
	jmp	.LBB28_22
.LBB28_22:                              # %for.inc
                                        #   in Loop: Header=BB28_16 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB28_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB28_16 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB28_25
.LBB28_24:                              # %cond.false
                                        #   in Loop: Header=BB28_16 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB28_25
.LBB28_25:                              # %cond.end
                                        #   in Loop: Header=BB28_16 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	jmp	.LBB28_16
.LBB28_26:                              # %for.end
	jmp	.LBB28_27
.LBB28_27:                              # %if.end.44
	jmp	.LBB28_28
.LBB28_28:                              # %if.end.45
	jmp	.LBB28_29
.LBB28_29:                              # %if.end.46
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	24(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_display
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_dock_window_image_changed, .Lfunc_end28-gimp_dock_window_image_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_image_flush,@function
gimp_dock_window_image_flush:           # @gimp_dock_window_image_flush
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	248(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_context_get_image
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB29_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	(%rax), %rdi
	callq	gimp_context_get_display
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB29_3
# BB#2:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	24(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
.LBB29_3:                               # %if.end
	jmp	.LBB29_4
.LBB29_4:                               # %if.end.6
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_dock_window_image_flush, .Lfunc_end29-gimp_dock_window_image_flush
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_auto_clicked,@function
gimp_dock_window_auto_clicked:          # @gimp_dock_window_auto_clicked
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	addq	$84, %rax
	movq	%rax, %rsi
	callq	gimp_toggle_button_update
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	cmpl	$0, 84(%rax)
	je	.LBB30_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rdi
	callq	gimp_dialog_factory_get_context
	movl	$12, %edx
	movq	-24(%rbp), %rdi
	movq	248(%rdi), %rdi
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	callq	gimp_context_copy_properties
.LBB30_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_dock_window_auto_clicked, .Lfunc_end30-gimp_dock_window_auto_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_dock_removed,@function
gimp_dock_window_dock_removed:          # @gimp_dock_window_dock_removed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB31_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB31_8
.LBB31_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB31_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB31_7
.LBB31_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB31_7:                               # %if.end
	jmp	.LBB31_8
.LBB31_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB31_10
# BB#9:                                 # %if.then.8
	jmp	.LBB31_11
.LBB31_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_dock_removed, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB31_15
.LBB31_11:                              # %if.end.10
	jmp	.LBB31_12
.LBB31_12:                              # %do.end
	movq	-24(%rbp), %rdi
	callq	gimp_dock_columns_get_docks
	cmpq	$0, %rax
	jne	.LBB31_15
# BB#13:                                # %land.lhs.true.13
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB31_15
# BB#14:                                # %if.then.15
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
.LBB31_15:                              # %if.end.18
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_dock_window_dock_removed, .Lfunc_end31-gimp_dock_window_dock_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_factory_display_changed,@function
gimp_dock_window_factory_display_changed: # @gimp_dock_window_factory_display_changed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB32_3
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	248(%rax), %rax
	cmpl	$0, 84(%rax)
	je	.LBB32_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	248(%rax), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_context_set_display
.LBB32_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_dock_window_factory_display_changed, .Lfunc_end32-gimp_dock_window_factory_display_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_factory_image_changed,@function
gimp_dock_window_factory_image_changed: # @gimp_dock_window_factory_image_changed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB33_3
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	248(%rax), %rax
	cmpl	$0, 84(%rax)
	je	.LBB33_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	248(%rax), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_set_image
.LBB33_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_dock_window_factory_image_changed, .Lfunc_end33-gimp_dock_window_factory_image_changed
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB34_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB34_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	movl	$.L.str.2, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end34:
	.size	g_warning, .Lfunc_end34-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_should_add_to_recent,@function
gimp_dock_window_should_add_to_recent:  # @gimp_dock_window_should_add_to_recent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	$1, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_dock_container_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dock_container_get_docks
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB35_2
# BB#1:                                 # %if.then
	movl	$0, -20(%rbp)
	jmp	.LBB35_26
.LBB35_2:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	g_list_length
	cmpl	$1, %eax
	jne	.LBB35_25
# BB#3:                                 # %if.then.4
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	g_list_nth_data
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_toolbox_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB35_5
# BB#4:                                 # %if.then.10
	movl	$0, -52(%rbp)
	jmp	.LBB35_10
.LBB35_5:                               # %if.else.11
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB35_8
# BB#6:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB35_8
# BB#7:                                 # %if.then.15
	movl	$1, -52(%rbp)
	jmp	.LBB35_9
.LBB35_8:                               # %if.else.16
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB35_9:                               # %if.end
	jmp	.LBB35_10
.LBB35_10:                              # %if.end.18
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB35_13
# BB#11:                                # %land.lhs.true.20
	movq	-32(%rbp), %rdi
	callq	gimp_dock_get_n_dockables
	cmpl	$0, %eax
	jne	.LBB35_13
# BB#12:                                # %if.then.23
	movl	$0, -20(%rbp)
	jmp	.LBB35_24
.LBB35_13:                              # %if.else.24
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_toolbox_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB35_15
# BB#14:                                # %if.then.33
	movl	$0, -76(%rbp)
	jmp	.LBB35_20
.LBB35_15:                              # %if.else.34
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB35_18
# BB#16:                                # %land.lhs.true.37
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB35_18
# BB#17:                                # %if.then.41
	movl	$1, -76(%rbp)
	jmp	.LBB35_19
.LBB35_18:                              # %if.else.42
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB35_19:                              # %if.end.44
	jmp	.LBB35_20
.LBB35_20:                              # %if.end.45
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	jne	.LBB35_23
# BB#21:                                # %land.lhs.true.48
	movq	-32(%rbp), %rdi
	callq	gimp_dock_get_n_dockables
	cmpl	$1, %eax
	jne	.LBB35_23
# BB#22:                                # %if.then.51
	movl	$0, -20(%rbp)
.LBB35_23:                              # %if.end.52
	jmp	.LBB35_24
.LBB35_24:                              # %if.end.53
	jmp	.LBB35_25
.LBB35_25:                              # %if.end.54
	jmp	.LBB35_26
.LBB35_26:                              # %if.end.55
	movq	-16(%rbp), %rdi
	callq	g_list_free
	movl	-20(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_dock_window_should_add_to_recent, .Lfunc_end35-gimp_dock_window_should_add_to_recent
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_get_description,@function
gimp_dock_window_get_description:       # @gimp_dock_window_get_description
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rcx, %rdi
	callq	g_string_new
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_dock_container_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dock_container_get_docks
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB36_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB36_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_dock_get_description
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_string_append
	movq	-48(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_free
	cmpq	$0, -40(%rbp)
	je	.LBB36_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB36_5
	jmp	.LBB36_6
.LBB36_4:                               # %cond.false
                                        #   in Loop: Header=BB36_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB36_5
	jmp	.LBB36_6
.LBB36_5:                               # %if.then
                                        #   in Loop: Header=BB36_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.40, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_string_append
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB36_6:                               # %if.end
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_7
.LBB36_7:                               # %for.inc
                                        #   in Loop: Header=BB36_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB36_9
# BB#8:                                 # %cond.true.13
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB36_10
.LBB36_9:                               # %cond.false.15
                                        #   in Loop: Header=BB36_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB36_10
.LBB36_10:                              # %cond.end
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB36_1
.LBB36_11:                              # %for.end
	movq	-32(%rbp), %rdi
	callq	g_list_free
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	g_string_free
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_dock_window_get_description, .Lfunc_end36-gimp_dock_window_get_description
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_get_docks,@function
gimp_dock_window_get_docks:             # @gimp_dock_window_get_docks
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB37_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB37_8
.LBB37_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB37_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB37_7
.LBB37_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB37_7:                               # %if.end
	jmp	.LBB37_8
.LBB37_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB37_10
# BB#9:                                 # %if.then.8
	jmp	.LBB37_11
.LBB37_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_get_docks, %rsi
	movabsq	$.L.str.42, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB37_13
.LBB37_11:                              # %if.end.10
	jmp	.LBB37_12
.LBB37_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	40(%rax), %rdi
	callq	gimp_dock_columns_get_docks
	movq	%rax, %rdi
	callq	g_list_copy
	movq	%rax, -8(%rbp)
.LBB37_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_dock_window_get_docks, .Lfunc_end37-gimp_dock_window_get_docks
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_get_ui_manager,@function
gimp_dock_window_get_ui_manager:        # @gimp_dock_window_get_ui_manager
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB38_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB38_8
.LBB38_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB38_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB38_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB38_7
.LBB38_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB38_7:                               # %if.end
	jmp	.LBB38_8
.LBB38_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB38_10
# BB#9:                                 # %if.then.8
	jmp	.LBB38_11
.LBB38_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_get_ui_manager, %rsi
	movabsq	$.L.str.42, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB38_13
.LBB38_11:                              # %if.end.10
	jmp	.LBB38_12
.LBB38_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB38_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_dock_window_get_ui_manager, .Lfunc_end38-gimp_dock_window_get_ui_manager
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_add_dock_from_session,@function
gimp_dock_window_add_dock_from_session: # @gimp_dock_window_add_dock_from_session
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB39_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB39_8
.LBB39_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB39_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB39_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB39_7
.LBB39_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB39_7:                               # %if.end
	jmp	.LBB39_8
.LBB39_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB39_10
# BB#9:                                 # %if.then.8
	jmp	.LBB39_11
.LBB39_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_add_dock_from_session, %rsi
	movabsq	$.L.str.42, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB39_13
.LBB39_11:                              # %if.end.10
	jmp	.LBB39_12
.LBB39_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_dock_window_add_dock
.LBB39_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_dock_window_add_dock_from_session, .Lfunc_end39-gimp_dock_window_add_dock_from_session
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_get_dock_side,@function
gimp_dock_window_get_dock_side:         # @gimp_dock_window_get_dock_side
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB40_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB40_8
.LBB40_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB40_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB40_7
.LBB40_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB40_7:                               # %if.end
	jmp	.LBB40_8
.LBB40_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB40_10
# BB#9:                                 # %if.then.8
	jmp	.LBB40_11
.LBB40_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_get_dock_side, %rsi
	movabsq	$.L.str.42, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB40_25
.LBB40_11:                              # %if.end.10
	jmp	.LBB40_12
.LBB40_12:                              # %do.end
	jmp	.LBB40_13
.LBB40_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB40_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB40_20
.LBB40_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB40_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB40_19
.LBB40_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB40_19:                              # %if.end.31
	jmp	.LBB40_20
.LBB40_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB40_22
# BB#21:                                # %if.then.35
	jmp	.LBB40_23
.LBB40_22:                              # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_get_dock_side, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB40_25
.LBB40_23:                              # %if.end.37
	jmp	.LBB40_24
.LBB40_24:                              # %do.end.38
	movl	$-1, -4(%rbp)
.LBB40_25:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_dock_window_get_dock_side, .Lfunc_end40-gimp_dock_window_get_dock_side
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_get_aux_info,@function
gimp_dock_window_get_aux_info:          # @gimp_dock_window_get_aux_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB41_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB41_8
.LBB41_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB41_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB41_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB41_7
.LBB41_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB41_7:                               # %if.end
	jmp	.LBB41_8
.LBB41_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB41_10
# BB#9:                                 # %if.then.8
	jmp	.LBB41_11
.LBB41_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_get_aux_info, %rsi
	movabsq	$.L.str.43, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB41_27
.LBB41_11:                              # %if.end.10
	jmp	.LBB41_12
.LBB41_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	cmpl	$0, 48(%rax)
	je	.LBB41_14
# BB#13:                                # %if.then.14
	movq	$0, -8(%rbp)
	jmp	.LBB41_27
.LBB41_14:                              # %if.end.15
	jmp	.LBB41_15
.LBB41_15:                              # %do.body.16
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB41_17
# BB#16:                                # %if.then.25
	movl	$0, -84(%rbp)
	jmp	.LBB41_22
.LBB41_17:                              # %if.else.26
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB41_20
# BB#18:                                # %land.lhs.true.29
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB41_20
# BB#19:                                # %if.then.33
	movl	$1, -84(%rbp)
	jmp	.LBB41_21
.LBB41_20:                              # %if.else.34
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB41_21:                              # %if.end.36
	jmp	.LBB41_22
.LBB41_22:                              # %if.end.37
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB41_24
# BB#23:                                # %if.then.40
	jmp	.LBB41_25
.LBB41_24:                              # %if.else.41
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_get_aux_info, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB41_27
.LBB41_25:                              # %if.end.42
	jmp	.LBB41_26
.LBB41_26:                              # %do.end.43
	movabsq	$.L.str.44, %rdi
	movabsq	$.L.str.46, %rax
	movabsq	$.L.str.45, %rcx
	movq	-24(%rbp), %rdx
	movq	248(%rdx), %rdx
	cmpl	$0, 80(%rdx)
	cmovneq	%rcx, %rax
	movq	%rax, %rsi
	callq	gimp_session_info_aux_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movabsq	$.L.str.47, %rdi
	movabsq	$.L.str.46, %rcx
	movabsq	$.L.str.45, %rdx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	cmpl	$0, 84(%rax)
	cmovneq	%rdx, %rcx
	movq	%rcx, %rsi
	callq	gimp_session_info_aux_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB41_27:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_dock_window_get_aux_info, .Lfunc_end41-gimp_dock_window_get_aux_info
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_set_aux_info,@function
gimp_dock_window_set_aux_info:          # @gimp_dock_window_set_aux_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB42_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB42_8
.LBB42_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB42_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB42_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB42_7
.LBB42_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB42_7:                               # %if.end
	jmp	.LBB42_8
.LBB42_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB42_10
# BB#9:                                 # %if.then.8
	jmp	.LBB42_11
.LBB42_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_dock_window_set_aux_info, %rsi
	movabsq	$.L.str.43, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB42_28
.LBB42_11:                              # %if.end.10
	jmp	.LBB42_12
.LBB42_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movl	80(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movl	84(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB42_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB42_24
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB42_13 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.44, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB42_16
# BB#15:                                # %if.then.18
                                        #   in Loop: Header=BB42_13 Depth=1
	movabsq	$.L.str.45, %rsi
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB42_19
.LBB42_16:                              # %if.else.21
                                        #   in Loop: Header=BB42_13 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.47, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB42_18
# BB#17:                                # %if.then.25
                                        #   in Loop: Header=BB42_13 Depth=1
	movabsq	$.L.str.45, %rsi
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -40(%rbp)
.LBB42_18:                              # %if.end.31
                                        #   in Loop: Header=BB42_13 Depth=1
	jmp	.LBB42_19
.LBB42_19:                              # %if.end.32
                                        #   in Loop: Header=BB42_13 Depth=1
	jmp	.LBB42_20
.LBB42_20:                              # %for.inc
                                        #   in Loop: Header=BB42_13 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB42_22
# BB#21:                                # %cond.true
                                        #   in Loop: Header=BB42_13 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB42_23
.LBB42_22:                              # %cond.false
                                        #   in Loop: Header=BB42_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB42_23
.LBB42_23:                              # %cond.end
                                        #   in Loop: Header=BB42_13 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB42_13
.LBB42_24:                              # %for.end
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	248(%rcx), %rcx
	cmpl	80(%rcx), %eax
	je	.LBB42_26
# BB#25:                                # %if.then.37
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_dock_window_set_show_image_menu
.LBB42_26:                              # %if.end.38
	movl	-40(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	248(%rcx), %rcx
	cmpl	84(%rcx), %eax
	je	.LBB42_28
# BB#27:                                # %if.then.42
	movq	-24(%rbp), %rdi
	movl	-40(%rbp), %esi
	callq	gimp_dock_window_set_auto_follow_active
.LBB42_28:                              # %if.end.43
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_dock_window_set_aux_info, .Lfunc_end42-gimp_dock_window_set_aux_info
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dock_window_update_title_idle,@function
gimp_dock_window_update_title_idle:     # @gimp_dock_window_update_title_idle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_dock_window_get_description
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB43_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_title
	movq	-16(%rbp), %rdi
	callq	g_free
.LBB43_2:                               # %if.end
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	248(%rcx), %rcx
	movl	$0, 52(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_dock_window_update_title_idle, .Lfunc_end43-gimp_dock_window_update_title_idle
	.cfi_endproc

	.type	gimp_dock_window_get_type.g_define_type_id__volatile,@object # @gimp_dock_window_get_type.g_define_type_id__volatile
	.local	gimp_dock_window_get_type.g_define_type_id__volatile
	.comm	gimp_dock_window_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDockWindow"
	.size	.L.str, 15

	.type	gimp_dock_window_get_type.g_implement_interface_info,@object # @gimp_dock_window_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_dock_window_get_type.g_implement_interface_info:
	.quad	gimp_dock_window_dock_container_iface_init
	.quad	0
	.quad	0
	.size	gimp_dock_window_get_type.g_implement_interface_info, 24

	.type	gimp_dock_window_get_type.g_implement_interface_info.1,@object # @gimp_dock_window_get_type.g_implement_interface_info.1
	.align	8
gimp_dock_window_get_type.g_implement_interface_info.1:
	.quad	gimp_dock_window_session_managed_iface_init
	.quad	0
	.quad	0
	.size	gimp_dock_window_get_type.g_implement_interface_info.1, 24

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Gimp-Widgets"
	.size	.L.str.2, 13

	.type	.L__func__.gimp_dock_window_add_dock,@object # @__func__.gimp_dock_window_add_dock
.L__func__.gimp_dock_window_add_dock:
	.asciz	"gimp_dock_window_add_dock"
	.size	.L__func__.gimp_dock_window_add_dock, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_DOCK_WINDOW (dock_window)"
	.size	.L.str.3, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_DOCK (dock)"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"description-invalidated"
	.size	.L.str.5, 24

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"geometry-invalidated"
	.size	.L.str.6, 21

	.type	.L__func__.gimp_dock_window_new,@object # @__func__.gimp_dock_window_new
.L__func__.gimp_dock_window_new:
	.asciz	"gimp_dock_window_new"
	.size	.L__func__.gimp_dock_window_new, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_DIALOG_FACTORY (factory)"
	.size	.L.str.7, 33

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.8, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"role"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"ui-manager-name"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"allow-dockbook-absence"
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"dialog-factory"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"context"
	.size	.L.str.13, 8

	.type	.L__func__.gimp_dock_window_get_id,@object # @__func__.gimp_dock_window_get_id
.L__func__.gimp_dock_window_get_id:
	.asciz	"gimp_dock_window_get_id"
	.size	.L__func__.gimp_dock_window_get_id, 24

	.type	.L__func__.gimp_dock_window_get_context,@object # @__func__.gimp_dock_window_get_context
.L__func__.gimp_dock_window_get_context:
	.asciz	"gimp_dock_window_get_context"
	.size	.L__func__.gimp_dock_window_get_context, 29

	.type	.L__func__.gimp_dock_window_get_dialog_factory,@object # @__func__.gimp_dock_window_get_dialog_factory
.L__func__.gimp_dock_window_get_dialog_factory:
	.asciz	"gimp_dock_window_get_dialog_factory"
	.size	.L__func__.gimp_dock_window_get_dialog_factory, 36

	.type	.L__func__.gimp_dock_window_get_auto_follow_active,@object # @__func__.gimp_dock_window_get_auto_follow_active
.L__func__.gimp_dock_window_get_auto_follow_active:
	.asciz	"gimp_dock_window_get_auto_follow_active"
	.size	.L__func__.gimp_dock_window_get_auto_follow_active, 40

	.type	.L__func__.gimp_dock_window_set_auto_follow_active,@object # @__func__.gimp_dock_window_set_auto_follow_active
.L__func__.gimp_dock_window_set_auto_follow_active:
	.asciz	"gimp_dock_window_set_auto_follow_active"
	.size	.L__func__.gimp_dock_window_set_auto_follow_active, 40

	.type	.L__func__.gimp_dock_window_get_show_image_menu,@object # @__func__.gimp_dock_window_get_show_image_menu
.L__func__.gimp_dock_window_get_show_image_menu:
	.asciz	"gimp_dock_window_get_show_image_menu"
	.size	.L__func__.gimp_dock_window_get_show_image_menu, 37

	.type	.L__func__.gimp_dock_window_set_show_image_menu,@object # @__func__.gimp_dock_window_set_show_image_menu
.L__func__.gimp_dock_window_set_show_image_menu:
	.asciz	"gimp_dock_window_set_show_image_menu"
	.size	.L__func__.gimp_dock_window_set_show_image_menu, 37

	.type	.L__func__.gimp_dock_window_has_toolbox,@object # @__func__.gimp_dock_window_has_toolbox
.L__func__.gimp_dock_window_has_toolbox:
	.asciz	"gimp_dock_window_has_toolbox"
	.size	.L__func__.gimp_dock_window_has_toolbox, 29

	.type	.L__func__.gimp_dock_window_from_dock,@object # @__func__.gimp_dock_window_from_dock
.L__func__.gimp_dock_window_from_dock:
	.asciz	"gimp_dock_window_from_dock"
	.size	.L__func__.gimp_dock_window_from_dock, 27

	.type	gimp_dock_window_parent_class,@object # @gimp_dock_window_parent_class
	.local	gimp_dock_window_parent_class
	.comm	gimp_dock_window_parent_class,8,8
	.type	GimpDockWindow_private_offset,@object # @GimpDockWindow_private_offset
	.local	GimpDockWindow_private_offset
	.comm	GimpDockWindow_private_offset,4,4
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"image-container"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"display-container"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"default-height"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"menu-preview-size"
	.size	.L.str.17, 18

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Dock Context"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"display-changed"
	.size	.L.str.19, 16

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"image-changed"
	.size	.L.str.20, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"flush"
	.size	.L.str.21, 6

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"destroy"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-dock-image-menu"
	.size	.L.str.23, 21

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Auto"
	.size	.L.str.24, 5

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"clicked"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"When enabled the dialog automatically follows the image you are working on."
	.size	.L.str.26, 76

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-dock-auto-button"
	.size	.L.str.27, 22

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"dock-removed"
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"dock-added"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"container"
	.size	.L.str.30, 10

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-dock"
	.size	.L.str.31, 10

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"image"
	.size	.L.str.32, 6

	.type	.L__func__.gimp_dock_window_dock_removed,@object # @__func__.gimp_dock_window_dock_removed
.L__func__.gimp_dock_window_dock_removed:
	.asciz	"gimp_dock_window_dock_removed"
	.size	.L__func__.gimp_dock_window_dock_removed, 30

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.33, 54

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimpdockwindow.c"
	.size	.L.str.34, 17

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"property"
	.size	.L.str.35, 9

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"focus-line-width"
	.size	.L.str.36, 17

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"focus-padding"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-toolbox-window"
	.size	.L.str.38, 20

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp-dock-window"
	.size	.L.str.39, 17

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"dock\004 | "
	.size	.L.str.40, 9

	.type	gimp_dock_window_init.dock_window_ID,@object # @gimp_dock_window_init.dock_window_ID
	.data
	.align	4
gimp_dock_window_init.dock_window_ID:
	.long	1                       # 0x1
	.size	gimp_dock_window_init.dock_window_ID, 4

	.type	.L.str.41,@object       # @.str.41
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.41:
	.asciz	"gimp-dock-%d"
	.size	.L.str.41, 13

	.type	.L__func__.gimp_dock_window_get_docks,@object # @__func__.gimp_dock_window_get_docks
.L__func__.gimp_dock_window_get_docks:
	.asciz	"gimp_dock_window_get_docks"
	.size	.L__func__.gimp_dock_window_get_docks, 27

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"GIMP_IS_DOCK_WINDOW (dock_container)"
	.size	.L.str.42, 37

	.type	.L__func__.gimp_dock_window_get_ui_manager,@object # @__func__.gimp_dock_window_get_ui_manager
.L__func__.gimp_dock_window_get_ui_manager:
	.asciz	"gimp_dock_window_get_ui_manager"
	.size	.L__func__.gimp_dock_window_get_ui_manager, 32

	.type	.L__func__.gimp_dock_window_add_dock_from_session,@object # @__func__.gimp_dock_window_add_dock_from_session
.L__func__.gimp_dock_window_add_dock_from_session:
	.asciz	"gimp_dock_window_add_dock_from_session"
	.size	.L__func__.gimp_dock_window_add_dock_from_session, 39

	.type	.L__func__.gimp_dock_window_get_dock_side,@object # @__func__.gimp_dock_window_get_dock_side
.L__func__.gimp_dock_window_get_dock_side:
	.asciz	"gimp_dock_window_get_dock_side"
	.size	.L__func__.gimp_dock_window_get_dock_side, 31

	.type	.L__func__.gimp_dock_window_get_aux_info,@object # @__func__.gimp_dock_window_get_aux_info
.L__func__.gimp_dock_window_get_aux_info:
	.asciz	"gimp_dock_window_get_aux_info"
	.size	.L__func__.gimp_dock_window_get_aux_info, 30

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"GIMP_IS_DOCK_WINDOW (session_managed)"
	.size	.L.str.43, 38

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"show-image-menu"
	.size	.L.str.44, 16

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"true"
	.size	.L.str.45, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"false"
	.size	.L.str.46, 6

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"follow-active-image"
	.size	.L.str.47, 20

	.type	.L__func__.gimp_dock_window_set_aux_info,@object # @__func__.gimp_dock_window_set_aux_info
.L__func__.gimp_dock_window_set_aux_info:
	.asciz	"gimp_dock_window_set_aux_info"
	.size	.L__func__.gimp_dock_window_set_aux_info, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
