	.text
	.file	"gimpbrushes.bc"
	.globl	gimp_brushes_get_opacity
	.align	16, 0x90
	.type	gimp_brushes_get_opacity,@function
gimp_brushes_get_opacity:               # @gimp_brushes_get_opacity
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
	callq	gimp_context_get_opacity@PLT
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brushes_get_opacity, .Lfunc_end0-gimp_brushes_get_opacity
	.cfi_endproc

	.globl	gimp_brushes_set_opacity
	.align	16, 0x90
	.type	gimp_brushes_set_opacity,@function
gimp_brushes_set_opacity:               # @gimp_brushes_set_opacity
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
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_context_set_opacity@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_brushes_set_opacity, .Lfunc_end1-gimp_brushes_set_opacity
	.cfi_endproc

	.globl	gimp_brushes_get_paint_mode
	.align	16, 0x90
	.type	gimp_brushes_get_paint_mode,@function
gimp_brushes_get_paint_mode:            # @gimp_brushes_get_paint_mode
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
	callq	gimp_context_get_paint_mode@PLT
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_brushes_get_paint_mode, .Lfunc_end2-gimp_brushes_get_paint_mode
	.cfi_endproc

	.globl	gimp_brushes_set_paint_mode
	.align	16, 0x90
	.type	gimp_brushes_set_paint_mode,@function
gimp_brushes_set_paint_mode:            # @gimp_brushes_set_paint_mode
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_context_set_paint_mode@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_brushes_set_paint_mode, .Lfunc_end3-gimp_brushes_set_paint_mode
	.cfi_endproc

	.globl	gimp_brushes_set_brush
	.align	16, 0x90
	.type	gimp_brushes_set_brush,@function
gimp_brushes_set_brush:                 # @gimp_brushes_set_brush
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_context_set_brush@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_brushes_set_brush, .Lfunc_end4-gimp_brushes_set_brush
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
