	.text
	.file	"gimp-composite-sse2.bc"
	.globl	gimp_composite_addition_rgba8_rgba8_rgba8_sse2
	.align	16, 0x90
	.type	gimp_composite_addition_rgba8_rgba8_rgba8_sse2,@function
gimp_composite_addition_rgba8_rgba8_rgba8_sse2: # @gimp_composite_addition_rgba8_rgba8_rgba8_sse2
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
	movq	%rdi, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -64(%rbp)
	#APP
	movdqu	rgba8_alpha_mask_128(%rip), %xmm0
	movq	rgba8_alpha_mask_64(%rip), %mm0
	#NO_APP
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$4, -64(%rbp)
	jb	.LBB0_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	#APP
	movdqu	(%rcx), %xmm2
	movdqu	(%rdx), %xmm3
	movdqu	%xmm2, %xmm4
	paddusb	%xmm3, %xmm4
	movdqu	%xmm0, %xmm1
	pandn	%xmm4, %xmm1
	pminub	%xmm3, %xmm2
	pand	%xmm0, %xmm2
	por	%xmm2, %xmm1
	movdqu	%xmm1, (%rax)

	#NO_APP
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -40(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	subq	$4, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB0_5:                                # %for.cond.7
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, -64(%rbp)
	jb	.LBB0_8
# BB#6:                                 # %for.body.9
                                        #   in Loop: Header=BB0_5 Depth=1
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
	pminub	%mm3, %mm2
	pand	%mm0, %mm2
	por	%mm2, %mm1
	movntq	%mm1, (%rax)

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
# BB#7:                                 # %for.inc.13
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                # %for.end.15
	cmpq	$0, -64(%rbp)
	jbe	.LBB0_10
# BB#9:                                 # %if.then
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
	pminub	%mm3, %mm2
	pand	%mm0, %mm2
	por	%mm2, %mm1
	movd	%mm1, (%rax)

	#NO_APP
.LBB0_10:                               # %if.end
	#APP
	emms
	#NO_APP
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_composite_addition_rgba8_rgba8_rgba8_sse2, .Lfunc_end0-gimp_composite_addition_rgba8_rgba8_rgba8_sse2
	.cfi_endproc

	.globl	gimp_composite_darken_rgba8_rgba8_rgba8_sse2
	.align	16, 0x90
	.type	gimp_composite_darken_rgba8_rgba8_rgba8_sse2,@function
gimp_composite_darken_rgba8_rgba8_rgba8_sse2: # @gimp_composite_darken_rgba8_rgba8_rgba8_sse2
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
	movq	%rdi, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -64(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$4, -64(%rbp)
	jb	.LBB1_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	#APP
	movdqu	(%rcx), %xmm2
	movdqu	(%rdx), %xmm3
	pminub	%xmm3, %xmm2
	movdqu	%xmm2, (%rax)

	#NO_APP
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -40(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax
	subq	$4, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB1_1
.LBB1_4:                                # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB1_5:                                # %for.cond.7
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, -64(%rbp)
	jb	.LBB1_8
# BB#6:                                 # %for.body.9
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movq	(%rcx), %mm2
	movq	(%rdx), %mm3
	pminub	%mm3, %mm2
	movntq	%mm2, (%rax)

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
# BB#7:                                 # %for.inc.13
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-64(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB1_5
.LBB1_8:                                # %for.end.15
	cmpq	$0, -64(%rbp)
	jbe	.LBB1_10
# BB#9:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movd	(%rcx), %mm2
	movd	(%rdx), %mm3
	pminub	%mm3, %mm2
	movd	%mm2, (%rax)

	#NO_APP
.LBB1_10:                               # %if.end
	#APP
	emms
	#NO_APP
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_composite_darken_rgba8_rgba8_rgba8_sse2, .Lfunc_end1-gimp_composite_darken_rgba8_rgba8_rgba8_sse2
	.cfi_endproc

	.globl	gimp_composite_difference_rgba8_rgba8_rgba8_sse2
	.align	16, 0x90
	.type	gimp_composite_difference_rgba8_rgba8_rgba8_sse2,@function
gimp_composite_difference_rgba8_rgba8_rgba8_sse2: # @gimp_composite_difference_rgba8_rgba8_rgba8_sse2
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
	movq	%rdi, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -64(%rbp)
	#APP
	movq	rgba8_alpha_mask_64(%rip), %mm0
	movdqu	rgba8_alpha_mask_128(%rip), %xmm0
	#NO_APP
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$4, -64(%rbp)
	jb	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	#APP
	movdqu	(%rcx), %xmm2
	movdqu	(%rdx), %xmm3
	movdqu	%xmm2, %xmm4
	movdqu	%xmm3, %xmm5
	psubusb	%xmm3, %xmm4
	psubusb	%xmm2, %xmm5
	paddb	%xmm5, %xmm4
	movdqu	%xmm0, %xmm1
	pandn	%xmm4, %xmm1
	pminub	%xmm3, %xmm2
	pand	%xmm0, %xmm2
	por	%xmm2, %xmm1
	movdqu	%xmm1, (%rax)

	#NO_APP
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -40(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	subq	$4, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB2_5:                                # %for.cond.7
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, -64(%rbp)
	jb	.LBB2_8
# BB#6:                                 # %for.body.9
                                        #   in Loop: Header=BB2_5 Depth=1
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
	pminub	%mm3, %mm2
	pand	%mm0, %mm2
	por	%mm2, %mm1
	movntq	%mm1, (%rax)

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
# BB#7:                                 # %for.inc.13
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB2_5
.LBB2_8:                                # %for.end.15
	cmpq	$0, -64(%rbp)
	jbe	.LBB2_10
# BB#9:                                 # %if.then
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
	pminub	%mm3, %mm2
	pand	%mm0, %mm2
	por	%mm2, %mm1
	movd	%mm1, (%rax)

	#NO_APP
.LBB2_10:                               # %if.end
	#APP
	emms
	#NO_APP
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_composite_difference_rgba8_rgba8_rgba8_sse2, .Lfunc_end2-gimp_composite_difference_rgba8_rgba8_rgba8_sse2
	.cfi_endproc

	.globl	gimp_composite_grain_extract_rgba8_rgba8_rgba8_sse2
	.align	16, 0x90
	.type	gimp_composite_grain_extract_rgba8_rgba8_rgba8_sse2,@function
gimp_composite_grain_extract_rgba8_rgba8_rgba8_sse2: # @gimp_composite_grain_extract_rgba8_rgba8_rgba8_sse2
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
	movq	%rdi, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -64(%rbp)
	#APP
	movq	rgba8_alpha_mask_64(%rip), %mm0
	pxor	%mm6, %mm6
	movq	rgba8_w128_64(%rip), %mm7
	movdqu	rgba8_alpha_mask_128(%rip), %xmm0
	pxor	%xmm6, %xmm6
	movdqu	rgba8_w128_128(%rip), %xmm7

	#NO_APP
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$4, -64(%rbp)
	jb	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	#APP
	movdqu	(%rcx), %xmm2
	movdqu	(%rdx), %xmm3
	movdqu	%xmm2, %xmm4
	punpcklbw	%xmm6, %xmm4    # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3],xmm4[4],xmm6[4],xmm4[5],xmm6[5],xmm4[6],xmm6[6],xmm4[7],xmm6[7]
	movdqu	%xmm3, %xmm5
	punpcklbw	%xmm6, %xmm5    # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1],xmm5[2],xmm6[2],xmm5[3],xmm6[3],xmm5[4],xmm6[4],xmm5[5],xmm6[5],xmm5[6],xmm6[6],xmm5[7],xmm6[7]
	psubw	%xmm5, %xmm4
	paddw	%xmm7, %xmm4
	movdqu	%xmm4, %xmm1
	movdqu	%xmm2, %xmm4
	punpckhbw	%xmm6, %xmm4    # xmm4 = xmm4[8],xmm6[8],xmm4[9],xmm6[9],xmm4[10],xmm6[10],xmm4[11],xmm6[11],xmm4[12],xmm6[12],xmm4[13],xmm6[13],xmm4[14],xmm6[14],xmm4[15],xmm6[15]
	movdqu	%xmm3, %xmm5
	punpckhbw	%xmm6, %xmm5    # xmm5 = xmm5[8],xmm6[8],xmm5[9],xmm6[9],xmm5[10],xmm6[10],xmm5[11],xmm6[11],xmm5[12],xmm6[12],xmm5[13],xmm6[13],xmm5[14],xmm6[14],xmm5[15],xmm6[15]
	psubw	%xmm5, %xmm4
	paddw	%xmm7, %xmm4
	packuswb	%xmm4, %xmm1
	movdqu	%xmm1, %xmm4
	movdqu	%xmm0, %xmm1
	pandn	%xmm4, %xmm1
	pminub	%xmm3, %xmm2
	pand	%xmm0, %xmm2
	por	%xmm2, %xmm1
	movdqu	%xmm1, (%rax)

	#NO_APP
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -40(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-64(%rbp), %rax
	subq	$4, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB3_5:                                # %for.cond.7
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, -64(%rbp)
	jb	.LBB3_8
# BB#6:                                 # %for.body.9
                                        #   in Loop: Header=BB3_5 Depth=1
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
	pminub	%mm3, %mm2
	pand	%mm0, %mm2
	por	%mm2, %mm1
	movntq	%mm1, (%rax)

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
# BB#7:                                 # %for.inc.13
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	-64(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB3_5
.LBB3_8:                                # %for.end.15
	cmpq	$0, -64(%rbp)
	jbe	.LBB3_10
# BB#9:                                 # %if.then
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
	pminub	%mm3, %mm2
	pand	%mm0, %mm2
	por	%mm2, %mm1
	movd	%mm1, (%rax)

	#NO_APP
.LBB3_10:                               # %if.end
	#APP
	emms
	#NO_APP
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_composite_grain_extract_rgba8_rgba8_rgba8_sse2, .Lfunc_end3-gimp_composite_grain_extract_rgba8_rgba8_rgba8_sse2
	.cfi_endproc

	.globl	gimp_composite_lighten_rgba8_rgba8_rgba8_sse2
	.align	16, 0x90
	.type	gimp_composite_lighten_rgba8_rgba8_rgba8_sse2,@function
gimp_composite_lighten_rgba8_rgba8_rgba8_sse2: # @gimp_composite_lighten_rgba8_rgba8_rgba8_sse2
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
	movq	%rdi, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -64(%rbp)
	#APP
	movdqu	rgba8_alpha_mask_128(%rip), %xmm0
	movq	rgba8_alpha_mask_64(%rip), %mm0
	#NO_APP
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$4, -64(%rbp)
	jb	.LBB4_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	#APP
	movdqu	(%rcx), %xmm2
	movdqu	(%rdx), %xmm3
	movdqu	%xmm2, %xmm4
	pmaxub	%xmm3, %xmm4
	movdqu	%xmm0, %xmm1
	pandn	%xmm4, %xmm1
	pminub	%xmm2, %xmm3
	pand	%xmm0, %xmm3
	por	%xmm3, %xmm1
	movdqu	%xmm1, (%rax)

	#NO_APP
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -40(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-64(%rbp), %rax
	subq	$4, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB4_1
.LBB4_4:                                # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB4_5:                                # %for.cond.7
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, -64(%rbp)
	jb	.LBB4_8
# BB#6:                                 # %for.body.9
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movq	(%rcx), %mm2
	movq	(%rdx), %mm3
	movq	%mm2, %mm4
	pmaxub	%mm3, %mm4
	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	pminub	%mm2, %mm3
	pand	%mm0, %mm3
	por	%mm3, %mm1
	movntq	%mm1, (%rax)

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
# BB#7:                                 # %for.inc.13
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-64(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB4_5
.LBB4_8:                                # %for.end.15
	cmpq	$0, -64(%rbp)
	jbe	.LBB4_10
# BB#9:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	#APP
	movd	(%rcx), %mm2
	movd	(%rdx), %mm3
	movq	%mm2, %mm4
	pmaxub	%mm3, %mm4
	movq	%mm0, %mm1
	pandn	%mm4, %mm1
	pminub	%mm2, %mm3
	pand	%mm0, %mm3
	por	%mm3, %mm1
	movd	%mm1, (%rax)

	#NO_APP
.LBB4_10:                               # %if.end
	#APP
	emms
	#NO_APP
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_composite_lighten_rgba8_rgba8_rgba8_sse2, .Lfunc_end4-gimp_composite_lighten_rgba8_rgba8_rgba8_sse2
	.cfi_endproc

	.globl	gimp_composite_subtract_rgba8_rgba8_rgba8_sse2
	.align	16, 0x90
	.type	gimp_composite_subtract_rgba8_rgba8_rgba8_sse2,@function
gimp_composite_subtract_rgba8_rgba8_rgba8_sse2: # @gimp_composite_subtract_rgba8_rgba8_rgba8_sse2
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
	movq	%rdi, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -64(%rbp)
	#APP
	movq	rgba8_alpha_mask_64(%rip), %mm0
	movdqu	rgba8_alpha_mask_128(%rip), %xmm0

	#NO_APP
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$4, -64(%rbp)
	jb	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	#APP
	movdqu	(%rcx), %xmm2
	movdqu	(%rdx), %xmm3
	movdqu	%xmm2, %xmm4
	psubusb	%xmm3, %xmm4
	movdqu	%xmm0, %xmm1
	pandn	%xmm4, %xmm1
	pminub	%xmm3, %xmm2
	pand	%xmm0, %xmm2
	por	%xmm2, %xmm1
	movdqu	%xmm1, (%rax)

	#NO_APP
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -40(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-64(%rbp), %rax
	subq	$4, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB5_5:                                # %for.cond.7
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, -64(%rbp)
	jb	.LBB5_8
# BB#6:                                 # %for.body.9
                                        #   in Loop: Header=BB5_5 Depth=1
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
	pminub	%mm3, %mm2
	pand	%mm0, %mm2
	por	%mm2, %mm1
	movntq	%mm1, (%rax)

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
# BB#7:                                 # %for.inc.13
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	-64(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB5_5
.LBB5_8:                                # %for.end.15
	cmpq	$0, -64(%rbp)
	jbe	.LBB5_10
# BB#9:                                 # %if.then
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
	pminub	%mm3, %mm2
	pand	%mm0, %mm2
	por	%mm2, %mm1
	movd	%mm1, (%rax)

	#NO_APP
.LBB5_10:                               # %if.end
	#APP
	emms
	#NO_APP
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_composite_subtract_rgba8_rgba8_rgba8_sse2, .Lfunc_end5-gimp_composite_subtract_rgba8_rgba8_rgba8_sse2
	.cfi_endproc

	.globl	gimp_composite_swap_rgba8_rgba8_rgba8_sse2
	.align	16, 0x90
	.type	gimp_composite_swap_rgba8_rgba8_rgba8_sse2,@function
gimp_composite_swap_rgba8_rgba8_rgba8_sse2: # @gimp_composite_swap_rgba8_rgba8_rgba8_sse2
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
	subq	$112, %rsp
	movl	$96, %eax
	movl	%eax, %edx
	leaq	-104(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$16, -72(%rbp)
	jb	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-104(%rbp), %rax
	#APP
	movdqu	(%rax), %xmm0

	#NO_APP
	movq	-96(%rbp), %rax
	#APP
	movdqu	(%rax), %xmm1

	#NO_APP
	movq	-104(%rbp), %rax
	addq	$1, %rax
	#APP
	movdqu	(%rax), %xmm2

	#NO_APP
	movq	-96(%rbp), %rax
	addq	$1, %rax
	#APP
	movdqu	(%rax), %xmm3

	#NO_APP
	movq	-104(%rbp), %rax
	addq	$2, %rax
	#APP
	movdqu	(%rax), %xmm4

	#NO_APP
	movq	-96(%rbp), %rax
	addq	$2, %rax
	#APP
	movdqu	(%rax), %xmm5

	#NO_APP
	movq	-104(%rbp), %rax
	addq	$3, %rax
	#APP
	movdqu	(%rax), %xmm6

	#NO_APP
	movq	-96(%rbp), %rax
	addq	$3, %rax
	#APP
	movdqu	(%rax), %xmm7

	#NO_APP
	movq	-104(%rbp), %rax
	#APP
	movdqu	%xmm0, (%rax)

	#NO_APP
	movq	-96(%rbp), %rax
	#APP
	movdqu	%xmm1, (%rax)

	#NO_APP
	movq	-104(%rbp), %rax
	addq	$1, %rax
	#APP
	movdqu	%xmm2, (%rax)

	#NO_APP
	movq	-96(%rbp), %rax
	addq	$1, %rax
	#APP
	movdqu	%xmm3, (%rax)

	#NO_APP
	movq	-104(%rbp), %rax
	addq	$2, %rax
	#APP
	movdqu	%xmm4, (%rax)

	#NO_APP
	movq	-96(%rbp), %rax
	addq	$2, %rax
	#APP
	movdqu	%xmm5, (%rax)

	#NO_APP
	movq	-104(%rbp), %rax
	addq	$3, %rax
	#APP
	movdqu	%xmm6, (%rax)

	#NO_APP
	movq	-96(%rbp), %rax
	addq	$3, %rax
	#APP
	movdqu	%xmm7, (%rax)

	#NO_APP
	movq	-104(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -96(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-72(%rbp), %rax
	subq	$16, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	jmp	.LBB6_5
.LBB6_5:                                # %for.cond.34
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$4, -72(%rbp)
	jb	.LBB6_8
# BB#6:                                 # %for.body.37
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rcx
	#APP
	movdqu	(%rax), %xmm2
	movdqu	(%rcx), %xmm3
	movdqu	%xmm3, (%rax)
	movdqu	%xmm2, (%rcx)

	#NO_APP
	movq	-104(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -96(%rbp)
# BB#7:                                 # %for.inc.44
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-72(%rbp), %rax
	subq	$4, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB6_5
.LBB6_8:                                # %for.end.47
	jmp	.LBB6_9
.LBB6_9:                                # %for.cond.48
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, -72(%rbp)
	jb	.LBB6_12
# BB#10:                                # %for.body.51
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rcx
	#APP
	movq	(%rax), %mm2
	movq	(%rcx), %mm3
	movq	%mm3, (%rax)
	movntq	%mm2, (%rcx)

	#NO_APP
	movq	-104(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -96(%rbp)
# BB#11:                                # %for.inc.58
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-72(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB6_9
.LBB6_12:                               # %for.end.61
	cmpq	$0, -72(%rbp)
	je	.LBB6_14
# BB#13:                                # %if.then
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rcx
	#APP
	movd	(%rax), %mm2
	movd	(%rcx), %mm3
	movd	%mm3, (%rax)
	movd	%mm2, (%rcx)

	#NO_APP
.LBB6_14:                               # %if.end
	#APP
	emms
	#NO_APP
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_composite_swap_rgba8_rgba8_rgba8_sse2, .Lfunc_end6-gimp_composite_swap_rgba8_rgba8_rgba8_sse2
	.cfi_endproc

	.type	rgba8_alpha_mask_128,@object # @rgba8_alpha_mask_128
	.section	.rodata,"a",@progbits
	.align	16
rgba8_alpha_mask_128:
	.long	4278190080              # 0xff000000
	.long	4278190080              # 0xff000000
	.long	4278190080              # 0xff000000
	.long	4278190080              # 0xff000000
	.size	rgba8_alpha_mask_128, 16

	.type	rgba8_alpha_mask_64,@object # @rgba8_alpha_mask_64
	.align	4
rgba8_alpha_mask_64:
	.long	4278190080              # 0xff000000
	.long	4278190080              # 0xff000000
	.size	rgba8_alpha_mask_64, 8

	.type	rgba8_w128_64,@object   # @rgba8_w128_64
	.align	4
rgba8_w128_64:
	.long	8388736                 # 0x800080
	.long	8388736                 # 0x800080
	.size	rgba8_w128_64, 8

	.type	rgba8_w128_128,@object  # @rgba8_w128_128
	.align	16
rgba8_w128_128:
	.long	8388736                 # 0x800080
	.long	8388736                 # 0x800080
	.long	8388736                 # 0x800080
	.long	8388736                 # 0x800080
	.size	rgba8_w128_128, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
