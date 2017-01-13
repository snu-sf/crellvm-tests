	.text
	.file	"jdpostct.bc"
	.globl	jinit_d_post_controller
	.align	16, 0x90
	.type	jinit_d_post_controller,@function
jinit_d_post_controller:                # @jinit_d_post_controller
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	8(%rbx), %rax
	movl	$1, %esi
	movl	$48, %edx
	callq	*(%rax)
	movq	%rax, %r14
	movq	%r14, 816(%rbx)
	movq	$start_pass_dpost, (%r14)
	movq	$0, 16(%r14)
	movq	$0, 24(%r14)
	cmpl	$0, 108(%rbx)
	je	.LBB0_3
# BB#1:                                 # %if.then
	movl	420(%rbx), %ecx
	movl	%ecx, 32(%r14)
	testl	%ebp, %ebp
	je	.LBB0_2
# BB#4:                                 # %if.then.3
	movq	(%rbx), %rax
	movl	$3, 40(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*(%rax)                 # TAILCALL
.LBB0_2:                                # %if.else
	movq	8(%rbx), %rax
	movl	144(%rbx), %edx
	imull	136(%rbx), %edx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	*16(%rax)
	movq	%rax, 24(%r14)
.LBB0_3:                                # %if.end.9
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jinit_d_post_controller, .Lfunc_end0-jinit_d_post_controller
	.cfi_endproc

	.align	16, 0x90
	.type	start_pass_dpost,@function
start_pass_dpost:                       # @start_pass_dpost
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbx, -16
	movq	816(%rdi), %rbx
	testl	%esi, %esi
	je	.LBB1_1
# BB#5:                                 # %sw.default
	movq	(%rdi), %rax
	movl	$3, 40(%rax)
	callq	*(%rax)
	jmp	.LBB1_6
.LBB1_1:                                # %sw.bb
	cmpl	$0, 108(%rdi)
	je	.LBB1_4
# BB#2:                                 # %if.then
	movq	$post_process_1pass, 8(%rbx)
	cmpq	$0, 24(%rbx)
	jne	.LBB1_6
# BB#3:                                 # %if.then.2
	movq	8(%rdi), %rax
	movq	16(%rbx), %rsi
	movl	32(%rbx), %ecx
	xorl	%edx, %edx
	movl	$1, %r8d
	callq	*56(%rax)
	movq	%rax, 24(%rbx)
	jmp	.LBB1_6
.LBB1_4:                                # %if.else
	movq	856(%rdi), %rax
	movq	8(%rax), %rax
	movq	%rax, 8(%rbx)
.LBB1_6:                                # %sw.epilog
	movq	$0, 36(%rbx)
	popq	%rbx
	retq
.Lfunc_end1:
	.size	start_pass_dpost, .Lfunc_end1-start_pass_dpost
	.cfi_endproc

	.align	16, 0x90
	.type	post_process_1pass,@function
post_process_1pass:                     # @post_process_1pass
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp10:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 64
.Ltmp13:
	.cfi_offset %rbx, -40
.Ltmp14:
	.cfi_offset %r12, -32
.Ltmp15:
	.cfi_offset %r14, -24
.Ltmp16:
	.cfi_offset %r15, -16
	movq	%r9, %r15
	movq	%r8, %r14
	movq	%rdi, %rbx
	movl	64(%rsp), %eax
	movq	816(%rbx), %r12
	subl	(%r15), %eax
	movl	32(%r12), %edi
	cmpl	%edi, %eax
	cmoval	%edi, %eax
	movl	$0, 20(%rsp)
	movq	856(%rbx), %r10
	movq	24(%r12), %r8
	movl	%eax, (%rsp)
	leaq	20(%rsp), %r9
	movq	%rbx, %rdi
	callq	*8(%r10)
	movq	872(%rbx), %rax
	movq	24(%r12), %rsi
	movl	(%r15), %ecx
	leaq	(%r14,%rcx,8), %rdx
	movl	20(%rsp), %ecx
	movq	%rbx, %rdi
	callq	*8(%rax)
	movl	20(%rsp), %eax
	addl	%eax, (%r15)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	post_process_1pass, .Lfunc_end2-post_process_1pass
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
