	.text
	.file	"gimppalette.bc"
	.globl	gimp_palette_get_foreground
	.align	16, 0x90
	.type	gimp_palette_get_foreground,@function
gimp_palette_get_foreground:            # @gimp_palette_get_foreground
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
	callq	gimp_context_get_foreground@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_palette_get_foreground, .Lfunc_end0-gimp_palette_get_foreground
	.cfi_endproc

	.globl	gimp_palette_get_background
	.align	16, 0x90
	.type	gimp_palette_get_background,@function
gimp_palette_get_background:            # @gimp_palette_get_background
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
	callq	gimp_context_get_background@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_palette_get_background, .Lfunc_end1-gimp_palette_get_background
	.cfi_endproc

	.globl	gimp_palette_set_foreground
	.align	16, 0x90
	.type	gimp_palette_set_foreground,@function
gimp_palette_set_foreground:            # @gimp_palette_set_foreground
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_context_set_foreground@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_palette_set_foreground, .Lfunc_end2-gimp_palette_set_foreground
	.cfi_endproc

	.globl	gimp_palette_set_background
	.align	16, 0x90
	.type	gimp_palette_set_background,@function
gimp_palette_set_background:            # @gimp_palette_set_background
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_context_set_background@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_palette_set_background, .Lfunc_end3-gimp_palette_set_background
	.cfi_endproc

	.globl	gimp_palette_set_default_colors
	.align	16, 0x90
	.type	gimp_palette_set_default_colors,@function
gimp_palette_set_default_colors:        # @gimp_palette_set_default_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	callq	gimp_context_set_default_colors@PLT
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_palette_set_default_colors, .Lfunc_end4-gimp_palette_set_default_colors
	.cfi_endproc

	.globl	gimp_palette_swap_colors
	.align	16, 0x90
	.type	gimp_palette_swap_colors,@function
gimp_palette_swap_colors:               # @gimp_palette_swap_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	callq	gimp_context_swap_colors@PLT
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_palette_swap_colors, .Lfunc_end5-gimp_palette_swap_colors
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
