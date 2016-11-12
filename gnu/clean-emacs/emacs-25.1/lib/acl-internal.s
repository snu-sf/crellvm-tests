	.text
	.file	"acl-internal.bc"
	.globl	free_permission_context
	.align	16, 0x90
	.type	free_permission_context,@function
free_permission_context:                # @free_permission_context
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
	.size	free_permission_context, .Lfunc_end0-free_permission_context
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
