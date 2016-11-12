	.text
	.file	"fonts-commands.bc"
	.globl	fonts_refresh_cmd_callback
	.align	16, 0x90
	.type	fonts_refresh_cmd_callback,@function
fonts_refresh_cmd_callback:             # @fonts_refresh_cmd_callback
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_fonts_load
.LBB0_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fonts_refresh_cmd_callback, .Lfunc_end0-fonts_refresh_cmd_callback
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
