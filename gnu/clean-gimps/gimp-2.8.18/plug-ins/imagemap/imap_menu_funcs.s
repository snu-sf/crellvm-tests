	.text
	.file	"imap_menu_funcs.bc"
	.globl	init_accel_group
	.align	16, 0x90
	.type	init_accel_group,@function
init_accel_group:                       # @init_accel_group
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gtk_accel_group_new
	movq	%rax, accelerator_group
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	accelerator_group, %rsi
	movq	%rax, %rdi
	callq	gtk_window_add_accel_group
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	init_accel_group, .Lfunc_end0-init_accel_group
	.cfi_endproc

	.globl	add_accelerator
	.align	16, 0x90
	.type	add_accelerator,@function
add_accelerator:                        # @add_accelerator
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
	movb	%dl, %al
	movabsq	$.L.str, %rcx
	movl	$1, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movb	%al, -13(%rbp)
	movq	-8(%rbp), %rdi
	movq	accelerator_group, %rdx
	movl	-12(%rbp), %esi
	movzbl	-13(%rbp), %r8d
	movl	%esi, -20(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-20(%rbp), %ecx         # 4-byte Reload
	callq	gtk_widget_add_accelerator
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	add_accelerator, .Lfunc_end1-add_accelerator
	.cfi_endproc

	.globl	insert_item_with_label
	.align	16, 0x90
	.type	insert_item_with_label,@function
insert_item_with_label:                 # @insert_item_with_label
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_image_menu_item_new_with_mnemonic
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_menu_shell_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movl	-12(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_menu_shell_insert
	movabsq	$.L.str, %rsi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	insert_item_with_label, .Lfunc_end2-insert_item_with_label
	.cfi_endproc

	.type	accelerator_group,@object # @accelerator_group
	.local	accelerator_group
	.comm	accelerator_group,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"activate"
	.size	.L.str, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
