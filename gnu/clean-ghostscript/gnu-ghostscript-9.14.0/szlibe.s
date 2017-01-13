	.text
	.file	"szlibe.bc"
	.align	16, 0x90
	.type	s_zlibE_init,@function
s_zlibE_init:                           # @s_zlibE_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 32
.Ltmp2:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	s_zlib_alloc_dynamic_state
	movl	%eax, %ecx
	movl	$-2, %eax
	testl	%ecx, %ecx
	js	.LBB0_4
# BB#1:                                 # %if.end
	movq	136(%rbx), %rdi
	addq	$16, %rdi
	movl	108(%rbx), %ecx
	movl	116(%rbx), %esi
	movl	120(%rbx), %edx
	cmpl	$0, 112(%rbx)
	je	.LBB0_3
# BB#2:
	negl	%ecx
.LBB0_3:                                # %select.end
	movl	124(%rbx), %r8d
	movl	128(%rbx), %r9d
	movl	$112, 8(%rsp)
	movq	$.L.str, (%rsp)
	callq	deflateInit2_
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$-2, %eax
	cmovel	%ecx, %eax
.LBB0_4:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end0:
	.size	s_zlibE_init, .Lfunc_end0-s_zlibE_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_zlibE_process,@function
s_zlibE_process:                        # @s_zlibE_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp4:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp6:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 48
.Ltmp8:
	.cfi_offset %rbx, -48
.Ltmp9:
	.cfi_offset %r12, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %rbp
	movq	%rsi, %r12
	movq	8(%rbp), %rcx
	movq	16(%rbp), %rdx
	movl	$1, %eax
	cmpq	%rdx, %rcx
	je	.LBB1_10
# BB#1:                                 # %if.end
	movq	136(%rdi), %rbx
	movq	(%r12), %r15
	movq	8(%r12), %rsi
	testl	%r14d, %r14d
	jne	.LBB1_3
# BB#2:                                 # %if.end
	xorl	%eax, %eax
	cmpq	%rsi, %r15
	je	.LBB1_10
.LBB1_3:                                # %if.end.5
	leaq	16(%rbx), %rdi
	testl	%r14d, %r14d
	setne	%r8b
	leaq	1(%r15), %rax
	movq	%rax, 16(%rbx)
	subl	%r15d, %esi
	movl	%esi, 24(%rbx)
	leaq	1(%rcx), %rax
	movq	%rax, 40(%rbx)
	subl	%ecx, %edx
	movl	%edx, 48(%rbx)
	movzbl	%r8b, %esi
	shll	$2, %esi
	callq	deflate
	movl	%eax, %ecx
	movq	16(%rbx), %rdx
	decq	%rdx
	movq	%rdx, (%r12)
	movq	40(%rbx), %rsi
	decq	%rsi
	movq	%rsi, 8(%rbp)
	movl	$-2, %eax
	cmpl	$1, %ecx
	jne	.LBB1_4
# BB#7:                                 # %sw.bb.32
	testl	%r14d, %r14d
	je	.LBB1_10
# BB#8:                                 # %land.rhs.34
	xorl	%eax, %eax
	cmpq	8(%r12), %rdx
	je	.LBB1_10
# BB#9:                                 # %select.mid
	movl	$-2, %eax
	jmp	.LBB1_10
.LBB1_4:                                # %if.end.5
	testl	%ecx, %ecx
	jne	.LBB1_10
# BB#5:                                 # %sw.bb
	cmpq	16(%rbp), %rsi
	movl	$1, %eax
	je	.LBB1_10
# BB#6:                                 # %cond.false
	cmpq	%rdx, %r15
	sbbb	%al, %al
	testl	%r14d, %r14d
	sete	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	xorl	$1, %eax
.LBB1_10:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_zlibE_process, .Lfunc_end1-s_zlibE_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_zlibE_release,@function
s_zlibE_release:                        # @s_zlibE_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	136(%rbx), %rdi
	addq	$16, %rdi
	callq	deflateEnd
	movq	%rbx, %rdi
	popq	%rbx
	jmp	s_zlib_free_dynamic_state # TAILCALL
.Lfunc_end2:
	.size	s_zlibE_release, .Lfunc_end2-s_zlibE_release
	.cfi_endproc

	.align	16, 0x90
	.type	s_zlibE_reset,@function
s_zlibE_reset:                          # @s_zlibE_reset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 16
	movq	136(%rdi), %rdi
	addq	$16, %rdi
	callq	deflateReset
	testl	%eax, %eax
	movl	$-2, %ecx
	cmovnel	%ecx, %eax
	popq	%rdx
	retq
.Lfunc_end3:
	.size	s_zlibE_reset, .Lfunc_end3-s_zlibE_reset
	.cfi_endproc

	.type	s_zlibE_template,@object # @s_zlibE_template
	.section	.rodata,"a",@progbits
	.globl	s_zlibE_template
	.align	8
s_zlibE_template:
	.quad	st_zlib_state
	.quad	s_zlibE_init
	.quad	s_zlibE_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	s_zlibE_release
	.quad	s_zlib_set_defaults
	.quad	s_zlibE_reset
	.size	s_zlibE_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1.2.7"
	.size	.L.str, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
