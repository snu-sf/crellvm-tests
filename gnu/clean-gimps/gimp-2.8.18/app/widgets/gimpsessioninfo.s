	.text
	.file	"gimpsessioninfo.bc"
	.globl	gimp_session_info_get_type
	.align	16, 0x90
	.type	gimp_session_info_get_type,@function
gimp_session_info_get_type:             # @gimp_session_info_get_type
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
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_session_info_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_session_info_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_object_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$168, %edx
	movabsq	$gimp_session_info_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_session_info_init, %rcx
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
	callq	gimp_config_interface_get_type
	movabsq	$gimp_session_info_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_session_info_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_session_info_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_session_info_get_type, .Lfunc_end0-gimp_session_info_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_session_info_class_intern_init,@function
gimp_session_info_class_intern_init:    # @gimp_session_info_class_intern_init
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
	movq	%rax, gimp_session_info_parent_class
	cmpl	$0, GimpSessionInfo_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpSessionInfo_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_session_info_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_session_info_class_intern_init, .Lfunc_end1-gimp_session_info_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_session_info_init,@function
gimp_session_info_init:                 # @gimp_session_info_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_session_info_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$-1, 36(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_session_info_init, .Lfunc_end2-gimp_session_info_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_session_info_config_iface_init,@function
gimp_session_info_config_iface_init:    # @gimp_session_info_config_iface_init
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
	movabsq	$gimp_session_info_deserialize, %rax
	movabsq	$gimp_session_info_serialize, %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, 16(%rdi)
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_session_info_config_iface_init, .Lfunc_end3-gimp_session_info_config_iface_init
	.cfi_endproc

	.globl	gimp_session_info_new
	.align	16, 0x90
	.type	gimp_session_info_new,@function
gimp_session_info_new:                  # @gimp_session_info_new
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
	callq	gimp_session_info_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_session_info_new, .Lfunc_end4-gimp_session_info_new
	.cfi_endproc

	.globl	gimp_session_info_restore
	.align	16, 0x90
	.type	gimp_session_info_restore,@function
gimp_session_info_restore:              # @gimp_session_info_restore
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_session_info_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_restore, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_42
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB5_20
.LBB5_15:                               # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB5_19:                               # %if.end.31
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.35
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_restore, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_42
.LBB5_23:                               # %if.end.37
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gdk_display_get_default
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$-1, 36(%rax)
	je	.LBB5_26
# BB#25:                                # %if.then.43
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	36(%rax), %esi
	callq	gdk_display_get_screen
	movq	%rax, -40(%rbp)
.LBB5_26:                               # %if.end.47
	cmpq	$0, -40(%rbp)
	jne	.LBB5_28
# BB#27:                                # %if.then.49
	movq	-32(%rbp), %rdi
	callq	gdk_display_get_default_screen
	movq	%rax, -40(%rbp)
.LBB5_28:                               # %if.end.51
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$-1, 36(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB5_31
# BB#29:                                # %land.lhs.true.57
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	cmpq	$0, 48(%rax)
	je	.LBB5_31
# BB#30:                                # %if.then.61
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	*%rax
	movq	%rax, -24(%rbp)
.LBB5_31:                               # %if.end.66
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_session_managed_interface_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB5_33
# BB#32:                                # %if.then.75
	movl	$0, -116(%rbp)
	jmp	.LBB5_38
.LBB5_33:                               # %if.else.76
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_36
# BB#34:                                # %land.lhs.true.79
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB5_36
# BB#35:                                # %if.then.83
	movl	$1, -116(%rbp)
	jmp	.LBB5_37
.LBB5_36:                               # %if.else.84
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB5_37:                               # %if.end.86
	jmp	.LBB5_38
.LBB5_38:                               # %if.end.87
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB5_41
# BB#39:                                # %land.lhs.true.90
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 40(%rax)
	je	.LBB5_41
# BB#40:                                # %if.then.93
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_session_managed_interface_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	40(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_session_managed_set_aux_info
.LBB5_41:                               # %if.end.98
	movl	$32, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-48(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-48(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$gimp_session_info_restore_docks, %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_idle_add
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	g_object_unref
.LBB5_42:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_session_info_restore, .Lfunc_end5-gimp_session_info_restore
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_session_info_restore_docks,@function
gimp_session_info_restore_docks:        # @gimp_session_info_restore_docks
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -56(%rbp)
	callq	gimp_dock_container_interface_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB6_7
.LBB6_2:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_5
# BB#3:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB6_5
# BB#4:                                 # %if.then.7
	movl	$1, -68(%rbp)
	jmp	.LBB6_6
.LBB6_5:                                # %if.else.8
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB6_6:                                # %if.end
	jmp	.LBB6_7
.LBB6_7:                                # %if.end.10
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB6_32
# BB#8:                                 # %if.then.12
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB6_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB6_29
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_dock_container_interface_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_session_info_dock_restore
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB6_24
# BB#11:                                # %land.lhs.true.23
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-80(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB6_24
# BB#12:                                # %if.then.25
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-88(%rbp), %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gtk_paned_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB6_14
# BB#13:                                # %if.then.36
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	$0, -116(%rbp)
	jmp	.LBB6_19
.LBB6_14:                               # %if.else.37
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_17
# BB#15:                                # %land.lhs.true.40
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB6_17
# BB#16:                                # %if.then.44
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	$1, -116(%rbp)
	jmp	.LBB6_18
.LBB6_17:                               # %if.else.45
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB6_18:                               # %if.end.47
                                        #   in Loop: Header=BB6_9 Depth=1
	jmp	.LBB6_19
.LBB6_19:                               # %if.end.48
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB6_23
# BB#20:                                # %if.then.51
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -128(%rbp)
	movq	-88(%rbp), %rax
	movq	-128(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_child2
	movq	-184(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB6_22
# BB#21:                                # %if.then.57
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-128(%rbp), %rdi
	movq	-80(%rbp), %rax
	movl	12(%rax), %esi
	callq	gtk_paned_set_position
.LBB6_22:                               # %if.end.59
                                        #   in Loop: Header=BB6_9 Depth=1
	jmp	.LBB6_23
.LBB6_23:                               # %if.end.60
                                        #   in Loop: Header=BB6_9 Depth=1
	jmp	.LBB6_24
.LBB6_24:                               # %if.end.61
                                        #   in Loop: Header=BB6_9 Depth=1
	jmp	.LBB6_25
.LBB6_25:                               # %for.inc
                                        #   in Loop: Header=BB6_9 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB6_27
# BB#26:                                # %cond.true
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB6_28
.LBB6_27:                               # %cond.false
                                        #   in Loop: Header=BB6_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB6_28
.LBB6_28:                               # %cond.end
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB6_9
.LBB6_29:                               # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
# BB#30:                                # %do.body
	movl	$32, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#31:                                # %do.end
	jmp	.LBB6_32
.LBB6_32:                               # %if.end.63
	movq	-16(%rbp), %rdi
	callq	gimp_session_info_clear_info
	xorl	%eax, %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_session_info_restore_docks, .Lfunc_end6-gimp_session_info_restore_docks
	.cfi_endproc

	.globl	gimp_session_info_apply_geometry
	.align	16, 0x90
	.type	gimp_session_info_apply_geometry,@function
gimp_session_info_apply_geometry:       # @gimp_session_info_apply_geometry
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_session_info_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_apply_geometry, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_75
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -104(%rbp)
	callq	gtk_window_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB7_15
# BB#14:                                # %if.then.20
	movl	$0, -116(%rbp)
	jmp	.LBB7_20
.LBB7_15:                               # %if.else.21
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_18
# BB#16:                                # %land.lhs.true.24
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB7_18
# BB#17:                                # %if.then.28
	movl	$1, -116(%rbp)
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.29
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB7_19:                               # %if.end.31
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.32
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.35
	jmp	.LBB7_23
.LBB7_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_apply_geometry, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_75
.LBB7_23:                               # %if.end.37
	jmp	.LBB7_24
.LBB7_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_get_screen
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_session_info_get_remember_size
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -145(%rbp)         # 1-byte Spill
	je	.LBB7_27
# BB#25:                                # %land.lhs.true.44
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	cmpl	$0, 16(%rdx)
	movb	%cl, -145(%rbp)         # 1-byte Spill
	jle	.LBB7_27
# BB#26:                                # %land.rhs
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 20(%rax)
	setg	%cl
	movb	%cl, -145(%rbp)         # 1-byte Spill
.LBB7_27:                               # %land.end
	movb	-145(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB7_29
# BB#28:                                # %if.then.50
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %esi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %edx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	20(%rax), %r8d
	callq	gimp_session_info_get_appropriate_monitor
	movl	%eax, -68(%rbp)
	jmp	.LBB7_30
.LBB7_29:                               # %if.else.58
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %esi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %edx
	callq	gdk_screen_get_monitor_at_point
	movl	%eax, -68(%rbp)
.LBB7_30:                               # %if.end.64
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gdk_screen_get_monitor_geometry
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	8(%rdx), %esi
	movl	-32(%rbp), %eax
	addl	-24(%rbp), %eax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	cmpl	$0, 16(%rdx)
	movl	%esi, -152(%rbp)        # 4-byte Spill
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jle	.LBB7_32
# BB#31:                                # %cond.true
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	jmp	.LBB7_33
.LBB7_32:                               # %cond.false
	movl	$128, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB7_33
.LBB7_33:                               # %cond.end
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	-156(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	-152(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jle	.LBB7_38
# BB#34:                                # %cond.true.75
	movl	-32(%rbp), %eax
	addl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	$0, 16(%rcx)
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jle	.LBB7_36
# BB#35:                                # %cond.true.82
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	jmp	.LBB7_37
.LBB7_36:                               # %cond.false.85
	movl	$128, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB7_37
.LBB7_37:                               # %cond.end.86
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	-164(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	jmp	.LBB7_42
.LBB7_38:                               # %cond.false.89
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %ecx
	cmpl	-32(%rbp), %ecx
	jge	.LBB7_40
# BB#39:                                # %cond.true.94
	movl	-32(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB7_41
.LBB7_40:                               # %cond.false.96
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
.LBB7_41:                               # %cond.end.99
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB7_42:                               # %cond.end.101
	movl	-172(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, 8(%rcx)
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	12(%rcx), %eax
	movl	-28(%rbp), %edx
	addl	-20(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	$0, 20(%rcx)
	movl	%eax, -180(%rbp)        # 4-byte Spill
	movl	%edx, -184(%rbp)        # 4-byte Spill
	jle	.LBB7_44
# BB#43:                                # %cond.true.113
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	jmp	.LBB7_45
.LBB7_44:                               # %cond.false.116
	movl	$128, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB7_45
.LBB7_45:                               # %cond.end.117
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	-184(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	-180(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jle	.LBB7_50
# BB#46:                                # %cond.true.121
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	$0, 20(%rcx)
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jle	.LBB7_48
# BB#47:                                # %cond.true.128
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	jmp	.LBB7_49
.LBB7_48:                               # %cond.false.131
	movl	$128, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB7_49
.LBB7_49:                               # %cond.end.132
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	-192(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -200(%rbp)        # 4-byte Spill
	jmp	.LBB7_54
.LBB7_50:                               # %cond.false.135
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jge	.LBB7_52
# BB#51:                                # %cond.true.140
	movl	-28(%rbp), %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB7_53
.LBB7_52:                               # %cond.false.142
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
.LBB7_53:                               # %cond.end.145
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB7_54:                               # %cond.end.147
	movl	-200(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, 12(%rcx)
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpl	$0, 24(%rcx)
	je	.LBB7_57
# BB#55:                                # %land.lhs.true.153
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 28(%rax)
	je	.LBB7_57
# BB#56:                                # %if.then.156
	movabsq	$.L.str.5, %rsi
	movl	$32, %eax
	movl	%eax, %edx
	leaq	-64(%rbp), %rdi
	callq	g_strlcpy
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB7_64
.LBB7_57:                               # %if.else.158
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 24(%rax)
	je	.LBB7_59
# BB#58:                                # %if.then.162
	movl	$32, %eax
	movl	%eax, %esi
	movabsq	$.L.str.6, %rdx
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	12(%rcx), %ecx
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB7_63
.LBB7_59:                               # %if.else.167
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 28(%rax)
	je	.LBB7_61
# BB#60:                                # %if.then.171
	movl	$32, %eax
	movl	%eax, %esi
	movabsq	$.L.str.7, %rdx
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	8(%rcx), %ecx
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB7_62
.LBB7_61:                               # %if.else.176
	movl	$32, %eax
	movl	%eax, %esi
	movabsq	$.L.str.8, %rdx
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	8(%rcx), %ecx
	movq	-8(%rbp), %r8
	movq	32(%r8), %r8
	movl	12(%r8), %r8d
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB7_62:                               # %if.end.183
	jmp	.LBB7_63
.LBB7_63:                               # %if.end.184
	jmp	.LBB7_64
.LBB7_64:                               # %if.end.185
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_parse_geometry
	cmpl	$0, -72(%rbp)
	movl	%eax, -244(%rbp)        # 4-byte Spill
	je	.LBB7_66
# BB#65:                                # %if.then.193
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movl	16(%rsi), %esi
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	20(%rdi), %edx
	movq	%rax, %rdi
	callq	gtk_window_set_default_size
.LBB7_66:                               # %if.end.202
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -128(%rbp)
	callq	gtk_dialog_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB7_68
# BB#67:                                # %if.then.213
	movl	$0, -140(%rbp)
	jmp	.LBB7_73
.LBB7_68:                               # %if.else.214
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_71
# BB#69:                                # %land.lhs.true.217
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB7_71
# BB#70:                                # %if.then.221
	movl	$1, -140(%rbp)
	jmp	.LBB7_72
.LBB7_71:                               # %if.else.222
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB7_72:                               # %if.end.224
	jmp	.LBB7_73
.LBB7_73:                               # %if.end.225
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB7_75
# BB#74:                                # %if.then.228
	movabsq	$.L.str.9, %rsi
	movabsq	$gimp_session_info_dialog_show, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB7_75:                               # %if.end.232
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_session_info_apply_geometry, .Lfunc_end7-gimp_session_info_apply_geometry
	.cfi_endproc

	.globl	gimp_session_info_get_remember_size
	.align	16, 0x90
	.type	gimp_session_info_get_remember_size,@function
gimp_session_info_get_remember_size:    # @gimp_session_info_get_remember_size
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_session_info_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_get_remember_size, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_17
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_session_info_is_for_dock_window
	movb	$1, %cl
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB8_16
# BB#13:                                # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	cmpq	$0, (%rdx)
	movb	%cl, -42(%rbp)          # 1-byte Spill
	je	.LBB8_15
# BB#14:                                # %land.rhs
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	cmpl	$0, 68(%rax)
	setne	%cl
	movb	%cl, -42(%rbp)          # 1-byte Spill
.LBB8_15:                               # %land.end
	movb	-42(%rbp), %al          # 1-byte Reload
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB8_16:                               # %lor.end
	movb	-41(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB8_17:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_session_info_get_remember_size, .Lfunc_end8-gimp_session_info_get_remember_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_session_info_get_appropriate_monitor,@function
gimp_session_info_get_appropriate_monitor: # @gimp_session_info_get_appropriate_monitor
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	$0, -52(%rbp)
	movl	$-1, -56(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movl	-24(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	movl	-32(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_screen_get_n_monitors
	movl	%eax, -60(%rbp)
	movl	$0, -64(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB9_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-80(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movl	-64(%rbp), %esi
	callq	gdk_screen_get_monitor_geometry
	leaq	-48(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	callq	gdk_rectangle_intersect
	cmpl	$0, %eax
	je	.LBB9_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-72(%rbp), %eax
	imull	-68(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.LBB9_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-72(%rbp), %eax
	imull	-68(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB9_5:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_6
.LBB9_6:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB9_1
.LBB9_7:                                # %for.end
	cmpl	$0, -56(%rbp)
	jl	.LBB9_9
# BB#8:                                 # %if.then.11
	movl	-56(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB9_10
.LBB9_9:                                # %if.else
	movl	$2, %eax
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %ecx
	movl	-40(%rbp), %edx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-84(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	-44(%rbp), %eax
	movl	-36(%rbp), %r8d
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%esi
	movl	-88(%rbp), %r8d         # 4-byte Reload
	addl	%eax, %r8d
	movl	%ecx, %esi
	movl	%r8d, %edx
	callq	gdk_screen_get_monitor_at_point
	movl	%eax, -4(%rbp)
.LBB9_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_session_info_get_appropriate_monitor, .Lfunc_end9-gimp_session_info_get_appropriate_monitor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_session_info_dialog_show,@function
gimp_session_info_dialog_show:          # @gimp_session_info_dialog_show
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movl	8(%rsi), %esi
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	12(%rdi), %edx
	movq	%rax, %rdi
	callq	gtk_window_move
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_session_info_dialog_show, .Lfunc_end10-gimp_session_info_dialog_show
	.cfi_endproc

	.globl	gimp_session_info_read_geometry
	.align	16, 0x90
	.type	gimp_session_info_read_geometry,@function
gimp_session_info_read_geometry:        # @gimp_session_info_read_geometry
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_session_info_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_read_geometry, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_48
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_window_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB11_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB11_20
.LBB11_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB11_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB11_19
.LBB11_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB11_19:                              # %if.end.31
	jmp	.LBB11_20
.LBB11_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB11_22
# BB#21:                                # %if.then.35
	jmp	.LBB11_23
.LBB11_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_read_geometry, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_48
.LBB11_23:                              # %if.end.37
	jmp	.LBB11_24
.LBB11_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB11_38
# BB#25:                                # %if.then.43
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gdk_window_get_root_origin
	xorl	%eax, %eax
	cmpl	-76(%rbp), %eax
	jle	.LBB11_27
# BB#26:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB11_28
.LBB11_27:                              # %cond.false
	movl	-76(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB11_28:                              # %cond.end
	movl	-132(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	%eax, 8(%rdx)
	cmpl	-80(%rbp), %ecx
	jle	.LBB11_30
# BB#29:                                # %cond.true.50
	xorl	%eax, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB11_31
.LBB11_30:                              # %cond.false.51
	movl	-80(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB11_31:                              # %cond.end.52
	movl	-136(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, 12(%rcx)
	movq	-8(%rbp), %rdi
	callq	gimp_session_info_get_remember_size
	cmpl	$0, %eax
	je	.LBB11_36
# BB#32:                                # %if.then.58
	cmpq	$0, -16(%rbp)
	je	.LBB11_34
# BB#33:                                # %if.then.62
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -88(%rbp)
	jmp	.LBB11_35
.LBB11_34:                              # %if.else.65
	leaq	-104(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_get_allocation
	movl	-96(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movl	-92(%rbp), %ecx
	movl	%ecx, -88(%rbp)
.LBB11_35:                              # %if.end.71
	movl	-84(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, 16(%rcx)
	movl	-88(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, 20(%rcx)
	jmp	.LBB11_37
.LBB11_36:                              # %if.else.76
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, 20(%rax)
.LBB11_37:                              # %if.end.81
	jmp	.LBB11_38
.LBB11_38:                              # %if.end.82
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, 32(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_session_info_get_remember_if_open
	cmpl	$0, %eax
	je	.LBB11_44
# BB#39:                                # %if.then.86
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rdi
	movl	$80, %ecx
	movl	%ecx, %esi
	callq	g_type_check_instance_cast
	movl	$.L.str.10, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %ecx
	movl	%ecx, -108(%rbp)
	testl	%ecx, %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	je	.LBB11_40
	jmp	.LBB11_49
.LBB11_49:                              # %if.then.86
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB11_41
	jmp	.LBB11_50
.LBB11_50:                              # %if.then.86
	movl	-140(%rbp), %eax        # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jb	.LBB11_42
	jmp	.LBB11_43
.LBB11_40:                              # %sw.bb
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_get_visible
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%eax, 32(%rdi)
	jmp	.LBB11_43
.LBB11_41:                              # %sw.bb.97
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, 32(%rax)
	jmp	.LBB11_43
.LBB11_42:                              # %sw.bb.100
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$1, 32(%rax)
.LBB11_43:                              # %sw.epilog
	jmp	.LBB11_44
.LBB11_44:                              # %if.end.103
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$-1, 36(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 32(%rax)
	je	.LBB11_48
# BB#45:                                # %if.then.108
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_get_display
	movq	%rax, -120(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_get_screen
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gdk_display_get_default_screen
	movq	-160(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB11_47
# BB#46:                                # %if.then.121
	movq	-128(%rbp), %rdi
	callq	gdk_screen_get_number
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%eax, 36(%rdi)
.LBB11_47:                              # %if.end.125
	jmp	.LBB11_48
.LBB11_48:                              # %if.end.126
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_session_info_read_geometry, .Lfunc_end11-gimp_session_info_read_geometry
	.cfi_endproc

	.globl	gimp_session_info_get_remember_if_open
	.align	16, 0x90
	.type	gimp_session_info_get_remember_if_open,@function
gimp_session_info_get_remember_if_open: # @gimp_session_info_get_remember_if_open
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
	callq	gimp_session_info_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_get_remember_if_open, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_17
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_session_info_is_for_dock_window
	movb	$1, %cl
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB12_16
# BB#13:                                # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	cmpq	$0, (%rdx)
	movb	%cl, -42(%rbp)          # 1-byte Spill
	je	.LBB12_15
# BB#14:                                # %land.rhs
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	cmpl	$0, 72(%rax)
	setne	%cl
	movb	%cl, -42(%rbp)          # 1-byte Spill
.LBB12_15:                              # %land.end
	movb	-42(%rbp), %al          # 1-byte Reload
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB12_16:                              # %lor.end
	movb	-41(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB12_17:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_session_info_get_remember_if_open, .Lfunc_end12-gimp_session_info_get_remember_if_open
	.cfi_endproc

	.globl	gimp_session_info_get_info
	.align	16, 0x90
	.type	gimp_session_info_get_info,@function
gimp_session_info_get_info:             # @gimp_session_info_get_info
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_session_info_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_get_info, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_49
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB13_15
# BB#14:                                # %if.then.20
	movl	$0, -52(%rbp)
	jmp	.LBB13_20
.LBB13_15:                              # %if.else.21
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_18
# BB#16:                                # %land.lhs.true.24
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB13_18
# BB#17:                                # %if.then.28
	movl	$1, -52(%rbp)
	jmp	.LBB13_19
.LBB13_18:                              # %if.else.29
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB13_19:                              # %if.end.31
	jmp	.LBB13_20
.LBB13_20:                              # %if.end.32
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB13_22
# BB#21:                                # %if.then.35
	jmp	.LBB13_23
.LBB13_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_get_info, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_49
.LBB13_23:                              # %if.end.37
	jmp	.LBB13_24
.LBB13_24:                              # %do.end.38
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_session_info_read_geometry
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	%rsi, -64(%rbp)
	callq	gimp_session_managed_interface_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB13_26
# BB#25:                                # %if.then.49
	movl	$0, -76(%rbp)
	jmp	.LBB13_31
.LBB13_26:                              # %if.else.50
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_29
# BB#27:                                # %land.lhs.true.53
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB13_29
# BB#28:                                # %if.then.57
	movl	$1, -76(%rbp)
	jmp	.LBB13_30
.LBB13_29:                              # %if.else.58
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB13_30:                              # %if.end.60
	jmp	.LBB13_31
.LBB13_31:                              # %if.end.61
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB13_33
# BB#32:                                # %if.then.64
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_session_managed_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_session_managed_get_aux_info
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, 40(%rsi)
.LBB13_33:                              # %if.end.71
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_dock_container_interface_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB13_35
# BB#34:                                # %if.then.82
	movl	$0, -100(%rbp)
	jmp	.LBB13_40
.LBB13_35:                              # %if.else.83
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_38
# BB#36:                                # %land.lhs.true.86
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_38
# BB#37:                                # %if.then.90
	movl	$1, -100(%rbp)
	jmp	.LBB13_39
.LBB13_38:                              # %if.else.91
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB13_39:                              # %if.end.93
	jmp	.LBB13_40
.LBB13_40:                              # %if.end.94
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB13_49
# BB#41:                                # %if.then.97
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_dock_container_interface_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_dock_container_get_docks
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB13_42:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB13_48
# BB#43:                                # %for.body
                                        #   in Loop: Header=BB13_42 Depth=1
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -136(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	56(%rax), %rdi
	movq	-136(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_session_info_dock_from_widget
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_append
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, 56(%rsi)
# BB#44:                                # %for.inc
                                        #   in Loop: Header=BB13_42 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB13_46
# BB#45:                                # %cond.true
                                        #   in Loop: Header=BB13_42 Depth=1
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB13_47
.LBB13_46:                              # %cond.false
                                        #   in Loop: Header=BB13_42 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB13_47
.LBB13_47:                              # %cond.end
                                        #   in Loop: Header=BB13_42 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)
	jmp	.LBB13_42
.LBB13_48:                              # %for.end
	movq	-128(%rbp), %rdi
	callq	g_list_free
.LBB13_49:                              # %if.end.117
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_session_info_get_info, .Lfunc_end13-gimp_session_info_get_info
	.cfi_endproc

	.globl	gimp_session_info_get_info_with_widget
	.align	16, 0x90
	.type	gimp_session_info_get_info_with_widget,@function
gimp_session_info_get_info_with_widget: # @gimp_session_info_get_info_with_widget
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_session_info_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_get_info_with_widget, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_25
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	jmp	.LBB14_13
.LBB14_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB14_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB14_20
.LBB14_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB14_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB14_19
.LBB14_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB14_19:                              # %if.end.31
	jmp	.LBB14_20
.LBB14_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB14_22
# BB#21:                                # %if.then.35
	jmp	.LBB14_23
.LBB14_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_get_info_with_widget, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_25
.LBB14_23:                              # %if.end.37
	jmp	.LBB14_24
.LBB14_24:                              # %do.end.38
	movq	-8(%rbp), %rdi
	callq	gimp_session_info_get_widget
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_session_info_set_widget
	movq	-8(%rbp), %rdi
	callq	gimp_session_info_get_info
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_session_info_set_widget
.LBB14_25:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_session_info_get_info_with_widget, .Lfunc_end14-gimp_session_info_get_info_with_widget
	.cfi_endproc

	.globl	gimp_session_info_get_widget
	.align	16, 0x90
	.type	gimp_session_info_get_widget,@function
gimp_session_info_get_widget:           # @gimp_session_info_get_widget
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
	callq	gimp_session_info_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_get_widget, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_13
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB15_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_session_info_get_widget, .Lfunc_end15-gimp_session_info_get_widget
	.cfi_endproc

	.globl	gimp_session_info_set_widget
	.align	16, 0x90
	.type	gimp_session_info_set_widget,@function
gimp_session_info_set_widget:           # @gimp_session_info_set_widget
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_session_info_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_set_widget, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_22
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_dialog_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB16_14
# BB#13:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB16_19
.LBB16_14:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_17
# BB#15:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB16_17
# BB#16:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB16_18
.LBB16_17:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB16_18:                              # %if.end.31
	jmp	.LBB16_19
.LBB16_19:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB16_21
# BB#20:                                # %if.then.35
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_session_info_dialog_show, %rdx
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	48(%rdi), %rdi
	movq	-8(%rbp), %r9
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
.LBB16_21:                              # %if.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 48(%rcx)
.LBB16_22:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_session_info_set_widget, .Lfunc_end16-gimp_session_info_set_widget
	.cfi_endproc

	.globl	gimp_session_info_clear_info
	.align	16, 0x90
	.type	gimp_session_info_clear_info,@function
gimp_session_info_clear_info:           # @gimp_session_info_clear_info
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_session_info_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_clear_info, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_16
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 40(%rax)
	je	.LBB17_14
# BB#13:                                # %if.then.12
	movabsq	$gimp_session_info_aux_free, %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	40(%rcx), %rdi
	movq	%rax, %rsi
	callq	g_list_free_full
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 40(%rax)
.LBB17_14:                              # %if.end.17
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 56(%rax)
	je	.LBB17_16
# BB#15:                                # %if.then.20
	movabsq	$gimp_session_info_dock_free, %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	56(%rcx), %rdi
	movq	%rax, %rsi
	callq	g_list_free_full
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 56(%rax)
.LBB17_16:                              # %if.end.25
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_session_info_clear_info, .Lfunc_end17-gimp_session_info_clear_info
	.cfi_endproc

	.globl	gimp_session_info_is_singleton
	.align	16, 0x90
	.type	gimp_session_info_is_singleton,@function
gimp_session_info_is_singleton:         # @gimp_session_info_is_singleton
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_session_info_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_is_singleton, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_16
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_session_info_is_for_dock_window
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -41(%rbp)          # 1-byte Spill
	jne	.LBB18_15
# BB#13:                                # %land.lhs.true.13
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	cmpq	$0, (%rdx)
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB18_15
# BB#14:                                # %land.rhs
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	cmpl	$0, 60(%rax)
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB18_15:                              # %land.end
	movb	-41(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB18_16:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_session_info_is_singleton, .Lfunc_end18-gimp_session_info_is_singleton
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_session_info_is_for_dock_window,@function
gimp_session_info_is_for_dock_window:   # @gimp_session_info_is_for_dock_window
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
	subq	$48, %rsp
	movb	$1, %al
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	cmpq	$0, (%rdi)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	cmpq	$0, 48(%rdi)
	movb	%al, -41(%rbp)          # 1-byte Spill
	je	.LBB19_9
# BB#1:                                 # %lor.rhs
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.10
	movl	$1, -36(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.11
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.13
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB19_9:                               # %lor.end
	movb	-41(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -16(%rbp)
	cmpl	$0, -12(%rbp)
	movb	%dl, -42(%rbp)          # 1-byte Spill
	je	.LBB19_11
# BB#10:                                # %land.rhs
	cmpl	$0, -16(%rbp)
	setne	%al
	movb	%al, -42(%rbp)          # 1-byte Spill
.LBB19_11:                              # %land.end
	movb	-42(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_session_info_is_for_dock_window, .Lfunc_end19-gimp_session_info_is_for_dock_window
	.cfi_endproc

	.globl	gimp_session_info_is_session_managed
	.align	16, 0x90
	.type	gimp_session_info_is_session_managed,@function
gimp_session_info_is_session_managed:   # @gimp_session_info_is_session_managed
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_session_info_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_is_session_managed, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB20_17
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_session_info_is_for_dock_window
	movb	$1, %cl
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB20_16
# BB#13:                                # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	cmpq	$0, (%rdx)
	movb	%cl, -42(%rbp)          # 1-byte Spill
	je	.LBB20_15
# BB#14:                                # %land.rhs
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	cmpl	$0, 64(%rax)
	setne	%cl
	movb	%cl, -42(%rbp)          # 1-byte Spill
.LBB20_15:                              # %land.end
	movb	-42(%rbp), %al          # 1-byte Reload
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB20_16:                              # %lor.end
	movb	-41(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB20_17:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_session_info_is_session_managed, .Lfunc_end20-gimp_session_info_is_session_managed
	.cfi_endproc

	.globl	gimp_session_info_get_factory_entry
	.align	16, 0x90
	.type	gimp_session_info_get_factory_entry,@function
gimp_session_info_get_factory_entry:    # @gimp_session_info_get_factory_entry
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_session_info_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_get_factory_entry, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB21_13
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB21_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_session_info_get_factory_entry, .Lfunc_end21-gimp_session_info_get_factory_entry
	.cfi_endproc

	.globl	gimp_session_info_set_factory_entry
	.align	16, 0x90
	.type	gimp_session_info_set_factory_entry,@function
gimp_session_info_set_factory_entry:    # @gimp_session_info_set_factory_entry
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_session_info_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.4
	movl	$1, -36(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.5
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.7
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.9
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_set_factory_entry, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_13
.LBB22_11:                              # %if.end.11
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, (%rcx)
.LBB22_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_session_info_set_factory_entry, .Lfunc_end22-gimp_session_info_set_factory_entry
	.cfi_endproc

	.globl	gimp_session_info_get_open
	.align	16, 0x90
	.type	gimp_session_info_get_open,@function
gimp_session_info_get_open:             # @gimp_session_info_get_open
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_session_info_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_get_open, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB23_13
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB23_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_session_info_get_open, .Lfunc_end23-gimp_session_info_get_open
	.cfi_endproc

	.globl	gimp_session_info_get_x
	.align	16, 0x90
	.type	gimp_session_info_get_x,@function
gimp_session_info_get_x:                # @gimp_session_info_get_x
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_session_info_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_get_x, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB24_13
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB24_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_session_info_get_x, .Lfunc_end24-gimp_session_info_get_x
	.cfi_endproc

	.globl	gimp_session_info_get_y
	.align	16, 0x90
	.type	gimp_session_info_get_y,@function
gimp_session_info_get_y:                # @gimp_session_info_get_y
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_session_info_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_get_y, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB25_13
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB25_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_session_info_get_y, .Lfunc_end25-gimp_session_info_get_y
	.cfi_endproc

	.globl	gimp_session_info_get_width
	.align	16, 0x90
	.type	gimp_session_info_get_width,@function
gimp_session_info_get_width:            # @gimp_session_info_get_width
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_session_info_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_get_width, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB26_13
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB26_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_session_info_get_width, .Lfunc_end26-gimp_session_info_get_width
	.cfi_endproc

	.globl	gimp_session_info_get_height
	.align	16, 0x90
	.type	gimp_session_info_get_height,@function
gimp_session_info_get_height:           # @gimp_session_info_get_height
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_session_info_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_get_height, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB27_13
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB27_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_session_info_get_height, .Lfunc_end27-gimp_session_info_get_height
	.cfi_endproc

	.globl	gimp_session_info_class_set_position_accuracy
	.align	16, 0x90
	.type	gimp_session_info_class_set_position_accuracy,@function
gimp_session_info_class_set_position_accuracy: # @gimp_session_info_class_set_position_accuracy
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_session_info_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB28_7
.LBB28_3:                               # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB28_5
# BB#4:                                 # %if.then.1
	movl	$1, -36(%rbp)
	jmp	.LBB28_6
.LBB28_5:                               # %if.else.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_class_is_a
	movl	%eax, -36(%rbp)
.LBB28_6:                               # %if.end
	jmp	.LBB28_7
.LBB28_7:                               # %if.end.4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB28_9
# BB#8:                                 # %if.then.6
	jmp	.LBB28_10
.LBB28_9:                               # %if.else.7
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_class_set_position_accuracy, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB28_12
.LBB28_10:                              # %if.end.8
	jmp	.LBB28_11
.LBB28_11:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 160(%rcx)
.LBB28_12:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_session_info_class_set_position_accuracy, .Lfunc_end28-gimp_session_info_class_set_position_accuracy
	.cfi_endproc

	.globl	gimp_session_info_class_apply_position_accuracy
	.align	16, 0x90
	.type	gimp_session_info_class_apply_position_accuracy,@function
gimp_session_info_class_apply_position_accuracy: # @gimp_session_info_class_apply_position_accuracy
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_session_info_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB29_7
.LBB29_3:                               # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB29_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB29_6
.LBB29_5:                               # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_class_is_a
	movl	%eax, -44(%rbp)
.LBB29_6:                               # %if.end
	jmp	.LBB29_7
.LBB29_7:                               # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB29_9
# BB#8:                                 # %if.then.6
	jmp	.LBB29_10
.LBB29_9:                               # %if.else.7
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_session_info_class_apply_position_accuracy, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB29_14
.LBB29_10:                              # %if.end.8
	jmp	.LBB29_11
.LBB29_11:                              # %do.end
	movq	-16(%rbp), %rax
	cmpl	$0, 160(%rax)
	jle	.LBB29_13
# BB#12:                                # %if.then.10
	movl	$2, %eax
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	160(%rdx), %esi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-56(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	-52(%rbp), %ecx
	movq	-16(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	160(%rdi)
	movl	-60(%rbp), %ecx         # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB29_14
.LBB29_13:                              # %if.end.14
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB29_14:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_session_info_class_apply_position_accuracy, .Lfunc_end29-gimp_session_info_class_apply_position_accuracy
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_session_info_class_init,@function
gimp_session_info_class_init:           # @gimp_session_info_class_init
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movl	$64, %ecx
	movl	%ecx, %esi
	movabsq	$gimp_session_info_get_memsize, %rdi
	movabsq	$gimp_session_info_finalize, %rdx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 152(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_session_info_class_init, .Lfunc_end30-gimp_session_info_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_session_info_finalize,@function
gimp_session_info_finalize:             # @gimp_session_info_finalize
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_session_info_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_session_info_clear_info
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_session_info_set_widget
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_session_info_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_session_info_finalize, .Lfunc_end31-gimp_session_info_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_session_info_get_memsize,@function
gimp_session_info_get_memsize:          # @gimp_session_info_get_memsize
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	gimp_session_info_parent_class, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_session_info_get_memsize, .Lfunc_end32-gimp_session_info_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_session_info_serialize,@function
gimp_session_info_serialize:            # @gimp_session_info_serialize
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_session_info_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB33_3
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB33_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.14, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %rsi
	callq	gimp_config_writer_string
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB33_3:                               # %if.end
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %esi
	callq	gimp_session_info_class_apply_position_accuracy
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	12(%rcx), %esi
	callq	gimp_session_info_class_apply_position_accuracy
	movl	%eax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	16(%rcx), %esi
	callq	gimp_session_info_class_apply_position_accuracy
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	20(%rcx), %esi
	callq	gimp_session_info_class_apply_position_accuracy
	movabsq	$.L.str.15, %rsi
	movl	%eax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_open
	movabsq	$.L.str.16, %rsi
	movq	-16(%rbp), %rdi
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %ecx
	movb	$0, %al
	callq	gimp_config_writer_printf
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_close
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rsi
	cmpl	$0, 16(%rsi)
	jle	.LBB33_6
# BB#4:                                 # %land.lhs.true.18
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 20(%rax)
	jle	.LBB33_6
# BB#5:                                 # %if.then.22
	movabsq	$.L.str.17, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_open
	movabsq	$.L.str.16, %rsi
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movb	$0, %al
	callq	gimp_config_writer_printf
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB33_6:                               # %if.end.23
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 32(%rax)
	je	.LBB33_10
# BB#7:                                 # %if.then.26
	movabsq	$.L.str.18, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rsi
	cmpl	$-1, 36(%rsi)
	je	.LBB33_9
# BB#8:                                 # %if.then.29
	movabsq	$.L.str.19, %rsi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	36(%rax), %edx
	movb	$0, %al
	callq	gimp_config_writer_printf
.LBB33_9:                               # %if.end.32
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB33_10:                              # %if.end.33
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 40(%rax)
	je	.LBB33_12
# BB#11:                                # %if.then.36
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rsi
	callq	gimp_session_info_aux_serialize
.LBB33_12:                              # %if.end.39
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB33_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB33_19
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB33_13 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_session_info_dock_serialize
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB33_13 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB33_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB33_13 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB33_18
.LBB33_17:                              # %cond.false
                                        #   in Loop: Header=BB33_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB33_18
.LBB33_18:                              # %cond.end
                                        #   in Loop: Header=BB33_13 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB33_13
.LBB33_19:                              # %for.end
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_session_info_serialize, .Lfunc_end33-gimp_session_info_serialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_session_info_deserialize,@function
gimp_session_info_deserialize:          # @gimp_session_info_deserialize
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_session_info_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	g_type_qname
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	g_scanner_set_scope
	movabsq	$.L.str.14, %rdx
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	g_scanner_scope_add_symbol
	movabsq	$.L.str.15, %rdx
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	g_scanner_scope_add_symbol
	movabsq	$.L.str.17, %rdx
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	g_scanner_scope_add_symbol
	movabsq	$.L.str.18, %rdx
	movl	$3, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	g_scanner_scope_add_symbol
	movabsq	$.L.str.20, %rdx
	movl	$4, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	g_scanner_scope_add_symbol
	movabsq	$.L.str.21, %rdx
	movl	$6, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	g_scanner_scope_add_symbol
	movabsq	$.L.str.22, %rdx
	movl	$7, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	g_scanner_scope_add_symbol
	movabsq	$.L.str.23, %rdx
	movl	$5, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	g_scanner_scope_add_symbol
	movl	$40, -44(%rbp)
.LBB34_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-44(%rbp), %eax
	jne	.LBB34_43
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -44(%rbp)
	movl	%eax, %ecx
	subl	$40, %eax
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB34_3
	jmp	.LBB34_49
.LBB34_49:                              # %while.body
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB34_40
	jmp	.LBB34_50
.LBB34_50:                              # %while.body
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$265, %eax              # imm = 0x109
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB34_4
	jmp	.LBB34_41
.LBB34_3:                               # %sw.bb
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	$265, -44(%rbp)         # imm = 0x109
	jmp	.LBB34_42
.LBB34_4:                               # %sw.bb.6
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$7, %rdx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	ja	.LBB34_38
# BB#51:                                # %sw.bb.6
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	.LJTI34_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB34_5:                               # %sw.bb.7
                                        #   in Loop: Header=BB34_1 Depth=1
	leaq	-64(%rbp), %rsi
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$264, -44(%rbp)         # imm = 0x108
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB34_7
# BB#6:                                 # %if.then
	jmp	.LBB34_44
.LBB34_7:                               # %if.end
                                        #   in Loop: Header=BB34_1 Depth=1
	callq	gimp_dialog_factory_get_singleton
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_factory_find_entry
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB34_9
# BB#8:                                 # %if.then.13
	jmp	.LBB34_44
.LBB34_9:                               # %if.end.14
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_session_info_set_factory_entry
	movq	-64(%rbp), %rdi
	callq	g_free
	jmp	.LBB34_39
.LBB34_10:                              # %sw.bb.15
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	$261, -44(%rbp)         # imm = 0x105
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	addq	$8, %rax
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rcx
	addq	$24, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_session_info_parse_offset
	cmpl	$0, %eax
	jne	.LBB34_12
# BB#11:                                # %if.then.19
	jmp	.LBB34_44
.LBB34_12:                              # %if.end.20
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	addq	$12, %rax
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rcx
	addq	$28, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_session_info_parse_offset
	cmpl	$0, %eax
	jne	.LBB34_14
# BB#13:                                # %if.then.25
	jmp	.LBB34_44
.LBB34_14:                              # %if.end.26
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_39
.LBB34_15:                              # %sw.bb.27
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	$261, -44(%rbp)         # imm = 0x105
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	gimp_scanner_parse_int
	cmpl	$0, %eax
	jne	.LBB34_17
# BB#16:                                # %if.then.31
	jmp	.LBB34_44
.LBB34_17:                              # %if.end.32
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	addq	$20, %rax
	movq	%rax, %rsi
	callq	gimp_scanner_parse_int
	cmpl	$0, %eax
	jne	.LBB34_19
# BB#18:                                # %if.then.36
	jmp	.LBB34_44
.LBB34_19:                              # %if.end.37
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_39
.LBB34_20:                              # %sw.bb.38
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movl	$1, 32(%rax)
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	$41, %eax
	jne	.LBB34_22
# BB#21:                                # %if.then.43
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_39
.LBB34_22:                              # %if.end.44
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	$261, -44(%rbp)         # imm = 0x105
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	addq	$36, %rax
	movq	%rax, %rsi
	callq	gimp_scanner_parse_int
	cmpl	$0, %eax
	jne	.LBB34_24
# BB#23:                                # %if.then.48
	jmp	.LBB34_44
.LBB34_24:                              # %if.end.49
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_39
.LBB34_25:                              # %sw.bb.50
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	addq	$40, %rax
	movq	%rax, %rsi
	callq	gimp_session_info_aux_deserialize
	movl	%eax, -44(%rbp)
	cmpl	$40, -44(%rbp)
	je	.LBB34_27
# BB#26:                                # %if.then.55
	jmp	.LBB34_44
.LBB34_27:                              # %if.end.56
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_39
.LBB34_28:                              # %sw.bb.57
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movl	%eax, %ecx
	cmpl	$5, %ecx
	jne	.LBB34_33
# BB#29:                                # %land.lhs.true
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB34_33
# BB#30:                                # %land.lhs.true.65
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB34_33
# BB#31:                                # %land.lhs.true.70
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rsi
	movl	$.L.str.24, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB34_33
# BB#32:                                # %if.then.77
                                        #   in Loop: Header=BB34_1 Depth=1
	movabsq	$.L.str.22, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB34_34
.LBB34_33:                              # %if.else
                                        #   in Loop: Header=BB34_1 Depth=1
	movabsq	$.L.str.21, %rax
	movabsq	$.L.str.22, %rcx
	movq	-16(%rbp), %rdx
	movq	48(%rdx), %rdx
	movl	%edx, %esi
	cmpl	$7, %esi
	cmoveq	%rcx, %rax
	movq	%rax, -88(%rbp)
.LBB34_34:                              # %if.end.83
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	callq	g_scanner_set_scope
	leaq	-80(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	addl	$1, %esi
	movq	-88(%rbp), %rcx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_session_info_dock_deserialize
	movl	%eax, -44(%rbp)
	cmpl	$40, -44(%rbp)
	jne	.LBB34_36
# BB#35:                                # %if.then.89
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	g_scanner_set_scope
	movq	-40(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	56(%rdi), %rdi
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	g_list_append
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 56(%rcx)
	jmp	.LBB34_37
.LBB34_36:                              # %if.else.95
	jmp	.LBB34_44
.LBB34_37:                              # %if.end.96
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_39
.LBB34_38:                              # %sw.default
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_39
.LBB34_39:                              # %sw.epilog
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	$41, -44(%rbp)
	jmp	.LBB34_42
.LBB34_40:                              # %sw.bb.97
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	$40, -44(%rbp)
	jmp	.LBB34_42
.LBB34_41:                              # %sw.default.98
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_42
.LBB34_42:                              # %sw.epilog.99
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_1
.LBB34_43:                              # %while.end
	jmp	.LBB34_44
.LBB34_44:                              # %error
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB34_48
# BB#45:                                # %land.lhs.true.103
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB34_48
# BB#46:                                # %land.lhs.true.107
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rsi
	movl	$.L.str.24, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB34_48
# BB#47:                                # %if.then.114
	movabsq	$.L.str.22, %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_session_info_dock_new
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_append
	movq	-40(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, 56(%rsi)
.LBB34_48:                              # %if.end.121
	movabsq	$.L.str.14, %rdx
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	g_scanner_scope_remove_symbol
	movabsq	$.L.str.15, %rdx
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	g_scanner_scope_remove_symbol
	movabsq	$.L.str.17, %rdx
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	g_scanner_scope_remove_symbol
	movabsq	$.L.str.18, %rdx
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	g_scanner_scope_remove_symbol
	movabsq	$.L.str.20, %rdx
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	g_scanner_scope_remove_symbol
	movabsq	$.L.str.21, %rdx
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	g_scanner_scope_remove_symbol
	movabsq	$.L.str.22, %rdx
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	g_scanner_scope_remove_symbol
	movabsq	$.L.str.23, %rdx
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	g_scanner_scope_remove_symbol
	movq	-16(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	g_scanner_set_scope
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_config_deserialize_return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_session_info_deserialize, .Lfunc_end34-gimp_session_info_deserialize
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI34_0:
	.quad	.LBB34_5
	.quad	.LBB34_10
	.quad	.LBB34_15
	.quad	.LBB34_20
	.quad	.LBB34_25
	.quad	.LBB34_28
	.quad	.LBB34_28
	.quad	.LBB34_28

	.text
	.align	16, 0x90
	.type	gimp_session_info_parse_offset,@function
gimp_session_info_parse_offset:         # @gimp_session_info_parse_offset
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	$45, %eax
	jne	.LBB35_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB35_3
.LBB35_2:                               # %if.else
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
.LBB35_3:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	$261, %eax              # imm = 0x105
	je	.LBB35_5
# BB#4:                                 # %if.then.4
	movl	$0, -4(%rbp)
	jmp	.LBB35_9
.LBB35_5:                               # %if.end.5
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movq	-32(%rbp), %rdi
	cmpl	$0, (%rdi)
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB35_7
# BB#6:                                 # %if.then.7
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	subq	48(%rdx), %rcx
	movl	%ecx, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB35_8
.LBB35_7:                               # %if.else.8
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB35_8:                               # %if.end.12
	movl	$1, -4(%rbp)
.LBB35_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_session_info_parse_offset, .Lfunc_end35-gimp_session_info_parse_offset
	.cfi_endproc

	.type	gimp_session_info_get_type.g_define_type_id__volatile,@object # @gimp_session_info_get_type.g_define_type_id__volatile
	.local	gimp_session_info_get_type.g_define_type_id__volatile
	.comm	gimp_session_info_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpSessionInfo"
	.size	.L.str, 16

	.type	gimp_session_info_get_type.g_implement_interface_info,@object # @gimp_session_info_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_session_info_get_type.g_implement_interface_info:
	.quad	gimp_session_info_config_iface_init
	.quad	0
	.quad	0
	.size	gimp_session_info_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_session_info_restore,@object # @__func__.gimp_session_info_restore
.L__func__.gimp_session_info_restore:
	.asciz	"gimp_session_info_restore"
	.size	.L__func__.gimp_session_info_restore, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_SESSION_INFO (info)"
	.size	.L.str.2, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_DIALOG_FACTORY (factory)"
	.size	.L.str.3, 33

	.type	.L__func__.gimp_session_info_apply_geometry,@object # @__func__.gimp_session_info_apply_geometry
.L__func__.gimp_session_info_apply_geometry:
	.asciz	"gimp_session_info_apply_geometry"
	.size	.L__func__.gimp_session_info_apply_geometry, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GTK_IS_WINDOW (info->p->widget)"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"-0-0"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"-0%+d"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%+d-0"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%+d%+d"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"show"
	.size	.L.str.9, 5

	.type	.L__func__.gimp_session_info_read_geometry,@object # @__func__.gimp_session_info_read_geometry
.L__func__.gimp_session_info_read_geometry:
	.asciz	"gimp_session_info_read_geometry"
	.size	.L__func__.gimp_session_info_read_geometry, 32

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-dialog-visibility"
	.size	.L.str.10, 23

	.type	.L__func__.gimp_session_info_get_info,@object # @__func__.gimp_session_info_get_info
.L__func__.gimp_session_info_get_info:
	.asciz	"gimp_session_info_get_info"
	.size	.L__func__.gimp_session_info_get_info, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GTK_IS_WIDGET (info->p->widget)"
	.size	.L.str.11, 32

	.type	.L__func__.gimp_session_info_get_info_with_widget,@object # @__func__.gimp_session_info_get_info_with_widget
.L__func__.gimp_session_info_get_info_with_widget:
	.asciz	"gimp_session_info_get_info_with_widget"
	.size	.L__func__.gimp_session_info_get_info_with_widget, 39

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GTK_IS_WIDGET (widget)"
	.size	.L.str.12, 23

	.type	.L__func__.gimp_session_info_clear_info,@object # @__func__.gimp_session_info_clear_info
.L__func__.gimp_session_info_clear_info:
	.asciz	"gimp_session_info_clear_info"
	.size	.L__func__.gimp_session_info_clear_info, 29

	.type	.L__func__.gimp_session_info_is_singleton,@object # @__func__.gimp_session_info_is_singleton
.L__func__.gimp_session_info_is_singleton:
	.asciz	"gimp_session_info_is_singleton"
	.size	.L__func__.gimp_session_info_is_singleton, 31

	.type	.L__func__.gimp_session_info_is_session_managed,@object # @__func__.gimp_session_info_is_session_managed
.L__func__.gimp_session_info_is_session_managed:
	.asciz	"gimp_session_info_is_session_managed"
	.size	.L__func__.gimp_session_info_is_session_managed, 37

	.type	.L__func__.gimp_session_info_get_remember_size,@object # @__func__.gimp_session_info_get_remember_size
.L__func__.gimp_session_info_get_remember_size:
	.asciz	"gimp_session_info_get_remember_size"
	.size	.L__func__.gimp_session_info_get_remember_size, 36

	.type	.L__func__.gimp_session_info_get_remember_if_open,@object # @__func__.gimp_session_info_get_remember_if_open
.L__func__.gimp_session_info_get_remember_if_open:
	.asciz	"gimp_session_info_get_remember_if_open"
	.size	.L__func__.gimp_session_info_get_remember_if_open, 39

	.type	.L__func__.gimp_session_info_get_widget,@object # @__func__.gimp_session_info_get_widget
.L__func__.gimp_session_info_get_widget:
	.asciz	"gimp_session_info_get_widget"
	.size	.L__func__.gimp_session_info_get_widget, 29

	.type	.L__func__.gimp_session_info_set_widget,@object # @__func__.gimp_session_info_set_widget
.L__func__.gimp_session_info_set_widget:
	.asciz	"gimp_session_info_set_widget"
	.size	.L__func__.gimp_session_info_set_widget, 29

	.type	.L__func__.gimp_session_info_get_factory_entry,@object # @__func__.gimp_session_info_get_factory_entry
.L__func__.gimp_session_info_get_factory_entry:
	.asciz	"gimp_session_info_get_factory_entry"
	.size	.L__func__.gimp_session_info_get_factory_entry, 36

	.type	.L__func__.gimp_session_info_set_factory_entry,@object # @__func__.gimp_session_info_set_factory_entry
.L__func__.gimp_session_info_set_factory_entry:
	.asciz	"gimp_session_info_set_factory_entry"
	.size	.L__func__.gimp_session_info_set_factory_entry, 36

	.type	.L__func__.gimp_session_info_get_open,@object # @__func__.gimp_session_info_get_open
.L__func__.gimp_session_info_get_open:
	.asciz	"gimp_session_info_get_open"
	.size	.L__func__.gimp_session_info_get_open, 27

	.type	.L__func__.gimp_session_info_get_x,@object # @__func__.gimp_session_info_get_x
.L__func__.gimp_session_info_get_x:
	.asciz	"gimp_session_info_get_x"
	.size	.L__func__.gimp_session_info_get_x, 24

	.type	.L__func__.gimp_session_info_get_y,@object # @__func__.gimp_session_info_get_y
.L__func__.gimp_session_info_get_y:
	.asciz	"gimp_session_info_get_y"
	.size	.L__func__.gimp_session_info_get_y, 24

	.type	.L__func__.gimp_session_info_get_width,@object # @__func__.gimp_session_info_get_width
.L__func__.gimp_session_info_get_width:
	.asciz	"gimp_session_info_get_width"
	.size	.L__func__.gimp_session_info_get_width, 28

	.type	.L__func__.gimp_session_info_get_height,@object # @__func__.gimp_session_info_get_height
.L__func__.gimp_session_info_get_height:
	.asciz	"gimp_session_info_get_height"
	.size	.L__func__.gimp_session_info_get_height, 29

	.type	.L__func__.gimp_session_info_class_set_position_accuracy,@object # @__func__.gimp_session_info_class_set_position_accuracy
.L__func__.gimp_session_info_class_set_position_accuracy:
	.asciz	"gimp_session_info_class_set_position_accuracy"
	.size	.L__func__.gimp_session_info_class_set_position_accuracy, 46

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP_IS_SESSION_INFO_CLASS (klass)"
	.size	.L.str.13, 35

	.type	.L__func__.gimp_session_info_class_apply_position_accuracy,@object # @__func__.gimp_session_info_class_apply_position_accuracy
.L__func__.gimp_session_info_class_apply_position_accuracy:
	.asciz	"gimp_session_info_class_apply_position_accuracy"
	.size	.L__func__.gimp_session_info_class_apply_position_accuracy, 48

	.type	gimp_session_info_parent_class,@object # @gimp_session_info_parent_class
	.local	gimp_session_info_parent_class
	.comm	gimp_session_info_parent_class,8,8
	.type	GimpSessionInfo_private_offset,@object # @GimpSessionInfo_private_offset
	.local	GimpSessionInfo_private_offset
	.comm	GimpSessionInfo_private_offset,4,4
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"factory-entry"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"position"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%d %d"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"size"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"open-on-exit"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%d"
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"aux-info"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-dock"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-toolbox"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"dock"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-toolbox-window"
	.size	.L.str.24, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
