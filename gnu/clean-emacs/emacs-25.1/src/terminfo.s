	.text
	.file	"terminfo.bc"
	.globl	tparam
	.align	16, 0x90
	.type	tparam,@function
tparam:                                 # @tparam
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
	subq	$48, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%eax, -36(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -20(%rbp)
	je	.LBB0_3
.LBB0_2:                                # %if.then
	callq	emacs_abort
.LBB0_3:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movb	$0, %al
	callq	tparm
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	xstrdup
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tparam, .Lfunc_end0-tparam
	.cfi_endproc

	.type	UP,@object              # @UP
	.comm	UP,8,8
	.type	BC,@object              # @BC
	.comm	BC,8,8
	.type	PC,@object              # @PC
	.comm	PC,1,1

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
