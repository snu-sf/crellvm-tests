	.text
	.file	"addext.bc"
	.globl	addext
	.align	16, 0x90
	.type	addext,@function
addext:                                 # @addext
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	base_name
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	strlen
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movq	%rax, -48(%rbp)
	movq	$-1, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jge	.LBB0_2
# BB#1:                                 # %if.then
	movq	$14, -56(%rbp)
.LBB0_2:                                # %if.end
	movq	-40(%rbp), %rax
	addq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	ja	.LBB0_4
# BB#3:                                 # %if.then.4
	movq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcpy
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB0_7
.LBB0_4:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	-40(%rbp), %rax
	ja	.LBB0_6
# BB#5:                                 # %if.then.7
	movq	-56(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -40(%rbp)
.LBB0_6:                                # %if.end.8
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movb	$0, 1(%rsi,%rdx)
.LBB0_7:                                # %if.end.11
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	addext, .Lfunc_end0-addext
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
