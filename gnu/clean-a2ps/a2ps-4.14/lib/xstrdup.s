	.text
	.file	"xstrdup.bc"
	.globl	xstrdup
	.align	16, 0x90
	.type	xstrdup,@function
xstrdup:                                # @xstrdup
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcpy
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	xstrdup, .Lfunc_end0-xstrdup
	.cfi_endproc

	.globl	xstrndup
	.align	16, 0x90
	.type	xstrndup,@function
xstrndup:                               # @xstrndup
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB1_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB1_2:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	strncpy
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movb	$0, (%rsi,%rdx)
	movq	-32(%rbp), %rdx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	xstrndup, .Lfunc_end1-xstrndup
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
