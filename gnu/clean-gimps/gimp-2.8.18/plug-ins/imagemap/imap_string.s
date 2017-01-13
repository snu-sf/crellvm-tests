	.text
	.file	"imap_string.bc"
	.globl	g_strreplace
	.align	16, 0x90
	.type	g_strreplace,@function
g_strreplace:                           # @g_strreplace
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB0_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	g_strreplace, .Lfunc_end0-g_strreplace
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
