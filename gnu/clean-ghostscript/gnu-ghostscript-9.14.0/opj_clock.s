	.text
	.file	"opj_clock.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.text
	.globl	opj_clock
	.align	16, 0x90
	.type	opj_clock,@function
opj_clock:                              # @opj_clock
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$152, %rsp
.Ltmp0:
	.cfi_def_cfa_offset 160
	leaq	8(%rsp), %rsi
	xorl	%edi, %edi
	callq	getrusage
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	addq	8(%rsp), %rax
	cvtsi2sdq	%rax, %xmm1
	addq	16(%rsp), %rcx
	cvtsi2sdq	%rcx, %xmm0
	mulsd	.LCPI0_0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	addq	$152, %rsp
	retq
.Lfunc_end0:
	.size	opj_clock, .Lfunc_end0-opj_clock
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
