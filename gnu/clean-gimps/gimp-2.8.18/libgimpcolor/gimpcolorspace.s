	.text
	.file	"gimpcolorspace.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4547007122018943789     # double 1.0E-4
.LCPI0_1:
	.quad	4616189618054758400     # double 4
.LCPI0_2:
	.quad	4611686018427387904     # double 2
.LCPI0_3:
	.quad	4618441417868443648     # double 6
	.text
	.globl	gimp_rgb_to_hsv
	.align	16, 0x90
	.type	gimp_rgb_to_hsv,@function
gimp_rgb_to_hsv:                        # @gimp_rgb_to_hsv
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgb_to_hsv(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB0_22
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB0_8
# BB#7:                                 # %if.then.3
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgb_to_hsv(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB0_22
.LBB0_9:                                # %if.end.5
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.6
	movq	-8(%rbp), %rdi
	callq	gimp_rgb_max@PLT
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_rgb_min@PLT
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_20
# BB#11:                                # %if.then.9
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-24(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB0_15
	jp	.LBB0_15
# BB#12:                                # %if.then.11
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	16(%rax), %xmm1
	divsd	-40(%rbp), %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, (%rax)
	movq	-16(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB0_14
# BB#13:                                # %if.then.16
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
.LBB0_14:                               # %if.end.18
	jmp	.LBB0_19
.LBB0_15:                               # %if.else.19
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB0_17
	jp	.LBB0_17
# BB#16:                                # %if.then.22
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	(%rax), %xmm1
	divsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB0_18
.LBB0_17:                               # %if.else.29
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	8(%rax), %xmm1
	divsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB0_18:                               # %if.end.36
	jmp	.LBB0_19
.LBB0_19:                               # %if.end.37
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%rax)
	jmp	.LBB0_21
.LBB0_20:                               # %if.else.40
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB0_21:                               # %if.end.43
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB0_22:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_rgb_to_hsv, .Lfunc_end0-gimp_rgb_to_hsv
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	4618441417868443648     # double 6
	.text
	.globl	gimp_hsv_to_rgb
	.align	16, 0x90
	.type	gimp_hsv_to_rgb,@function
gimp_hsv_to_rgb:                        # @gimp_hsv_to_rgb
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_hsv_to_rgb(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB1_23
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.body.1
	cmpq	$0, -8(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.3
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_hsv_to_rgb(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB1_23
.LBB1_9:                                # %if.end.5
	jmp	.LBB1_10
.LBB1_10:                               # %do.end.6
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB1_12
	jp	.LBB1_12
# BB#11:                                # %if.then.8
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB1_22
.LBB1_12:                               # %if.else.11
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -64(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB1_14
	jp	.LBB1_14
# BB#13:                                # %if.then.13
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB1_14:                               # %if.end.14
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	cvttsd2si	%xmm0, %eax
	movl	%eax, -20(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movsd	16(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI1_0(%rip), %xmm2   # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm1
	movsd	%xmm1, -40(%rbp)
	movq	-8(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movsd	16(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	movaps	%xmm2, %xmm3
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm1
	movsd	%xmm1, -48(%rbp)
	movq	-8(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movsd	16(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movaps	%xmm2, %xmm4
	subsd	%xmm3, %xmm4
	mulsd	%xmm4, %xmm0
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, -56(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	ja	.LBB1_21
# BB#24:                                # %if.end.14
	leaq	.LJTI1_0(%rip), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB1_15:                               # %sw.bb
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB1_21
.LBB1_16:                               # %sw.bb.35
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB1_21
.LBB1_17:                               # %sw.bb.40
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB1_21
.LBB1_18:                               # %sw.bb.45
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB1_21
.LBB1_19:                               # %sw.bb.50
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB1_21
.LBB1_20:                               # %sw.bb.55
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 16(%rax)
.LBB1_21:                               # %sw.epilog
	jmp	.LBB1_22
.LBB1_22:                               # %if.end.60
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB1_23:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_hsv_to_rgb, .Lfunc_end1-gimp_hsv_to_rgb
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI1_0:
	.long	.LBB1_15-.LJTI1_0
	.long	.LBB1_16-.LJTI1_0
	.long	.LBB1_17-.LJTI1_0
	.long	.LBB1_18-.LJTI1_0
	.long	.LBB1_19-.LJTI1_0
	.long	.LBB1_20-.LJTI1_0

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4611686018427387904     # double 2
.LCPI2_1:
	.quad	4602678819172646912     # double 0.5
.LCPI2_2:
	.quad	4607182418800017408     # double 1
.LCPI2_3:
	.quad	4616189618054758400     # double 4
.LCPI2_4:
	.quad	4618441417868443648     # double 6
.LCPI2_5:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_rgb_to_hsl
	.align	16, 0x90
	.type	gimp_rgb_to_hsl,@function
gimp_rgb_to_hsl:                        # @gimp_rgb_to_hsl
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgb_to_hsl(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB2_27
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB2_8
# BB#7:                                 # %if.then.3
	jmp	.LBB2_9
.LBB2_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgb_to_hsl(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB2_27
.LBB2_9:                                # %if.end.5
	jmp	.LBB2_10
.LBB2_10:                               # %do.end.6
	movq	-8(%rbp), %rdi
	callq	gimp_rgb_max@PLT
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_rgb_min@PLT
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jne	.LBB2_12
	jp	.LBB2_12
# BB#11:                                # %if.then.9
	movsd	.LCPI2_5(%rip), %xmm0   # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB2_26
.LBB2_12:                               # %if.else.10
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	jb	.LBB2_14
# BB#13:                                # %if.then.13
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-32(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	jmp	.LBB2_15
.LBB2_14:                               # %if.else.17
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-32(%rbp), %xmm1
	subsd	-24(%rbp), %xmm0
	subsd	-32(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 8(%rax)
.LBB2_15:                               # %if.end.23
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-32(%rbp), %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB2_17
	jp	.LBB2_17
# BB#16:                                # %if.then.26
	movsd	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
.LBB2_17:                               # %if.end.27
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB2_19
	jp	.LBB2_19
# BB#18:                                # %if.then.29
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	16(%rax), %xmm0
	divsd	-40(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB2_23
.LBB2_19:                               # %if.else.33
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB2_21
	jp	.LBB2_21
# BB#20:                                # %if.then.36
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	(%rax), %xmm1
	divsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB2_22
.LBB2_21:                               # %if.else.43
	movsd	.LCPI2_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	8(%rax), %xmm1
	divsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB2_22:                               # %if.end.50
	jmp	.LBB2_23
.LBB2_23:                               # %if.end.51
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, (%rax)
	movq	-16(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB2_25
# BB#24:                                # %if.then.56
	movsd	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
.LBB2_25:                               # %if.end.59
	jmp	.LBB2_26
.LBB2_26:                               # %if.end.60
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB2_27:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_rgb_to_hsl, .Lfunc_end2-gimp_rgb_to_hsl
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4602678819172646912     # double 0.5
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4611686018427387904     # double 2
.LCPI3_3:
	.quad	4618441417868443648     # double 6
	.text
	.globl	gimp_hsl_to_rgb
	.align	16, 0x90
	.type	gimp_hsl_to_rgb,@function
gimp_hsl_to_rgb:                        # @gimp_hsl_to_rgb
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_hsl_to_rgb(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_17
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_hsl_to_rgb(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_17
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB3_12
	jp	.LBB3_12
# BB#11:                                # %if.then.8
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB3_16
.LBB3_12:                               # %if.else.11
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	jb	.LBB3_14
# BB#13:                                # %if.then.14
	movsd	.LCPI3_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	8(%rax), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	jmp	.LBB3_15
.LBB3_14:                               # %if.else.17
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	8(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	8(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB3_15:                               # %if.end.24
	movsd	.LCPI3_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI3_3(%rip), %xmm1   # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movaps	%xmm0, %xmm2
	mulsd	16(%rax), %xmm2
	subsd	-32(%rbp), %xmm2
	movsd	%xmm2, -24(%rbp)
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	(%rax), %xmm1
	addsd	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-40(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_hsl_value
	movsd	.LCPI3_3(%rip), %xmm1   # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	(%rax), %xmm1
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_hsl_value
	movsd	.LCPI3_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI3_3(%rip), %xmm2   # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	(%rax), %xmm2
	subsd	%xmm1, %xmm2
	movaps	%xmm3, %xmm1
	callq	gimp_hsl_value
	movq	-16(%rbp), %rax
	movsd	%xmm0, 16(%rax)
.LBB3_16:                               # %if.end.40
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB3_17:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_hsl_to_rgb, .Lfunc_end3-gimp_hsl_to_rgb
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4618441417868443648     # double 6
.LCPI4_1:
	.quad	4607182418800017408     # double 1
.LCPI4_2:
	.quad	4613937818241073152     # double 3
.LCPI4_3:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	gimp_hsl_value,@function
gimp_hsl_value:                         # @gimp_hsl_value
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
	movsd	.LCPI4_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm3, %xmm0
	jbe	.LBB4_2
# BB#1:                                 # %if.then
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB4_5
.LBB4_2:                                # %if.else
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB4_4
# BB#3:                                 # %if.then.2
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end.3
	movsd	.LCPI4_1(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB4_7
# BB#6:                                 # %if.then.5
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-8(%rbp), %xmm1
	mulsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB4_14
.LBB4_7:                                # %if.else.8
	movsd	.LCPI4_2(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB4_9
# BB#8:                                 # %if.then.10
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB4_13
.LBB4_9:                                # %if.else.11
	movsd	.LCPI4_3(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB4_11
# BB#10:                                # %if.then.13
	movsd	.LCPI4_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-8(%rbp), %xmm2
	subsd	-24(%rbp), %xmm0
	mulsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -32(%rbp)
	jmp	.LBB4_12
.LBB4_11:                               # %if.else.18
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB4_12:                               # %if.end.19
	jmp	.LBB4_13
.LBB4_13:                               # %if.end.20
	jmp	.LBB4_14
.LBB4_14:                               # %if.end.21
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_hsl_value, .Lfunc_end4-gimp_hsl_value
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_rgb_to_cmyk
	.align	16, 0x90
	.type	gimp_rgb_to_cmyk,@function
gimp_rgb_to_cmyk:                       # @gimp_rgb_to_cmyk
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgb_to_cmyk(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_20
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB5_8
# BB#7:                                 # %if.then.3
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgb_to_cmyk(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_20
.LBB5_9:                                # %if.end.5
	jmp	.LBB5_10
.LBB5_10:                               # %do.end.6
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movaps	%xmm0, %xmm1
	subsd	(%rax), %xmm1
	movsd	%xmm1, -32(%rbp)
	movq	-8(%rbp), %rax
	movaps	%xmm0, %xmm1
	subsd	8(%rax), %xmm1
	movsd	%xmm1, -40(%rbp)
	movq	-8(%rbp), %rax
	movaps	%xmm0, %xmm1
	subsd	16(%rax), %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_12
# BB#11:                                # %if.then.10
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
.LBB5_12:                               # %if.end.11
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_14
# BB#13:                                # %if.then.13
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
.LBB5_14:                               # %if.end.14
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_16
# BB#15:                                # %if.then.16
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
.LBB5_16:                               # %if.end.17
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	movsd	%xmm1, -56(%rbp)
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB5_18
# BB#17:                                # %if.then.19
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-56(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	subsd	-56(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, (%rax)
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-56(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	subsd	-56(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-56(%rbp), %xmm1
	subsd	-56(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, 16(%rax)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.31
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-24(%rbp), %rax
	movsd	%xmm0, 16(%rax)
.LBB5_19:                               # %if.end.35
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 32(%rax)
.LBB5_20:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_rgb_to_cmyk, .Lfunc_end5-gimp_rgb_to_cmyk
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_cmyk_to_rgb
	.align	16, 0x90
	.type	gimp_cmyk_to_rgb,@function
gimp_cmyk_to_rgb:                       # @gimp_cmyk_to_rgb
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_cmyk_to_rgb(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_14
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB6_8
# BB#7:                                 # %if.then.3
	jmp	.LBB6_9
.LBB6_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_cmyk_to_rgb(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_14
.LBB6_9:                                # %if.end.5
	jmp	.LBB6_10
.LBB6_10:                               # %do.end.6
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -48(%rbp)
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB6_12
# BB#11:                                # %if.then.9
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	-48(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	-48(%rbp), %xmm1
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	-48(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	-48(%rbp), %xmm1
	movsd	%xmm1, -32(%rbp)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	addsd	-48(%rbp), %xmm1
	movsd	%xmm1, -40(%rbp)
	jmp	.LBB6_13
.LBB6_12:                               # %if.else.19
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
.LBB6_13:                               # %if.end.20
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	subsd	-24(%rbp), %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, (%rax)
	movaps	%xmm0, %xmm1
	subsd	-32(%rbp), %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	subsd	-40(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB6_14:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_cmyk_to_rgb, .Lfunc_end6-gimp_cmyk_to_rgb
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4617315517961601024     # double 5
.LCPI7_2:
	.quad	4613937818241073152     # double 3
.LCPI7_3:
	.quad	4633641066610819072     # double 60
.LCPI7_4:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_rgb_to_hwb
	.align	16, 0x90
	.type	gimp_rgb_to_hwb,@function
gimp_rgb_to_hwb:                        # @gimp_rgb_to_hwb
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_rgb_min@PLT
	movsd	%xmm0, -64(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_rgb_max@PLT
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	subsd	-72(%rbp), %xmm1
	movsd	%xmm1, -80(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jne	.LBB7_2
	jp	.LBB7_2
# BB#1:                                 # %if.then
	movsd	.LCPI7_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB7_12
.LBB7_2:                                # %if.else
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jne	.LBB7_4
	jp	.LBB7_4
# BB#3:                                 # %cond.true
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-56(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB7_8
.LBB7_4:                                # %cond.false
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jne	.LBB7_6
	jp	.LBB7_6
# BB#5:                                 # %cond.true.6
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB7_7
.LBB7_6:                                # %cond.false.8
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
.LBB7_7:                                # %cond.end
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB7_8:                                # %cond.end.10
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jne	.LBB7_10
	jp	.LBB7_10
# BB#9:                                 # %cond.true.13
	movsd	.LCPI7_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB7_11
.LBB7_10:                               # %cond.false.14
	movsd	.LCPI7_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	cmpeqsd	-64(%rbp), %xmm2
	movaps	%xmm2, %xmm3
	andpd	%xmm0, %xmm3
	andnpd	%xmm1, %xmm2
	orpd	%xmm3, %xmm2
	movsd	%xmm2, -120(%rbp)       # 8-byte Spill
.LBB7_11:                               # %cond.end.17
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI7_3(%rip), %xmm1   # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -92(%rbp)
	cvtsi2sdl	-92(%rbp), %xmm0
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-72(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	-64(%rbp), %xmm3
	divsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movq	-16(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movsd	%xmm0, (%rcx)
.LBB7_12:                               # %if.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_rgb_to_hwb, .Lfunc_end7-gimp_rgb_to_hwb
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	-4616189618054758400    # double -1
.LCPI8_1:
	.quad	4607182418800017408     # double 1
.LCPI8_2:
	.quad	4645040803167600640     # double 360
.LCPI8_3:
	.quad	4618441417868443648     # double 6
	.text
	.globl	gimp_hwb_to_rgb
	.align	16, 0x90
	.type	gimp_hwb_to_rgb,@function
gimp_hwb_to_rgb:                        # @gimp_hwb_to_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movsd	.LCPI8_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI8_2(%rip), %xmm5   # xmm5 = mem[0],zero
	movsd	.LCPI8_3(%rip), %xmm6   # xmm6 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	mulsd	-40(%rbp), %xmm6
	divsd	%xmm5, %xmm6
	movsd	%xmm6, -40(%rbp)
	subsd	-56(%rbp), %xmm4
	movsd	%xmm4, -64(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm3, %xmm0
	jne	.LBB8_2
	jp	.LBB8_2
# BB#1:                                 # %if.then
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB8_12
.LBB8_2:                                # %if.else
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor@PLT
	cvttsd2si	%xmm0, %eax
	movl	%eax, -84(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-84(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movl	-84(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB8_4
# BB#3:                                 # %if.then.4
	movsd	.LCPI8_1(%rip), %xmm0   # xmm0 = mem[0],zero
	subsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
.LBB8_4:                                # %if.end
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$6, %rdx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	ja	.LBB8_11
# BB#13:                                # %if.end
	leaq	.LJTI8_0(%rip), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB8_5:                                # %sw.bb
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB8_12
.LBB8_6:                                # %sw.bb.11
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB8_12
.LBB8_7:                                # %sw.bb.15
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB8_12
.LBB8_8:                                # %sw.bb.19
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB8_12
.LBB8_9:                                # %sw.bb.23
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB8_12
.LBB8_10:                               # %sw.bb.27
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB8_12
.LBB8_11:                               # %sw.epilog
	jmp	.LBB8_12
.LBB8_12:                               # %if.end.31
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_hwb_to_rgb, .Lfunc_end8-gimp_hwb_to_rgb
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI8_0:
	.long	.LBB8_5-.LJTI8_0
	.long	.LBB8_6-.LJTI8_0
	.long	.LBB8_7-.LJTI8_0
	.long	.LBB8_8-.LJTI8_0
	.long	.LBB8_9-.LJTI8_0
	.long	.LBB8_10-.LJTI8_0
	.long	.LBB8_5-.LJTI8_0

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4642648265865560064     # double 240
.LCPI9_1:
	.quad	4633641066610819072     # double 60
.LCPI9_2:
	.quad	4638144666238189568     # double 120
.LCPI9_3:
	.quad	4645040803167600640     # double 360
.LCPI9_4:
	.quad	4602678819172646912     # double 0.5
.LCPI9_5:
	.quad	4643176031446892544     # double 255
	.text
	.globl	gimp_rgb_to_hsv_int
	.align	16, 0x90
	.type	gimp_rgb_to_hsv_int,@function
gimp_rgb_to_hsv_int:                    # @gimp_rgb_to_hsv_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	cvtsi2sdl	(%rdx), %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rdx
	cvtsi2sdl	(%rdx), %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rdx
	cvtsi2sdl	(%rdx), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB9_8
# BB#1:                                 # %if.then
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB9_3
# BB#2:                                 # %cond.true
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB9_4
.LBB9_3:                                # %cond.false
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB9_4:                                # %cond.end
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_6
# BB#5:                                 # %cond.true.8
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB9_7
.LBB9_6:                                # %cond.false.9
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB9_7:                                # %cond.end.10
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB9_15
.LBB9_8:                                # %if.else
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB9_10
# BB#9:                                 # %cond.true.15
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB9_11
.LBB9_10:                               # %cond.false.16
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
.LBB9_11:                               # %cond.end.17
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_13
# BB#12:                                # %cond.true.21
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB9_14
.LBB9_13:                               # %cond.false.22
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB9_14:                               # %cond.end.23
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
.LBB9_15:                               # %if.end
	xorps	%xmm0, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -88(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_17
	jp	.LBB9_17
# BB#16:                                # %if.then.29
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB9_18
.LBB9_17:                               # %if.else.30
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-72(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB9_18:                               # %if.end.31
	xorps	%xmm0, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_20
	jp	.LBB9_20
# BB#19:                                # %if.then.34
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB9_31
.LBB9_20:                               # %if.else.35
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jne	.LBB9_22
	jp	.LBB9_22
# BB#21:                                # %if.then.38
	movsd	.LCPI9_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	divsd	-88(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB9_26
.LBB9_22:                               # %if.else.41
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jne	.LBB9_24
	jp	.LBB9_24
# BB#23:                                # %if.then.44
	movsd	.LCPI9_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI9_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-32(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	divsd	-88(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB9_25
.LBB9_24:                               # %if.else.48
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI9_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	divsd	-88(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB9_25:                               # %if.end.53
	jmp	.LBB9_26
.LBB9_26:                               # %if.end.54
	xorps	%xmm0, %xmm0
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB9_28
# BB#27:                                # %if.then.57
	movsd	.LCPI9_3(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB9_28:                               # %if.end.59
	movsd	.LCPI9_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_30
# BB#29:                                # %if.then.62
	movsd	.LCPI9_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
.LBB9_30:                               # %if.end.64
	jmp	.LBB9_31
.LBB9_31:                               # %if.end.65
	movsd	.LCPI9_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI9_5(%rip), %xmm1   # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	addsd	-56(%rbp), %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	addsd	-72(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-8(%rbp), %rcx
	cmpl	$360, (%rcx)            # imm = 0x168
	jne	.LBB9_33
# BB#32:                                # %if.then.75
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
.LBB9_33:                               # %if.end.76
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_rgb_to_hsv_int, .Lfunc_end9-gimp_rgb_to_hsv_int
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4645040803167600640     # double 360
.LCPI10_1:
	.quad	4643176031446892544     # double 255
.LCPI10_2:
	.quad	4633641066610819072     # double 60
.LCPI10_3:
	.quad	4607182418800017408     # double 1
.LCPI10_4:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_hsv_to_rgb_int
	.align	16, 0x90
	.type	gimp_hsv_to_rgb_int,@function
gimp_hsv_to_rgb_int:                    # @gimp_hsv_to_rgb_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	cmpl	$0, (%rdx)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB10_13
.LBB10_2:                               # %if.else
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI10_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm2
	movsd	%xmm2, -32(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -40(%rbp)
	movq	-24(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -48(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_4
	jp	.LBB10_4
# BB#3:                                 # %if.then.6
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB10_5
.LBB10_4:                               # %if.else.7
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
.LBB10_5:                               # %if.end
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_2(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	callq	floor@PLT
	cvttsd2si	%xmm0, %eax
	movl	%eax, -92(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_3(%rip), %xmm2  # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm1
	movaps	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movaps	%xmm2, %xmm4
	subsd	%xmm3, %xmm4
	mulsd	%xmm4, %xmm1
	subsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	ja	.LBB10_12
# BB#14:                                # %if.end
	leaq	.LJTI10_0(%rip), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB10_6:                               # %sw.bb
	movsd	.LCPI10_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI10_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	-48(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movaps	%xmm1, %xmm2
	mulsd	-88(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	mulsd	-72(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB10_12
.LBB10_7:                               # %sw.bb.27
	movsd	.LCPI10_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI10_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	-80(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movaps	%xmm1, %xmm2
	mulsd	-48(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	mulsd	-72(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB10_12
.LBB10_8:                               # %sw.bb.37
	movsd	.LCPI10_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI10_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	-72(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movaps	%xmm1, %xmm2
	mulsd	-48(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	mulsd	-88(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB10_12
.LBB10_9:                               # %sw.bb.47
	movsd	.LCPI10_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI10_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	-72(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movaps	%xmm1, %xmm2
	mulsd	-80(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB10_12
.LBB10_10:                              # %sw.bb.57
	movsd	.LCPI10_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI10_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	-88(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movaps	%xmm1, %xmm2
	mulsd	-72(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB10_12
.LBB10_11:                              # %sw.bb.67
	movsd	.LCPI10_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI10_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	-48(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movaps	%xmm1, %xmm2
	mulsd	-72(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	mulsd	-80(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB10_12:                              # %sw.epilog
	jmp	.LBB10_13
.LBB10_13:                              # %if.end.77
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_hsv_to_rgb_int, .Lfunc_end10-gimp_hsv_to_rgb_int
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI10_0:
	.long	.LBB10_6-.LJTI10_0
	.long	.LBB10_7-.LJTI10_0
	.long	.LBB10_8-.LJTI10_0
	.long	.LBB10_9-.LJTI10_0
	.long	.LBB10_10-.LJTI10_0
	.long	.LBB10_11-.LJTI10_0

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4611686018427387904     # double 2
.LCPI11_1:
	.quad	4638707616191610880     # double 128
.LCPI11_2:
	.quad	4643176031446892544     # double 255
.LCPI11_3:
	.quad	4616189618054758400     # double 4
.LCPI11_4:
	.quad	4631178160564600832     # double 42.5
.LCPI11_5:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_rgb_to_hsl_int
	.align	16, 0x90
	.type	gimp_rgb_to_hsl_int,@function
gimp_rgb_to_hsl_int:                    # @gimp_rgb_to_hsl_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.LBB11_8
# BB#1:                                 # %if.then
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB11_3
# BB#2:                                 # %cond.true
	movl	-28(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB11_4
.LBB11_3:                               # %cond.false
	movl	-36(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB11_4:                               # %cond.end
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB11_6
# BB#5:                                 # %cond.true.3
	movl	-32(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB11_7
.LBB11_6:                               # %cond.false.4
	movl	-36(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB11_7:                               # %cond.end.5
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)
	jmp	.LBB11_15
.LBB11_8:                               # %if.else
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB11_10
# BB#9:                                 # %cond.true.8
	movl	-32(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB11_11
.LBB11_10:                              # %cond.false.9
	movl	-36(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB11_11:                              # %cond.end.10
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB11_13
# BB#12:                                # %cond.true.13
	movl	-28(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB11_14
.LBB11_13:                              # %cond.false.14
	movl	-36(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB11_14:                              # %cond.end.15
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)
.LBB11_15:                              # %if.end
	movsd	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movl	-72(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jne	.LBB11_17
# BB#16:                                # %if.then.19
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB11_32
.LBB11_17:                              # %if.else.20
	movsd	.LCPI11_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	-72(%rbp), %eax
	subl	-68(%rbp), %eax
	movl	%eax, -76(%rbp)
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB11_19
# BB#18:                                # %if.then.23
	movsd	.LCPI11_2(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB11_20
.LBB11_19:                              # %if.else.28
	movl	$511, %eax              # imm = 0x1FF
	movsd	.LCPI11_2(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	subl	-72(%rbp), %eax
	subl	-68(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB11_20:                              # %if.end.35
	movl	-28(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jne	.LBB11_22
# BB#21:                                # %if.then.38
	movl	-32(%rbp), %eax
	subl	-36(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-76(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB11_26
.LBB11_22:                              # %if.else.43
	movl	-32(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jne	.LBB11_24
# BB#23:                                # %if.then.46
	movsd	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	-36(%rbp), %eax
	subl	-28(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	-76(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB11_25
.LBB11_24:                              # %if.else.52
	movsd	.LCPI11_3(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	-76(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB11_25:                              # %if.end.58
	jmp	.LBB11_26
.LBB11_26:                              # %if.end.59
	xorps	%xmm0, %xmm0
	movsd	.LCPI11_4(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	movsd	%xmm1, -48(%rbp)
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB11_28
# BB#27:                                # %if.then.63
	movsd	.LCPI11_2(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB11_31
.LBB11_28:                              # %if.else.65
	movsd	.LCPI11_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_30
# BB#29:                                # %if.then.68
	movsd	.LCPI11_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
.LBB11_30:                              # %if.end.70
	jmp	.LBB11_31
.LBB11_31:                              # %if.end.71
	jmp	.LBB11_32
.LBB11_32:                              # %if.end.72
	movsd	.LCPI11_5(%rip), %xmm0  # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	addsd	-48(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movaps	%xmm0, %xmm1
	addsd	-56(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	addsd	-64(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_rgb_to_hsl_int, .Lfunc_end11-gimp_rgb_to_hsl_int
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4602678819172646912     # double 0.5
.LCPI12_1:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_rgb_to_l_int
	.align	16, 0x90
	.type	gimp_rgb_to_l_int,@function
gimp_rgb_to_l_int:                      # @gimp_rgb_to_l_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %edx
	cmpl	-8(%rbp), %edx
	jle	.LBB12_8
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB12_3
# BB#2:                                 # %cond.true
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB12_4
.LBB12_3:                               # %cond.false
	movl	-12(%rbp), %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB12_4:                               # %cond.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB12_6
# BB#5:                                 # %cond.true.3
	movl	-8(%rbp), %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB12_7
.LBB12_6:                               # %cond.false.4
	movl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB12_7:                               # %cond.end.5
	movl	-28(%rbp), %eax         # 4-byte Reload
	movl	%eax, -16(%rbp)
	jmp	.LBB12_15
.LBB12_8:                               # %if.else
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB12_10
# BB#9:                                 # %cond.true.8
	movl	-8(%rbp), %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB12_11
.LBB12_10:                              # %cond.false.9
	movl	-12(%rbp), %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB12_11:                              # %cond.end.10
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB12_13
# BB#12:                                # %cond.true.13
	movl	-4(%rbp), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB12_14
.LBB12_13:                              # %cond.false.14
	movl	-12(%rbp), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB12_14:                              # %cond.end.15
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -16(%rbp)
.LBB12_15:                              # %if.end
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI12_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movl	-20(%rbp), %eax
	addl	-16(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_rgb_to_l_int, .Lfunc_end12-gimp_rgb_to_l_int
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4638707616191610880     # double 128
.LCPI13_1:
	.quad	4643176031446892544     # double 255
.LCPI13_2:
	.quad	4679169781532721152     # double 65025
.LCPI13_3:
	.quad	4635681760191971328     # double 85
.LCPI13_4:
	.quad	4638672431819522048     # double 127.5
	.text
	.globl	gimp_hsl_to_rgb_int
	.align	16, 0x90
	.type	gimp_hsl_to_rgb_int,@function
gimp_hsl_to_rgb_int:                    # @gimp_hsl_to_rgb_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	cvtsi2sdl	(%rdx), %xmm1
	movsd	%xmm1, -32(%rbp)
	movq	-16(%rbp), %rdx
	cvtsi2sdl	(%rdx), %xmm1
	movsd	%xmm1, -40(%rbp)
	movq	-24(%rbp), %rdx
	cvtsi2sdl	(%rdx), %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB13_2
	jp	.LBB13_2
# BB#1:                                 # %if.then
	cvttsd2si	-48(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	cvttsd2si	-48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	cvttsd2si	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB13_6
.LBB13_2:                               # %if.else
	movsd	.LCPI13_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB13_4
# BB#3:                                 # %if.then.9
	movsd	.LCPI13_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI13_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	addsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -64(%rbp)
	jmp	.LBB13_5
.LBB13_4:                               # %if.else.10
	movsd	.LCPI13_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-40(%rbp), %xmm1
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-40(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
.LBB13_5:                               # %if.end
	movsd	.LCPI13_3(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI13_4(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	subsd	-64(%rbp), %xmm2
	movsd	%xmm2, -56(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_hsl_value_int
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_hsl_value_int
	movsd	.LCPI13_3(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	callq	gimp_hsl_value_int
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB13_6:                               # %if.end.21
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_hsl_to_rgb_int, .Lfunc_end13-gimp_hsl_to_rgb_int
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4643176031446892544     # double 255
.LCPI14_1:
	.quad	4631178160564600832     # double 42.5
.LCPI14_2:
	.quad	4638672431819522048     # double 127.5
.LCPI14_3:
	.quad	4640185359819341824     # double 170
.LCPI14_4:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_hsl_value_int,@function
gimp_hsl_value_int:                     # @gimp_hsl_value_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI14_0(%rip), %xmm3  # xmm3 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm3, %xmm0
	jbe	.LBB14_2
# BB#1:                                 # %if.then
	movsd	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB14_5
.LBB14_2:                               # %if.else
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB14_4
# BB#3:                                 # %if.then.2
	movsd	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %if.end.3
	movsd	.LCPI14_1(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB14_7
# BB#6:                                 # %if.then.5
	movsd	.LCPI14_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-8(%rbp), %xmm2
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -32(%rbp)
	jmp	.LBB14_14
.LBB14_7:                               # %if.else.8
	movsd	.LCPI14_2(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB14_9
# BB#8:                                 # %if.then.10
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB14_13
.LBB14_9:                               # %if.else.11
	movsd	.LCPI14_3(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB14_11
# BB#10:                                # %if.then.13
	movsd	.LCPI14_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI14_3(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	-8(%rbp), %xmm2         # xmm2 = mem[0],zero
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	-8(%rbp), %xmm3
	subsd	-24(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm3
	addsd	%xmm3, %xmm2
	movsd	%xmm2, -32(%rbp)
	jmp	.LBB14_12
.LBB14_11:                              # %if.else.19
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB14_12:                              # %if.end.20
	jmp	.LBB14_13
.LBB14_13:                              # %if.end.21
	jmp	.LBB14_14
.LBB14_14:                              # %if.end.22
	movsd	.LCPI14_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI14_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_hsl_value_int, .Lfunc_end14-gimp_hsl_value_int
	.cfi_endproc

	.globl	gimp_rgb_to_cmyk_int
	.align	16, 0x90
	.type	gimp_rgb_to_cmyk_int,@function
gimp_rgb_to_cmyk_int:                   # @gimp_rgb_to_cmyk_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	movl	$255, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movl	%eax, %r8d
	subl	(%rcx), %r8d
	movl	%r8d, -36(%rbp)
	movq	-16(%rbp), %rcx
	movl	%eax, %r8d
	subl	(%rcx), %r8d
	movl	%r8d, -40(%rbp)
	movq	-24(%rbp), %rcx
	subl	(%rcx), %eax
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rcx
	cmpl	$0, (%rcx)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB15_15
.LBB15_2:                               # %if.else
	movl	$255, -48(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB15_4
# BB#3:                                 # %if.then.4
	movl	-36(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB15_4:                               # %if.end
	movl	-40(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB15_6
# BB#5:                                 # %if.then.6
	movl	-40(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB15_6:                               # %if.end.7
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB15_8
# BB#7:                                 # %if.then.9
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB15_8:                               # %if.end.10
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	$100, (%rcx)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jle	.LBB15_10
# BB#9:                                 # %cond.true
	movl	$100, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB15_14
.LBB15_10:                              # %cond.false
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jge	.LBB15_12
# BB#11:                                # %cond.true.13
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB15_13
.LBB15_12:                              # %cond.false.14
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
.LBB15_13:                              # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB15_14:                              # %cond.end.15
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	$256, %ecx              # imm = 0x100
	movl	$100, %edx
	movl	-52(%rbp), %esi         # 4-byte Reload
	imull	%eax, %esi
	movl	%esi, %eax
	movl	%edx, -64(%rbp)         # 4-byte Spill
	cltd
	movl	-64(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -48(%rbp)
	movl	-36(%rbp), %eax
	subl	-48(%rbp), %eax
	shll	$8, %eax
	movl	%ecx, %edi
	subl	-48(%rbp), %edi
	cltd
	idivl	%edi
	movq	-8(%rbp), %r8
	movl	%eax, (%r8)
	movl	-40(%rbp), %eax
	subl	-48(%rbp), %eax
	shll	$8, %eax
	movl	%ecx, %edi
	subl	-48(%rbp), %edi
	cltd
	idivl	%edi
	movq	-16(%rbp), %r8
	movl	%eax, (%r8)
	movl	-44(%rbp), %eax
	subl	-48(%rbp), %eax
	shll	$8, %eax
	subl	-48(%rbp), %ecx
	cltd
	idivl	%ecx
	movq	-24(%rbp), %r8
	movl	%eax, (%r8)
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %r8
	movl	%eax, (%r8)
.LBB15_15:                              # %if.end.28
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_rgb_to_cmyk_int, .Lfunc_end15-gimp_rgb_to_cmyk_int
	.cfi_endproc

	.globl	gimp_cmyk_to_rgb_int
	.align	16, 0x90
	.type	gimp_cmyk_to_rgb_int,@function
gimp_cmyk_to_rgb_int:                   # @gimp_cmyk_to_rgb_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movl	$256, %eax              # imm = 0x100
	movl	-36(%rbp), %ecx
	movl	%eax, %edx
	subl	-48(%rbp), %edx
	imull	%edx, %ecx
	sarl	$8, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movl	-40(%rbp), %ecx
	movl	%eax, %edx
	subl	-48(%rbp), %edx
	imull	%edx, %ecx
	sarl	$8, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	movl	-44(%rbp), %ecx
	subl	-48(%rbp), %eax
	imull	%eax, %ecx
	sarl	$8, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -44(%rbp)
.LBB16_2:                               # %if.end
	movl	$255, %eax
	movl	%eax, %ecx
	subl	-36(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, (%rdx)
	movl	%eax, %ecx
	subl	-40(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, (%rdx)
	subl	-44(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_cmyk_to_rgb_int, .Lfunc_end16-gimp_cmyk_to_rgb_int
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4643176031446892544     # double 255
.LCPI17_1:
	.quad	4607182418800017408     # double 1
.LCPI17_2:
	.quad	4616189618054758400     # double 4
.LCPI17_3:
	.quad	4611686018427387904     # double 2
.LCPI17_4:
	.quad	4618441417868443648     # double 6
	.text
	.globl	gimp_rgb_to_hsv4
	.align	16, 0x90
	.type	gimp_rgb_to_hsv4,@function
gimp_rgb_to_hsv4:                       # @gimp_rgb_to_hsv4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	pushq	%rax
	movsd	.LCPI17_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movzbl	(%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movq	-8(%rbp), %rcx
	movzbl	1(%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movq	-8(%rbp), %rcx
	movzbl	2(%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB17_8
# BB#1:                                 # %if.then
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB17_3
# BB#2:                                 # %cond.true
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB17_4
.LBB17_3:                               # %cond.false
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
.LBB17_4:                               # %cond.end
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB17_6
# BB#5:                                 # %cond.true.15
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB17_7
.LBB17_6:                               # %cond.false.16
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB17_7:                               # %cond.end.17
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB17_15
.LBB17_8:                               # %if.else
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB17_10
# BB#9:                                 # %cond.true.21
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB17_11
.LBB17_10:                              # %cond.false.22
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB17_11:                              # %cond.end.23
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB17_13
# BB#12:                                # %cond.true.27
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB17_14
.LBB17_13:                              # %cond.false.28
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB17_14:                              # %cond.end.29
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
.LBB17_15:                              # %if.end
	xorps	%xmm0, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -80(%rbp)
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB17_16
	jp	.LBB17_16
	jmp	.LBB17_17
.LBB17_16:                              # %if.then.33
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-88(%rbp), %xmm0
	divsd	-96(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB17_18
.LBB17_17:                              # %if.else.35
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB17_18:                              # %if.end.36
	xorps	%xmm0, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB17_20
	jp	.LBB17_20
# BB#19:                                # %if.then.39
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB17_34
.LBB17_20:                              # %if.else.40
	xorps	%xmm0, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB17_22
	jp	.LBB17_22
# BB#21:                                # %if.then.44
	movsd	.LCPI17_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
.LBB17_22:                              # %if.end.45
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-96(%rbp), %xmm0
	jne	.LBB17_24
	jp	.LBB17_24
# BB#23:                                # %if.then.48
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-56(%rbp), %xmm0
	divsd	-104(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB17_28
.LBB17_24:                              # %if.else.51
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-96(%rbp), %xmm0
	jne	.LBB17_26
	jp	.LBB17_26
# BB#25:                                # %if.then.54
	movsd	.LCPI17_3(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-40(%rbp), %xmm1
	divsd	-104(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB17_27
.LBB17_26:                              # %if.else.57
	movsd	.LCPI17_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	divsd	-104(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB17_27:                              # %if.end.61
	jmp	.LBB17_28
.LBB17_28:                              # %if.end.62
	xorps	%xmm0, %xmm0
	movsd	.LCPI17_4(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -64(%rbp)
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB17_30
# BB#29:                                # %if.then.66
	movsd	.LCPI17_1(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB17_33
.LBB17_30:                              # %if.else.68
	movsd	.LCPI17_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB17_32
# BB#31:                                # %if.then.71
	movsd	.LCPI17_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
.LBB17_32:                              # %if.end.73
	jmp	.LBB17_33
.LBB17_33:                              # %if.end.74
	jmp	.LBB17_34
.LBB17_34:                              # %if.end.75
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	addq	$8, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_rgb_to_hsv4, .Lfunc_end17-gimp_rgb_to_hsv4
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4618441417868443648     # double 6
.LCPI18_1:
	.quad	4607182418800017408     # double 1
.LCPI18_2:
	.quad	4602678819172646912     # double 0.5
.LCPI18_3:
	.quad	4643176031446892544     # double 255
	.text
	.globl	gimp_hsv_to_rgb4
	.align	16, 0x90
	.type	gimp_hsv_to_rgb4,@function
gimp_hsv_to_rgb4:                       # @gimp_hsv_to_rgb4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	xorps	%xmm3, %xmm3
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm3, %xmm0
	jne	.LBB18_2
	jp	.LBB18_2
# BB#1:                                 # %if.then
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB18_12
.LBB18_2:                               # %if.else
	movsd	.LCPI18_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	mulsd	-16(%rbp), %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -48(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -56(%rbp)
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB18_4
	jp	.LBB18_4
# BB#3:                                 # %if.then.2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB18_4:                               # %if.end
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI18_1(%rip), %xmm2  # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm1
	movaps	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movaps	%xmm2, %xmm4
	subsd	%xmm3, %xmm4
	mulsd	%xmm4, %xmm1
	subsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, -88(%rbp)
	cvttsd2si	-40(%rbp), %eax
	movl	%eax, %ecx
	subl	$5, %eax
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%eax, -100(%rbp)        # 4-byte Spill
	ja	.LBB18_11
# BB#13:                                # %if.end
	leaq	.LJTI18_0(%rip), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB18_5:                               # %sw.bb
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB18_11
.LBB18_6:                               # %sw.bb.14
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB18_11
.LBB18_7:                               # %sw.bb.15
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB18_11
.LBB18_8:                               # %sw.bb.16
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB18_11
.LBB18_9:                               # %sw.bb.17
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB18_11
.LBB18_10:                              # %sw.bb.18
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB18_11:                              # %sw.epilog
	jmp	.LBB18_12
.LBB18_12:                              # %if.end.19
	movsd	.LCPI18_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI18_3(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	-16(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, (%rdx)
	movaps	%xmm1, %xmm2
	mulsd	-24(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 1(%rdx)
	mulsd	-32(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 2(%rdx)
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_hsv_to_rgb4, .Lfunc_end18-gimp_hsv_to_rgb4
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI18_0:
	.long	.LBB18_5-.LJTI18_0
	.long	.LBB18_6-.LJTI18_0
	.long	.LBB18_7-.LJTI18_0
	.long	.LBB18_8-.LJTI18_0
	.long	.LBB18_9-.LJTI18_0
	.long	.LBB18_10-.LJTI18_0

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpColor"
	.size	.L.str, 13

	.type	.L__func__.gimp_rgb_to_hsv,@object # @__func__.gimp_rgb_to_hsv
.L__func__.gimp_rgb_to_hsv:
	.asciz	"gimp_rgb_to_hsv"
	.size	.L__func__.gimp_rgb_to_hsv, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"rgb != NULL"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"hsv != NULL"
	.size	.L.str.2, 12

	.type	.L__func__.gimp_hsv_to_rgb,@object # @__func__.gimp_hsv_to_rgb
.L__func__.gimp_hsv_to_rgb:
	.asciz	"gimp_hsv_to_rgb"
	.size	.L__func__.gimp_hsv_to_rgb, 16

	.type	.L__func__.gimp_rgb_to_hsl,@object # @__func__.gimp_rgb_to_hsl
.L__func__.gimp_rgb_to_hsl:
	.asciz	"gimp_rgb_to_hsl"
	.size	.L__func__.gimp_rgb_to_hsl, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"hsl != NULL"
	.size	.L.str.3, 12

	.type	.L__func__.gimp_hsl_to_rgb,@object # @__func__.gimp_hsl_to_rgb
.L__func__.gimp_hsl_to_rgb:
	.asciz	"gimp_hsl_to_rgb"
	.size	.L__func__.gimp_hsl_to_rgb, 16

	.type	.L__func__.gimp_rgb_to_cmyk,@object # @__func__.gimp_rgb_to_cmyk
.L__func__.gimp_rgb_to_cmyk:
	.asciz	"gimp_rgb_to_cmyk"
	.size	.L__func__.gimp_rgb_to_cmyk, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"cmyk != NULL"
	.size	.L.str.4, 13

	.type	.L__func__.gimp_cmyk_to_rgb,@object # @__func__.gimp_cmyk_to_rgb
.L__func__.gimp_cmyk_to_rgb:
	.asciz	"gimp_cmyk_to_rgb"
	.size	.L__func__.gimp_cmyk_to_rgb, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
