	.text
	.file	"imap_cmd_delete_point.bc"
	.globl	delete_point_command_new
	.align	16, 0x90
	.type	delete_point_command_new,@function
delete_point_command_new:               # @delete_point_command_new
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
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$64, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	g_malloc_n
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	88(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_index
	movabsq	$.L.str, %rdi
	movq	-24(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-24(%rbp), %rcx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$delete_point_command_class, %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_init
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	delete_point_command_new, .Lfunc_end0-delete_point_command_new
	.cfi_endproc

	.align	16, 0x90
	.type	delete_point_command_execute,@function
delete_point_command_execute:           # @delete_point_command_execute
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	88(%rdi), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rsi
	callq	g_list_find
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	g_list_remove_link
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, 88(%rsi)
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	delete_point_command_execute, .Lfunc_end1-delete_point_command_execute
	.cfi_endproc

	.align	16, 0x90
	.type	delete_point_command_undo,@function
delete_point_command_undo:              # @delete_point_command_undo
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rdi
	addq	$48, %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	(%rdi), %edi
	movq	-32(%rbp), %rax
	movl	4(%rax), %esi
	callq	new_point
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	56(%rcx), %edx
	movq	%rax, %rsi
	callq	g_list_insert
	movq	-24(%rbp), %rcx
	movq	%rax, 88(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	delete_point_command_undo, .Lfunc_end2-delete_point_command_undo
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Delete Point"
	.size	.L.str, 13

	.type	delete_point_command_class,@object # @delete_point_command_class
	.data
	.align	8
delete_point_command_class:
	.quad	0
	.quad	delete_point_command_execute
	.quad	delete_point_command_undo
	.quad	0
	.size	delete_point_command_class, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
