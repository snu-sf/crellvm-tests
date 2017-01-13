	.text
	.file	"debug-actions.bc"
	.globl	debug_actions_setup
	.align	16, 0x90
	.type	debug_actions_setup,@function
debug_actions_setup:                    # @debug_actions_setup
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	debug_actions_setup, .Lfunc_end0-debug_actions_setup
	.cfi_endproc

	.globl	debug_actions_update
	.align	16, 0x90
	.type	debug_actions_update,@function
debug_actions_update:                   # @debug_actions_update
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	debug_actions_update, .Lfunc_end1-debug_actions_update
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
