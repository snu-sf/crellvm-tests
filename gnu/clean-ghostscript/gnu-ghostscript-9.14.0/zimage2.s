	.text
	.file	"zimage2.bc"
	.globl	process_non_source_image
	.align	16, 0x90
	.type	process_non_source_image,@function
process_non_source_image:               # @process_non_source_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rax
	leaq	(%rsp), %rcx
	xorl	%edx, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	gs_image_begin_typed
	popq	%rdx
	retq
.Lfunc_end0:
	.size	process_non_source_image, .Lfunc_end0-process_non_source_image
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
