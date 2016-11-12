	.text
	.file	"xmalloc.bc"
	.globl	xalloc_die
	.align	16, 0x90
	.type	xalloc_die,@function
xalloc_die:                             # @xalloc_die
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
	cmpq	$0, xalloc_fail_func
	je	.LBB0_2
# BB#1:                                 # %if.then
	callq	*xalloc_fail_func
.LBB0_2:                                # %if.end
	movl	xalloc_exit_failure, %edi
	movq	xalloc_msg_memory_exhausted, %rax
	movl	%edi, -4(%rbp)          # 4-byte Spill
	movq	%rax, %rdi
	callq	gettext
	xorl	%esi, %esi
	movabsq	$.L.str.1, %rdx
	movl	-4(%rbp), %edi          # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
	movl	$1, %edi
	callq	exit
.Lfunc_end0:
	.size	xalloc_die, .Lfunc_end0-xalloc_die
	.cfi_endproc

	.globl	xmalloc
	.align	16, 0x90
	.type	xmalloc,@function
xmalloc:                                # @xmalloc
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	malloc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	callq	xalloc_die
.LBB1_2:                                # %if.end
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	xmalloc, .Lfunc_end1-xmalloc
	.cfi_endproc

	.globl	xrealloc
	.align	16, 0x90
	.type	xrealloc,@function
xrealloc:                               # @xrealloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	realloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	callq	xalloc_die
.LBB2_2:                                # %if.end
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	xrealloc, .Lfunc_end2-xrealloc
	.cfi_endproc

	.globl	xcalloc
	.align	16, 0x90
	.type	xcalloc,@function
xcalloc:                                # @xcalloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	calloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	callq	xalloc_die
.LBB3_2:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	xcalloc, .Lfunc_end3-xcalloc
	.cfi_endproc

	.type	xalloc_exit_failure,@object # @xalloc_exit_failure
	.data
	.globl	xalloc_exit_failure
	.align	4
xalloc_exit_failure:
	.long	1                       # 0x1
	.size	xalloc_exit_failure, 4

	.type	xalloc_fail_func,@object # @xalloc_fail_func
	.bss
	.globl	xalloc_fail_func
	.align	8
xalloc_fail_func:
	.quad	0
	.size	xalloc_fail_func, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Memory exhausted"
	.size	.L.str, 17

	.type	xalloc_msg_memory_exhausted,@object # @xalloc_msg_memory_exhausted
	.section	.rodata,"a",@progbits
	.globl	xalloc_msg_memory_exhausted
	.align	8
xalloc_msg_memory_exhausted:
	.quad	.L.str
	.size	xalloc_msg_memory_exhausted, 8

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%s"
	.size	.L.str.1, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
