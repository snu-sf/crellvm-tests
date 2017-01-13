	.text
	.file	"zmatrix.bc"
	.align	16, 0x90
	.type	zconcat,@function
zconcat:                                # @zconcat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 48
.Ltmp2:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rsi
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rdx
	callq	read_matrix
	testl	%eax, %eax
	js	.LBB0_3
# BB#1:                                 # %if.end
	movq	(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	gs_concat
	testl	%eax, %eax
	js	.LBB0_3
# BB#2:                                 # %if.end.4
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
.LBB0_3:                                # %cleanup
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end0:
	.size	zconcat, .Lfunc_end0-zconcat
	.cfi_endproc

	.align	16, 0x90
	.type	zdtransform,@function
zdtransform:                            # @zdtransform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 96
.Ltmp7:
	.cfi_offset %rbx, -32
.Ltmp8:
	.cfi_offset %r14, -24
.Ltmp9:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	leal	-4(%rax), %ecx
	cmpl	$3, %ecx
	jae	.LBB1_1
# BB#4:                                 # %sw.bb.7.i
	movq	8(%r14), %rdi
	leaq	8(%rsp), %rdx
	movq	%rbx, %rsi
	callq	read_matrix
	testl	%eax, %eax
	js	.LBB1_8
# BB#5:                                 # %lor.lhs.false.i
	leaq	-16(%rbx), %r15
	leaq	48(%rsp), %rdx
	movl	$2, %esi
	movq	%r15, %rdi
	callq	num_params
	testl	%eax, %eax
	js	.LBB1_8
# BB#6:                                 # %lor.lhs.false.12.i
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	56(%rsp), %xmm1         # xmm1 = mem[0],zero
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %rsi
	callq	gs_distance_transform
	testl	%eax, %eax
	js	.LBB1_8
# BB#7:                                 # %cleanup.thread.i
	addq	$-16, 624(%r14)
	movq	%r15, %rbx
	jmp	.LBB1_17
.LBB1_8:                                # %cleanup.i
	movq	632(%r14), %rcx
	addq	$32, %rcx
	cmpq	%rcx, %rbx
	movl	$-17, %ecx
	cmovael	%eax, %ecx
	jmp	.LBB1_18
.LBB1_1:                                # %entry
	cmpl	$11, %eax
	jne	.LBB1_2
# BB#9:                                 # %sw.bb.3.i
	cvtsi2sdq	8(%rbx), %xmm1
	jmp	.LBB1_10
.LBB1_2:                                # %entry
	cmpl	$16, %eax
	jne	.LBB1_14
# BB#3:                                 # %sw.bb.i
	movss	8(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
.LBB1_10:                               # %sw.epilog.i
	movsd	%xmm1, 56(%rsp)
	movzbl	-15(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB1_11
# BB#15:                                # %sw.bb.42.i
	xorps	%xmm0, %xmm0
	cvtsi2sdq	-8(%rbx), %xmm0
	jmp	.LBB1_16
.LBB1_11:                               # %sw.epilog.i
	cmpl	$16, %eax
	jne	.LBB1_13
# BB#12:                                # %sw.bb.36.i
	movss	-8(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.LBB1_16:                               # %sw.epilog.51.i
	movsd	%xmm0, 48(%rsp)
	movq	(%r14), %rdi
	leaq	32(%rsp), %rsi
	callq	gs_dtransform
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB1_18
.LBB1_17:                               # %out.i
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbx)
	movw	$4096, -16(%rbx)        # imm = 0x1000
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rbx)
	movw	$4096, (%rbx)           # imm = 0x1000
	xorl	%ecx, %ecx
	jmp	.LBB1_18
.LBB1_13:                               # %sw.default.48.i
	addq	$-16, %rbx
.LBB1_14:                               # %sw.default.i
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ecx
.LBB1_18:                               # %common_transform.exit
	movl	%ecx, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	zdtransform, .Lfunc_end1-zdtransform
	.cfi_endproc

	.align	16, 0x90
	.type	zconcatmatrix,@function
zconcatmatrix:                          # @zconcatmatrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp12:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
.Ltmp14:
	.cfi_def_cfa_offset 112
.Ltmp15:
	.cfi_offset %rbx, -40
.Ltmp16:
	.cfi_offset %r12, -32
.Ltmp17:
	.cfi_offset %r14, -24
.Ltmp18:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	8(%rbx), %rdi
	leaq	-32(%r14), %r15
	leaq	48(%rsp), %rdx
	movq	%r15, %rsi
	callq	read_matrix
	testl	%eax, %eax
	js	.LBB2_5
# BB#1:                                 # %lor.lhs.false
	leaq	8(%rbx), %r12
	movq	(%r12), %rdi
	leaq	-16(%r14), %rsi
	leaq	24(%rsp), %rdx
	callq	read_matrix
	testl	%eax, %eax
	js	.LBB2_5
# BB#2:                                 # %lor.lhs.false.6
	leaq	48(%rsp), %rdi
	leaq	24(%rsp), %rsi
	leaq	(%rsp), %rdx
	callq	gs_matrix_multiply
	testl	%eax, %eax
	js	.LBB2_5
# BB#3:                                 # %lor.lhs.false.9
	leaq	(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	write_matrix_in
	testl	%eax, %eax
	js	.LBB2_5
# BB#4:                                 # %if.end
	movups	(%r14), %xmm0
	movups	%xmm0, (%r15)
	addq	$-32, 624(%rbx)
.LBB2_5:                                # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	zconcatmatrix, .Lfunc_end2-zconcatmatrix
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentmatrix,@function
zcurrentmatrix:                         # @zcurrentmatrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 48
.Ltmp22:
	.cfi_offset %rbx, -24
.Ltmp23:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	gs_currentmatrix
	testl	%eax, %eax
	js	.LBB3_5
# BB#1:                                 # %do.body
	leaq	96(%r14), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB3_3
# BB#2:                                 # %if.then.4
	movl	$6, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB3_5
.LBB3_3:                                # %if.else
	movq	%rax, 624(%rbx)
	addq	$16, %r14
	leaq	(%rsp), %rsi
	movl	$6, %edx
	movq	%r14, %rdi
	callq	make_floats
	testl	%eax, %eax
	jns	.LBB3_5
# BB#4:                                 # %if.then.14
	addq	$-96, 624(%rbx)
.LBB3_5:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	zcurrentmatrix, .Lfunc_end3-zcurrentmatrix
	.cfi_endproc

	.align	16, 0x90
	.type	zdefaultmatrix,@function
zdefaultmatrix:                         # @zdefaultmatrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp27:
	.cfi_def_cfa_offset 64
.Ltmp28:
	.cfi_offset %rbx, -32
.Ltmp29:
	.cfi_offset %r14, -24
.Ltmp30:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	(%rbx), %rdi
	leaq	8(%rsp), %r15
	movq	%r15, %rsi
	callq	gs_defaultmatrix
	leaq	8(%rbx), %rdx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	write_matrix_in
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	zdefaultmatrix, .Lfunc_end4-zdefaultmatrix
	.cfi_endproc

	.align	16, 0x90
	.type	zidtransform,@function
zidtransform:                           # @zidtransform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 96
.Ltmp35:
	.cfi_offset %rbx, -32
.Ltmp36:
	.cfi_offset %r14, -24
.Ltmp37:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	leal	-4(%rax), %ecx
	cmpl	$3, %ecx
	jae	.LBB5_1
# BB#4:                                 # %sw.bb.7.i
	movq	8(%r14), %rdi
	leaq	8(%rsp), %rdx
	movq	%rbx, %rsi
	callq	read_matrix
	testl	%eax, %eax
	js	.LBB5_8
# BB#5:                                 # %lor.lhs.false.i
	leaq	-16(%rbx), %r15
	leaq	48(%rsp), %rdx
	movl	$2, %esi
	movq	%r15, %rdi
	callq	num_params
	testl	%eax, %eax
	js	.LBB5_8
# BB#6:                                 # %lor.lhs.false.12.i
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	56(%rsp), %xmm1         # xmm1 = mem[0],zero
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %rsi
	callq	gs_distance_transform_inverse
	testl	%eax, %eax
	js	.LBB5_8
# BB#7:                                 # %cleanup.thread.i
	addq	$-16, 624(%r14)
	movq	%r15, %rbx
	jmp	.LBB5_17
.LBB5_8:                                # %cleanup.i
	movq	632(%r14), %rcx
	addq	$32, %rcx
	cmpq	%rcx, %rbx
	movl	$-17, %ecx
	cmovael	%eax, %ecx
	jmp	.LBB5_18
.LBB5_1:                                # %entry
	cmpl	$11, %eax
	jne	.LBB5_2
# BB#9:                                 # %sw.bb.3.i
	cvtsi2sdq	8(%rbx), %xmm1
	jmp	.LBB5_10
.LBB5_2:                                # %entry
	cmpl	$16, %eax
	jne	.LBB5_14
# BB#3:                                 # %sw.bb.i
	movss	8(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
.LBB5_10:                               # %sw.epilog.i
	movsd	%xmm1, 56(%rsp)
	movzbl	-15(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB5_11
# BB#15:                                # %sw.bb.42.i
	xorps	%xmm0, %xmm0
	cvtsi2sdq	-8(%rbx), %xmm0
	jmp	.LBB5_16
.LBB5_11:                               # %sw.epilog.i
	cmpl	$16, %eax
	jne	.LBB5_13
# BB#12:                                # %sw.bb.36.i
	movss	-8(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.LBB5_16:                               # %sw.epilog.51.i
	movsd	%xmm0, 48(%rsp)
	movq	(%r14), %rdi
	leaq	32(%rsp), %rsi
	callq	gs_idtransform
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB5_18
.LBB5_17:                               # %out.i
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbx)
	movw	$4096, -16(%rbx)        # imm = 0x1000
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rbx)
	movw	$4096, (%rbx)           # imm = 0x1000
	xorl	%ecx, %ecx
	jmp	.LBB5_18
.LBB5_13:                               # %sw.default.48.i
	addq	$-16, %rbx
.LBB5_14:                               # %sw.default.i
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ecx
.LBB5_18:                               # %common_transform.exit
	movl	%ecx, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	zidtransform, .Lfunc_end5-zidtransform
	.cfi_endproc

	.align	16, 0x90
	.type	zinitmatrix,@function
zinitmatrix:                            # @zinitmatrix
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_initmatrix           # TAILCALL
.Lfunc_end6:
	.size	zinitmatrix, .Lfunc_end6-zinitmatrix
	.cfi_endproc

	.align	16, 0x90
	.type	zinvertmatrix,@function
zinvertmatrix:                          # @zinvertmatrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp41:
	.cfi_def_cfa_offset 64
.Ltmp42:
	.cfi_offset %rbx, -32
.Ltmp43:
	.cfi_offset %r14, -24
.Ltmp44:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	8(%rbx), %rdi
	leaq	-16(%r14), %r15
	leaq	8(%rsp), %rdx
	movq	%r15, %rsi
	callq	read_matrix
	testl	%eax, %eax
	js	.LBB7_4
# BB#1:                                 # %lor.lhs.false
	leaq	8(%rsp), %rdi
	movq	%rdi, %rsi
	callq	gs_matrix_invert
	testl	%eax, %eax
	js	.LBB7_4
# BB#2:                                 # %lor.lhs.false.3
	leaq	8(%rbx), %rdx
	leaq	8(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	write_matrix_in
	testl	%eax, %eax
	js	.LBB7_4
# BB#3:                                 # %if.end
	movups	(%r14), %xmm0
	movups	%xmm0, (%r15)
	addq	$-16, 624(%rbx)
.LBB7_4:                                # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	zinvertmatrix, .Lfunc_end7-zinvertmatrix
	.cfi_endproc

	.align	16, 0x90
	.type	zitransform,@function
zitransform:                            # @zitransform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
.Ltmp48:
	.cfi_def_cfa_offset 96
.Ltmp49:
	.cfi_offset %rbx, -32
.Ltmp50:
	.cfi_offset %r14, -24
.Ltmp51:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	leal	-4(%rax), %ecx
	cmpl	$3, %ecx
	jae	.LBB8_1
# BB#4:                                 # %sw.bb.7.i
	movq	8(%r14), %rdi
	leaq	8(%rsp), %rdx
	movq	%rbx, %rsi
	callq	read_matrix
	testl	%eax, %eax
	js	.LBB8_8
# BB#5:                                 # %lor.lhs.false.i
	leaq	-16(%rbx), %r15
	leaq	48(%rsp), %rdx
	movl	$2, %esi
	movq	%r15, %rdi
	callq	num_params
	testl	%eax, %eax
	js	.LBB8_8
# BB#6:                                 # %lor.lhs.false.12.i
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	56(%rsp), %xmm1         # xmm1 = mem[0],zero
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %rsi
	callq	gs_point_transform_inverse
	testl	%eax, %eax
	js	.LBB8_8
# BB#7:                                 # %cleanup.thread.i
	addq	$-16, 624(%r14)
	movq	%r15, %rbx
	jmp	.LBB8_17
.LBB8_8:                                # %cleanup.i
	movq	632(%r14), %rcx
	addq	$32, %rcx
	cmpq	%rcx, %rbx
	movl	$-17, %ecx
	cmovael	%eax, %ecx
	jmp	.LBB8_18
.LBB8_1:                                # %entry
	cmpl	$11, %eax
	jne	.LBB8_2
# BB#9:                                 # %sw.bb.3.i
	cvtsi2sdq	8(%rbx), %xmm1
	jmp	.LBB8_10
.LBB8_2:                                # %entry
	cmpl	$16, %eax
	jne	.LBB8_14
# BB#3:                                 # %sw.bb.i
	movss	8(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
.LBB8_10:                               # %sw.epilog.i
	movsd	%xmm1, 56(%rsp)
	movzbl	-15(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB8_11
# BB#15:                                # %sw.bb.42.i
	xorps	%xmm0, %xmm0
	cvtsi2sdq	-8(%rbx), %xmm0
	jmp	.LBB8_16
.LBB8_11:                               # %sw.epilog.i
	cmpl	$16, %eax
	jne	.LBB8_13
# BB#12:                                # %sw.bb.36.i
	movss	-8(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.LBB8_16:                               # %sw.epilog.51.i
	movsd	%xmm0, 48(%rsp)
	movq	(%r14), %rdi
	leaq	32(%rsp), %rsi
	callq	gs_itransform
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB8_18
.LBB8_17:                               # %out.i
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbx)
	movw	$4096, -16(%rbx)        # imm = 0x1000
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rbx)
	movw	$4096, (%rbx)           # imm = 0x1000
	xorl	%ecx, %ecx
	jmp	.LBB8_18
.LBB8_13:                               # %sw.default.48.i
	addq	$-16, %rbx
.LBB8_14:                               # %sw.default.i
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ecx
.LBB8_18:                               # %common_transform.exit
	movl	%ecx, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	zitransform, .Lfunc_end8-zitransform
	.cfi_endproc

	.align	16, 0x90
	.type	zrotate,@function
zrotate:                                # @zrotate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 64
.Ltmp56:
	.cfi_offset %rbx, -32
.Ltmp57:
	.cfi_offset %r14, -24
.Ltmp58:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	leaq	24(%rsp), %rsi
	movq	%r14, %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB9_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rdi
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	gs_rotate
	testl	%eax, %eax
	jns	.LBB9_9
	jmp	.LBB9_10
.LBB9_2:                                # %if.else
	movl	$-17, %ecx
	cmpq	632(%rbx), %r14
	jb	.LBB9_7
# BB#3:                                 # %if.end.8
	leaq	-16(%r14), %r15
	leaq	24(%rsp), %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	callq	num_params
	testl	%eax, %eax
	js	.LBB9_6
# BB#4:                                 # %lor.lhs.false
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	leaq	(%rsp), %rdi
	callq	gs_make_rotation
	testl	%eax, %eax
	js	.LBB9_6
# BB#5:                                 # %lor.lhs.false.14
	leaq	8(%rbx), %rdx
	leaq	(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	write_matrix_in
	testl	%eax, %eax
	js	.LBB9_6
# BB#8:                                 # %cleanup
	movupd	(%r14), %xmm0
	movupd	%xmm0, (%r15)
.LBB9_9:                                # %if.end.26
	addq	$-16, 624(%rbx)
	jmp	.LBB9_10
.LBB9_6:                                # %if.then.17
	movq	632(%rbx), %rcx
	addq	$16, %rcx
	cmpq	%rcx, %r14
	movl	$-17, %ecx
	cmovael	%eax, %ecx
.LBB9_7:                                # %cleanup.thread
	movl	%ecx, %eax
.LBB9_10:                               # %cleanup.31
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	zrotate, .Lfunc_end9-zrotate
	.cfi_endproc

	.align	16, 0x90
	.type	zscale,@function
zscale:                                 # @zscale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp61:
	.cfi_def_cfa_offset 80
.Ltmp62:
	.cfi_offset %rbx, -24
.Ltmp63:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	leaq	32(%rsp), %rdx
	movl	$2, %esi
	movq	%r14, %rdi
	callq	num_params
	testl	%eax, %eax
	js	.LBB10_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rdi
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	40(%rsp), %xmm1         # xmm1 = mem[0],zero
	callq	gs_scale
	testl	%eax, %eax
	jns	.LBB10_9
	jmp	.LBB10_10
.LBB10_2:                               # %if.else
	movq	632(%rbx), %rax
	addq	$16, %rax
	movl	$-17, %ecx
	cmpq	%rax, %r14
	jb	.LBB10_7
# BB#3:                                 # %if.end.9
	leaq	-16(%r14), %rdi
	leaq	32(%rsp), %rdx
	movl	$2, %esi
	callq	num_params
	testl	%eax, %eax
	js	.LBB10_6
# BB#4:                                 # %lor.lhs.false
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	40(%rsp), %xmm1         # xmm1 = mem[0],zero
	leaq	8(%rsp), %rdi
	callq	gs_make_scaling
	testl	%eax, %eax
	js	.LBB10_6
# BB#5:                                 # %lor.lhs.false.18
	leaq	8(%rbx), %rdx
	leaq	8(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	write_matrix_in
	testl	%eax, %eax
	js	.LBB10_6
# BB#8:                                 # %cleanup
	movupd	(%r14), %xmm0
	movupd	%xmm0, -32(%r14)
.LBB10_9:                               # %if.end.31
	addq	$-32, 624(%rbx)
	jmp	.LBB10_10
.LBB10_6:                               # %if.then.21
	movq	632(%rbx), %rcx
	addq	$32, %rcx
	cmpq	%rcx, %r14
	movl	$-17, %ecx
	cmovael	%eax, %ecx
.LBB10_7:                               # %cleanup.thread
	movl	%ecx, %eax
.LBB10_10:                              # %cleanup.36
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end10:
	.size	zscale, .Lfunc_end10-zscale
	.cfi_endproc

	.align	16, 0x90
	.type	zsetmatrix,@function
zsetmatrix:                             # @zsetmatrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp65:
	.cfi_def_cfa_offset 48
.Ltmp66:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	8(%rsp), %rdx
	movl	$6, %esi
	callq	float_params
	testl	%eax, %eax
	js	.LBB11_3
# BB#1:                                 # %if.end
	movq	(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	gs_setmatrix
	testl	%eax, %eax
	js	.LBB11_3
# BB#2:                                 # %if.end.4
	addq	$-96, 624(%rbx)
	xorl	%eax, %eax
.LBB11_3:                               # %cleanup
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end11:
	.size	zsetmatrix, .Lfunc_end11-zsetmatrix
	.cfi_endproc

	.align	16, 0x90
	.type	zsetdefaultmatrix,@function
zsetdefaultmatrix:                      # @zsetdefaultmatrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp68:
	.cfi_def_cfa_offset 48
.Ltmp69:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$14, %eax
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rdi
	xorl	%esi, %esi
	jmp	.LBB12_4
.LBB12_2:                               # %if.else
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rdx
	callq	read_matrix
	testl	%eax, %eax
	js	.LBB12_6
# BB#3:                                 # %cleanup.thread
	movq	(%rbx), %rdi
	leaq	8(%rsp), %rsi
.LBB12_4:                               # %if.end.8
	callq	gs_setdefaultmatrix
	testl	%eax, %eax
	js	.LBB12_6
# BB#5:                                 # %if.end.12
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
.LBB12_6:                               # %cleanup.16
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end12:
	.size	zsetdefaultmatrix, .Lfunc_end12-zsetdefaultmatrix
	.cfi_endproc

	.align	16, 0x90
	.type	ztransform,@function
ztransform:                             # @ztransform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
.Ltmp73:
	.cfi_def_cfa_offset 96
.Ltmp74:
	.cfi_offset %rbx, -32
.Ltmp75:
	.cfi_offset %r14, -24
.Ltmp76:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	leal	-4(%rax), %ecx
	cmpl	$3, %ecx
	jae	.LBB13_1
# BB#4:                                 # %sw.bb.7.i
	movq	8(%r14), %rdi
	leaq	8(%rsp), %rdx
	movq	%rbx, %rsi
	callq	read_matrix
	testl	%eax, %eax
	js	.LBB13_8
# BB#5:                                 # %lor.lhs.false.i
	leaq	-16(%rbx), %r15
	leaq	48(%rsp), %rdx
	movl	$2, %esi
	movq	%r15, %rdi
	callq	num_params
	testl	%eax, %eax
	js	.LBB13_8
# BB#6:                                 # %lor.lhs.false.12.i
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	56(%rsp), %xmm1         # xmm1 = mem[0],zero
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %rsi
	callq	gs_point_transform
	testl	%eax, %eax
	js	.LBB13_8
# BB#7:                                 # %cleanup.thread.i
	addq	$-16, 624(%r14)
	movq	%r15, %rbx
	jmp	.LBB13_17
.LBB13_8:                               # %cleanup.i
	movq	632(%r14), %rcx
	addq	$32, %rcx
	cmpq	%rcx, %rbx
	movl	$-17, %ecx
	cmovael	%eax, %ecx
	jmp	.LBB13_18
.LBB13_1:                               # %entry
	cmpl	$11, %eax
	jne	.LBB13_2
# BB#9:                                 # %sw.bb.3.i
	cvtsi2sdq	8(%rbx), %xmm1
	jmp	.LBB13_10
.LBB13_2:                               # %entry
	cmpl	$16, %eax
	jne	.LBB13_14
# BB#3:                                 # %sw.bb.i
	movss	8(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
.LBB13_10:                              # %sw.epilog.i
	movsd	%xmm1, 56(%rsp)
	movzbl	-15(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB13_11
# BB#15:                                # %sw.bb.42.i
	xorps	%xmm0, %xmm0
	cvtsi2sdq	-8(%rbx), %xmm0
	jmp	.LBB13_16
.LBB13_11:                              # %sw.epilog.i
	cmpl	$16, %eax
	jne	.LBB13_13
# BB#12:                                # %sw.bb.36.i
	movss	-8(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.LBB13_16:                              # %sw.epilog.51.i
	movsd	%xmm0, 48(%rsp)
	movq	(%r14), %rdi
	leaq	32(%rsp), %rsi
	callq	gs_transform
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB13_18
.LBB13_17:                              # %out.i
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbx)
	movw	$4096, -16(%rbx)        # imm = 0x1000
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rbx)
	movw	$4096, (%rbx)           # imm = 0x1000
	xorl	%ecx, %ecx
	jmp	.LBB13_18
.LBB13_13:                              # %sw.default.48.i
	addq	$-16, %rbx
.LBB13_14:                              # %sw.default.i
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ecx
.LBB13_18:                              # %common_transform.exit
	movl	%ecx, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end13:
	.size	ztransform, .Lfunc_end13-ztransform
	.cfi_endproc

	.align	16, 0x90
	.type	ztranslate,@function
ztranslate:                             # @ztranslate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp79:
	.cfi_def_cfa_offset 80
.Ltmp80:
	.cfi_offset %rbx, -24
.Ltmp81:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	leaq	32(%rsp), %rdx
	movl	$2, %esi
	movq	%r14, %rdi
	callq	num_params
	testl	%eax, %eax
	js	.LBB14_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rdi
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	40(%rsp), %xmm1         # xmm1 = mem[0],zero
	callq	gs_translate
	testl	%eax, %eax
	jns	.LBB14_9
	jmp	.LBB14_10
.LBB14_2:                               # %if.else
	movq	632(%rbx), %rax
	addq	$16, %rax
	movl	$-17, %ecx
	cmpq	%rax, %r14
	jb	.LBB14_7
# BB#3:                                 # %if.end.9
	leaq	-16(%r14), %rdi
	leaq	32(%rsp), %rdx
	movl	$2, %esi
	callq	num_params
	testl	%eax, %eax
	js	.LBB14_6
# BB#4:                                 # %lor.lhs.false
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	40(%rsp), %xmm1         # xmm1 = mem[0],zero
	leaq	8(%rsp), %rdi
	callq	gs_make_translation
	testl	%eax, %eax
	js	.LBB14_6
# BB#5:                                 # %lor.lhs.false.18
	leaq	8(%rbx), %rdx
	leaq	8(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	write_matrix_in
	testl	%eax, %eax
	js	.LBB14_6
# BB#8:                                 # %cleanup
	movupd	(%r14), %xmm0
	movupd	%xmm0, -32(%r14)
.LBB14_9:                               # %if.end.31
	addq	$-32, 624(%rbx)
	jmp	.LBB14_10
.LBB14_6:                               # %if.then.21
	movq	632(%rbx), %rcx
	addq	$32, %rcx
	cmpq	%rcx, %r14
	movl	$-17, %ecx
	cmovael	%eax, %ecx
.LBB14_7:                               # %cleanup.thread
	movl	%ecx, %eax
.LBB14_10:                              # %cleanup.36
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end14:
	.size	ztranslate, .Lfunc_end14-ztranslate
	.cfi_endproc

	.align	16, 0x90
	.type	zbbox_transform,@function
zbbox_transform:                        # @zbbox_transform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp82:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp83:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp84:
	.cfi_def_cfa_offset 32
	subq	$112, %rsp
.Ltmp85:
	.cfi_def_cfa_offset 144
.Ltmp86:
	.cfi_offset %rbx, -32
.Ltmp87:
	.cfi_offset %r14, -24
.Ltmp88:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movq	8(%r14), %rdi
	leaq	88(%rsp), %rdx
	movq	%rbx, %rsi
	callq	read_matrix
	testl	%eax, %eax
	js	.LBB15_29
# BB#1:                                 # %if.end
	leaq	-16(%rbx), %rsi
	movzwl	-16(%rbx), %ecx
	movl	%ecx, %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB15_2
# BB#3:                                 # %do.body
	movl	$-7, %eax
	testb	$32, %cl
	je	.LBB15_29
# BB#4:                                 # %do.end
	movl	$-15, %eax
	cmpl	$4, -12(%rbx)
	jne	.LBB15_29
# BB#5:                                 # %if.end.18
	movq	8(%r14), %rdi
	leaq	64(%rsp), %rcx
	movl	$4, %edx
	callq	process_float_array
	movl	%eax, %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	js	.LBB15_29
# BB#6:                                 # %if.end.26
	movss	64(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	68(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	leaq	88(%rsp), %r15
	leaq	48(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform
	movss	64(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	76(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform
	movss	68(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	72(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	leaq	16(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform
	movss	72(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	76(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	leaq	(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform
	movsd	48(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_7
# BB#8:                                 # %if.then.50
	movsd	%xmm0, 48(%rsp)
	movsd	%xmm1, 32(%rsp)
	movapd	%xmm1, %xmm2
	jmp	.LBB15_9
.LBB15_2:                               # %if.then.3
	movq	%rsi, %rdi
	callq	check_type_failed
.LBB15_29:                              # %cleanup
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB15_7:
	movapd	%xmm0, %xmm2
	movapd	%xmm1, %xmm0
.LBB15_9:                               # %if.end.55
	movsd	16(%rsp), %xmm4         # xmm4 = mem[0],zero
	movsd	(%rsp), %xmm3           # xmm3 = mem[0],zero
	ucomisd	%xmm3, %xmm4
	jbe	.LBB15_10
# BB#11:                                # %if.then.60
	movsd	%xmm3, 16(%rsp)
	movsd	%xmm4, (%rsp)
	movapd	%xmm4, %xmm1
	jmp	.LBB15_12
.LBB15_10:
	movapd	%xmm3, %xmm1
	movapd	%xmm4, %xmm3
.LBB15_12:                              # %if.end.65
	ucomisd	%xmm3, %xmm0
	jbe	.LBB15_14
# BB#13:                                # %if.then.70
	movsd	%xmm3, 48(%rsp)
	movapd	%xmm3, %xmm0
.LBB15_14:                              # %if.end.73
	ucomisd	%xmm1, %xmm2
	jbe	.LBB15_16
# BB#15:                                # %if.then.78
	movsd	%xmm2, (%rsp)
	movapd	%xmm2, %xmm1
.LBB15_16:                              # %if.end.81
	movsd	56(%rsp), %xmm4         # xmm4 = mem[0],zero
	movsd	40(%rsp), %xmm2         # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm4
	jbe	.LBB15_17
# BB#18:                                # %if.then.85
	movsd	%xmm2, 56(%rsp)
	movsd	%xmm4, 40(%rsp)
	movapd	%xmm4, %xmm3
	jmp	.LBB15_19
.LBB15_17:
	movapd	%xmm2, %xmm3
	movapd	%xmm4, %xmm2
.LBB15_19:                              # %if.end.90
	movsd	24(%rsp), %xmm6         # xmm6 = mem[0],zero
	movsd	8(%rsp), %xmm5          # xmm5 = mem[0],zero
	ucomisd	%xmm5, %xmm6
	jbe	.LBB15_20
# BB#21:                                # %if.then.95
	movsd	%xmm5, 24(%rsp)
	movsd	%xmm6, 8(%rsp)
	movapd	%xmm6, %xmm4
	jmp	.LBB15_22
.LBB15_20:
	movapd	%xmm5, %xmm4
	movapd	%xmm6, %xmm5
.LBB15_22:                              # %if.end.100
	ucomisd	%xmm5, %xmm2
	jbe	.LBB15_24
# BB#23:                                # %if.then.105
	movsd	%xmm5, 56(%rsp)
	movapd	%xmm5, %xmm2
.LBB15_24:                              # %if.end.108
	ucomisd	%xmm4, %xmm3
	jbe	.LBB15_26
# BB#25:                                # %if.then.113
	movsd	%xmm3, 8(%rsp)
	movapd	%xmm3, %xmm4
.LBB15_26:                              # %do.body.117
	leaq	32(%rbx), %rax
	cmpq	640(%r14), %rax
	jbe	.LBB15_28
# BB#27:                                # %if.then.123
	movl	$2, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB15_29
.LBB15_28:                              # %if.else
	movq	%rax, 624(%r14)
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbx)
	movw	$4096, -16(%rbx)        # imm = 0x1000
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 8(%rbx)
	movw	$4096, (%rbx)           # imm = 0x1000
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 24(%rbx)
	movw	$4096, 16(%rbx)         # imm = 0x1000
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm4, %xmm0
	movss	%xmm0, 40(%rbx)
	movw	$4096, 32(%rbx)         # imm = 0x1000
	xorl	%eax, %eax
	jmp	.LBB15_29
.Lfunc_end15:
	.size	zbbox_transform, .Lfunc_end15-zbbox_transform
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1concat"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"2dtransform"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"3concatmatrix"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"0.currentmatrix"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1defaultmatrix"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"2idtransform"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"0initmatrix"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"2invertmatrix"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"2itransform"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"1rotate"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"2scale"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"6.setmatrix"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"1.setdefaultmatrix"
	.size	.L.str.12, 19

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"2transform"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"2translate"
	.size	.L.str.14, 11

	.type	zmatrix_op_defs,@object # @zmatrix_op_defs
	.section	.rodata,"a",@progbits
	.globl	zmatrix_op_defs
	.align	16
zmatrix_op_defs:
	.quad	.L.str
	.quad	zconcat
	.quad	.L.str.1
	.quad	zdtransform
	.quad	.L.str.2
	.quad	zconcatmatrix
	.quad	.L.str.3
	.quad	zcurrentmatrix
	.quad	.L.str.4
	.quad	zdefaultmatrix
	.quad	.L.str.5
	.quad	zidtransform
	.quad	.L.str.6
	.quad	zinitmatrix
	.quad	.L.str.7
	.quad	zinvertmatrix
	.quad	.L.str.8
	.quad	zitransform
	.quad	.L.str.9
	.quad	zrotate
	.quad	.L.str.10
	.quad	zscale
	.quad	.L.str.11
	.quad	zsetmatrix
	.quad	.L.str.12
	.quad	zsetdefaultmatrix
	.quad	.L.str.13
	.quad	ztransform
	.quad	.L.str.14
	.quad	ztranslate
	.zero	16
	.size	zmatrix_op_defs, 256

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"2.bbox_transform"
	.size	.L.str.15, 17

	.type	zmatrix2_op_defs,@object # @zmatrix2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zmatrix2_op_defs
	.align	16
zmatrix2_op_defs:
	.quad	.L.str.15
	.quad	zbbox_transform
	.zero	16
	.size	zmatrix2_op_defs, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
