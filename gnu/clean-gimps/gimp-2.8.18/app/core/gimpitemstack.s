	.text
	.file	"gimpitemstack.bc"
	.globl	gimp_item_stack_get_type
	.align	16, 0x90
	.type	gimp_item_stack_get_type,@function
gimp_item_stack_get_type:               # @gimp_item_stack_get_type
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
	movq	gimp_item_stack_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_item_stack_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_list_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$248, %edx
	movabsq	$gimp_item_stack_class_intern_init, %rdi
	movl	$72, %r8d
	movabsq	$gimp_item_stack_init, %rcx
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
	movabsq	$gimp_item_stack_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_item_stack_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_item_stack_get_type, .Lfunc_end0-gimp_item_stack_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_stack_class_intern_init,@function
gimp_item_stack_class_intern_init:      # @gimp_item_stack_class_intern_init
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
	movq	%rax, gimp_item_stack_parent_class
	cmpl	$0, GimpItemStack_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpItemStack_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_item_stack_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_item_stack_class_intern_init, .Lfunc_end1-gimp_item_stack_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_stack_init,@function
gimp_item_stack_init:                   # @gimp_item_stack_init
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
	.size	gimp_item_stack_init, .Lfunc_end2-gimp_item_stack_init
	.cfi_endproc

	.globl	gimp_item_stack_new
	.align	16, 0x90
	.type	gimp_item_stack_new,@function
gimp_item_stack_new:                    # @gimp_item_stack_new
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_stack_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	callq	gimp_item_stack_get_type
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r9
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movq	-16(%rbp), %r8
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_item_stack_new, .Lfunc_end3-gimp_item_stack_new
	.cfi_endproc

	.globl	gimp_item_stack_get_n_items
	.align	16, 0x90
	.type	gimp_item_stack_get_n_items,@function
gimp_item_stack_get_n_items:            # @gimp_item_stack_get_n_items
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_item_stack_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_stack_get_n_items, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_22
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB4_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB4_21
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -28(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB4_16
# BB#15:                                # %if.then.21
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_get_n_items
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB4_16:                               # %if.end.25
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_17
.LBB4_17:                               # %for.inc
                                        #   in Loop: Header=BB4_13 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB4_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_20
.LBB4_19:                               # %cond.false
                                        #   in Loop: Header=BB4_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_20
.LBB4_20:                               # %cond.end
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB4_13
.LBB4_21:                               # %for.end
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_22:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_item_stack_get_n_items, .Lfunc_end4-gimp_item_stack_get_n_items
	.cfi_endproc

	.globl	gimp_item_stack_is_flat
	.align	16, 0x90
	.type	gimp_item_stack_is_flat,@function
gimp_item_stack_is_flat:                # @gimp_item_stack_is_flat
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_item_stack_get_type
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
	movabsq	$.L__func__.gimp_item_stack_is_flat, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$1, -4(%rbp)
	jmp	.LBB5_22
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB5_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB5_21
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB5_16
# BB#15:                                # %if.then.18
	movl	$0, -4(%rbp)
	jmp	.LBB5_22
.LBB5_16:                               # %if.end.19
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_17
.LBB5_17:                               # %for.inc
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB5_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB5_20
.LBB5_19:                               # %cond.false
                                        #   in Loop: Header=BB5_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB5_20
.LBB5_20:                               # %cond.end
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB5_13
.LBB5_21:                               # %for.end
	movl	$1, -4(%rbp)
.LBB5_22:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_item_stack_is_flat, .Lfunc_end5-gimp_item_stack_is_flat
	.cfi_endproc

	.globl	gimp_item_stack_get_item_iter
	.align	16, 0x90
	.type	gimp_item_stack_get_item_iter,@function
gimp_item_stack_get_item_iter:          # @gimp_item_stack_get_item_iter
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
	callq	gimp_item_stack_get_type
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
	movabsq	$.L__func__.gimp_item_stack_get_item_iter, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_item_stack_get_item_iter, .Lfunc_end6-gimp_item_stack_get_item_iter
	.cfi_endproc

	.globl	gimp_item_stack_get_item_list
	.align	16, 0x90
	.type	gimp_item_stack_get_item_list,@function
gimp_item_stack_get_item_list:          # @gimp_item_stack_get_item_list
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
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_item_stack_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_stack_get_item_list, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_25
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB7_13:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB7_24
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB7_19
# BB#15:                                # %if.then.20
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_get_item_list
	movq	%rax, -80(%rbp)
.LBB7_16:                               # %while.cond
                                        #   Parent Loop BB7_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -80(%rbp)
	je	.LBB7_18
# BB#17:                                # %while.body
                                        #   in Loop: Header=BB7_16 Depth=2
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_list_prepend
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_list_remove
	movq	%rax, -80(%rbp)
	jmp	.LBB7_16
.LBB7_18:                               # %while.end
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_19
.LBB7_19:                               # %if.end.30
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_20
.LBB7_20:                               # %for.inc
                                        #   in Loop: Header=BB7_13 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB7_22
# BB#21:                                # %cond.true
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB7_23
.LBB7_22:                               # %cond.false
                                        #   in Loop: Header=BB7_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB7_23
.LBB7_23:                               # %cond.end
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB7_13
.LBB7_24:                               # %for.end
	movq	-32(%rbp), %rdi
	callq	g_list_reverse
	movq	%rax, -8(%rbp)
.LBB7_25:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_item_stack_get_item_list, .Lfunc_end7-gimp_item_stack_get_item_list
	.cfi_endproc

	.globl	gimp_item_stack_get_item_by_tattoo
	.align	16, 0x90
	.type	gimp_item_stack_get_item_by_tattoo,@function
gimp_item_stack_get_item_by_tattoo:     # @gimp_item_stack_get_item_by_tattoo
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_item_stack_get_type
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
	movabsq	$.L__func__.gimp_item_stack_get_item_by_tattoo, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_26
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB8_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB8_25
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_item_get_tattoo
	cmpl	-20(%rbp), %eax
	jne	.LBB8_16
# BB#15:                                # %if.then.19
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_26
.LBB8_16:                               # %if.end.20
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB8_20
# BB#17:                                # %if.then.25
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_item_stack_get_item_by_tattoo
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB8_19
# BB#18:                                # %if.then.30
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_26
.LBB8_19:                               # %if.end.31
                                        #   in Loop: Header=BB8_13 Depth=1
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.32
                                        #   in Loop: Header=BB8_13 Depth=1
	jmp	.LBB8_21
.LBB8_21:                               # %for.inc
                                        #   in Loop: Header=BB8_13 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB8_23
# BB#22:                                # %cond.true
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB8_24
.LBB8_23:                               # %cond.false
                                        #   in Loop: Header=BB8_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB8_24
.LBB8_24:                               # %cond.end
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB8_13
.LBB8_25:                               # %for.end
	movq	$0, -8(%rbp)
.LBB8_26:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_item_stack_get_item_by_tattoo, .Lfunc_end8-gimp_item_stack_get_item_by_tattoo
	.cfi_endproc

	.globl	gimp_item_stack_get_item_by_path
	.align	16, 0x90
	.type	gimp_item_stack_get_item_by_path,@function
gimp_item_stack_get_item_by_path:       # @gimp_item_stack_get_item_by_path
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_item_stack_get_type
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
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_stack_get_item_by_path, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_47
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.13
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_stack_get_item_by_path, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_47
.LBB9_16:                               # %if.end.15
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
.LBB9_18:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB9_46
# BB#19:                                # %while.body
                                        #   in Loop: Header=BB9_18 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -68(%rbp)
	movq	-32(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_container_get_child_by_index
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
# BB#20:                                # %do.body.24
                                        #   in Loop: Header=BB9_18 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB9_22
# BB#21:                                # %if.then.33
                                        #   in Loop: Header=BB9_18 Depth=1
	movl	$0, -92(%rbp)
	jmp	.LBB9_27
.LBB9_22:                               # %if.else.34
                                        #   in Loop: Header=BB9_18 Depth=1
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_25
# BB#23:                                # %land.lhs.true.37
                                        #   in Loop: Header=BB9_18 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB9_25
# BB#24:                                # %if.then.42
                                        #   in Loop: Header=BB9_18 Depth=1
	movl	$1, -92(%rbp)
	jmp	.LBB9_26
.LBB9_25:                               # %if.else.43
                                        #   in Loop: Header=BB9_18 Depth=1
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB9_26:                               # %if.end.45
                                        #   in Loop: Header=BB9_18 Depth=1
	jmp	.LBB9_27
.LBB9_27:                               # %if.end.46
                                        #   in Loop: Header=BB9_18 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB9_29
# BB#28:                                # %if.then.49
                                        #   in Loop: Header=BB9_18 Depth=1
	jmp	.LBB9_30
.LBB9_29:                               # %if.else.50
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_stack_get_item_by_path, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	-40(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB9_47
.LBB9_30:                               # %if.end.51
                                        #   in Loop: Header=BB9_18 Depth=1
	jmp	.LBB9_31
.LBB9_31:                               # %do.end.52
                                        #   in Loop: Header=BB9_18 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB9_45
# BB#32:                                # %if.then.54
                                        #   in Loop: Header=BB9_18 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -32(%rbp)
# BB#33:                                # %do.body.58
                                        #   in Loop: Header=BB9_18 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_item_stack_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB9_35
# BB#34:                                # %if.then.67
                                        #   in Loop: Header=BB9_18 Depth=1
	movl	$0, -116(%rbp)
	jmp	.LBB9_40
.LBB9_35:                               # %if.else.68
                                        #   in Loop: Header=BB9_18 Depth=1
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_38
# BB#36:                                # %land.lhs.true.71
                                        #   in Loop: Header=BB9_18 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB9_38
# BB#37:                                # %if.then.76
                                        #   in Loop: Header=BB9_18 Depth=1
	movl	$1, -116(%rbp)
	jmp	.LBB9_39
.LBB9_38:                               # %if.else.77
                                        #   in Loop: Header=BB9_18 Depth=1
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB9_39:                               # %if.end.79
                                        #   in Loop: Header=BB9_18 Depth=1
	jmp	.LBB9_40
.LBB9_40:                               # %if.end.80
                                        #   in Loop: Header=BB9_18 Depth=1
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB9_42
# BB#41:                                # %if.then.83
                                        #   in Loop: Header=BB9_18 Depth=1
	jmp	.LBB9_43
.LBB9_42:                               # %if.else.84
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_stack_get_item_by_path, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	-40(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB9_47
.LBB9_43:                               # %if.end.85
                                        #   in Loop: Header=BB9_18 Depth=1
	jmp	.LBB9_44
.LBB9_44:                               # %do.end.86
                                        #   in Loop: Header=BB9_18 Depth=1
	jmp	.LBB9_45
.LBB9_45:                               # %if.end.87
                                        #   in Loop: Header=BB9_18 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB9_18
.LBB9_46:                               # %while.end
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_47:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_item_stack_get_item_by_path, .Lfunc_end9-gimp_item_stack_get_item_by_path
	.cfi_endproc

	.globl	gimp_item_stack_get_parent_by_path
	.align	16, 0x90
	.type	gimp_item_stack_get_parent_by_path,@function
gimp_item_stack_get_parent_by_path:     # @gimp_item_stack_get_parent_by_path
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_item_stack_get_type
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
	movabsq	$.L__func__.gimp_item_stack_get_parent_by_path, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_49
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.13
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_stack_get_parent_by_path, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_49
.LBB10_16:                              # %if.end.15
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB10_19
# BB#18:                                # %if.then.18
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB10_19:                              # %if.end.19
	jmp	.LBB10_20
.LBB10_20:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB10_48
# BB#21:                                # %while.body
                                        #   in Loop: Header=BB10_20 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_container_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-44(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_container_get_child_by_index
	movq	%rax, -80(%rbp)
# BB#22:                                # %do.body.26
                                        #   in Loop: Header=BB10_20 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB10_24
# BB#23:                                # %if.then.35
                                        #   in Loop: Header=BB10_20 Depth=1
	movl	$0, -108(%rbp)
	jmp	.LBB10_29
.LBB10_24:                              # %if.else.36
                                        #   in Loop: Header=BB10_20 Depth=1
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_27
# BB#25:                                # %land.lhs.true.39
                                        #   in Loop: Header=BB10_20 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB10_27
# BB#26:                                # %if.then.44
                                        #   in Loop: Header=BB10_20 Depth=1
	movl	$1, -108(%rbp)
	jmp	.LBB10_28
.LBB10_27:                              # %if.else.45
                                        #   in Loop: Header=BB10_20 Depth=1
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB10_28:                              # %if.end.47
                                        #   in Loop: Header=BB10_20 Depth=1
	jmp	.LBB10_29
.LBB10_29:                              # %if.end.48
                                        #   in Loop: Header=BB10_20 Depth=1
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB10_31
# BB#30:                                # %if.then.51
                                        #   in Loop: Header=BB10_20 Depth=1
	jmp	.LBB10_32
.LBB10_31:                              # %if.else.52
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_stack_get_parent_by_path, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	-40(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB10_49
.LBB10_32:                              # %if.end.53
                                        #   in Loop: Header=BB10_20 Depth=1
	jmp	.LBB10_33
.LBB10_33:                              # %do.end.54
                                        #   in Loop: Header=BB10_20 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -88(%rbp)
# BB#34:                                # %do.body.58
                                        #   in Loop: Header=BB10_20 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_item_stack_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB10_36
# BB#35:                                # %if.then.67
                                        #   in Loop: Header=BB10_20 Depth=1
	movl	$0, -132(%rbp)
	jmp	.LBB10_41
.LBB10_36:                              # %if.else.68
                                        #   in Loop: Header=BB10_20 Depth=1
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_39
# BB#37:                                # %land.lhs.true.71
                                        #   in Loop: Header=BB10_20 Depth=1
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB10_39
# BB#38:                                # %if.then.76
                                        #   in Loop: Header=BB10_20 Depth=1
	movl	$1, -132(%rbp)
	jmp	.LBB10_40
.LBB10_39:                              # %if.else.77
                                        #   in Loop: Header=BB10_20 Depth=1
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB10_40:                              # %if.end.79
                                        #   in Loop: Header=BB10_20 Depth=1
	jmp	.LBB10_41
.LBB10_41:                              # %if.end.80
                                        #   in Loop: Header=BB10_20 Depth=1
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB10_43
# BB#42:                                # %if.then.83
                                        #   in Loop: Header=BB10_20 Depth=1
	jmp	.LBB10_44
.LBB10_43:                              # %if.else.84
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_stack_get_parent_by_path, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	-40(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB10_49
.LBB10_44:                              # %if.end.85
                                        #   in Loop: Header=BB10_20 Depth=1
	jmp	.LBB10_45
.LBB10_45:                              # %do.end.86
                                        #   in Loop: Header=BB10_20 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB10_47
# BB#46:                                # %if.then.95
                                        #   in Loop: Header=BB10_20 Depth=1
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB10_47:                              # %if.end.96
                                        #   in Loop: Header=BB10_20 Depth=1
	jmp	.LBB10_20
.LBB10_48:                              # %while.end
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_49:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_item_stack_get_parent_by_path, .Lfunc_end10-gimp_item_stack_get_parent_by_path
	.cfi_endproc

	.globl	gimp_item_stack_invalidate_previews
	.align	16, 0x90
	.type	gimp_item_stack_invalidate_previews,@function
gimp_item_stack_invalidate_previews:    # @gimp_item_stack_invalidate_previews
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_item_stack_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_item_stack_invalidate_previews, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_item_stack_invalidate_preview, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	gimp_container_foreach
.LBB11_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_item_stack_invalidate_previews, .Lfunc_end11-gimp_item_stack_invalidate_previews
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_stack_invalidate_preview,@function
gimp_item_stack_invalidate_preview:     # @gimp_item_stack_invalidate_preview
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_invalidate_previews
.LBB12_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_viewable_invalidate_preview
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_item_stack_invalidate_preview, .Lfunc_end12-gimp_item_stack_invalidate_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_stack_class_init,@function
gimp_item_stack_class_init:             # @gimp_item_stack_class_init
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_item_stack_remove, %rsi
	movabsq	$gimp_item_stack_add, %rdi
	movabsq	$gimp_item_stack_constructed, %rcx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 72(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 160(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 168(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_item_stack_class_init, .Lfunc_end13-gimp_item_stack_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_stack_constructed,@function
gimp_item_stack_constructed:            # @gimp_item_stack_constructed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_item_stack_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_item_stack_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB14_2:                               # %if.end
	jmp	.LBB14_3
.LBB14_3:                               # %do.body
	movq	-16(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB14_5
# BB#4:                                 # %if.then.9
	jmp	.LBB14_6
.LBB14_5:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.12, %rsi
	movl	$74, %edx
	movabsq	$.L__func__.gimp_item_stack_constructed, %rcx
	movabsq	$.L.str.13, %r8
	callq	g_assertion_message_expr
.LBB14_6:                               # %if.end.10
	jmp	.LBB14_7
.LBB14_7:                               # %do.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_item_stack_constructed, .Lfunc_end14-gimp_item_stack_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_stack_add,@function
gimp_item_stack_add:                    # @gimp_item_stack_add
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_ref_sink
	movq	gimp_item_stack_parent_class, %rsi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	160(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_item_stack_add, .Lfunc_end15-gimp_item_stack_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_stack_remove,@function
gimp_item_stack_remove:                 # @gimp_item_stack_remove
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	gimp_item_stack_parent_class, %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	168(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_item_stack_remove, .Lfunc_end16-gimp_item_stack_remove
	.cfi_endproc

	.type	gimp_item_stack_get_type.g_define_type_id__volatile,@object # @gimp_item_stack_get_type.g_define_type_id__volatile
	.local	gimp_item_stack_get_type.g_define_type_id__volatile
	.comm	gimp_item_stack_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpItemStack"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_item_stack_new,@object # @__func__.gimp_item_stack_new
.L__func__.gimp_item_stack_new:
	.asciz	"gimp_item_stack_new"
	.size	.L__func__.gimp_item_stack_new, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"g_type_is_a (item_type, GIMP_TYPE_ITEM)"
	.size	.L.str.2, 40

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"name"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"children-type"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"policy"
	.size	.L.str.5, 7

	.type	.L__func__.gimp_item_stack_get_n_items,@object # @__func__.gimp_item_stack_get_n_items
.L__func__.gimp_item_stack_get_n_items:
	.asciz	"gimp_item_stack_get_n_items"
	.size	.L__func__.gimp_item_stack_get_n_items, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_ITEM_STACK (stack)"
	.size	.L.str.6, 27

	.type	.L__func__.gimp_item_stack_is_flat,@object # @__func__.gimp_item_stack_is_flat
.L__func__.gimp_item_stack_is_flat:
	.asciz	"gimp_item_stack_is_flat"
	.size	.L__func__.gimp_item_stack_is_flat, 24

	.type	.L__func__.gimp_item_stack_get_item_iter,@object # @__func__.gimp_item_stack_get_item_iter
.L__func__.gimp_item_stack_get_item_iter:
	.asciz	"gimp_item_stack_get_item_iter"
	.size	.L__func__.gimp_item_stack_get_item_iter, 30

	.type	.L__func__.gimp_item_stack_get_item_list,@object # @__func__.gimp_item_stack_get_item_list
.L__func__.gimp_item_stack_get_item_list:
	.asciz	"gimp_item_stack_get_item_list"
	.size	.L__func__.gimp_item_stack_get_item_list, 30

	.type	.L__func__.gimp_item_stack_get_item_by_tattoo,@object # @__func__.gimp_item_stack_get_item_by_tattoo
.L__func__.gimp_item_stack_get_item_by_tattoo:
	.asciz	"gimp_item_stack_get_item_by_tattoo"
	.size	.L__func__.gimp_item_stack_get_item_by_tattoo, 35

	.type	.L__func__.gimp_item_stack_get_item_by_path,@object # @__func__.gimp_item_stack_get_item_by_path
.L__func__.gimp_item_stack_get_item_by_path:
	.asciz	"gimp_item_stack_get_item_by_path"
	.size	.L__func__.gimp_item_stack_get_item_by_path, 33

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"path != NULL"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_ITEM (item)"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_ITEM_STACK (container)"
	.size	.L.str.9, 31

	.type	.L__func__.gimp_item_stack_get_parent_by_path,@object # @__func__.gimp_item_stack_get_parent_by_path
.L__func__.gimp_item_stack_get_parent_by_path:
	.asciz	"gimp_item_stack_get_parent_by_path"
	.size	.L__func__.gimp_item_stack_get_parent_by_path, 35

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_ITEM (child)"
	.size	.L.str.10, 21

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_IS_ITEM_STACK (children)"
	.size	.L.str.11, 30

	.type	.L__func__.gimp_item_stack_invalidate_previews,@object # @__func__.gimp_item_stack_invalidate_previews
.L__func__.gimp_item_stack_invalidate_previews:
	.asciz	"gimp_item_stack_invalidate_previews"
	.size	.L__func__.gimp_item_stack_invalidate_previews, 36

	.type	gimp_item_stack_parent_class,@object # @gimp_item_stack_parent_class
	.local	gimp_item_stack_parent_class
	.comm	gimp_item_stack_parent_class,8,8
	.type	GimpItemStack_private_offset,@object # @GimpItemStack_private_offset
	.local	GimpItemStack_private_offset
	.comm	GimpItemStack_private_offset,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimpitemstack.c"
	.size	.L.str.12, 16

	.type	.L__func__.gimp_item_stack_constructed,@object # @__func__.gimp_item_stack_constructed
.L__func__.gimp_item_stack_constructed:
	.asciz	"gimp_item_stack_constructed"
	.size	.L__func__.gimp_item_stack_constructed, 28

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"g_type_is_a (gimp_container_get_children_type (container), GIMP_TYPE_ITEM)"
	.size	.L.str.13, 75


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
