	.text
	.file	"script-fu-text-console.bc"
	.globl	script_fu_text_console_run
	.align	16, 0x90
	.type	script_fu_text_console_run,@function
script_fu_text_console_run:             # @script_fu_text_console_run
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
	movabsq	$ts_stdout_output_func, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%rax, %rdi
	movq	%r10, %rsi
	callq	ts_register_output_func
	callq	ts_print_welcome
	movl	$1, %edi
	callq	gimp_plugin_set_pdb_error_handler
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	ts_interpret_stdin
	xorl	%edi, %edi
	callq	gimp_plugin_set_pdb_error_handler
	movabsq	$script_fu_text_console_run.values, %rcx
	movl	$21, script_fu_text_console_run.values
	movl	$3, script_fu_text_console_run.values+8
	movq	-32(%rbp), %rdx
	movl	$1, (%rdx)
	movq	-40(%rbp), %rdx
	movq	%rcx, (%rdx)
	movl	%eax, -48(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	script_fu_text_console_run, .Lfunc_end0-script_fu_text_console_run
	.cfi_endproc

	.type	script_fu_text_console_run.values,@object # @script_fu_text_console_run.values
	.local	script_fu_text_console_run.values
	.comm	script_fu_text_console_run.values,40,16

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
