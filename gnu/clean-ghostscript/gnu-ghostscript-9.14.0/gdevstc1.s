	.text
	.file	"gdevstc1.bc"
	.globl	stc_gsmono
	.align	16, 0x90
	.type	stc_gsmono,@function
stc_gsmono:                             # @stc_gsmono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testl	%esi, %esi
	jle	.LBB0_4
# BB#1:                                 # %if.then
	testq	%rdx, %rdx
	movslq	%esi, %rax
	je	.LBB0_3
# BB#2:                                 # %if.then.2
	movq	%r8, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	memcpy
	jmp	.LBB0_9
.LBB0_4:                                # %if.else.5
	movq	18488(%rbx), %rax
	movl	16(%rax), %edi
	movl	20(%rax), %eax
	shrl	$8, %edi
	movl	100(%rbx), %edx
	imull	%esi, %edi
	imull	%edx, %edi
	subl	%edi, %eax
	testl	%eax, %eax
	jle	.LBB0_6
# BB#5:                                 # %if.then.11
	movslq	18752(%rbx), %rsi
	movslq	%eax, %rdx
	imulq	%rsi, %rdx
	xorl	%esi, %esi
	movq	%rcx, %rdi
	callq	memset
	movl	100(%rbx), %edx
.LBB0_6:                                # %if.end.16
	movl	$-1, %eax
	cmpl	$1, %edx
	jne	.LBB0_10
# BB#7:                                 # %if.end.22
	movq	18488(%rbx), %rax
	movl	16(%rax), %ecx
	movl	%ecx, %edx
	andl	$24, %edx
	movl	$-2, %eax
	cmpl	$8, %edx
	jne	.LBB0_10
# BB#8:                                 # %cleanup
	movl	$-3, %eax
	testb	$64, %cl
	jne	.LBB0_10
	jmp	.LBB0_9
.LBB0_3:                                # %if.else
	xorl	%esi, %esi
	movq	%r8, %rdi
	movq	%rax, %rdx
	callq	memset
.LBB0_9:                                # %if.end.38
	xorl	%eax, %eax
.LBB0_10:                               # %return
	popq	%rbx
	retq
.Lfunc_end0:
	.size	stc_gsmono, .Lfunc_end0-stc_gsmono
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
