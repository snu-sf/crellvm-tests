	.text
	.file	"gettime.bc"
	.globl	gettime
	.align	16, 0x90
	.type	gettime,@function
gettime:                                # @gettime
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	clock_gettime
	cmpl	$0, %eax
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_3
.LBB0_2:                                # %if.end
	leaq	-24(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	gettimeofday
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, (%rdi)
	imulq	$1000, -16(%rbp), %rsi  # imm = 0x3E8
	movq	-8(%rbp), %rdi
	movq	%rsi, 8(%rdi)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB0_3:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gettime, .Lfunc_end0-gettime
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
