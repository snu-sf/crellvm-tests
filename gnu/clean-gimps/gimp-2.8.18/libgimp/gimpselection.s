	.text
	.file	"gimpselection.bc"
	.globl	gimp_selection_float
	.align	16, 0x90
	.type	gimp_selection_float,@function
gimp_selection_float:                   # @gimp_selection_float
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	_gimp_selection_float
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_selection_float, .Lfunc_end0-gimp_selection_float
	.cfi_endproc

	.globl	gimp_selection_clear
	.align	16, 0x90
	.type	gimp_selection_clear,@function
gimp_selection_clear:                   # @gimp_selection_clear
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_selection_none@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_selection_clear, .Lfunc_end1-gimp_selection_clear
	.cfi_endproc

	.hidden	_gimp_selection_float

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
