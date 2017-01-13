	.text
	.file	"imap_cmd_select_next.bc"
	.globl	select_next_command_new
	.align	16, 0x90
	.type	select_next_command_new,@function
select_next_command_new:                # @select_next_command_new
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
	movabsq	$select_next_command_class, %rdx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_init
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	select_next_command_new, .Lfunc_end0-select_next_command_new
	.cfi_endproc

	.align	16, 0x90
	.type	select_next_command_execute,@function
select_next_command_execute:            # @select_next_command_execute
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
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	callq	object_list_add_select_cb
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	object_list_select_next
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	object_list_remove_select_cb
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	select_next_command_execute, .Lfunc_end1-select_next_command_execute
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$0, 20(%rsi)
	je	.LBB2_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	select_command_new
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false
	movq	-8(%rbp), %rdi
	callq	unselect_command_new
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB2_3:                                # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	command_add_subcommand
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	select_one_object, .Lfunc_end2-select_one_object
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Select Next"
	.size	.L.str, 12

	.type	select_next_command_class,@object # @select_next_command_class
	.data
	.align	8
select_next_command_class:
	.quad	0
	.quad	select_next_command_execute
	.quad	0
	.quad	0
	.size	select_next_command_class, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
