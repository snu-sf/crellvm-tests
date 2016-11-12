	.text
	.file	"gp_getnv.bc"
	.globl	gp_getenv
	.align	16, 0x90
	.type	gp_getenv,@function
gp_getenv:                              # @gp_getenv
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
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	callq	getenv
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_4
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r12
	movl	$-1, %eax
	cmpl	(%r14), %r12d
	jge	.LBB0_3
# BB#2:                                 # %if.then.3
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	strcpy
	xorl	%eax, %eax
.LBB0_3:                                # %cleanup
	incl	%r12d
	jmp	.LBB0_7
.LBB0_4:                                # %if.end.6
	movl	$1, %r12d
	cmpl	$0, (%r14)
	jle	.LBB0_6
# BB#5:                                 # %if.then.9
	movb	$0, (%r15)
.LBB0_6:                                # %cleanup.11
	movl	$1, %eax
.LBB0_7:                                # %cleanup.11
	movl	%r12d, (%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	gp_getenv, .Lfunc_end0-gp_getenv
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
