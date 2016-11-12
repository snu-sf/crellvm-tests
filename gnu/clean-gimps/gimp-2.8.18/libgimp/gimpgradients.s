	.text
	.file	"gimpgradients.bc"
	.globl	gimp_gradients_get_gradient
	.align	16, 0x90
	.type	gimp_gradients_get_gradient,@function
gimp_gradients_get_gradient:            # @gimp_gradients_get_gradient
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
	callq	gimp_context_get_gradient@PLT
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_gradients_get_gradient, .Lfunc_end0-gimp_gradients_get_gradient
	.cfi_endproc

	.globl	gimp_gradients_set_gradient
	.align	16, 0x90
	.type	gimp_gradients_set_gradient,@function
gimp_gradients_set_gradient:            # @gimp_gradients_set_gradient
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
	callq	gimp_context_set_gradient@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_gradients_set_gradient, .Lfunc_end1-gimp_gradients_set_gradient
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
