	.text
	.file	"imap_cmd_delete.bc"
	.globl	delete_command_new
	.align	16, 0x90
	.type	delete_command_new,@function
delete_command_new:                     # @delete_command_new
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
	movl	$56, %eax
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
	movq	-16(%rbp), %rdi
	callq	object_ref
	movabsq	$.L.str, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$delete_command_class, %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_init
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	delete_command_new, .Lfunc_end0-delete_command_new
	.cfi_endproc

	.align	16, 0x90
	.type	delete_command_destruct,@function
delete_command_destruct:                # @delete_command_destruct
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	object_unref
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	delete_command_destruct, .Lfunc_end1-delete_command_destruct
	.cfi_endproc

	.align	16, 0x90
	.type	delete_command_execute,@function
delete_command_execute:                 # @delete_command_execute
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	8(%rdi), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, 52(%rdi)
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	object_get_position_in_list
	movq	-16(%rbp), %rdi
	movl	%eax, 48(%rdi)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rsi
	callq	object_list_remove
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	delete_command_execute, .Lfunc_end2-delete_command_execute
	.cfi_endproc

	.align	16, 0x90
	.type	delete_command_undo,@function
delete_command_undo:                    # @delete_command_undo
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-16(%rbp), %rax
	movl	48(%rax), %esi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdx
	callq	object_list_insert
	movq	-16(%rbp), %rax
	movl	52(%rax), %esi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	%esi, 8(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	delete_command_undo, .Lfunc_end3-delete_command_undo
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Delete"
	.size	.L.str, 7

	.type	delete_command_class,@object # @delete_command_class
	.data
	.align	8
delete_command_class:
	.quad	delete_command_destruct
	.quad	delete_command_execute
	.quad	delete_command_undo
	.quad	0
	.size	delete_command_class, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
