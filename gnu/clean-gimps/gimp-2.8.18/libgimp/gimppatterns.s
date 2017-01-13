	.text
	.file	"gimppatterns.bc"
	.globl	gimp_patterns_set_pattern
	.align	16, 0x90
	.type	gimp_patterns_set_pattern,@function
gimp_patterns_set_pattern:              # @gimp_patterns_set_pattern
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
	movq	-8(%rbp), %rdi
	callq	gimp_context_set_pattern@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_patterns_set_pattern, .Lfunc_end0-gimp_patterns_set_pattern
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
