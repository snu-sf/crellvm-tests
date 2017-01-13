	.text
	.file	"gimppalettes.bc"
	.globl	gimp_palettes_set_palette
	.align	16, 0x90
	.type	gimp_palettes_set_palette,@function
gimp_palettes_set_palette:              # @gimp_palettes_set_palette
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
	callq	gimp_context_set_palette@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_palettes_set_palette, .Lfunc_end0-gimp_palettes_set_palette
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
