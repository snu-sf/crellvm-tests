	.text
	.file	"gimp-composite-mmx.bc"
	.globl	gimp_composite_addition_rgba8_rgba8_rgba8_mmx
	.align	16, 0x90
	.type	gimp_composite_addition_rgba8_rgba8_rgba8_mmx,@function
gimp_composite_addition_rgba8_rgba8_rgba8_mmx: # @gimp_composite_addition_rgba8_rgba8_rgba8_mmx
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
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	#APP
	movq	rgba8_alpha_mask_64(%rip), %mm0
	#NO_APP
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, -40(%rbp)
	jb	.LBB0_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movq	(%rcx), %mm2
	movq	(%rdx), %mm3
	movq	%mm2, %mm4
	paddusb	%mm3, %mm4
	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	psubb	%mm4, %mm2

	pand	%mm0, %mm2
	por	%mm2, %mm1
	movq	%mm1, (%rax)

	#NO_APP
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	cmpq	$0, -40(%rbp)
	jbe	.LBB0_6
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movd	(%rcx), %mm2
	movd	(%rdx), %mm3
	movq	%mm2, %mm4
	paddusb	%mm3, %mm4
	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	psubb	%mm4, %mm2

	pand	%mm0, %mm2
	por	%mm2, %mm1
	movd	%mm1, (%rax)

	#NO_APP
.LBB0_6:                                # %if.end
	#APP
	emms
	#NO_APP
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_composite_addition_rgba8_rgba8_rgba8_mmx, .Lfunc_end0-gimp_composite_addition_rgba8_rgba8_rgba8_mmx
	.cfi_endproc

	.globl	gimp_composite_darken_rgba8_rgba8_rgba8_mmx
	.align	16, 0x90
	.type	gimp_composite_darken_rgba8_rgba8_rgba8_mmx,@function
gimp_composite_darken_rgba8_rgba8_rgba8_mmx: # @gimp_composite_darken_rgba8_rgba8_rgba8_mmx
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
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -40(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, -40(%rbp)
	jb	.LBB1_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movq	(%rcx), %mm2
	movq	(%rdx), %mm3
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	psubb	%mm4, %mm2

	movq	%mm2, (%rax)

	#NO_APP
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB1_1
.LBB1_4:                                # %for.end
	cmpq	$0, -40(%rbp)
	jbe	.LBB1_6
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movd	(%rcx), %mm2
	movd	(%rdx), %mm3
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	psubb	%mm4, %mm2

	movd	%mm2, (%rax)

	#NO_APP
.LBB1_6:                                # %if.end
	#APP
	emms
	#NO_APP
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_composite_darken_rgba8_rgba8_rgba8_mmx, .Lfunc_end1-gimp_composite_darken_rgba8_rgba8_rgba8_mmx
	.cfi_endproc

	.globl	gimp_composite_difference_rgba8_rgba8_rgba8_mmx
	.align	16, 0x90
	.type	gimp_composite_difference_rgba8_rgba8_rgba8_mmx,@function
gimp_composite_difference_rgba8_rgba8_rgba8_mmx: # @gimp_composite_difference_rgba8_rgba8_rgba8_mmx
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	#APP
	movq	rgba8_alpha_mask_64(%rip), %mm0
	#NO_APP
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, -40(%rbp)
	jb	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movq	(%rcx), %mm2
	movq	(%rdx), %mm3
	movq	%mm2, %mm4
	movq	%mm3, %mm5
	psubusb	%mm3, %mm4
	psubusb	%mm2, %mm5
	paddb	%mm5, %mm4
	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	psubb	%mm4, %mm2

	pand	%mm0, %mm2
	por	%mm2, %mm1
	movq	%mm1, (%rax)

	#NO_APP
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	cmpq	$0, -40(%rbp)
	jbe	.LBB2_6
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movd	(%rcx), %mm2
	movd	(%rdx), %mm3
	movq	%mm2, %mm4
	movq	%mm3, %mm5
	psubusb	%mm3, %mm4
	psubusb	%mm2, %mm5
	paddb	%mm5, %mm4
	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	psubb	%mm4, %mm2

	pand	%mm0, %mm2
	por	%mm2, %mm1
	movd	%mm1, (%rax)

	#NO_APP
.LBB2_6:                                # %if.end
	#APP
	emms
	#NO_APP
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_composite_difference_rgba8_rgba8_rgba8_mmx, .Lfunc_end2-gimp_composite_difference_rgba8_rgba8_rgba8_mmx
	.cfi_endproc

	.globl	gimp_composite_grain_extract_rgba8_rgba8_rgba8_mmx
	.align	16, 0x90
	.type	gimp_composite_grain_extract_rgba8_rgba8_rgba8_mmx,@function
gimp_composite_grain_extract_rgba8_rgba8_rgba8_mmx: # @gimp_composite_grain_extract_rgba8_rgba8_rgba8_mmx
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	#APP
	movq	rgba8_alpha_mask_64(%rip), %mm0
	pxor	%mm6, %mm6
	movq	rgba8_w128_64(%rip), %mm7

	#NO_APP
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, -40(%rbp)
	jb	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movq	(%rcx), %mm2
	movq	(%rdx), %mm3
	movq	%mm2, %mm4
	punpcklbw	%mm6, %mm4
	movq	%mm3, %mm5
	punpcklbw	%mm6, %mm5
	psubw	%mm5, %mm4
	paddw	%mm7, %mm4
	movq	%mm4, %mm1
	movq	%mm2, %mm4
	punpckhbw	%mm6, %mm4
	movq	%mm3, %mm5
	punpckhbw	%mm6, %mm5
	psubw	%mm5, %mm4
	paddw	%mm7, %mm4
	packuswb	%mm4, %mm1
	movq	%mm1, %mm4
	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	psubb	%mm4, %mm2

	pand	%mm0, %mm2
	por	%mm2, %mm1
	movq	%mm1, (%rax)

	#NO_APP
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	cmpq	$0, -40(%rbp)
	jbe	.LBB3_6
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movd	(%rcx), %mm2
	movd	(%rdx), %mm3
	movq	%mm2, %mm4
	punpcklbw	%mm6, %mm4
	movq	%mm3, %mm5
	punpcklbw	%mm6, %mm5
	psubw	%mm5, %mm4
	paddw	%mm7, %mm4
	movq	%mm4, %mm1
	packuswb	%mm6, %mm1
	movq	%mm1, %mm4
	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	psubb	%mm4, %mm2

	pand	%mm0, %mm2
	por	%mm2, %mm1
	movd	%mm1, (%rax)

	#NO_APP
.LBB3_6:                                # %if.end
	#APP
	emms
	#NO_APP
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_composite_grain_extract_rgba8_rgba8_rgba8_mmx, .Lfunc_end3-gimp_composite_grain_extract_rgba8_rgba8_rgba8_mmx
	.cfi_endproc

	.globl	gimp_composite_grain_merge_rgba8_rgba8_rgba8_mmx
	.align	16, 0x90
	.type	gimp_composite_grain_merge_rgba8_rgba8_rgba8_mmx,@function
gimp_composite_grain_merge_rgba8_rgba8_rgba8_mmx: # @gimp_composite_grain_merge_rgba8_rgba8_rgba8_mmx
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	#APP
	movq	rgba8_alpha_mask_64(%rip), %mm0
	pxor	%mm6, %mm6
	movq	rgba8_w128_64(%rip), %mm7

	#NO_APP
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, -40(%rbp)
	jb	.LBB4_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movq	(%rcx), %mm2
	movq	(%rdx), %mm3
	movq	%mm2, %mm4
	punpcklbw	%mm6, %mm4
	movq	%mm3, %mm5
	punpcklbw	%mm6, %mm5
	paddw	%mm5, %mm4
	psubw	%mm7, %mm4
	movq	%mm2, %mm1
	punpckhbw	%mm6, %mm1
	movq	%mm3, %mm5
	punpckhbw	%mm6, %mm5
	paddw	%mm5, %mm1
	psubw	%mm7, %mm1
	packuswb	%mm1, %mm4
	movq	%mm2, %mm5
	psubusb	%mm3, %mm5
	psubb	%mm5, %mm2

	pand	%mm0, %mm2
	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	por	%mm2, %mm1
	movq	%mm1, (%rax)

	#NO_APP
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB4_1
.LBB4_4:                                # %for.end
	cmpq	$0, -40(%rbp)
	jbe	.LBB4_6
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movd	(%rcx), %mm2
	movd	(%rdx), %mm3
	movq	%mm2, %mm4
	punpcklbw	%mm6, %mm4
	movq	%mm3, %mm5
	punpcklbw	%mm6, %mm5
	paddw	%mm5, %mm4
	psubw	%mm7, %mm4
	movq	%mm4, %mm1
	packuswb	%mm6, %mm1
	movq	%mm1, %mm4
	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	psubb	%mm4, %mm2

	pand	%mm0, %mm2
	por	%mm2, %mm1
	movd	%mm1, (%rax)

	#NO_APP
.LBB4_6:                                # %if.end
	#APP
	emms
	#NO_APP
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_composite_grain_merge_rgba8_rgba8_rgba8_mmx, .Lfunc_end4-gimp_composite_grain_merge_rgba8_rgba8_rgba8_mmx
	.cfi_endproc

	.globl	gimp_composite_lighten_rgba8_rgba8_rgba8_mmx
	.align	16, 0x90
	.type	gimp_composite_lighten_rgba8_rgba8_rgba8_mmx,@function
gimp_composite_lighten_rgba8_rgba8_rgba8_mmx: # @gimp_composite_lighten_rgba8_rgba8_rgba8_mmx
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	#APP
	movq	rgba8_alpha_mask_64(%rip), %mm0
	#NO_APP
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, -40(%rbp)
	jb	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movq	(%rcx), %mm2
	movq	(%rdx), %mm3
	movq	%mm2, %mm4
	movq	%mm3, %mm5
	psubusb	%mm4, %mm5
	paddb	%mm5, %mm4

	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	movq	%mm3, %mm4
	psubusb	%mm2, %mm4
	psubb	%mm4, %mm3

	pand	%mm0, %mm3
	por	%mm3, %mm1
	movq	%mm1, (%rax)

	#NO_APP
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	cmpq	$0, -40(%rbp)
	jbe	.LBB5_6
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movd	(%rcx), %mm2
	movd	(%rdx), %mm3
	movq	%mm2, %mm4
	movq	%mm3, %mm5
	psubusb	%mm4, %mm5
	paddb	%mm5, %mm4

	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	movq	%mm3, %mm4
	psubusb	%mm2, %mm4
	psubb	%mm4, %mm3

	pand	%mm0, %mm3
	por	%mm3, %mm1
	movd	%mm1, (%rax)

	#NO_APP
.LBB5_6:                                # %if.end
	#APP
	emms
	#NO_APP
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_composite_lighten_rgba8_rgba8_rgba8_mmx, .Lfunc_end5-gimp_composite_lighten_rgba8_rgba8_rgba8_mmx
	.cfi_endproc

	.globl	gimp_composite_multiply_rgba8_rgba8_rgba8_mmx
	.align	16, 0x90
	.type	gimp_composite_multiply_rgba8_rgba8_rgba8_mmx,@function
gimp_composite_multiply_rgba8_rgba8_rgba8_mmx: # @gimp_composite_multiply_rgba8_rgba8_rgba8_mmx
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	#APP
	movq	rgba8_alpha_mask_64(%rip), %mm0
	movq	rgba8_w128_64(%rip), %mm7
	pxor	%mm6, %mm6

	#NO_APP
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, -40(%rbp)
	jb	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movq	(%rcx), %mm2
	movq	(%rdx), %mm3
	movq	%mm2, %mm1
	punpcklbw	%mm6, %mm1
	movq	%mm3, %mm5
	punpcklbw	%mm6, %mm5
	pmullw	%mm1, %mm5
	paddw	%mm7, %mm5
	movq	%mm5, %mm1
	psrlw	$8, %mm1
	paddw	%mm5, %mm1
	psrlw	$8, %mm1
	movq	%mm2, %mm4
	punpckhbw	%mm6, %mm4
	movq	%mm3, %mm5
	punpckhbw	%mm6, %mm5
	pmullw	%mm4, %mm5
	paddw	%mm7, %mm5
	movq	%mm5, %mm4
	psrlw	$8, %mm4
	paddw	%mm5, %mm4
	psrlw	$8, %mm4
	packuswb	%mm4, %mm1
	movq	%mm0, %mm4
	pandn	%mm1, %mm4
	movq	%mm4, %mm1
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	psubb	%mm4, %mm2

	pand	%mm0, %mm2
	por	%mm2, %mm1
	movq	%mm1, (%rax)

	#NO_APP
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	cmpq	$0, -40(%rbp)
	jbe	.LBB6_6
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movd	(%rcx), %mm2
	movd	(%rdx), %mm3
	movq	%mm2, %mm1
	punpcklbw	%mm6, %mm1
	movq	%mm3, %mm5
	punpcklbw	%mm6, %mm5
	pmullw	%mm1, %mm5
	paddw	%mm7, %mm5
	movq	%mm5, %mm1
	psrlw	$8, %mm1
	paddw	%mm5, %mm1
	psrlw	$8, %mm1
	packuswb	%mm6, %mm1
	movq	%mm0, %mm4
	pandn	%mm1, %mm4
	movq	%mm4, %mm1
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	psubb	%mm4, %mm2

	pand	%mm0, %mm2
	por	%mm2, %mm1
	movd	%mm1, (%rax)

	#NO_APP
.LBB6_6:                                # %if.end
	#APP
	emms
	#NO_APP
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_composite_multiply_rgba8_rgba8_rgba8_mmx, .Lfunc_end6-gimp_composite_multiply_rgba8_rgba8_rgba8_mmx
	.cfi_endproc

	.globl	gimp_composite_scale_rgba8_rgba8_rgba8_mmx
	.align	16, 0x90
	.type	gimp_composite_scale_rgba8_rgba8_rgba8_mmx,@function
gimp_composite_scale_rgba8_rgba8_rgba8_mmx: # @gimp_composite_scale_rgba8_rgba8_rgba8_mmx
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
.Ltmp24:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	#APP
	pxor	%mm0, %mm0
	movl	(%rdi), %eax
	movl	%eax, %ebx
	shll	$16, %ebx
	orl	%ebx, %eax
	movd	%eax, %mm5
	movd	%eax, %mm3
	psllq	$32, %mm5
	por	%mm5, %mm3
	movq	rgba8_w128_64(%rip), %mm7

	#NO_APP
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, -40(%rbp)
	jb	.LBB7_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	#APP
	movq	(%rcx), %mm2
	movq	%mm2, %mm1
	punpcklbw	%mm0, %mm1
	movq	%mm3, %mm5
	pmullw	%mm1, %mm5
	paddw	%mm7, %mm5
	movq	%mm5, %mm1
	psrlw	$8, %mm1
	paddw	%mm5, %mm1
	psrlw	$8, %mm1

	movq	%mm2, %mm4
	punpckhbw	%mm0, %mm4
	movq	%mm3, %mm5
	pmullw	%mm4, %mm5
	paddw	%mm7, %mm5
	movq	%mm5, %mm4
	psrlw	$8, %mm4
	paddw	%mm5, %mm4
	psrlw	$8, %mm4

	packuswb	%mm4, %mm1
	movq	%mm1, (%rax)

	#NO_APP
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB7_1
.LBB7_4:                                # %for.end
	cmpq	$0, -40(%rbp)
	jbe	.LBB7_6
# BB#5:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	#APP
	movd	(%rcx), %mm2
	movq	%mm2, %mm1
	punpcklbw	%mm0, %mm1
	movq	%mm3, %mm5
	pmullw	%mm1, %mm5
	paddw	%mm7, %mm5
	movq	%mm5, %mm1
	psrlw	$8, %mm1
	paddw	%mm5, %mm1
	psrlw	$8, %mm1

	packuswb	%mm0, %mm1
	movd	%mm1, (%rax)

	#NO_APP
.LBB7_6:                                # %if.end
	#APP
	emms
	#NO_APP
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_composite_scale_rgba8_rgba8_rgba8_mmx, .Lfunc_end7-gimp_composite_scale_rgba8_rgba8_rgba8_mmx
	.cfi_endproc

	.globl	gimp_composite_screen_rgba8_rgba8_rgba8_mmx
	.align	16, 0x90
	.type	gimp_composite_screen_rgba8_rgba8_rgba8_mmx,@function
gimp_composite_screen_rgba8_rgba8_rgba8_mmx: # @gimp_composite_screen_rgba8_rgba8_rgba8_mmx
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	#APP
	pxor	%mm6, %mm6
	movq	rgba8_alpha_mask_64(%rip), %mm0
	movq	rgba8_w128_64(%rip), %mm7

	#NO_APP
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, -40(%rbp)
	jb	.LBB8_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movq	(%rcx), %mm2
	movq	(%rdx), %mm3
	pcmpeqb	%mm4, %mm4
	psubb	%mm2, %mm4
	pcmpeqb	%mm5, %mm5
	psubb	%mm3, %mm5
	punpcklbw	%mm6, %mm4
	punpcklbw	%mm6, %mm5
	pmullw	%mm4, %mm5
	paddw	%mm7, %mm5
	movq	%mm5, %mm1
	psrlw	$8, %mm1
	paddw	%mm5, %mm1
	psrlw	$8, %mm1
	pcmpeqb	%mm4, %mm4
	psubb	%mm2, %mm4
	pcmpeqb	%mm5, %mm5
	psubb	%mm3, %mm5
	punpckhbw	%mm6, %mm4
	punpckhbw	%mm6, %mm5
	pmullw	%mm4, %mm5
	paddw	%mm7, %mm5
	movq	%mm5, %mm4
	psrlw	$8, %mm4
	paddw	%mm5, %mm4
	psrlw	$8, %mm4
	packuswb	%mm4, %mm1
	pcmpeqb	%mm4, %mm4
	psubb	%mm1, %mm4
	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	movq	%mm3, %mm4
	psubusb	%mm2, %mm4
	psubb	%mm4, %mm3

	pand	%mm0, %mm3
	por	%mm3, %mm1
	movq	%mm1, (%rax)

	#NO_APP
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB8_1
.LBB8_4:                                # %for.end
	cmpq	$0, -40(%rbp)
	jbe	.LBB8_6
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movd	(%rcx), %mm2
	movd	(%rdx), %mm3
	pcmpeqb	%mm4, %mm4
	psubb	%mm2, %mm4
	pcmpeqb	%mm5, %mm5
	psubb	%mm3, %mm5
	punpcklbw	%mm6, %mm4
	punpcklbw	%mm6, %mm5
	pmullw	%mm4, %mm5
	paddw	%mm7, %mm5
	movq	%mm5, %mm1
	psrlw	$8, %mm1
	paddw	%mm5, %mm1
	psrlw	$8, %mm1
	pcmpeqb	%mm4, %mm4
	psubb	%mm2, %mm4
	pcmpeqb	%mm5, %mm5
	psubb	%mm3, %mm5
	punpckhbw	%mm6, %mm4
	punpckhbw	%mm6, %mm5
	pmullw	%mm4, %mm5
	paddw	%mm7, %mm5
	movq	%mm5, %mm4
	psrlw	$8, %mm4
	paddw	%mm5, %mm4
	psrlw	$8, %mm4
	packuswb	%mm4, %mm1
	pcmpeqb	%mm4, %mm4
	psubb	%mm1, %mm4
	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	movq	%mm3, %mm4
	psubusb	%mm2, %mm4
	psubb	%mm4, %mm3

	pand	%mm0, %mm3
	por	%mm3, %mm1
	movd	%mm1, (%rax)

	#NO_APP
.LBB8_6:                                # %if.end
	#APP
	emms
	#NO_APP
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_composite_screen_rgba8_rgba8_rgba8_mmx, .Lfunc_end8-gimp_composite_screen_rgba8_rgba8_rgba8_mmx
	.cfi_endproc

	.globl	gimp_composite_subtract_rgba8_rgba8_rgba8_mmx
	.align	16, 0x90
	.type	gimp_composite_subtract_rgba8_rgba8_rgba8_mmx,@function
gimp_composite_subtract_rgba8_rgba8_rgba8_mmx: # @gimp_composite_subtract_rgba8_rgba8_rgba8_mmx
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	#APP
	movq	rgba8_alpha_mask_64(%rip), %mm0
	#NO_APP
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, -40(%rbp)
	jb	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movq	(%rcx), %mm2
	movq	(%rdx), %mm3
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	psubb	%mm4, %mm2

	pand	%mm0, %mm2
	por	%mm2, %mm1
	movq	%mm1, (%rax)

	#NO_APP
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	cmpq	$0, -40(%rbp)
	jbe	.LBB9_6
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movd	(%rcx), %mm2
	movd	(%rdx), %mm3
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	psubb	%mm4, %mm2

	pand	%mm0, %mm2
	por	%mm2, %mm1
	movd	%mm1, (%rax)

	#NO_APP
.LBB9_6:                                # %if.end
	#APP
	emms
	#NO_APP
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_composite_subtract_rgba8_rgba8_rgba8_mmx, .Lfunc_end9-gimp_composite_subtract_rgba8_rgba8_rgba8_mmx
	.cfi_endproc

	.globl	gimp_composite_swap_rgba8_rgba8_rgba8_mmx
	.align	16, 0x90
	.type	gimp_composite_swap_rgba8_rgba8_rgba8_mmx,@function
gimp_composite_swap_rgba8_rgba8_rgba8_mmx: # @gimp_composite_swap_rgba8_rgba8_rgba8_mmx
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -32(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, -32(%rbp)
	jb	.LBB10_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	#APP
	movq	(%rax), %mm2
	movq	(%rcx), %mm3
	movq	%mm3, (%rax)
	movq	%mm2, (%rcx)

	#NO_APP
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB10_1
.LBB10_4:                               # %for.end
	cmpq	$0, -32(%rbp)
	jbe	.LBB10_6
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	#APP
	movd	(%rax), %mm2
	movd	(%rcx), %mm3
	movd	%mm3, (%rax)
	movd	%mm2, (%rcx)

	#NO_APP
.LBB10_6:                               # %if.end
	#APP
	emms
	#NO_APP
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_composite_swap_rgba8_rgba8_rgba8_mmx, .Lfunc_end10-gimp_composite_swap_rgba8_rgba8_rgba8_mmx
	.cfi_endproc

	.globl	gimp_composite_addition_va8_va8_va8_mmx
	.align	16, 0x90
	.type	gimp_composite_addition_va8_va8_va8_mmx,@function
gimp_composite_addition_va8_va8_va8_mmx: # @gimp_composite_addition_va8_va8_va8_mmx
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -88(%rbp)
	#APP
	movq	va8_alpha_mask_64(%rip), %mm0
	#NO_APP
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$4, -88(%rbp)
	jb	.LBB11_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movq	(%rcx), %mm2
	movq	(%rdx), %mm3
	movq	%mm2, %mm4
	paddusb	%mm3, %mm4
	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	psubb	%mm4, %mm2

	pand	%mm0, %mm2
	por	%mm2, %mm1
	movq	%mm1, (%rax)

	#NO_APP
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-88(%rbp), %rax
	subq	$4, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB11_1
.LBB11_4:                               # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB11_5:                               # %for.cond.4
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, -88(%rbp)
	jb	.LBB11_8
# BB#6:                                 # %for.body.6
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	#APP
	movd	(%rcx), %mm2
	movd	(%rdx), %mm3
	movq	%mm2, %mm4
	paddusb	%mm3, %mm4
	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	psubb	%mm4, %mm2

	pand	%mm0, %mm2
	por	%mm2, %mm1
	movd	%mm1, (%rax)

	#NO_APP
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -56(%rbp)
# BB#7:                                 # %for.inc.10
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	-88(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB11_5
.LBB11_8:                               # %for.end.12
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB11_9:                               # %for.cond.13
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$1, -88(%rbp)
	jb	.LBB11_12
# BB#10:                                # %for.body.15
                                        #   in Loop: Header=BB11_9 Depth=1
	movq	-80(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	-96(%rbp), %rsi         # 8-byte Reload
	#APP
	movw	(%rcx), %ax
	movd	%eax, %mm2
	movw	(%rdx), %ax
	movd	%eax, %mm3
	movq	%mm2, %mm4
	paddusb	%mm3, %mm4
	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	psubb	%mm4, %mm2

	pand	%mm0, %mm2
	por	%mm2, %mm1
	movd	%mm1, %eax
	movw	%ax, (%rsi)

	#NO_APP
	movq	-64(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -64(%rbp)
	movq	-72(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -72(%rbp)
	movq	-80(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -80(%rbp)
# BB#11:                                # %for.inc.19
                                        #   in Loop: Header=BB11_9 Depth=1
	movq	-88(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB11_9
.LBB11_12:                              # %for.end.21
	#APP
	emms
	#NO_APP
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_composite_addition_va8_va8_va8_mmx, .Lfunc_end11-gimp_composite_addition_va8_va8_va8_mmx
	.cfi_endproc

	.globl	gimp_composite_subtract_va8_va8_va8_mmx
	.align	16, 0x90
	.type	gimp_composite_subtract_va8_va8_va8_mmx,@function
gimp_composite_subtract_va8_va8_va8_mmx: # @gimp_composite_subtract_va8_va8_va8_mmx
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -88(%rbp)
	#APP
	movq	va8_alpha_mask_64(%rip), %mm0
	#NO_APP
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$4, -88(%rbp)
	jb	.LBB12_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movq	(%rcx), %mm2
	movq	(%rdx), %mm3
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	psubb	%mm4, %mm2

	pand	%mm0, %mm2
	por	%mm2, %mm1
	movq	%mm1, (%rax)

	#NO_APP
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	subq	$4, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB12_5:                               # %for.cond.4
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, -88(%rbp)
	jb	.LBB12_8
# BB#6:                                 # %for.body.6
                                        #   in Loop: Header=BB12_5 Depth=1
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	#APP
	movd	(%rcx), %mm2
	movd	(%rdx), %mm3
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	psubb	%mm4, %mm2

	pand	%mm0, %mm2
	por	%mm2, %mm1
	movd	%mm1, (%rax)

	#NO_APP
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -56(%rbp)
# BB#7:                                 # %for.inc.10
                                        #   in Loop: Header=BB12_5 Depth=1
	movq	-88(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB12_5
.LBB12_8:                               # %for.end.12
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB12_9:                               # %for.cond.13
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$1, -88(%rbp)
	jb	.LBB12_12
# BB#10:                                # %for.body.15
                                        #   in Loop: Header=BB12_9 Depth=1
	movq	-80(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	-96(%rbp), %rsi         # 8-byte Reload
	#APP
	movw	(%rcx), %ax
	movd	%eax, %mm2
	movw	(%rdx), %ax
	movd	%eax, %mm3
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	movq	%mm2, %mm4
	psubusb	%mm3, %mm4
	psubb	%mm4, %mm2

	pand	%mm0, %mm2
	por	%mm2, %mm1
	movd	%mm1, %eax
	movw	%ax, (%rsi)

	#NO_APP
	movq	-64(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -64(%rbp)
	movq	-72(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -72(%rbp)
	movq	-80(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -80(%rbp)
# BB#11:                                # %for.inc.19
                                        #   in Loop: Header=BB12_9 Depth=1
	movq	-88(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB12_9
.LBB12_12:                              # %for.end.21
	#APP
	emms
	#NO_APP
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_composite_subtract_va8_va8_va8_mmx, .Lfunc_end12-gimp_composite_subtract_va8_va8_va8_mmx
	.cfi_endproc

	.type	rgba8_alpha_mask_64,@object # @rgba8_alpha_mask_64
	.section	.rodata,"a",@progbits
	.globl	rgba8_alpha_mask_64
	.align	4
rgba8_alpha_mask_64:
	.long	4278190080              # 0xff000000
	.long	4278190080              # 0xff000000
	.size	rgba8_alpha_mask_64, 8

	.type	rgba8_b1_64,@object     # @rgba8_b1_64
	.globl	rgba8_b1_64
	.align	4
rgba8_b1_64:
	.zero	8,1
	.size	rgba8_b1_64, 8

	.type	rgba8_b255_64,@object   # @rgba8_b255_64
	.globl	rgba8_b255_64
	.align	4
rgba8_b255_64:
	.zero	8,255
	.size	rgba8_b255_64, 8

	.type	rgba8_w1_64,@object     # @rgba8_w1_64
	.globl	rgba8_w1_64
	.align	4
rgba8_w1_64:
	.long	65537                   # 0x10001
	.long	65537                   # 0x10001
	.size	rgba8_w1_64, 8

	.type	rgba8_w2_64,@object     # @rgba8_w2_64
	.globl	rgba8_w2_64
	.align	4
rgba8_w2_64:
	.long	131074                  # 0x20002
	.long	131074                  # 0x20002
	.size	rgba8_w2_64, 8

	.type	rgba8_w128_64,@object   # @rgba8_w128_64
	.globl	rgba8_w128_64
	.align	4
rgba8_w128_64:
	.long	8388736                 # 0x800080
	.long	8388736                 # 0x800080
	.size	rgba8_w128_64, 8

	.type	rgba8_w256_64,@object   # @rgba8_w256_64
	.globl	rgba8_w256_64
	.align	4
rgba8_w256_64:
	.long	16777472                # 0x1000100
	.long	16777472                # 0x1000100
	.size	rgba8_w256_64, 8

	.type	rgba8_w255_64,@object   # @rgba8_w255_64
	.globl	rgba8_w255_64
	.align	4
rgba8_w255_64:
	.long	16711935                # 0xff00ff
	.long	16711935                # 0xff00ff
	.size	rgba8_w255_64, 8

	.type	va8_alpha_mask_64,@object # @va8_alpha_mask_64
	.globl	va8_alpha_mask_64
	.align	4
va8_alpha_mask_64:
	.long	4278255360              # 0xff00ff00
	.long	4278255360              # 0xff00ff00
	.size	va8_alpha_mask_64, 8

	.type	va8_b255_64,@object     # @va8_b255_64
	.globl	va8_b255_64
	.align	4
va8_b255_64:
	.zero	8,255
	.size	va8_b255_64, 8

	.type	va8_w1_64,@object       # @va8_w1_64
	.globl	va8_w1_64
	.align	4
va8_w1_64:
	.long	65537                   # 0x10001
	.long	65537                   # 0x10001
	.size	va8_w1_64, 8

	.type	va8_w255_64,@object     # @va8_w255_64
	.globl	va8_w255_64
	.align	4
va8_w255_64:
	.long	16711935                # 0xff00ff
	.long	16711935                # 0xff00ff
	.size	va8_w255_64, 8

	.type	va8_w128_64,@object     # @va8_w128_64
	.globl	va8_w128_64
	.align	4
va8_w128_64:
	.long	8388736                 # 0x800080
	.long	8388736                 # 0x800080
	.size	va8_w128_64, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
