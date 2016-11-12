	.text
	.file	"help-commands.bc"
	.globl	help_help_cmd_callback
	.align	16, 0x90
	.type	help_help_cmd_callback,@function
help_help_cmd_callback:                 # @help_help_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_5
.LBB0_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_4
# BB#3:                                 # %if.then.3
	jmp	.LBB0_5
.LBB0_4:                                # %if.end.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	gimp_help_show
.LBB0_5:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	help_help_cmd_callback, .Lfunc_end0-help_help_cmd_callback
	.cfi_endproc

	.globl	help_context_help_cmd_callback
	.align	16, 0x90
	.type	help_context_help_cmd_callback,@function
help_context_help_cmd_callback:         # @help_context_help_cmd_callback
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_context_help
.LBB1_3:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	help_context_help_cmd_callback, .Lfunc_end1-help_context_help_cmd_callback
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
