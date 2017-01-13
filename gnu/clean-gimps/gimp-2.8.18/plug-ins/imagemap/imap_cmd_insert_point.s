	.text
	.file	"imap_cmd_insert_point.bc"
	.globl	insert_point_command_new
	.align	16, 0x90
	.type	insert_point_command_new,@function
insert_point_command_new:               # @insert_point_command_new
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
	movl	%eax, %r8d
	movl	$56, %eax
	movl	%eax, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, %rdi
	movq	%r9, %rsi
	callq	g_malloc_n
	movabsq	$.L.str, %rdi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 40(%rax)
	movl	-16(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 44(%rax)
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$insert_point_command_class, %rdx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_init
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	insert_point_command_new, .Lfunc_end0-insert_point_command_new
	.cfi_endproc

	.align	16, 0x90
	.type	insert_point_command_execute,@function
insert_point_command_execute:           # @insert_point_command_execute
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
	movq	-16(%rbp), %rdi
	movl	40(%rdi), %edi
	movq	-16(%rbp), %rax
	movl	44(%rax), %esi
	callq	new_point
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	callq	g_list_length
	movq	-16(%rbp), %rdi
	movl	48(%rdi), %esi
	subl	$1, %esi
	cmpl	%esi, %eax
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-24(%rbp), %rsi
	movq	%rax, 88(%rsi)
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	subl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 52(%rax)
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	48(%rcx), %edx
	movq	%rax, %rsi
	callq	g_list_insert
	movq	-24(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-16(%rbp), %rax
	movl	48(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 52(%rax)
.LBB1_3:                                # %if.end
	callq	preview_redraw
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	insert_point_command_execute, .Lfunc_end1-insert_point_command_execute
	.cfi_endproc

	.align	16, 0x90
	.type	insert_point_command_undo,@function
insert_point_command_undo:              # @insert_point_command_undo
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
	movq	-24(%rbp), %rdi
	movq	88(%rdi), %rdi
	movq	-16(%rbp), %rax
	movl	52(%rax), %esi
	callq	g_list_nth
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	g_list_remove_link
	movq	-24(%rbp), %rsi
	movq	%rax, 88(%rsi)
	callq	preview_redraw
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	insert_point_command_undo, .Lfunc_end2-insert_point_command_undo
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Insert Point"
	.size	.L.str, 13

	.type	insert_point_command_class,@object # @insert_point_command_class
	.data
	.align	8
insert_point_command_class:
	.quad	0
	.quad	insert_point_command_execute
	.quad	insert_point_command_undo
	.quad	0
	.size	insert_point_command_class, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
