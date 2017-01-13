	.text
	.file	"imap_cmd_copy.bc"
	.globl	copy_command_new
	.align	16, 0x90
	.type	copy_command_new,@function
copy_command_new:                       # @copy_command_new
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
	movl	$48, %eax
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
	movq	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$copy_command_class, %rdx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_init
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	copy_command_new, .Lfunc_end0-copy_command_new
	.cfi_endproc

	.align	16, 0x90
	.type	copy_command_execute,@function
copy_command_execute:                   # @copy_command_execute
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
	movq	40(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	get_paste_buffer
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	object_list_copy
	movq	-16(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	object_list_copy_to_paste_buffer
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	copy_command_execute, .Lfunc_end1-copy_command_execute
	.cfi_endproc

	.align	16, 0x90
	.type	copy_command_undo,@function
copy_command_undo:                      # @copy_command_undo
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
	callq	get_paste_buffer
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rsi
	movq	%rax, %rdi
	callq	object_list_copy
	movq	%rax, -24(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	copy_command_undo, .Lfunc_end2-copy_command_undo
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Copy"
	.size	.L.str, 5

	.type	copy_command_class,@object # @copy_command_class
	.data
	.align	8
copy_command_class:
	.quad	0
	.quad	copy_command_execute
	.quad	copy_command_undo
	.quad	0
	.size	copy_command_class, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
