	.text
	.file	"gs.bc"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -48
.Ltmp6:
	.cfi_offset %r12, -40
.Ltmp7:
	.cfi_offset %r14, -32
.Ltmp8:
	.cfi_offset %r15, -24
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movl	%edi, %r12d
	xorl	%edi, %edi
	movl	$.L.str, %esi
	callq	setlocale
	callq	gs_malloc_init
	movq	%rax, %r14
	movq	%r14, %rdi
	callq	gs_main_alloc_instance
	movq	%rax, %rbx
	movl	$1, %ebp
	testq	%rbx, %rbx
	je	.LBB0_11
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movq	%r15, %rdx
	callq	gs_main_init_with_args
	testl	%eax, %eax
	js	.LBB0_3
# BB#2:                                 # %if.then.6
	movq	%rbx, %rdi
	callq	gs_main_run_start
.LBB0_3:                                # %if.end.8
	xorl	%ebp, %ebp
	cmpl	$-101, %eax
	jg	.LBB0_6
# BB#4:                                 # %if.end.8
	cmpl	$-110, %eax
	je	.LBB0_10
# BB#5:                                 # %if.end.8
	cmpl	$-101, %eax
	jne	.LBB0_9
	jmp	.LBB0_10
.LBB0_6:                                # %if.end.8
	cmpl	$-100, %eax
	jne	.LBB0_8
# BB#7:
	movl	$-100, %eax
	movl	$1, %ebp
	jmp	.LBB0_10
.LBB0_8:                                # %if.end.8
	testl	%eax, %eax
	je	.LBB0_10
.LBB0_9:                                # %sw.default
	movl	$255, %ebp
.LBB0_10:                               # %if.then.10
	movq	(%rbx), %rdi
	movl	%ebp, %esi
	movl	%eax, %edx
	callq	gs_to_exit_with_code
.LBB0_11:                               # %if.end.12
	movq	%r14, %rdi
	callq	gs_malloc_release
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
