	.text
	.file	"imap_cmd_select.bc"
	.globl	select_command_new
	.align	16, 0x90
	.type	select_command_new,@function
select_command_new:                     # @select_command_new
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
	movl	$40, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	object_ref
	movabsq	$.L.str, %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$select_command_class, %rdx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_init
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	select_command_new, .Lfunc_end0-select_command_new
	.cfi_endproc

	.align	16, 0x90
	.type	select_command_destruct,@function
select_command_destruct:                # @select_command_destruct
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
	movq	32(%rdi), %rdi
	callq	object_unref
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	select_command_destruct, .Lfunc_end1-select_command_destruct
	.cfi_endproc

	.align	16, 0x90
	.type	select_command_execute,@function
select_command_execute:                 # @select_command_execute
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
	callq	object_select
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	select_command_execute, .Lfunc_end2-select_command_execute
	.cfi_endproc

	.align	16, 0x90
	.type	select_command_undo,@function
select_command_undo:                    # @select_command_undo
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
	callq	object_unselect
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	select_command_undo, .Lfunc_end3-select_command_undo
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Select"
	.size	.L.str, 7

	.type	select_command_class,@object # @select_command_class
	.data
	.align	8
select_command_class:
	.quad	select_command_destruct
	.quad	select_command_execute
	.quad	select_command_undo
	.quad	0
	.size	select_command_class, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
