	.text
	.file	"gimpimagewindow.bc"
	.globl	gimp_image_window_get_type
	.align	16, 0x90
	.type	gimp_image_window_get_type,@function
gimp_image_window_get_type:             # @gimp_image_window_get_type
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
	movq	gimp_image_window_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_image_window_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_image_window_class_intern_init, %rdi
	movl	$248, %r8d
	movabsq	$gimp_image_window_init, %rcx
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
	movabsq	$gimp_image_window_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_session_managed_interface_get_type
	movabsq	$gimp_image_window_get_type.g_implement_interface_info.1, %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_image_window_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_image_window_get_type.g_define_type_id__volatile, %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_window_get_type, .Lfunc_end0-gimp_image_window_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_class_intern_init,@function
gimp_image_window_class_intern_init:    # @gimp_image_window_class_intern_init
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
	movq	%rax, gimp_image_window_parent_class
	cmpl	$0, GimpImageWindow_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpImageWindow_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_image_window_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_window_class_intern_init, .Lfunc_end1-gimp_image_window_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_init,@function
gimp_image_window_init:                 # @gimp_image_window_init
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
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_role
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_window_init, .Lfunc_end2-gimp_image_window_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_dock_container_iface_init,@function
gimp_image_window_dock_container_iface_init: # @gimp_image_window_dock_container_iface_init
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
	movabsq	$gimp_image_window_get_dock_side, %rax
	movabsq	$gimp_image_window_add_dock, %rcx
	movabsq	$gimp_image_window_dock_container_get_ui_manager, %rdx
	movabsq	$gimp_image_window_get_docks, %rsi
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
	.size	gimp_image_window_dock_container_iface_init, .Lfunc_end3-gimp_image_window_dock_container_iface_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_session_managed_iface_init,@function
gimp_image_window_session_managed_iface_init: # @gimp_image_window_session_managed_iface_init
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
	movabsq	$gimp_image_window_set_aux_info, %rax
	movabsq	$gimp_image_window_get_aux_info, %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, 16(%rdi)
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_window_session_managed_iface_init, .Lfunc_end4-gimp_image_window_session_managed_iface_init
	.cfi_endproc

	.globl	gimp_image_window_new
	.align	16, 0x90
	.type	gimp_image_window_new,@function
gimp_image_window_new:                  # @gimp_image_window_new
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
	pushq	%r14
	pushq	%rbx
	subq	$192, %rsp
.Ltmp18:
	.cfi_offset %rbx, -32
.Ltmp19:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB5_50
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.20
	movl	$0, -108(%rbp)
	jmp	.LBB5_20
.LBB5_15:                               # %if.else.21
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_18
# BB#16:                                # %land.lhs.true.24
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.28
	movl	$1, -108(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.29
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB5_19:                               # %if.end.31
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.32
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	jne	.LBB5_22
# BB#21:                                # %lor.lhs.false
	cmpq	$0, -40(%rbp)
	jne	.LBB5_23
.LBB5_22:                               # %if.then.36
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.37
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB5_50
.LBB5_24:                               # %if.end.38
	jmp	.LBB5_25
.LBB5_25:                               # %do.end.39
	jmp	.LBB5_26
.LBB5_26:                               # %do.body.40
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB5_28
# BB#27:                                # %if.then.49
	movl	$0, -132(%rbp)
	jmp	.LBB5_33
.LBB5_28:                               # %if.else.50
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_31
# BB#29:                                # %land.lhs.true.53
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB5_31
# BB#30:                                # %if.then.57
	movl	$1, -132(%rbp)
	jmp	.LBB5_32
.LBB5_31:                               # %if.else.58
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB5_32:                               # %if.end.60
	jmp	.LBB5_33
.LBB5_33:                               # %if.end.61
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB5_35
# BB#34:                                # %if.then.64
	jmp	.LBB5_36
.LBB5_35:                               # %if.else.65
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB5_50
.LBB5_36:                               # %if.end.66
	jmp	.LBB5_37
.LBB5_37:                               # %do.end.67
	jmp	.LBB5_38
.LBB5_38:                               # %do.body.68
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB5_40
# BB#39:                                # %if.then.77
	movl	$0, -156(%rbp)
	jmp	.LBB5_45
.LBB5_40:                               # %if.else.78
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_43
# BB#41:                                # %land.lhs.true.81
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB5_43
# BB#42:                                # %if.then.85
	movl	$1, -156(%rbp)
	jmp	.LBB5_44
.LBB5_43:                               # %if.else.86
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB5_44:                               # %if.end.88
	jmp	.LBB5_45
.LBB5_45:                               # %if.end.89
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB5_47
# BB#46:                                # %if.then.92
	jmp	.LBB5_48
.LBB5_47:                               # %if.else.93
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB5_50
.LBB5_48:                               # %if.end.94
	jmp	.LBB5_49
.LBB5_49:                               # %do.end.95
	callq	gimp_image_window_get_type
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rcx
	movabsq	$.L.str.9, %r9
	movl	$1, %edx
	xorl	%edi, %edi
	movl	%edi, %r8d
	movabsq	$.L.str.10, %r10
	movq	-32(%rbp), %r11
	movq	-48(%rbp), %rbx
	movq	-56(%rbp), %r14
	cmpq	$0, -40(%rbp)
	cmovneq	%r8, %r10
	movq	%rax, %rdi
	movl	%edx, -164(%rbp)        # 4-byte Spill
	movq	%r11, %rdx
	movq	%rbx, %r8
	movq	%r14, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	432(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-32(%rbp), %rcx
	movq	%rax, 432(%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB5_50:                               # %return
	movq	-24(%rbp), %rax
	addq	$192, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_window_new, .Lfunc_end5-gimp_image_window_new
	.cfi_endproc

	.globl	gimp_image_window_destroy
	.align	16, 0x90
	.type	gimp_image_window_destroy,@function
gimp_image_window_destroy:              # @gimp_image_window_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_destroy, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	432(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, 432(%rsi)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
.LBB6_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_image_window_destroy, .Lfunc_end6-gimp_image_window_destroy
	.cfi_endproc

	.globl	gimp_image_window_get_ui_manager
	.align	16, 0x90
	.type	gimp_image_window_get_ui_manager,@function
gimp_image_window_get_ui_manager:       # @gimp_image_window_get_ui_manager
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_get_ui_manager, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB7_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_image_window_get_ui_manager, .Lfunc_end7-gimp_image_window_get_ui_manager
	.cfi_endproc

	.globl	gimp_image_window_get_left_docks
	.align	16, 0x90
	.type	gimp_image_window_get_left_docks,@function
gimp_image_window_get_left_docks:       # @gimp_image_window_get_left_docks
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_get_left_docks, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_dock_columns_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB8_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_image_window_get_left_docks, .Lfunc_end8-gimp_image_window_get_left_docks
	.cfi_endproc

	.globl	gimp_image_window_get_right_docks
	.align	16, 0x90
	.type	gimp_image_window_get_right_docks,@function
gimp_image_window_get_right_docks:      # @gimp_image_window_get_right_docks
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_get_right_docks, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_dock_columns_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB9_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_image_window_get_right_docks, .Lfunc_end9-gimp_image_window_get_right_docks
	.cfi_endproc

	.globl	gimp_image_window_add_shell
	.align	16, 0x90
	.type	gimp_image_window_add_shell,@function
gimp_image_window_add_shell:            # @gimp_image_window_add_shell
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_add_shell, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_30
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB10_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB10_20
.LBB10_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB10_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB10_19
.LBB10_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB10_19:                              # %if.end.31
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB10_22
# BB#21:                                # %if.then.35
	jmp	.LBB10_23
.LBB10_22:                              # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_add_shell, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_30
.LBB10_23:                              # %if.end.37
	jmp	.LBB10_24
.LBB10_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
# BB#25:                                # %do.body.41
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	jne	.LBB10_27
# BB#26:                                # %if.then.44
	jmp	.LBB10_28
.LBB10_27:                              # %if.else.45
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_add_shell, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_30
.LBB10_28:                              # %if.end.46
	jmp	.LBB10_29
.LBB10_29:                              # %do.end.47
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-24(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_image_window_create_tab_label
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_notebook_append_page
	movq	-16(%rbp), %rdx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
.LBB10_30:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_image_window_add_shell, .Lfunc_end10-gimp_image_window_add_shell
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_create_tab_label,@function
gimp_image_window_create_tab_label:     # @gimp_image_window_create_tab_label
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	xorl	%eax, %eax
	movl	$2, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_user_context
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movl	$48, %ecx
	xorl	%esi, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movl	-76(%rbp), %r8d         # 4-byte Reload
	movl	-76(%rbp), %r9d         # 4-byte Reload
	callq	gimp_view_new_by_types
	movl	$48, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_set_viewable
.LBB11_2:                               # %if.end
	callq	gtk_button_new
	xorl	%esi, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_set_can_focus
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_button_set_relief
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	-140(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.67, %rdi
	movl	$1, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.68, %rsi
	movabsq	$gimp_image_window_shell_close_button_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_image_window_create_tab_label, .Lfunc_end11-gimp_image_window_create_tab_label
	.cfi_endproc

	.globl	gimp_image_window_get_shell
	.align	16, 0x90
	.type	gimp_image_window_get_shell,@function
gimp_image_window_get_shell:            # @gimp_image_window_get_shell
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_get_shell, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	g_list_nth_data
	movq	%rax, -8(%rbp)
.LBB12_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_image_window_get_shell, .Lfunc_end12-gimp_image_window_get_shell
	.cfi_endproc

	.globl	gimp_image_window_remove_shell
	.align	16, 0x90
	.type	gimp_image_window_remove_shell,@function
gimp_image_window_remove_shell:         # @gimp_image_window_remove_shell
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_remove_shell, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_30
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB13_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB13_20
.LBB13_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB13_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB13_19
.LBB13_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB13_19:                              # %if.end.31
	jmp	.LBB13_20
.LBB13_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB13_22
# BB#21:                                # %if.then.35
	jmp	.LBB13_23
.LBB13_22:                              # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_remove_shell, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_30
.LBB13_23:                              # %if.end.37
	jmp	.LBB13_24
.LBB13_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
# BB#25:                                # %do.body.41
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB13_27
# BB#26:                                # %if.then.44
	jmp	.LBB13_28
.LBB13_27:                              # %if.else.45
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_remove_shell, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_30
.LBB13_28:                              # %if.end.46
	jmp	.LBB13_29
.LBB13_29:                              # %do.end.47
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-24(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_container_remove
.LBB13_30:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_image_window_remove_shell, .Lfunc_end13-gimp_image_window_remove_shell
	.cfi_endproc

	.globl	gimp_image_window_get_n_shells
	.align	16, 0x90
	.type	gimp_image_window_get_n_shells,@function
gimp_image_window_get_n_shells:         # @gimp_image_window_get_n_shells
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_get_n_shells, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB14_13
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_list_length
	movl	%eax, -4(%rbp)
.LBB14_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_image_window_get_n_shells, .Lfunc_end14-gimp_image_window_get_n_shells
	.cfi_endproc

	.globl	gimp_image_window_set_active_shell
	.align	16, 0x90
	.type	gimp_image_window_set_active_shell,@function
gimp_image_window_set_active_shell:     # @gimp_image_window_set_active_shell
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_set_active_shell, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_30
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB15_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB15_20
.LBB15_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB15_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB15_19
.LBB15_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB15_19:                              # %if.end.31
	jmp	.LBB15_20
.LBB15_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB15_22
# BB#21:                                # %if.then.35
	jmp	.LBB15_23
.LBB15_22:                              # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_set_active_shell, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_30
.LBB15_23:                              # %if.end.37
	jmp	.LBB15_24
.LBB15_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
# BB#25:                                # %do.body.41
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB15_27
# BB#26:                                # %if.then.44
	jmp	.LBB15_28
.LBB15_27:                              # %if.else.45
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_set_active_shell, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_30
.LBB15_28:                              # %if.end.46
	jmp	.LBB15_29
.LBB15_29:                              # %do.end.47
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_notebook_page_num
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_current_page
.LBB15_30:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_image_window_set_active_shell, .Lfunc_end15-gimp_image_window_set_active_shell
	.cfi_endproc

	.globl	gimp_image_window_get_active_shell
	.align	16, 0x90
	.type	gimp_image_window_get_active_shell,@function
gimp_image_window_get_active_shell:     # @gimp_image_window_get_active_shell
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_get_active_shell, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_13
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB16_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_image_window_get_active_shell, .Lfunc_end16-gimp_image_window_get_active_shell
	.cfi_endproc

	.globl	gimp_image_window_set_fullscreen
	.align	16, 0x90
	.type	gimp_image_window_set_fullscreen,@function
gimp_image_window_set_fullscreen:       # @gimp_image_window_set_fullscreen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_set_fullscreen, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_17
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_image_window_get_fullscreen
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB17_17
# BB#13:                                # %if.then.13
	cmpl	$0, -12(%rbp)
	je	.LBB17_15
# BB#14:                                # %if.then.15
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_fullscreen
	jmp	.LBB17_16
.LBB17_15:                              # %if.else.18
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_unfullscreen
.LBB17_16:                              # %if.end.21
	jmp	.LBB17_17
.LBB17_17:                              # %if.end.22
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_image_window_set_fullscreen, .Lfunc_end17-gimp_image_window_set_fullscreen
	.cfi_endproc

	.globl	gimp_image_window_get_fullscreen
	.align	16, 0x90
	.type	gimp_image_window_get_fullscreen,@function
gimp_image_window_get_fullscreen:       # @gimp_image_window_get_fullscreen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_window_get_type
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
	movabsq	$.L__func__.gimp_image_window_get_fullscreen, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_13
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	104(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -4(%rbp)
.LBB18_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_image_window_get_fullscreen, .Lfunc_end18-gimp_image_window_get_fullscreen
	.cfi_endproc

	.globl	gimp_image_window_set_show_menubar
	.align	16, 0x90
	.type	gimp_image_window_set_show_menubar,@function
gimp_image_window_set_show_menubar:     # @gimp_image_window_set_show_menubar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_set_show_menubar, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_14
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB19_14
# BB#13:                                # %if.then.14
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_visible
.LBB19_14:                              # %if.end.16
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_image_window_set_show_menubar, .Lfunc_end19-gimp_image_window_set_show_menubar
	.cfi_endproc

	.globl	gimp_image_window_get_show_menubar
	.align	16, 0x90
	.type	gimp_image_window_get_show_menubar,@function
gimp_image_window_get_show_menubar:     # @gimp_image_window_get_show_menubar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_get_show_menubar, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB20_15
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB20_14
# BB#13:                                # %if.then.14
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_get_visible
	movl	%eax, -4(%rbp)
	jmp	.LBB20_15
.LBB20_14:                              # %if.end.17
	movl	$0, -4(%rbp)
.LBB20_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_image_window_get_show_menubar, .Lfunc_end20-gimp_image_window_get_show_menubar
	.cfi_endproc

	.globl	gimp_image_window_is_iconified
	.align	16, 0x90
	.type	gimp_image_window_is_iconified,@function
gimp_image_window_is_iconified:         # @gimp_image_window_is_iconified
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_is_iconified, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB21_13
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	104(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -4(%rbp)
.LBB21_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_image_window_is_iconified, .Lfunc_end21-gimp_image_window_is_iconified
	.cfi_endproc

	.globl	gimp_image_window_is_maximized
	.align	16, 0x90
	.type	gimp_image_window_is_maximized,@function
gimp_image_window_is_maximized:         # @gimp_image_window_is_maximized
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_is_maximized, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB22_13
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	104(%rax), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -4(%rbp)
.LBB22_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_image_window_is_maximized, .Lfunc_end22-gimp_image_window_is_maximized
	.cfi_endproc

	.globl	gimp_image_window_has_toolbox
	.align	16, 0x90
	.type	gimp_image_window_has_toolbox,@function
gimp_image_window_has_toolbox:          # @gimp_image_window_has_toolbox
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_has_toolbox, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB23_45
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_dock_columns_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dock_columns_get_docks
	movq	%rax, -32(%rbp)
.LBB23_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB23_28
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB23_13 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_toolbox_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB23_16
# BB#15:                                # %if.then.25
                                        #   in Loop: Header=BB23_13 Depth=1
	movl	$0, -76(%rbp)
	jmp	.LBB23_21
.LBB23_16:                              # %if.else.26
                                        #   in Loop: Header=BB23_13 Depth=1
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_19
# BB#17:                                # %land.lhs.true.29
                                        #   in Loop: Header=BB23_13 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB23_19
# BB#18:                                # %if.then.33
                                        #   in Loop: Header=BB23_13 Depth=1
	movl	$1, -76(%rbp)
	jmp	.LBB23_20
.LBB23_19:                              # %if.else.34
                                        #   in Loop: Header=BB23_13 Depth=1
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB23_20:                              # %if.end.36
                                        #   in Loop: Header=BB23_13 Depth=1
	jmp	.LBB23_21
.LBB23_21:                              # %if.end.37
                                        #   in Loop: Header=BB23_13 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB23_23
# BB#22:                                # %if.then.40
	movl	$1, -4(%rbp)
	jmp	.LBB23_45
.LBB23_23:                              # %if.end.41
                                        #   in Loop: Header=BB23_13 Depth=1
	jmp	.LBB23_24
.LBB23_24:                              # %for.inc
                                        #   in Loop: Header=BB23_13 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB23_26
# BB#25:                                # %cond.true
                                        #   in Loop: Header=BB23_13 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB23_27
.LBB23_26:                              # %cond.false
                                        #   in Loop: Header=BB23_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB23_27
.LBB23_27:                              # %cond.end
                                        #   in Loop: Header=BB23_13 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB23_13
.LBB23_28:                              # %for.end
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_dock_columns_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dock_columns_get_docks
	movq	%rax, -32(%rbp)
.LBB23_29:                              # %for.cond.46
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB23_44
# BB#30:                                # %for.body.48
                                        #   in Loop: Header=BB23_29 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_toolbox_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB23_32
# BB#31:                                # %if.then.58
                                        #   in Loop: Header=BB23_29 Depth=1
	movl	$0, -100(%rbp)
	jmp	.LBB23_37
.LBB23_32:                              # %if.else.59
                                        #   in Loop: Header=BB23_29 Depth=1
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_35
# BB#33:                                # %land.lhs.true.62
                                        #   in Loop: Header=BB23_29 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB23_35
# BB#34:                                # %if.then.66
                                        #   in Loop: Header=BB23_29 Depth=1
	movl	$1, -100(%rbp)
	jmp	.LBB23_36
.LBB23_35:                              # %if.else.67
                                        #   in Loop: Header=BB23_29 Depth=1
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB23_36:                              # %if.end.69
                                        #   in Loop: Header=BB23_29 Depth=1
	jmp	.LBB23_37
.LBB23_37:                              # %if.end.70
                                        #   in Loop: Header=BB23_29 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB23_39
# BB#38:                                # %if.then.73
	movl	$1, -4(%rbp)
	jmp	.LBB23_45
.LBB23_39:                              # %if.end.74
                                        #   in Loop: Header=BB23_29 Depth=1
	jmp	.LBB23_40
.LBB23_40:                              # %for.inc.75
                                        #   in Loop: Header=BB23_29 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB23_42
# BB#41:                                # %cond.true.77
                                        #   in Loop: Header=BB23_29 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB23_43
.LBB23_42:                              # %cond.false.79
                                        #   in Loop: Header=BB23_29 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB23_43
.LBB23_43:                              # %cond.end.80
                                        #   in Loop: Header=BB23_29 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB23_29
.LBB23_44:                              # %for.end.82
	movl	$0, -4(%rbp)
.LBB23_45:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_image_window_has_toolbox, .Lfunc_end23-gimp_image_window_has_toolbox
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4604930618986332160     # double 0.75
	.text
	.globl	gimp_image_window_shrink_wrap
	.align	16, 0x90
	.type	gimp_image_window_shrink_wrap,@function
gimp_image_window_shrink_wrap:          # @gimp_image_window_shrink_wrap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -120(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -140(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -140(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_shrink_wrap, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_58
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_realized
	cmpl	$0, %eax
	jne	.LBB24_14
# BB#13:                                # %if.then.15
	jmp	.LBB24_58
.LBB24_14:                              # %if.end.16
	movq	-8(%rbp), %rdi
	callq	gimp_image_window_get_active_shell
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB24_16
# BB#15:                                # %if.then.19
	jmp	.LBB24_58
.LBB24_16:                              # %if.end.20
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_screen
	leaq	-56(%rbp), %rsi
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_widget_get_window
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gdk_screen_get_monitor_at_window
	leaq	-80(%rbp), %rdx
	movl	%eax, -84(%rbp)
	movq	-64(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	gdk_screen_get_monitor_geometry
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rdx
	mulsd	200(%rdx), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	%eax, -96(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rdx
	mulsd	208(%rdx), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	%eax, -100(%rbp)
	movq	-24(%rbp), %rdx
	movl	296(%rdx), %eax
	movl	%eax, -88(%rbp)
	movq	-24(%rbp), %rdx
	movl	300(%rdx), %eax
	movl	%eax, -92(%rbp)
	cmpl	$1, -88(%rbp)
	jg	.LBB24_18
# BB#17:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, 360(%rax)
	jne	.LBB24_19
.LBB24_18:                              # %if.then.40
	movl	-48(%rbp), %eax
	subl	-88(%rbp), %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB24_20
.LBB24_19:                              # %if.else.42
	leaq	-160(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	360(%rax), %rdi
	callq	gtk_widget_get_allocation
	movl	-48(%rbp), %ecx
	subl	-88(%rbp), %ecx
	addl	-152(%rbp), %ecx
	movl	%ecx, -112(%rbp)
.LBB24_20:                              # %if.end.48
	cmpl	$1, -92(%rbp)
	jg	.LBB24_22
# BB#21:                                # %lor.lhs.false.51
	movq	-24(%rbp), %rax
	cmpq	$0, 352(%rax)
	jne	.LBB24_23
.LBB24_22:                              # %if.then.53
	movl	-44(%rbp), %eax
	subl	-92(%rbp), %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB24_24
.LBB24_23:                              # %if.else.56
	leaq	-176(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	352(%rax), %rdi
	callq	gtk_widget_get_allocation
	movl	-44(%rbp), %ecx
	subl	-92(%rbp), %ecx
	addl	-164(%rbp), %ecx
	movl	%ecx, -116(%rbp)
.LBB24_24:                              # %if.end.63
	movsd	.LCPI24_0, %xmm0        # xmm0 = mem[0],zero
	movl	-72(%rbp), %eax
	subl	-112(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -104(%rbp)
	movl	-68(%rbp), %eax
	subl	-116(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -108(%rbp)
	movl	-96(%rbp), %eax
	addl	-112(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.LBB24_26
# BB#25:                                # %lor.lhs.false.78
	movl	-100(%rbp), %eax
	addl	-116(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB24_35
.LBB24_26:                              # %land.lhs.true.83
	movl	-96(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jne	.LBB24_28
# BB#27:                                # %lor.lhs.false.86
	movl	-100(%rbp), %eax
	cmpl	-92(%rbp), %eax
	je	.LBB24_35
.LBB24_28:                              # %if.then.89
	movl	-96(%rbp), %eax
	addl	-112(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB24_30
# BB#29:                                # %cond.true
	movl	-96(%rbp), %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB24_31
.LBB24_30:                              # %cond.false
	movl	-104(%rbp), %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB24_31:                              # %cond.end
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %eax
	addl	-116(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB24_33
# BB#32:                                # %cond.true.98
	movl	-100(%rbp), %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB24_34
.LBB24_33:                              # %cond.false.99
	movl	-108(%rbp), %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB24_34:                              # %cond.end.100
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)
	movl	$1, -120(%rbp)
	jmp	.LBB24_47
.LBB24_35:                              # %if.else.102
	movl	-96(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jg	.LBB24_37
# BB#36:                                # %lor.lhs.false.105
	movl	-100(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jle	.LBB24_46
.LBB24_37:                              # %land.lhs.true.108
	movl	-88(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jl	.LBB24_39
# BB#38:                                # %lor.lhs.false.111
	movl	-92(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jge	.LBB24_46
.LBB24_39:                              # %if.then.114
	movl	-104(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB24_41
# BB#40:                                # %cond.true.117
	movl	-104(%rbp), %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB24_42
.LBB24_41:                              # %cond.false.118
	movl	-96(%rbp), %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB24_42:                              # %cond.end.119
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	%eax, -96(%rbp)
	movl	-108(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB24_44
# BB#43:                                # %cond.true.123
	movl	-108(%rbp), %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB24_45
.LBB24_44:                              # %cond.false.124
	movl	-100(%rbp), %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB24_45:                              # %cond.end.125
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)
	movl	$1, -120(%rbp)
.LBB24_46:                              # %if.end.127
	jmp	.LBB24_47
.LBB24_47:                              # %if.end.128
	cmpl	$0, -120(%rbp)
	je	.LBB24_57
# BB#48:                                # %if.then.130
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-188(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	gtk_widget_get_size_request
	movl	-96(%rbp), %ecx
	cmpl	-188(%rbp), %ecx
	jge	.LBB24_50
# BB#49:                                # %if.then.138
	movl	-188(%rbp), %eax
	movl	%eax, -96(%rbp)
.LBB24_50:                              # %if.end.139
	movl	-96(%rbp), %eax
	addl	-112(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, -100(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB24_56
# BB#51:                                # %if.then.143
	movl	-96(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB24_53
# BB#52:                                # %if.then.147
	movl	-48(%rbp), %eax
	movl	%eax, -96(%rbp)
.LBB24_53:                              # %if.end.149
	movl	-100(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB24_55
# BB#54:                                # %if.then.153
	movl	-44(%rbp), %eax
	movl	%eax, -100(%rbp)
.LBB24_55:                              # %if.end.155
	jmp	.LBB24_56
.LBB24_56:                              # %if.end.156
	movq	-8(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-96(%rbp), %esi
	movl	-100(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_window_resize
.LBB24_57:                              # %if.end.159
	movl	$1, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_display_shell_scroll_center_image
.LBB24_58:                              # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_image_window_shrink_wrap, .Lfunc_end24-gimp_image_window_shrink_wrap
	.cfi_endproc

	.globl	gimp_image_window_get_default_dockbook
	.align	16, 0x90
	.type	gimp_image_window_get_default_dockbook,@function
gimp_image_window_get_default_dockbook: # @gimp_image_window_get_default_dockbook
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_dock_columns_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_window_get_first_dockbook
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_dock_columns_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_window_get_first_dockbook
	movq	%rax, -32(%rbp)
.LBB25_2:                               # %if.end
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_image_window_get_default_dockbook, .Lfunc_end25-gimp_image_window_get_default_dockbook
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_get_first_dockbook,@function
gimp_image_window_get_first_dockbook:   # @gimp_image_window_get_first_dockbook
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_dock_columns_get_docks
	movq	%rax, -24(%rbp)
.LBB26_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB26_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_dock_get_dockbooks
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB26_4
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
	jmp	.LBB26_10
.LBB26_4:                               # %if.end
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_5
.LBB26_5:                               # %for.inc
                                        #   in Loop: Header=BB26_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB26_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB26_8
.LBB26_7:                               # %cond.false
                                        #   in Loop: Header=BB26_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB26_8
.LBB26_8:                               # %cond.end
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB26_1
.LBB26_9:                               # %for.end
	movq	$0, -8(%rbp)
.LBB26_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_image_window_get_first_dockbook, .Lfunc_end26-gimp_image_window_get_first_dockbook
	.cfi_endproc

	.globl	gimp_image_window_keep_canvas_pos
	.align	16, 0x90
	.type	gimp_image_window_keep_canvas_pos,@function
gimp_image_window_keep_canvas_pos:      # @gimp_image_window_keep_canvas_pos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_window_get_active_shell
	xorps	%xmm0, %xmm0
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	%rax, -16(%rbp)
	movl	$-1, -20(%rbp)
	movl	$-1, -24(%rbp)
	movl	$-1, -28(%rbp)
	movl	$-1, -32(%rbp)
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-28(%rbp), %r8
	leaq	-32(%rbp), %r9
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_translate_coordinates
	cmpl	$0, %eax
	je	.LBB27_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %edi
	movl	$8, %eax
	movl	%eax, %esi
	callq	g_malloc0_n
	movabsq	$.L.str.16, %rsi
	movabsq	$gimp_image_window_shell_size_allocate, %rdi
	movabsq	$g_free, %rcx
	movl	$1, %r9d
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	-32(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %r8
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%r8, %rcx
	movq	-88(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB27_2:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_image_window_keep_canvas_pos, .Lfunc_end27-gimp_image_window_keep_canvas_pos
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_shell_size_allocate,@function
gimp_image_window_shell_size_allocate:  # @gimp_image_window_shell_size_allocate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -32(%rbp)
	movl	$-1, -36(%rbp)
	movl	$-1, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-36(%rbp), %r8
	leaq	-40(%rbp), %r9
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edx
	movq	-24(%rbp), %rsi
	movl	4(%rsi), %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_translate_coordinates
	cmpl	$0, %eax
	je	.LBB28_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, %ecx
	subl	-36(%rbp), %ecx
	subl	-40(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edx
	callq	gimp_display_shell_scroll_set_offset
.LBB28_2:                               # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_image_window_shell_size_allocate, %rdx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -84(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_image_window_shell_size_allocate, .Lfunc_end28-gimp_image_window_shell_size_allocate
	.cfi_endproc

	.globl	gimp_image_window_update_tabs
	.align	16, 0x90
	.type	gimp_image_window_update_tabs,@function
gimp_image_window_update_tabs:          # @gimp_image_window_update_tabs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB29_8
.LBB29_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB29_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB29_7:                               # %if.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB29_10
# BB#9:                                 # %if.then.8
	jmp	.LBB29_11
.LBB29_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_update_tabs, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB29_20
.LBB29_11:                              # %if.end.10
	jmp	.LBB29_12
.LBB29_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rsi
	cmpl	$0, 728(%rsi)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movb	%dl, -81(%rbp)          # 1-byte Spill
	je	.LBB29_19
# BB#13:                                # %land.lhs.true.19
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	cmpl	$0, 724(%rdx)
	movb	%cl, -81(%rbp)          # 1-byte Spill
	jne	.LBB29_19
# BB#14:                                # %land.rhs
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB29_17
# BB#15:                                # %land.lhs.true.22
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 128(%rax)
	je	.LBB29_17
# BB#16:                                # %land.lhs.true.25
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movb	$1, %cl
	cmpq	$0, %rax
	movb	%cl, -82(%rbp)          # 1-byte Spill
	jne	.LBB29_18
.LBB29_17:                              # %lor.rhs
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_list_length
	cmpl	$1, %eax
	seta	%cl
	movb	%cl, -82(%rbp)          # 1-byte Spill
.LBB29_18:                              # %lor.end
	movb	-82(%rbp), %al          # 1-byte Reload
	movb	%al, -81(%rbp)          # 1-byte Spill
.LBB29_19:                              # %land.end
	movb	-81(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	gtk_notebook_set_show_tabs
.LBB29_20:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_image_window_update_tabs, .Lfunc_end29-gimp_image_window_update_tabs
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_class_init,@function
gimp_image_window_class_init:           # @gimp_image_window_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
.Ltmp95:
	.cfi_offset %rbx, -40
.Ltmp96:
	.cfi_offset %r14, -32
.Ltmp97:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_image_window_style_set, %rsi
	movabsq	$gimp_image_window_window_state_event, %rdi
	movabsq	$gimp_image_window_configure_event, %rcx
	movabsq	$gimp_image_window_delete_event, %rdx
	movabsq	$gimp_image_window_map, %r8
	movabsq	$gimp_image_window_get_property, %r9
	movabsq	$gimp_image_window_set_property, %r10
	movabsq	$gimp_image_window_finalize, %r11
	movabsq	$gimp_image_window_dispose, %rbx
	movabsq	$gimp_image_window_constructed, %r14
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%r14, 72(%rax)
	movq	-40(%rbp), %rax
	movq	%rbx, 40(%rax)
	movq	-40(%rbp), %rax
	movq	%r11, 48(%rax)
	movq	-40(%rbp), %rax
	movq	%r10, 24(%rax)
	movq	-40(%rbp), %rax
	movq	%r9, 32(%rax)
	movq	-48(%rbp), %rax
	movq	%r8, 208(%rax)
	movq	-48(%rbp), %rax
	movq	%rdx, 376(%rax)
	movq	-48(%rbp), %rax
	movq	%rcx, 432(%rax)
	movq	-48(%rbp), %rax
	movq	%rdi, 544(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, 280(%rax)
	movq	-40(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_get_type
	movabsq	$.L.str.7, %rdi
	xorl	%r15d, %r15d
	movl	%r15d, %ecx
	movl	$234, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-40(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_menu_factory_get_type
	movabsq	$.L.str.8, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$234, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$2, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-40(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_dialog_factory_get_type
	movabsq	$.L.str.9, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$3, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$120, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	movabsq	$image_window_rc_style, %rdi
	callq	gtk_rc_parse_string
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_image_window_class_init, .Lfunc_end30-gimp_image_window_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_constructed,@function
gimp_image_window_constructed:          # @gimp_image_window_constructed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_ui_manager_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB31_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB31_8
.LBB31_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB31_6
# BB#5:                                 # %if.then.7
	movl	$1, -52(%rbp)
	jmp	.LBB31_7
.LBB31_6:                               # %if.else.8
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB31_7:                               # %if.end
	jmp	.LBB31_8
.LBB31_8:                               # %if.end.10
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB31_10
# BB#9:                                 # %if.then.12
	jmp	.LBB31_11
.LBB31_10:                              # %if.else.13
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.17, %rsi
	movl	$317, %edx              # imm = 0x13D
	movabsq	$.L__func__.gimp_image_window_constructed, %rcx
	movabsq	$.L.str.18, %r8
	callq	g_assertion_message_expr
.LBB31_11:                              # %if.end.14
	jmp	.LBB31_12
.LBB31_12:                              # %do.end
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_image_window_update_ui_manager, %rax
	movl	$2, %r8d
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.20, %rsi
	movabsq	$gimp_image_window_update_ui_manager, %rcx
	movl	$2, %r8d
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_accel_group
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_add_accel_group
	movabsq	$.L.str.21, %rsi
	movabsq	$gimp_image_window_show_tooltip, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.22, %rsi
	movabsq	$gimp_image_window_hide_tooltip, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_dialog_factory_get_context
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edi
	xorl	%esi, %esi
	movq	%rax, -32(%rbp)
	callq	gtk_box_new
	movq	-24(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rsi
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_widget
	movq	-24(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-24(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB31_14
# BB#13:                                # %if.then.44
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	-196(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.24, %rsi
	movabsq	$gtk_true, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-24(%rbp), %r10
	movq	48(%r10), %r10
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-208(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.25, %rsi
	movabsq	$gimp_image_window_shell_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.26, %rsi
	movabsq	$gimp_image_window_shell_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.27, %rsi
	movabsq	$gimp_image_window_shell_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB31_14:                              # %if.end.57
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gtk_box_new
	movq	-24(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rcx
	movq	56(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -276(%rbp)        # 4-byte Spill
	movl	-276(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	callq	gtk_paned_new
	movq	-24(%rbp), %rsi
	movq	%rax, 64(%rsi)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_get_user_context
	movq	-24(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rdx
	movq	%rax, %rdi
	callq	gimp_dock_columns_new
	movq	-24(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_paned_pack1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	728(%rax), %esi
	callq	gtk_widget_set_visible
	xorl	%edi, %edi
	callq	gtk_paned_new
	movq	-24(%rbp), %r9
	movq	%rax, 80(%r9)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	80(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_paned_pack2
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_show
	callq	gtk_notebook_new
	movq	-24(%rbp), %rsi
	movq	%rax, 88(%rsi)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_scrollable
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_show_border
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_show_tabs
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	-24(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_paned_pack1
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_image_window_switch_page, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	88(%rdi), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_image_window_page_removed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	88(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	88(%rcx), %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_get_user_context
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rax, %rdi
	callq	gimp_dock_columns_new
	movq	-24(%rbp), %rcx
	movq	%rax, 96(%rcx)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rcx
	movq	96(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_paned_pack2
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	728(%rax), %esi
	callq	gtk_widget_set_visible
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_image_window_config_notify, %rax
	movl	$2, %r8d
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_object
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_image_window_config_notify, %rcx
	movl	$2, %r8d
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_image_window_config_to_entry_id
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_window_session_update
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_image_window_constructed, .Lfunc_end31-gimp_image_window_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_dispose,@function
gimp_image_window_dispose:              # @gimp_image_window_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB32_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_image_window_update_ui_manager, %rdx
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movq	$0, 16(%rdi)
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB32_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB32_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB32_4:                               # %if.end.9
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_image_window_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_image_window_dispose, .Lfunc_end32-gimp_image_window_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_finalize,@function
gimp_image_window_finalize:             # @gimp_image_window_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB33_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
.LBB33_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_image_window_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_image_window_finalize, .Lfunc_end33-gimp_image_window_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_set_property,@function
gimp_image_window_set_property:         # @gimp_image_window_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movl	%r9d, -104(%rbp)        # 4-byte Spill
	je	.LBB34_1
	jmp	.LBB34_8
.LBB34_8:                               # %entry
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB34_2
	jmp	.LBB34_9
.LBB34_9:                               # %entry
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB34_3
	jmp	.LBB34_4
.LBB34_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB34_7
.LBB34_2:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movabsq	$.L.str.43, %rsi
	xorl	%ecx, %ecx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	callq	gimp_menu_factory_manager_new
	movq	-48(%rbp), %rdx
	movq	%rax, 8(%rdx)
	jmp	.LBB34_7
.LBB34_3:                               # %sw.bb.8
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-48(%rbp), %rdi
	movq	%rax, 16(%rdi)
	jmp	.LBB34_7
.LBB34_4:                               # %sw.default
	jmp	.LBB34_5
.LBB34_5:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movl	-76(%rbp), %r8d
	movq	-72(%rbp), %rax
	movq	8(%rax), %r9
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movq	%r9, -128(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-64(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.44, %rdi
	movabsq	$.L.str.17, %rsi
	movl	$501, %edx              # imm = 0x1F5
	movabsq	$.L.str.45, %rcx
	movl	-116(%rbp), %r8d        # 4-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB34_7
.LBB34_7:                               # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_image_window_set_property, .Lfunc_end34-gimp_image_window_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_get_property,@function
gimp_image_window_get_property:         # @gimp_image_window_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movl	%r9d, -96(%rbp)         # 4-byte Spill
	je	.LBB35_1
	jmp	.LBB35_8
.LBB35_8:                               # %entry
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB35_3
	jmp	.LBB35_9
.LBB35_9:                               # %entry
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB35_2
	jmp	.LBB35_4
.LBB35_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB35_7
.LBB35_2:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB35_7
.LBB35_3:                               # %sw.bb.5
	jmp	.LBB35_4
.LBB35_4:                               # %sw.default
	jmp	.LBB35_5
.LBB35_5:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.44, %rdi
	movabsq	$.L.str.17, %rsi
	movl	$526, %edx              # imm = 0x20E
	movabsq	$.L.str.45, %rcx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB35_7
.LBB35_7:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_image_window_get_property, .Lfunc_end35-gimp_image_window_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_map,@function
gimp_image_window_map:                  # @gimp_image_window_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	gimp_image_window_parent_class, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	208(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_image_window_map, .Lfunc_end36-gimp_image_window_map
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_delete_event,@function
gimp_image_window_delete_event:         # @gimp_image_window_delete_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_window_get_active_shell
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gimp_dialog_factory_get_context
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$0, 728(%rax)
	je	.LBB37_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_image_window_get_ui_manager
	movabsq	$.L.str.46, %rsi
	movabsq	$.L.str.47, %rdx
	movq	%rax, %rdi
	callq	gimp_ui_manager_activate_action
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB37_5
.LBB37_2:                               # %if.else
	cmpq	$0, -32(%rbp)
	je	.LBB37_4
# BB#3:                                 # %if.then.12
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_close
.LBB37_4:                               # %if.end
	jmp	.LBB37_5
.LBB37_5:                               # %if.end.13
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_image_window_delete_event, .Lfunc_end37-gimp_image_window_delete_event
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_configure_event,@function
gimp_image_window_configure_event:      # @gimp_image_window_configure_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movl	-32(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	gimp_image_window_parent_class, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 432(%rax)
	je	.LBB38_2
# BB#1:                                 # %if.then
	movq	gimp_image_window_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	432(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB38_2:                               # %if.end
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	cmpl	-44(%rbp), %ecx
	jne	.LBB38_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	cmpl	-48(%rbp), %ecx
	je	.LBB38_8
.LBB38_4:                               # %if.then.11
	movq	-24(%rbp), %rdi
	callq	gimp_image_window_get_active_shell
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB38_7
# BB#5:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB38_7
# BB#6:                                 # %if.then.16
	movq	-56(%rbp), %rax
	movl	$1, 700(%rax)
.LBB38_7:                               # %if.end.17
	jmp	.LBB38_8
.LBB38_8:                               # %if.end.18
	movl	$1, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_image_window_configure_event, .Lfunc_end38-gimp_image_window_configure_event
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_window_state_event,@function
gimp_image_window_window_state_event:   # @gimp_image_window_window_state_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_window_get_active_shell
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB39_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB39_31
.LBB39_2:                               # %if.end
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 104(%rax)
	movq	-24(%rbp), %rax
	movl	20(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	je	.LBB39_10
# BB#3:                                 # %if.then.6
	movq	-32(%rbp), %rdi
	callq	gimp_image_window_get_fullscreen
	movl	%eax, -52(%rbp)
# BB#4:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	je	.LBB39_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_get_title
	movl	$1024, %edi             # imm = 0x400
	movabsq	$.L__func__.gimp_image_window_window_state_event, %rsi
	movl	$634, %edx              # imm = 0x27A
	movabsq	$.L.str.48, %rcx
	movabsq	$.L.str.50, %r8
	movabsq	$.L.str.49, %r9
	movq	-16(%rbp), %r10
	cmpl	$0, -52(%rbp)
	cmovneq	%r9, %r8
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%r10, %r9
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	gimp_log
.LBB39_6:                               # %if.end.15
	jmp	.LBB39_7
.LBB39_7:                               # %do.end
	movq	-40(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB39_9
# BB#8:                                 # %if.then.17
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.51, %rdx
	movq	-40(%rbp), %rsi
	movq	48(%rsi), %rdi
	cmpl	$0, -52(%rbp)
	cmovneq	%rdx, %rcx
	movq	%rcx, %rsi
	callq	gtk_widget_set_name
.LBB39_9:                               # %if.end.21
	movq	-48(%rbp), %rdi
	callq	gimp_display_shell_appearance_update
.LBB39_10:                              # %if.end.22
	movq	-24(%rbp), %rax
	movl	20(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB39_30
# BB#11:                                # %if.then.26
	movq	-48(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_window_is_iconified
	movl	%eax, -68(%rbp)
# BB#12:                                # %do.body.29
	movl	gimp_log_flags, %eax
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	je	.LBB39_14
# BB#13:                                # %if.then.32
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_get_title
	movl	$1024, %edi             # imm = 0x400
	movabsq	$.L__func__.gimp_image_window_window_state_event, %rsi
	movl	$651, %edx              # imm = 0x28B
	movabsq	$.L.str.52, %rcx
	movabsq	$.L.str.54, %r8
	movabsq	$.L.str.53, %r9
	movq	-16(%rbp), %r10
	cmpl	$0, -68(%rbp)
	cmovneq	%r9, %r8
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%r10, %r9
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	gimp_log
.LBB39_14:                              # %if.end.38
	jmp	.LBB39_15
.LBB39_15:                              # %do.end.39
	cmpl	$0, -68(%rbp)
	je	.LBB39_23
# BB#16:                                # %if.then.41
	movq	-48(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_displays_get_num_visible
	cmpl	$0, %eax
	jne	.LBB39_22
# BB#17:                                # %if.then.43
	jmp	.LBB39_18
.LBB39_18:                              # %do.body.44
	movl	gimp_log_flags, %eax
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	je	.LBB39_20
# BB#19:                                # %if.then.47
	movl	$1024, %edi             # imm = 0x400
	movabsq	$.L__func__.gimp_image_window_window_state_event, %rsi
	movl	$657, %edx              # imm = 0x291
	movabsq	$.L.str.55, %rcx
	movb	$0, %al
	callq	gimp_log
.LBB39_20:                              # %if.end.48
	jmp	.LBB39_21
.LBB39_21:                              # %do.end.49
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gimp_dialog_factory_hide_with_display
.LBB39_22:                              # %if.end.50
	jmp	.LBB39_24
.LBB39_23:                              # %if.else
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gimp_dialog_factory_show_with_display
.LBB39_24:                              # %if.end.52
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_is_active
	cmpl	$0, %eax
	je	.LBB39_29
# BB#25:                                # %if.then.57
	cmpl	$0, -68(%rbp)
	je	.LBB39_27
# BB#26:                                # %if.then.59
	movq	-64(%rbp), %rdi
	callq	gimp_statusbar_override_window_title
	jmp	.LBB39_28
.LBB39_27:                              # %if.else.60
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	536(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_title
.LBB39_28:                              # %if.end.63
	jmp	.LBB39_29
.LBB39_29:                              # %if.end.64
	jmp	.LBB39_30
.LBB39_30:                              # %if.end.65
	movl	$0, -4(%rbp)
.LBB39_31:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_image_window_window_state_event, .Lfunc_end39-gimp_image_window_window_state_event
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_style_set,@function
gimp_image_window_style_set:            # @gimp_image_window_style_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_window_get_active_shell
	xorl	%ecx, %ecx
	movl	$56, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-112(%rbp), %rsi
	movl	$8, %r8d
	movl	%r8d, %edi
	leaq	-56(%rbp), %r9
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	callq	memset
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movl	$0, -116(%rbp)
	movq	gimp_image_window_parent_class, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	cmpq	$0, -40(%rbp)
	jne	.LBB40_2
# BB#1:                                 # %if.then
	jmp	.LBB40_7
.LBB40_2:                               # %if.end
	movq	-40(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_size_request
	movl	$23, -108(%rbp)
	movl	-56(%rbp), %ecx
	movl	%ecx, -112(%rbp)
	movl	-52(%rbp), %ecx
	addl	-108(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB40_4
# BB#3:                                 # %if.then.12
	leaq	-56(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_size_request
	movl	-52(%rbp), %ecx
	addl	-108(%rbp), %ecx
	movl	%ecx, -108(%rbp)
.LBB40_4:                               # %if.end.17
	movl	$2, -116(%rbp)
	movq	-40(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	jne	.LBB40_6
# BB#5:                                 # %if.then.20
	movl	-116(%rbp), %eax
	orl	$128, %eax
	movl	%eax, -116(%rbp)
.LBB40_6:                               # %if.end.21
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-112(%rbp), %rdx
	movl	-116(%rbp), %ecx
	movq	%rax, %rdi
	callq	gtk_window_set_geometry_hints
	movq	-8(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_dialog_factory_set_has_min_size
.LBB40_7:                               # %return
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_image_window_style_set, .Lfunc_end40-gimp_image_window_style_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_update_ui_manager,@function
gimp_image_window_update_ui_manager:    # @gimp_image_window_update_ui_manager
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp130:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_image_window_update_ui_manager, .Lfunc_end41-gimp_image_window_update_ui_manager
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_show_tooltip,@function
gimp_image_window_show_tooltip:         # @gimp_image_window_show_tooltip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
.Ltmp132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp133:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_window_get_active_shell
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB42_2
# BB#1:                                 # %if.then
	jmp	.LBB42_3
.LBB42_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movabsq	$.L.str.32, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movabsq	$.L.str.33, %rcx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %r8
	movb	$0, %al
	callq	gimp_statusbar_push
.LBB42_3:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_image_window_show_tooltip, .Lfunc_end42-gimp_image_window_show_tooltip
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_hide_tooltip,@function
gimp_image_window_hide_tooltip:         # @gimp_image_window_hide_tooltip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp136:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_window_get_active_shell
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB43_2
# BB#1:                                 # %if.then
	jmp	.LBB43_3
.LBB43_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movabsq	$.L.str.32, %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_statusbar_pop
.LBB43_3:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_image_window_hide_tooltip, .Lfunc_end43-gimp_image_window_hide_tooltip
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_shell_events,@function
gimp_image_window_shell_events:         # @gimp_image_window_shell_events
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp139:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_window_get_active_shell
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB44_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB44_3
.LBB44_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_display_shell_events
	movl	%eax, -4(%rbp)
.LBB44_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_image_window_shell_events, .Lfunc_end44-gimp_image_window_shell_events
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_switch_page,@function
gimp_image_window_switch_page:          # @gimp_image_window_switch_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp142:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gtk_notebook_get_nth_page
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jne	.LBB45_2
# BB#1:                                 # %if.then
	jmp	.LBB45_7
.LBB45_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_image_window_disconnect_from_active_shell
# BB#3:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	je	.LBB45_5
# BB#4:                                 # %if.then.5
	movl	$1024, %edi             # imm = 0x400
	movabsq	$.L__func__.gimp_image_window_switch_page, %rsi
	movl	$1717, %edx             # imm = 0x6B5
	movabsq	$.L.str.34, %rcx
	movq	-32(%rbp), %r8
	movq	-48(%rbp), %r9
	movb	$0, %al
	callq	gimp_log
.LBB45_5:                               # %if.end.6
	jmp	.LBB45_6
.LBB45_6:                               # %do.end
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rcx
	movq	328(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_window_set_primary_focus_widget
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_image_window_image_notify, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	128(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_image_window_shell_scaled, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_image_window_shell_title_notify, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_image_window_shell_icon_notify, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rcx
	movq	536(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_title
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rcx
	movq	560(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_icon
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_display_shell_appearance_update
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_image_window_session_update
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_get_user_context
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_context_set_display
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
.LBB45_7:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_image_window_switch_page, .Lfunc_end45-gimp_image_window_switch_page
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_page_removed,@function
gimp_image_window_page_removed:         # @gimp_image_window_page_removed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp145:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	-16(%rbp), %rax
	jne	.LBB46_6
# BB#1:                                 # %if.then
	jmp	.LBB46_2
.LBB46_2:                               # %do.body
	movl	gimp_log_flags, %eax
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	je	.LBB46_4
# BB#3:                                 # %if.then.4
	movl	$1024, %edi             # imm = 0x400
	movabsq	$.L__func__.gimp_image_window_page_removed, %rsi
	movl	$1765, %edx             # imm = 0x6E5
	movabsq	$.L.str.34, %rcx
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-32(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB46_4:                               # %if.end
	jmp	.LBB46_5
.LBB46_5:                               # %do.end
	movq	-32(%rbp), %rdi
	callq	gimp_image_window_disconnect_from_active_shell
	movq	-40(%rbp), %rdi
	movq	$0, 32(%rdi)
.LBB46_6:                               # %if.end.6
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_image_window_page_removed, .Lfunc_end46-gimp_image_window_page_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_config_notify,@function
gimp_image_window_config_notify:        # @gimp_image_window_config_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp148:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.39, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB47_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.40, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB47_13
.LBB47_2:                               # %if.then
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	cmpl	$0, 728(%rdx)
	movb	%cl, -73(%rbp)          # 1-byte Spill
	je	.LBB47_4
# BB#3:                                 # %land.rhs
	movq	-24(%rbp), %rax
	cmpl	$0, 724(%rax)
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -73(%rbp)          # 1-byte Spill
.LBB47_4:                               # %land.end
	movb	-73(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_window_keep_canvas_pos
	movq	-32(%rbp), %rdi
	movq	72(%rdi), %rdi
	movl	-36(%rbp), %esi
	callq	gtk_widget_set_visible
	movq	-32(%rbp), %rdi
	movq	96(%rdi), %rdi
	movl	-36(%rbp), %esi
	callq	gtk_widget_set_visible
	movq	-8(%rbp), %rdi
	callq	gimp_image_window_update_tabs
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movl	$.L.str.40, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB47_12
# BB#5:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$0, 728(%rax)
	jne	.LBB47_12
# BB#6:                                 # %land.lhs.true.12
	movq	-24(%rbp), %rax
	cmpl	$0, 724(%rax)
	jne	.LBB47_12
# BB#7:                                 # %if.then.15
	movq	-8(%rbp), %rdi
	callq	gimp_image_window_get_active_shell
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_get_user_context
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_context_get_display
	movq	-48(%rbp), %rdi
	movq	128(%rdi), %rdi
	cmpq	%rdi, %rax
	jne	.LBB47_11
# BB#8:                                 # %if.then.20
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_window
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB47_10
# BB#9:                                 # %if.then.25
	movq	-64(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gtk_get_current_event_time
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gdk_window_focus
.LBB47_10:                              # %if.end
	jmp	.LBB47_11
.LBB47_11:                              # %if.end.27
	jmp	.LBB47_12
.LBB47_12:                              # %if.end.28
	jmp	.LBB47_13
.LBB47_13:                              # %if.end.29
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.39, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB47_15
# BB#14:                                # %if.then.33
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_window_config_to_entry_id
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_window_session_update
.LBB47_15:                              # %if.end.35
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_image_window_config_notify, .Lfunc_end47-gimp_image_window_config_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_session_update,@function
gimp_image_window_session_update:       # @gimp_image_window_session_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp149:
	.cfi_def_cfa_offset 16
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp151:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB48_19
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	cmpq	$0, 112(%rax)
	jne	.LBB48_5
# BB#2:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	movl	$.L.str.41, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB48_4
# BB#3:                                 # %if.then.5
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_window_session_apply
.LBB48_4:                               # %if.end
	jmp	.LBB48_18
.LBB48_5:                               # %if.else
	movq	-32(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB48_17
# BB#6:                                 # %if.then.9
	movq	-8(%rbp), %rdi
	callq	gimp_image_window_session_clear
	movq	-24(%rbp), %rdi
	movl	$.L.str.42, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB48_13
# BB#7:                                 # %if.then.12
	movq	-32(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB48_12
# BB#8:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 128(%rax)
	je	.LBB48_12
# BB#9:                                 # %land.lhs.true.16
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	jne	.LBB48_12
# BB#10:                                # %land.lhs.true.21
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_list_length
	cmpl	$1, %eax
	ja	.LBB48_12
# BB#11:                                # %if.then.24
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_window_session_apply
.LBB48_12:                              # %if.end.25
	jmp	.LBB48_16
.LBB48_13:                              # %if.else.26
	movq	-24(%rbp), %rdi
	movl	$.L.str.41, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB48_15
# BB#14:                                # %if.then.29
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_window_session_apply
.LBB48_15:                              # %if.end.30
	jmp	.LBB48_16
.LBB48_16:                              # %if.end.31
	jmp	.LBB48_17
.LBB48_17:                              # %if.end.32
	jmp	.LBB48_18
.LBB48_18:                              # %if.end.33
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 112(%rcx)
.LBB48_19:                              # %if.end.35
	cmpq	$0, -16(%rbp)
	je	.LBB48_28
# BB#20:                                # %land.lhs.true.37
	movq	-32(%rbp), %rax
	movq	112(%rax), %rdi
	movl	$.L.str.42, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB48_28
# BB#21:                                # %if.then.41
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB48_23
# BB#22:                                # %if.then.44
	movq	-8(%rbp), %rdi
	callq	gimp_image_window_session_clear
	jmp	.LBB48_27
.LBB48_23:                              # %if.else.45
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	jne	.LBB48_26
# BB#24:                                # %land.lhs.true.48
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_list_length
	cmpl	$1, %eax
	ja	.LBB48_26
# BB#25:                                # %if.then.52
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	112(%rax), %rsi
	callq	gimp_image_window_session_apply
.LBB48_26:                              # %if.end.54
	jmp	.LBB48_27
.LBB48_27:                              # %if.end.55
	jmp	.LBB48_28
.LBB48_28:                              # %if.end.56
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_image_window_session_update, .Lfunc_end48-gimp_image_window_session_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_config_to_entry_id,@function
gimp_image_window_config_to_entry_id:   # @gimp_image_window_config_to_entry_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp154:
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str.42, %rax
	movabsq	$.L.str.41, %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 728(%rdi)
	cmovneq	%rcx, %rax
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gimp_image_window_config_to_entry_id, .Lfunc_end49-gimp_image_window_config_to_entry_id
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_disconnect_from_active_shell,@function
gimp_image_window_disconnect_from_active_shell: # @gimp_image_window_disconnect_from_active_shell
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
.Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp157:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB50_2
# BB#1:                                 # %if.then
	jmp	.LBB50_6
.LBB50_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB50_4
# BB#3:                                 # %if.then.4
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_image_window_image_notify, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB50_4:                               # %if.end.6
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_image_window_shell_scaled, %rdx
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_image_window_shell_title_notify, %rdi
	movq	-16(%rbp), %r9
	movq	32(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_image_window_shell_icon_notify, %rdi
	movq	-16(%rbp), %r9
	movq	32(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB50_6
# BB#5:                                 # %if.then.14
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_image_window_hide_tooltip
.LBB50_6:                               # %if.end.16
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gimp_image_window_disconnect_from_active_shell, .Lfunc_end50-gimp_image_window_disconnect_from_active_shell
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_image_notify,@function
gimp_image_window_image_notify:         # @gimp_image_window_image_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
.Ltmp159:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp160:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_image_window_session_update
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_display_get_shell
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_notebook_get_tab_label
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_list_free
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_display_get_image
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_set_viewable
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gimp_image_window_image_notify, .Lfunc_end51-gimp_image_window_image_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_shell_scaled,@function
gimp_image_window_shell_scaled:         # @gimp_image_window_shell_scaled
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp163:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gimp_image_window_shell_scaled, .Lfunc_end52-gimp_image_window_shell_scaled
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_shell_title_notify,@function
gimp_image_window_shell_title_notify:   # @gimp_image_window_shell_title_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
.Ltmp165:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp166:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdx
	movq	536(%rdx), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_title
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gimp_image_window_shell_title_notify, .Lfunc_end53-gimp_image_window_shell_title_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_shell_icon_notify,@function
gimp_image_window_shell_icon_notify:    # @gimp_image_window_shell_icon_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
.Ltmp168:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp169:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdx
	movq	560(%rdx), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_icon
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	gimp_image_window_shell_icon_notify, .Lfunc_end54-gimp_image_window_shell_icon_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_session_apply,@function
gimp_image_window_session_apply:        # @gimp_image_window_session_apply
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp170:
	.cfi_def_cfa_offset 16
.Ltmp171:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp172:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$-1, -36(%rbp)
	movl	$-1, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_unfullscreen
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_dialog_factory_find_session_info
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB55_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_session_info_get_width
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_session_info_get_height
	movl	%eax, -40(%rbp)
	jmp	.LBB55_3
.LBB55_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_get_allocation
	movl	-48(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movl	-44(%rbp), %ecx
	movl	%ecx, -40(%rbp)
.LBB55_3:                               # %if.end
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_dialog_factory_add_foreign
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_unmaximize
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_window_resize
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	gimp_image_window_session_apply, .Lfunc_end55-gimp_image_window_session_apply
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_session_clear,@function
gimp_image_window_session_clear:        # @gimp_image_window_session_clear
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp173:
	.cfi_def_cfa_offset 16
.Ltmp174:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp175:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_dialog_factory_from_widget
	cmpq	$0, %rax
	je	.LBB56_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_dialog_factory_remove_dialog
.LBB56_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	gimp_image_window_session_clear, .Lfunc_end56-gimp_image_window_session_clear
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp176:
	.cfi_def_cfa_offset 16
.Ltmp177:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp178:
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
	je	.LBB57_2
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
.LBB57_2:                               # %entry
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
.Lfunc_end57:
	.size	g_warning, .Lfunc_end57-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_get_docks,@function
gimp_image_window_get_docks:            # @gimp_image_window_get_docks
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp179:
	.cfi_def_cfa_offset 16
.Ltmp180:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp181:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB58_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB58_8
.LBB58_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB58_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB58_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB58_7
.LBB58_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB58_7:                               # %if.end
	jmp	.LBB58_8
.LBB58_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB58_10
# BB#9:                                 # %if.then.8
	jmp	.LBB58_11
.LBB58_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_get_docks, %rsi
	movabsq	$.L.str.57, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB58_27
.LBB58_11:                              # %if.end.10
	jmp	.LBB58_12
.LBB58_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_dock_columns_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dock_columns_get_docks
	movq	%rax, -32(%rbp)
.LBB58_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB58_19
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB58_13 Depth=1
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -40(%rbp)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB58_13 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB58_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB58_13 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB58_18
.LBB58_17:                              # %cond.false
                                        #   in Loop: Header=BB58_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB58_18
.LBB58_18:                              # %cond.end
                                        #   in Loop: Header=BB58_13 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB58_13
.LBB58_19:                              # %for.end
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_dock_columns_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dock_columns_get_docks
	movq	%rax, -32(%rbp)
.LBB58_20:                              # %for.cond.24
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB58_26
# BB#21:                                # %for.body.26
                                        #   in Loop: Header=BB58_20 Depth=1
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -40(%rbp)
# BB#22:                                # %for.inc.31
                                        #   in Loop: Header=BB58_20 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB58_24
# BB#23:                                # %cond.true.33
                                        #   in Loop: Header=BB58_20 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB58_25
.LBB58_24:                              # %cond.false.35
                                        #   in Loop: Header=BB58_20 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB58_25
.LBB58_25:                              # %cond.end.36
                                        #   in Loop: Header=BB58_20 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB58_20
.LBB58_26:                              # %for.end.38
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB58_27:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	gimp_image_window_get_docks, .Lfunc_end58-gimp_image_window_get_docks
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_dock_container_get_ui_manager,@function
gimp_image_window_dock_container_get_ui_manager: # @gimp_image_window_dock_container_get_ui_manager
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp182:
	.cfi_def_cfa_offset 16
.Ltmp183:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp184:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB59_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB59_8
.LBB59_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB59_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB59_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB59_7
.LBB59_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB59_7:                               # %if.end
	jmp	.LBB59_8
.LBB59_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB59_10
# BB#9:                                 # %if.then.8
	jmp	.LBB59_11
.LBB59_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_dock_container_get_ui_manager, %rsi
	movabsq	$.L.str.57, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB59_13
.LBB59_11:                              # %if.end.10
	jmp	.LBB59_12
.LBB59_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_window_get_ui_manager
	movq	%rax, -8(%rbp)
.LBB59_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	gimp_image_window_dock_container_get_ui_manager, .Lfunc_end59-gimp_image_window_dock_container_get_ui_manager
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_add_dock,@function
gimp_image_window_add_dock:             # @gimp_image_window_add_dock
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp185:
	.cfi_def_cfa_offset 16
.Ltmp186:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp187:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB60_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB60_8
.LBB60_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB60_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB60_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB60_7
.LBB60_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB60_7:                               # %if.end
	jmp	.LBB60_8
.LBB60_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB60_10
# BB#9:                                 # %if.then.8
	jmp	.LBB60_11
.LBB60_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_add_dock, %rsi
	movabsq	$.L.str.57, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB60_17
.LBB60_11:                              # %if.end.10
	jmp	.LBB60_12
.LBB60_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB60_14
# BB#13:                                # %if.then.16
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_dock_columns_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dock_columns_add_dock
	jmp	.LBB60_15
.LBB60_14:                              # %if.else.19
	movq	-48(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_dock_columns_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dock_columns_add_dock
.LBB60_15:                              # %if.end.22
	movq	-32(%rbp), %rdi
	callq	gimp_image_window_get_active_shell
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB60_17
# BB#16:                                # %if.then.25
	movq	-40(%rbp), %rdi
	callq	gimp_display_shell_appearance_update
.LBB60_17:                              # %if.end.26
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	gimp_image_window_add_dock, .Lfunc_end60-gimp_image_window_add_dock
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_get_dock_side,@function
gimp_image_window_get_dock_side:        # @gimp_image_window_get_dock_side
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp188:
	.cfi_def_cfa_offset 16
.Ltmp189:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp190:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB61_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB61_8
.LBB61_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB61_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB61_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB61_7
.LBB61_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB61_7:                               # %if.end
	jmp	.LBB61_8
.LBB61_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB61_10
# BB#9:                                 # %if.then.8
	jmp	.LBB61_11
.LBB61_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_get_dock_side, %rsi
	movabsq	$.L.str.57, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB61_35
.LBB61_11:                              # %if.end.10
	jmp	.LBB61_12
.LBB61_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_dock_columns_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dock_columns_get_docks
	movq	%rax, -48(%rbp)
.LBB61_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -48(%rbp)
	movb	%cl, -105(%rbp)         # 1-byte Spill
	je	.LBB61_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB61_13 Depth=1
	cmpl	$-1, -28(%rbp)
	sete	%al
	movb	%al, -105(%rbp)         # 1-byte Spill
.LBB61_15:                              # %land.end
                                        #   in Loop: Header=BB61_13 Depth=1
	movb	-105(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB61_16
	jmp	.LBB61_23
.LBB61_16:                              # %for.body
                                        #   in Loop: Header=BB61_13 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB61_18
# BB#17:                                # %if.then.22
                                        #   in Loop: Header=BB61_13 Depth=1
	movl	$0, -28(%rbp)
.LBB61_18:                              # %if.end.23
                                        #   in Loop: Header=BB61_13 Depth=1
	jmp	.LBB61_19
.LBB61_19:                              # %for.inc
                                        #   in Loop: Header=BB61_13 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB61_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB61_13 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB61_22
.LBB61_21:                              # %cond.false
                                        #   in Loop: Header=BB61_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB61_22
.LBB61_22:                              # %cond.end
                                        #   in Loop: Header=BB61_13 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB61_13
.LBB61_23:                              # %for.end
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_dock_columns_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dock_columns_get_docks
	movq	%rax, -48(%rbp)
.LBB61_24:                              # %for.cond.28
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -48(%rbp)
	movb	%cl, -137(%rbp)         # 1-byte Spill
	je	.LBB61_26
# BB#25:                                # %land.rhs.30
                                        #   in Loop: Header=BB61_24 Depth=1
	cmpl	$-1, -28(%rbp)
	sete	%al
	movb	%al, -137(%rbp)         # 1-byte Spill
.LBB61_26:                              # %land.end.32
                                        #   in Loop: Header=BB61_24 Depth=1
	movb	-137(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB61_27
	jmp	.LBB61_34
.LBB61_27:                              # %for.body.33
                                        #   in Loop: Header=BB61_24 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB61_29
# BB#28:                                # %if.then.40
                                        #   in Loop: Header=BB61_24 Depth=1
	movl	$2, -28(%rbp)
.LBB61_29:                              # %if.end.41
                                        #   in Loop: Header=BB61_24 Depth=1
	jmp	.LBB61_30
.LBB61_30:                              # %for.inc.42
                                        #   in Loop: Header=BB61_24 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB61_32
# BB#31:                                # %cond.true.44
                                        #   in Loop: Header=BB61_24 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB61_33
.LBB61_32:                              # %cond.false.46
                                        #   in Loop: Header=BB61_24 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB61_33
.LBB61_33:                              # %cond.end.47
                                        #   in Loop: Header=BB61_24 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB61_24
.LBB61_34:                              # %for.end.49
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB61_35:                              # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	gimp_image_window_get_dock_side, .Lfunc_end61-gimp_image_window_get_dock_side
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_get_aux_info,@function
gimp_image_window_get_aux_info:         # @gimp_image_window_get_aux_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp191:
	.cfi_def_cfa_offset 16
.Ltmp192:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp193:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB62_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB62_8
.LBB62_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB62_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB62_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB62_7
.LBB62_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB62_7:                               # %if.end
	jmp	.LBB62_8
.LBB62_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB62_10
# BB#9:                                 # %if.then.8
	jmp	.LBB62_11
.LBB62_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_get_aux_info, %rsi
	movabsq	$.L.str.58, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB62_15
.LBB62_11:                              # %if.end.10
	jmp	.LBB62_12
.LBB62_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gimp_dialog_factory_get_context
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 728(%rax)
	je	.LBB62_14
# BB#13:                                # %if.then.18
	leaq	-224(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_paned_get_position
	movl	$128, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.59, %rdx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_snprintf
	movabsq	$.L.str.60, %rdi
	leaq	-224(%rbp), %rsi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	gimp_session_info_aux_new
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	leaq	-88(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_allocation
	leaq	-224(%rbp), %rdi
	movl	-80(%rbp), %ecx
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_paned_get_position
	movl	$128, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.59, %rdx
	movl	-276(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movb	$0, %al
	callq	g_snprintf
	movabsq	$.L.str.61, %rdi
	leaq	-224(%rbp), %rsi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	gimp_session_info_aux_new
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_image_window_is_maximized
	movabsq	$.L.str.62, %rdi
	movabsq	$.L.str.64, %rdx
	movabsq	$.L.str.63, %rsi
	cmpl	$0, %eax
	cmovneq	%rsi, %rdx
	movq	%rdx, %rsi
	callq	gimp_session_info_aux_new
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -24(%rbp)
.LBB62_14:                              # %if.end.44
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB62_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end62:
	.size	gimp_image_window_get_aux_info, .Lfunc_end62-gimp_image_window_get_aux_info
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_set_aux_info,@function
gimp_image_window_set_aux_info:         # @gimp_image_window_set_aux_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp194:
	.cfi_def_cfa_offset 16
.Ltmp195:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp196:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$-2147483648, -36(%rbp) # imm = 0xFFFFFFFF80000000
	movl	$-2147483648, -40(%rbp) # imm = 0xFFFFFFFF80000000
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB63_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB63_8
.LBB63_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB63_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB63_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB63_7
.LBB63_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB63_7:                               # %if.end
	jmp	.LBB63_8
.LBB63_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB63_10
# BB#9:                                 # %if.then.8
	jmp	.LBB63_11
.LBB63_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_set_aux_info, %rsi
	movabsq	$.L.str.58, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB63_49
.LBB63_11:                              # %if.end.10
	jmp	.LBB63_12
.LBB63_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB63_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB63_36
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB63_13 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.60, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB63_16
# BB#15:                                # %if.then.18
                                        #   in Loop: Header=BB63_13 Depth=1
	leaq	-36(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB63_27
.LBB63_16:                              # %if.else.19
                                        #   in Loop: Header=BB63_13 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.61, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB63_18
# BB#17:                                # %if.then.23
                                        #   in Loop: Header=BB63_13 Depth=1
	leaq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB63_26
.LBB63_18:                              # %if.else.24
                                        #   in Loop: Header=BB63_13 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.65, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB63_20
# BB#19:                                # %if.then.28
                                        #   in Loop: Header=BB63_13 Depth=1
	leaq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB63_25
.LBB63_20:                              # %if.else.29
                                        #   in Loop: Header=BB63_13 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.62, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB63_24
# BB#21:                                # %if.then.33
                                        #   in Loop: Header=BB63_13 Depth=1
	movabsq	$.L.str.63, %rsi
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	jne	.LBB63_23
# BB#22:                                # %if.then.36
                                        #   in Loop: Header=BB63_13 Depth=1
	movl	$1, -48(%rbp)
.LBB63_23:                              # %if.end.37
                                        #   in Loop: Header=BB63_13 Depth=1
	jmp	.LBB63_24
.LBB63_24:                              # %if.end.38
                                        #   in Loop: Header=BB63_13 Depth=1
	jmp	.LBB63_25
.LBB63_25:                              # %if.end.39
                                        #   in Loop: Header=BB63_13 Depth=1
	jmp	.LBB63_26
.LBB63_26:                              # %if.end.40
                                        #   in Loop: Header=BB63_13 Depth=1
	jmp	.LBB63_27
.LBB63_27:                              # %if.end.41
                                        #   in Loop: Header=BB63_13 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB63_29
# BB#28:                                # %if.then.43
                                        #   in Loop: Header=BB63_13 Depth=1
	movabsq	$.L.str.59, %rsi
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-88(%rbp), %rdx
	movb	$0, %al
	callq	__isoc99_sscanf
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB63_29:                              # %if.end.46
                                        #   in Loop: Header=BB63_13 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.65, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB63_31
# BB#30:                                # %if.then.50
                                        #   in Loop: Header=BB63_13 Depth=1
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	subl	(%rcx), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB63_31:                              # %if.end.51
                                        #   in Loop: Header=BB63_13 Depth=1
	jmp	.LBB63_32
.LBB63_32:                              # %for.inc
                                        #   in Loop: Header=BB63_13 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB63_34
# BB#33:                                # %cond.true
                                        #   in Loop: Header=BB63_13 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB63_35
.LBB63_34:                              # %cond.false
                                        #   in Loop: Header=BB63_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB63_35
.LBB63_35:                              # %cond.end
                                        #   in Loop: Header=BB63_13 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB63_13
.LBB63_36:                              # %for.end
	cmpl	$-2147483648, -36(%rbp) # imm = 0xFFFFFFFF80000000
	je	.LBB63_39
# BB#37:                                # %land.lhs.true.54
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_paned_get_position
	cmpl	-36(%rbp), %eax
	je	.LBB63_39
# BB#38:                                # %if.then.59
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_paned_set_position
	movl	$1, -44(%rbp)
.LBB63_39:                              # %if.end.63
	cmpl	$-2147483648, -40(%rbp) # imm = 0xFFFFFFFF80000000
	je	.LBB63_46
# BB#40:                                # %land.lhs.true.65
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_paned_get_position
	cmpl	-40(%rbp), %eax
	je	.LBB63_46
# BB#41:                                # %if.then.70
	cmpl	$0, -44(%rbp)
	jne	.LBB63_43
# BB#42:                                # %lor.lhs.false
	cmpl	$0, -40(%rbp)
	jle	.LBB63_44
.LBB63_43:                              # %if.then.73
	movabsq	$.L.str.16, %rsi
	movabsq	$gimp_image_window_set_right_docks_width, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$1, %r9d
	movq	-24(%rbp), %rdx
	movq	80(%rdx), %rdx
	movslq	-40(%rbp), %rcx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB63_45
.LBB63_44:                              # %if.else.76
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	subl	-40(%rbp), %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_paned_set_position
.LBB63_45:                              # %if.end.81
	jmp	.LBB63_46
.LBB63_46:                              # %if.end.82
	cmpl	$0, -48(%rbp)
	je	.LBB63_48
# BB#47:                                # %if.then.84
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_maximize
	jmp	.LBB63_49
.LBB63_48:                              # %if.else.87
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_unmaximize
.LBB63_49:                              # %if.end.90
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	gimp_image_window_set_aux_info, .Lfunc_end63-gimp_image_window_set_aux_info
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_set_right_docks_width,@function
gimp_image_window_set_right_docks_width: # @gimp_image_window_set_right_docks_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp197:
	.cfi_def_cfa_offset 16
.Ltmp198:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp199:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	%edx, %eax
	movl	%eax, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_paned_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB64_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB64_8
.LBB64_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB64_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB64_6
# BB#5:                                 # %if.then.4
	movl	$1, -52(%rbp)
	jmp	.LBB64_7
.LBB64_6:                               # %if.else.5
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB64_7:                               # %if.end
	jmp	.LBB64_8
.LBB64_8:                               # %if.end.7
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB64_10
# BB#9:                                 # %if.then.9
	jmp	.LBB64_11
.LBB64_10:                              # %if.else.10
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_window_set_right_docks_width, %rsi
	movabsq	$.L.str.66, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB64_16
.LBB64_11:                              # %if.end.11
	jmp	.LBB64_12
.LBB64_12:                              # %do.end
	cmpl	$0, -28(%rbp)
	jle	.LBB64_14
# BB#13:                                # %if.then.14
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	subl	-28(%rbp), %ecx
	movl	%ecx, %esi
	callq	gtk_paned_set_position
	jmp	.LBB64_15
.LBB64_14:                              # %if.else.16
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	subl	-28(%rbp), %eax
	movl	%eax, %esi
	callq	gtk_paned_set_position
.LBB64_15:                              # %if.end.18
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_image_window_set_right_docks_width, %rdx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB64_16:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	gimp_image_window_set_right_docks_width, .Lfunc_end64-gimp_image_window_set_right_docks_width
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_window_shell_close_button_callback,@function
gimp_image_window_shell_close_button_callback: # @gimp_image_window_shell_close_button_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp200:
	.cfi_def_cfa_offset 16
.Ltmp201:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp202:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB65_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_close
.LBB65_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	gimp_image_window_shell_close_button_callback, .Lfunc_end65-gimp_image_window_shell_close_button_callback
	.cfi_endproc

	.type	gimp_image_window_get_type.g_define_type_id__volatile,@object # @gimp_image_window_get_type.g_define_type_id__volatile
	.local	gimp_image_window_get_type.g_define_type_id__volatile
	.comm	gimp_image_window_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpImageWindow"
	.size	.L.str, 16

	.type	gimp_image_window_get_type.g_implement_interface_info,@object # @gimp_image_window_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_image_window_get_type.g_implement_interface_info:
	.quad	gimp_image_window_dock_container_iface_init
	.quad	0
	.quad	0
	.size	gimp_image_window_get_type.g_implement_interface_info, 24

	.type	gimp_image_window_get_type.g_implement_interface_info.1,@object # @gimp_image_window_get_type.g_implement_interface_info.1
	.align	8
gimp_image_window_get_type.g_implement_interface_info.1:
	.quad	gimp_image_window_session_managed_iface_init
	.quad	0
	.quad	0
	.size	gimp_image_window_get_type.g_implement_interface_info.1, 24

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Gimp-Display"
	.size	.L.str.2, 13

	.type	.L__func__.gimp_image_window_new,@object # @__func__.gimp_image_window_new
.L__func__.gimp_image_window_new:
	.asciz	"gimp_image_window_new"
	.size	.L__func__.gimp_image_window_new, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_IMAGE (image) || image == NULL"
	.size	.L.str.4, 39

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_MENU_FACTORY (menu_factory)"
	.size	.L.str.5, 36

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_DIALOG_FACTORY (dialog_factory)"
	.size	.L.str.6, 40

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"menu-factory"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"dialog-factory"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"window-position"
	.size	.L.str.10, 16

	.type	.L__func__.gimp_image_window_destroy,@object # @__func__.gimp_image_window_destroy
.L__func__.gimp_image_window_destroy:
	.asciz	"gimp_image_window_destroy"
	.size	.L__func__.gimp_image_window_destroy, 26

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_IS_IMAGE_WINDOW (window)"
	.size	.L.str.11, 30

	.type	.L__func__.gimp_image_window_get_ui_manager,@object # @__func__.gimp_image_window_get_ui_manager
.L__func__.gimp_image_window_get_ui_manager:
	.asciz	"gimp_image_window_get_ui_manager"
	.size	.L__func__.gimp_image_window_get_ui_manager, 33

	.type	.L__func__.gimp_image_window_get_left_docks,@object # @__func__.gimp_image_window_get_left_docks
.L__func__.gimp_image_window_get_left_docks:
	.asciz	"gimp_image_window_get_left_docks"
	.size	.L__func__.gimp_image_window_get_left_docks, 33

	.type	.L__func__.gimp_image_window_get_right_docks,@object # @__func__.gimp_image_window_get_right_docks
.L__func__.gimp_image_window_get_right_docks:
	.asciz	"gimp_image_window_get_right_docks"
	.size	.L__func__.gimp_image_window_get_right_docks, 34

	.type	.L__func__.gimp_image_window_add_shell,@object # @__func__.gimp_image_window_add_shell
.L__func__.gimp_image_window_add_shell:
	.asciz	"gimp_image_window_add_shell"
	.size	.L__func__.gimp_image_window_add_shell, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.12, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"g_list_find (private->shells, shell) == NULL"
	.size	.L.str.13, 45

	.type	.L__func__.gimp_image_window_get_shell,@object # @__func__.gimp_image_window_get_shell
.L__func__.gimp_image_window_get_shell:
	.asciz	"gimp_image_window_get_shell"
	.size	.L__func__.gimp_image_window_get_shell, 28

	.type	.L__func__.gimp_image_window_remove_shell,@object # @__func__.gimp_image_window_remove_shell
.L__func__.gimp_image_window_remove_shell:
	.asciz	"gimp_image_window_remove_shell"
	.size	.L__func__.gimp_image_window_remove_shell, 31

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"g_list_find (private->shells, shell) != NULL"
	.size	.L.str.14, 45

	.type	.L__func__.gimp_image_window_get_n_shells,@object # @__func__.gimp_image_window_get_n_shells
.L__func__.gimp_image_window_get_n_shells:
	.asciz	"gimp_image_window_get_n_shells"
	.size	.L__func__.gimp_image_window_get_n_shells, 31

	.type	.L__func__.gimp_image_window_set_active_shell,@object # @__func__.gimp_image_window_set_active_shell
.L__func__.gimp_image_window_set_active_shell:
	.asciz	"gimp_image_window_set_active_shell"
	.size	.L__func__.gimp_image_window_set_active_shell, 35

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"g_list_find (private->shells, shell)"
	.size	.L.str.15, 37

	.type	.L__func__.gimp_image_window_get_active_shell,@object # @__func__.gimp_image_window_get_active_shell
.L__func__.gimp_image_window_get_active_shell:
	.asciz	"gimp_image_window_get_active_shell"
	.size	.L__func__.gimp_image_window_get_active_shell, 35

	.type	.L__func__.gimp_image_window_set_fullscreen,@object # @__func__.gimp_image_window_set_fullscreen
.L__func__.gimp_image_window_set_fullscreen:
	.asciz	"gimp_image_window_set_fullscreen"
	.size	.L__func__.gimp_image_window_set_fullscreen, 33

	.type	.L__func__.gimp_image_window_get_fullscreen,@object # @__func__.gimp_image_window_get_fullscreen
.L__func__.gimp_image_window_get_fullscreen:
	.asciz	"gimp_image_window_get_fullscreen"
	.size	.L__func__.gimp_image_window_get_fullscreen, 33

	.type	.L__func__.gimp_image_window_set_show_menubar,@object # @__func__.gimp_image_window_set_show_menubar
.L__func__.gimp_image_window_set_show_menubar:
	.asciz	"gimp_image_window_set_show_menubar"
	.size	.L__func__.gimp_image_window_set_show_menubar, 35

	.type	.L__func__.gimp_image_window_get_show_menubar,@object # @__func__.gimp_image_window_get_show_menubar
.L__func__.gimp_image_window_get_show_menubar:
	.asciz	"gimp_image_window_get_show_menubar"
	.size	.L__func__.gimp_image_window_get_show_menubar, 35

	.type	.L__func__.gimp_image_window_is_iconified,@object # @__func__.gimp_image_window_is_iconified
.L__func__.gimp_image_window_is_iconified:
	.asciz	"gimp_image_window_is_iconified"
	.size	.L__func__.gimp_image_window_is_iconified, 31

	.type	.L__func__.gimp_image_window_is_maximized,@object # @__func__.gimp_image_window_is_maximized
.L__func__.gimp_image_window_is_maximized:
	.asciz	"gimp_image_window_is_maximized"
	.size	.L__func__.gimp_image_window_is_maximized, 31

	.type	.L__func__.gimp_image_window_has_toolbox,@object # @__func__.gimp_image_window_has_toolbox
.L__func__.gimp_image_window_has_toolbox:
	.asciz	"gimp_image_window_has_toolbox"
	.size	.L__func__.gimp_image_window_has_toolbox, 30

	.type	.L__func__.gimp_image_window_shrink_wrap,@object # @__func__.gimp_image_window_shrink_wrap
.L__func__.gimp_image_window_shrink_wrap:
	.asciz	"gimp_image_window_shrink_wrap"
	.size	.L__func__.gimp_image_window_shrink_wrap, 30

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"size-allocate"
	.size	.L.str.16, 14

	.type	.L__func__.gimp_image_window_update_tabs,@object # @__func__.gimp_image_window_update_tabs
.L__func__.gimp_image_window_update_tabs:
	.asciz	"gimp_image_window_update_tabs"
	.size	.L__func__.gimp_image_window_update_tabs, 30

	.type	gimp_image_window_parent_class,@object # @gimp_image_window_parent_class
	.local	gimp_image_window_parent_class
	.comm	gimp_image_window_parent_class,8,8
	.type	GimpImageWindow_private_offset,@object # @GimpImageWindow_private_offset
	.local	GimpImageWindow_private_offset
	.comm	GimpImageWindow_private_offset,4,4
	.type	image_window_rc_style,@object # @image_window_rc_style
	.section	.rodata,"a",@progbits
	.align	16
image_window_rc_style:
	.asciz	"style \"fullscreen-menubar-style\"\n{\n  GtkMenuBar::shadow-type      = none\n  GtkMenuBar::internal-padding = 0\n}\nwidget \"*.gimp-menubar-fullscreen\" style \"fullscreen-menubar-style\"\n"
	.size	image_window_rc_style, 179

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"gimpimagewindow.c"
	.size	.L.str.17, 18

	.type	.L__func__.gimp_image_window_constructed,@object # @__func__.gimp_image_window_constructed
.L__func__.gimp_image_window_constructed:
	.asciz	"gimp_image_window_constructed"
	.size	.L__func__.gimp_image_window_constructed, 30

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GIMP_IS_UI_MANAGER (private->menubar_manager)"
	.size	.L.str.18, 46

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"dock-window-added"
	.size	.L.str.19, 18

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"dock-window-removed"
	.size	.L.str.20, 20

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"show-tooltip"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"hide-tooltip"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"/image-menubar"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"can-activate-accel"
	.size	.L.str.24, 19

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"button-press-event"
	.size	.L.str.25, 19

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"button-release-event"
	.size	.L.str.26, 21

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"key-press-event"
	.size	.L.str.27, 16

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"switch-page"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"page-removed"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"notify::single-window-mode"
	.size	.L.str.30, 27

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"notify::hide-docks"
	.size	.L.str.31, 19

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"menu-tooltip"
	.size	.L.str.32, 13

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%s"
	.size	.L.str.33, 3

	.type	.L__func__.gimp_image_window_switch_page,@object # @__func__.gimp_image_window_switch_page
.L__func__.gimp_image_window_switch_page:
	.asciz	"gimp_image_window_switch_page"
	.size	.L__func__.gimp_image_window_switch_page, 30

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"GimpImageWindow %p, private->active_shell = %p; \n"
	.size	.L.str.34, 50

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"notify::image"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"scaled"
	.size	.L.str.36, 7

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"notify::title"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"notify::icon"
	.size	.L.str.38, 13

	.type	.L__func__.gimp_image_window_page_removed,@object # @__func__.gimp_image_window_page_removed
.L__func__.gimp_image_window_page_removed:
	.asciz	"gimp_image_window_page_removed"
	.size	.L__func__.gimp_image_window_page_removed, 31

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"single-window-mode"
	.size	.L.str.39, 19

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"hide-docks"
	.size	.L.str.40, 11

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp-single-image-window"
	.size	.L.str.41, 25

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-empty-image-window"
	.size	.L.str.42, 24

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"<Image>"
	.size	.L.str.43, 8

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.44, 54

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"property"
	.size	.L.str.45, 9

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"file"
	.size	.L.str.46, 5

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"file-quit"
	.size	.L.str.47, 10

	.type	.L__func__.gimp_image_window_window_state_event,@object # @__func__.gimp_image_window_window_state_event
.L__func__.gimp_image_window_window_state_event:
	.asciz	"gimp_image_window_window_state_event"
	.size	.L__func__.gimp_image_window_window_state_event, 37

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Image window '%s' [%p] set fullscreen %s"
	.size	.L.str.48, 41

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"TRUE"
	.size	.L.str.49, 5

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"FALSE"
	.size	.L.str.50, 6

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"gimp-menubar-fullscreen"
	.size	.L.str.51, 24

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Image window '%s' [%p] set %s"
	.size	.L.str.52, 30

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"iconified"
	.size	.L.str.53, 10

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"uniconified"
	.size	.L.str.54, 12

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"No displays visible any longer"
	.size	.L.str.55, 31

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"gimp-image-window"
	.size	.L.str.56, 18

	.type	.L__func__.gimp_image_window_get_docks,@object # @__func__.gimp_image_window_get_docks
.L__func__.gimp_image_window_get_docks:
	.asciz	"gimp_image_window_get_docks"
	.size	.L__func__.gimp_image_window_get_docks, 28

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"GIMP_IS_IMAGE_WINDOW (dock_container)"
	.size	.L.str.57, 38

	.type	.L__func__.gimp_image_window_dock_container_get_ui_manager,@object # @__func__.gimp_image_window_dock_container_get_ui_manager
.L__func__.gimp_image_window_dock_container_get_ui_manager:
	.asciz	"gimp_image_window_dock_container_get_ui_manager"
	.size	.L__func__.gimp_image_window_dock_container_get_ui_manager, 48

	.type	.L__func__.gimp_image_window_add_dock,@object # @__func__.gimp_image_window_add_dock
.L__func__.gimp_image_window_add_dock:
	.asciz	"gimp_image_window_add_dock"
	.size	.L__func__.gimp_image_window_add_dock, 27

	.type	.L__func__.gimp_image_window_get_dock_side,@object # @__func__.gimp_image_window_get_dock_side
.L__func__.gimp_image_window_get_dock_side:
	.asciz	"gimp_image_window_get_dock_side"
	.size	.L__func__.gimp_image_window_get_dock_side, 32

	.type	.L__func__.gimp_image_window_get_aux_info,@object # @__func__.gimp_image_window_get_aux_info
.L__func__.gimp_image_window_get_aux_info:
	.asciz	"gimp_image_window_get_aux_info"
	.size	.L__func__.gimp_image_window_get_aux_info, 31

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"GIMP_IS_IMAGE_WINDOW (session_managed)"
	.size	.L.str.58, 39

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"%d"
	.size	.L.str.59, 3

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"left-docks-width"
	.size	.L.str.60, 17

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"right-docks-width"
	.size	.L.str.61, 18

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"maximized"
	.size	.L.str.62, 10

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"yes"
	.size	.L.str.63, 4

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"no"
	.size	.L.str.64, 3

	.type	.L__func__.gimp_image_window_set_aux_info,@object # @__func__.gimp_image_window_set_aux_info
.L__func__.gimp_image_window_set_aux_info:
	.asciz	"gimp_image_window_set_aux_info"
	.size	.L__func__.gimp_image_window_set_aux_info, 31

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"right-docks-position"
	.size	.L.str.65, 21

	.type	.L__func__.gimp_image_window_set_right_docks_width,@object # @__func__.gimp_image_window_set_right_docks_width
.L__func__.gimp_image_window_set_right_docks_width:
	.asciz	"gimp_image_window_set_right_docks_width"
	.size	.L__func__.gimp_image_window_set_right_docks_width, 40

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"GTK_IS_PANED (paned)"
	.size	.L.str.66, 21

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"gimp-close"
	.size	.L.str.67, 11

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"clicked"
	.size	.L.str.68, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
