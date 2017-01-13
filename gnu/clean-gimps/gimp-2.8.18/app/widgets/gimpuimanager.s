	.text
	.file	"gimpuimanager.bc"
	.globl	gimp_ui_manager_get_type
	.align	16, 0x90
	.type	gimp_ui_manager_get_type,@function
gimp_ui_manager_get_type:               # @gimp_ui_manager_get_type
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
	movq	gimp_ui_manager_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_ui_manager_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_ui_manager_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$248, %edx
	movabsq	$gimp_ui_manager_class_intern_init, %rdi
	movl	$56, %r8d
	movabsq	$gimp_ui_manager_init, %rcx
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
	movabsq	$gimp_ui_manager_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_ui_manager_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_ui_manager_get_type, .Lfunc_end0-gimp_ui_manager_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_class_intern_init,@function
gimp_ui_manager_class_intern_init:      # @gimp_ui_manager_class_intern_init
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
	movq	%rax, gimp_ui_manager_parent_class
	cmpl	$0, GimpUIManager_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpUIManager_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_ui_manager_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_ui_manager_class_intern_init, .Lfunc_end1-gimp_ui_manager_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_init,@function
gimp_ui_manager_init:                   # @gimp_ui_manager_init
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
	movq	-8(%rbp), %rdi
	movq	$0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 40(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_ui_manager_init, .Lfunc_end2-gimp_ui_manager_init
	.cfi_endproc

	.globl	gimp_ui_manager_new
	.align	16, 0x90
	.type	gimp_ui_manager_new,@function
gimp_ui_manager_new:                    # @gimp_ui_manager_new
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_ui_manager_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_ui_manager_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_ui_manager_new, .Lfunc_end3-gimp_ui_manager_new
	.cfi_endproc

	.globl	gimp_ui_managers_from_name
	.align	16, 0x90
	.type	gimp_ui_managers_from_name,@function
gimp_ui_managers_from_name:             # @gimp_ui_managers_from_name
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_ui_managers_from_name, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_6
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	callq	gimp_ui_manager_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdi
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
	.size	gimp_ui_managers_from_name, .Lfunc_end4-gimp_ui_managers_from_name
	.cfi_endproc

	.globl	gimp_ui_manager_update
	.align	16, 0x90
	.type	gimp_ui_manager_update,@function
gimp_ui_manager_update:                 # @gimp_ui_manager_update
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_ui_manager_get_type
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
	movabsq	$.L__func__.gimp_ui_manager_update, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	manager_signals, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB5_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_ui_manager_update, .Lfunc_end5-gimp_ui_manager_update
	.cfi_endproc

	.globl	gimp_ui_manager_get_action_group
	.align	16, 0x90
	.type	gimp_ui_manager_get_action_group,@function
gimp_ui_manager_get_action_group:       # @gimp_ui_manager_get_action_group
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_ui_manager_get_type
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
	movabsq	$.L__func__.gimp_ui_manager_get_action_group, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_27
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_ui_manager_get_action_group, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_27
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_action_groups
	movq	%rax, -32(%rbp)
.LBB6_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB6_26
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB6_18 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_action_group_get_name
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_21
# BB#20:                                # %if.then.27
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_27
.LBB6_21:                               # %if.end.28
                                        #   in Loop: Header=BB6_18 Depth=1
	jmp	.LBB6_22
.LBB6_22:                               # %for.inc
                                        #   in Loop: Header=BB6_18 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB6_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB6_18 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB6_25
.LBB6_24:                               # %cond.false
                                        #   in Loop: Header=BB6_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB6_25
.LBB6_25:                               # %cond.end
                                        #   in Loop: Header=BB6_18 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB6_18
.LBB6_26:                               # %for.end
	movq	$0, -8(%rbp)
.LBB6_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_ui_manager_get_action_group, .Lfunc_end6-gimp_ui_manager_get_action_group
	.cfi_endproc

	.globl	gimp_ui_manager_find_action
	.align	16, 0x90
	.type	gimp_ui_manager_find_action,@function
gimp_ui_manager_find_action:            # @gimp_ui_manager_find_action
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_ui_manager_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_ui_manager_find_action, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_32
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_ui_manager_find_action, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_32
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	cmpq	$0, -24(%rbp)
	je	.LBB7_21
# BB#18:                                # %if.then.18
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_ui_manager_get_action_group
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB7_20
# BB#19:                                # %if.then.21
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -48(%rbp)
.LBB7_20:                               # %if.end.25
	jmp	.LBB7_31
.LBB7_21:                               # %if.else.26
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_action_groups
	movq	%rax, -80(%rbp)
.LBB7_22:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB7_30
# BB#23:                                # %for.body
                                        #   in Loop: Header=BB7_22 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB7_25
# BB#24:                                # %if.then.36
	jmp	.LBB7_30
.LBB7_25:                               # %if.end.37
                                        #   in Loop: Header=BB7_22 Depth=1
	jmp	.LBB7_26
.LBB7_26:                               # %for.inc
                                        #   in Loop: Header=BB7_22 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB7_28
# BB#27:                                # %cond.true
                                        #   in Loop: Header=BB7_22 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB7_29
.LBB7_28:                               # %cond.false
                                        #   in Loop: Header=BB7_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB7_29
.LBB7_29:                               # %cond.end
                                        #   in Loop: Header=BB7_22 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	jmp	.LBB7_22
.LBB7_30:                               # %for.end
	jmp	.LBB7_31
.LBB7_31:                               # %if.end.39
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_32:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_ui_manager_find_action, .Lfunc_end7-gimp_ui_manager_find_action
	.cfi_endproc

	.globl	gimp_ui_manager_activate_action
	.align	16, 0x90
	.type	gimp_ui_manager_activate_action,@function
gimp_ui_manager_activate_action:        # @gimp_ui_manager_activate_action
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_ui_manager_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_ui_manager_activate_action, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_20
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.13
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_ui_manager_activate_action, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_20
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_ui_manager_find_action
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB8_19
# BB#18:                                # %if.then.19
	movq	-40(%rbp), %rdi
	callq	gtk_action_activate
.LBB8_19:                               # %if.end.20
	cmpq	$0, -40(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB8_20:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_ui_manager_activate_action, .Lfunc_end8-gimp_ui_manager_activate_action
	.cfi_endproc

	.globl	gimp_ui_manager_ui_register
	.align	16, 0x90
	.type	gimp_ui_manager_ui_register,@function
gimp_ui_manager_ui_register:            # @gimp_ui_manager_ui_register
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_ui_manager_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.4
	movl	$1, -60(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.5
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.7
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.9
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_ui_manager_ui_register, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_28
.LBB9_11:                               # %if.end.11
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.12
	cmpq	$0, -16(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.14
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_ui_manager_ui_register, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_28
.LBB9_16:                               # %if.end.16
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.17
	jmp	.LBB9_18
.LBB9_18:                               # %do.body.18
	cmpq	$0, -24(%rbp)
	je	.LBB9_20
# BB#19:                                # %if.then.20
	jmp	.LBB9_21
.LBB9_20:                               # %if.else.21
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_ui_manager_ui_register, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_28
.LBB9_21:                               # %if.end.22
	jmp	.LBB9_22
.LBB9_22:                               # %do.end.23
	jmp	.LBB9_23
.LBB9_23:                               # %do.body.24
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_ui_manager_entry_get
	cmpq	$0, %rax
	jne	.LBB9_25
# BB#24:                                # %if.then.27
	jmp	.LBB9_26
.LBB9_25:                               # %if.else.28
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_ui_manager_ui_register, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_28
.LBB9_26:                               # %if.end.29
	jmp	.LBB9_27
.LBB9_27:                               # %do.end.30
	movl	$40, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-40(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, 48(%rsi)
.LBB9_28:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_ui_manager_ui_register, .Lfunc_end9-gimp_ui_manager_ui_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_entry_get,@function
gimp_ui_manager_entry_get:              # @gimp_ui_manager_entry_get
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	strlen
	cmpq	$1, %rax
	jbe	.LBB10_4
# BB#1:                                 # %if.then
	movl	$47, %esi
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	strchr
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then.3
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
.LBB10_3:                               # %if.end
	jmp	.LBB10_4
.LBB10_4:                               # %if.end.4
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB10_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB10_13
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB10_8
# BB#7:                                 # %if.then.10
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB10_14
.LBB10_8:                               # %if.end.11
                                        #   in Loop: Header=BB10_5 Depth=1
	jmp	.LBB10_9
.LBB10_9:                               # %for.inc
                                        #   in Loop: Header=BB10_5 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB10_11
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB10_12
.LBB10_11:                              # %cond.false
                                        #   in Loop: Header=BB10_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB10_12
.LBB10_12:                              # %cond.end
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB10_5
.LBB10_13:                              # %for.end
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	$0, -8(%rbp)
.LBB10_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_ui_manager_entry_get, .Lfunc_end10-gimp_ui_manager_entry_get
	.cfi_endproc

	.globl	gimp_ui_manager_ui_popup
	.align	16, 0x90
	.type	gimp_ui_manager_ui_popup,@function
gimp_ui_manager_ui_popup:               # @gimp_ui_manager_ui_popup
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
	subq	$304, %rsp              # imm = 0x130
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_ui_manager_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_ui_manager_ui_popup, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_67
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB11_15
# BB#14:                                # %if.then.13
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_ui_manager_ui_popup, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_67
.LBB11_16:                              # %if.end.15
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.16
	jmp	.LBB11_18
.LBB11_18:                              # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB11_27
# BB#19:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB11_21
# BB#20:                                # %if.then.27
	movl	$0, -140(%rbp)
	jmp	.LBB11_26
.LBB11_21:                              # %if.else.28
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_24
# BB#22:                                # %land.lhs.true.31
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB11_24
# BB#23:                                # %if.then.35
	movl	$1, -140(%rbp)
	jmp	.LBB11_25
.LBB11_24:                              # %if.else.36
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB11_25:                              # %if.end.38
	jmp	.LBB11_26
.LBB11_26:                              # %if.end.39
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB11_28
.LBB11_27:                              # %if.then.42
	jmp	.LBB11_29
.LBB11_28:                              # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_ui_manager_ui_popup, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_67
.LBB11_29:                              # %if.end.44
	jmp	.LBB11_30
.LBB11_30:                              # %do.end.45
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gtk_menu_item_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB11_32
# BB#31:                                # %if.then.57
	movl	$0, -164(%rbp)
	jmp	.LBB11_37
.LBB11_32:                              # %if.else.58
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_35
# BB#33:                                # %land.lhs.true.61
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB11_35
# BB#34:                                # %if.then.65
	movl	$1, -164(%rbp)
	jmp	.LBB11_36
.LBB11_35:                              # %if.else.66
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB11_36:                              # %if.end.68
	jmp	.LBB11_37
.LBB11_37:                              # %if.end.69
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB11_39
# BB#38:                                # %if.then.72
	movq	-64(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_menu_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_menu_item_get_submenu
	movq	%rax, -64(%rbp)
.LBB11_39:                              # %if.end.76
	cmpq	$0, -64(%rbp)
	jne	.LBB11_41
# BB#40:                                # %if.then.78
	jmp	.LBB11_67
.LBB11_41:                              # %if.end.79
	jmp	.LBB11_42
.LBB11_42:                              # %do.body.80
	movq	-64(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gtk_menu_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB11_44
# BB#43:                                # %if.then.89
	movl	$0, -188(%rbp)
	jmp	.LBB11_49
.LBB11_44:                              # %if.else.90
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_47
# BB#45:                                # %land.lhs.true.93
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB11_47
# BB#46:                                # %if.then.97
	movl	$1, -188(%rbp)
	jmp	.LBB11_48
.LBB11_47:                              # %if.else.98
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB11_48:                              # %if.end.100
	jmp	.LBB11_49
.LBB11_49:                              # %if.end.101
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB11_51
# BB#50:                                # %if.then.104
	jmp	.LBB11_52
.LBB11_51:                              # %if.else.105
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_ui_manager_ui_popup, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_67
.LBB11_52:                              # %if.end.106
	jmp	.LBB11_53
.LBB11_53:                              # %do.end.107
	cmpq	$0, -32(%rbp)
	jne	.LBB11_55
# BB#54:                                # %if.then.109
	movabsq	$gimp_ui_manager_menu_position, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB11_55:                              # %if.end.110
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	gtk_menu_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	-224(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	callq	gtk_get_current_event
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB11_58
# BB#56:                                # %land.lhs.true.115
	movq	-72(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB11_58
# BB#57:                                # %if.then.117
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movl	52(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movq	-200(%rbp), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -88(%rbp)
	jmp	.LBB11_59
.LBB11_58:                              # %if.else.120
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
.LBB11_59:                              # %if.end.121
	cmpq	$0, -72(%rbp)
	je	.LBB11_61
# BB#60:                                # %if.then.123
	movq	-72(%rbp), %rdi
	callq	gdk_event_free
.LBB11_61:                              # %if.end.124
	movl	$80, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB11_63
# BB#62:                                # %if.then.128
	movl	$8, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movabsq	$menu_pos_free, %rdi
	movq	-96(%rbp), %rdx
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	g_object_set_data_full
.LBB11_63:                              # %if.end.131
	movl	-76(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-80(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	%eax, 4(%rcx)
	cmpq	$0, -48(%rbp)
	je	.LBB11_66
# BB#64:                                # %land.lhs.true.135
	cmpq	$0, -56(%rbp)
	je	.LBB11_66
# BB#65:                                # %if.then.137
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	g_object_set_data_full
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_ui_manager_delete_popdown_data, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB11_66:                              # %if.end.140
	movq	-64(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_menu_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$gimp_ui_manager_menu_pos, %rcx
	movq	-96(%rbp), %rdi
	movl	-84(%rbp), %r9d
	movl	-88(%rbp), %edx
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movq	-280(%rbp), %rax        # 8-byte Reload
	movl	%edx, -284(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movq	-272(%rbp), %r8         # 8-byte Reload
	movl	-284(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	gtk_menu_popup
.LBB11_67:                              # %return
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_ui_manager_ui_popup, .Lfunc_end11-gimp_ui_manager_ui_popup
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_menu_position,@function
gimp_ui_manager_menu_position:          # @gimp_ui_manager_menu_position
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gtk_menu_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_ui_manager_menu_position, %rsi
	movabsq	$.L.str.38, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_47
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB12_15
# BB#14:                                # %if.then.13
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_ui_manager_menu_position, %rsi
	movabsq	$.L.str.39, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_47
.LBB12_16:                              # %if.end.15
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.16
	jmp	.LBB12_18
.LBB12_18:                              # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB12_20
# BB#19:                                # %if.then.19
	jmp	.LBB12_21
.LBB12_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_ui_manager_menu_position, %rsi
	movabsq	$.L.str.40, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_47
.LBB12_21:                              # %if.end.21
	jmp	.LBB12_22
.LBB12_22:                              # %do.end.22
	jmp	.LBB12_23
.LBB12_23:                              # %do.body.23
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB12_25
# BB#24:                                # %if.then.32
	movl	$0, -124(%rbp)
	jmp	.LBB12_30
.LBB12_25:                              # %if.else.33
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_28
# BB#26:                                # %land.lhs.true.36
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB12_28
# BB#27:                                # %if.then.40
	movl	$1, -124(%rbp)
	jmp	.LBB12_29
.LBB12_28:                              # %if.else.41
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB12_29:                              # %if.end.43
	jmp	.LBB12_30
.LBB12_30:                              # %if.end.44
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB12_32
# BB#31:                                # %if.then.47
	jmp	.LBB12_33
.LBB12_32:                              # %if.else.48
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_ui_manager_menu_position, %rsi
	movabsq	$.L.str.41, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_47
.LBB12_33:                              # %if.end.49
	jmp	.LBB12_34
.LBB12_34:                              # %do.end.50
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_display
	leaq	-40(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-76(%rbp), %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	%rax, %rdi
	callq	gdk_display_get_pointer
	movq	-40(%rbp), %rdi
	movl	-72(%rbp), %esi
	movl	-76(%rbp), %edx
	callq	gdk_screen_get_monitor_at_point
	leaq	-64(%rbp), %rdx
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gdk_screen_get_monitor_geometry
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_menu_set_screen
	movq	-8(%rbp), %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_size_request
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_direction
	cmpl	$2, %eax
	jne	.LBB12_38
# BB#35:                                # %if.then.61
	movl	-72(%rbp), %eax
	subl	$2, %eax
	subl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB12_37
# BB#36:                                # %if.then.65
	movl	-72(%rbp), %eax
	addl	$2, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB12_37:                              # %if.end.66
	jmp	.LBB12_41
.LBB12_38:                              # %if.else.67
	movl	-72(%rbp), %eax
	addl	$2, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %eax
	addl	-48(%rbp), %eax
	movl	-64(%rbp), %edx
	addl	-56(%rbp), %edx
	cmpl	%edx, %eax
	jle	.LBB12_40
# BB#39:                                # %if.then.75
	movl	-72(%rbp), %eax
	subl	$2, %eax
	subl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB12_40:                              # %if.end.79
	jmp	.LBB12_41
.LBB12_41:                              # %if.end.80
	movl	-76(%rbp), %eax
	addl	$2, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-24(%rbp), %rcx
	movl	(%rcx), %eax
	addl	-44(%rbp), %eax
	movl	-60(%rbp), %edx
	addl	-52(%rbp), %edx
	cmpl	%edx, %eax
	jle	.LBB12_43
# BB#42:                                # %if.then.87
	movl	-76(%rbp), %eax
	subl	$2, %eax
	subl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB12_43:                              # %if.end.91
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-64(%rbp), %ecx
	jge	.LBB12_45
# BB#44:                                # %if.then.94
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB12_45:                              # %if.end.96
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-60(%rbp), %ecx
	jge	.LBB12_47
# BB#46:                                # %if.then.99
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB12_47:                              # %if.end.101
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_ui_manager_menu_position, .Lfunc_end12-gimp_ui_manager_menu_position
	.cfi_endproc

	.align	16, 0x90
	.type	menu_pos_free,@function
menu_pos_free:                          # @menu_pos_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movl	$8, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	menu_pos_free, .Lfunc_end13-menu_pos_free
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_delete_popdown_data,@function
gimp_ui_manager_delete_popdown_data:    # @gimp_ui_manager_delete_popdown_data
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
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_ui_manager_delete_popdown_data, %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_ui_manager_delete_popdown_data, .Lfunc_end14-gimp_ui_manager_delete_popdown_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_menu_pos,@function
gimp_ui_manager_menu_pos:               # @gimp_ui_manager_menu_pos
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movl	(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-48(%rbp), %rcx
	movl	4(%rcx), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_ui_manager_menu_pos, .Lfunc_end15-gimp_ui_manager_menu_pos
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_class_init,@function
gimp_ui_manager_class_init:             # @gimp_ui_manager_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
.Ltmp51:
	.cfi_offset %rbx, -56
.Ltmp52:
	.cfi_offset %r12, -48
.Ltmp53:
	.cfi_offset %r13, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.16, %rdi
	movl	$2, %edx
	movl	$224, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__POINTER, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$1, %r8d
	movl	$68, %r11d
	movl	%r11d, %ebx
	movabsq	$gimp_ui_manager_real_update, %r14
	movabsq	$gimp_ui_manager_get_action, %r15
	movabsq	$gimp_ui_manager_get_widget, %r12
	movabsq	$gimp_ui_manager_connect_proxy, %r13
	movabsq	$gimp_ui_manager_get_property, %r11
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movabsq	$gimp_ui_manager_set_property, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movabsq	$gimp_ui_manager_finalize, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movabsq	$gimp_ui_manager_dispose, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movabsq	$gimp_ui_manager_constructed, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, 72(%rax)
	movq	-56(%rbp), %rax
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, 40(%rax)
	movq	-56(%rbp), %rax
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 48(%rax)
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 24(%rax)
	movq	-56(%rbp), %rax
	movq	%r11, 32(%rax)
	movq	-64(%rbp), %rax
	movq	%r13, 152(%rax)
	movq	-64(%rbp), %rax
	movq	%r12, 184(%rax)
	movq	-64(%rbp), %rax
	movq	%r15, 192(%rax)
	movq	-48(%rbp), %rax
	movq	%r14, 224(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$68, 24(%rsp)
	movb	$0, %al
	movq	%rbx, -144(%rbp)        # 8-byte Spill
	movq	%r10, -152(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.17, %rdi
	movl	$2, %edx
	movl	$232, %ecx
	xorl	%esi, %esi
	movl	%esi, %r8d
	movabsq	$g_cclosure_marshal_VOID__STRING, %r9
	movl	$4, %esi
	movl	%esi, %r10d
	movl	$1, %esi
	movl	$64, %r11d
	movl	%r11d, %ebx
	movl	%eax, manager_signals
	movq	-48(%rbp), %r14
	movq	(%r14), %r14
	movl	%esi, -156(%rbp)        # 4-byte Spill
	movq	%r14, %rsi
	movq	%r8, -168(%rbp)         # 8-byte Spill
	movq	-168(%rbp), %r14        # 8-byte Reload
	movq	%r9, -176(%rbp)         # 8-byte Spill
	movq	%r14, %r9
	movq	-176(%rbp), %r15        # 8-byte Reload
	movq	%r15, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$64, 24(%rsp)
	movb	$0, %al
	movq	%rbx, -184(%rbp)        # 8-byte Spill
	movq	%r10, -192(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.18, %rdi
	movl	$2, %edx
	movl	$240, %ecx
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %r11d
	movl	%r11d, %r9d
	xorl	%r11d, %r11d
	movl	%eax, manager_signals+4
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-200(%rbp), %r10        # 8-byte Reload
	movq	%r8, -208(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -216(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-208(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movq	$4, 24(%rsp)
	movb	$0, %al
	movl	%r11d, -220(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.3, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$235, %r8d
	movl	%eax, manager_signals+8
	movq	-56(%rbp), %r9
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	-232(%rbp), %rdx        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%r9, -240(%rbp)         # 8-byte Spill
	callq	g_param_spec_string
	movl	$1, %esi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-56(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	callq	gimp_get_type
	movabsq	$.L.str.4, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$2, %esi
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	movabsq	$g_free, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	callq	g_hash_table_new_full
	movq	-48(%rbp), %rcx
	movq	%rax, 216(%rcx)
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_ui_manager_class_init, .Lfunc_end16-gimp_ui_manager_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_constructed,@function
gimp_ui_manager_constructed:            # @gimp_ui_manager_constructed
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_ui_manager_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_ui_manager_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_ui_manager_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB17_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB17_4
# BB#3:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	g_hash_table_replace
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB17_4:                               # %if.end.14
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_ui_manager_constructed, .Lfunc_end17-gimp_ui_manager_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_dispose,@function
gimp_ui_manager_dispose:                # @gimp_ui_manager_dispose
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_ui_manager_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB18_7
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB18_6
# BB#2:                                 # %if.then.5
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB18_4
# BB#3:                                 # %if.then.8
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
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
	jmp	.LBB18_5
.LBB18_4:                               # %if.else
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	callq	g_hash_table_remove
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB18_5:                               # %if.end
	jmp	.LBB18_6
.LBB18_6:                               # %if.end.16
	jmp	.LBB18_7
.LBB18_7:                               # %if.end.17
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_ui_manager_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_ui_manager_dispose, .Lfunc_end18-gimp_ui_manager_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_finalize,@function
gimp_ui_manager_finalize:               # @gimp_ui_manager_finalize
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_ui_manager_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB19_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB19_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB19_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB19_4:                               # %if.end
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_5
.LBB19_5:                               # %do.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	$40, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#6:                                 # %do.end
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_7
.LBB19_7:                               # %for.inc
                                        #   in Loop: Header=BB19_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB19_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB19_10
.LBB19_9:                               # %cond.false
                                        #   in Loop: Header=BB19_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB19_10
.LBB19_10:                              # %cond.end
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB19_1
.LBB19_11:                              # %for.end
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB19_13
# BB#12:                                # %if.then.9
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB19_13:                              # %if.end.12
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_ui_manager_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_ui_manager_finalize, .Lfunc_end19-gimp_ui_manager_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_set_property,@function
gimp_ui_manager_set_property:           # @gimp_ui_manager_set_property
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_ui_manager_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB20_1
	jmp	.LBB20_7
.LBB20_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB20_2
	jmp	.LBB20_3
.LBB20_1:                               # %sw.bb
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	jmp	.LBB20_6
.LBB20_2:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 40(%rdi)
	jmp	.LBB20_6
.LBB20_3:                               # %sw.default
	jmp	.LBB20_4
.LBB20_4:                               # %do.body
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
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.20, %rsi
	movl	$300, %edx              # imm = 0x12C
	movabsq	$.L.str.21, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB20_6
.LBB20_6:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_ui_manager_set_property, .Lfunc_end20-gimp_ui_manager_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_get_property,@function
gimp_ui_manager_get_property:           # @gimp_ui_manager_get_property
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_ui_manager_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB21_1
	jmp	.LBB21_7
.LBB21_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB21_2
	jmp	.LBB21_3
.LBB21_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB21_6
.LBB21_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB21_6
.LBB21_3:                               # %sw.default
	jmp	.LBB21_4
.LBB21_4:                               # %do.body
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
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.20, %rsi
	movl	$324, %edx              # imm = 0x144
	movabsq	$.L.str.21, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB21_6
.LBB21_6:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_ui_manager_get_property, .Lfunc_end21-gimp_ui_manager_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_connect_proxy,@function
gimp_ui_manager_connect_proxy:          # @gimp_ui_manager_connect_proxy
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
	subq	$128, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_help_id_quark
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_help_id_quark
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	g_object_get_qdata
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-60(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_qdata
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_menu_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB22_7
.LBB22_2:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB22_5
# BB#4:                                 # %if.then.8
	movl	$1, -44(%rbp)
	jmp	.LBB22_6
.LBB22_5:                               # %if.else.9
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB22_6:                               # %if.end
	jmp	.LBB22_7
.LBB22_7:                               # %if.end.11
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB22_9
# BB#8:                                 # %if.then.13
	movabsq	$.L.str.22, %rsi
	movabsq	$gimp_ui_manager_menu_item_select, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.23, %rsi
	movabsq	$gimp_ui_manager_menu_item_deselect, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_ui_manager_item_realize, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$1, %r9d
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB22_9:                               # %if.end.17
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_ui_manager_connect_proxy, .Lfunc_end22-gimp_ui_manager_connect_proxy
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_get_widget,@function
gimp_ui_manager_get_widget:             # @gimp_ui_manager_get_widget
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_ui_manager_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_ui_manager_entry_ensure
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB23_4
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB23_3
# BB#2:                                 # %if.then.6
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB23_5
.LBB23_3:                               # %if.end
	movq	gimp_ui_manager_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	184(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB23_5
.LBB23_4:                               # %if.end.10
	movq	$0, -8(%rbp)
.LBB23_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_ui_manager_get_widget, .Lfunc_end23-gimp_ui_manager_get_widget
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_get_action,@function
gimp_ui_manager_get_action:             # @gimp_ui_manager_get_action
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_ui_manager_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_ui_manager_entry_ensure
	cmpq	$0, %rax
	je	.LBB24_2
# BB#1:                                 # %if.then
	movq	gimp_ui_manager_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	192(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB24_3
.LBB24_2:                               # %if.end
	movq	$0, -8(%rbp)
.LBB24_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_ui_manager_get_action, .Lfunc_end24-gimp_ui_manager_get_action
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_real_update,@function
gimp_ui_manager_real_update:            # @gimp_ui_manager_real_update
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_action_groups
	movq	%rax, -24(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB25_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_action_group_update
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB25_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB25_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB25_6
.LBB25_5:                               # %cond.false
                                        #   in Loop: Header=BB25_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB25_6
.LBB25_6:                               # %cond.end
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB25_1
.LBB25_7:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_ui_manager_real_update, .Lfunc_end25-gimp_ui_manager_real_update
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB26_2
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
.LBB26_2:                               # %entry
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
.Lfunc_end26:
	.size	g_warning, .Lfunc_end26-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_menu_item_select,@function
gimp_ui_manager_menu_item_select:       # @gimp_ui_manager_menu_item_select
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_activatable_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_activatable_get_related_action
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB27_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gtk_action_get_tooltip
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB27_3
# BB#2:                                 # %if.then.5
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	manager_signals+4, %esi
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB27_3:                               # %if.end
	jmp	.LBB27_4
.LBB27_4:                               # %if.end.6
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_ui_manager_menu_item_select, .Lfunc_end27-gimp_ui_manager_menu_item_select
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_menu_item_deselect,@function
gimp_ui_manager_menu_item_deselect:     # @gimp_ui_manager_menu_item_deselect
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
	subq	$16, %rsp
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	manager_signals+8, %eax
	movq	%rsi, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_signal_emit
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_ui_manager_menu_item_deselect, .Lfunc_end28-gimp_ui_manager_menu_item_deselect
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_item_realize,@function
gimp_ui_manager_item_realize:           # @gimp_ui_manager_item_realize
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
	subq	$128, %rsp
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_ui_manager_item_realize, %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gtk_widget_get_parent
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_menu_shell_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB29_2
# BB#1:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB29_7
.LBB29_2:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_5
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB29_5
# BB#4:                                 # %if.then.5
	movl	$1, -52(%rbp)
	jmp	.LBB29_6
.LBB29_5:                               # %if.else.6
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB29_6:                               # %if.end
	jmp	.LBB29_7
.LBB29_7:                               # %if.end.8
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB29_13
# BB#8:                                 # %if.then.10
	cmpl	$0, gimp_ui_manager_item_realize.quark_key_press_connected
	jne	.LBB29_10
# BB#9:                                 # %if.then.12
	movabsq	$.L.str.25, %rdi
	callq	g_quark_from_static_string
	movl	%eax, gimp_ui_manager_item_realize.quark_key_press_connected
.LBB29_10:                              # %if.end.14
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	gimp_ui_manager_item_realize.quark_key_press_connected, %esi
	movq	%rax, %rdi
	callq	g_object_get_qdata
	movl	%eax, %esi
	cmpl	$0, %esi
	jne	.LBB29_12
# BB#11:                                # %if.then.18
	movabsq	$.L.str.26, %rsi
	movabsq	$gimp_ui_manager_item_key_press, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	movl	%r9d, %edx
	movl	gimp_ui_manager_item_realize.quark_key_press_connected, %esi
	movq	%rax, %rdi
	callq	g_object_set_qdata
.LBB29_12:                              # %if.end.21
	jmp	.LBB29_13
.LBB29_13:                              # %if.end.22
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_menu_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_menu_item_get_submenu
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB29_15
# BB#14:                                # %if.then.27
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_help_id_quark
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	g_type_check_instance_cast
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_help_id_quark
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_object_get_qdata
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_qdata
.LBB29_15:                              # %if.end.33
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_ui_manager_item_realize, .Lfunc_end29-gimp_ui_manager_item_realize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_item_key_press,@function
gimp_ui_manager_item_key_press:         # @gimp_ui_manager_item_key_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
.LBB30_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB30_2
	jmp	.LBB30_57
.LBB30_2:                               # %while.body
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_menu_shell_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB30_31
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_menu_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB30_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$0, -68(%rbp)
	jmp	.LBB30_10
.LBB30_5:                               # %if.else
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_8
# BB#6:                                 # %land.lhs.true.6
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB30_8
# BB#7:                                 # %if.then.8
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$1, -68(%rbp)
	jmp	.LBB30_9
.LBB30_8:                               # %if.else.9
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB30_9:                               # %if.end
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_10
.LBB30_10:                              # %if.end.11
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB30_31
# BB#11:                                # %if.then.13
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_widget_get_window
	leaq	-92(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gdk_window_get_pointer
	leaq	-92(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-88(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	find_widget_under_pointer
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB30_30
# BB#12:                                # %land.lhs.true.23
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gtk_menu_item_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB30_14
# BB#13:                                # %if.then.32
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$0, -116(%rbp)
	jmp	.LBB30_19
.LBB30_14:                              # %if.else.33
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_17
# BB#15:                                # %land.lhs.true.36
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB30_17
# BB#16:                                # %if.then.40
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$1, -116(%rbp)
	jmp	.LBB30_18
.LBB30_17:                              # %if.else.41
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB30_18:                              # %if.end.43
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_19
.LBB30_19:                              # %if.end.44
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	jne	.LBB30_30
# BB#20:                                # %if.then.47
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-48(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	gtk_menu_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_get_ancestor
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gtk_menu_item_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB30_22
# BB#21:                                # %if.then.58
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$0, -140(%rbp)
	jmp	.LBB30_27
.LBB30_22:                              # %if.else.59
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_25
# BB#23:                                # %land.lhs.true.62
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB30_25
# BB#24:                                # %if.then.66
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$1, -140(%rbp)
	jmp	.LBB30_26
.LBB30_25:                              # %if.else.67
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB30_26:                              # %if.end.69
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_27
.LBB30_27:                              # %if.end.70
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	jne	.LBB30_29
# BB#28:                                # %if.then.73
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	$0, -48(%rbp)
.LBB30_29:                              # %if.end.74
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_30
.LBB30_30:                              # %if.end.75
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_31
.LBB30_31:                              # %if.end.76
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB30_36
# BB#32:                                # %if.then.78
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_help_id_quark
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_object_get_qdata
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB30_35
# BB#33:                                # %land.lhs.true.83
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB30_35
# BB#34:                                # %if.then.86
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	$0, -40(%rbp)
.LBB30_35:                              # %if.end.87
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_36
.LBB30_36:                              # %if.end.88
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB30_41
# BB#37:                                # %if.then.90
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_help_id_quark
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_object_get_qdata
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB30_40
# BB#38:                                # %land.lhs.true.95
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB30_40
# BB#39:                                # %if.then.98
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	$0, -40(%rbp)
.LBB30_40:                              # %if.end.99
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_41
.LBB30_41:                              # %if.end.100
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB30_56
# BB#42:                                # %if.then.102
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gtk_menu_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB30_44
# BB#43:                                # %if.then.111
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$0, -164(%rbp)
	jmp	.LBB30_49
.LBB30_44:                              # %if.else.112
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_47
# BB#45:                                # %land.lhs.true.115
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB30_47
# BB#46:                                # %if.then.119
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$1, -164(%rbp)
	jmp	.LBB30_48
.LBB30_47:                              # %if.else.120
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB30_48:                              # %if.end.122
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_49
.LBB30_49:                              # %if.end.123
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB30_51
# BB#50:                                # %if.then.126
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_menu_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_menu_get_attach_widget
	movq	%rax, -48(%rbp)
.LBB30_51:                              # %if.end.130
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB30_53
# BB#52:                                # %if.then.132
	jmp	.LBB30_57
.LBB30_53:                              # %if.end.133
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB30_55
# BB#54:                                # %if.then.136
	jmp	.LBB30_57
.LBB30_55:                              # %if.end.137
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_56
.LBB30_56:                              # %if.end.138
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_1
.LBB30_57:                              # %while.end
	movq	-24(%rbp), %rax
	cmpl	$65470, 28(%rax)        # imm = 0xFFBE
	je	.LBB30_64
# BB#58:                                # %if.then.140
	cmpq	$0, -40(%rbp)
	je	.LBB30_63
# BB#59:                                # %land.lhs.true.142
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movl	28(%rax), %edi
	callq	gtk_accelerator_valid
	cmpl	$0, %eax
	je	.LBB30_63
# BB#60:                                # %land.lhs.true.146
	movq	-40(%rbp), %rdi
	movl	$.L.str.27, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB30_62
# BB#61:                                # %lor.lhs.false
	movq	-40(%rbp), %rdi
	movl	$.L.str.28, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB30_63
.LBB30_62:                              # %if.then.151
	movl	$1, -4(%rbp)
	jmp	.LBB30_70
.LBB30_63:                              # %if.end.152
	movl	$0, -4(%rbp)
	jmp	.LBB30_70
.LBB30_64:                              # %if.end.153
	cmpq	$0, -40(%rbp)
	je	.LBB30_69
# BB#65:                                # %if.then.155
	movq	$0, -176(%rbp)
	movq	$0, -184(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_strdup
	movl	$63, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	strchr
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	je	.LBB30_67
# BB#66:                                # %if.then.162
	movq	-192(%rbp), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -176(%rbp)
	movq	-192(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -184(%rbp)
	jmp	.LBB30_68
.LBB30_67:                              # %if.else.165
	movq	-40(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -184(%rbp)
.LBB30_68:                              # %if.end.167
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	-176(%rbp), %rdx
	movq	-184(%rbp), %rcx
	callq	gimp_help
	movq	-176(%rbp), %rdi
	callq	g_free
	movq	-184(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB30_69:                              # %if.end.168
	movl	$1, -4(%rbp)
.LBB30_70:                              # %return
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_ui_manager_item_key_press, .Lfunc_end30-gimp_ui_manager_item_key_press
	.cfi_endproc

	.align	16, 0x90
	.type	find_widget_under_pointer,@function
find_widget_under_pointer:              # @find_widget_under_pointer
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
	subq	$160, %rsp
	leaq	-40(%rbp), %rax
	xorl	%ecx, %ecx
	movl	$24, %r8d
	movl	%r8d, %r9d
	leaq	-64(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%r10, %rdi
	movl	%ecx, %esi
	movq	%r9, %rdx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	memset
	movq	-16(%rbp), %rdi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rsi
	callq	gdk_window_get_user_data
	cmpq	$0, -40(%rbp)
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB31_28
.LBB31_2:                               # %if.end
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
.LBB31_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -16(%rbp)
	movb	%cl, -113(%rbp)         # 1-byte Spill
	je	.LBB31_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB31_3 Depth=1
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_window
	movq	-128(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	setne	%cl
	movb	%cl, -113(%rbp)         # 1-byte Spill
.LBB31_5:                               # %land.end
                                        #   in Loop: Header=BB31_3 Depth=1
	movb	-113(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB31_6
	jmp	.LBB31_7
.LBB31_6:                               # %while.body
                                        #   in Loop: Header=BB31_3 Depth=1
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gdk_window_get_position
	movl	-68(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-72(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_window_get_parent
	movq	%rax, -16(%rbp)
	jmp	.LBB31_3
.LBB31_7:                               # %while.end
	cmpq	$0, -16(%rbp)
	jne	.LBB31_9
# BB#8:                                 # %if.then.9
	movq	$0, -8(%rbp)
	jmp	.LBB31_28
.LBB31_9:                               # %if.end.10
	leaq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	movl	-48(%rbp), %esi
	movl	-44(%rbp), %edx
	movq	%rax, %rcx
	addq	$16, %rcx
	addq	$20, %rax
	movq	%rax, %r8
	callq	window_to_alloc
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gtk_container_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB31_11
# BB#10:                                # %if.then.17
	movl	$0, -92(%rbp)
	jmp	.LBB31_16
.LBB31_11:                              # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_14
# BB#12:                                # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB31_14
# BB#13:                                # %if.then.21
	movl	$1, -92(%rbp)
	jmp	.LBB31_15
.LBB31_14:                              # %if.else.22
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB31_15:                              # %if.end.24
	jmp	.LBB31_16
.LBB31_16:                              # %if.end.25
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB31_23
# BB#17:                                # %if.then.27
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$child_location_foreach, %rsi
	leaq	-64(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	callq	gtk_container_forall
	cmpq	$0, -64(%rbp)
	je	.LBB31_19
# BB#18:                                # %if.then.34
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB31_22
.LBB31_19:                              # %if.else.36
	cmpq	$0, -56(%rbp)
	je	.LBB31_21
# BB#20:                                # %if.then.39
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB31_21:                              # %if.end.41
	jmp	.LBB31_22
.LBB31_22:                              # %if.end.42
	leaq	-64(%rbp), %rax
	movq	-104(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %ecx
	movq	%rax, %r8
	addq	$16, %r8
	addq	$20, %rax
	movq	%rax, %r9
	callq	gtk_widget_translate_coordinates
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB31_23:                              # %if.end.48
	cmpq	$0, -24(%rbp)
	je	.LBB31_25
# BB#24:                                # %if.then.50
	movl	-48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB31_25:                              # %if.end.52
	cmpq	$0, -32(%rbp)
	je	.LBB31_27
# BB#26:                                # %if.then.54
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB31_27:                              # %if.end.56
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB31_28:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	find_widget_under_pointer, .Lfunc_end31-find_widget_under_pointer
	.cfi_endproc

	.align	16, 0x90
	.type	window_to_alloc,@function
window_to_alloc:                        # @window_to_alloc
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
	leaq	-48(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_widget_get_allocation
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_has_window
	cmpl	$0, %eax
	je	.LBB32_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_parent
	cmpq	$0, %rax
	je	.LBB32_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	gdk_window_get_position
	movl	-52(%rbp), %ecx
	subl	-48(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movl	%ecx, -12(%rbp)
	movl	-56(%rbp), %ecx
	subl	-44(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movl	%ecx, -16(%rbp)
	jmp	.LBB32_4
.LBB32_3:                               # %if.else
	movl	-48(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	movl	-44(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -16(%rbp)
.LBB32_4:                               # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB32_6
# BB#5:                                 # %if.then.11
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB32_6:                               # %if.end.12
	cmpq	$0, -32(%rbp)
	je	.LBB32_8
# BB#7:                                 # %if.then.14
	movl	-16(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB32_8:                               # %if.end.15
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	window_to_alloc, .Lfunc_end32-window_to_alloc
	.cfi_endproc

	.align	16, 0x90
	.type	child_location_foreach,@function
child_location_foreach:                 # @child_location_foreach
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_is_drawable
	cmpl	$0, %eax
	jne	.LBB33_2
# BB#1:                                 # %if.then
	jmp	.LBB33_23
.LBB33_2:                               # %if.end
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB33_23
# BB#3:                                 # %land.lhs.true
	leaq	-20(%rbp), %r8
	leaq	-24(%rbp), %r9
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	movq	-32(%rbp), %rax
	movl	20(%rax), %ecx
	callq	gtk_widget_translate_coordinates
	cmpl	$0, %eax
	je	.LBB33_23
# BB#4:                                 # %if.then.7
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	cmpl	$0, -20(%rbp)
	jl	.LBB33_22
# BB#5:                                 # %land.lhs.true.8
	movl	-20(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB33_22
# BB#6:                                 # %land.lhs.true.10
	cmpl	$0, -24(%rbp)
	jl	.LBB33_22
# BB#7:                                 # %land.lhs.true.12
	movl	-24(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB33_22
# BB#8:                                 # %if.then.14
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_container_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB33_10
# BB#9:                                 # %if.then.17
	movl	$0, -68(%rbp)
	jmp	.LBB33_15
.LBB33_10:                              # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB33_13
# BB#11:                                # %land.lhs.true.19
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB33_13
# BB#12:                                # %if.then.22
	movl	$1, -68(%rbp)
	jmp	.LBB33_14
.LBB33_13:                              # %if.else.23
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB33_14:                              # %if.end.25
	jmp	.LBB33_15
.LBB33_15:                              # %if.end.26
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB33_20
# BB#16:                                # %if.then.28
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movl	-20(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -76(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$child_location_foreach, %rsi
	leaq	-96(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	gtk_container_forall
	cmpq	$0, -96(%rbp)
	je	.LBB33_18
# BB#17:                                # %if.then.38
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB33_19
.LBB33_18:                              # %if.else.41
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB33_19:                              # %if.end.43
	jmp	.LBB33_21
.LBB33_20:                              # %if.else.44
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB33_21:                              # %if.end.46
	jmp	.LBB33_22
.LBB33_22:                              # %if.end.47
	jmp	.LBB33_23
.LBB33_23:                              # %if.end.48
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	child_location_foreach, .Lfunc_end33-child_location_foreach
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_entry_ensure,@function
gimp_ui_manager_entry_ensure:           # @gimp_ui_manager_entry_ensure
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_ui_manager_entry_get
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB34_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.29, %rdi
	movabsq	$.L__func__.gimp_ui_manager_entry_ensure, %rsi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB34_27
.LBB34_2:                               # %if.end
	movq	-32(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB34_10
# BB#3:                                 # %if.then.3
	leaq	-40(%rbp), %rdx
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_ui_manager_entry_load
	cmpl	$0, %eax
	jne	.LBB34_9
# BB#4:                                 # %if.then.6
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	callq	g_file_error_quark
	movl	-76(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB34_7
# BB#5:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB34_7
# BB#6:                                 # %if.then.9
	movabsq	$.L.str.31, %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.32, %rdi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %r9
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	%edx, %esi
	movl	$2, %edx
	movabsq	$.L.str.30, %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	gimp_message
	jmp	.LBB34_8
.LBB34_7:                               # %if.else
	movabsq	$.L.str.33, %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %r9
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_message
.LBB34_8:                               # %if.end.16
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
	movq	$0, -8(%rbp)
	jmp	.LBB34_27
.LBB34_9:                               # %if.end.17
	jmp	.LBB34_10
.LBB34_10:                              # %if.end.18
	movq	-32(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB34_26
# BB#11:                                # %if.then.20
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	gimp_ui_manager_parent_class, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	184(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	callq	*%rax
	movq	-32(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-32(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB34_24
# BB#12:                                # %if.then.29
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-32(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_menu_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB34_14
# BB#13:                                # %if.then.35
	movl	$0, -68(%rbp)
	jmp	.LBB34_19
.LBB34_14:                              # %if.else.36
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB34_17
# BB#15:                                # %land.lhs.true.38
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB34_17
# BB#16:                                # %if.then.41
	movl	$1, -68(%rbp)
	jmp	.LBB34_18
.LBB34_17:                              # %if.else.42
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB34_18:                              # %if.end.44
	jmp	.LBB34_19
.LBB34_19:                              # %if.end.45
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB34_21
# BB#20:                                # %if.then.47
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref_sink
	movq	-32(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_object_unref
.LBB34_21:                              # %if.end.51
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB34_23
# BB#22:                                # %if.then.53
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rsi
	callq	*%rax
.LBB34_23:                              # %if.end.56
	jmp	.LBB34_25
.LBB34_24:                              # %if.else.57
	movabsq	$.L.str.34, %rdi
	movabsq	$.L__func__.gimp_ui_manager_entry_ensure, %rsi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB34_27
.LBB34_25:                              # %if.end.60
	jmp	.LBB34_26
.LBB34_26:                              # %if.end.61
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB34_27:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_ui_manager_entry_ensure, .Lfunc_end34-gimp_ui_manager_entry_ensure
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_manager_entry_load,@function
gimp_ui_manager_entry_load:             # @gimp_ui_manager_entry_load
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
	subq	$64, %rsp
	movabsq	$.L.str.35, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	%rax, %rdi
	callq	g_getenv
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB35_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rsi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -40(%rbp)
	jmp	.LBB35_3
.LBB35_2:                               # %if.else
	callq	gimp_data_directory
	movabsq	$.L.str.36, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -40(%rbp)
.LBB35_3:                               # %if.end
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	cmpl	$0, 56(%rax)
	je	.LBB35_5
# BB#4:                                 # %if.then.7
	movq	-40(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.37, %rdi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB35_5:                               # %if.end.9
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_ui_manager_add_ui_from_file
	movq	-24(%rbp), %rdx
	movl	%eax, 24(%rdx)
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rdx
	cmpl	$0, 24(%rdx)
	jne	.LBB35_7
# BB#6:                                 # %if.then.15
	movl	$0, -4(%rbp)
	jmp	.LBB35_8
.LBB35_7:                               # %if.end.16
	movl	$1, -4(%rbp)
.LBB35_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_ui_manager_entry_load, .Lfunc_end35-gimp_ui_manager_entry_load
	.cfi_endproc

	.type	gimp_ui_manager_get_type.g_define_type_id__volatile,@object # @gimp_ui_manager_get_type.g_define_type_id__volatile
	.local	gimp_ui_manager_get_type.g_define_type_id__volatile
	.comm	gimp_ui_manager_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpUIManager"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_ui_manager_new,@object # @__func__.gimp_ui_manager_new
.L__func__.gimp_ui_manager_new:
	.asciz	"gimp_ui_manager_new"
	.size	.L__func__.gimp_ui_manager_new, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"name"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp"
	.size	.L.str.4, 5

	.type	.L__func__.gimp_ui_managers_from_name,@object # @__func__.gimp_ui_managers_from_name
.L__func__.gimp_ui_managers_from_name:
	.asciz	"gimp_ui_managers_from_name"
	.size	.L__func__.gimp_ui_managers_from_name, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"name != NULL"
	.size	.L.str.5, 13

	.type	.L__func__.gimp_ui_manager_update,@object # @__func__.gimp_ui_manager_update
.L__func__.gimp_ui_manager_update:
	.asciz	"gimp_ui_manager_update"
	.size	.L__func__.gimp_ui_manager_update, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_UI_MANAGER (manager)"
	.size	.L.str.6, 29

	.type	manager_signals,@object # @manager_signals
	.local	manager_signals
	.comm	manager_signals,12,4
	.type	.L__func__.gimp_ui_manager_get_action_group,@object # @__func__.gimp_ui_manager_get_action_group
.L__func__.gimp_ui_manager_get_action_group:
	.asciz	"gimp_ui_manager_get_action_group"
	.size	.L__func__.gimp_ui_manager_get_action_group, 33

	.type	.L__func__.gimp_ui_manager_find_action,@object # @__func__.gimp_ui_manager_find_action
.L__func__.gimp_ui_manager_find_action:
	.asciz	"gimp_ui_manager_find_action"
	.size	.L__func__.gimp_ui_manager_find_action, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"action_name != NULL"
	.size	.L.str.7, 20

	.type	.L__func__.gimp_ui_manager_activate_action,@object # @__func__.gimp_ui_manager_activate_action
.L__func__.gimp_ui_manager_activate_action:
	.asciz	"gimp_ui_manager_activate_action"
	.size	.L__func__.gimp_ui_manager_activate_action, 32

	.type	.L__func__.gimp_ui_manager_ui_register,@object # @__func__.gimp_ui_manager_ui_register
.L__func__.gimp_ui_manager_ui_register:
	.asciz	"gimp_ui_manager_ui_register"
	.size	.L__func__.gimp_ui_manager_ui_register, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ui_path != NULL"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"basename != NULL"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp_ui_manager_entry_get (manager, ui_path) == NULL"
	.size	.L.str.10, 53

	.type	.L__func__.gimp_ui_manager_ui_popup,@object # @__func__.gimp_ui_manager_ui_popup
.L__func__.gimp_ui_manager_ui_popup:
	.asciz	"gimp_ui_manager_ui_popup"
	.size	.L__func__.gimp_ui_manager_ui_popup, 25

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"parent == NULL || GTK_IS_WIDGET (parent)"
	.size	.L.str.11, 41

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GTK_IS_MENU (widget)"
	.size	.L.str.12, 21

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"menu-pos"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"popdown-data"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"selection-done"
	.size	.L.str.15, 15

	.type	gimp_ui_manager_parent_class,@object # @gimp_ui_manager_parent_class
	.local	gimp_ui_manager_parent_class
	.comm	gimp_ui_manager_parent_class,8,8
	.type	GimpUIManager_private_offset,@object # @GimpUIManager_private_offset
	.local	GimpUIManager_private_offset
	.comm	GimpUIManager_private_offset,4,4
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"update"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"show-tooltip"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"hide-tooltip"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.19, 54

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimpuimanager.c"
	.size	.L.str.20, 16

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"property"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"select"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"deselect"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"realize"
	.size	.L.str.24, 8

	.type	gimp_ui_manager_item_realize.quark_key_press_connected,@object # @gimp_ui_manager_item_realize.quark_key_press_connected
	.local	gimp_ui_manager_item_realize.quark_key_press_connected
	.comm	gimp_ui_manager_item_realize.quark_key_press_connected,4,4
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-menu-item-key-press-connected"
	.size	.L.str.25, 35

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"key-press-event"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-help"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-help-context"
	.size	.L.str.28, 18

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%s: no entry registered for \"%s\""
	.size	.L.str.29, 33

	.type	.L__func__.gimp_ui_manager_entry_ensure,@object # @__func__.gimp_ui_manager_entry_ensure
.L__func__.gimp_ui_manager_entry_ensure:
	.asciz	"gimp_ui_manager_entry_ensure"
	.size	.L__func__.gimp_ui_manager_entry_ensure, 29

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%s\n\n%s\n\n%s"
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Your GIMP installation is incomplete:"
	.size	.L.str.31, 38

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Please make sure the menu XML files are correctly installed."
	.size	.L.str.32, 61

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"There was an error parsing the menu definition from %s: %s"
	.size	.L.str.33, 59

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%s: \"%s\" does not contain registered toplevel widget \"%s\""
	.size	.L.str.34, 58

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"GIMP_TESTING_MENUS_DIR"
	.size	.L.str.35, 23

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"menus"
	.size	.L.str.36, 6

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"loading menu '%s' for %s\n"
	.size	.L.str.37, 26

	.type	.L__func__.gimp_ui_manager_menu_position,@object # @__func__.gimp_ui_manager_menu_position
.L__func__.gimp_ui_manager_menu_position:
	.asciz	"gimp_ui_manager_menu_position"
	.size	.L__func__.gimp_ui_manager_menu_position, 30

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"GTK_IS_MENU (menu)"
	.size	.L.str.38, 19

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"x != NULL"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"y != NULL"
	.size	.L.str.40, 10

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"GTK_IS_WIDGET (data)"
	.size	.L.str.41, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
