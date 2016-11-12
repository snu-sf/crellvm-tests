	.text
	.file	"imap_cmd_edit_object.bc"
	.globl	edit_object_command_new
	.align	16, 0x90
	.type	edit_object_command_new,@function
edit_object_command_new:                # @edit_object_command_new
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
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	object_ref
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-8(%rbp), %rdi
	callq	object_clone
	movabsq	$.L.str, %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$edit_object_command_class, %rdx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_init
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	edit_object_command_new, .Lfunc_end0-edit_object_command_new
	.cfi_endproc

	.align	16, 0x90
	.type	edit_object_command_destruct,@function
edit_object_command_destruct:           # @edit_object_command_destruct
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
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	object_unref
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	edit_object_command_destruct, .Lfunc_end1-edit_object_command_destruct
	.cfi_endproc

	.align	16, 0x90
	.type	edit_object_command_undo,@function
edit_object_command_undo:               # @edit_object_command_undo
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	object_clone
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	callq	object_assign
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	object_assign
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	edit_object_command_undo, .Lfunc_end2-edit_object_command_undo
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Edit Object"
	.size	.L.str, 12

	.type	edit_object_command_class,@object # @edit_object_command_class
	.data
	.align	8
edit_object_command_class:
	.quad	edit_object_command_destruct
	.quad	0
	.quad	edit_object_command_undo
	.quad	edit_object_command_undo
	.size	edit_object_command_class, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
