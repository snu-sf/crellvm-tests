	.text
	.file	"color-rotate-draw.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4605380978949069210     # double 0.80000000000000004
.LCPI0_1:
	.quad	4607182418800017408     # double 1
.LCPI0_2:
	.quad	4603579539098121011     # double 0.59999999999999998
.LCPI0_3:
	.quad	4613937818241073152     # double 3
.LCPI0_4:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI0_5:
	.quad	4634063279075885056     # double 63
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_6:
	.long	1114636288              # float 60
	.text
	.globl	color_rotate_draw_little_circle
	.align	16, 0x90
	.type	color_rotate_draw_little_circle,@function
color_rotate_draw_little_circle:        # @color_rotate_draw_little_circle
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
	subq	$80, %rsp
	movsd	.LCPI0_5, %xmm2         # xmm2 = mem[0],zero
	movss	.LCPI0_6, %xmm3         # xmm3 = mem[0],zero,zero,zero
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm1, -16(%rbp)
	movaps	%xmm3, %xmm0
	mulss	-16(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	-12(%rbp), %xmm1
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	%xmm2, -40(%rbp)        # 8-byte Spill
	movss	%xmm3, -44(%rbp)        # 4-byte Spill
	callq	cos
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -20(%rbp)
	movss	-44(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	-16(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	-12(%rbp), %xmm1
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	cairo_new_sub_path
	movsd	.LCPI0_3, %xmm2         # xmm2 = mem[0],zero
	xorps	%xmm3, %xmm3
	movsd	.LCPI0_4, %xmm4         # xmm4 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	callq	cairo_arc
	movsd	.LCPI0_3, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	cairo_set_line_width
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_2, %xmm3         # xmm3 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba
	movq	-8(%rbp), %rdi
	callq	cairo_stroke_preserve
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	cairo_set_line_width
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm3         # xmm3 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba
	movq	-8(%rbp), %rdi
	callq	cairo_stroke
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	color_rotate_draw_little_circle, .Lfunc_end0-color_rotate_draw_little_circle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4605380978949069210     # double 0.80000000000000004
.LCPI1_1:
	.quad	4607182418800017408     # double 1
.LCPI1_2:
	.quad	4603579539098121011     # double 0.59999999999999998
.LCPI1_3:
	.quad	4613937818241073152     # double 3
.LCPI1_4:
	.quad	4618760256179416344     # double 6.2831853071795862
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_5:
	.long	1114636288              # float 60
	.text
	.globl	color_rotate_draw_large_circle
	.align	16, 0x90
	.type	color_rotate_draw_large_circle,@function
color_rotate_draw_large_circle:         # @color_rotate_draw_large_circle
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movl	$63, -16(%rbp)
	movl	$63, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	cairo_new_sub_path
	xorps	%xmm3, %xmm3
	movsd	.LCPI1_4, %xmm4         # xmm4 = mem[0],zero
	movss	.LCPI1_5, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-16(%rbp), %xmm1
	cvtsi2sdl	-20(%rbp), %xmm2
	mulss	-12(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_arc
	movsd	.LCPI1_3, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	cairo_set_line_width
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_2, %xmm3         # xmm3 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba
	movq	-8(%rbp), %rdi
	callq	cairo_stroke_preserve
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	cairo_set_line_width
	xorps	%xmm0, %xmm0
	movsd	.LCPI1_0, %xmm3         # xmm3 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba
	movq	-8(%rbp), %rdi
	callq	cairo_stroke
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	color_rotate_draw_large_circle, .Lfunc_end1-color_rotate_draw_large_circle
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	3212836864              # float -1
.LCPI2_3:
	.long	1092616192              # float 10
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_1:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI2_2:
	.quad	4602678819172646912     # double 0.5
.LCPI2_4:
	.quad	4634204016564240384     # double 64
.LCPI2_5:
	.quad	4631952216750555136     # double 48
.LCPI2_6:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI2_7:
	.quad	4633641066610819072     # double 60
.LCPI2_8:
	.quad	4605380978949069210     # double 0.80000000000000004
.LCPI2_9:
	.quad	4607182418800017408     # double 1
.LCPI2_10:
	.quad	4603579539098121011     # double 0.59999999999999998
.LCPI2_11:
	.quad	4613937818241073152     # double 3
	.text
	.globl	color_rotate_draw_arrows
	.align	16, 0x90
	.type	color_rotate_draw_arrows,@function
color_rotate_draw_arrows:               # @color_rotate_draw_arrows
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
	subq	$656, %rsp              # imm = 0x290
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rsi
	movss	4(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -28(%rbp)
	movq	-16(%rbp), %rsi
	cvtsi2ssl	8(%rsi), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	-24(%rbp), %xmm0
	callq	angle_mod_2PI
	movss	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)
	movss	-32(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jne	.LBB2_2
	jp	.LBB2_2
# BB#1:                                 # %if.then
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-36(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
.LBB2_2:                                # %if.end
	movsd	.LCPI2_4, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_7, %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtss2sd	-24(%rbp), %xmm3
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm0
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	movsd	%xmm2, -80(%rbp)        # 8-byte Spill
	callq	cos
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtss2sd	-24(%rbp), %xmm2
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	sin
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cairo_line_to
	movsd	.LCPI2_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_7, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtss2sd	-24(%rbp), %xmm2
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvtss2sd	-24(%rbp), %xmm1
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_6, %xmm3         # xmm3 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtss2sd	-24(%rbp), %xmm4
	subsd	%xmm3, %xmm4
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	movsd	%xmm2, -160(%rbp)       # 8-byte Spill
	movsd	%xmm3, -168(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtss2sd	-24(%rbp), %xmm2
	movsd	-168(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	subsd	%xmm3, %xmm2
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	sin
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm1
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movsd	-176(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cairo_line_to
	movsd	.LCPI2_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_7, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtss2sd	-24(%rbp), %xmm2
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movsd	%xmm1, -200(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvtss2sd	-24(%rbp), %xmm1
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movsd	-208(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_6, %xmm3         # xmm3 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtss2sd	-24(%rbp), %xmm4
	addsd	%xmm3, %xmm4
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movsd	%xmm1, -240(%rbp)       # 8-byte Spill
	movsd	%xmm2, -248(%rbp)       # 8-byte Spill
	movsd	%xmm3, -256(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtss2sd	-24(%rbp), %xmm2
	movsd	-256(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	addsd	%xmm3, %xmm2
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	sin
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm1
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movsd	-264(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cairo_line_to
	movsd	.LCPI2_4, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_7, %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtss2sd	-28(%rbp), %xmm3
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movsd	%xmm1, -296(%rbp)       # 8-byte Spill
	movsd	%xmm2, -304(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-304(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-296(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-280(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtss2sd	-28(%rbp), %xmm2
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	sin
	movsd	-304(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-296(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-280(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm1
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movsd	-312(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cairo_line_to
	movsd	.LCPI2_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_7, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtss2sd	-28(%rbp), %xmm2
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movsd	%xmm1, -336(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-336(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-320(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvtss2sd	-28(%rbp), %xmm1
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-336(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-320(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movsd	-344(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-352(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_6, %xmm3         # xmm3 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtss2sd	-28(%rbp), %xmm4
	subsd	%xmm3, %xmm4
	movsd	%xmm0, -360(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movsd	%xmm1, -376(%rbp)       # 8-byte Spill
	movsd	%xmm2, -384(%rbp)       # 8-byte Spill
	movsd	%xmm3, -392(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-384(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-376(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-360(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtss2sd	-28(%rbp), %xmm2
	movsd	-392(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	subsd	%xmm3, %xmm2
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	sin
	movsd	-384(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-376(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-360(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm1
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movsd	-400(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cairo_line_to
	movsd	.LCPI2_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_7, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtss2sd	-28(%rbp), %xmm2
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movsd	%xmm1, -424(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-424(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-408(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvtss2sd	-28(%rbp), %xmm1
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-424(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-408(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movsd	-432(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -440(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-440(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_6, %xmm3         # xmm3 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtss2sd	-28(%rbp), %xmm4
	addsd	%xmm3, %xmm4
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movsd	%xmm1, -464(%rbp)       # 8-byte Spill
	movsd	%xmm2, -472(%rbp)       # 8-byte Spill
	movsd	%xmm3, -480(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-472(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-464(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-448(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtss2sd	-28(%rbp), %xmm2
	movsd	-480(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	addsd	%xmm3, %xmm2
	movsd	%xmm0, -488(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	sin
	movsd	-472(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-464(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-448(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm1
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movsd	-488(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cairo_line_to
	movsd	.LCPI2_4, %xmm0         # xmm0 = mem[0],zero
	movl	$18, -20(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm1
	cvtss2sd	-28(%rbp), %xmm2
	movsd	%xmm0, -496(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -504(%rbp)       # 8-byte Spill
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	callq	cos
	movsd	-504(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-496(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	cvtss2sd	-28(%rbp), %xmm2
	movsd	%xmm0, -520(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -528(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-528(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-496(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movsd	-520(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -536(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-536(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movss	.LCPI2_3, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI2_4, %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm3
	cvtss2sd	-28(%rbp), %xmm4
	movsd	%xmm0, -544(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	%xmm3, -552(%rbp)       # 8-byte Spill
	movss	%xmm1, -556(%rbp)       # 4-byte Spill
	movsd	%xmm2, -568(%rbp)       # 8-byte Spill
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	callq	cos
	movsd	-552(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-568(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movss	-556(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	-32(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	cvtss2sd	-28(%rbp), %xmm2
	movsd	%xmm0, -584(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -592(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-592(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-584(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-544(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-20(%rbp), %xmm2
	cvtss2sd	-28(%rbp), %xmm3
	movsd	%xmm0, -600(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -608(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-608(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-568(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movss	-556(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	-32(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	cvtss2sd	-28(%rbp), %xmm2
	movsd	%xmm0, -616(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -624(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-624(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-616(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-544(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm1
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movsd	-600(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cairo_line_to
	movq	-8(%rbp), %rdi
	callq	cairo_new_sub_path
	xorps	%xmm0, %xmm0
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB2_4
# BB#3:                                 # %if.then.170
	movsd	.LCPI2_4, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm2
	movss	-24(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movd	%xmm1, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm3
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movd	%xmm1, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm4
	movsd	%xmm0, -632(%rbp)       # 8-byte Spill
	movsd	-632(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_arc_negative
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	movsd	.LCPI2_4, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm2
	movss	-24(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movd	%xmm1, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm3
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movd	%xmm1, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm4
	movsd	%xmm0, -640(%rbp)       # 8-byte Spill
	movsd	-640(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_arc
.LBB2_5:                                # %if.end.181
	movsd	.LCPI2_11, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	cairo_set_line_width
	movsd	.LCPI2_9, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_10, %xmm3        # xmm3 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -648(%rbp)       # 8-byte Spill
	movsd	-648(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-648(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba
	movq	-8(%rbp), %rdi
	callq	cairo_stroke_preserve
	movsd	.LCPI2_9, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	cairo_set_line_width
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_8, %xmm3         # xmm3 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -656(%rbp)       # 8-byte Spill
	movsd	-656(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-656(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba
	movq	-8(%rbp), %rdi
	callq	cairo_stroke
	addq	$656, %rsp              # imm = 0x290
	popq	%rbp
	retq
.Lfunc_end2:
	.size	color_rotate_draw_arrows, .Lfunc_end2-color_rotate_draw_arrows
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
