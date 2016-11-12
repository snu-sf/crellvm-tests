	.text
	.file	"gimpbilinear.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_bilinear
	.align	16, 0x90
	.type	gimp_bilinear,@function
gimp_bilinear:                          # @gimp_bilinear
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
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rdi, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -32(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_bilinear(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB0_10
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	fmod@PLT
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	fmod@PLT
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -24(%rbp)
	ucomisd	-16(%rbp), %xmm1
	jbe	.LBB0_7
# BB#6:                                 # %if.then.3
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
.LBB0_7:                                # %if.end.4
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB0_9
# BB#8:                                 # %if.then.6
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB0_9:                                # %if.end.8
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	subsd	-16(%rbp), %xmm1
	movq	-32(%rbp), %rax
	mulsd	(%rax), %xmm1
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-32(%rbp), %rax
	mulsd	8(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -40(%rbp)
	movaps	%xmm0, %xmm1
	subsd	-16(%rbp), %xmm1
	movq	-32(%rbp), %rax
	mulsd	16(%rax), %xmm1
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-32(%rbp), %rax
	mulsd	24(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -48(%rbp)
	subsd	-24(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB0_10:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_bilinear, .Lfunc_end0-gimp_bilinear
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_bilinear_8
	.align	16, 0x90
	.type	gimp_bilinear_8,@function
gimp_bilinear_8:                        # @gimp_bilinear_8
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
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rdi, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -32(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_bilinear_8(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movb	$0, -1(%rbp)
	jmp	.LBB1_10
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	fmod@PLT
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	fmod@PLT
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -24(%rbp)
	ucomisd	-16(%rbp), %xmm1
	jbe	.LBB1_7
# BB#6:                                 # %if.then.3
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
.LBB1_7:                                # %if.end.4
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB1_9
# BB#8:                                 # %if.then.6
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB1_9:                                # %if.end.8
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm3, %xmm2
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm3, %xmm2
	movzbl	3(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -48(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movb	%cl, %dl
	movb	%dl, -1(%rbp)
.LBB1_10:                               # %return
	movzbl	-1(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_bilinear_8, .Lfunc_end1-gimp_bilinear_8
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_bilinear_16
	.align	16, 0x90
	.type	gimp_bilinear_16,@function
gimp_bilinear_16:                       # @gimp_bilinear_16
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
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rdi, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -32(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_bilinear_16(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movw	$0, -2(%rbp)
	jmp	.LBB2_10
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	fmod@PLT
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	fmod@PLT
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -24(%rbp)
	ucomisd	-16(%rbp), %xmm1
	jbe	.LBB2_7
# BB#6:                                 # %if.then.3
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
.LBB2_7:                                # %if.end.4
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB2_9
# BB#8:                                 # %if.then.6
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB2_9:                                # %if.end.8
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movq	-32(%rbp), %rax
	movzwl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm3, %xmm2
	movzwl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movq	-32(%rbp), %rax
	movzwl	4(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm3, %xmm2
	movzwl	6(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -48(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movw	%cx, %dx
	movw	%dx, -2(%rbp)
.LBB2_10:                               # %return
	movzwl	-2(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_bilinear_16, .Lfunc_end2-gimp_bilinear_16
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_bilinear_32
	.align	16, 0x90
	.type	gimp_bilinear_32,@function
gimp_bilinear_32:                       # @gimp_bilinear_32
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
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rdi, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -32(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_bilinear_32(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB3_10
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	fmod@PLT
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	fmod@PLT
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -24(%rbp)
	ucomisd	-16(%rbp), %xmm1
	jbe	.LBB3_7
# BB#6:                                 # %if.then.3
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
.LBB3_7:                                # %if.end.4
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB3_9
# BB#8:                                 # %if.then.6
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB3_9:                                # %if.end.8
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	4(%rax), %edx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm3
	mulsd	%xmm3, %xmm2
	movl	%edx, %eax
	cvtsi2sdq	%rax, %xmm3
	mulsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movl	12(%rax), %edx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm3
	mulsd	%xmm3, %xmm2
	movl	%edx, %eax
	cvtsi2sdq	%rax, %xmm3
	mulsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -48(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
.LBB3_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_bilinear_32, .Lfunc_end3-gimp_bilinear_32
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_bilinear_rgb
	.align	16, 0x90
	.type	gimp_bilinear_rgb,@function
gimp_bilinear_rgb:                      # @gimp_bilinear_rgb
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
	subq	$112, %rsp
	movq	%rdi, %rax
	xorl	%ecx, %ecx
	movl	$32, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-88(%rbp), %r8
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movl	%ecx, %esi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	memset@PLT
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_bilinear_rgb(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, (%rsi)
	movq	-80(%rbp), %rdx
	movq	%rdx, 8(%rsi)
	movq	-72(%rbp), %rdx
	movq	%rdx, 16(%rsi)
	movq	-64(%rbp), %rdx
	movq	%rdx, 24(%rsi)
	jmp	.LBB4_10
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movsd	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	callq	fmod@PLT
	movsd	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	fmod@PLT
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -16(%rbp)
	ucomisd	-8(%rbp), %xmm1
	jbe	.LBB4_7
# BB#6:                                 # %if.then.3
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	-8(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB4_7:                                # %if.end.4
	xorps	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB4_9
# BB#8:                                 # %if.then.6
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
.LBB4_9:                                # %if.end.8
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	subsd	-8(%rbp), %xmm1
	movsd	%xmm1, -48(%rbp)
	subsd	-16(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	mulsd	(%rax), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	mulsd	32(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	mulsd	64(%rax), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	mulsd	96(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	mulsd	8(%rax), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	mulsd	40(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	mulsd	72(%rax), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	mulsd	104(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	mulsd	16(%rax), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	mulsd	48(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	mulsd	80(%rax), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	mulsd	112(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-72(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, 24(%rcx)
.LBB4_10:                               # %return
	movq	-104(%rbp), %rax        # 8-byte Reload
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_bilinear_rgb, .Lfunc_end4-gimp_bilinear_rgb
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_bilinear_rgba
	.align	16, 0x90
	.type	gimp_bilinear_rgba,@function
gimp_bilinear_rgba:                     # @gimp_bilinear_rgba
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
	subq	$144, %rsp
	movq	%rdi, %rax
	xorl	%ecx, %ecx
	movl	$32, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-128(%rbp), %r8
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%ecx, %esi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	memset@PLT
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_bilinear_rgba(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	-128(%rbp), %rdx
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rdx, (%rsi)
	movq	-120(%rbp), %rdx
	movq	%rdx, 8(%rsi)
	movq	-112(%rbp), %rdx
	movq	%rdx, 16(%rsi)
	movq	-104(%rbp), %rdx
	movq	%rdx, 24(%rsi)
	jmp	.LBB5_12
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	movsd	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	callq	fmod@PLT
	movsd	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	fmod@PLT
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -16(%rbp)
	ucomisd	-8(%rbp), %xmm1
	jbe	.LBB5_7
# BB#6:                                 # %if.then.3
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	-8(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB5_7:                                # %if.end.4
	xorps	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB5_9
# BB#8:                                 # %if.then.6
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
.LBB5_9:                                # %if.end.8
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	subsd	-8(%rbp), %xmm2
	movsd	%xmm2, -48(%rbp)
	subsd	-16(%rbp), %xmm1
	movsd	%xmm1, -56(%rbp)
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -64(%rbp)
	movq	-24(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -72(%rbp)
	movq	-24(%rbp), %rax
	movsd	88(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -80(%rbp)
	movq	-24(%rbp), %rax
	movsd	120(%rax), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -88(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	movsd	-8(%rbp), %xmm2         # xmm2 = mem[0],zero
	mulsd	-72(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	movsd	-8(%rbp), %xmm2         # xmm2 = mem[0],zero
	mulsd	-88(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-40(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	%xmm1, -96(%rbp)
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_11
# BB#10:                                # %if.then.26
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	movq	-24(%rbp), %rax
	mulsd	(%rax), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	movq	-24(%rbp), %rax
	mulsd	32(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	movq	-24(%rbp), %rax
	mulsd	64(%rax), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	mulsd	-88(%rbp), %xmm1
	movq	-24(%rbp), %rax
	mulsd	96(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	divsd	-96(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	movq	-24(%rbp), %rax
	mulsd	8(%rax), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	movq	-24(%rbp), %rax
	mulsd	40(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	movq	-24(%rbp), %rax
	mulsd	72(%rax), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	mulsd	-88(%rbp), %xmm1
	movq	-24(%rbp), %rax
	mulsd	104(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	divsd	-96(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	movq	-24(%rbp), %rax
	mulsd	16(%rax), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	movq	-24(%rbp), %rax
	mulsd	48(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	movq	-24(%rbp), %rax
	mulsd	80(%rax), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	mulsd	-88(%rbp), %xmm1
	movq	-24(%rbp), %rax
	mulsd	112(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	divsd	-96(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
.LBB5_11:                               # %if.end.92
	movq	-128(%rbp), %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-112(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, 24(%rcx)
.LBB5_12:                               # %return
	movq	-144(%rbp), %rax        # 8-byte Reload
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_bilinear_rgba, .Lfunc_end5-gimp_bilinear_rgba
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_bilinear_pixels_8
	.align	16, 0x90
	.type	gimp_bilinear_pixels_8,@function
gimp_bilinear_pixels_8:                 # @gimp_bilinear_pixels_8
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_bilinear_pixels_8(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_27
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.body.1
	cmpq	$0, -40(%rbp)
	je	.LBB6_8
# BB#7:                                 # %if.then.3
	jmp	.LBB6_9
.LBB6_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_bilinear_pixels_8(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_27
.LBB6_9:                                # %if.end.5
	jmp	.LBB6_10
.LBB6_10:                               # %do.end.6
	movsd	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	fmod@PLT
	movsd	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	fmod@PLT
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -24(%rbp)
	ucomisd	-16(%rbp), %xmm1
	jbe	.LBB6_12
# BB#11:                                # %if.then.9
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
.LBB6_12:                               # %if.end.10
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB6_14
# BB#13:                                # %if.then.12
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB6_14:                               # %if.end.14
	cmpl	$0, -32(%rbp)
	je	.LBB6_22
# BB#15:                                # %if.then.15
	movl	-28(%rbp), %eax
	decl	%eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	24(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI6_0(%rip), %xmm2   # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	movsd	-16(%rbp), %xmm4        # xmm4 = mem[0],zero
	subsd	%xmm4, %xmm2
	movsd	-56(%rbp), %xmm5        # xmm5 = mem[0],zero
	movaps	%xmm2, %xmm6
	mulsd	%xmm5, %xmm6
	movsd	-64(%rbp), %xmm5        # xmm5 = mem[0],zero
	movaps	%xmm4, %xmm7
	mulsd	%xmm5, %xmm7
	addsd	%xmm7, %xmm6
	mulsd	%xmm6, %xmm3
	movsd	-72(%rbp), %xmm5        # xmm5 = mem[0],zero
	mulsd	%xmm5, %xmm2
	mulsd	%xmm0, %xmm4
	addsd	%xmm4, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm3
	movsd	%xmm3, -88(%rbp)
	cvttsd2si	%xmm3, %eax
	movb	%al, %sil
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	cmpb	$0, (%rdx,%rcx)
	je	.LBB6_21
# BB#16:                                # %if.then.46
	movl	$0, -44(%rbp)
.LBB6_17:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jae	.LBB6_20
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB6_17 Depth=1
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	8(%rdx), %rdx
	movzbl	(%rsi,%rcx), %eax
	cvtsi2sdl	%eax, %xmm3
	mulsd	%xmm3, %xmm2
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm2
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm3
	mulsd	%xmm3, %xmm0
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -96(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rsi
	movq	24(%rdx), %rdx
	movzbl	(%rsi,%rcx), %eax
	cvtsi2sdl	%eax, %xmm3
	mulsd	%xmm3, %xmm2
	movsd	-72(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm2
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm3
	mulsd	%xmm3, %xmm0
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -104(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %dil
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	%dil, (%rdx,%rcx)
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_17
.LBB6_20:                               # %for.end
	jmp	.LBB6_21
.LBB6_21:                               # %if.end.88
	jmp	.LBB6_27
.LBB6_22:                               # %if.else.89
	movl	$0, -44(%rbp)
.LBB6_23:                               # %for.cond.90
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jae	.LBB6_26
# BB#24:                                # %for.body.93
                                        #   in Loop: Header=BB6_23 Depth=1
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	8(%rdx), %rdx
	movzbl	(%rsi,%rcx), %eax
	cvtsi2sdl	%eax, %xmm3
	mulsd	%xmm3, %xmm2
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm3
	mulsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -112(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rsi
	movq	24(%rdx), %rdx
	movzbl	(%rsi,%rcx), %eax
	cvtsi2sdl	%eax, %xmm3
	mulsd	%xmm3, %xmm2
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm3
	mulsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -120(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-112(%rbp), %xmm3       # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %dil
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	%dil, (%rdx,%rcx)
# BB#25:                                # %for.inc.131
                                        #   in Loop: Header=BB6_23 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_23
.LBB6_26:                               # %for.end.133
	jmp	.LBB6_27
.LBB6_27:                               # %if.end.134
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_bilinear_pixels_8, .Lfunc_end6-gimp_bilinear_pixels_8
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpColor"
	.size	.L.str, 13

	.type	.L__func__.gimp_bilinear,@object # @__func__.gimp_bilinear
.L__func__.gimp_bilinear:
	.asciz	"gimp_bilinear"
	.size	.L__func__.gimp_bilinear, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"values != NULL"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_bilinear_8,@object # @__func__.gimp_bilinear_8
.L__func__.gimp_bilinear_8:
	.asciz	"gimp_bilinear_8"
	.size	.L__func__.gimp_bilinear_8, 16

	.type	.L__func__.gimp_bilinear_16,@object # @__func__.gimp_bilinear_16
.L__func__.gimp_bilinear_16:
	.asciz	"gimp_bilinear_16"
	.size	.L__func__.gimp_bilinear_16, 17

	.type	.L__func__.gimp_bilinear_32,@object # @__func__.gimp_bilinear_32
.L__func__.gimp_bilinear_32:
	.asciz	"gimp_bilinear_32"
	.size	.L__func__.gimp_bilinear_32, 17

	.type	.L__func__.gimp_bilinear_rgb,@object # @__func__.gimp_bilinear_rgb
.L__func__.gimp_bilinear_rgb:
	.asciz	"gimp_bilinear_rgb"
	.size	.L__func__.gimp_bilinear_rgb, 18

	.type	.L__func__.gimp_bilinear_rgba,@object # @__func__.gimp_bilinear_rgba
.L__func__.gimp_bilinear_rgba:
	.asciz	"gimp_bilinear_rgba"
	.size	.L__func__.gimp_bilinear_rgba, 19

	.type	.L__func__.gimp_bilinear_pixels_8,@object # @__func__.gimp_bilinear_pixels_8
.L__func__.gimp_bilinear_pixels_8:
	.asciz	"gimp_bilinear_pixels_8"
	.size	.L__func__.gimp_bilinear_pixels_8, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"dest != NULL"
	.size	.L.str.2, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
