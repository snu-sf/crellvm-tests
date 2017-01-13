	.text
	.file	"imap_cmd_select_all.bc"
	.globl	select_all_command_new
	.align	16, 0x90
	.type	select_all_command_new,@function
select_all_command_new:                 # @select_all_command_new
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
	movabsq	$.L.str, %rdi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$select_all_command_class, %rdx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_init
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	select_all_command_new, .Lfunc_end0-select_all_command_new
	.cfi_endproc

	.align	16, 0x90
	.type	select_all_command_execute,@function
select_all_command_execute:             # @select_all_command_execute
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
	movabsq	$select_one_object, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	callq	object_list_add_select_cb
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	object_list_select_all
	movl	$1, %ecx
	xorl	%r8d, %r8d
	cmpl	$0, %eax
	cmovnel	%r8d, %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdi
	movq	-24(%rbp), %rsi
	callq	object_list_remove_select_cb
	movl	-28(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	select_all_command_execute, .Lfunc_end1-select_all_command_execute
	.cfi_endproc

	.align	16, 0x90
	.type	select_one_object,@function
select_one_object:                      # @select_one_object
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	select_command_new
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_add_subcommand
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	select_one_object, .Lfunc_end2-select_one_object
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Select All"
	.size	.L.str, 11

	.type	select_all_command_class,@object # @select_all_command_class
	.data
	.align	8
select_all_command_class:
	.quad	0
	.quad	select_all_command_execute
	.quad	0
	.quad	0
	.size	select_all_command_class, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
