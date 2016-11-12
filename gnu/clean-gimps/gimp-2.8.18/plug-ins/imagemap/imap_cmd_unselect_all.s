	.text
	.file	"imap_cmd_unselect_all.bc"
	.globl	unselect_all_command_new
	.align	16, 0x90
	.type	unselect_all_command_new,@function
unselect_all_command_new:               # @unselect_all_command_new
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
	subq	$48, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$48, %eax
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
	cmpq	$0, -16(%rbp)
	je	.LBB0_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rdi
	callq	object_ref
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB0_3:                                # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$unselect_all_command_class, %rdx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_init
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	unselect_all_command_new, .Lfunc_end0-unselect_all_command_new
	.cfi_endproc

	.align	16, 0x90
	.type	unselect_all_command_destruct,@function
unselect_all_command_destruct:          # @unselect_all_command_destruct
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
	cmpq	$0, 40(%rdi)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	object_unref
.LBB1_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	unselect_all_command_destruct, .Lfunc_end1-unselect_all_command_destruct
	.cfi_endproc

	.align	16, 0x90
	.type	unselect_all_command_execute,@function
unselect_all_command_execute:           # @unselect_all_command_execute
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
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	object_list_deselect_all
	cmpl	$0, %eax
	je	.LBB2_2
# BB#1:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	movl	$1, -28(%rbp)
.LBB2_3:                                # %if.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	object_list_remove_select_cb
	movl	-28(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	unselect_all_command_execute, .Lfunc_end2-unselect_all_command_execute
	.cfi_endproc

	.align	16, 0x90
	.type	select_one_object,@function
select_one_object:                      # @select_one_object
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	unselect_command_new
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_add_subcommand
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	select_one_object, .Lfunc_end3-select_one_object
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Unselect All"
	.size	.L.str, 13

	.type	unselect_all_command_class,@object # @unselect_all_command_class
	.data
	.align	8
unselect_all_command_class:
	.quad	unselect_all_command_destruct
	.quad	unselect_all_command_execute
	.quad	0
	.quad	0
	.size	unselect_all_command_class, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
