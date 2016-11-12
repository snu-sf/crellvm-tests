	.text
	.file	"gimpitemtree.bc"
	.globl	gimp_item_tree_get_type
	.align	16, 0x90
	.type	gimp_item_tree_get_type,@function
gimp_item_tree_get_type:                # @gimp_item_tree_get_type
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
	movq	gimp_item_tree_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_item_tree_get_type.g_define_type_id__volatile, %rax
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
	movl	$160, %edx
	movabsq	$gimp_item_tree_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_item_tree_init, %rcx
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
	movabsq	$gimp_item_tree_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_item_tree_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_item_tree_get_type, .Lfunc_end0-gimp_item_tree_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_class_intern_init,@function
gimp_item_tree_class_intern_init:       # @gimp_item_tree_class_intern_init
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
	movq	%rax, gimp_item_tree_parent_class
	cmpl	$0, GimpItemTree_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpItemTree_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_item_tree_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_item_tree_class_intern_init, .Lfunc_end1-gimp_item_tree_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_init,@function
gimp_item_tree_init:                    # @gimp_item_tree_init
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
	callq	gimp_item_tree_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	movq	%rax, -16(%rbp)
	callq	g_hash_table_new
	movq	-16(%rbp), %rsi
	movq	%rax, 32(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_item_tree_init, .Lfunc_end2-gimp_item_tree_init
	.cfi_endproc

	.globl	gimp_item_tree_new
	.align	16, 0x90
	.type	gimp_item_tree_new,@function
gimp_item_tree_new:                     # @gimp_item_tree_new
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
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
	movabsq	$.L__func__.gimp_item_tree_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_23
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB3_15
# BB#14:                                # %if.then.15
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_23
.LBB3_16:                               # %if.end.17
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.18
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.19
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB3_20
# BB#19:                                # %if.then.23
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.24
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_23
.LBB3_21:                               # %if.end.25
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.26
	callq	gimp_item_tree_get_type
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rcx
	movabsq	$.L.str.7, %r9
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %r10
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%r10, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_23:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_item_tree_new, .Lfunc_end3-gimp_item_tree_new
	.cfi_endproc

	.globl	gimp_item_tree_get_active_item
	.align	16, 0x90
	.type	gimp_item_tree_get_active_item,@function
gimp_item_tree_get_active_item:         # @gimp_item_tree_get_active_item
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_tree_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_get_active_item, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_item_tree_get_active_item, .Lfunc_end4-gimp_item_tree_get_active_item
	.cfi_endproc

	.globl	gimp_item_tree_set_active_item
	.align	16, 0x90
	.type	gimp_item_tree_set_active_item,@function
gimp_item_tree_set_active_item:         # @gimp_item_tree_set_active_item
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_item_tree_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_set_active_item, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_33
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
# BB#13:                                # %do.body.13
	cmpq	$0, -16(%rbp)
	je	.LBB5_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_16
# BB#15:                                # %if.then.22
	movl	$0, -68(%rbp)
	jmp	.LBB5_21
.LBB5_16:                               # %if.else.23
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_19
# BB#17:                                # %land.lhs.true.26
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB5_19
# BB#18:                                # %if.then.30
	movl	$1, -68(%rbp)
	jmp	.LBB5_20
.LBB5_19:                               # %if.else.31
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB5_20:                               # %if.end.33
	jmp	.LBB5_21
.LBB5_21:                               # %if.end.34
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB5_23
.LBB5_22:                               # %if.then.37
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.38
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_set_active_item, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_33
.LBB5_24:                               # %if.end.39
	jmp	.LBB5_25
.LBB5_25:                               # %do.end.40
	jmp	.LBB5_26
.LBB5_26:                               # %do.body.41
	cmpq	$0, -16(%rbp)
	je	.LBB5_28
# BB#27:                                # %lor.lhs.false.43
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_tree
	cmpq	-8(%rbp), %rax
	jne	.LBB5_29
.LBB5_28:                               # %if.then.46
	jmp	.LBB5_30
.LBB5_29:                               # %if.else.47
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_set_active_item, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_33
.LBB5_30:                               # %if.end.48
	jmp	.LBB5_31
.LBB5_31:                               # %do.end.49
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	24(%rcx), %rax
	je	.LBB5_33
# BB#32:                                # %if.then.51
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB5_33:                               # %if.end.54
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_item_tree_set_active_item, .Lfunc_end5-gimp_item_tree_set_active_item
	.cfi_endproc

	.globl	gimp_item_tree_get_item_by_name
	.align	16, 0x90
	.type	gimp_item_tree_get_item_by_name,@function
gimp_item_tree_get_item_by_name:        # @gimp_item_tree_get_item_by_name
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_item_tree_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_get_item_by_name, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_18
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
	movabsq	$.L__func__.gimp_item_tree_get_item_by_name, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_18
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -8(%rbp)
.LBB6_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_item_tree_get_item_by_name, .Lfunc_end6-gimp_item_tree_get_item_by_name
	.cfi_endproc

	.globl	gimp_item_tree_get_insert_pos
	.align	16, 0x90
	.type	gimp_item_tree_get_insert_pos,@function
gimp_item_tree_get_insert_pos:          # @gimp_item_tree_get_insert_pos
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_item_tree_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_get_insert_pos, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_96
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
	movabsq	$.L__func__.gimp_item_tree_get_insert_pos, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_96
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
# BB#18:                                # %do.body.19
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB7_20
# BB#19:                                # %if.then.27
	movl	$0, -100(%rbp)
	jmp	.LBB7_25
.LBB7_20:                               # %if.else.28
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_23
# BB#21:                                # %land.lhs.true.31
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB7_23
# BB#22:                                # %if.then.35
	movl	$1, -100(%rbp)
	jmp	.LBB7_24
.LBB7_23:                               # %if.else.36
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB7_24:                               # %if.end.38
	jmp	.LBB7_25
.LBB7_25:                               # %if.end.39
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB7_27
# BB#26:                                # %if.then.42
	jmp	.LBB7_28
.LBB7_27:                               # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_get_insert_pos, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_96
.LBB7_28:                               # %if.end.44
	jmp	.LBB7_29
.LBB7_29:                               # %do.end.45
	jmp	.LBB7_30
.LBB7_30:                               # %do.body.46
	movq	-24(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB7_32
# BB#31:                                # %if.then.49
	jmp	.LBB7_33
.LBB7_32:                               # %if.else.50
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_get_insert_pos, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_96
.LBB7_33:                               # %if.end.51
	jmp	.LBB7_34
.LBB7_34:                               # %do.end.52
	jmp	.LBB7_35
.LBB7_35:                               # %do.body.53
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_image
	movq	-48(%rbp), %rdi
	cmpq	(%rdi), %rax
	jne	.LBB7_37
# BB#36:                                # %if.then.56
	jmp	.LBB7_38
.LBB7_37:                               # %if.else.57
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_get_insert_pos, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_96
.LBB7_38:                               # %if.end.58
	jmp	.LBB7_39
.LBB7_39:                               # %do.end.59
	jmp	.LBB7_40
.LBB7_40:                               # %do.body.60
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_50
# BB#41:                                # %lor.lhs.false
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	cmpq	%rcx, (%rdx)
	je	.LBB7_50
# BB#42:                                # %lor.lhs.false.63
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB7_44
# BB#43:                                # %if.then.72
	movl	$0, -124(%rbp)
	jmp	.LBB7_49
.LBB7_44:                               # %if.else.73
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_47
# BB#45:                                # %land.lhs.true.76
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB7_47
# BB#46:                                # %if.then.80
	movl	$1, -124(%rbp)
	jmp	.LBB7_48
.LBB7_47:                               # %if.else.81
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB7_48:                               # %if.end.83
	jmp	.LBB7_49
.LBB7_49:                               # %if.end.84
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB7_51
.LBB7_50:                               # %if.then.87
	jmp	.LBB7_52
.LBB7_51:                               # %if.else.88
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_get_insert_pos, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_96
.LBB7_52:                               # %if.end.89
	jmp	.LBB7_53
.LBB7_53:                               # %do.end.90
	jmp	.LBB7_54
.LBB7_54:                               # %do.body.91
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_57
# BB#55:                                # %lor.lhs.false.93
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	cmpq	%rcx, (%rdx)
	je	.LBB7_57
# BB#56:                                # %lor.lhs.false.95
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_item_get_tree
	cmpq	-16(%rbp), %rax
	jne	.LBB7_58
.LBB7_57:                               # %if.then.98
	jmp	.LBB7_59
.LBB7_58:                               # %if.else.99
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_get_insert_pos, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_96
.LBB7_59:                               # %if.end.100
	jmp	.LBB7_60
.LBB7_60:                               # %do.end.101
	jmp	.LBB7_61
.LBB7_61:                               # %do.body.102
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_64
# BB#62:                                # %lor.lhs.false.104
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	cmpq	%rcx, (%rdx)
	je	.LBB7_64
# BB#63:                                # %lor.lhs.false.106
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB7_65
.LBB7_64:                               # %if.then.111
	jmp	.LBB7_66
.LBB7_65:                               # %if.else.112
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_get_insert_pos, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_96
.LBB7_66:                               # %if.end.113
	jmp	.LBB7_67
.LBB7_67:                               # %do.end.114
	jmp	.LBB7_68
.LBB7_68:                               # %do.body.115
	cmpq	$0, -40(%rbp)
	je	.LBB7_70
# BB#69:                                # %if.then.117
	jmp	.LBB7_71
.LBB7_70:                               # %if.else.118
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_get_insert_pos, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_96
.LBB7_71:                               # %if.end.119
	jmp	.LBB7_72
.LBB7_72:                               # %do.end.120
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	cmpq	%rcx, (%rdx)
	jne	.LBB7_80
# BB#73:                                # %if.then.122
	movq	-48(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB7_78
# BB#74:                                # %if.then.124
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB7_76
# BB#75:                                # %if.then.130
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB7_77
.LBB7_76:                               # %if.else.132
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gimp_item_get_parent
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB7_77:                               # %if.end.135
	jmp	.LBB7_79
.LBB7_78:                               # %if.else.136
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
.LBB7_79:                               # %if.end.137
	jmp	.LBB7_80
.LBB7_80:                               # %if.end.138
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_82
# BB#81:                                # %if.then.140
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -56(%rbp)
	jmp	.LBB7_83
.LBB7_82:                               # %if.else.144
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB7_83:                               # %if.end.146
	movq	-40(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB7_89
# BB#84:                                # %if.then.148
	movq	-48(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB7_86
# BB#85:                                # %if.then.151
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movq	-40(%rbp), %rsi
	movl	%eax, (%rsi)
.LBB7_86:                               # %if.end.156
	movq	-40(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB7_88
# BB#87:                                # %if.then.158
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
.LBB7_88:                               # %if.end.159
	jmp	.LBB7_89
.LBB7_89:                               # %if.end.160
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movq	-56(%rbp), %rdi
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	callq	gimp_container_get_n_children
	movl	-180(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB7_91
# BB#90:                                # %cond.true
	movq	-56(%rbp), %rdi
	callq	gimp_container_get_n_children
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB7_95
.LBB7_91:                               # %cond.false
	movq	-40(%rbp), %rax
	cmpl	$0, (%rax)
	jge	.LBB7_93
# BB#92:                                # %cond.true.165
	xorl	%eax, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB7_94
.LBB7_93:                               # %cond.false.166
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
.LBB7_94:                               # %cond.end
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB7_95:                               # %cond.end.167
	movl	-184(%rbp), %eax        # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$1, -4(%rbp)
.LBB7_96:                               # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_item_tree_get_insert_pos, .Lfunc_end7-gimp_item_tree_get_insert_pos
	.cfi_endproc

	.globl	gimp_item_tree_add_item
	.align	16, 0x90
	.type	gimp_item_tree_add_item,@function
gimp_item_tree_add_item:                # @gimp_item_tree_add_item
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_item_tree_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_add_item, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_71
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
# BB#13:                                # %do.body.13
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB8_15
# BB#14:                                # %if.then.21
	movl	$0, -100(%rbp)
	jmp	.LBB8_20
.LBB8_15:                               # %if.else.22
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_18
# BB#16:                                # %land.lhs.true.25
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB8_18
# BB#17:                                # %if.then.29
	movl	$1, -100(%rbp)
	jmp	.LBB8_19
.LBB8_18:                               # %if.else.30
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB8_19:                               # %if.end.32
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.33
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB8_22
# BB#21:                                # %if.then.36
	jmp	.LBB8_23
.LBB8_22:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_add_item, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_71
.LBB8_23:                               # %if.end.38
	jmp	.LBB8_24
.LBB8_24:                               # %do.end.39
	jmp	.LBB8_25
.LBB8_25:                               # %do.body.40
	movq	-16(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB8_27
# BB#26:                                # %if.then.43
	jmp	.LBB8_28
.LBB8_27:                               # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_add_item, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_71
.LBB8_28:                               # %if.end.45
	jmp	.LBB8_29
.LBB8_29:                               # %do.end.46
	jmp	.LBB8_30
.LBB8_30:                               # %do.body.47
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_image
	movq	-40(%rbp), %rdi
	cmpq	(%rdi), %rax
	jne	.LBB8_32
# BB#31:                                # %if.then.50
	jmp	.LBB8_33
.LBB8_32:                               # %if.else.51
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_add_item, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_71
.LBB8_33:                               # %if.end.52
	jmp	.LBB8_34
.LBB8_34:                               # %do.end.53
	jmp	.LBB8_35
.LBB8_35:                               # %do.body.54
	cmpq	$0, -24(%rbp)
	je	.LBB8_44
# BB#36:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB8_38
# BB#37:                                # %if.then.64
	movl	$0, -124(%rbp)
	jmp	.LBB8_43
.LBB8_38:                               # %if.else.65
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_41
# BB#39:                                # %land.lhs.true.68
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB8_41
# BB#40:                                # %if.then.72
	movl	$1, -124(%rbp)
	jmp	.LBB8_42
.LBB8_41:                               # %if.else.73
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB8_42:                               # %if.end.75
	jmp	.LBB8_43
.LBB8_43:                               # %if.end.76
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB8_45
.LBB8_44:                               # %if.then.79
	jmp	.LBB8_46
.LBB8_45:                               # %if.else.80
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_add_item, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_71
.LBB8_46:                               # %if.end.81
	jmp	.LBB8_47
.LBB8_47:                               # %do.end.82
	jmp	.LBB8_48
.LBB8_48:                               # %do.body.83
	cmpq	$0, -24(%rbp)
	je	.LBB8_50
# BB#49:                                # %lor.lhs.false.85
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_tree
	cmpq	-8(%rbp), %rax
	jne	.LBB8_51
.LBB8_50:                               # %if.then.88
	jmp	.LBB8_52
.LBB8_51:                               # %if.else.89
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_add_item, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_71
.LBB8_52:                               # %if.end.90
	jmp	.LBB8_53
.LBB8_53:                               # %do.end.91
	jmp	.LBB8_54
.LBB8_54:                               # %do.body.92
	cmpq	$0, -24(%rbp)
	je	.LBB8_56
# BB#55:                                # %lor.lhs.false.94
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB8_57
.LBB8_56:                               # %if.then.99
	jmp	.LBB8_58
.LBB8_57:                               # %if.else.100
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_add_item, %rsi
	movabsq	$.L.str.23, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_71
.LBB8_58:                               # %if.end.101
	jmp	.LBB8_59
.LBB8_59:                               # %do.end.102
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_item_tree_uniquefy_name
	movq	-16(%rbp), %rdx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB8_64
# BB#60:                                # %if.then.107
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_get_item_list
	movq	%rax, -136(%rbp)
.LBB8_61:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB8_63
# BB#62:                                # %while.body
                                        #   in Loop: Header=BB8_61 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movq	-136(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rsi
	callq	gimp_item_tree_uniquefy_name
	movq	-136(%rbp), %rdi
	movq	-136(%rbp), %rcx
	movq	(%rcx), %rsi
	callq	g_list_remove
	movq	%rax, -136(%rbp)
	jmp	.LBB8_61
.LBB8_63:                               # %while.end
	jmp	.LBB8_64
.LBB8_64:                               # %if.end.115
	cmpq	$0, -24(%rbp)
	je	.LBB8_66
# BB#65:                                # %if.then.117
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -48(%rbp)
	jmp	.LBB8_67
.LBB8_66:                               # %if.else.121
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB8_67:                               # %if.end.123
	cmpq	$0, -24(%rbp)
	je	.LBB8_69
# BB#68:                                # %if.then.125
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_viewable_set_parent
.LBB8_69:                               # %if.end.130
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %edx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_insert
	movq	-16(%rbp), %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gimp_item_is_removed
	cmpl	$0, %eax
	je	.LBB8_71
# BB#70:                                # %if.then.136
	movq	-16(%rbp), %rdi
	callq	gimp_item_unset_removed
.LBB8_71:                               # %if.end.137
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_item_tree_add_item, .Lfunc_end8-gimp_item_tree_add_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_uniquefy_name,@function
gimp_item_tree_uniquefy_name:           # @gimp_item_tree_uniquefy_name
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_hash_table_remove
	movq	-16(%rbp), %rsi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
.LBB9_2:                                # %if.end
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_hash_table_lookup
	cmpq	$0, %rax
	je	.LBB9_15
# BB#3:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movl	$35, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	strrchr
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB9_11
# BB#4:                                 # %if.then.16
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	atoi
	movl	$8, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.41, %rdx
	leaq	-68(%rbp), %rdi
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %ecx
	movb	$0, %al
	callq	g_snprintf
	leaq	-68(%rbp), %rdi
	movq	-48(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, %rsi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_9
# BB#5:                                 # %if.then.23
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jbe	.LBB9_8
# BB#6:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$32, %ecx
	jne	.LBB9_8
# BB#7:                                 # %if.then.27
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
.LBB9_8:                                # %if.end.28
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB9_10
.LBB9_9:                                # %if.else
	movl	$0, -60(%rbp)
.LBB9_10:                               # %if.end.29
	jmp	.LBB9_11
.LBB9_11:                               # %if.end.30
	jmp	.LBB9_12
.LBB9_12:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.42, %rdi
	movq	-40(%rbp), %rsi
	movl	-60(%rbp), %edx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -56(%rbp)
# BB#13:                                # %do.cond
                                        #   in Loop: Header=BB9_12 Depth=1
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	g_hash_table_lookup
	cmpq	$0, %rax
	jne	.LBB9_12
# BB#14:                                # %do.end
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_take_name
.LBB9_15:                               # %if.end.37
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-16(%rbp), %rdi
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	callq	g_hash_table_insert
	movl	%eax, -148(%rbp)        # 4-byte Spill
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_item_tree_uniquefy_name, .Lfunc_end9-gimp_item_tree_uniquefy_name
	.cfi_endproc

	.globl	gimp_item_tree_remove_item
	.align	16, 0x90
	.type	gimp_item_tree_remove_item,@function
gimp_item_tree_remove_item:             # @gimp_item_tree_remove_item
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_item_tree_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_remove_item, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_50
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
# BB#13:                                # %do.body.13
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB10_15
# BB#14:                                # %if.then.21
	movl	$0, -116(%rbp)
	jmp	.LBB10_20
.LBB10_15:                              # %if.else.22
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_18
# BB#16:                                # %land.lhs.true.25
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB10_18
# BB#17:                                # %if.then.29
	movl	$1, -116(%rbp)
	jmp	.LBB10_19
.LBB10_18:                              # %if.else.30
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB10_19:                              # %if.end.32
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.33
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB10_22
# BB#21:                                # %if.then.36
	jmp	.LBB10_23
.LBB10_22:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_remove_item, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_50
.LBB10_23:                              # %if.end.38
	jmp	.LBB10_24
.LBB10_24:                              # %do.end.39
	jmp	.LBB10_25
.LBB10_25:                              # %do.body.40
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_tree
	cmpq	-16(%rbp), %rax
	jne	.LBB10_27
# BB#26:                                # %if.then.43
	jmp	.LBB10_28
.LBB10_27:                              # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_remove_item, %rsi
	movabsq	$.L.str.24, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_50
.LBB10_28:                              # %if.end.45
	jmp	.LBB10_29
.LBB10_29:                              # %do.end.46
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_parent
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_container
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_index
	movl	%eax, -68(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_object_ref
	movq	-40(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_hash_table_remove
	movq	-24(%rbp), %rcx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB10_34
# BB#30:                                # %if.then.57
	movq	-64(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_get_item_list
	movq	%rax, -128(%rbp)
.LBB10_31:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB10_33
# BB#32:                                # %while.body
                                        #   in Loop: Header=BB10_31 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_hash_table_remove
	movq	-128(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	g_list_remove
	movq	%rax, -128(%rbp)
	jmp	.LBB10_31
.LBB10_33:                              # %while.end
	jmp	.LBB10_34
.LBB10_34:                              # %if.end.68
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_remove
	cmpq	$0, -48(%rbp)
	movl	%eax, -220(%rbp)        # 4-byte Spill
	je	.LBB10_36
# BB#35:                                # %if.then.73
	movq	-24(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_viewable_set_parent
.LBB10_36:                              # %if.end.76
	movq	-24(%rbp), %rdi
	callq	gimp_item_removed
	cmpq	$0, -32(%rbp)
	jne	.LBB10_49
# BB#37:                                # %if.then.78
	movq	-56(%rbp), %rdi
	callq	gimp_container_get_n_children
	movl	%eax, -132(%rbp)
	cmpl	$0, -132(%rbp)
	jle	.LBB10_45
# BB#38:                                # %if.then.82
	movl	-68(%rbp), %eax
	movl	-132(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB10_40
# BB#39:                                # %cond.true
	movl	-132(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB10_44
.LBB10_40:                              # %cond.false
	cmpl	$0, -68(%rbp)
	jge	.LBB10_42
# BB#41:                                # %cond.true.86
	xorl	%eax, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB10_43
.LBB10_42:                              # %cond.false.87
	movl	-68(%rbp), %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB10_43:                              # %cond.end
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB10_44:                              # %cond.end.88
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	movq	-56(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_container_get_child_by_index
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	jmp	.LBB10_48
.LBB10_45:                              # %if.else.93
	cmpq	$0, -48(%rbp)
	je	.LBB10_47
# BB#46:                                # %if.then.95
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB10_47:                              # %if.end.96
	jmp	.LBB10_48
.LBB10_48:                              # %if.end.97
	jmp	.LBB10_49
.LBB10_49:                              # %if.end.98
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_50:                              # %return
	movq	-8(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_item_tree_remove_item, .Lfunc_end10-gimp_item_tree_remove_item
	.cfi_endproc

	.globl	gimp_item_tree_reorder_item
	.align	16, 0x90
	.type	gimp_item_tree_reorder_item,@function
gimp_item_tree_reorder_item:            # @gimp_item_tree_reorder_item
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
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	%r9, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_item_tree_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_reorder_item, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_85
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -56(%rbp)
# BB#13:                                # %do.body.13
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB11_15
# BB#14:                                # %if.then.21
	movl	$0, -124(%rbp)
	jmp	.LBB11_20
.LBB11_15:                              # %if.else.22
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_18
# BB#16:                                # %land.lhs.true.25
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB11_18
# BB#17:                                # %if.then.29
	movl	$1, -124(%rbp)
	jmp	.LBB11_19
.LBB11_18:                              # %if.else.30
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB11_19:                              # %if.end.32
	jmp	.LBB11_20
.LBB11_20:                              # %if.end.33
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB11_22
# BB#21:                                # %if.then.36
	jmp	.LBB11_23
.LBB11_22:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_reorder_item, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_85
.LBB11_23:                              # %if.end.38
	jmp	.LBB11_24
.LBB11_24:                              # %do.end.39
	jmp	.LBB11_25
.LBB11_25:                              # %do.body.40
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_tree
	cmpq	-16(%rbp), %rax
	jne	.LBB11_27
# BB#26:                                # %if.then.43
	jmp	.LBB11_28
.LBB11_27:                              # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_reorder_item, %rsi
	movabsq	$.L.str.24, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_85
.LBB11_28:                              # %if.end.45
	jmp	.LBB11_29
.LBB11_29:                              # %do.end.46
	jmp	.LBB11_30
.LBB11_30:                              # %do.body.47
	cmpq	$0, -32(%rbp)
	je	.LBB11_39
# BB#31:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB11_33
# BB#32:                                # %if.then.57
	movl	$0, -148(%rbp)
	jmp	.LBB11_38
.LBB11_33:                              # %if.else.58
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_36
# BB#34:                                # %land.lhs.true.61
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB11_36
# BB#35:                                # %if.then.65
	movl	$1, -148(%rbp)
	jmp	.LBB11_37
.LBB11_36:                              # %if.else.66
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB11_37:                              # %if.end.68
	jmp	.LBB11_38
.LBB11_38:                              # %if.end.69
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB11_40
.LBB11_39:                              # %if.then.72
	jmp	.LBB11_41
.LBB11_40:                              # %if.else.73
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_reorder_item, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_85
.LBB11_41:                              # %if.end.74
	jmp	.LBB11_42
.LBB11_42:                              # %do.end.75
	jmp	.LBB11_43
.LBB11_43:                              # %do.body.76
	cmpq	$0, -32(%rbp)
	je	.LBB11_45
# BB#44:                                # %lor.lhs.false.78
	movq	-32(%rbp), %rdi
	callq	gimp_item_get_tree
	cmpq	-16(%rbp), %rax
	jne	.LBB11_46
.LBB11_45:                              # %if.then.81
	jmp	.LBB11_47
.LBB11_46:                              # %if.else.82
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_reorder_item, %rsi
	movabsq	$.L.str.26, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_85
.LBB11_47:                              # %if.end.83
	jmp	.LBB11_48
.LBB11_48:                              # %do.end.84
	jmp	.LBB11_49
.LBB11_49:                              # %do.body.85
	cmpq	$0, -32(%rbp)
	je	.LBB11_51
# BB#50:                                # %lor.lhs.false.87
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB11_52
.LBB11_51:                              # %if.then.92
	jmp	.LBB11_53
.LBB11_52:                              # %if.else.93
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_reorder_item, %rsi
	movabsq	$.L.str.27, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_85
.LBB11_53:                              # %if.end.94
	jmp	.LBB11_54
.LBB11_54:                              # %do.end.95
	jmp	.LBB11_55
.LBB11_55:                              # %do.body.96
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB11_57
# BB#56:                                # %if.then.98
	jmp	.LBB11_58
.LBB11_57:                              # %if.else.99
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_reorder_item, %rsi
	movabsq	$.L.str.28, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_85
.LBB11_58:                              # %if.end.100
	jmp	.LBB11_59
.LBB11_59:                              # %do.end.101
	jmp	.LBB11_60
.LBB11_60:                              # %do.body.102
	cmpq	$0, -32(%rbp)
	je	.LBB11_62
# BB#61:                                # %lor.lhs.false.104
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_viewable_is_ancestor
	cmpl	$0, %eax
	jne	.LBB11_63
.LBB11_62:                              # %if.then.111
	jmp	.LBB11_64
.LBB11_63:                              # %if.else.112
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_reorder_item, %rsi
	movabsq	$.L.str.29, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_85
.LBB11_64:                              # %if.end.113
	jmp	.LBB11_65
.LBB11_65:                              # %do.end.114
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_container
	movq	%rax, -64(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB11_67
# BB#66:                                # %if.then.117
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -72(%rbp)
	jmp	.LBB11_68
.LBB11_67:                              # %if.else.121
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB11_68:                              # %if.end.123
	movq	-72(%rbp), %rdi
	callq	gimp_container_get_n_children
	movl	%eax, -76(%rbp)
	movq	-72(%rbp), %rdi
	cmpq	-64(%rbp), %rdi
	jne	.LBB11_70
# BB#69:                                # %if.then.126
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
.LBB11_70:                              # %if.end.127
	movl	-36(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jle	.LBB11_72
# BB#71:                                # %cond.true
	movl	-76(%rbp), %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB11_76
.LBB11_72:                              # %cond.false
	cmpl	$0, -36(%rbp)
	jge	.LBB11_74
# BB#73:                                # %cond.true.130
	xorl	%eax, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB11_75
.LBB11_74:                              # %cond.false.131
	movl	-36(%rbp), %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB11_75:                              # %cond.end
	movl	-208(%rbp), %eax        # 4-byte Reload
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB11_76:                              # %cond.end.132
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -36(%rbp)
	movq	-72(%rbp), %rcx
	cmpq	-64(%rbp), %rcx
	jne	.LBB11_78
# BB#77:                                # %lor.lhs.false.135
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	gimp_item_get_index
	movl	-212(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB11_84
.LBB11_78:                              # %if.then.138
	cmpl	$0, -40(%rbp)
	je	.LBB11_80
# BB#79:                                # %if.then.140
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_image_undo_push_item_reorder
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB11_80:                              # %if.end.142
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB11_82
# BB#81:                                # %if.then.144
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_remove
	movq	-24(%rbp), %rcx
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_viewable_set_parent
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_insert
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	g_object_unref
	jmp	.LBB11_83
.LBB11_82:                              # %if.else.156
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %edx
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_reorder
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB11_83:                              # %if.end.160
	jmp	.LBB11_84
.LBB11_84:                              # %if.end.161
	movl	$1, -4(%rbp)
.LBB11_85:                              # %return
	movl	-4(%rbp), %eax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_item_tree_reorder_item, .Lfunc_end11-gimp_item_tree_reorder_item
	.cfi_endproc

	.globl	gimp_item_tree_rename_item
	.align	16, 0x90
	.type	gimp_item_tree_rename_item,@function
gimp_item_tree_rename_item:             # @gimp_item_tree_rename_item
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_item_tree_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_rename_item, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_38
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
# BB#13:                                # %do.body.13
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB12_15
# BB#14:                                # %if.then.21
	movl	$0, -92(%rbp)
	jmp	.LBB12_20
.LBB12_15:                              # %if.else.22
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_18
# BB#16:                                # %land.lhs.true.25
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB12_18
# BB#17:                                # %if.then.29
	movl	$1, -92(%rbp)
	jmp	.LBB12_19
.LBB12_18:                              # %if.else.30
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB12_19:                              # %if.end.32
	jmp	.LBB12_20
.LBB12_20:                              # %if.end.33
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB12_22
# BB#21:                                # %if.then.36
	jmp	.LBB12_23
.LBB12_22:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_rename_item, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_38
.LBB12_23:                              # %if.end.38
	jmp	.LBB12_24
.LBB12_24:                              # %do.end.39
	jmp	.LBB12_25
.LBB12_25:                              # %do.body.40
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_tree
	cmpq	-8(%rbp), %rax
	jne	.LBB12_27
# BB#26:                                # %if.then.43
	jmp	.LBB12_28
.LBB12_27:                              # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_rename_item, %rsi
	movabsq	$.L.str.24, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_38
.LBB12_28:                              # %if.end.45
	jmp	.LBB12_29
.LBB12_29:                              # %do.end.46
	jmp	.LBB12_30
.LBB12_30:                              # %do.body.47
	cmpq	$0, -24(%rbp)
	je	.LBB12_32
# BB#31:                                # %if.then.49
	jmp	.LBB12_33
.LBB12_32:                              # %if.else.50
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_tree_rename_item, %rsi
	movabsq	$.L.str.30, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_38
.LBB12_33:                              # %if.end.51
	jmp	.LBB12_34
.LBB12_34:                              # %do.end.52
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB12_38
# BB#35:                                # %if.then.56
	cmpl	$0, -28(%rbp)
	je	.LBB12_37
# BB#36:                                # %if.then.58
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_image
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_image_undo_push_item_rename
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB12_37:                              # %if.end.61
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_item_tree_uniquefy_name
.LBB12_38:                              # %if.end.62
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_item_tree_rename_item, .Lfunc_end12-gimp_item_tree_rename_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_class_init,@function
gimp_item_tree_class_init:              # @gimp_item_tree_class_init
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
	subq	$64, %rsp
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
	movabsq	$gimp_item_tree_get_memsize, %rsi
	movabsq	$gimp_item_tree_get_property, %rdi
	movabsq	$gimp_item_tree_set_property, %rcx
	movabsq	$gimp_item_tree_finalize, %rdx
	movabsq	$gimp_item_tree_constructed, %r8
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 152(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movabsq	$.L.str.5, %rdi
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
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movabsq	$.L.str.6, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_gtype
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movabsq	$.L.str.7, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_gtype
	movl	$3, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movabsq	$.L.str.11, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$227, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$4, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$40, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_item_tree_class_init, .Lfunc_end13-gimp_item_tree_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_constructed,@function
gimp_item_tree_constructed:             # @gimp_item_tree_constructed
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	gimp_item_tree_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_item_tree_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB14_2:                               # %if.end
	jmp	.LBB14_3
.LBB14_3:                               # %do.body
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB14_5
# BB#4:                                 # %if.then.9
	movl	$0, -44(%rbp)
	jmp	.LBB14_10
.LBB14_5:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_8
# BB#6:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB14_8
# BB#7:                                 # %if.then.12
	movl	$1, -44(%rbp)
	jmp	.LBB14_9
.LBB14_8:                               # %if.else.13
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB14_9:                               # %if.end.15
	jmp	.LBB14_10
.LBB14_10:                              # %if.end.16
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB14_12
# BB#11:                                # %if.then.18
	jmp	.LBB14_13
.LBB14_12:                              # %if.else.19
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.31, %rsi
	movl	$153, %edx
	movabsq	$.L__func__.gimp_item_tree_constructed, %rcx
	movabsq	$.L.str.32, %r8
	callq	g_assertion_message_expr
.LBB14_13:                              # %if.end.20
	jmp	.LBB14_14
.LBB14_14:                              # %do.end
	jmp	.LBB14_15
.LBB14_15:                              # %do.body.21
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB14_17
# BB#16:                                # %if.then.25
	jmp	.LBB14_18
.LBB14_17:                              # %if.else.26
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.31, %rsi
	movl	$154, %edx
	movabsq	$.L__func__.gimp_item_tree_constructed, %rcx
	movabsq	$.L.str.33, %r8
	callq	g_assertion_message_expr
.LBB14_18:                              # %if.end.27
	jmp	.LBB14_19
.LBB14_19:                              # %do.end.28
	jmp	.LBB14_20
.LBB14_20:                              # %do.body.29
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB14_22
# BB#21:                                # %if.then.33
	jmp	.LBB14_23
.LBB14_22:                              # %if.else.34
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.31, %rsi
	movl	$155, %edx
	movabsq	$.L__func__.gimp_item_tree_constructed, %rcx
	movabsq	$.L.str.34, %r8
	callq	g_assertion_message_expr
.LBB14_23:                              # %if.end.35
	jmp	.LBB14_24
.LBB14_24:                              # %do.end.36
	jmp	.LBB14_25
.LBB14_25:                              # %do.body.37
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_27
# BB#26:                                # %if.then.41
	jmp	.LBB14_28
.LBB14_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.31, %rsi
	movl	$156, %edx
	movabsq	$.L__func__.gimp_item_tree_constructed, %rcx
	movabsq	$.L.str.35, %r8
	callq	g_assertion_message_expr
.LBB14_28:                              # %if.end.43
	jmp	.LBB14_29
.LBB14_29:                              # %do.end.44
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_name
	movabsq	$.L.str.36, %rsi
	movabsq	$.L.str.37, %rcx
	movabsq	$.L.str.38, %r9
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movq	-24(%rbp), %r10
	movq	16(%r10), %r8
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_item_tree_constructed, .Lfunc_end14-gimp_item_tree_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_finalize,@function
gimp_item_tree_finalize:                # @gimp_item_tree_finalize
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_hash_table_unref
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
.LBB15_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB15_4
# BB#3:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB15_4:                               # %if.end.10
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_item_tree_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_item_tree_finalize, .Lfunc_end15-gimp_item_tree_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_set_property,@function
gimp_item_tree_set_property:            # @gimp_item_tree_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB16_5
# BB#9:                                 # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI16_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB16_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB16_8
.LBB16_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_gtype
	movq	-40(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB16_8
.LBB16_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_gtype
	movq	-40(%rbp), %rdi
	movq	%rax, 16(%rdi)
	jmp	.LBB16_8
.LBB16_4:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 24(%rdi)
	jmp	.LBB16_8
.LBB16_5:                               # %sw.default
	jmp	.LBB16_6
.LBB16_6:                               # %do.body
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
	movabsq	$.L.str.39, %rdi
	movabsq	$.L.str.31, %rsi
	movl	$210, %edx
	movabsq	$.L.str.40, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB16_8
.LBB16_8:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_item_tree_set_property, .Lfunc_end16-gimp_item_tree_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_1
	.quad	.LBB16_2
	.quad	.LBB16_3
	.quad	.LBB16_4

	.text
	.align	16, 0x90
	.type	gimp_item_tree_get_property,@function
gimp_item_tree_get_property:            # @gimp_item_tree_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB17_5
# BB#9:                                 # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI17_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB17_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB17_8
.LBB17_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_value_set_gtype
	jmp	.LBB17_8
.LBB17_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rsi
	callq	g_value_set_gtype
	jmp	.LBB17_8
.LBB17_4:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB17_8
.LBB17_5:                               # %sw.default
	jmp	.LBB17_6
.LBB17_6:                               # %do.body
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
	movabsq	$.L.str.39, %rdi
	movabsq	$.L.str.31, %rsi
	movl	$239, %edx
	movabsq	$.L.str.40, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB17_8
.LBB17_8:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_item_tree_get_property, .Lfunc_end17-gimp_item_tree_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI17_0:
	.quad	.LBB17_1
	.quad	.LBB17_2
	.quad	.LBB17_3
	.quad	.LBB17_4

	.text
	.align	16, 0x90
	.type	gimp_item_tree_get_memsize,@function
gimp_item_tree_get_memsize:             # @gimp_item_tree_get_memsize
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_item_tree_parent_class, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-56(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_item_tree_get_memsize, .Lfunc_end18-gimp_item_tree_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB19_2
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
.LBB19_2:                               # %entry
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
.Lfunc_end19:
	.size	g_warning, .Lfunc_end19-g_warning
	.cfi_endproc

	.type	gimp_item_tree_get_type.g_define_type_id__volatile,@object # @gimp_item_tree_get_type.g_define_type_id__volatile
	.local	gimp_item_tree_get_type.g_define_type_id__volatile
	.comm	gimp_item_tree_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpItemTree"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_item_tree_new,@object # @__func__.gimp_item_tree_new
.L__func__.gimp_item_tree_new:
	.asciz	"gimp_item_tree_new"
	.size	.L__func__.gimp_item_tree_new, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"g_type_is_a (container_type, GIMP_TYPE_ITEM_STACK)"
	.size	.L.str.3, 51

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"g_type_is_a (item_type, GIMP_TYPE_ITEM)"
	.size	.L.str.4, 40

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"image"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"container-type"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"item-type"
	.size	.L.str.7, 10

	.type	.L__func__.gimp_item_tree_get_active_item,@object # @__func__.gimp_item_tree_get_active_item
.L__func__.gimp_item_tree_get_active_item:
	.asciz	"gimp_item_tree_get_active_item"
	.size	.L__func__.gimp_item_tree_get_active_item, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_ITEM_TREE (tree)"
	.size	.L.str.8, 25

	.type	.L__func__.gimp_item_tree_set_active_item,@object # @__func__.gimp_item_tree_set_active_item
.L__func__.gimp_item_tree_set_active_item:
	.asciz	"gimp_item_tree_set_active_item"
	.size	.L__func__.gimp_item_tree_set_active_item, 31

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"item == NULL || G_TYPE_CHECK_INSTANCE_TYPE (item, private->item_type)"
	.size	.L.str.9, 70

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"item == NULL || gimp_item_get_tree (item) == tree"
	.size	.L.str.10, 50

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"active-item"
	.size	.L.str.11, 12

	.type	.L__func__.gimp_item_tree_get_item_by_name,@object # @__func__.gimp_item_tree_get_item_by_name
.L__func__.gimp_item_tree_get_item_by_name:
	.asciz	"gimp_item_tree_get_item_by_name"
	.size	.L__func__.gimp_item_tree_get_item_by_name, 32

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"name != NULL"
	.size	.L.str.12, 13

	.type	.L__func__.gimp_item_tree_get_insert_pos,@object # @__func__.gimp_item_tree_get_insert_pos
.L__func__.gimp_item_tree_get_insert_pos:
	.asciz	"gimp_item_tree_get_insert_pos"
	.size	.L__func__.gimp_item_tree_get_insert_pos, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"parent != NULL"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"G_TYPE_CHECK_INSTANCE_TYPE (item, private->item_type)"
	.size	.L.str.14, 54

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"! gimp_item_is_attached (item)"
	.size	.L.str.15, 31

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp_item_get_image (item) == private->image"
	.size	.L.str.16, 45

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"*parent == NULL || *parent == GIMP_IMAGE_ACTIVE_PARENT || G_TYPE_CHECK_INSTANCE_TYPE (*parent, private->item_type)"
	.size	.L.str.17, 115

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"*parent == NULL || *parent == GIMP_IMAGE_ACTIVE_PARENT || gimp_item_get_tree (*parent) == tree"
	.size	.L.str.18, 95

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"*parent == NULL || *parent == GIMP_IMAGE_ACTIVE_PARENT || gimp_viewable_get_children (GIMP_VIEWABLE (*parent))"
	.size	.L.str.19, 111

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"position != NULL"
	.size	.L.str.20, 17

	.type	.L__func__.gimp_item_tree_add_item,@object # @__func__.gimp_item_tree_add_item
.L__func__.gimp_item_tree_add_item:
	.asciz	"gimp_item_tree_add_item"
	.size	.L__func__.gimp_item_tree_add_item, 24

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"parent == NULL || G_TYPE_CHECK_INSTANCE_TYPE (parent, private->item_type)"
	.size	.L.str.21, 74

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"parent == NULL || gimp_item_get_tree (parent) == tree"
	.size	.L.str.22, 54

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"parent == NULL || gimp_viewable_get_children (GIMP_VIEWABLE (parent))"
	.size	.L.str.23, 70

	.type	.L__func__.gimp_item_tree_remove_item,@object # @__func__.gimp_item_tree_remove_item
.L__func__.gimp_item_tree_remove_item:
	.asciz	"gimp_item_tree_remove_item"
	.size	.L__func__.gimp_item_tree_remove_item, 27

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp_item_get_tree (item) == tree"
	.size	.L.str.24, 34

	.type	.L__func__.gimp_item_tree_reorder_item,@object # @__func__.gimp_item_tree_reorder_item
.L__func__.gimp_item_tree_reorder_item:
	.asciz	"gimp_item_tree_reorder_item"
	.size	.L__func__.gimp_item_tree_reorder_item, 28

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"new_parent == NULL || G_TYPE_CHECK_INSTANCE_TYPE (new_parent, private->item_type)"
	.size	.L.str.25, 82

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"new_parent == NULL || gimp_item_get_tree (new_parent) == tree"
	.size	.L.str.26, 62

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"new_parent == NULL || gimp_viewable_get_children (GIMP_VIEWABLE (new_parent))"
	.size	.L.str.27, 78

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"item != new_parent"
	.size	.L.str.28, 19

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"new_parent == NULL || ! gimp_viewable_is_ancestor (GIMP_VIEWABLE (item), GIMP_VIEWABLE (new_parent))"
	.size	.L.str.29, 101

	.type	.L__func__.gimp_item_tree_rename_item,@object # @__func__.gimp_item_tree_rename_item
.L__func__.gimp_item_tree_rename_item:
	.asciz	"gimp_item_tree_rename_item"
	.size	.L__func__.gimp_item_tree_rename_item, 27

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"new_name != NULL"
	.size	.L.str.30, 17

	.type	gimp_item_tree_parent_class,@object # @gimp_item_tree_parent_class
	.local	gimp_item_tree_parent_class
	.comm	gimp_item_tree_parent_class,8,8
	.type	GimpItemTree_private_offset,@object # @GimpItemTree_private_offset
	.local	GimpItemTree_private_offset
	.comm	GimpItemTree_private_offset,4,4
	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimpitemtree.c"
	.size	.L.str.31, 15

	.type	.L__func__.gimp_item_tree_constructed,@object # @__func__.gimp_item_tree_constructed
.L__func__.gimp_item_tree_constructed:
	.asciz	"gimp_item_tree_constructed"
	.size	.L__func__.gimp_item_tree_constructed, 27

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"GIMP_IS_IMAGE (private->image)"
	.size	.L.str.32, 31

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"g_type_is_a (private->container_type, GIMP_TYPE_ITEM_STACK)"
	.size	.L.str.33, 60

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"g_type_is_a (private->item_type, GIMP_TYPE_ITEM)"
	.size	.L.str.34, 49

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"private->item_type != GIMP_TYPE_ITEM"
	.size	.L.str.35, 37

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"name"
	.size	.L.str.36, 5

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"children-type"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"policy"
	.size	.L.str.38, 7

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.39, 54

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"property"
	.size	.L.str.40, 9

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"%d"
	.size	.L.str.41, 3

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"%s #%d"
	.size	.L.str.42, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
