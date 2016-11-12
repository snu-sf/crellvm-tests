	.text
	.file	"madir.bc"
	.globl	madir_argmatch
	.align	16, 0x90
	.type	madir_argmatch,@function
madir_argmatch:                         # @madir_argmatch
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
	movabsq	$madir_args, %rdx
	movabsq	$madir_types, %rax
	movl	$4, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	argmatch_die, %r10
	movq	%rax, %rcx
	movq	%r10, (%rsp)
	callq	__xargmatch_internal
	movslq	%eax, %rcx
	movl	madir_types(,%rcx,4), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	madir_argmatch, .Lfunc_end0-madir_argmatch
	.cfi_endproc

	.globl	madir_to_string
	.align	16, 0x90
	.type	madir_to_string,@function
madir_to_string:                        # @madir_to_string
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
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movl	%edi, %eax
	testl	%edi, %edi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	je	.LBB1_1
	jmp	.LBB1_5
.LBB1_5:                                # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB1_2
	jmp	.LBB1_3
.LBB1_1:                                # %sw.bb
	movabsq	$.L.str, %rdi
	callq	gettext
	movq	%rax, -8(%rbp)
	jmp	.LBB1_4
.LBB1_2:                                # %sw.bb.1
	movabsq	$.L.str.1, %rdi
	callq	gettext
	movq	%rax, -8(%rbp)
	jmp	.LBB1_4
.LBB1_3:                                # %sw.default
	callq	abort
.LBB1_4:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	madir_to_string, .Lfunc_end1-madir_to_string
	.cfi_endproc

	.type	madir_args,@object      # @madir_args
	.section	.rodata,"a",@progbits
	.align	16
madir_args:
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	0
	.size	madir_args, 24

	.type	madir_types,@object     # @madir_types
	.data
	.align	4
madir_types:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.size	madir_types, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rows first"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"columns first"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"rows"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"columns"
	.size	.L.str.3, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
