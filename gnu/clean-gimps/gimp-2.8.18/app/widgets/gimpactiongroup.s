	.text
	.file	"gimpactiongroup.bc"
	.globl	gimp_action_group_get_type
	.align	16, 0x90
	.type	gimp_action_group_get_type,@function
gimp_action_group_get_type:             # @gimp_action_group_get_type
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
	movq	gimp_action_group_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_action_group_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_action_group_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$192, %edx
	movabsq	$gimp_action_group_class_intern_init, %rdi
	movl	$72, %r8d
	movabsq	$gimp_action_group_init, %rcx
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
	movabsq	$gimp_action_group_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_action_group_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_action_group_get_type, .Lfunc_end0-gimp_action_group_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_group_class_intern_init,@function
gimp_action_group_class_intern_init:    # @gimp_action_group_class_intern_init
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
	movq	%rax, gimp_action_group_parent_class
	cmpl	$0, GimpActionGroup_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpActionGroup_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_action_group_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_action_group_class_intern_init, .Lfunc_end1-gimp_action_group_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_group_init,@function
gimp_action_group_init:                 # @gimp_action_group_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_action_group_init, .Lfunc_end2-gimp_action_group_init
	.cfi_endproc

	.globl	gimp_action_group_new
	.align	16, 0x90
	.type	gimp_action_group_new,@function
gimp_action_group_new:                  # @gimp_action_group_new
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
	pushq	%r14
	pushq	%rbx
	subq	$144, %rsp
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB3_18
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -40(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB3_18
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	callq	gimp_action_group_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.7, %rdx
	xorl	%edi, %edi
	movl	%edi, %r8d
	movq	-32(%rbp), %r10
	movq	-40(%rbp), %r11
	movq	-48(%rbp), %rbx
	movq	-56(%rbp), %r14
	movq	%rax, %rdi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%rbx, (%rsp)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB3_18:                               # %return
	movq	-24(%rbp), %rax
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_action_group_new, .Lfunc_end3-gimp_action_group_new
	.cfi_endproc

	.globl	gimp_action_groups_from_name
	.align	16, 0x90
	.type	gimp_action_groups_from_name,@function
gimp_action_groups_from_name:           # @gimp_action_groups_from_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_groups_from_name, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_6
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	callq	gimp_action_group_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_action_groups_from_name, .Lfunc_end4-gimp_action_groups_from_name
	.cfi_endproc

	.globl	gimp_action_group_update
	.align	16, 0x90
	.type	gimp_action_group_update,@function
gimp_action_group_update:               # @gimp_action_group_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_action_group_get_type
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
	movabsq	$.L__func__.gimp_action_group_update, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_14
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB5_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB5_14:                               # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_action_group_update, .Lfunc_end5-gimp_action_group_update
	.cfi_endproc

	.globl	gimp_action_group_add_actions
	.align	16, 0x90
	.type	gimp_action_group_add_actions,@function
gimp_action_group_add_actions:          # @gimp_action_group_add_actions
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_action_group_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_add_actions, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_27
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movl	$0, -32(%rbp)
.LBB6_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jae	.LBB6_27
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	$0, -80(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-32(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_action_group_check_unique_action
	cmpl	$0, %eax
	jne	.LBB6_16
# BB#15:                                # %if.then.17
                                        #   in Loop: Header=BB6_13 Depth=1
	jmp	.LBB6_26
.LBB6_16:                               # %if.end.18
                                        #   in Loop: Header=BB6_13 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB6_20
# BB#17:                                # %if.then.20
                                        #   in Loop: Header=BB6_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rsi
	movslq	-32(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-24(%rbp), %rcx
	movq	16(%rcx), %rdx
	callq	g_dpgettext2
	movq	%rax, -72(%rbp)
	movslq	-32(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB6_19
# BB#18:                                # %if.then.29
                                        #   in Loop: Header=BB6_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rsi
	movslq	-32(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-24(%rbp), %rcx
	movq	32(%rcx), %rdx
	callq	g_dpgettext2
	movq	%rax, -80(%rbp)
.LBB6_19:                               # %if.end.34
                                        #   in Loop: Header=BB6_13 Depth=1
	jmp	.LBB6_21
.LBB6_20:                               # %if.else.35
                                        #   in Loop: Header=BB6_13 Depth=1
	movslq	-32(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gettext
	movq	%rax, -72(%rbp)
	movslq	-32(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gettext
	movq	%rax, -80(%rbp)
.LBB6_21:                               # %if.end.44
                                        #   in Loop: Header=BB6_13 Depth=1
	movslq	-32(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movslq	-32(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	callq	gimp_action_new
	movq	%rax, -64(%rbp)
	movslq	-32(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB6_23
# BB#22:                                # %if.then.54
                                        #   in Loop: Header=BB6_13 Depth=1
	movabsq	$.L.str.9, %rsi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	imulq	$56, %rdx, %rdx
	addq	-24(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB6_23:                               # %if.end.59
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gtk_action_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-32(%rbp), %rsi
	imulq	$56, %rsi, %rsi
	addq	-24(%rbp), %rsi
	movq	24(%rsi), %rdx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_action_group_add_action_with_accel
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	signals, %esi
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movslq	-32(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-24(%rbp), %rcx
	cmpq	$0, 48(%rcx)
	je	.LBB6_25
# BB#24:                                # %if.then.69
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_help_id_quark
	movslq	-32(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-24(%rbp), %rcx
	movq	48(%rcx), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	g_strdup
	movabsq	$g_free, %rcx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_qdata_full
.LBB6_25:                               # %if.end.76
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB6_26:                               # %for.inc
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB6_13
.LBB6_27:                               # %for.end
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_action_group_add_actions, .Lfunc_end6-gimp_action_group_add_actions
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_group_check_unique_action,@function
gimp_action_group_check_unique_action:  # @gimp_action_group_check_unique_action
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	cmpq	$0, %rax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_action_group_get_name
	movabsq	$.L.str.39, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	movl	$1, -4(%rbp)
.LBB7_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_action_group_check_unique_action, .Lfunc_end7-gimp_action_group_check_unique_action
	.cfi_endproc

	.globl	gimp_action_group_add_toggle_actions
	.align	16, 0x90
	.type	gimp_action_group_add_toggle_actions,@function
gimp_action_group_add_toggle_actions:   # @gimp_action_group_add_toggle_actions
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_action_group_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_add_toggle_actions, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_27
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movl	$0, -32(%rbp)
.LBB8_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jae	.LBB8_27
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	$0, -80(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-32(%rbp), %rax
	shlq	$6, %rax
	addq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_action_group_check_unique_action
	cmpl	$0, %eax
	jne	.LBB8_16
# BB#15:                                # %if.then.17
                                        #   in Loop: Header=BB8_13 Depth=1
	jmp	.LBB8_26
.LBB8_16:                               # %if.end.18
                                        #   in Loop: Header=BB8_13 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB8_20
# BB#17:                                # %if.then.20
                                        #   in Loop: Header=BB8_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rsi
	movslq	-32(%rbp), %rcx
	shlq	$6, %rcx
	addq	-24(%rbp), %rcx
	movq	16(%rcx), %rdx
	callq	g_dpgettext2
	movq	%rax, -72(%rbp)
	movslq	-32(%rbp), %rax
	shlq	$6, %rax
	addq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB8_19
# BB#18:                                # %if.then.29
                                        #   in Loop: Header=BB8_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rsi
	movslq	-32(%rbp), %rcx
	shlq	$6, %rcx
	addq	-24(%rbp), %rcx
	movq	32(%rcx), %rdx
	callq	g_dpgettext2
	movq	%rax, -80(%rbp)
.LBB8_19:                               # %if.end.34
                                        #   in Loop: Header=BB8_13 Depth=1
	jmp	.LBB8_21
.LBB8_20:                               # %if.else.35
                                        #   in Loop: Header=BB8_13 Depth=1
	movslq	-32(%rbp), %rax
	shlq	$6, %rax
	addq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gettext
	movq	%rax, -72(%rbp)
	movslq	-32(%rbp), %rax
	shlq	$6, %rax
	addq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gettext
	movq	%rax, -80(%rbp)
.LBB8_21:                               # %if.end.44
                                        #   in Loop: Header=BB8_13 Depth=1
	movslq	-32(%rbp), %rax
	shlq	$6, %rax
	addq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movslq	-32(%rbp), %rax
	shlq	$6, %rax
	addq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	callq	gimp_toggle_action_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movslq	-32(%rbp), %rax
	shlq	$6, %rax
	addq	-24(%rbp), %rax
	movl	48(%rax), %esi
	callq	gtk_toggle_action_set_active
	movslq	-32(%rbp), %rax
	shlq	$6, %rax
	addq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB8_23
# BB#22:                                # %if.then.56
                                        #   in Loop: Header=BB8_13 Depth=1
	movabsq	$.L.str.10, %rsi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	shlq	$6, %rdx
	addq	-24(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB8_23:                               # %if.end.61
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gtk_action_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-32(%rbp), %rsi
	shlq	$6, %rsi
	addq	-24(%rbp), %rsi
	movq	24(%rsi), %rdx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_action_group_add_action_with_accel
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	signals, %esi
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movslq	-32(%rbp), %rcx
	shlq	$6, %rcx
	addq	-24(%rbp), %rcx
	cmpq	$0, 56(%rcx)
	je	.LBB8_25
# BB#24:                                # %if.then.71
                                        #   in Loop: Header=BB8_13 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_help_id_quark
	movslq	-32(%rbp), %rcx
	shlq	$6, %rcx
	addq	-24(%rbp), %rcx
	movq	56(%rcx), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	g_strdup
	movabsq	$g_free, %rcx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_qdata_full
.LBB8_25:                               # %if.end.78
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB8_26:                               # %for.inc
                                        #   in Loop: Header=BB8_13 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB8_13
.LBB8_27:                               # %for.end
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_action_group_add_toggle_actions, .Lfunc_end8-gimp_action_group_add_toggle_actions
	.cfi_endproc

	.globl	gimp_action_group_add_radio_actions
	.align	16, 0x90
	.type	gimp_action_group_add_radio_actions,@function
gimp_action_group_add_radio_actions:    # @gimp_action_group_add_radio_actions
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
	subq	$192, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_action_group_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_add_radio_actions, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_33
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movl	$0, -76(%rbp)
.LBB9_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jae	.LBB9_29
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB9_13 Depth=1
	movq	$0, -128(%rbp)
	movq	-16(%rbp), %rdi
	movslq	-76(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_action_group_check_unique_action
	cmpl	$0, %eax
	jne	.LBB9_16
# BB#15:                                # %if.then.17
                                        #   in Loop: Header=BB9_13 Depth=1
	jmp	.LBB9_28
.LBB9_16:                               # %if.end.18
                                        #   in Loop: Header=BB9_13 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB9_20
# BB#17:                                # %if.then.20
                                        #   in Loop: Header=BB9_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rsi
	movslq	-76(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-32(%rbp), %rcx
	movq	16(%rcx), %rdx
	callq	g_dpgettext2
	movq	%rax, -120(%rbp)
	movslq	-76(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-32(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB9_19
# BB#18:                                # %if.then.29
                                        #   in Loop: Header=BB9_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rsi
	movslq	-76(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-32(%rbp), %rcx
	movq	32(%rcx), %rdx
	callq	g_dpgettext2
	movq	%rax, -128(%rbp)
.LBB9_19:                               # %if.end.34
                                        #   in Loop: Header=BB9_13 Depth=1
	jmp	.LBB9_21
.LBB9_20:                               # %if.else.35
                                        #   in Loop: Header=BB9_13 Depth=1
	movslq	-76(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gettext
	movq	%rax, -120(%rbp)
	movslq	-76(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gettext
	movq	%rax, -128(%rbp)
.LBB9_21:                               # %if.end.44
                                        #   in Loop: Header=BB9_13 Depth=1
	movslq	-76(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-120(%rbp), %rsi
	movq	-128(%rbp), %rdx
	movslq	-76(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movslq	-76(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-32(%rbp), %rax
	movl	40(%rax), %r8d
	callq	gimp_radio_action_new
	movq	%rax, -112(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.LBB9_23
# BB#22:                                # %if.then.55
                                        #   in Loop: Header=BB9_13 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB9_23:                               # %if.end.56
                                        #   in Loop: Header=BB9_13 Depth=1
	movq	-112(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_radio_action_set_group
	movq	-112(%rbp), %rdi
	callq	gtk_radio_action_get_group
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %ecx
	movslq	-76(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-32(%rbp), %rax
	cmpl	40(%rax), %ecx
	jne	.LBB9_25
# BB#24:                                # %if.then.62
                                        #   in Loop: Header=BB9_13 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_action_set_active
.LBB9_25:                               # %if.end.65
                                        #   in Loop: Header=BB9_13 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	gtk_action_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-76(%rbp), %rsi
	imulq	$56, %rsi, %rsi
	addq	-32(%rbp), %rsi
	movq	24(%rsi), %rdx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_action_group_add_action_with_accel
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	signals, %esi
	movq	-112(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movslq	-76(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-32(%rbp), %rcx
	cmpq	$0, 48(%rcx)
	je	.LBB9_27
# BB#26:                                # %if.then.75
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_help_id_quark
	movslq	-76(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-32(%rbp), %rcx
	movq	48(%rcx), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	g_strdup
	movabsq	$g_free, %rcx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_qdata_full
.LBB9_27:                               # %if.end.82
                                        #   in Loop: Header=BB9_13 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB9_28:                               # %for.inc
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB9_13
.LBB9_29:                               # %for.end
	cmpq	$0, -64(%rbp)
	je	.LBB9_32
# BB#30:                                # %land.lhs.true.84
	cmpq	$0, -72(%rbp)
	je	.LBB9_32
# BB#31:                                # %if.then.86
	movabsq	$.L.str.11, %rsi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-184(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB9_32:                               # %if.end.88
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_33:                               # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_action_group_add_radio_actions, .Lfunc_end9-gimp_action_group_add_radio_actions
	.cfi_endproc

	.globl	gimp_action_group_add_enum_actions
	.align	16, 0x90
	.type	gimp_action_group_add_enum_actions,@function
gimp_action_group_add_enum_actions:     # @gimp_action_group_add_enum_actions
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_action_group_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_add_enum_actions, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_27
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movl	$0, -44(%rbp)
.LBB10_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jae	.LBB10_27
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	$0, -96(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-44(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_action_group_check_unique_action
	cmpl	$0, %eax
	jne	.LBB10_16
# BB#15:                                # %if.then.17
                                        #   in Loop: Header=BB10_13 Depth=1
	jmp	.LBB10_26
.LBB10_16:                              # %if.end.18
                                        #   in Loop: Header=BB10_13 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB10_20
# BB#17:                                # %if.then.20
                                        #   in Loop: Header=BB10_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rsi
	movslq	-44(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-24(%rbp), %rcx
	movq	16(%rcx), %rdx
	callq	g_dpgettext2
	movq	%rax, -88(%rbp)
	movslq	-44(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB10_19
# BB#18:                                # %if.then.29
                                        #   in Loop: Header=BB10_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rsi
	movslq	-44(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-24(%rbp), %rcx
	movq	32(%rcx), %rdx
	callq	g_dpgettext2
	movq	%rax, -96(%rbp)
.LBB10_19:                              # %if.end.34
                                        #   in Loop: Header=BB10_13 Depth=1
	jmp	.LBB10_21
.LBB10_20:                              # %if.else.35
                                        #   in Loop: Header=BB10_13 Depth=1
	movslq	-44(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gettext
	movq	%rax, -88(%rbp)
	movslq	-44(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gettext
	movq	%rax, -96(%rbp)
.LBB10_21:                              # %if.end.44
                                        #   in Loop: Header=BB10_13 Depth=1
	movslq	-44(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movslq	-44(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movslq	-44(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movl	40(%rax), %r8d
	movslq	-44(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movl	44(%rax), %r9d
	callq	gimp_enum_action_new
	movq	%rax, -80(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB10_23
# BB#22:                                # %if.then.56
                                        #   in Loop: Header=BB10_13 Depth=1
	movabsq	$.L.str.12, %rsi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB10_23:                              # %if.end.58
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gtk_action_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-44(%rbp), %rsi
	imulq	$56, %rsi, %rsi
	addq	-24(%rbp), %rsi
	movq	24(%rsi), %rdx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_action_group_add_action_with_accel
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	signals, %esi
	movq	-80(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movslq	-44(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-24(%rbp), %rcx
	cmpq	$0, 48(%rcx)
	je	.LBB10_25
# BB#24:                                # %if.then.68
                                        #   in Loop: Header=BB10_13 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_help_id_quark
	movslq	-44(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-24(%rbp), %rcx
	movq	48(%rcx), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	g_strdup
	movabsq	$g_free, %rcx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_qdata_full
.LBB10_25:                              # %if.end.75
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB10_26:                              # %for.inc
                                        #   in Loop: Header=BB10_13 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB10_13
.LBB10_27:                              # %for.end
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_action_group_add_enum_actions, .Lfunc_end10-gimp_action_group_add_enum_actions
	.cfi_endproc

	.globl	gimp_action_group_add_string_actions
	.align	16, 0x90
	.type	gimp_action_group_add_string_actions,@function
gimp_action_group_add_string_actions:   # @gimp_action_group_add_string_actions
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_action_group_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_add_string_actions, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_27
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movl	$0, -44(%rbp)
.LBB11_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jae	.LBB11_27
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	$0, -96(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-44(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_action_group_check_unique_action
	cmpl	$0, %eax
	jne	.LBB11_16
# BB#15:                                # %if.then.17
                                        #   in Loop: Header=BB11_13 Depth=1
	jmp	.LBB11_26
.LBB11_16:                              # %if.end.18
                                        #   in Loop: Header=BB11_13 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB11_20
# BB#17:                                # %if.then.20
                                        #   in Loop: Header=BB11_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rsi
	movslq	-44(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-24(%rbp), %rcx
	movq	16(%rcx), %rdx
	callq	g_dpgettext2
	movq	%rax, -88(%rbp)
	movslq	-44(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB11_19
# BB#18:                                # %if.then.29
                                        #   in Loop: Header=BB11_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rsi
	movslq	-44(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-24(%rbp), %rcx
	movq	32(%rcx), %rdx
	callq	g_dpgettext2
	movq	%rax, -96(%rbp)
.LBB11_19:                              # %if.end.34
                                        #   in Loop: Header=BB11_13 Depth=1
	jmp	.LBB11_21
.LBB11_20:                              # %if.else.35
                                        #   in Loop: Header=BB11_13 Depth=1
	movslq	-44(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gettext
	movq	%rax, -88(%rbp)
	movslq	-44(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gettext
	movq	%rax, -96(%rbp)
.LBB11_21:                              # %if.end.44
                                        #   in Loop: Header=BB11_13 Depth=1
	movslq	-44(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movslq	-44(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movslq	-44(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	40(%rax), %r8
	callq	gimp_string_action_new
	movq	%rax, -80(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB11_23
# BB#22:                                # %if.then.54
                                        #   in Loop: Header=BB11_13 Depth=1
	movabsq	$.L.str.12, %rsi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB11_23:                              # %if.end.56
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gtk_action_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-44(%rbp), %rsi
	imulq	$56, %rsi, %rsi
	addq	-24(%rbp), %rsi
	movq	24(%rsi), %rdx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_action_group_add_action_with_accel
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	signals, %esi
	movq	-80(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movslq	-44(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-24(%rbp), %rcx
	cmpq	$0, 48(%rcx)
	je	.LBB11_25
# BB#24:                                # %if.then.66
                                        #   in Loop: Header=BB11_13 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_help_id_quark
	movslq	-44(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-24(%rbp), %rcx
	movq	48(%rcx), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	g_strdup
	movabsq	$g_free, %rcx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_qdata_full
.LBB11_25:                              # %if.end.73
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB11_26:                              # %for.inc
                                        #   in Loop: Header=BB11_13 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB11_13
.LBB11_27:                              # %for.end
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_action_group_add_string_actions, .Lfunc_end11-gimp_action_group_add_string_actions
	.cfi_endproc

	.globl	gimp_action_group_add_plug_in_actions
	.align	16, 0x90
	.type	gimp_action_group_add_plug_in_actions,@function
gimp_action_group_add_plug_in_actions:  # @gimp_action_group_add_plug_in_actions
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_action_group_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_add_plug_in_actions, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_22
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movl	$0, -36(%rbp)
.LBB12_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB12_22
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB12_13 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_action_group_check_unique_action
	cmpl	$0, %eax
	jne	.LBB12_16
# BB#15:                                # %if.then.15
                                        #   in Loop: Header=BB12_13 Depth=1
	jmp	.LBB12_21
.LBB12_16:                              # %if.end.16
                                        #   in Loop: Header=BB12_13 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movslq	-36(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	movslq	-36(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movslq	-36(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movslq	-36(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-16(%rbp), %rax
	movq	40(%rax), %r8
	callq	gimp_plug_in_action_new
	movq	%rax, -72(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB12_18
# BB#17:                                # %if.then.30
                                        #   in Loop: Header=BB12_13 Depth=1
	movabsq	$.L.str.12, %rsi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB12_18:                              # %if.end.32
                                        #   in Loop: Header=BB12_13 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gtk_action_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-36(%rbp), %rsi
	imulq	$56, %rsi, %rsi
	addq	-16(%rbp), %rsi
	movq	24(%rsi), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_action_group_add_action_with_accel
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	signals, %esi
	movq	-72(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movslq	-36(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-16(%rbp), %rcx
	cmpq	$0, 48(%rcx)
	je	.LBB12_20
# BB#19:                                # %if.then.42
                                        #   in Loop: Header=BB12_13 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_help_id_quark
	movslq	-36(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-16(%rbp), %rcx
	movq	48(%rcx), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	g_strdup
	movabsq	$g_free, %rcx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_qdata_full
.LBB12_20:                              # %if.end.49
                                        #   in Loop: Header=BB12_13 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB12_21:                              # %for.inc
                                        #   in Loop: Header=BB12_13 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB12_13
.LBB12_22:                              # %for.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_action_group_add_plug_in_actions, .Lfunc_end12-gimp_action_group_add_plug_in_actions
	.cfi_endproc

	.globl	gimp_action_group_activate_action
	.align	16, 0x90
	.type	gimp_action_group_activate_action,@function
gimp_action_group_activate_action:      # @gimp_action_group_activate_action
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_action_group_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_activate_action, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_20
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB13_15
# BB#14:                                # %if.then.13
	jmp	.LBB13_16
.LBB13_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_activate_action, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_20
.LBB13_16:                              # %if.end.15
	jmp	.LBB13_17
.LBB13_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_19
# BB#18:                                # %if.then.21
	movabsq	$.L.str.14, %rdi
	movabsq	$.L__func__.gimp_action_group_activate_action, %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB13_20
.LBB13_19:                              # %if.end.22
	movq	-24(%rbp), %rdi
	callq	gtk_action_activate
.LBB13_20:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_action_group_activate_action, .Lfunc_end13-gimp_action_group_activate_action
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB14_2
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
.LBB14_2:                               # %entry
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
.Lfunc_end14:
	.size	g_warning, .Lfunc_end14-g_warning
	.cfi_endproc

	.globl	gimp_action_group_set_action_visible
	.align	16, 0x90
	.type	gimp_action_group_set_action_visible,@function
gimp_action_group_set_action_visible:   # @gimp_action_group_set_action_visible
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_action_group_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_visible, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_20
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB15_15
# BB#14:                                # %if.then.13
	jmp	.LBB15_16
.LBB15_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_visible, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_20
.LBB15_16:                              # %if.end.15
	jmp	.LBB15_17
.LBB15_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB15_19
# BB#18:                                # %if.then.21
	movabsq	$.L.str.15, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_visible, %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB15_20
.LBB15_19:                              # %if.end.22
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gtk_action_set_visible
.LBB15_20:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_action_group_set_action_visible, .Lfunc_end15-gimp_action_group_set_action_visible
	.cfi_endproc

	.globl	gimp_action_group_set_action_sensitive
	.align	16, 0x90
	.type	gimp_action_group_set_action_sensitive,@function
gimp_action_group_set_action_sensitive: # @gimp_action_group_set_action_sensitive
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_action_group_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_sensitive, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_20
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB16_15
# BB#14:                                # %if.then.13
	jmp	.LBB16_16
.LBB16_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_sensitive, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_20
.LBB16_16:                              # %if.end.15
	jmp	.LBB16_17
.LBB16_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB16_19
# BB#18:                                # %if.then.21
	movabsq	$.L.str.16, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_sensitive, %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB16_20
.LBB16_19:                              # %if.end.22
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gtk_action_set_sensitive
.LBB16_20:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_action_group_set_action_sensitive, .Lfunc_end16-gimp_action_group_set_action_sensitive
	.cfi_endproc

	.globl	gimp_action_group_set_action_active
	.align	16, 0x90
	.type	gimp_action_group_set_action_active,@function
gimp_action_group_set_action_active:    # @gimp_action_group_set_action_active
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_action_group_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_active, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_29
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB17_15
# BB#14:                                # %if.then.13
	jmp	.LBB17_16
.LBB17_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_active, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_29
.LBB17_16:                              # %if.end.15
	jmp	.LBB17_17
.LBB17_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB17_19
# BB#18:                                # %if.then.21
	movabsq	$.L.str.17, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_active, %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB17_29
.LBB17_19:                              # %if.end.22
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gtk_toggle_action_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB17_21
# BB#20:                                # %if.then.31
	movl	$0, -76(%rbp)
	jmp	.LBB17_26
.LBB17_21:                              # %if.else.32
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_24
# BB#22:                                # %land.lhs.true.35
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB17_24
# BB#23:                                # %if.then.39
	movl	$1, -76(%rbp)
	jmp	.LBB17_25
.LBB17_24:                              # %if.else.40
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB17_25:                              # %if.end.42
	jmp	.LBB17_26
.LBB17_26:                              # %if.end.43
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	jne	.LBB17_28
# BB#27:                                # %if.then.46
	movabsq	$.L.str.18, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_active, %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB17_29
.LBB17_28:                              # %if.end.47
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	cmpl	$0, -20(%rbp)
	cmovnel	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_toggle_action_set_active
.LBB17_29:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_action_group_set_action_active, .Lfunc_end17-gimp_action_group_set_action_active
	.cfi_endproc

	.globl	gimp_action_group_set_action_label
	.align	16, 0x90
	.type	gimp_action_group_set_action_label,@function
gimp_action_group_set_action_label:     # @gimp_action_group_set_action_label
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_action_group_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_label, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_20
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB18_15
# BB#14:                                # %if.then.13
	jmp	.LBB18_16
.LBB18_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_label, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_20
.LBB18_16:                              # %if.end.15
	jmp	.LBB18_17
.LBB18_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB18_19
# BB#18:                                # %if.then.21
	movabsq	$.L.str.19, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_label, %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB18_20
.LBB18_19:                              # %if.end.22
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_action_set_label
.LBB18_20:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_action_group_set_action_label, .Lfunc_end18-gimp_action_group_set_action_label
	.cfi_endproc

	.globl	gimp_action_group_set_action_tooltip
	.align	16, 0x90
	.type	gimp_action_group_set_action_tooltip,@function
gimp_action_group_set_action_tooltip:   # @gimp_action_group_set_action_tooltip
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_action_group_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_tooltip, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_20
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	jmp	.LBB19_13
.LBB19_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB19_15
# BB#14:                                # %if.then.13
	jmp	.LBB19_16
.LBB19_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_tooltip, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_20
.LBB19_16:                              # %if.end.15
	jmp	.LBB19_17
.LBB19_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB19_19
# BB#18:                                # %if.then.21
	movabsq	$.L.str.20, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_tooltip, %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB19_20
.LBB19_19:                              # %if.end.22
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_action_set_tooltip
.LBB19_20:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_action_group_set_action_tooltip, .Lfunc_end19-gimp_action_group_set_action_tooltip
	.cfi_endproc

	.globl	gimp_action_group_get_action_tooltip
	.align	16, 0x90
	.type	gimp_action_group_get_action_tooltip,@function
gimp_action_group_get_action_tooltip:   # @gimp_action_group_get_action_tooltip
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
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_action_group_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_get_action_tooltip, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB20_20
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	jmp	.LBB20_13
.LBB20_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB20_15
# BB#14:                                # %if.then.13
	jmp	.LBB20_16
.LBB20_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_get_action_tooltip, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB20_20
.LBB20_16:                              # %if.end.15
	jmp	.LBB20_17
.LBB20_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB20_19
# BB#18:                                # %if.then.21
	movabsq	$.L.str.21, %rdi
	movabsq	$.L__func__.gimp_action_group_get_action_tooltip, %rsi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB20_20
.LBB20_19:                              # %if.end.22
	movq	-32(%rbp), %rdi
	callq	gtk_action_get_tooltip
	movq	%rax, -8(%rbp)
.LBB20_20:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_action_group_get_action_tooltip, .Lfunc_end20-gimp_action_group_get_action_tooltip
	.cfi_endproc

	.globl	gimp_action_group_set_action_color
	.align	16, 0x90
	.type	gimp_action_group_set_action_color,@function
gimp_action_group_set_action_color:     # @gimp_action_group_set_action_color
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_action_group_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_color, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_34
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	jmp	.LBB21_13
.LBB21_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB21_15
# BB#14:                                # %if.then.13
	jmp	.LBB21_16
.LBB21_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_color, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_34
.LBB21_16:                              # %if.end.15
	jmp	.LBB21_17
.LBB21_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB21_19
# BB#18:                                # %if.then.21
	movabsq	$.L.str.22, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_color, %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB21_34
.LBB21_19:                              # %if.end.22
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_action_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB21_21
# BB#20:                                # %if.then.31
	movl	$0, -84(%rbp)
	jmp	.LBB21_26
.LBB21_21:                              # %if.else.32
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_24
# BB#22:                                # %land.lhs.true.35
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB21_24
# BB#23:                                # %if.then.39
	movl	$1, -84(%rbp)
	jmp	.LBB21_25
.LBB21_24:                              # %if.else.40
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB21_25:                              # %if.end.42
	jmp	.LBB21_26
.LBB21_26:                              # %if.end.43
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	jne	.LBB21_28
# BB#27:                                # %if.then.46
	movabsq	$.L.str.23, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_color, %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB21_34
.LBB21_28:                              # %if.end.47
	cmpl	$0, -28(%rbp)
	je	.LBB21_33
# BB#29:                                # %if.then.49
	cmpq	$0, -24(%rbp)
	je	.LBB21_31
# BB#30:                                # %if.then.52
	movabsq	$.L.str.24, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	8(%rdi), %xmm1          # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	16(%rdi), %xmm2         # xmm2 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	24(%rdi), %xmm3         # xmm3 = mem[0],zero
	movq	%rax, %rdi
	movb	$4, %al
	callq	g_strdup_printf
	movq	%rax, -96(%rbp)
	jmp	.LBB21_32
.LBB21_31:                              # %if.else.55
	movabsq	$.L.str.25, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -96(%rbp)
.LBB21_32:                              # %if.end.58
	movabsq	$.L.str.26, %rsi
	movabsq	$.L.str.6, %rcx
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-96(%rbp), %r8
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
	movq	-96(%rbp), %rdi
	callq	g_free
	jmp	.LBB21_34
.LBB21_33:                              # %if.else.59
	movabsq	$.L.str.26, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
.LBB21_34:                              # %if.end.60
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_action_group_set_action_color, .Lfunc_end21-gimp_action_group_set_action_color
	.cfi_endproc

	.globl	gimp_action_group_set_action_viewable
	.align	16, 0x90
	.type	gimp_action_group_set_action_viewable,@function
gimp_action_group_set_action_viewable:  # @gimp_action_group_set_action_viewable
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_action_group_get_type
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
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_viewable, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_42
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	jmp	.LBB22_13
.LBB22_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB22_15
# BB#14:                                # %if.then.13
	jmp	.LBB22_16
.LBB22_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_viewable, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_42
.LBB22_16:                              # %if.end.15
	jmp	.LBB22_17
.LBB22_17:                              # %do.end.16
	jmp	.LBB22_18
.LBB22_18:                              # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB22_27
# BB#19:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB22_21
# BB#20:                                # %if.then.27
	movl	$0, -76(%rbp)
	jmp	.LBB22_26
.LBB22_21:                              # %if.else.28
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_24
# BB#22:                                # %land.lhs.true.31
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB22_24
# BB#23:                                # %if.then.35
	movl	$1, -76(%rbp)
	jmp	.LBB22_25
.LBB22_24:                              # %if.else.36
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB22_25:                              # %if.end.38
	jmp	.LBB22_26
.LBB22_26:                              # %if.end.39
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB22_28
.LBB22_27:                              # %if.then.42
	jmp	.LBB22_29
.LBB22_28:                              # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_viewable, %rsi
	movabsq	$.L.str.27, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_42
.LBB22_29:                              # %if.end.44
	jmp	.LBB22_30
.LBB22_30:                              # %do.end.45
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB22_32
# BB#31:                                # %if.then.50
	movabsq	$.L.str.28, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_viewable, %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB22_42
.LBB22_32:                              # %if.end.51
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_action_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB22_34
# BB#33:                                # %if.then.60
	movl	$0, -100(%rbp)
	jmp	.LBB22_39
.LBB22_34:                              # %if.else.61
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_37
# BB#35:                                # %land.lhs.true.64
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB22_37
# BB#36:                                # %if.then.68
	movl	$1, -100(%rbp)
	jmp	.LBB22_38
.LBB22_37:                              # %if.else.69
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB22_38:                              # %if.end.71
	jmp	.LBB22_39
.LBB22_39:                              # %if.end.72
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	jne	.LBB22_41
# BB#40:                                # %if.then.75
	movabsq	$.L.str.29, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_viewable, %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB22_42
.LBB22_41:                              # %if.end.76
	movabsq	$.L.str.30, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
.LBB22_42:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_action_group_set_action_viewable, .Lfunc_end22-gimp_action_group_set_action_viewable
	.cfi_endproc

	.globl	gimp_action_group_set_action_hide_empty
	.align	16, 0x90
	.type	gimp_action_group_set_action_hide_empty,@function
gimp_action_group_set_action_hide_empty: # @gimp_action_group_set_action_hide_empty
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_action_group_get_type
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
	movabsq	$.L__func__.gimp_action_group_set_action_hide_empty, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_20
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	jmp	.LBB23_13
.LBB23_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB23_15
# BB#14:                                # %if.then.13
	jmp	.LBB23_16
.LBB23_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_hide_empty, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_20
.LBB23_16:                              # %if.end.15
	jmp	.LBB23_17
.LBB23_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB23_19
# BB#18:                                # %if.then.21
	movabsq	$.L.str.31, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_hide_empty, %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB23_20
.LBB23_19:                              # %if.end.22
	movabsq	$.L.str.32, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	cmpl	$0, -20(%rbp)
	cmovnel	%edx, %eax
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB23_20:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_action_group_set_action_hide_empty, .Lfunc_end23-gimp_action_group_set_action_hide_empty
	.cfi_endproc

	.globl	gimp_action_group_set_action_always_show_image
	.align	16, 0x90
	.type	gimp_action_group_set_action_always_show_image,@function
gimp_action_group_set_action_always_show_image: # @gimp_action_group_set_action_always_show_image
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_action_group_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_always_show_image, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_20
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	jmp	.LBB24_13
.LBB24_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB24_15
# BB#14:                                # %if.then.13
	jmp	.LBB24_16
.LBB24_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_always_show_image, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_20
.LBB24_16:                              # %if.end.15
	jmp	.LBB24_17
.LBB24_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB24_19
# BB#18:                                # %if.then.21
	movabsq	$.L.str.33, %rdi
	movabsq	$.L__func__.gimp_action_group_set_action_always_show_image, %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB24_20
.LBB24_19:                              # %if.end.22
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gtk_action_set_always_show_image
.LBB24_20:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_action_group_set_action_always_show_image, .Lfunc_end24-gimp_action_group_set_action_always_show_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_group_class_init,@function
gimp_action_group_class_init:           # @gimp_action_group_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp80:
	.cfi_offset %rbx, -32
.Ltmp81:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_action_group_get_property, %rsi
	movabsq	$gimp_action_group_set_property, %rdi
	movabsq	$gimp_action_group_finalize, %rcx
	movabsq	$gimp_action_group_dispose, %rdx
	movabsq	$gimp_action_group_constructed, %r8
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%r8, 72(%rax)
	movq	-32(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-32(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-32(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_get_type
	movabsq	$.L.str.4, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$235, %r8d
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$235, %r8d
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$3, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	movabsq	$g_free, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	callq	g_hash_table_new_full
	movq	-24(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_action_get_type
	movabsq	$.L.str.34, %rdi
	movl	$2, %edx
	movl	$184, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r10
	movl	$4, %r8d
	movl	%r8d, %r11d
	movl	$1, %r8d
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	movq	-72(%rbp), %r14         # 8-byte Reload
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movq	%r14, %r8
	movq	%r14, %r9
	movq	%r10, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movq	%r11, -88(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movl	%eax, signals
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_action_group_class_init, .Lfunc_end25-gimp_action_group_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_group_constructed,@function
gimp_action_group_constructed:          # @gimp_action_group_constructed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_action_group_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_action_group_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB26_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_action_group_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB26_2:                               # %if.end
	jmp	.LBB26_3
.LBB26_3:                               # %do.body
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB26_5
# BB#4:                                 # %if.then.7
	movl	$0, -44(%rbp)
	jmp	.LBB26_10
.LBB26_5:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_8
# BB#6:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB26_8
# BB#7:                                 # %if.then.10
	movl	$1, -44(%rbp)
	jmp	.LBB26_9
.LBB26_8:                               # %if.else.11
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB26_9:                               # %if.end.13
	jmp	.LBB26_10
.LBB26_10:                              # %if.end.14
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB26_12
# BB#11:                                # %if.then.16
	jmp	.LBB26_13
.LBB26_12:                              # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.35, %rsi
	movl	$138, %edx
	movabsq	$.L__func__.gimp_action_group_constructed, %rcx
	movabsq	$.L.str.36, %r8
	callq	g_assertion_message_expr
.LBB26_13:                              # %if.end.18
	jmp	.LBB26_14
.LBB26_14:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_action_group_get_name
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB26_16
# BB#15:                                # %if.then.23
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-64(%rbp), %rsi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	callq	g_hash_table_replace
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB26_16:                              # %if.end.32
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_action_group_constructed, .Lfunc_end26-gimp_action_group_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_group_dispose,@function
gimp_action_group_dispose:              # @gimp_action_group_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_action_group_get_name
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB27_7
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB27_6
# BB#2:                                 # %if.then.5
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB27_4
# BB#3:                                 # %if.then.8
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	g_hash_table_replace
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB27_5
.LBB27_4:                               # %if.else
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	g_hash_table_remove
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB27_5:                               # %if.end
	jmp	.LBB27_6
.LBB27_6:                               # %if.end.14
	jmp	.LBB27_7
.LBB27_7:                               # %if.end.15
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_action_group_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_action_group_dispose, .Lfunc_end27-gimp_action_group_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_group_finalize,@function
gimp_action_group_finalize:             # @gimp_action_group_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_action_group_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB28_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB28_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB28_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
.LBB28_4:                               # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_action_group_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_action_group_finalize, .Lfunc_end28-gimp_action_group_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_group_set_property,@function
gimp_action_group_set_property:         # @gimp_action_group_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_action_group_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB29_1
	jmp	.LBB29_8
.LBB29_8:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB29_2
	jmp	.LBB29_9
.LBB29_9:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB29_3
	jmp	.LBB29_4
.LBB29_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	jmp	.LBB29_7
.LBB29_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 40(%rdi)
	jmp	.LBB29_7
.LBB29_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 48(%rdi)
	jmp	.LBB29_7
.LBB29_4:                               # %sw.default
	jmp	.LBB29_5
.LBB29_5:                               # %do.body
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
	movabsq	$.L.str.37, %rdi
	movabsq	$.L.str.35, %rsi
	movl	$228, %edx
	movabsq	$.L.str.38, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB29_7
.LBB29_7:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_action_group_set_property, .Lfunc_end29-gimp_action_group_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_group_get_property,@function
gimp_action_group_get_property:         # @gimp_action_group_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_action_group_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB30_1
	jmp	.LBB30_8
.LBB30_8:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB30_2
	jmp	.LBB30_9
.LBB30_9:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB30_3
	jmp	.LBB30_4
.LBB30_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB30_7
.LBB30_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB30_7
.LBB30_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	48(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB30_7
.LBB30_4:                               # %sw.default
	jmp	.LBB30_5
.LBB30_5:                               # %do.body
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
	movabsq	$.L.str.37, %rdi
	movabsq	$.L.str.35, %rsi
	movl	$254, %edx
	movabsq	$.L.str.38, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB30_7
.LBB30_7:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_action_group_get_property, .Lfunc_end30-gimp_action_group_get_property
	.cfi_endproc

	.type	gimp_action_group_get_type.g_define_type_id__volatile,@object # @gimp_action_group_get_type.g_define_type_id__volatile
	.local	gimp_action_group_get_type.g_define_type_id__volatile
	.comm	gimp_action_group_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpActionGroup"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_action_group_new,@object # @__func__.gimp_action_group_new
.L__func__.gimp_action_group_new:
	.asciz	"gimp_action_group_new"
	.size	.L__func__.gimp_action_group_new, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"name != NULL"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"name"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"label"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"stock-id"
	.size	.L.str.7, 9

	.type	.L__func__.gimp_action_groups_from_name,@object # @__func__.gimp_action_groups_from_name
.L__func__.gimp_action_groups_from_name:
	.asciz	"gimp_action_groups_from_name"
	.size	.L__func__.gimp_action_groups_from_name, 29

	.type	.L__func__.gimp_action_group_update,@object # @__func__.gimp_action_group_update
.L__func__.gimp_action_group_update:
	.asciz	"gimp_action_group_update"
	.size	.L__func__.gimp_action_group_update, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_ACTION_GROUP (group)"
	.size	.L.str.8, 29

	.type	.L__func__.gimp_action_group_add_actions,@object # @__func__.gimp_action_group_add_actions
.L__func__.gimp_action_group_add_actions:
	.asciz	"gimp_action_group_add_actions"
	.size	.L__func__.gimp_action_group_add_actions, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"activate"
	.size	.L.str.9, 9

	.type	signals,@object         # @signals
	.local	signals
	.comm	signals,4,4
	.type	.L__func__.gimp_action_group_add_toggle_actions,@object # @__func__.gimp_action_group_add_toggle_actions
.L__func__.gimp_action_group_add_toggle_actions:
	.asciz	"gimp_action_group_add_toggle_actions"
	.size	.L__func__.gimp_action_group_add_toggle_actions, 37

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"toggled"
	.size	.L.str.10, 8

	.type	.L__func__.gimp_action_group_add_radio_actions,@object # @__func__.gimp_action_group_add_radio_actions
.L__func__.gimp_action_group_add_radio_actions:
	.asciz	"gimp_action_group_add_radio_actions"
	.size	.L__func__.gimp_action_group_add_radio_actions, 36

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"changed"
	.size	.L.str.11, 8

	.type	.L__func__.gimp_action_group_add_enum_actions,@object # @__func__.gimp_action_group_add_enum_actions
.L__func__.gimp_action_group_add_enum_actions:
	.asciz	"gimp_action_group_add_enum_actions"
	.size	.L__func__.gimp_action_group_add_enum_actions, 35

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"selected"
	.size	.L.str.12, 9

	.type	.L__func__.gimp_action_group_add_string_actions,@object # @__func__.gimp_action_group_add_string_actions
.L__func__.gimp_action_group_add_string_actions:
	.asciz	"gimp_action_group_add_string_actions"
	.size	.L__func__.gimp_action_group_add_string_actions, 37

	.type	.L__func__.gimp_action_group_add_plug_in_actions,@object # @__func__.gimp_action_group_add_plug_in_actions
.L__func__.gimp_action_group_add_plug_in_actions:
	.asciz	"gimp_action_group_add_plug_in_actions"
	.size	.L__func__.gimp_action_group_add_plug_in_actions, 38

	.type	.L__func__.gimp_action_group_activate_action,@object # @__func__.gimp_action_group_activate_action
.L__func__.gimp_action_group_activate_action:
	.asciz	"gimp_action_group_activate_action"
	.size	.L__func__.gimp_action_group_activate_action, 34

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"action_name != NULL"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s: Unable to activate action which doesn't exist: %s"
	.size	.L.str.14, 54

	.type	.L__func__.gimp_action_group_set_action_visible,@object # @__func__.gimp_action_group_set_action_visible
.L__func__.gimp_action_group_set_action_visible:
	.asciz	"gimp_action_group_set_action_visible"
	.size	.L__func__.gimp_action_group_set_action_visible, 37

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s: Unable to set visibility of action which doesn't exist: %s"
	.size	.L.str.15, 63

	.type	.L__func__.gimp_action_group_set_action_sensitive,@object # @__func__.gimp_action_group_set_action_sensitive
.L__func__.gimp_action_group_set_action_sensitive:
	.asciz	"gimp_action_group_set_action_sensitive"
	.size	.L__func__.gimp_action_group_set_action_sensitive, 39

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s: Unable to set sensitivity of action which doesn't exist: %s"
	.size	.L.str.16, 64

	.type	.L__func__.gimp_action_group_set_action_active,@object # @__func__.gimp_action_group_set_action_active
.L__func__.gimp_action_group_set_action_active:
	.asciz	"gimp_action_group_set_action_active"
	.size	.L__func__.gimp_action_group_set_action_active, 36

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s: Unable to set \"active\" of action which doesn't exist: %s"
	.size	.L.str.17, 61

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s: Unable to set \"active\" of action which is not a GtkToggleAction: %s"
	.size	.L.str.18, 72

	.type	.L__func__.gimp_action_group_set_action_label,@object # @__func__.gimp_action_group_set_action_label
.L__func__.gimp_action_group_set_action_label:
	.asciz	"gimp_action_group_set_action_label"
	.size	.L__func__.gimp_action_group_set_action_label, 35

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s: Unable to set label of action which doesn't exist: %s"
	.size	.L.str.19, 58

	.type	.L__func__.gimp_action_group_set_action_tooltip,@object # @__func__.gimp_action_group_set_action_tooltip
.L__func__.gimp_action_group_set_action_tooltip:
	.asciz	"gimp_action_group_set_action_tooltip"
	.size	.L__func__.gimp_action_group_set_action_tooltip, 37

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s: Unable to set tooltip of action which doesn't exist: %s"
	.size	.L.str.20, 60

	.type	.L__func__.gimp_action_group_get_action_tooltip,@object # @__func__.gimp_action_group_get_action_tooltip
.L__func__.gimp_action_group_get_action_tooltip:
	.asciz	"gimp_action_group_get_action_tooltip"
	.size	.L__func__.gimp_action_group_get_action_tooltip, 37

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s: Unable to get tooltip of action which doesn't exist: %s"
	.size	.L.str.21, 60

	.type	.L__func__.gimp_action_group_set_action_color,@object # @__func__.gimp_action_group_set_action_color
.L__func__.gimp_action_group_set_action_color:
	.asciz	"gimp_action_group_set_action_color"
	.size	.L__func__.gimp_action_group_set_action_color, 35

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%s: Unable to set color of action which doesn't exist: %s"
	.size	.L.str.22, 58

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s: Unable to set \"color\" of action which is not a GimpAction: %s"
	.size	.L.str.23, 66

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"RGBA (%0.3f, %0.3f, %0.3f, %0.3f)"
	.size	.L.str.24, 34

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"(none)"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"color"
	.size	.L.str.26, 6

	.type	.L__func__.gimp_action_group_set_action_viewable,@object # @__func__.gimp_action_group_set_action_viewable
.L__func__.gimp_action_group_set_action_viewable:
	.asciz	"gimp_action_group_set_action_viewable"
	.size	.L__func__.gimp_action_group_set_action_viewable, 38

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"viewable == NULL || GIMP_IS_VIEWABLE (viewable)"
	.size	.L.str.27, 48

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%s: Unable to set viewable of action which doesn't exist: %s"
	.size	.L.str.28, 61

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%s: Unable to set \"viewable\" of action which is not a GimpAction: %s"
	.size	.L.str.29, 69

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"viewable"
	.size	.L.str.30, 9

	.type	.L__func__.gimp_action_group_set_action_hide_empty,@object # @__func__.gimp_action_group_set_action_hide_empty
.L__func__.gimp_action_group_set_action_hide_empty:
	.asciz	"gimp_action_group_set_action_hide_empty"
	.size	.L__func__.gimp_action_group_set_action_hide_empty, 40

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%s: Unable to set \"hide-if-empty\" of action which doesn't exist: %s"
	.size	.L.str.31, 68

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"hide-if-empty"
	.size	.L.str.32, 14

	.type	.L__func__.gimp_action_group_set_action_always_show_image,@object # @__func__.gimp_action_group_set_action_always_show_image
.L__func__.gimp_action_group_set_action_always_show_image:
	.asciz	"gimp_action_group_set_action_always_show_image"
	.size	.L__func__.gimp_action_group_set_action_always_show_image, 47

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%s: Unable to set \"always-show-image\" of action which doesn't exist: %s"
	.size	.L.str.33, 72

	.type	gimp_action_group_parent_class,@object # @gimp_action_group_parent_class
	.local	gimp_action_group_parent_class
	.comm	gimp_action_group_parent_class,8,8
	.type	GimpActionGroup_private_offset,@object # @GimpActionGroup_private_offset
	.local	GimpActionGroup_private_offset
	.comm	GimpActionGroup_private_offset,4,4
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"action-added"
	.size	.L.str.34, 13

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimpactiongroup.c"
	.size	.L.str.35, 18

	.type	.L__func__.gimp_action_group_constructed,@object # @__func__.gimp_action_group_constructed
.L__func__.gimp_action_group_constructed:
	.asciz	"gimp_action_group_constructed"
	.size	.L__func__.gimp_action_group_constructed, 30

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"GIMP_IS_GIMP (group->gimp)"
	.size	.L.str.36, 27

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.37, 54

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"property"
	.size	.L.str.38, 9

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Refusing to add non-unique action '%s' to action group '%s'"
	.size	.L.str.39, 60


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
