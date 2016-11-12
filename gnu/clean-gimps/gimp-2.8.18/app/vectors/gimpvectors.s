	.text
	.file	"gimpvectors.bc"
	.globl	gimp_vectors_get_type
	.align	16, 0x90
	.type	gimp_vectors_get_type,@function
gimp_vectors_get_type:                  # @gimp_vectors_get_type
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
	movq	gimp_vectors_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_vectors_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_item_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$680, %edx              # imm = 0x2A8
	movabsq	$gimp_vectors_class_intern_init, %rdi
	movl	$104, %r8d
	movabsq	$gimp_vectors_init, %rcx
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
	movabsq	$gimp_vectors_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_vectors_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_vectors_get_type, .Lfunc_end0-gimp_vectors_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_class_intern_init,@function
gimp_vectors_class_intern_init:         # @gimp_vectors_class_intern_init
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
	movq	%rax, gimp_vectors_parent_class
	cmpl	$0, GimpVectors_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpVectors_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_vectors_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_vectors_class_intern_init, .Lfunc_end1-gimp_vectors_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4596373779694328218     # double 0.20000000000000001
	.text
	.align	16, 0x90
	.type	gimp_vectors_init,@function
gimp_vectors_init:                      # @gimp_vectors_init
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
	callq	gimp_item_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_item_set_visible
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 44(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_vectors_init, .Lfunc_end2-gimp_vectors_init
	.cfi_endproc

	.globl	gimp_vectors_new
	.align	16, 0x90
	.type	gimp_vectors_new,@function
gimp_vectors_new:                       # @gimp_vectors_new
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
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
	movabsq	$.L__func__.gimp_vectors_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_vectors_get_type
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_get_width
	movq	-16(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movl	-84(%rbp), %r9d         # 4-byte Reload
	movl	%eax, (%rsp)
	callq	gimp_item_new
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_vectors_new, .Lfunc_end3-gimp_vectors_new
	.cfi_endproc

	.globl	gimp_vectors_get_parent
	.align	16, 0x90
	.type	gimp_vectors_get_parent,@function
gimp_vectors_get_parent:                # @gimp_vectors_get_parent
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_vectors_get_type
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
	movabsq	$.L__func__.gimp_vectors_get_parent, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_parent
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_vectors_get_parent, .Lfunc_end4-gimp_vectors_get_parent
	.cfi_endproc

	.globl	gimp_vectors_freeze
	.align	16, 0x90
	.type	gimp_vectors_freeze,@function
gimp_vectors_freeze:                    # @gimp_vectors_freeze
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_vectors_freeze, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_14
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 44(%rax)
	movq	-8(%rbp), %rax
	cmpl	$1, 44(%rax)
	jne	.LBB5_14
# BB#13:                                # %if.then.13
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_vectors_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB5_14:                               # %if.end.14
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_vectors_freeze, .Lfunc_end5-gimp_vectors_freeze
	.cfi_endproc

	.globl	gimp_vectors_thaw
	.align	16, 0x90
	.type	gimp_vectors_thaw,@function
gimp_vectors_thaw:                      # @gimp_vectors_thaw
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_vectors_thaw, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_19
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	cmpl	$0, 44(%rax)
	jle	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_vectors_thaw, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_19
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 44(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 44(%rax)
	jne	.LBB6_19
# BB#18:                                # %if.then.20
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_vectors_signals+4, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB6_19:                               # %if.end.21
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_vectors_thaw, .Lfunc_end6-gimp_vectors_thaw
	.cfi_endproc

	.globl	gimp_vectors_copy_strokes
	.align	16, 0x90
	.type	gimp_vectors_copy_strokes,@function
gimp_vectors_copy_strokes:              # @gimp_vectors_copy_strokes
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_vectors_get_type
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
	movabsq	$.L__func__.gimp_vectors_copy_strokes, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_27
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB7_20
.LBB7_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB7_19:                               # %if.end.31
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.35
	jmp	.LBB7_23
.LBB7_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_vectors_copy_strokes, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_27
.LBB7_23:                               # %if.end.37
	jmp	.LBB7_24
.LBB7_24:                               # %do.end.38
	movq	-16(%rbp), %rdi
	callq	gimp_vectors_freeze
	movq	-16(%rbp), %rdi
	cmpq	$0, 32(%rdi)
	je	.LBB7_26
# BB#25:                                # %if.then.40
	movabsq	$g_object_unref, %rsi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_list_free_full
.LBB7_26:                               # %if.end.42
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_vectors_add_strokes
	movq	-16(%rbp), %rdi
	callq	gimp_vectors_thaw
.LBB7_27:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_vectors_copy_strokes, .Lfunc_end7-gimp_vectors_copy_strokes
	.cfi_endproc

	.globl	gimp_vectors_add_strokes
	.align	16, 0x90
	.type	gimp_vectors_add_strokes,@function
gimp_vectors_add_strokes:               # @gimp_vectors_add_strokes
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_vectors_get_type
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
	movabsq	$.L__func__.gimp_vectors_add_strokes, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_31
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB8_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB8_20
.LBB8_15:                               # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB8_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB8_19
.LBB8_18:                               # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB8_19:                               # %if.end.31
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB8_22
# BB#21:                                # %if.then.35
	jmp	.LBB8_23
.LBB8_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_vectors_add_strokes, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_31
.LBB8_23:                               # %if.end.37
	jmp	.LBB8_24
.LBB8_24:                               # %do.end.38
	movq	-16(%rbp), %rdi
	callq	gimp_vectors_freeze
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	g_list_copy
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB8_25:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB8_30
# BB#26:                                # %while.body
                                        #   in Loop: Header=BB8_25 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_stroke_duplicate
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdi
	movl	40(%rdi), %esi
	movq	%rax, %rdi
	callq	gimp_stroke_set_ID
	cmpq	$0, -24(%rbp)
	je	.LBB8_28
# BB#27:                                # %cond.true
                                        #   in Loop: Header=BB8_25 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB8_29
.LBB8_28:                               # %cond.false
                                        #   in Loop: Header=BB8_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB8_29
.LBB8_29:                               # %cond.end
                                        #   in Loop: Header=BB8_25 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB8_25
.LBB8_30:                               # %while.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	g_list_concat
	movq	-16(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-16(%rbp), %rdi
	callq	gimp_vectors_thaw
.LBB8_31:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_vectors_add_strokes, .Lfunc_end8-gimp_vectors_add_strokes
	.cfi_endproc

	.globl	gimp_vectors_stroke_add
	.align	16, 0x90
	.type	gimp_vectors_stroke_add,@function
gimp_vectors_stroke_add:                # @gimp_vectors_stroke_add
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_vectors_get_type
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
	movabsq	$.L__func__.gimp_vectors_stroke_add, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_25
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB9_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB9_20
.LBB9_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB9_19
.LBB9_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB9_19:                               # %if.end.31
	jmp	.LBB9_20
.LBB9_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB9_22
# BB#21:                                # %if.then.35
	jmp	.LBB9_23
.LBB9_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_vectors_stroke_add, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_25
.LBB9_23:                               # %if.end.37
	jmp	.LBB9_24
.LBB9_24:                               # %do.end.38
	movq	-8(%rbp), %rdi
	callq	gimp_vectors_freeze
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	592(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rdi
	callq	gimp_vectors_thaw
.LBB9_25:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_vectors_stroke_add, .Lfunc_end9-gimp_vectors_stroke_add
	.cfi_endproc

	.globl	gimp_vectors_stroke_remove
	.align	16, 0x90
	.type	gimp_vectors_stroke_remove,@function
gimp_vectors_stroke_remove:             # @gimp_vectors_stroke_remove
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_vectors_get_type
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
	movabsq	$.L__func__.gimp_vectors_stroke_remove, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_25
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB10_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB10_20
.LBB10_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB10_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB10_19
.LBB10_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB10_19:                              # %if.end.31
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB10_22
# BB#21:                                # %if.then.35
	jmp	.LBB10_23
.LBB10_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_vectors_stroke_remove, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_25
.LBB10_23:                              # %if.end.37
	jmp	.LBB10_24
.LBB10_24:                              # %do.end.38
	movq	-8(%rbp), %rdi
	callq	gimp_vectors_freeze
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	600(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rdi
	callq	gimp_vectors_thaw
.LBB10_25:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_vectors_stroke_remove, .Lfunc_end10-gimp_vectors_stroke_remove
	.cfi_endproc

	.globl	gimp_vectors_get_n_strokes
	.align	16, 0x90
	.type	gimp_vectors_get_n_strokes,@function
gimp_vectors_get_n_strokes:             # @gimp_vectors_get_n_strokes
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
	callq	gimp_vectors_get_type
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
	movabsq	$.L__func__.gimp_vectors_get_n_strokes, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_list_length
	movl	%eax, -4(%rbp)
.LBB11_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_vectors_get_n_strokes, .Lfunc_end11-gimp_vectors_get_n_strokes
	.cfi_endproc

	.globl	gimp_vectors_stroke_get
	.align	16, 0x90
	.type	gimp_vectors_stroke_get,@function
gimp_vectors_stroke_get:                # @gimp_vectors_stroke_get
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
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_vectors_stroke_get, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	608(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB12_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_vectors_stroke_get, .Lfunc_end12-gimp_vectors_stroke_get
	.cfi_endproc

	.globl	gimp_vectors_stroke_get_by_ID
	.align	16, 0x90
	.type	gimp_vectors_stroke_get_by_ID,@function
gimp_vectors_stroke_get_by_ID:          # @gimp_vectors_stroke_get_by_ID
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_vectors_stroke_get_by_ID, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_22
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB13_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB13_21
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_stroke_get_ID
	cmpl	-20(%rbp), %eax
	jne	.LBB13_16
# BB#15:                                # %if.then.14
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_22
.LBB13_16:                              # %if.end.16
                                        #   in Loop: Header=BB13_13 Depth=1
	jmp	.LBB13_17
.LBB13_17:                              # %for.inc
                                        #   in Loop: Header=BB13_13 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB13_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB13_20
.LBB13_19:                              # %cond.false
                                        #   in Loop: Header=BB13_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB13_20
.LBB13_20:                              # %cond.end
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB13_13
.LBB13_21:                              # %for.end
	movq	$0, -8(%rbp)
.LBB13_22:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_vectors_stroke_get_by_ID, .Lfunc_end13-gimp_vectors_stroke_get_by_ID
	.cfi_endproc

	.globl	gimp_vectors_stroke_get_next
	.align	16, 0x90
	.type	gimp_vectors_stroke_get_next,@function
gimp_vectors_stroke_get_next:           # @gimp_vectors_stroke_get_next
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
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_vectors_get_type
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
	movabsq	$.L__func__.gimp_vectors_stroke_get_next, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_13
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	616(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB14_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_vectors_stroke_get_next, .Lfunc_end14-gimp_vectors_stroke_get_next
	.cfi_endproc

	.globl	gimp_vectors_stroke_get_length
	.align	16, 0x90
	.type	gimp_vectors_stroke_get_length,@function
gimp_vectors_stroke_get_length:         # @gimp_vectors_stroke_get_length
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_vectors_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_vectors_stroke_get_length, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB15_25
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB15_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB15_20
.LBB15_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB15_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB15_19
.LBB15_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB15_19:                              # %if.end.31
	jmp	.LBB15_20
.LBB15_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB15_22
# BB#21:                                # %if.then.35
	jmp	.LBB15_23
.LBB15_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_vectors_stroke_get_length, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB15_25
.LBB15_23:                              # %if.end.37
	jmp	.LBB15_24
.LBB15_24:                              # %do.end.38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	624(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movsd	%xmm0, -8(%rbp)
.LBB15_25:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_vectors_stroke_get_length, .Lfunc_end15-gimp_vectors_stroke_get_length
	.cfi_endproc

	.globl	gimp_vectors_anchor_get
	.align	16, 0x90
	.type	gimp_vectors_anchor_get,@function
gimp_vectors_anchor_get:                # @gimp_vectors_anchor_get
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_vectors_get_type
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
	movabsq	$.L__func__.gimp_vectors_anchor_get, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_13
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	632(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB16_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_vectors_anchor_get, .Lfunc_end16-gimp_vectors_anchor_get
	.cfi_endproc

	.globl	gimp_vectors_anchor_delete
	.align	16, 0x90
	.type	gimp_vectors_anchor_delete,@function
gimp_vectors_anchor_delete:             # @gimp_vectors_anchor_delete
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_vectors_get_type
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
	movabsq	$.L__func__.gimp_vectors_anchor_delete, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_18
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
	movabsq	$.L__func__.gimp_vectors_anchor_delete, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_18
.LBB17_16:                              # %if.end.15
	jmp	.LBB17_17
.LBB17_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	640(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB17_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_vectors_anchor_delete, .Lfunc_end17-gimp_vectors_anchor_delete
	.cfi_endproc

	.globl	gimp_vectors_anchor_select
	.align	16, 0x90
	.type	gimp_vectors_anchor_select,@function
gimp_vectors_anchor_select:             # @gimp_vectors_anchor_select
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, -40(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB18_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	jne	.LBB18_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB18_5
.LBB18_4:                               # %cond.false
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB18_5
.LBB18_5:                               # %cond.end
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_stroke_anchor_select
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB18_8
# BB#7:                                 # %cond.true.2
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB18_9
.LBB18_8:                               # %cond.false.3
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB18_9
.LBB18_9:                               # %cond.end.4
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB18_1
.LBB18_10:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_vectors_anchor_select, .Lfunc_end18-gimp_vectors_anchor_select
	.cfi_endproc

	.globl	gimp_vectors_get_length
	.align	16, 0x90
	.type	gimp_vectors_get_length,@function
gimp_vectors_get_length:                # @gimp_vectors_get_length
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
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_vectors_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_vectors_get_length, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB19_13
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	648(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movsd	%xmm0, -8(%rbp)
.LBB19_13:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_vectors_get_length, .Lfunc_end19-gimp_vectors_get_length
	.cfi_endproc

	.globl	gimp_vectors_get_distance
	.align	16, 0x90
	.type	gimp_vectors_get_distance,@function
gimp_vectors_get_distance:              # @gimp_vectors_get_distance
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
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_vectors_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_vectors_get_distance, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB20_13
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	656(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movsd	%xmm0, -8(%rbp)
.LBB20_13:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_vectors_get_distance, .Lfunc_end20-gimp_vectors_get_distance
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_vectors_bounds
	.align	16, 0x90
	.type	gimp_vectors_bounds,@function
gimp_vectors_bounds:                    # @gimp_vectors_bounds
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
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_vectors_bounds, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB21_48
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	jmp	.LBB21_13
.LBB21_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB21_18
# BB#14:                                # %land.lhs.true.13
	cmpq	$0, -32(%rbp)
	je	.LBB21_18
# BB#15:                                # %land.lhs.true.15
	cmpq	$0, -40(%rbp)
	je	.LBB21_18
# BB#16:                                # %land.lhs.true.17
	cmpq	$0, -48(%rbp)
	je	.LBB21_18
# BB#17:                                # %if.then.19
	jmp	.LBB21_19
.LBB21_18:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_vectors_bounds, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB21_48
.LBB21_19:                              # %if.end.21
	jmp	.LBB21_20
.LBB21_20:                              # %do.end.22
	movq	-16(%rbp), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB21_47
# BB#21:                                # %if.then.24
	xorl	%eax, %eax
	movl	%eax, %esi
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rcx
	movl	$1, 68(%rcx)
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 88(%rcx)
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 72(%rcx)
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 88(%rcx)
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 72(%rcx)
	movq	-16(%rbp), %rdi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -80(%rbp)
.LBB21_22:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_28 Depth 2
	cmpq	$0, -80(%rbp)
	je	.LBB21_46
# BB#23:                                # %for.body
                                        #   in Loop: Header=BB21_22 Depth=1
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-92(%rbp), %rsi
	movq	-80(%rbp), %rdi
	callq	gimp_stroke_interpolate
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB21_44
# BB#24:                                # %if.then.34
                                        #   in Loop: Header=BB21_22 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 68(%rax)
	je	.LBB21_27
# BB#25:                                # %land.lhs.true.39
                                        #   in Loop: Header=BB21_22 Depth=1
	movq	-88(%rbp), %rax
	cmpl	$0, 8(%rax)
	jbe	.LBB21_27
# BB#26:                                # %if.then.41
                                        #   in Loop: Header=BB21_22 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-160(%rbp), %rcx
	movq	-88(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 88(%rcx)
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 72(%rcx)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 96(%rcx)
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 80(%rcx)
	movq	-16(%rbp), %rcx
	movl	$0, 68(%rcx)
.LBB21_27:                              # %if.end.45
                                        #   in Loop: Header=BB21_22 Depth=1
	movl	$0, -164(%rbp)
.LBB21_28:                              # %for.cond.46
                                        #   Parent Loop BB21_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-164(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB21_43
# BB#29:                                # %for.body.49
                                        #   in Loop: Header=BB21_28 Depth=2
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-160(%rbp), %rcx
	movslq	-164(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movq	(%rdi), %rdi
	shlq	$6, %rsi
	addq	%rsi, %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-176(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	movq	-16(%rbp), %rcx
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB21_31
# BB#30:                                # %cond.true
                                        #   in Loop: Header=BB21_28 Depth=2
	movq	-16(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB21_32
.LBB21_31:                              # %cond.false
                                        #   in Loop: Header=BB21_28 Depth=2
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
.LBB21_32:                              # %cond.end
                                        #   in Loop: Header=BB21_28 Depth=2
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 72(%rax)
	movq	-16(%rbp), %rax
	movsd	80(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB21_34
# BB#33:                                # %cond.true.61
                                        #   in Loop: Header=BB21_28 Depth=2
	movq	-16(%rbp), %rax
	movsd	80(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jmp	.LBB21_35
.LBB21_34:                              # %cond.false.63
                                        #   in Loop: Header=BB21_28 Depth=2
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
.LBB21_35:                              # %cond.end.65
                                        #   in Loop: Header=BB21_28 Depth=2
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 80(%rax)
	movq	-16(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-160(%rbp), %xmm0
	jbe	.LBB21_37
# BB#36:                                # %cond.true.71
                                        #   in Loop: Header=BB21_28 Depth=2
	movq	-16(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jmp	.LBB21_38
.LBB21_37:                              # %cond.false.73
                                        #   in Loop: Header=BB21_28 Depth=2
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
.LBB21_38:                              # %cond.end.75
                                        #   in Loop: Header=BB21_28 Depth=2
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 88(%rax)
	movq	-16(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-152(%rbp), %xmm0
	jbe	.LBB21_40
# BB#39:                                # %cond.true.81
                                        #   in Loop: Header=BB21_28 Depth=2
	movq	-16(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB21_41
.LBB21_40:                              # %cond.false.83
                                        #   in Loop: Header=BB21_28 Depth=2
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
.LBB21_41:                              # %cond.end.85
                                        #   in Loop: Header=BB21_28 Depth=2
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 96(%rax)
# BB#42:                                # %for.inc
                                        #   in Loop: Header=BB21_28 Depth=2
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB21_28
.LBB21_43:                              # %for.end
                                        #   in Loop: Header=BB21_22 Depth=1
	movl	$1, %esi
	movq	-88(%rbp), %rdi
	callq	g_array_free
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB21_44:                              # %if.end.89
                                        #   in Loop: Header=BB21_22 Depth=1
	jmp	.LBB21_45
.LBB21_45:                              # %for.inc.90
                                        #   in Loop: Header=BB21_22 Depth=1
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -80(%rbp)
	jmp	.LBB21_22
.LBB21_46:                              # %for.end.92
	movq	-16(%rbp), %rax
	movl	$1, 64(%rax)
.LBB21_47:                              # %if.end.94
	movq	-16(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movsd	80(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 68(%rax)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB21_48:                              # %return
	movl	-4(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_vectors_bounds, .Lfunc_end21-gimp_vectors_bounds
	.cfi_endproc

	.globl	gimp_vectors_interpolate
	.align	16, 0x90
	.type	gimp_vectors_interpolate,@function
gimp_vectors_interpolate:               # @gimp_vectors_interpolate
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_vectors_interpolate, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB22_13
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	664(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %edx
	movq	-48(%rbp), %rcx
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB22_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_vectors_interpolate, .Lfunc_end22-gimp_vectors_interpolate
	.cfi_endproc

	.globl	gimp_vectors_get_bezier
	.align	16, 0x90
	.type	gimp_vectors_get_bezier,@function
gimp_vectors_get_bezier:                # @gimp_vectors_get_bezier
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
	callq	gimp_vectors_get_type
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
	movabsq	$.L__func__.gimp_vectors_get_bezier, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB23_15
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB23_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rdi
	callq	gimp_vectors_make_bezier
	movq	-16(%rbp), %rdi
	movq	%rax, 56(%rdi)
.LBB23_14:                              # %if.end.15
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB23_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_vectors_get_bezier, .Lfunc_end23-gimp_vectors_get_bezier
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_make_bezier,@function
gimp_vectors_make_bezier:               # @gimp_vectors_make_bezier
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	672(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_vectors_make_bezier, .Lfunc_end24-gimp_vectors_make_bezier
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_class_init,@function
gimp_vectors_class_init:                # @gimp_vectors_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
.Ltmp78:
	.cfi_offset %rbx, -56
.Ltmp79:
	.cfi_offset %r12, -48
.Ltmp80:
	.cfi_offset %r13, -40
.Ltmp81:
	.cfi_offset %r14, -32
.Ltmp82:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.10, %rdi
	movl	$2, %edx
	movl	$576, %ecx              # imm = 0x240
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -128(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -136(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.11, %rdi
	movl	$1, %edx
	movl	$584, %ecx              # imm = 0x248
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, gimp_vectors_signals
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-144(%rbp), %r10        # 8-byte Reload
	movq	%r8, -152(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -160(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-152(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -164(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.13, %rdi
	movabsq	$gimp_vectors_to_selection, %rsi
	movabsq	$gimp_vectors_stroke, %r8
	movabsq	$gimp_vectors_transform, %r9
	movabsq	$gimp_vectors_rotate, %r10
	movabsq	$gimp_vectors_flip, %r11
	movabsq	$gimp_vectors_resize, %r14
	movabsq	$gimp_vectors_scale, %r15
	movabsq	$gimp_vectors_translate, %r12
	movabsq	$gimp_vectors_convert, %r13
	movabsq	$gimp_vectors_duplicate, %rcx
	movabsq	$gimp_vectors_get_tree, %rdx
	movabsq	$gimp_vectors_is_attached, %rbx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movabsq	$.L.str.12, %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movabsq	$gimp_vectors_get_new_preview, %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movabsq	$gimp_vectors_get_memsize, %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movabsq	$gimp_vectors_finalize, %rcx
	movl	%eax, gimp_vectors_signals+4
	movq	-56(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-64(%rbp), %rax
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 152(%rax)
	movq	-72(%rbp), %rax
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 224(%rax)
	movq	-72(%rbp), %rax
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 160(%rax)
	movq	-80(%rbp), %rax
	movq	%rbx, 320(%rax)
	movq	-80(%rbp), %rax
	movq	%rdx, 336(%rax)
	movq	-80(%rbp), %rax
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 344(%rax)
	movq	-80(%rbp), %rax
	movq	%r13, 352(%rax)
	movq	-80(%rbp), %rax
	movq	%r12, 368(%rax)
	movq	-80(%rbp), %rax
	movq	%r15, 376(%rax)
	movq	-80(%rbp), %rax
	movq	%r14, 384(%rax)
	movq	-80(%rbp), %rax
	movq	%r11, 392(%rax)
	movq	-80(%rbp), %rax
	movq	%r10, 400(%rax)
	movq	-80(%rbp), %rax
	movq	%r9, 408(%rax)
	movq	-80(%rbp), %rax
	movq	%r8, 416(%rax)
	movq	-80(%rbp), %rax
	movq	%rsi, 424(%rax)
	callq	gettext
	xorl	%esi, %esi
	movl	%esi, %edi
	movabsq	$.L.str.14, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 440(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.15, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 448(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.16, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 456(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.17, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 464(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.18, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 472(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.19, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 480(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.20, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 488(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.21, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 496(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.22, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 512(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.23, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 504(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.24, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 520(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.25, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 528(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.26, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 536(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.27, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 544(%rcx)
	callq	g_dpgettext
	movabsq	$.L.str.28, %rdi
	movq	-80(%rbp), %rcx
	movq	%rax, 552(%rcx)
	callq	gettext
	movabsq	$.L.str.29, %rdi
	movq	-80(%rbp), %rcx
	movq	%rax, 560(%rcx)
	callq	gettext
	movabsq	$gimp_vectors_real_make_bezier, %rcx
	movabsq	$gimp_vectors_real_interpolate, %rdx
	movabsq	$gimp_vectors_real_get_distance, %rsi
	movabsq	$gimp_vectors_real_get_length, %rdi
	movabsq	$gimp_vectors_real_anchor_delete, %r9
	movabsq	$gimp_vectors_real_anchor_get, %r10
	movabsq	$gimp_vectors_real_stroke_get_length, %r11
	movabsq	$gimp_vectors_real_stroke_get_next, %rbx
	movabsq	$gimp_vectors_real_stroke_get, %r14
	movabsq	$gimp_vectors_real_stroke_remove, %r15
	movabsq	$gimp_vectors_real_stroke_add, %r12
	movabsq	$gimp_vectors_real_thaw, %r13
	movabsq	$gimp_vectors_real_freeze, %r8
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	-80(%rbp), %rax
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 568(%rax)
	movq	-48(%rbp), %rax
	movq	%r8, 576(%rax)
	movq	-48(%rbp), %rax
	movq	%r13, 584(%rax)
	movq	-48(%rbp), %rax
	movq	%r12, 592(%rax)
	movq	-48(%rbp), %rax
	movq	%r15, 600(%rax)
	movq	-48(%rbp), %rax
	movq	%r14, 608(%rax)
	movq	-48(%rbp), %rax
	movq	%rbx, 616(%rax)
	movq	-48(%rbp), %rax
	movq	%r11, 624(%rax)
	movq	-48(%rbp), %rax
	movq	%r10, 632(%rax)
	movq	-48(%rbp), %rax
	movq	%r9, 640(%rax)
	movq	-48(%rbp), %rax
	movq	%rdi, 648(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, 656(%rax)
	movq	-48(%rbp), %rax
	movq	%rdx, 664(%rax)
	movq	-48(%rbp), %rax
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 672(%rax)
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_vectors_class_init, .Lfunc_end25-gimp_vectors_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_finalize,@function
gimp_vectors_finalize:                  # @gimp_vectors_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB26_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_bezier_desc_free
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
.LBB26_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB26_4
# BB#3:                                 # %if.then.5
	movabsq	$g_object_unref, %rsi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_list_free_full
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB26_4:                               # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_vectors_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_vectors_finalize, .Lfunc_end26-gimp_vectors_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_get_memsize,@function
gimp_vectors_get_memsize:               # @gimp_vectors_get_memsize
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB27_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB27_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	$24, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB27_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB27_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB27_6
.LBB27_5:                               # %cond.false
                                        #   in Loop: Header=BB27_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB27_6
.LBB27_6:                               # %cond.end
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB27_1
.LBB27_7:                               # %for.end
	movq	-40(%rbp), %rax
	movq	gimp_vectors_parent_class, %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_vectors_get_memsize, .Lfunc_end27-gimp_vectors_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_is_attached,@function
gimp_vectors_is_attached:               # @gimp_vectors_is_attached
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB28_2
# BB#1:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB28_7
.LBB28_2:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB28_5
# BB#4:                                 # %if.then.4
	movl	$1, -36(%rbp)
	jmp	.LBB28_6
.LBB28_5:                               # %if.else.5
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB28_6:                               # %if.end
	jmp	.LBB28_7
.LBB28_7:                               # %if.end.7
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB28_9
# BB#8:                                 # %land.rhs
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_vectors
	movq	-8(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB28_9:                               # %land.end
	movb	-41(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_vectors_is_attached, .Lfunc_end28-gimp_vectors_is_attached
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_get_tree,@function
gimp_vectors_get_tree:                  # @gimp_vectors_get_tree
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB29_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_vectors_tree
	movq	%rax, -8(%rbp)
	jmp	.LBB29_3
.LBB29_2:                               # %if.end
	movq	$0, -8(%rbp)
.LBB29_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_vectors_get_tree, .Lfunc_end29-gimp_vectors_get_tree
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_duplicate,@function
gimp_vectors_duplicate:                 # @gimp_vectors_duplicate
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB30_3
# BB#2:                                 # %if.then
	jmp	.LBB30_4
.LBB30_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_vectors_duplicate, %rsi
	movabsq	$.L.str.30, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB30_15
.LBB30_4:                               # %if.end
	jmp	.LBB30_5
.LBB30_5:                               # %do.end
	movq	gimp_vectors_parent_class, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	344(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB30_7
# BB#6:                                 # %if.then.7
	movl	$0, -52(%rbp)
	jmp	.LBB30_12
.LBB30_7:                               # %if.else.8
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_10
# BB#8:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB30_10
# BB#9:                                 # %if.then.11
	movl	$1, -52(%rbp)
	jmp	.LBB30_11
.LBB30_10:                              # %if.else.12
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB30_11:                              # %if.end.14
	jmp	.LBB30_12
.LBB30_12:                              # %if.end.15
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB30_14
# BB#13:                                # %if.then.17
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_vectors_copy_strokes
.LBB30_14:                              # %if.end.24
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB30_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_vectors_duplicate, .Lfunc_end30-gimp_vectors_duplicate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_convert,@function
gimp_vectors_convert:                   # @gimp_vectors_convert
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	gimp_image_get_width
	movq	-16(%rbp), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	-28(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_item_set_size
	movq	gimp_vectors_parent_class, %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	352(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_vectors_convert, .Lfunc_end31-gimp_vectors_convert
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_translate,@function
gimp_vectors_translate:                 # @gimp_vectors_translate
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_vectors_freeze
	cmpl	$0, -20(%rbp)
	je	.LBB32_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.31, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_vectors_mod
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB32_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB32_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB32_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB32_3 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	cvtsi2sdl	-12(%rbp), %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	callq	gimp_stroke_translate
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB32_3 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB32_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB32_3 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB32_8
.LBB32_7:                               # %cond.false
                                        #   in Loop: Header=BB32_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB32_8
.LBB32_8:                               # %cond.end
                                        #   in Loop: Header=BB32_3 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB32_3
.LBB32_9:                               # %for.end
	movq	-32(%rbp), %rdi
	callq	gimp_vectors_thaw
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_vectors_translate, .Lfunc_end32-gimp_vectors_translate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_scale,@function
gimp_vectors_scale:                     # @gimp_vectors_scale
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
	subq	$192, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_vectors_freeze
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB33_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	gimp_image_undo_push_vectors_mod
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB33_2:                               # %if.end
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB33_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB33_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB33_3 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	cvtsi2sdl	-12(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	callq	gimp_item_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvtsi2sdl	-16(%rbp), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	callq	gimp_item_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_stroke_scale
	movq	-72(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	callq	gimp_stroke_translate
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB33_3 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB33_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB33_3 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB33_8
.LBB33_7:                               # %cond.false
                                        #   in Loop: Header=BB33_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB33_8
.LBB33_8:                               # %cond.end
                                        #   in Loop: Header=BB33_3 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB33_3
.LBB33_9:                               # %for.end
	movq	gimp_vectors_parent_class, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	376(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	movq	-56(%rbp), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	xorl	%ecx, %ecx
	movl	-28(%rbp), %r9d
	movq	-40(%rbp), %rsi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %edx        # 4-byte Reload
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	movl	%eax, %edx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %r8d        # 4-byte Reload
	movq	-168(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-152(%rbp), %r10        # 8-byte Reload
	callq	*%r10
	movq	-48(%rbp), %rdi
	callq	gimp_vectors_thaw
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_vectors_scale, .Lfunc_end33-gimp_vectors_scale
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_resize,@function
gimp_vectors_resize:                    # @gimp_vectors_resize
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_vectors_freeze
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB34_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	gimp_image_undo_push_vectors_mod
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB34_2:                               # %if.end
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB34_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB34_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	cvtsi2sdl	-28(%rbp), %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	callq	gimp_stroke_translate
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB34_3 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB34_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB34_8
.LBB34_7:                               # %cond.false
                                        #   in Loop: Header=BB34_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB34_8
.LBB34_8:                               # %cond.end
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB34_3
.LBB34_9:                               # %for.end
	movq	gimp_vectors_parent_class, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	384(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	movq	-48(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	xorl	%edx, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movl	-124(%rbp), %r8d        # 4-byte Reload
	movl	%edx, -128(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%eax, %ecx
	movl	-128(%rbp), %r8d        # 4-byte Reload
	movl	-128(%rbp), %r9d        # 4-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	callq	*%r10
	movq	-40(%rbp), %rdi
	callq	gimp_vectors_thaw
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_vectors_resize, .Lfunc_end34-gimp_vectors_resize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_flip,@function
gimp_vectors_flip:                      # @gimp_vectors_flip
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-128(%rbp), %rdi
	movq	%rax, -48(%rbp)
	callq	gimp_matrix3_identity
	leaq	-128(%rbp), %rdi
	movl	-20(%rbp), %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_transform_matrix_flip
	movq	-48(%rbp), %rdi
	callq	gimp_vectors_freeze
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.32, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-48(%rbp), %rdx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_vectors_mod
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, -56(%rbp)
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB35_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB35_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB35_1 Depth=1
	leaq	-128(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	gimp_stroke_transform
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB35_1 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB35_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB35_6
.LBB35_5:                               # %cond.false
                                        #   in Loop: Header=BB35_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB35_6
.LBB35_6:                               # %cond.end
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB35_1
.LBB35_7:                               # %for.end
	movq	-48(%rbp), %rdi
	callq	gimp_vectors_thaw
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_vectors_flip, .Lfunc_end35-gimp_vectors_flip
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_rotate,@function
gimp_vectors_rotate:                    # @gimp_vectors_rotate
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-136(%rbp), %rdi
	movq	%rax, -56(%rbp)
	callq	gimp_matrix3_identity
	leaq	-136(%rbp), %rdi
	movl	-20(%rbp), %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_transform_matrix_rotate
	movq	-56(%rbp), %rdi
	callq	gimp_vectors_freeze
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.33, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-56(%rbp), %rdx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_vectors_mod
	movq	-56(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, -64(%rbp)
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB36_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB36_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB36_1 Depth=1
	leaq	-136(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	callq	gimp_stroke_transform
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB36_1 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB36_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB36_6
.LBB36_5:                               # %cond.false
                                        #   in Loop: Header=BB36_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB36_6
.LBB36_6:                               # %cond.end
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB36_1
.LBB36_7:                               # %for.end
	movq	-56(%rbp), %rdi
	callq	gimp_vectors_thaw
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_vectors_rotate, .Lfunc_end36-gimp_vectors_rotate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_transform,@function
gimp_vectors_transform:                 # @gimp_vectors_transform
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
	subq	$192, %rsp
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%r10d, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_vectors_freeze
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.34, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-56(%rbp), %rdx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_vectors_mod
	movl	$72, %ecx
	movl	%ecx, %edx
	leaq	-128(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	memcpy
	cmpl	$1, -28(%rbp)
	jne	.LBB37_2
# BB#1:                                 # %if.then
	leaq	-128(%rbp), %rdi
	callq	gimp_matrix3_invert
.LBB37_2:                               # %if.end
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -136(%rbp)
.LBB37_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB37_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB37_3 Depth=1
	leaq	-128(%rbp), %rsi
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	callq	gimp_stroke_transform
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB37_3 Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB37_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB37_3 Depth=1
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB37_8
.LBB37_7:                               # %cond.false
                                        #   in Loop: Header=BB37_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB37_8
.LBB37_8:                               # %cond.end
                                        #   in Loop: Header=BB37_3 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)
	jmp	.LBB37_3
.LBB37_9:                               # %for.end
	movq	-56(%rbp), %rdi
	callq	gimp_vectors_thaw
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_vectors_transform, .Lfunc_end37-gimp_vectors_transform
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_stroke,@function
gimp_vectors_stroke:                    # @gimp_vectors_stroke
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movl	$0, -68(%rbp)
	movq	-64(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB38_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.35, %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB38_8
.LBB38_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_stroke_options_get_method
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	je	.LBB38_3
	jmp	.LBB38_9
.LBB38_9:                               # %if.end
	movl	-128(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB38_4
	jmp	.LBB38_5
.LBB38_3:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movq	-56(%rbp), %r8
	callq	gimp_drawable_stroke_vectors
	movl	%eax, -68(%rbp)
	jmp	.LBB38_7
.LBB38_4:                               # %sw.bb.7
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_paint_info
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	40(%rax), %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_stroke_options_get_paint_options
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_stroke_options_get_emulate_dynamics
	movl	%eax, -100(%rbp)
	movq	-88(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movl	-100(%rbp), %ecx
	movq	-64(%rbp), %r8
	movl	-36(%rbp), %r9d
	movq	-56(%rbp), %r10
	movq	%r10, (%rsp)
	callq	gimp_paint_core_stroke_vectors
	movl	%eax, -68(%rbp)
	movq	-88(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_object_unref
	jmp	.LBB38_7
.LBB38_5:                               # %sw.default
	jmp	.LBB38_6
.LBB38_6:                               # %do.body
	movabsq	$.L.str.1, %rdi
	movl	$8, %esi
	movabsq	$.L.str.36, %rdx
	movabsq	$.L.str.37, %rcx
	movl	$592, %r8d              # imm = 0x250
	movabsq	$.L__func__.gimp_vectors_stroke, %r9
	movb	$0, %al
	callq	g_log
	movl	$0, -4(%rbp)
	jmp	.LBB38_8
.LBB38_7:                               # %sw.epilog
	movl	-68(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB38_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_vectors_stroke, .Lfunc_end38-gimp_vectors_stroke
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_to_selection,@function
gimp_vectors_to_selection:              # @gimp_vectors_to_selection
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_mask
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	504(%rsi), %rsi
	movq	-48(%rbp), %rdx
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r9d
	movl	-20(%rbp), %r10d
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	gimp_channel_select_vectors
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_vectors_to_selection, .Lfunc_end39-gimp_vectors_to_selection
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_real_freeze,@function
gimp_vectors_real_freeze:               # @gimp_vectors_real_freeze
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 56(%rdi)
	je	.LBB40_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_bezier_desc_free
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
.LBB40_2:                               # %if.end
	movq	-8(%rbp), %rax
	movl	$0, 64(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_vectors_real_freeze, .Lfunc_end40-gimp_vectors_real_freeze
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_real_thaw,@function
gimp_vectors_real_thaw:                 # @gimp_vectors_real_thaw
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_invalidate_preview
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_vectors_real_thaw, .Lfunc_end41-gimp_vectors_real_thaw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_real_stroke_add,@function
gimp_vectors_real_stroke_add:           # @gimp_vectors_real_stroke_add
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_append
	movq	-8(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 40(%rax)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	40(%rax), %esi
	callq	gimp_stroke_set_ID
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -24(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_vectors_real_stroke_add, .Lfunc_end42-gimp_vectors_real_stroke_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_real_stroke_remove,@function
gimp_vectors_real_stroke_remove:        # @gimp_vectors_real_stroke_remove
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
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_find
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB43_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	g_list_delete_link
	movq	-8(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB43_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_vectors_real_stroke_remove, .Lfunc_end43-gimp_vectors_real_stroke_remove
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI44_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.text
	.align	16, 0x90
	.type	gimp_vectors_real_stroke_get,@function
gimp_vectors_real_stroke_get:           # @gimp_vectors_real_stroke_get
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
	subq	$80, %rsp
	movsd	.LCPI44_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -40(%rbp)
.LBB44_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB44_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_stroke_anchor_get
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB44_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	subsd	(%rax), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	subsd	8(%rax), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-72(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB44_5
# BB#4:                                 # %if.then.7
                                        #   in Loop: Header=BB44_1 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB44_5:                               # %if.end
                                        #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_6
.LBB44_6:                               # %if.end.11
                                        #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_7
.LBB44_7:                               # %for.inc
                                        #   in Loop: Header=BB44_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB44_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB44_10
.LBB44_9:                               # %cond.false
                                        #   in Loop: Header=BB44_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB44_10
.LBB44_10:                              # %cond.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB44_1
.LBB44_11:                              # %for.end
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_vectors_real_stroke_get, .Lfunc_end44-gimp_vectors_real_stroke_get
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_real_stroke_get_next,@function
gimp_vectors_real_stroke_get_next:      # @gimp_vectors_real_stroke_get_next
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB45_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB45_3
# BB#2:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB45_4
.LBB45_3:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB45_4
.LBB45_4:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB45_14
.LBB45_5:                               # %if.else
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	movq	%rax, -32(%rbp)
# BB#6:                                 # %do.body
	cmpq	$0, -32(%rbp)
	je	.LBB45_8
# BB#7:                                 # %if.then.4
	jmp	.LBB45_9
.LBB45_8:                               # %if.else.5
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_vectors_real_stroke_get_next, %rsi
	movabsq	$.L.str.38, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB45_14
.LBB45_9:                               # %if.end
	jmp	.LBB45_10
.LBB45_10:                              # %do.end
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB45_12
# BB#11:                                # %cond.true.7
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_stroke_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB45_13
.LBB45_12:                              # %cond.false.12
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB45_13
.LBB45_13:                              # %cond.end.13
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB45_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_vectors_real_stroke_get_next, .Lfunc_end45-gimp_vectors_real_stroke_get_next
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_real_stroke_get_length,@function
gimp_vectors_real_stroke_get_length:    # @gimp_vectors_real_stroke_get_length
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
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB46_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB46_8
.LBB46_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB46_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB46_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB46_7
.LBB46_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB46_7:                               # %if.end
	jmp	.LBB46_8
.LBB46_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB46_10
# BB#9:                                 # %if.then.8
	jmp	.LBB46_11
.LBB46_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_vectors_real_stroke_get_length, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB46_25
.LBB46_11:                              # %if.end.10
	jmp	.LBB46_12
.LBB46_12:                              # %do.end
	jmp	.LBB46_13
.LBB46_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB46_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB46_20
.LBB46_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB46_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB46_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB46_19
.LBB46_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB46_19:                              # %if.end.31
	jmp	.LBB46_20
.LBB46_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB46_22
# BB#21:                                # %if.then.35
	jmp	.LBB46_23
.LBB46_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_vectors_real_stroke_get_length, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB46_25
.LBB46_23:                              # %if.end.37
	jmp	.LBB46_24
.LBB46_24:                              # %do.end.38
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_stroke_get_length
	movsd	%xmm0, -8(%rbp)
.LBB46_25:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_vectors_real_stroke_get_length, .Lfunc_end46-gimp_vectors_real_stroke_get_length
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI47_0:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_vectors_real_anchor_get,@function
gimp_vectors_real_anchor_get:           # @gimp_vectors_real_anchor_get
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
	subq	$96, %rsp
	movsd	.LCPI47_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, -48(%rbp)
.LBB47_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB47_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_stroke_anchor_get
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB47_9
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	subsd	(%rax), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	subsd	8(%rax), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-80(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB47_5
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB47_1 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB47_8
.LBB47_5:                               # %if.then.8
                                        #   in Loop: Header=BB47_1 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB47_7
# BB#6:                                 # %if.then.13
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB47_7:                               # %if.end
                                        #   in Loop: Header=BB47_1 Depth=1
	jmp	.LBB47_8
.LBB47_8:                               # %if.end.14
                                        #   in Loop: Header=BB47_1 Depth=1
	jmp	.LBB47_9
.LBB47_9:                               # %if.end.15
                                        #   in Loop: Header=BB47_1 Depth=1
	jmp	.LBB47_10
.LBB47_10:                              # %for.inc
                                        #   in Loop: Header=BB47_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB47_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB47_13
.LBB47_12:                              # %cond.false
                                        #   in Loop: Header=BB47_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB47_13
.LBB47_13:                              # %cond.end
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB47_1
.LBB47_14:                              # %for.end
	movq	-32(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_vectors_real_anchor_get, .Lfunc_end47-gimp_vectors_real_anchor_get
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_real_anchor_delete,@function
gimp_vectors_real_anchor_delete:        # @gimp_vectors_real_anchor_delete
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_vectors_real_anchor_delete, .Lfunc_end48-gimp_vectors_real_anchor_delete
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_real_get_length,@function
gimp_vectors_real_get_length:           # @gimp_vectors_real_get_length
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
	subq	$16, %rsp
	movabsq	$.L.str.39, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr
	xorps	%xmm0, %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gimp_vectors_real_get_length, .Lfunc_end49-gimp_vectors_real_get_length
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_real_get_distance,@function
gimp_vectors_real_get_distance:         # @gimp_vectors_real_get_distance
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
	subq	$16, %rsp
	movabsq	$.L.str.40, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr
	xorps	%xmm0, %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gimp_vectors_real_get_distance, .Lfunc_end50-gimp_vectors_real_get_distance
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_real_interpolate,@function
gimp_vectors_real_interpolate:          # @gimp_vectors_real_interpolate
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
	subq	$48, %rsp
	movabsq	$.L.str.41, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gimp_vectors_real_interpolate, .Lfunc_end51-gimp_vectors_real_interpolate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_real_make_bezier,@function
gimp_vectors_real_make_bezier:          # @gimp_vectors_real_make_bezier
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	$16, %edx
	movq	%rdi, -8(%rbp)
	movq	$0, -32(%rbp)
	movl	%eax, %edi
	movl	%eax, %esi
	callq	g_array_new
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -16(%rbp)
.LBB52_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB52_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB52_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	gimp_stroke_make_bezier
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB52_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB52_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	16(%rcx), %edx
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_bezier_desc_free
.LBB52_4:                               # %if.end
                                        #   in Loop: Header=BB52_1 Depth=1
	jmp	.LBB52_5
.LBB52_5:                               # %for.inc
                                        #   in Loop: Header=BB52_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -16(%rbp)
	jmp	.LBB52_1
.LBB52_6:                               # %for.end
	movq	-24(%rbp), %rax
	cmpl	$0, 8(%rax)
	jbe	.LBB52_8
# BB#7:                                 # %if.then.6
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movq	%rax, %rdi
	callq	gimp_bezier_desc_new
	movq	%rax, -32(%rbp)
.LBB52_8:                               # %if.end.10
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	g_array_free
	movq	-32(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdi, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gimp_vectors_real_make_bezier, .Lfunc_end52-gimp_vectors_real_make_bezier
	.cfi_endproc

	.type	gimp_vectors_get_type.g_define_type_id__volatile,@object # @gimp_vectors_get_type.g_define_type_id__volatile
	.local	gimp_vectors_get_type.g_define_type_id__volatile
	.comm	gimp_vectors_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpVectors"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Vectors"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_vectors_new,@object # @__func__.gimp_vectors_new
.L__func__.gimp_vectors_new:
	.asciz	"gimp_vectors_new"
	.size	.L__func__.gimp_vectors_new, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.2, 22

	.type	.L__func__.gimp_vectors_get_parent,@object # @__func__.gimp_vectors_get_parent
.L__func__.gimp_vectors_get_parent:
	.asciz	"gimp_vectors_get_parent"
	.size	.L__func__.gimp_vectors_get_parent, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_VECTORS (vectors)"
	.size	.L.str.3, 26

	.type	.L__func__.gimp_vectors_freeze,@object # @__func__.gimp_vectors_freeze
.L__func__.gimp_vectors_freeze:
	.asciz	"gimp_vectors_freeze"
	.size	.L__func__.gimp_vectors_freeze, 20

	.type	gimp_vectors_signals,@object # @gimp_vectors_signals
	.local	gimp_vectors_signals
	.comm	gimp_vectors_signals,8,4
	.type	.L__func__.gimp_vectors_thaw,@object # @__func__.gimp_vectors_thaw
.L__func__.gimp_vectors_thaw:
	.asciz	"gimp_vectors_thaw"
	.size	.L__func__.gimp_vectors_thaw, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"vectors->freeze_count > 0"
	.size	.L.str.4, 26

	.type	.L__func__.gimp_vectors_copy_strokes,@object # @__func__.gimp_vectors_copy_strokes
.L__func__.gimp_vectors_copy_strokes:
	.asciz	"gimp_vectors_copy_strokes"
	.size	.L__func__.gimp_vectors_copy_strokes, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_VECTORS (src_vectors)"
	.size	.L.str.5, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_VECTORS (dest_vectors)"
	.size	.L.str.6, 31

	.type	.L__func__.gimp_vectors_add_strokes,@object # @__func__.gimp_vectors_add_strokes
.L__func__.gimp_vectors_add_strokes:
	.asciz	"gimp_vectors_add_strokes"
	.size	.L__func__.gimp_vectors_add_strokes, 25

	.type	.L__func__.gimp_vectors_stroke_add,@object # @__func__.gimp_vectors_stroke_add
.L__func__.gimp_vectors_stroke_add:
	.asciz	"gimp_vectors_stroke_add"
	.size	.L__func__.gimp_vectors_stroke_add, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_STROKE (stroke)"
	.size	.L.str.7, 24

	.type	.L__func__.gimp_vectors_stroke_remove,@object # @__func__.gimp_vectors_stroke_remove
.L__func__.gimp_vectors_stroke_remove:
	.asciz	"gimp_vectors_stroke_remove"
	.size	.L__func__.gimp_vectors_stroke_remove, 27

	.type	.L__func__.gimp_vectors_get_n_strokes,@object # @__func__.gimp_vectors_get_n_strokes
.L__func__.gimp_vectors_get_n_strokes:
	.asciz	"gimp_vectors_get_n_strokes"
	.size	.L__func__.gimp_vectors_get_n_strokes, 27

	.type	.L__func__.gimp_vectors_stroke_get,@object # @__func__.gimp_vectors_stroke_get
.L__func__.gimp_vectors_stroke_get:
	.asciz	"gimp_vectors_stroke_get"
	.size	.L__func__.gimp_vectors_stroke_get, 24

	.type	.L__func__.gimp_vectors_stroke_get_by_ID,@object # @__func__.gimp_vectors_stroke_get_by_ID
.L__func__.gimp_vectors_stroke_get_by_ID:
	.asciz	"gimp_vectors_stroke_get_by_ID"
	.size	.L__func__.gimp_vectors_stroke_get_by_ID, 30

	.type	.L__func__.gimp_vectors_stroke_get_next,@object # @__func__.gimp_vectors_stroke_get_next
.L__func__.gimp_vectors_stroke_get_next:
	.asciz	"gimp_vectors_stroke_get_next"
	.size	.L__func__.gimp_vectors_stroke_get_next, 29

	.type	.L__func__.gimp_vectors_stroke_get_length,@object # @__func__.gimp_vectors_stroke_get_length
.L__func__.gimp_vectors_stroke_get_length:
	.asciz	"gimp_vectors_stroke_get_length"
	.size	.L__func__.gimp_vectors_stroke_get_length, 31

	.type	.L__func__.gimp_vectors_anchor_get,@object # @__func__.gimp_vectors_anchor_get
.L__func__.gimp_vectors_anchor_get:
	.asciz	"gimp_vectors_anchor_get"
	.size	.L__func__.gimp_vectors_anchor_get, 24

	.type	.L__func__.gimp_vectors_anchor_delete,@object # @__func__.gimp_vectors_anchor_delete
.L__func__.gimp_vectors_anchor_delete:
	.asciz	"gimp_vectors_anchor_delete"
	.size	.L__func__.gimp_vectors_anchor_delete, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"anchor != NULL"
	.size	.L.str.8, 15

	.type	.L__func__.gimp_vectors_get_length,@object # @__func__.gimp_vectors_get_length
.L__func__.gimp_vectors_get_length:
	.asciz	"gimp_vectors_get_length"
	.size	.L__func__.gimp_vectors_get_length, 24

	.type	.L__func__.gimp_vectors_get_distance,@object # @__func__.gimp_vectors_get_distance
.L__func__.gimp_vectors_get_distance:
	.asciz	"gimp_vectors_get_distance"
	.size	.L__func__.gimp_vectors_get_distance, 26

	.type	.L__func__.gimp_vectors_bounds,@object # @__func__.gimp_vectors_bounds
.L__func__.gimp_vectors_bounds:
	.asciz	"gimp_vectors_bounds"
	.size	.L__func__.gimp_vectors_bounds, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"x1 != NULL && y1 != NULL && x2 != NULL && y2 != NULL"
	.size	.L.str.9, 53

	.type	.L__func__.gimp_vectors_interpolate,@object # @__func__.gimp_vectors_interpolate
.L__func__.gimp_vectors_interpolate:
	.asciz	"gimp_vectors_interpolate"
	.size	.L__func__.gimp_vectors_interpolate, 25

	.type	.L__func__.gimp_vectors_get_bezier,@object # @__func__.gimp_vectors_get_bezier
.L__func__.gimp_vectors_get_bezier:
	.asciz	"gimp_vectors_get_bezier"
	.size	.L__func__.gimp_vectors_get_bezier, 24

	.type	gimp_vectors_parent_class,@object # @gimp_vectors_parent_class
	.local	gimp_vectors_parent_class
	.comm	gimp_vectors_parent_class,8,8
	.type	GimpVectors_private_offset,@object # @GimpVectors_private_offset
	.local	GimpVectors_private_offset
	.comm	GimpVectors_private_offset,4,4
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"freeze"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"thaw"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-path"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Path"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"undo-type\004Rename Path"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"undo-type\004Move Path"
	.size	.L.str.15, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"undo-type\004Scale Path"
	.size	.L.str.16, 21

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"undo-type\004Resize Path"
	.size	.L.str.17, 22

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"undo-type\004Flip Path"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"undo-type\004Rotate Path"
	.size	.L.str.19, 22

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"undo-type\004Transform Path"
	.size	.L.str.20, 25

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"undo-type\004Stroke Path"
	.size	.L.str.21, 22

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"undo-type\004Path to Selection"
	.size	.L.str.22, 28

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"undo-type\004Reorder Path"
	.size	.L.str.23, 23

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"undo-type\004Raise Path"
	.size	.L.str.24, 21

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"undo-type\004Raise Path to Top"
	.size	.L.str.25, 28

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"undo-type\004Lower Path"
	.size	.L.str.26, 21

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"undo-type\004Lower Path to Bottom"
	.size	.L.str.27, 31

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Path cannot be raised higher."
	.size	.L.str.28, 30

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Path cannot be lowered more."
	.size	.L.str.29, 29

	.type	.L__func__.gimp_vectors_duplicate,@object # @__func__.gimp_vectors_duplicate
.L__func__.gimp_vectors_duplicate:
	.asciz	"gimp_vectors_duplicate"
	.size	.L__func__.gimp_vectors_duplicate, 23

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"g_type_is_a (new_type, GIMP_TYPE_VECTORS)"
	.size	.L.str.30, 42

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Move Path"
	.size	.L.str.31, 10

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Flip Path"
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Rotate Path"
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Transform Path"
	.size	.L.str.34, 15

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Not enough points to stroke"
	.size	.L.str.35, 28

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.36, 45

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gimpvectors.c"
	.size	.L.str.37, 14

	.type	.L__func__.gimp_vectors_stroke,@object # @__func__.gimp_vectors_stroke
.L__func__.gimp_vectors_stroke:
	.asciz	"gimp_vectors_stroke"
	.size	.L__func__.gimp_vectors_stroke, 20

	.type	.L__func__.gimp_vectors_real_stroke_get_next,@object # @__func__.gimp_vectors_real_stroke_get_next
.L__func__.gimp_vectors_real_stroke_get_next:
	.asciz	"gimp_vectors_real_stroke_get_next"
	.size	.L__func__.gimp_vectors_real_stroke_get_next, 34

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"stroke != NULL"
	.size	.L.str.38, 15

	.type	.L__func__.gimp_vectors_real_stroke_get_length,@object # @__func__.gimp_vectors_real_stroke_get_length
.L__func__.gimp_vectors_real_stroke_get_length:
	.asciz	"gimp_vectors_real_stroke_get_length"
	.size	.L__func__.gimp_vectors_real_stroke_get_length, 36

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp_vectors_get_length: default implementation\n"
	.size	.L.str.39, 49

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp_vectors_get_distance: default implementation\n"
	.size	.L.str.40, 51

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp_vectors_interpolate: default implementation\n"
	.size	.L.str.41, 50


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
