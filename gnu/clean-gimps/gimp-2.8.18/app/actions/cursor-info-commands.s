	.text
	.file	"cursor-info-commands.bc"
	.globl	cursor_info_sample_merged_cmd_callback
	.align	16, 0x90
	.type	cursor_info_sample_merged_cmd_callback,@function
cursor_info_sample_merged_cmd_callback: # @cursor_info_sample_merged_cmd_callback
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_cursor_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_cursor_view_set_sample_merged
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cursor_info_sample_merged_cmd_callback, .Lfunc_end0-cursor_info_sample_merged_cmd_callback
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
