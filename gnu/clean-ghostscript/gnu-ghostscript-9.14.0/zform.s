	.text
	.file	"zform.bc"
	.align	16, 0x90
	.type	zbeginform,@function
zbeginform:                             # @zbeginform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	subq	$168, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 208
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rdi, %r12
	movq	624(%r12), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB0_1
# BB#2:                                 # %do.body
	movq	8(%rbx), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB0_12
# BB#3:                                 # %do.end
	movq	(%r12), %rax
	movq	1872(%rax), %r15
	movq	8(%r12), %rdi
	leaq	-16(%rbx), %rsi
	leaq	72(%rsp), %r14
	movq	%r14, %rdx
	callq	read_matrix
	testl	%eax, %eax
	js	.LBB0_12
# BB#4:                                 # %if.end.11
	movq	8(%r12), %rdi
	leaq	144(%rsp), %r8
	movl	$.L.str.2, %edx
	movl	$4, %ecx
	xorl	%r9d, %r9d
	movq	%rbx, %rsi
	callq	dict_floats_param
	testl	%eax, %eax
	js	.LBB0_12
# BB#5:                                 # %if.end.18
	movl	$-21, %eax
	je	.LBB0_12
# BB#6:                                 # %if.end.22
	cvtps2pd	144(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	cvtps2pd	152(%rsp), %xmm0
	movaps	%xmm0, 32(%rsp)
	movq	8(%r12), %rdi
	leaq	112(%rsp), %r8
	movl	$.L.str.3, %edx
	movl	$6, %ecx
	xorl	%r9d, %r9d
	movq	%rbx, %rsi
	callq	dict_floats_param
	testl	%eax, %eax
	js	.LBB0_12
# BB#7:                                 # %if.end.47
	movl	$-21, %eax
	je	.LBB0_12
# BB#8:                                 # %if.end.51
	movq	112(%rsp), %rax
	movl	%eax, 48(%rsp)
	shrq	$32, %rax
	movl	%eax, 52(%rsp)
	movq	120(%rsp), %rax
	movl	%eax, 56(%rsp)
	shrq	$32, %rax
	movl	%eax, 60(%rsp)
	movq	128(%rsp), %rax
	movl	%eax, 64(%rsp)
	shrq	$32, %rax
	movl	%eax, 68(%rsp)
	movq	(%r12), %rax
	movq	1688(%rax), %rax
	movq	%rax, 96(%rsp)
	leaq	16(%rsp), %rdx
	movl	$17, %esi
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	callq	*1664(%r15)
	testl	%eax, %eax
	jle	.LBB0_11
# BB#9:                                 # %if.then.67
	movq	(%r12), %rdi
	movq	%r14, %rsi
	callq	gs_setmatrix
	movq	(%r12), %rdi
	leaq	(%rsp), %rsi
	callq	gx_default_clip_box
	testl	%eax, %eax
	js	.LBB0_12
# BB#10:                                # %cleanup.thread
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	subl	8(%rsp), %ecx
	movl	%ecx, (%rsp)
	subl	12(%rsp), %eax
	movl	%eax, 4(%rsp)
	movq	(%r12), %rdi
	leaq	(%rsp), %rsi
	callq	gx_clip_to_rectangle
.LBB0_11:                               # %if.end.88
	addq	$-32, 624(%r12)
	jmp	.LBB0_12
.LBB0_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB0_12:                               # %cleanup.93
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	zbeginform, .Lfunc_end0-zbeginform
	.cfi_endproc

	.align	16, 0x90
	.type	zendform,@function
zendform:                               # @zendform
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	1872(%rax), %rdi
	movq	1664(%rdi), %rax
	movl	$18, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end1:
	.size	zendform, .Lfunc_end1-zendform
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0.beginform"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0.endform"
	.size	.L.str.1, 10

	.type	zform_op_defs,@object   # @zform_op_defs
	.section	.rodata,"a",@progbits
	.globl	zform_op_defs
	.align	16
zform_op_defs:
	.quad	.L.str
	.quad	zbeginform
	.quad	.L.str.1
	.quad	zendform
	.zero	16
	.size	zform_op_defs, 48

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"BBox"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Matrix"
	.size	.L.str.3, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
