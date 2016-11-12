	.text
	.file	"gimpdockable.bc"
	.globl	gimp_dockable_get_type
	.align	16, 0x90
	.type	gimp_dockable_get_type,@function
gimp_dockable_get_type:                 # @gimp_dockable_get_type
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
	movq	gimp_dockable_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_dockable_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_bin_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_dockable_class_intern_init, %rdi
	movl	$128, %r8d
	movabsq	$gimp_dockable_init, %rcx
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
	callq	gimp_session_managed_interface_get_type
	movabsq	$gimp_dockable_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_dockable_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_dockable_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_dockable_get_type, .Lfunc_end0-gimp_dockable_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_class_intern_init,@function
gimp_dockable_class_intern_init:        # @gimp_dockable_class_intern_init
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
	movq	%rax, gimp_dockable_parent_class
	cmpl	$0, GimpDockable_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDockable_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dockable_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_dockable_class_intern_init, .Lfunc_end1-gimp_dockable_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_init,@function
gimp_dockable_init:                     # @gimp_dockable_init
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
	callq	gimp_dockable_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	%rax, 120(%rsi)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	$9, 32(%rax)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	$8, 36(%rax)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	$-6, 80(%rax)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	$-6, 84(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$dialog_target_table, %rdx
	movl	$1, %ecx
	movl	$4, %r8d
	movq	%rax, %rdi
	callq	gtk_drag_dest_set
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_dockable_init, .Lfunc_end2-gimp_dockable_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_session_managed_iface_init,@function
gimp_dockable_session_managed_iface_init: # @gimp_dockable_session_managed_iface_init
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
	movabsq	$gimp_dockable_set_aux_info, %rax
	movabsq	$gimp_dockable_get_aux_info, %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, 16(%rdi)
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_dockable_session_managed_iface_init, .Lfunc_end3-gimp_dockable_session_managed_iface_init
	.cfi_endproc

	.globl	gimp_dockable_new
	.align	16, 0x90
	.type	gimp_dockable_new,@function
gimp_dockable_new:                      # @gimp_dockable_new
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_19
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	cmpq	$0, -32(%rbp)
	je	.LBB4_8
# BB#7:                                 # %if.then.3
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.4
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_19
.LBB4_9:                                # %if.end.5
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.6
	jmp	.LBB4_11
.LBB4_11:                               # %do.body.7
	cmpq	$0, -40(%rbp)
	je	.LBB4_13
# BB#12:                                # %if.then.9
	jmp	.LBB4_14
.LBB4_13:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_19
.LBB4_14:                               # %if.end.11
	jmp	.LBB4_15
.LBB4_15:                               # %do.end.12
	callq	gimp_dockable_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-48(%rbp), %rsi
	movq	120(%rsi), %rsi
	movq	%rax, (%rsi)
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movq	-48(%rbp), %rsi
	movq	120(%rsi), %rsi
	movq	%rax, 16(%rsi)
	movq	-40(%rbp), %rdi
	callq	g_strdup
	movq	-48(%rbp), %rsi
	movq	120(%rsi), %rsi
	movq	%rax, 24(%rsi)
	cmpq	$0, -24(%rbp)
	je	.LBB4_17
# BB#16:                                # %if.then.22
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-48(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB4_18
.LBB4_17:                               # %if.else.26
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rax, 8(%rcx)
.LBB4_18:                               # %if.end.31
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_help_set_help_data
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB4_19:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_dockable_new, .Lfunc_end4-gimp_dockable_new
	.cfi_endproc

	.globl	gimp_dockable_set_dockbook
	.align	16, 0x90
	.type	gimp_dockable_set_dockbook,@function
gimp_dockable_set_dockbook:             # @gimp_dockable_set_dockbook
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_set_dockbook, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_26
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB5_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_dockbook_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB5_21
.LBB5_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB5_20
.LBB5_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_20:                               # %if.end.32
	jmp	.LBB5_21
.LBB5_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_23
.LBB5_22:                               # %if.then.36
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_set_dockbook, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_26
.LBB5_24:                               # %if.end.38
	jmp	.LBB5_25
.LBB5_25:                               # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rax, 48(%rcx)
.LBB5_26:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_dockable_set_dockbook, .Lfunc_end5-gimp_dockable_set_dockbook
	.cfi_endproc

	.globl	gimp_dockable_get_dockbook
	.align	16, 0x90
	.type	gimp_dockable_get_dockbook,@function
gimp_dockable_get_dockbook:             # @gimp_dockable_get_dockbook
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dockable_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_get_dockbook, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_dockable_get_dockbook, .Lfunc_end6-gimp_dockable_get_dockbook
	.cfi_endproc

	.globl	gimp_dockable_get_tab_style
	.align	16, 0x90
	.type	gimp_dockable_get_tab_style,@function
gimp_dockable_get_tab_style:            # @gimp_dockable_get_tab_style
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_get_tab_style, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB7_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_dockable_get_tab_style, .Lfunc_end7-gimp_dockable_get_tab_style
	.cfi_endproc

	.globl	gimp_dockable_get_actual_tab_style
	.align	16, 0x90
	.type	gimp_dockable_get_actual_tab_style,@function
gimp_dockable_get_actual_tab_style:     # @gimp_dockable_get_actual_tab_style
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
	callq	gimp_dockable_get_type
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
	movabsq	$.L__func__.gimp_dockable_get_actual_tab_style, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB8_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_dockable_get_actual_tab_style, .Lfunc_end8-gimp_dockable_get_actual_tab_style
	.cfi_endproc

	.globl	gimp_dockable_get_name
	.align	16, 0x90
	.type	gimp_dockable_get_name,@function
gimp_dockable_get_name:                 # @gimp_dockable_get_name
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dockable_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_get_name, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB9_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_dockable_get_name, .Lfunc_end9-gimp_dockable_get_name
	.cfi_endproc

	.globl	gimp_dockable_get_blurb
	.align	16, 0x90
	.type	gimp_dockable_get_blurb,@function
gimp_dockable_get_blurb:                # @gimp_dockable_get_blurb
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
	callq	gimp_dockable_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_get_blurb, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB10_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_dockable_get_blurb, .Lfunc_end10-gimp_dockable_get_blurb
	.cfi_endproc

	.globl	gimp_dockable_get_help_id
	.align	16, 0x90
	.type	gimp_dockable_get_help_id,@function
gimp_dockable_get_help_id:              # @gimp_dockable_get_help_id
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
	callq	gimp_dockable_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_get_help_id, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB11_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_dockable_get_help_id, .Lfunc_end11-gimp_dockable_get_help_id
	.cfi_endproc

	.globl	gimp_dockable_get_stock_id
	.align	16, 0x90
	.type	gimp_dockable_get_stock_id,@function
gimp_dockable_get_stock_id:             # @gimp_dockable_get_stock_id
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
	callq	gimp_dockable_get_type
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
	movabsq	$.L__func__.gimp_dockable_get_stock_id, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB12_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_dockable_get_stock_id, .Lfunc_end12-gimp_dockable_get_stock_id
	.cfi_endproc

	.globl	gimp_dockable_get_icon
	.align	16, 0x90
	.type	gimp_dockable_get_icon,@function
gimp_dockable_get_icon:                 # @gimp_dockable_get_icon
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
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_screen
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_icon_theme_get_for_screen
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	16(%rax), %rsi
	callq	gtk_icon_theme_has_icon
	cmpl	$0, %eax
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	16(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	gtk_image_new_from_icon_name
	movq	%rax, -8(%rbp)
	jmp	.LBB13_3
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	16(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -8(%rbp)
.LBB13_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_dockable_get_icon, .Lfunc_end13-gimp_dockable_get_icon
	.cfi_endproc

	.globl	gimp_dockable_get_locked
	.align	16, 0x90
	.type	gimp_dockable_get_locked,@function
gimp_dockable_get_locked:               # @gimp_dockable_get_locked
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dockable_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_get_locked, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB14_13
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB14_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_dockable_get_locked, .Lfunc_end14-gimp_dockable_get_locked
	.cfi_endproc

	.globl	gimp_dockable_set_drag_pos
	.align	16, 0x90
	.type	gimp_dockable_set_drag_pos,@function
gimp_dockable_set_drag_pos:             # @gimp_dockable_set_drag_pos
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dockable_get_type
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
	movabsq	$.L__func__.gimp_dockable_set_drag_pos, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_13
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	120(%rcx), %rcx
	movl	%eax, 80(%rcx)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	120(%rcx), %rcx
	movl	%eax, 84(%rcx)
.LBB15_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_dockable_set_drag_pos, .Lfunc_end15-gimp_dockable_set_drag_pos
	.cfi_endproc

	.globl	gimp_dockable_get_drag_pos
	.align	16, 0x90
	.type	gimp_dockable_get_drag_pos,@function
gimp_dockable_get_drag_pos:             # @gimp_dockable_get_drag_pos
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_dockable_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_get_drag_pos, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_16
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB16_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	80(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB16_14:                              # %if.end.14
	cmpq	$0, -24(%rbp)
	je	.LBB16_16
# BB#15:                                # %if.then.16
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	84(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB16_16:                              # %if.end.19
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_dockable_get_drag_pos, .Lfunc_end16-gimp_dockable_get_drag_pos
	.cfi_endproc

	.globl	gimp_dockable_get_drag_handler
	.align	16, 0x90
	.type	gimp_dockable_get_drag_handler,@function
gimp_dockable_get_drag_handler:         # @gimp_dockable_get_drag_handler
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dockable_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_get_drag_handler, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_13
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB17_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_dockable_get_drag_handler, .Lfunc_end17-gimp_dockable_get_drag_handler
	.cfi_endproc

	.globl	gimp_dockable_set_locked
	.align	16, 0x90
	.type	gimp_dockable_set_locked,@function
gimp_dockable_set_locked:               # @gimp_dockable_set_locked
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dockable_get_type
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
	movabsq	$.L__func__.gimp_dockable_set_locked, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_14
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	40(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB18_14
# BB#13:                                # %if.then.12
	movl	$80, %eax
	movl	%eax, %esi
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	120(%rdx), %rdx
	movl	%eax, 40(%rdx)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB18_14:                              # %if.end.17
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_dockable_set_locked, .Lfunc_end18-gimp_dockable_set_locked
	.cfi_endproc

	.globl	gimp_dockable_is_locked
	.align	16, 0x90
	.type	gimp_dockable_is_locked,@function
gimp_dockable_is_locked:                # @gimp_dockable_is_locked
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dockable_get_type
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
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_is_locked, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB19_13
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB19_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_dockable_is_locked, .Lfunc_end19-gimp_dockable_is_locked
	.cfi_endproc

	.globl	gimp_dockable_set_tab_style
	.align	16, 0x90
	.type	gimp_dockable_set_tab_style,@function
gimp_dockable_set_tab_style:            # @gimp_dockable_set_tab_style
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dockable_get_type
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
	movabsq	$.L__func__.gimp_dockable_set_tab_style, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_17
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_dockable_convert_tab_style
	movq	-8(%rbp), %rdi
	movq	120(%rdi), %rdi
	movl	%eax, 32(%rdi)
	cmpl	$9, -12(%rbp)
	jne	.LBB20_14
# BB#13:                                # %if.then.14
	movl	$8, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_dockable_set_actual_tab_style
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB20_15
.LBB20_14:                              # %if.else.16
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_dockable_set_actual_tab_style
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB20_15:                              # %if.end.18
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	cmpq	$0, 48(%rax)
	je	.LBB20_17
# BB#16:                                # %if.then.21
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	48(%rax), %rdi
	callq	gimp_dockbook_update_auto_tab_style
.LBB20_17:                              # %if.end.24
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_dockable_set_tab_style, .Lfunc_end20-gimp_dockable_set_tab_style
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_convert_tab_style,@function
gimp_dockable_convert_tab_style:        # @gimp_dockable_convert_tab_style
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB21_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	cmpq	$0, 40(%rax)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	-12(%rbp), %edi
	callq	gimp_preview_tab_style_to_icon
	movl	%eax, -12(%rbp)
.LBB21_3:                               # %if.end
	movl	-12(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_dockable_convert_tab_style, .Lfunc_end21-gimp_dockable_convert_tab_style
	.cfi_endproc

	.globl	gimp_dockable_set_actual_tab_style
	.align	16, 0x90
	.type	gimp_dockable_set_actual_tab_style,@function
gimp_dockable_set_actual_tab_style:     # @gimp_dockable_set_actual_tab_style
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_dockable_convert_tab_style
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	120(%rdi), %rdi
	movl	36(%rdi), %eax
	movl	%eax, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.4
	movl	$1, -52(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.5
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.7
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.9
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_set_actual_tab_style, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB22_18
.LBB22_11:                              # %if.end.11
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	jmp	.LBB22_13
.LBB22_13:                              # %do.body.12
	cmpl	$9, -20(%rbp)
	je	.LBB22_15
# BB#14:                                # %if.then.14
	jmp	.LBB22_16
.LBB22_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_set_actual_tab_style, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB22_18
.LBB22_16:                              # %if.end.16
	jmp	.LBB22_17
.LBB22_17:                              # %do.end.17
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	120(%rcx), %rcx
	movl	%eax, 36(%rcx)
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, -4(%rbp)
.LBB22_18:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_dockable_set_actual_tab_style, .Lfunc_end22-gimp_dockable_set_actual_tab_style
	.cfi_endproc

	.globl	gimp_dockable_create_tab_widget
	.align	16, 0x90
	.type	gimp_dockable_create_tab_widget,@function
gimp_dockable_create_tab_widget:        # @gimp_dockable_create_tab_widget
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_dockable_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_create_tab_widget, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB23_25
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	jmp	.LBB23_13
.LBB23_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB23_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB23_20
.LBB23_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB23_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB23_19
.LBB23_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB23_19:                              # %if.end.31
	jmp	.LBB23_20
.LBB23_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB23_22
# BB#21:                                # %if.then.35
	jmp	.LBB23_23
.LBB23_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_create_tab_widget, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB23_25
.LBB23_23:                              # %if.end.37
	jmp	.LBB23_24
.LBB23_24:                              # %do.end.38
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	gimp_dockable_new_tab_widget_internal
	movq	%rax, -8(%rbp)
.LBB23_25:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_dockable_create_tab_widget, .Lfunc_end23-gimp_dockable_create_tab_widget
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_new_tab_widget_internal,@function
gimp_dockable_new_tab_widget_internal:  # @gimp_dockable_new_tab_widget_internal
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	subl	$2, %edx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%edx, -72(%rbp)         # 4-byte Spill
	je	.LBB24_1
	jmp	.LBB24_21
.LBB24_21:                              # %entry
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB24_2
	jmp	.LBB24_22
.LBB24_22:                              # %entry
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB24_1
	jmp	.LBB24_23
.LBB24_23:                              # %entry
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB24_2
	jmp	.LBB24_24
.LBB24_24:                              # %entry
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB24_1
	jmp	.LBB24_25
.LBB24_25:                              # %entry
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB24_2
	jmp	.LBB24_3
.LBB24_1:                               # %sw.bb
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rdi
	callq	gtk_label_new
	movq	%rax, -48(%rbp)
	jmp	.LBB24_4
.LBB24_2:                               # %sw.bb.1
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_label_new
	movq	%rax, -48(%rbp)
	jmp	.LBB24_4
.LBB24_3:                               # %sw.default
	jmp	.LBB24_4
.LBB24_4:                               # %sw.epilog
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB24_5
	jmp	.LBB24_26
.LBB24_26:                              # %sw.epilog
	movl	-96(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB24_6
	jmp	.LBB24_27
.LBB24_27:                              # %sw.epilog
	movl	-96(%rbp), %eax         # 4-byte Reload
	addl	$-4, %eax
	subl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jb	.LBB24_5
	jmp	.LBB24_28
.LBB24_28:                              # %sw.epilog
	movl	-96(%rbp), %eax         # 4-byte Reload
	addl	$-6, %eax
	subl	$2, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jb	.LBB24_6
	jmp	.LBB24_11
.LBB24_5:                               # %sw.bb.4
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	gimp_dockable_get_icon
	movq	%rax, -56(%rbp)
	jmp	.LBB24_12
.LBB24_6:                               # %sw.bb.6
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB24_8
# BB#7:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	-24(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_docked_get_preview
	movq	%rax, -56(%rbp)
.LBB24_8:                               # %if.end
	cmpq	$0, -56(%rbp)
	jne	.LBB24_10
# BB#9:                                 # %if.then.14
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	gimp_dockable_get_icon
	movq	%rax, -56(%rbp)
.LBB24_10:                              # %if.end.16
	jmp	.LBB24_12
.LBB24_11:                              # %sw.default.17
	jmp	.LBB24_12
.LBB24_12:                              # %sw.epilog.18
	cmpq	$0, -48(%rbp)
	je	.LBB24_15
# BB#13:                                # %land.lhs.true
	cmpl	$0, -28(%rbp)
	je	.LBB24_15
# BB#14:                                # %if.then.21
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movl	$600, %edx              # imm = 0x258
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
.LBB24_15:                              # %if.end.24
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$9, %rdx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	ja	.LBB24_20
# BB#29:                                # %if.end.24
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	.LJTI24_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB24_16:                              # %sw.bb.25
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB24_20
.LBB24_17:                              # %sw.bb.26
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB24_20
.LBB24_18:                              # %sw.bb.27
	xorl	%edi, %edi
	movl	$2, %eax
	movl	$6, %ecx
	cmpl	$0, -28(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	jmp	.LBB24_20
.LBB24_19:                              # %sw.bb.34
	movabsq	$.L.str.21, %rdi
	movb	$0, %al
	callq	g_warning
.LBB24_20:                              # %sw.epilog.35
	movq	-40(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_dockable_new_tab_widget_internal, .Lfunc_end24-gimp_dockable_new_tab_widget_internal
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI24_0:
	.quad	.LBB24_16
	.quad	.LBB24_16
	.quad	.LBB24_17
	.quad	.LBB24_17
	.quad	.LBB24_18
	.quad	.LBB24_18
	.quad	.LBB24_18
	.quad	.LBB24_18
	.quad	.LBB24_19
	.quad	.LBB24_19

	.text
	.globl	gimp_dockable_create_drag_widget
	.align	16, 0x90
	.type	gimp_dockable_create_drag_widget,@function
gimp_dockable_create_drag_widget:       # @gimp_dockable_create_drag_widget
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_create_drag_widget, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB25_13
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	gtk_frame_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movl	$5, %esi
	movl	$1, %r8d
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	56(%rax), %rax
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movl	-68(%rbp), %edx         # 4-byte Reload
	movl	-68(%rbp), %ecx         # 4-byte Reload
	callq	gimp_dockable_new_tab_widget_internal
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB25_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_dockable_create_drag_widget, .Lfunc_end25-gimp_dockable_create_drag_widget
	.cfi_endproc

	.globl	gimp_dockable_set_context
	.align	16, 0x90
	.type	gimp_dockable_set_context,@function
gimp_dockable_set_context:              # @gimp_dockable_set_context
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dockable_get_type
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
	movabsq	$.L__func__.gimp_dockable_set_context, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB26_29
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	jmp	.LBB26_13
.LBB26_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB26_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB26_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB26_21
.LBB26_16:                              # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB26_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB26_20
.LBB26_19:                              # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB26_20:                              # %if.end.32
	jmp	.LBB26_21
.LBB26_21:                              # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB26_23
.LBB26_22:                              # %if.then.36
	jmp	.LBB26_24
.LBB26_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_set_context, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB26_29
.LBB26_24:                              # %if.end.38
	jmp	.LBB26_25
.LBB26_25:                              # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	120(%rcx), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB26_29
# BB#26:                                # %if.then.42
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB26_28
# BB#27:                                # %if.then.48
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_docked_set_context
.LBB26_28:                              # %if.end.51
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rax, 56(%rcx)
.LBB26_29:                              # %if.end.54
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_dockable_set_context, .Lfunc_end26-gimp_dockable_set_context
	.cfi_endproc

	.globl	gimp_dockable_get_menu
	.align	16, 0x90
	.type	gimp_dockable_get_menu,@function
gimp_dockable_get_menu:                 # @gimp_dockable_get_menu
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_get_menu, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB27_25
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	jmp	.LBB27_13
.LBB27_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB27_15
# BB#14:                                # %if.then.13
	jmp	.LBB27_16
.LBB27_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_get_menu, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB27_25
.LBB27_16:                              # %if.end.15
	jmp	.LBB27_17
.LBB27_17:                              # %do.end.16
	jmp	.LBB27_18
.LBB27_18:                              # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB27_20
# BB#19:                                # %if.then.19
	jmp	.LBB27_21
.LBB27_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_get_menu, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB27_25
.LBB27_21:                              # %if.end.21
	jmp	.LBB27_22
.LBB27_22:                              # %do.end.22
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB27_24
# BB#23:                                # %if.then.27
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_docked_get_menu
	movq	%rax, -8(%rbp)
	jmp	.LBB27_25
.LBB27_24:                              # %if.end.31
	movq	$0, -8(%rbp)
.LBB27_25:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_dockable_get_menu, .Lfunc_end27-gimp_dockable_get_menu
	.cfi_endproc

	.globl	gimp_dockable_set_drag_handler
	.align	16, 0x90
	.type	gimp_dockable_set_drag_handler,@function
gimp_dockable_set_drag_handler:         # @gimp_dockable_set_drag_handler
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_set_drag_handler, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB28_13
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rax, 72(%rcx)
.LBB28_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_dockable_set_drag_handler, .Lfunc_end28-gimp_dockable_set_drag_handler
	.cfi_endproc

	.globl	gimp_dockable_detach
	.align	16, 0x90
	.type	gimp_dockable_detach,@function
gimp_dockable_detach:                   # @gimp_dockable_detach
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB29_8
.LBB29_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB29_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB29_7:                               # %if.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB29_10
# BB#9:                                 # %if.then.8
	jmp	.LBB29_11
.LBB29_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_detach, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB29_27
.LBB29_11:                              # %if.end.10
	jmp	.LBB29_12
.LBB29_12:                              # %do.end
	jmp	.LBB29_13
.LBB29_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_dockbook_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB29_15
# BB#14:                                # %if.then.21
	movl	$0, -92(%rbp)
	jmp	.LBB29_20
.LBB29_15:                              # %if.else.22
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_18
# BB#16:                                # %land.lhs.true.25
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB29_18
# BB#17:                                # %if.then.29
	movl	$1, -92(%rbp)
	jmp	.LBB29_19
.LBB29_18:                              # %if.else.30
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB29_19:                              # %if.end.32
	jmp	.LBB29_20
.LBB29_20:                              # %if.end.33
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB29_22
# BB#21:                                # %if.then.36
	jmp	.LBB29_23
.LBB29_22:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_detach, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB29_27
.LBB29_23:                              # %if.end.38
	jmp	.LBB29_24
.LBB29_24:                              # %do.end.39
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	48(%rax), %rdi
	callq	gimp_dockbook_get_dock
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_dock_window_from_dock
	movq	%rax, -16(%rbp)
	callq	gimp_dialog_factory_get_singleton
	movq	-8(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_screen
	xorl	%edx, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dock_with_window_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dock_window_from_dock
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_position
	cmpq	$0, -16(%rbp)
	je	.LBB29_26
# BB#25:                                # %if.then.55
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_dock_window_setup
.LBB29_26:                              # %if.end.56
	movq	global_menu_factory, %rdi
	callq	gimp_dockbook_new
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dock_add_book
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-8(%rbp), %rsi
	movq	120(%rsi), %rsi
	movq	48(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_dockbook_remove
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dockbook_add
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
.LBB29_27:                              # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_dockable_detach, .Lfunc_end29-gimp_dockable_detach
	.cfi_endproc

	.globl	gimp_dockable_blink
	.align	16, 0x90
	.type	gimp_dockable_blink,@function
gimp_dockable_blink:                    # @gimp_dockable_blink
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB30_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB30_8
.LBB30_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB30_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB30_7
.LBB30_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB30_7:                               # %if.end
	jmp	.LBB30_8
.LBB30_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB30_10
# BB#9:                                 # %if.then.8
	jmp	.LBB30_11
.LBB30_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_blink, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB30_15
.LBB30_11:                              # %if.end.10
	jmp	.LBB30_12
.LBB30_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	cmpl	$0, 64(%rax)
	je	.LBB30_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	64(%rax), %edi
	callq	g_source_remove
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB30_14:                              # %if.end.16
	movl	$150, %edi
	movabsq	$gimp_dockable_blink_timeout, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_timeout_add
	movq	-8(%rbp), %rcx
	movq	120(%rcx), %rcx
	movl	%eax, 64(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_highlight_widget
.LBB30_15:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_dockable_blink, .Lfunc_end30-gimp_dockable_blink
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_blink_timeout,@function
gimp_dockable_blink_timeout:            # @gimp_dockable_blink_timeout
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movq	-16(%rbp), %rsi
	movq	120(%rsi), %rsi
	movl	68(%rsi), %edx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	cmpl	$1, %edx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	gimp_highlight_widget
	movq	-16(%rbp), %rdi
	movq	120(%rdi), %rdi
	movl	68(%rdi), %ecx
	addl	$1, %ecx
	movl	%ecx, 68(%rdi)
	movq	-16(%rbp), %rdi
	movq	120(%rdi), %rdi
	cmpl	$3, 68(%rdi)
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movl	$0, 64(%rax)
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movl	$0, 68(%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB31_3
.LBB31_2:                               # %if.end
	movl	$1, -4(%rbp)
.LBB31_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_dockable_blink_timeout, .Lfunc_end31-gimp_dockable_blink_timeout
	.cfi_endproc

	.globl	gimp_dockable_blink_cancel
	.align	16, 0x90
	.type	gimp_dockable_blink_cancel,@function
gimp_dockable_blink_cancel:             # @gimp_dockable_blink_cancel
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB32_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB32_8
.LBB32_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB32_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB32_7
.LBB32_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB32_7:                               # %if.end
	jmp	.LBB32_8
.LBB32_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB32_10
# BB#9:                                 # %if.then.8
	jmp	.LBB32_11
.LBB32_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_blink_cancel, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB32_14
.LBB32_11:                              # %if.end.10
	jmp	.LBB32_12
.LBB32_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	cmpl	$0, 64(%rax)
	je	.LBB32_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	64(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movq	120(%rcx), %rcx
	movl	$0, 64(%rcx)
	movq	-8(%rbp), %rcx
	movq	120(%rcx), %rcx
	movl	$0, 68(%rcx)
	movq	-8(%rbp), %rcx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_highlight_widget
.LBB32_14:                              # %if.end.21
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_dockable_blink_cancel, .Lfunc_end32-gimp_dockable_blink_cancel
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_class_init,@function
gimp_dockable_class_init:               # @gimp_dockable_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
.Ltmp102:
	.cfi_offset %rbx, -56
.Ltmp103:
	.cfi_offset %r12, -48
.Ltmp104:
	.cfi_offset %r13, -40
.Ltmp105:
	.cfi_offset %r14, -32
.Ltmp106:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movabsq	$gimp_dockable_child_type, %rdx
	movabsq	$gimp_dockable_add, %r9
	movabsq	$gimp_dockable_drag_drop, %r10
	movabsq	$gimp_dockable_drag_motion, %r11
	movabsq	$gimp_dockable_drag_leave, %rbx
	movabsq	$gimp_dockable_style_set, %r14
	movabsq	$gimp_dockable_size_allocate, %r15
	movabsq	$gimp_dockable_size_request, %r12
	movabsq	$gimp_dockable_get_property, %r13
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movabsq	$gimp_dockable_set_property, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movabsq	$gimp_dockable_dispose, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 40(%rax)
	movq	-56(%rbp), %rax
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	%r13, 32(%rax)
	movq	-64(%rbp), %rax
	movq	%r12, 240(%rax)
	movq	-64(%rbp), %rax
	movq	%r15, 248(%rax)
	movq	-64(%rbp), %rax
	movq	%r14, 280(%rax)
	movq	-64(%rbp), %rax
	movq	%rbx, 600(%rax)
	movq	-64(%rbp), %rax
	movq	%r11, 608(%rax)
	movq	-64(%rbp), %rax
	movq	%r10, 616(%rax)
	movq	-72(%rbp), %rax
	movq	%r9, 720(%rax)
	movq	-72(%rbp), %rax
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	%r9, 760(%rax)
	movq	-56(%rbp), %rax
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$1, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.14, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$225, %esi
	movq	-64(%rbp), %rdx
	movl	%esi, -140(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %r9d        # 4-byte Reload
	movl	$225, (%rsp)
	callq	g_param_spec_int
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property
	movl	$88, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_dockable_class_init, .Lfunc_end33-gimp_dockable_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_dispose,@function
gimp_dockable_dispose:                  # @gimp_dockable_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_dockable_blink_cancel
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	cmpq	$0, 56(%rax)
	je	.LBB34_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_dockable_set_context
.LBB34_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB34_6
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	120(%rcx), %rcx
	cmpq	(%rcx), %rax
	je	.LBB34_5
# BB#4:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	8(%rax), %rdi
	callq	g_free
.LBB34_5:                               # %if.end.11
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	$0, 8(%rax)
.LBB34_6:                               # %if.end.14
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB34_8
# BB#7:                                 # %if.then.18
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	$0, (%rax)
.LBB34_8:                               # %if.end.23
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB34_10
# BB#9:                                 # %if.then.26
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	$0, 16(%rax)
.LBB34_10:                              # %if.end.31
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB34_12
# BB#11:                                # %if.then.34
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	24(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	$0, 24(%rax)
.LBB34_12:                              # %if.end.39
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_dockable_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_dockable_dispose, .Lfunc_end34-gimp_dockable_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_set_property,@function
gimp_dockable_set_property:             # @gimp_dockable_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB35_2
	jmp	.LBB35_1
.LBB35_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_dockable_set_locked
	jmp	.LBB35_5
.LBB35_2:                               # %sw.default
	jmp	.LBB35_3
.LBB35_3:                               # %do.body
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
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$256, %edx              # imm = 0x100
	movabsq	$.L.str.17, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB35_5
.LBB35_5:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_dockable_set_property, .Lfunc_end35-gimp_dockable_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_get_property,@function
gimp_dockable_get_property:             # @gimp_dockable_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB36_2
	jmp	.LBB36_1
.LBB36_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movl	40(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB36_5
.LBB36_2:                               # %sw.default
	jmp	.LBB36_3
.LBB36_3:                               # %do.body
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
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$275, %edx              # imm = 0x113
	movabsq	$.L.str.17, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB36_5
.LBB36_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_dockable_get_property, .Lfunc_end36-gimp_dockable_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_size_request,@function
gimp_dockable_size_request:             # @gimp_dockable_size_request
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_container_get_border_width
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	shll	$1, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movl	-44(%rbp), %eax
	shll	$1, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, 4(%rsi)
	cmpq	$0, -32(%rbp)
	je	.LBB37_3
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	je	.LBB37_3
# BB#2:                                 # %if.then
	leaq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_widget_size_request
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rsi
	addl	(%rsi), %eax
	movl	%eax, (%rsi)
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rsi
	addl	4(%rsi), %eax
	movl	%eax, 4(%rsi)
.LBB37_3:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_dockable_size_request, .Lfunc_end37-gimp_dockable_size_request
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_size_allocate,@function
gimp_dockable_size_allocate:            # @gimp_dockable_size_allocate
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
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	xorl	%esi, %esi
	movl	$8, %ecx
	movl	%ecx, %edx
	leaq	-40(%rbp), %rdi
	movq	%rax, -32(%rbp)
	callq	memset
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_widget_set_allocation
	movq	-24(%rbp), %rdi
	callq	gtk_container_get_border_width
	movl	%eax, -60(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB38_9
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	je	.LBB38_9
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	-60(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	addl	-60(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-60(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	cmpl	$0, %ecx
	jle	.LBB38_4
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-60(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	jmp	.LBB38_5
.LBB38_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB38_5
.LBB38_5:                               # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %eax
	movl	-60(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %eax
	subl	-36(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB38_7
# BB#6:                                 # %cond.true.20
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	-60(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	subl	-36(%rbp), %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	jmp	.LBB38_8
.LBB38_7:                               # %cond.false.26
	xorl	%eax, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB38_8
.LBB38_8:                               # %cond.end.27
	movl	-88(%rbp), %eax         # 4-byte Reload
	leaq	-56(%rbp), %rsi
	movl	%eax, -44(%rbp)
	movl	-36(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_size_allocate
.LBB38_9:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_dockable_size_allocate, .Lfunc_end38-gimp_dockable_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_style_set,@function
gimp_dockable_style_set:                # @gimp_dockable_style_set
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	gimp_dockable_parent_class, %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movabsq	$.L.str.14, %rsi
	leaq	-20(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
	movq	-8(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_dockable_style_set, .Lfunc_end39-gimp_dockable_style_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_drag_leave,@function
gimp_dockable_drag_leave:               # @gimp_dockable_drag_leave
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_highlight_widget
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_dockable_drag_leave, .Lfunc_end40-gimp_dockable_drag_leave
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_drag_motion,@function
gimp_dockable_drag_motion:              # @gimp_dockable_drag_motion
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	movq	72(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	callq	gimp_paned_box_will_handle_drag
	cmpl	$0, %eax
	je	.LBB41_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %edx
	callq	gdk_drag_status
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_highlight_widget
	movl	$0, -4(%rbp)
	jmp	.LBB41_3
.LBB41_2:                               # %if.end
	movl	$4, %esi
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %edx
	callq	gdk_drag_status
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_highlight_widget
	movl	$1, -4(%rbp)
.LBB41_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_dockable_drag_motion, .Lfunc_end41-gimp_dockable_drag_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_drag_drop,@function
gimp_dockable_drag_drop:                # @gimp_dockable_drag_drop
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	movq	72(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	callq	gimp_paned_box_will_handle_drag
	cmpl	$0, %eax
	je	.LBB42_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB42_3
.LBB42_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	120(%rax), %rax
	movq	48(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_drag_get_source_widget
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dockbook_drop_dockable
	movl	$1, %edx
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-36(%rbp), %ecx
	callq	gtk_drag_finish
	movl	$1, -4(%rbp)
.LBB42_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_dockable_drag_drop, .Lfunc_end42-gimp_dockable_drag_drop
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_add,@function
gimp_dockable_add:                      # @gimp_dockable_add
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	cmpq	$0, %rax
	jne	.LBB43_3
# BB#2:                                 # %if.then
	jmp	.LBB43_4
.LBB43_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_add, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB43_6
.LBB43_4:                               # %if.end
	jmp	.LBB43_5
.LBB43_5:                               # %do.end
	movq	gimp_dockable_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	720(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	32(%rax), %esi
	callq	gimp_dockable_set_tab_style
.LBB43_6:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_dockable_add, .Lfunc_end43-gimp_dockable_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_child_type,@function
gimp_dockable_child_type:               # @gimp_dockable_child_type
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	cmpq	$0, %rax
	je	.LBB44_2
# BB#1:                                 # %if.then
	movq	$4, -8(%rbp)
	jmp	.LBB44_3
.LBB44_2:                               # %if.end
	callq	gimp_docked_interface_get_type
	movq	%rax, -8(%rbp)
.LBB44_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_dockable_child_type, .Lfunc_end44-gimp_dockable_child_type
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB45_2
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
.LBB45_2:                               # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end45:
	.size	g_warning, .Lfunc_end45-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_get_aux_info,@function
gimp_dockable_get_aux_info:             # @gimp_dockable_get_aux_info
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB46_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB46_8
.LBB46_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB46_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB46_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB46_7
.LBB46_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB46_7:                               # %if.end
	jmp	.LBB46_8
.LBB46_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB46_10
# BB#9:                                 # %if.then.8
	jmp	.LBB46_11
.LBB46_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_get_aux_info, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB46_15
.LBB46_11:                              # %if.end.10
	jmp	.LBB46_12
.LBB46_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB46_14
# BB#13:                                # %if.then.17
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_docked_get_aux_info
	movq	%rax, -8(%rbp)
	jmp	.LBB46_15
.LBB46_14:                              # %if.end.21
	movq	$0, -8(%rbp)
.LBB46_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_dockable_get_aux_info, .Lfunc_end46-gimp_dockable_get_aux_info
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dockable_set_aux_info,@function
gimp_dockable_set_aux_info:             # @gimp_dockable_set_aux_info
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB47_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB47_8
.LBB47_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB47_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB47_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB47_7
.LBB47_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB47_7:                               # %if.end
	jmp	.LBB47_8
.LBB47_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB47_10
# BB#9:                                 # %if.then.8
	jmp	.LBB47_11
.LBB47_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dockable_set_aux_info, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB47_14
.LBB47_11:                              # %if.end.10
	jmp	.LBB47_12
.LBB47_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB47_14
# BB#13:                                # %if.then.17
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_docked_set_aux_info
.LBB47_14:                              # %if.end.20
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_dockable_set_aux_info, .Lfunc_end47-gimp_dockable_set_aux_info
	.cfi_endproc

	.type	gimp_dockable_get_type.g_define_type_id__volatile,@object # @gimp_dockable_get_type.g_define_type_id__volatile
	.local	gimp_dockable_get_type.g_define_type_id__volatile
	.comm	gimp_dockable_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDockable"
	.size	.L.str, 13

	.type	gimp_dockable_get_type.g_implement_interface_info,@object # @gimp_dockable_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_dockable_get_type.g_implement_interface_info:
	.quad	gimp_dockable_session_managed_iface_init
	.quad	0
	.quad	0
	.size	gimp_dockable_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_dockable_new,@object # @__func__.gimp_dockable_new
.L__func__.gimp_dockable_new:
	.asciz	"gimp_dockable_new"
	.size	.L__func__.gimp_dockable_new, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"name != NULL"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"stock_id != NULL"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"help_id != NULL"
	.size	.L.str.4, 16

	.type	.L__func__.gimp_dockable_set_dockbook,@object # @__func__.gimp_dockable_set_dockbook
.L__func__.gimp_dockable_set_dockbook:
	.asciz	"gimp_dockable_set_dockbook"
	.size	.L__func__.gimp_dockable_set_dockbook, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_DOCKABLE (dockable)"
	.size	.L.str.5, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"dockbook == NULL || GIMP_IS_DOCKBOOK (dockbook)"
	.size	.L.str.6, 48

	.type	.L__func__.gimp_dockable_get_dockbook,@object # @__func__.gimp_dockable_get_dockbook
.L__func__.gimp_dockable_get_dockbook:
	.asciz	"gimp_dockable_get_dockbook"
	.size	.L__func__.gimp_dockable_get_dockbook, 27

	.type	.L__func__.gimp_dockable_get_tab_style,@object # @__func__.gimp_dockable_get_tab_style
.L__func__.gimp_dockable_get_tab_style:
	.asciz	"gimp_dockable_get_tab_style"
	.size	.L__func__.gimp_dockable_get_tab_style, 28

	.type	.L__func__.gimp_dockable_get_actual_tab_style,@object # @__func__.gimp_dockable_get_actual_tab_style
.L__func__.gimp_dockable_get_actual_tab_style:
	.asciz	"gimp_dockable_get_actual_tab_style"
	.size	.L__func__.gimp_dockable_get_actual_tab_style, 35

	.type	.L__func__.gimp_dockable_get_name,@object # @__func__.gimp_dockable_get_name
.L__func__.gimp_dockable_get_name:
	.asciz	"gimp_dockable_get_name"
	.size	.L__func__.gimp_dockable_get_name, 23

	.type	.L__func__.gimp_dockable_get_blurb,@object # @__func__.gimp_dockable_get_blurb
.L__func__.gimp_dockable_get_blurb:
	.asciz	"gimp_dockable_get_blurb"
	.size	.L__func__.gimp_dockable_get_blurb, 24

	.type	.L__func__.gimp_dockable_get_help_id,@object # @__func__.gimp_dockable_get_help_id
.L__func__.gimp_dockable_get_help_id:
	.asciz	"gimp_dockable_get_help_id"
	.size	.L__func__.gimp_dockable_get_help_id, 26

	.type	.L__func__.gimp_dockable_get_stock_id,@object # @__func__.gimp_dockable_get_stock_id
.L__func__.gimp_dockable_get_stock_id:
	.asciz	"gimp_dockable_get_stock_id"
	.size	.L__func__.gimp_dockable_get_stock_id, 27

	.type	.L__func__.gimp_dockable_get_locked,@object # @__func__.gimp_dockable_get_locked
.L__func__.gimp_dockable_get_locked:
	.asciz	"gimp_dockable_get_locked"
	.size	.L__func__.gimp_dockable_get_locked, 25

	.type	.L__func__.gimp_dockable_set_drag_pos,@object # @__func__.gimp_dockable_set_drag_pos
.L__func__.gimp_dockable_set_drag_pos:
	.asciz	"gimp_dockable_set_drag_pos"
	.size	.L__func__.gimp_dockable_set_drag_pos, 27

	.type	.L__func__.gimp_dockable_get_drag_pos,@object # @__func__.gimp_dockable_get_drag_pos
.L__func__.gimp_dockable_get_drag_pos:
	.asciz	"gimp_dockable_get_drag_pos"
	.size	.L__func__.gimp_dockable_get_drag_pos, 27

	.type	.L__func__.gimp_dockable_get_drag_handler,@object # @__func__.gimp_dockable_get_drag_handler
.L__func__.gimp_dockable_get_drag_handler:
	.asciz	"gimp_dockable_get_drag_handler"
	.size	.L__func__.gimp_dockable_get_drag_handler, 31

	.type	.L__func__.gimp_dockable_set_locked,@object # @__func__.gimp_dockable_set_locked
.L__func__.gimp_dockable_set_locked:
	.asciz	"gimp_dockable_set_locked"
	.size	.L__func__.gimp_dockable_set_locked, 25

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"locked"
	.size	.L.str.7, 7

	.type	.L__func__.gimp_dockable_is_locked,@object # @__func__.gimp_dockable_is_locked
.L__func__.gimp_dockable_is_locked:
	.asciz	"gimp_dockable_is_locked"
	.size	.L__func__.gimp_dockable_is_locked, 24

	.type	.L__func__.gimp_dockable_set_tab_style,@object # @__func__.gimp_dockable_set_tab_style
.L__func__.gimp_dockable_set_tab_style:
	.asciz	"gimp_dockable_set_tab_style"
	.size	.L__func__.gimp_dockable_set_tab_style, 28

	.type	.L__func__.gimp_dockable_set_actual_tab_style,@object # @__func__.gimp_dockable_set_actual_tab_style
.L__func__.gimp_dockable_set_actual_tab_style:
	.asciz	"gimp_dockable_set_actual_tab_style"
	.size	.L__func__.gimp_dockable_set_actual_tab_style, 35

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"tab_style != GIMP_TAB_STYLE_AUTOMATIC"
	.size	.L.str.8, 38

	.type	.L__func__.gimp_dockable_create_tab_widget,@object # @__func__.gimp_dockable_create_tab_widget
.L__func__.gimp_dockable_create_tab_widget:
	.asciz	"gimp_dockable_create_tab_widget"
	.size	.L__func__.gimp_dockable_create_tab_widget, 32

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.9, 26

	.type	.L__func__.gimp_dockable_create_drag_widget,@object # @__func__.gimp_dockable_create_drag_widget
.L__func__.gimp_dockable_create_drag_widget:
	.asciz	"gimp_dockable_create_drag_widget"
	.size	.L__func__.gimp_dockable_create_drag_widget, 33

	.type	.L__func__.gimp_dockable_set_context,@object # @__func__.gimp_dockable_set_context
.L__func__.gimp_dockable_set_context:
	.asciz	"gimp_dockable_set_context"
	.size	.L__func__.gimp_dockable_set_context, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"context == NULL || GIMP_IS_CONTEXT (context)"
	.size	.L.str.10, 45

	.type	.L__func__.gimp_dockable_get_menu,@object # @__func__.gimp_dockable_get_menu
.L__func__.gimp_dockable_get_menu:
	.asciz	"gimp_dockable_get_menu"
	.size	.L__func__.gimp_dockable_get_menu, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"ui_path != NULL"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"popup_data != NULL"
	.size	.L.str.12, 19

	.type	.L__func__.gimp_dockable_set_drag_handler,@object # @__func__.gimp_dockable_set_drag_handler
.L__func__.gimp_dockable_set_drag_handler:
	.asciz	"gimp_dockable_set_drag_handler"
	.size	.L__func__.gimp_dockable_set_drag_handler, 31

	.type	.L__func__.gimp_dockable_detach,@object # @__func__.gimp_dockable_detach
.L__func__.gimp_dockable_detach:
	.asciz	"gimp_dockable_detach"
	.size	.L__func__.gimp_dockable_detach, 21

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP_IS_DOCKBOOK (dockable->p->dockbook)"
	.size	.L.str.13, 41

	.type	.L__func__.gimp_dockable_blink,@object # @__func__.gimp_dockable_blink
.L__func__.gimp_dockable_blink:
	.asciz	"gimp_dockable_blink"
	.size	.L__func__.gimp_dockable_blink, 20

	.type	.L__func__.gimp_dockable_blink_cancel,@object # @__func__.gimp_dockable_blink_cancel
.L__func__.gimp_dockable_blink_cancel:
	.asciz	"gimp_dockable_blink_cancel"
	.size	.L__func__.gimp_dockable_blink_cancel, 27

	.type	gimp_dockable_parent_class,@object # @gimp_dockable_parent_class
	.local	gimp_dockable_parent_class
	.comm	gimp_dockable_parent_class,8,8
	.type	GimpDockable_private_offset,@object # @GimpDockable_private_offset
	.local	GimpDockable_private_offset
	.comm	GimpDockable_private_offset,4,4
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"content-border"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.15, 54

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimpdockable.c"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"property"
	.size	.L.str.17, 9

	.type	.L__func__.gimp_dockable_add,@object # @__func__.gimp_dockable_add
.L__func__.gimp_dockable_add:
	.asciz	"gimp_dockable_add"
	.size	.L__func__.gimp_dockable_add, 18

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gtk_bin_get_child (GTK_BIN (container)) == NULL"
	.size	.L.str.18, 48

	.type	dialog_target_table,@object # @dialog_target_table
	.section	.rodata,"a",@progbits
	.align	16
dialog_target_table:
	.quad	.L.str.19
	.long	1                       # 0x1
	.long	24                      # 0x18
	.size	dialog_target_table, 16

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"application/x-gimp-dialog"
	.size	.L.str.19, 26

	.type	.L__func__.gimp_dockable_get_aux_info,@object # @__func__.gimp_dockable_get_aux_info
.L__func__.gimp_dockable_get_aux_info:
	.asciz	"gimp_dockable_get_aux_info"
	.size	.L__func__.gimp_dockable_get_aux_info, 27

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"GIMP_IS_DOCKABLE (session_managed)"
	.size	.L.str.20, 35

	.type	.L__func__.gimp_dockable_set_aux_info,@object # @__func__.gimp_dockable_set_aux_info
.L__func__.gimp_dockable_set_aux_info:
	.asciz	"gimp_dockable_set_aux_info"
	.size	.L__func__.gimp_dockable_set_aux_info, 27

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Tab style error, unexpected code path taken, fix!"
	.size	.L.str.21, 50


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
