	.text
	.file	"imap_cmd_object_move.bc"
	.globl	object_move_command_new
	.align	16, 0x90
	.type	object_move_command_new,@function
object_move_command_new:                # @object_move_command_new
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
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	g_malloc_n
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	object_ref
	movabsq	$.L.str, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 40(%rax)
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$object_move_command_class, %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_init
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	object_move_command_new, .Lfunc_end0-object_move_command_new
	.cfi_endproc

	.align	16, 0x90
	.type	object_move_command_destruct,@function
object_move_command_destruct:           # @object_move_command_destruct
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
	.size	object_move_command_destruct, .Lfunc_end1-object_move_command_destruct
	.cfi_endproc

	.align	16, 0x90
	.type	object_move_command_execute,@function
object_move_command_execute:            # @object_move_command_execute
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
	movq	-16(%rbp), %rax
	movl	40(%rax), %esi
	movq	-16(%rbp), %rax
	movl	44(%rax), %edx
	callq	object_move
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	object_move_command_execute, .Lfunc_end2-object_move_command_execute
	.cfi_endproc

	.align	16, 0x90
	.type	object_move_command_undo,@function
object_move_command_undo:               # @object_move_command_undo
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-16(%rbp), %rcx
	movl	%eax, %edx
	subl	40(%rcx), %edx
	movq	-16(%rbp), %rcx
	subl	44(%rcx), %eax
	movl	%edx, %esi
	movl	%eax, %edx
	callq	object_move
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	object_move_command_undo, .Lfunc_end3-object_move_command_undo
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Move"
	.size	.L.str, 5

	.type	object_move_command_class,@object # @object_move_command_class
	.data
	.align	8
object_move_command_class:
	.quad	object_move_command_destruct
	.quad	object_move_command_execute
	.quad	object_move_command_undo
	.quad	0
	.size	object_move_command_class, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
