	.text
	.file	"imap_cmd_cut.bc"
	.globl	cut_command_new
	.align	16, 0x90
	.type	cut_command_new,@function
cut_command_new:                        # @cut_command_new
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
	movabsq	$cut_command_class, %rdx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_init
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cut_command_new, .Lfunc_end0-cut_command_new
	.cfi_endproc

	.align	16, 0x90
	.type	cut_command_destruct,@function
cut_command_destruct:                   # @cut_command_destruct
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
	callq	object_list_destruct
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	cut_command_destruct, .Lfunc_end1-cut_command_destruct
	.cfi_endproc

	.align	16, 0x90
	.type	cut_command_execute,@function
cut_command_execute:                    # @cut_command_execute
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
	movq	40(%rdi), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	get_paste_buffer
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	object_list_copy
	movabsq	$remove_one_object, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	callq	object_list_add_remove_cb
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	object_list_cut
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	object_list_remove_remove_cb
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	cut_command_execute, .Lfunc_end2-cut_command_execute
	.cfi_endproc

	.align	16, 0x90
	.type	cut_command_undo,@function
cut_command_undo:                       # @cut_command_undo
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
.Lfunc_end3:
	.size	cut_command_undo, .Lfunc_end3-cut_command_undo
	.cfi_endproc

	.align	16, 0x90
	.type	remove_one_object,@function
remove_one_object:                      # @remove_one_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	delete_command_new
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_add_subcommand
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	remove_one_object, .Lfunc_end4-remove_one_object
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Cut"
	.size	.L.str, 4

	.type	cut_command_class,@object # @cut_command_class
	.data
	.align	8
cut_command_class:
	.quad	cut_command_destruct
	.quad	cut_command_execute
	.quad	cut_command_undo
	.quad	0
	.size	cut_command_class, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
