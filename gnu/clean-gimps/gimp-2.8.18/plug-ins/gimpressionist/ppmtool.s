	.text
	.file	"ppmtool.bc"
	.globl	ppm_kill
	.align	16, 0x90
	.type	ppm_kill,@function
ppm_kill:                               # @ppm_kill
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
	movq	8(%rdi), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	$0, 8(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, (%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 4(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ppm_kill, .Lfunc_end0-ppm_kill
	.cfi_endproc

	.globl	ppm_new
	.align	16, 0x90
	.type	ppm_new,@function
ppm_new:                                # @ppm_new
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	$3, %ecx
	movl	%ecx, %r8d
	leaq	-23(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%r9, %rdi
	movl	%eax, %esi
	movq	%r8, %rdx
	callq	memset
	cmpl	$1, -12(%rbp)
	jge	.LBB1_2
# BB#1:                                 # %if.then
	movl	$1, -12(%rbp)
.LBB1_2:                                # %if.end
	cmpl	$1, -16(%rbp)
	jge	.LBB1_4
# BB#3:                                 # %if.then.2
	movl	$1, -16(%rbp)
.LBB1_4:                                # %if.end.3
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 4(%rcx)
	imull	$3, -12(%rbp), %eax
	imull	-16(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	$0, -20(%rbp)
.LBB1_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	imull	$3, -12(%rbp), %ecx
	imull	-16(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB1_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB1_5 Depth=1
	movb	-23(%rbp), %al
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	-22(%rbp), %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	-21(%rbp), %al
	movl	-20(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB1_5
.LBB1_8:                                # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ppm_new, .Lfunc_end1-ppm_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_1:
	.long	1065353216              # float 1
	.text
	.globl	get_rgb
	.align	16, 0x90
	.type	get_rgb,@function
get_rgb:                                # @get_rgb
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
	xorps	%xmm2, %xmm2
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm1, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -80(%rbp)
	movq	-8(%rbp), %rsi
	imull	$3, (%rsi), %eax
	movl	%eax, -84(%rbp)
	cvtss2sd	-12(%rbp), %xmm0
	ucomisd	%xmm0, %xmm2
	jbe	.LBB2_2
# BB#1:                                 # %if.then
	movl	$1, -80(%rbp)
	jmp	.LBB2_5
.LBB2_2:                                # %if.else
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	cvtsi2ssl	%ecx, %xmm1
	ucomiss	%xmm1, %xmm0
	jb	.LBB2_4
# BB#3:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, -12(%rbp)
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %if.end.10
	xorps	%xmm0, %xmm0
	cvtss2sd	-16(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB2_7
# BB#6:                                 # %if.then.14
	movl	$1, -80(%rbp)
	jmp	.LBB2_10
.LBB2_7:                                # %if.else.15
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	subl	$1, %ecx
	cvtsi2ssl	%ecx, %xmm1
	ucomiss	%xmm1, %xmm0
	jb	.LBB2_9
# BB#8:                                 # %if.then.20
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	subl	$1, %ecx
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, -16(%rbp)
.LBB2_9:                                # %if.end.24
	jmp	.LBB2_10
.LBB2_10:                               # %if.end.25
	cmpl	$0, -80(%rbp)
	je	.LBB2_12
# BB#11:                                # %if.then.26
	movq	-24(%rbp), %rax
	movb	$0, 2(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB2_31
.LBB2_12:                               # %if.end.29
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movss	.LCPI2_1, %xmm2         # xmm2 = mem[0],zero,zero,zero
	cvttss2si	-12(%rbp), %eax
	cvtsi2ssl	%eax, %xmm3
	movss	%xmm3, -28(%rbp)
	cvttss2si	-16(%rbp), %eax
	cvtsi2ssl	%eax, %xmm3
	movss	%xmm3, -32(%rbp)
	cvttss2si	-28(%rbp), %eax
	movl	%eax, -36(%rbp)
	movaps	%xmm2, %xmm3
	addss	-28(%rbp), %xmm3
	cvttss2si	%xmm3, %eax
	movl	%eax, -40(%rbp)
	cvttss2si	-32(%rbp), %eax
	movl	%eax, -44(%rbp)
	addss	-32(%rbp), %xmm2
	cvttss2si	%xmm2, %eax
	movl	%eax, -48(%rbp)
	cvtss2sd	-12(%rbp), %xmm2
	movaps	%xmm1, %xmm3
	subsd	%xmm2, %xmm3
	cvtss2sd	-28(%rbp), %xmm2
	addsd	%xmm2, %xmm3
	cvtss2sd	-16(%rbp), %xmm2
	movaps	%xmm1, %xmm4
	subsd	%xmm2, %xmm4
	cvtss2sd	-32(%rbp), %xmm2
	addsd	%xmm2, %xmm4
	mulsd	%xmm4, %xmm3
	cvtsd2ss	%xmm3, %xmm2
	movss	%xmm2, -52(%rbp)
	movss	-12(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	subss	-28(%rbp), %xmm2
	cvtss2sd	%xmm2, %xmm2
	cvtss2sd	-16(%rbp), %xmm3
	movaps	%xmm1, %xmm4
	subsd	%xmm3, %xmm4
	cvtss2sd	-32(%rbp), %xmm3
	addsd	%xmm3, %xmm4
	mulsd	%xmm4, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, -56(%rbp)
	cvtss2sd	-12(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	cvtss2sd	-28(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movss	-16(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	subss	-32(%rbp), %xmm2
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -60(%rbp)
	movss	-12(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	-28(%rbp), %xmm1
	movss	-16(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	subss	-32(%rbp), %xmm2
	mulss	%xmm2, %xmm1
	movss	%xmm1, -64(%rbp)
	movl	-44(%rbp), %eax
	imull	-84(%rbp), %eax
	imull	$3, -36(%rbp), %ecx
	addl	%ecx, %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	-52(%rbp), %xmm1
	movss	%xmm1, -68(%rbp)
	movl	-44(%rbp), %eax
	imull	-84(%rbp), %eax
	imull	$3, -36(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	-52(%rbp), %xmm1
	movss	%xmm1, -72(%rbp)
	movl	-44(%rbp), %eax
	imull	-84(%rbp), %eax
	imull	$3, -36(%rbp), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	-52(%rbp), %xmm1
	movss	%xmm1, -76(%rbp)
	cvtss2sd	-56(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_14
# BB#13:                                # %if.then.99
	movl	-44(%rbp), %eax
	imull	-84(%rbp), %eax
	imull	$3, -40(%rbp), %ecx
	addl	%ecx, %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-56(%rbp), %xmm0
	addss	-68(%rbp), %xmm0
	movss	%xmm0, -68(%rbp)
.LBB2_14:                               # %if.end.111
	xorps	%xmm0, %xmm0
	cvtss2sd	-56(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_16
# BB#15:                                # %if.then.115
	movl	-44(%rbp), %eax
	imull	-84(%rbp), %eax
	imull	$3, -40(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-56(%rbp), %xmm0
	addss	-72(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
.LBB2_16:                               # %if.end.127
	xorps	%xmm0, %xmm0
	cvtss2sd	-56(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_18
# BB#17:                                # %if.then.131
	movl	-44(%rbp), %eax
	imull	-84(%rbp), %eax
	imull	$3, -40(%rbp), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-56(%rbp), %xmm0
	addss	-76(%rbp), %xmm0
	movss	%xmm0, -76(%rbp)
.LBB2_18:                               # %if.end.143
	xorps	%xmm0, %xmm0
	cvtss2sd	-60(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_20
# BB#19:                                # %if.then.147
	movl	-48(%rbp), %eax
	imull	-84(%rbp), %eax
	imull	$3, -36(%rbp), %ecx
	addl	%ecx, %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-60(%rbp), %xmm0
	addss	-68(%rbp), %xmm0
	movss	%xmm0, -68(%rbp)
.LBB2_20:                               # %if.end.159
	xorps	%xmm0, %xmm0
	cvtss2sd	-60(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_22
# BB#21:                                # %if.then.163
	movl	-48(%rbp), %eax
	imull	-84(%rbp), %eax
	imull	$3, -36(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-60(%rbp), %xmm0
	addss	-72(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
.LBB2_22:                               # %if.end.175
	xorps	%xmm0, %xmm0
	cvtss2sd	-60(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_24
# BB#23:                                # %if.then.179
	movl	-48(%rbp), %eax
	imull	-84(%rbp), %eax
	imull	$3, -36(%rbp), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-60(%rbp), %xmm0
	addss	-76(%rbp), %xmm0
	movss	%xmm0, -76(%rbp)
.LBB2_24:                               # %if.end.191
	xorps	%xmm0, %xmm0
	cvtss2sd	-64(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_26
# BB#25:                                # %if.then.195
	movl	-48(%rbp), %eax
	imull	-84(%rbp), %eax
	imull	$3, -40(%rbp), %ecx
	addl	%ecx, %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-64(%rbp), %xmm0
	addss	-68(%rbp), %xmm0
	movss	%xmm0, -68(%rbp)
.LBB2_26:                               # %if.end.207
	xorps	%xmm0, %xmm0
	cvtss2sd	-64(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_28
# BB#27:                                # %if.then.211
	movl	-48(%rbp), %eax
	imull	-84(%rbp), %eax
	imull	$3, -40(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-64(%rbp), %xmm0
	addss	-72(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
.LBB2_28:                               # %if.end.223
	xorps	%xmm0, %xmm0
	cvtss2sd	-64(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_30
# BB#29:                                # %if.then.227
	movl	-48(%rbp), %eax
	imull	-84(%rbp), %eax
	imull	$3, -40(%rbp), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-64(%rbp), %xmm0
	addss	-76(%rbp), %xmm0
	movss	%xmm0, -76(%rbp)
.LBB2_30:                               # %if.end.239
	cvttss2si	-68(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, (%rdx)
	cvttss2si	-72(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, 1(%rdx)
	cvttss2si	-76(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, 2(%rdx)
.LBB2_31:                               # %return
	popq	%rbp
	retq
.Lfunc_end2:
	.size	get_rgb, .Lfunc_end2-get_rgb
	.cfi_endproc

	.globl	resize
	.align	16, 0x90
	.type	resize,@function
resize:                                 # @resize
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
	subq	$64, %rsp
	leaq	-48(%rbp), %rax
	xorl	%ecx, %ecx
	movl	$16, %r8d
	movl	%r8d, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2ssl	(%rdi), %xmm0
	cvtsi2ssl	-12(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2ssl	4(%rdi), %xmm0
	cvtsi2ssl	-16(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	%r9, %rdx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	memset
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	ppm_new
	movl	$0, -24(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB3_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-40(%rbp), %rax
	movl	-24(%rbp), %ecx
	imull	-48(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movl	$0, -20(%rbp)
.LBB3_3:                                # %for.cond.9
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB3_6
# BB#4:                                 # %for.body.12
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	-8(%rbp), %rdi
	cvtsi2ssl	-20(%rbp), %xmm0
	mulss	-28(%rbp), %xmm0
	cvtsi2ssl	-24(%rbp), %xmm1
	mulss	-32(%rbp), %xmm1
	imull	$3, -20(%rbp), %eax
	movslq	%eax, %rcx
	addq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	callq	get_rgb
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB3_3
.LBB3_6:                                # %for.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc.18
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB3_1
.LBB3_8:                                # %for.end.20
	movq	-8(%rbp), %rdi
	callq	ppm_kill
	movl	-48(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, (%rdi)
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 4(%rdi)
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, 8(%rcx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	resize, .Lfunc_end3-resize
	.cfi_endproc

	.globl	rescale
	.align	16, 0x90
	.type	rescale,@function
rescale:                                # @rescale
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
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	mulsd	-16(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	movq	-8(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm0
	mulsd	-16(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	callq	resize
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	rescale, .Lfunc_end4-rescale
	.cfi_endproc

	.globl	resize_fast
	.align	16, 0x90
	.type	resize_fast,@function
resize_fast:                            # @resize_fast
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
	leaq	-48(%rbp), %rax
	xorl	%ecx, %ecx
	movl	$16, %r8d
	movl	%r8d, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2ssl	(%rdi), %xmm0
	cvtsi2ssl	-12(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2ssl	4(%rdi), %xmm0
	cvtsi2ssl	-16(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	%r9, %rdx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	memset
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	ppm_new
	movl	$0, -24(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB5_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$0, -20(%rbp)
.LBB5_3:                                # %for.cond.6
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB5_6
# BB#4:                                 # %for.body.9
                                        #   in Loop: Header=BB5_3 Depth=2
	cvtsi2ssl	-20(%rbp), %xmm0
	mulss	-28(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -52(%rbp)
	cvtsi2ssl	-24(%rbp), %xmm0
	mulss	-32(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -56(%rbp)
	movl	-24(%rbp), %eax
	imull	-48(%rbp), %eax
	imull	$3, %eax, %eax
	imull	$3, -20(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rsi
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rdi
	imull	(%rdi), %eax
	imull	$3, %eax, %eax
	imull	$3, -52(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdi
	movq	-8(%rbp), %r8
	movq	8(%r8), %r8
	movw	(%r8,%rdi), %r9w
	movw	%r9w, (%rsi,%rdx)
	movb	2(%r8,%rdi), %r10b
	movb	%r10b, 2(%rsi,%rdx)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB5_3
.LBB5_6:                                # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_7
.LBB5_7:                                # %for.inc.29
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB5_1
.LBB5_8:                                # %for.end.31
	movq	-8(%rbp), %rdi
	callq	ppm_kill
	movl	-48(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, (%rdi)
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 4(%rdi)
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, 8(%rcx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	resize_fast, .Lfunc_end5-resize_fast
	.cfi_endproc

	.globl	ppm_load
	.align	16, 0x90
	.type	ppm_load,@function
ppm_load:                               # @ppm_load
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -232(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	subq	$4, %rax
	addq	-8(%rbp), %rax
	movl	$.L.str, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	load_gimp_brush
	jmp	.LBB6_18
.LBB6_2:                                # %if.end
	movabsq	$.L.str.1, %rsi
	movq	-8(%rbp), %rdi
	callq	fopen_from_search_path
	movq	%rax, -240(%rbp)
	movq	-16(%rbp), %rdi
	callq	ppm_kill
	cmpq	$0, -240(%rbp)
	jne	.LBB6_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.2, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
	movl	$10, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	ppm_new
	jmp	.LBB6_18
.LBB6_4:                                # %if.end.6
	movl	$200, %edx
	leaq	-224(%rbp), %rsi
	movq	-240(%rbp), %rdi
	callq	readline
	leaq	-224(%rbp), %rdi
	movl	$.L.str.3, %edx
	movl	%edx, %esi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB6_8
# BB#5:                                 # %if.then.11
	leaq	-224(%rbp), %rdi
	movl	$.L.str.4, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB6_7
# BB#6:                                 # %if.then.15
	movq	-240(%rbp), %rdi
	callq	fclose
	movq	-8(%rbp), %rdi
	movl	%eax, -256(%rbp)        # 4-byte Spill
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.5, %rdi
	movl	$7, %ecx
	leaq	-224(%rbp), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
	movl	$10, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	ppm_new
	jmp	.LBB6_18
.LBB6_7:                                # %if.end.19
	movl	$1, -232(%rbp)
.LBB6_8:                                # %if.end.20
	movl	$200, %edx
	leaq	-224(%rbp), %rsi
	movq	-240(%rbp), %rdi
	callq	readline
	leaq	-224(%rbp), %rdi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	atoi
	movl	$32, %esi
	leaq	-224(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	callq	strchr
	addq	$1, %rax
	movq	%rax, %rdi
	callq	atoi
	movl	$200, %edx
	leaq	-224(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movq	-240(%rbp), %rdi
	callq	readline
	leaq	-224(%rbp), %rdi
	movl	$.L.str.6, %edx
	movl	%edx, %esi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB6_10
# BB#9:                                 # %if.then.33
	movq	-240(%rbp), %rdi
	callq	fclose
	movq	-8(%rbp), %rdi
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.7, %rdi
	movl	$7, %ecx
	leaq	-224(%rbp), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
	movl	$10, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	ppm_new
	jmp	.LBB6_18
.LBB6_10:                               # %if.end.37
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-16(%rbp), %rax
	imull	(%rax), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc
	movq	-16(%rbp), %rdi
	movq	%rax, 8(%rdi)
	cmpl	$0, -232(%rbp)
	jne	.LBB6_12
# BB#11:                                # %if.then.43
	movl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rcx
	imull	$3, 4(%rcx), %eax
	movq	-16(%rbp), %rcx
	imull	(%rcx), %eax
	movslq	%eax, %rsi
	movq	-240(%rbp), %rcx
	callq	fread
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB6_17
.LBB6_12:                               # %if.else
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	imull	4(%rax), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-16(%rbp), %rax
	imull	(%rax), %ecx
	movslq	%ecx, %rsi
	movq	-240(%rbp), %rcx
	callq	fread
	movl	$0, -228(%rbp)
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB6_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-228(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-16(%rbp), %rcx
	imull	4(%rcx), %edx
	imull	$3, %edx, %edx
	cmpl	%edx, %eax
	jge	.LBB6_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	$3, %eax
	movl	-228(%rbp), %ecx
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-292(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movslq	%eax, %rsi
	movq	-248(%rbp), %rdi
	movb	(%rdi,%rsi), %r8b
	movslq	-228(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movb	%r8b, (%rdi,%rsi)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	-228(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -228(%rbp)
	jmp	.LBB6_13
.LBB6_16:                               # %for.end
	movq	-248(%rbp), %rdi
	callq	g_free
.LBB6_17:                               # %if.end.70
	movq	-240(%rbp), %rdi
	callq	fclose
	movl	%eax, -296(%rbp)        # 4-byte Spill
.LBB6_18:                               # %return
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ppm_load, .Lfunc_end6-ppm_load
	.cfi_endproc

	.align	16, 0x90
	.type	load_gimp_brush,@function
load_gimp_brush:                        # @load_gimp_brush
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
	movabsq	$.L.str.1, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen_from_search_path
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	ppm_kill
	cmpq	$0, -24(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.11, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
	movl	$10, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	ppm_new
	jmp	.LBB7_15
.LBB7_2:                                # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movl	$28, %eax
	movl	%eax, %edx
	leaq	-56(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	fread
	movl	$0, -68(%rbp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB7_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, -68(%rbp)
	jge	.LBB7_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB7_3 Depth=1
	leaq	-56(%rbp), %rax
	movslq	-68(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	msb2lsb
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB7_3
.LBB7_6:                                # %for.end
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	movl	-44(%rbp), %edx
	callq	ppm_new
	movl	-48(%rbp), %edx
	movl	%edx, %edi
	callq	g_malloc
	xorl	%edx, %edx
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movl	-56(%rbp), %esi
                                        # kill: RSI<def> ESI<kill>
	callq	fseek
	movl	$0, -72(%rbp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB7_7:                                # %for.cond.7
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
	movl	-72(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB7_14
# BB#8:                                 # %for.body.11
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rsi
	movq	-24(%rbp), %rcx
	callq	fread
	movl	$0, -68(%rbp)
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB7_9:                                # %for.cond.15
                                        #   Parent Loop BB7_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB7_12
# BB#10:                                # %for.body.19
                                        #   in Loop: Header=BB7_9 Depth=2
	movl	-72(%rbp), %eax
	movq	-16(%rbp), %rcx
	imull	(%rcx), %eax
	imull	$3, %eax, %eax
	imull	$3, -68(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -76(%rbp)
	movslq	-68(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movb	(%rsi,%rcx), %dil
	movl	-76(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%dil, (%rsi,%rcx)
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%dil, (%rsi,%rcx)
	movl	-76(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%dil, (%rsi,%rcx)
# BB#11:                                # %for.inc.36
                                        #   in Loop: Header=BB7_9 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB7_9
.LBB7_12:                               # %for.end.38
                                        #   in Loop: Header=BB7_7 Depth=1
	jmp	.LBB7_13
.LBB7_13:                               # %for.inc.39
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB7_7
.LBB7_14:                               # %for.end.41
	movq	-24(%rbp), %rdi
	callq	fclose
	movq	-64(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	g_free
.LBB7_15:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	load_gimp_brush, .Lfunc_end7-load_gimp_brush
	.cfi_endproc

	.align	16, 0x90
	.type	fopen_from_search_path,@function
fopen_from_search_path:                 # @fopen_from_search_path
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	findfile
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fopen
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	fopen_from_search_path, .Lfunc_end8-fopen_from_search_path
	.cfi_endproc

	.align	16, 0x90
	.type	readline,@function
readline:                               # @readline
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
.LBB9_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB9_6
.LBB9_3:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_4
.LBB9_4:                                # %do.cond
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$35, %ecx
	je	.LBB9_1
# BB#5:                                 # %do.end
	movq	-24(%rbp), %rdi
	callq	g_strchomp
	movl	$0, -4(%rbp)
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB9_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	readline, .Lfunc_end9-readline
	.cfi_endproc

	.globl	fill
	.align	16, 0x90
	.type	fill,@function
fill:                                   # @fill
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movzbl	(%rsi), %eax
	movq	-16(%rbp), %rsi
	movzbl	1(%rsi), %ecx
	cmpl	%ecx, %eax
	jne	.LBB10_7
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB10_7
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -25(%rbp)
	movl	$0, -24(%rbp)
.LBB10_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB10_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rdx
	imull	(%rdx), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movzbl	-25(%rbp), %ecx
	movb	%cl, %sil
	movq	-8(%rbp), %rdx
	imull	$3, (%rdx), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	movzbl	%sil, %esi
	callq	memset
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB10_3
.LBB10_6:                               # %for.end
	jmp	.LBB10_16
.LBB10_7:                               # %if.else
	movl	$0, -24(%rbp)
.LBB10_8:                               # %for.cond.19
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_10 Depth 2
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB10_15
# BB#9:                                 # %for.body.23
                                        #   in Loop: Header=BB10_8 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rdx
	imull	(%rdx), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
.LBB10_10:                              # %for.cond.30
                                        #   Parent Loop BB10_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB10_13
# BB#11:                                # %for.body.34
                                        #   in Loop: Header=BB10_10 Depth=2
	imull	$3, -20(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rcx
	movb	(%rcx), %dl
	movl	-44(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rsi
	movb	%dl, (%rsi,%rcx)
	movq	-16(%rbp), %rcx
	movb	1(%rcx), %dl
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rsi
	movb	%dl, (%rsi,%rcx)
	movq	-16(%rbp), %rcx
	movb	2(%rcx), %dl
	movl	-44(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rsi
	movb	%dl, (%rsi,%rcx)
# BB#12:                                # %for.inc.46
                                        #   in Loop: Header=BB10_10 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB10_10
.LBB10_13:                              # %for.end.48
                                        #   in Loop: Header=BB10_8 Depth=1
	jmp	.LBB10_14
.LBB10_14:                              # %for.inc.49
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB10_8
.LBB10_15:                              # %for.end.51
	jmp	.LBB10_16
.LBB10_16:                              # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	fill, .Lfunc_end10-fill
	.cfi_endproc

	.globl	ppm_copy
	.align	16, 0x90
	.type	ppm_copy,@function
ppm_copy:                               # @ppm_copy
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	ppm_kill
	movq	-8(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-8(%rbp), %rsi
	movl	4(%rsi), %eax
	movq	-16(%rbp), %rsi
	movl	%eax, 4(%rsi)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	-16(%rbp), %rsi
	imull	$3, (%rsi), %eax
	movq	-16(%rbp), %rsi
	imull	4(%rsi), %eax
	movl	%eax, %esi
	callq	g_memdup
	movq	-16(%rbp), %rdi
	movq	%rax, 8(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	ppm_copy, .Lfunc_end11-ppm_copy
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4645040803167600640     # double 360
.LCPI12_1:
	.quad	4611686018427387904     # double 2
.LCPI12_2:
	.quad	4614256656552045848     # double 3.1415926535897931
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI12_3:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	free_rotate
	.align	16, 0x90
	.type	free_rotate,@function
free_rotate:                            # @free_rotate
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
	subq	$160, %rsp
	leaq	-56(%rbp), %rax
	movsd	.LCPI12_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI12_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI12_2, %xmm3        # xmm3 = mem[0],zero
	xorl	%esi, %esi
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	%rax, %rdi
	movsd	%xmm2, -96(%rbp)        # 8-byte Spill
	movsd	%xmm3, -104(%rbp)       # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-120(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-8(%rbp), %rax
	imull	$3, (%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	ppm_new
	movl	$0, -24(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_3 Depth 2
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB12_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$0, -20(%rbp)
.LBB12_3:                               # %for.cond.7
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB12_6
# BB#4:                                 # %for.body.10
                                        #   in Loop: Header=BB12_3 Depth=2
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	movq	-8(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm2
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movapd	.LCPI12_3(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	movsd	%xmm1, -32(%rbp)
	cvtsi2sdl	-24(%rbp), %xmm1
	movq	-8(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm2
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movapd	.LCPI12_3(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-40(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -80(%rbp)
	cvtsi2sdl	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm1
	movsd	-128(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	movq	-8(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm3
	divsd	%xmm2, %xmm3
	subsd	%xmm3, %xmm1
	callq	atan2
	movsd	.LCPI12_1, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movq	-8(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	divsd	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-64(%rbp), %xmm2
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	callq	cos
	mulsd	-80(%rbp), %xmm0
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movq	-8(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm0
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-64(%rbp), %xmm2
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	sin
	mulsd	-80(%rbp), %xmm0
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movq	-8(%rbp), %rdi
	cvtsd2ss	-32(%rbp), %xmm0
	cvtsd2ss	-40(%rbp), %xmm1
	movq	-48(%rbp), %rax
	movl	-24(%rbp), %ecx
	imull	-68(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	imull	$3, -20(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, %rsi
	callq	get_rgb
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB12_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB12_3
.LBB12_6:                               # %for.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_7
.LBB12_7:                               # %for.inc.56
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB12_1
.LBB12_8:                               # %for.end.58
	movq	-8(%rbp), %rdi
	callq	ppm_kill
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, (%rdi)
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 4(%rdi)
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, 8(%rcx)
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	free_rotate, .Lfunc_end12-free_rotate
	.cfi_endproc

	.globl	crop
	.align	16, 0x90
	.type	crop,@function
crop:                                   # @crop
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
	leaq	-40(%rbp), %rax
	xorl	%r9d, %r9d
	movl	$16, %r10d
	movl	%r10d, %r11d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%rax, %rdi
	movl	%r9d, %esi
	movq	%r11, %rdx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	memset
	movq	-8(%rbp), %rax
	imull	$3, (%rax), %ecx
	movl	%ecx, -52(%rbp)
	movl	-20(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movl	-24(%rbp), %esi
	subl	-16(%rbp), %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movl	%ecx, %esi
	movl	-68(%rbp), %edx         # 4-byte Reload
	callq	ppm_new
	imull	$3, -40(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-16(%rbp), %ecx
	movl	%ecx, -48(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB13_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB13_3:                               # %for.cond.8
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB13_6
# BB#4:                                 # %for.body.10
                                        #   in Loop: Header=BB13_3 Depth=2
	movl	-48(%rbp), %eax
	subl	-16(%rbp), %eax
	imull	-56(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	-12(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movl	-48(%rbp), %eax
	imull	-52(%rbp), %eax
	imull	$3, -44(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdi
	movq	-8(%rbp), %r8
	movq	8(%r8), %r8
	movw	(%r8,%rdi), %r9w
	movw	%r9w, (%rsi,%rdx)
	movb	2(%r8,%rdi), %r10b
	movb	%r10b, 2(%rsi,%rdx)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB13_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB13_3
.LBB13_6:                               # %for.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_7
.LBB13_7:                               # %for.inc.21
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB13_1
.LBB13_8:                               # %for.end.23
	movq	-8(%rbp), %rdi
	callq	ppm_kill
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, 8(%rax)
	movl	-40(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-36(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	crop, .Lfunc_end13-crop
	.cfi_endproc

	.globl	autocrop
	.align	16, 0x90
	.type	autocrop,@function
autocrop:                               # @autocrop
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movl	$16, %ecx
	movl	%ecx, %edx
	leaq	-64(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %ecx
	movl	%ecx, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %ecx
	movl	%ecx, -28(%rbp)
	movl	$0, -40(%rbp)
	movq	%r8, %rdi
	movl	%eax, %esi
	callq	memset
	movq	-8(%rbp), %rdx
	imull	$3, (%rdx), %eax
	movl	%eax, -68(%rbp)
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movw	(%rdx), %r9w
	movw	%r9w, -43(%rbp)
	movb	2(%rdx), %r10b
	movb	%r10b, -41(%rbp)
	movl	$0, -36(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_3 Depth 2
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB14_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$0, -40(%rbp)
	movl	$0, -32(%rbp)
.LBB14_3:                               # %for.cond.5
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB14_8
# BB#4:                                 # %for.body.8
                                        #   in Loop: Header=BB14_3 Depth=2
	leaq	-43(%rbp), %rax
	movl	-36(%rbp), %ecx
	imull	-68(%rbp), %ecx
	imull	$3, -32(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movq	-8(%rbp), %rdi
	addq	8(%rdi), %rsi
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB14_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB14_8
.LBB14_6:                               # %if.end
                                        #   in Loop: Header=BB14_3 Depth=2
	jmp	.LBB14_7
.LBB14_7:                               # %for.inc
                                        #   in Loop: Header=BB14_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB14_3
.LBB14_8:                               # %for.end
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$0, -40(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.14
	jmp	.LBB14_12
.LBB14_10:                              # %if.end.15
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_11
.LBB14_11:                              # %for.inc.16
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB14_1
.LBB14_12:                              # %for.end.18
	cmpl	$0, -40(%rbp)
	je	.LBB14_14
# BB#13:                                # %if.then.20
	movl	-36(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB14_14:                              # %if.end.21
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	subl	$1, %ecx
	imull	-68(%rbp), %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movw	(%rdx,%rax), %si
	movw	%si, -43(%rbp)
	movb	2(%rdx,%rax), %dil
	movb	%dil, -41(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -36(%rbp)
.LBB14_15:                              # %for.cond.29
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_17 Depth 2
	cmpl	$0, -36(%rbp)
	jl	.LBB14_26
# BB#16:                                # %for.body.31
                                        #   in Loop: Header=BB14_15 Depth=1
	movl	$0, -40(%rbp)
	movl	$0, -32(%rbp)
.LBB14_17:                              # %for.cond.32
                                        #   Parent Loop BB14_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB14_22
# BB#18:                                # %for.body.35
                                        #   in Loop: Header=BB14_17 Depth=2
	leaq	-43(%rbp), %rax
	movl	-36(%rbp), %ecx
	imull	-68(%rbp), %ecx
	imull	$3, -32(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movq	-8(%rbp), %rdi
	addq	8(%rdi), %rsi
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB14_20
# BB#19:                                # %if.then.44
                                        #   in Loop: Header=BB14_15 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB14_22
.LBB14_20:                              # %if.end.46
                                        #   in Loop: Header=BB14_17 Depth=2
	jmp	.LBB14_21
.LBB14_21:                              # %for.inc.47
                                        #   in Loop: Header=BB14_17 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB14_17
.LBB14_22:                              # %for.end.49
                                        #   in Loop: Header=BB14_15 Depth=1
	cmpl	$0, -40(%rbp)
	je	.LBB14_24
# BB#23:                                # %if.then.51
	jmp	.LBB14_26
.LBB14_24:                              # %if.end.52
                                        #   in Loop: Header=BB14_15 Depth=1
	jmp	.LBB14_25
.LBB14_25:                              # %for.inc.53
                                        #   in Loop: Header=BB14_15 Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB14_15
.LBB14_26:                              # %for.end.54
	cmpl	$0, -40(%rbp)
	je	.LBB14_28
# BB#27:                                # %if.then.56
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB14_28:                              # %if.end.58
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jl	.LBB14_30
# BB#29:                                # %if.then.61
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -28(%rbp)
.LBB14_30:                              # %if.end.64
	movl	-24(%rbp), %eax
	imull	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movw	(%rdx,%rcx), %si
	movw	%si, -43(%rbp)
	movb	2(%rdx,%rcx), %dil
	movb	%dil, -41(%rbp)
	movl	$0, -32(%rbp)
.LBB14_31:                              # %for.cond.69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_33 Depth 2
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB14_44
# BB#32:                                # %for.body.72
                                        #   in Loop: Header=BB14_31 Depth=1
	movl	$0, -40(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB14_33:                              # %for.cond.73
                                        #   Parent Loop BB14_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	movb	%cl, -73(%rbp)          # 1-byte Spill
	jg	.LBB14_35
# BB#34:                                # %land.rhs
                                        #   in Loop: Header=BB14_33 Depth=2
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	setl	%dl
	movb	%dl, -73(%rbp)          # 1-byte Spill
.LBB14_35:                              # %land.end
                                        #   in Loop: Header=BB14_33 Depth=2
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_36
	jmp	.LBB14_40
.LBB14_36:                              # %for.body.77
                                        #   in Loop: Header=BB14_33 Depth=2
	leaq	-43(%rbp), %rax
	movl	-36(%rbp), %ecx
	imull	-68(%rbp), %ecx
	imull	$3, -32(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movq	-8(%rbp), %rdi
	addq	8(%rdi), %rsi
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB14_38
# BB#37:                                # %if.then.86
                                        #   in Loop: Header=BB14_31 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB14_40
.LBB14_38:                              # %if.end.88
                                        #   in Loop: Header=BB14_33 Depth=2
	jmp	.LBB14_39
.LBB14_39:                              # %for.inc.89
                                        #   in Loop: Header=BB14_33 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB14_33
.LBB14_40:                              # %for.end.91
                                        #   in Loop: Header=BB14_31 Depth=1
	cmpl	$0, -40(%rbp)
	je	.LBB14_42
# BB#41:                                # %if.then.93
	jmp	.LBB14_44
.LBB14_42:                              # %if.end.94
                                        #   in Loop: Header=BB14_31 Depth=1
	jmp	.LBB14_43
.LBB14_43:                              # %for.inc.95
                                        #   in Loop: Header=BB14_31 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB14_31
.LBB14_44:                              # %for.end.97
	cmpl	$0, -40(%rbp)
	je	.LBB14_46
# BB#45:                                # %if.then.99
	movl	-32(%rbp), %eax
	movl	%eax, -16(%rbp)
.LBB14_46:                              # %if.end.100
	movl	-24(%rbp), %eax
	imull	-68(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edx
	subl	$1, %edx
	imull	$3, %edx, %edx
	addl	%edx, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movw	(%rsi,%rcx), %di
	movw	%di, -43(%rbp)
	movb	2(%rsi,%rcx), %r8b
	movb	%r8b, -41(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
.LBB14_47:                              # %for.cond.111
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_49 Depth 2
	cmpl	$0, -32(%rbp)
	jl	.LBB14_58
# BB#48:                                # %for.body.113
                                        #   in Loop: Header=BB14_47 Depth=1
	movl	$0, -40(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB14_49:                              # %for.cond.114
                                        #   Parent Loop BB14_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB14_54
# BB#50:                                # %for.body.116
                                        #   in Loop: Header=BB14_49 Depth=2
	leaq	-43(%rbp), %rax
	movl	-36(%rbp), %ecx
	imull	-68(%rbp), %ecx
	imull	$3, -32(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movq	-8(%rbp), %rdi
	addq	8(%rdi), %rsi
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB14_52
# BB#51:                                # %if.then.125
                                        #   in Loop: Header=BB14_47 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB14_54
.LBB14_52:                              # %if.end.127
                                        #   in Loop: Header=BB14_49 Depth=2
	jmp	.LBB14_53
.LBB14_53:                              # %for.inc.128
                                        #   in Loop: Header=BB14_49 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB14_49
.LBB14_54:                              # %for.end.130
                                        #   in Loop: Header=BB14_47 Depth=1
	cmpl	$0, -40(%rbp)
	je	.LBB14_56
# BB#55:                                # %if.then.132
	jmp	.LBB14_58
.LBB14_56:                              # %if.end.133
                                        #   in Loop: Header=BB14_47 Depth=1
	jmp	.LBB14_57
.LBB14_57:                              # %for.inc.134
                                        #   in Loop: Header=BB14_47 Depth=1
	movl	-32(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB14_47
.LBB14_58:                              # %for.end.136
	cmpl	$0, -40(%rbp)
	je	.LBB14_60
# BB#59:                                # %if.then.138
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB14_60:                              # %if.end.140
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jge	.LBB14_62
# BB#61:                                # %if.then.143
	movl	$0, -16(%rbp)
.LBB14_62:                              # %if.end.144
	movl	-12(%rbp), %eax
	movl	-24(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jge	.LBB14_64
# BB#63:                                # %if.then.147
	movl	$0, -24(%rbp)
.LBB14_64:                              # %if.end.148
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jl	.LBB14_66
# BB#65:                                # %if.then.152
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -20(%rbp)
.LBB14_66:                              # %if.end.155
	movl	-12(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jl	.LBB14_68
# BB#67:                                # %if.then.159
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -28(%rbp)
.LBB14_68:                              # %if.end.162
	leaq	-64(%rbp), %rdi
	movl	-20(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	-24(%rbp), %ecx
	movl	%eax, %esi
	movl	%ecx, %edx
	callq	ppm_new
	imull	$3, -64(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB14_69:                              # %for.cond.167
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_71 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB14_76
# BB#70:                                # %for.body.169
                                        #   in Loop: Header=BB14_69 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB14_71:                              # %for.cond.170
                                        #   Parent Loop BB14_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB14_74
# BB#72:                                # %for.body.172
                                        #   in Loop: Header=BB14_71 Depth=2
	movl	-36(%rbp), %eax
	subl	-24(%rbp), %eax
	imull	-72(%rbp), %eax
	movl	-32(%rbp), %ecx
	subl	-16(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %eax
	imull	-68(%rbp), %eax
	imull	$3, -32(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdi
	movq	-8(%rbp), %r8
	movq	8(%r8), %r8
	movw	(%r8,%rdi), %r9w
	movw	%r9w, (%rsi,%rdx)
	movb	2(%r8,%rdi), %r10b
	movb	%r10b, 2(%rsi,%rdx)
# BB#73:                                # %for.inc.187
                                        #   in Loop: Header=BB14_71 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB14_71
.LBB14_74:                              # %for.end.189
                                        #   in Loop: Header=BB14_69 Depth=1
	jmp	.LBB14_75
.LBB14_75:                              # %for.inc.190
                                        #   in Loop: Header=BB14_69 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB14_69
.LBB14_76:                              # %for.end.192
	movq	-8(%rbp), %rdi
	callq	ppm_kill
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, 8(%rax)
	movl	-64(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-60(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	autocrop, .Lfunc_end14-autocrop
	.cfi_endproc

	.globl	ppm_pad
	.align	16, 0x90
	.type	ppm_pad,@function
ppm_pad:                                # @ppm_pad
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp48:
	.cfi_offset %rbx, -24
	leaq	-64(%rbp), %rax
	xorl	%r10d, %r10d
	movl	$16, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	%rax, %rdi
	movl	%r10d, %esi
	movq	%rbx, %rdx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	memset
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	4(%rax), %esi
	addl	-28(%rbp), %esi
	addl	-32(%rbp), %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%esi, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	-108(%rbp), %edx        # 4-byte Reload
	callq	ppm_new
	movl	$0, -48(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_10 Depth 2
                                        #     Child Loop BB15_14 Depth 2
                                        #     Child Loop BB15_18 Depth 2
                                        #     Child Loop BB15_5 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB15_23
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-56(%rbp), %rax
	movl	-48(%rbp), %ecx
	imull	-64(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movl	-48(%rbp), %ecx
	cmpl	-28(%rbp), %ecx
	jl	.LBB15_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-48(%rbp), %eax
	movl	-60(%rbp), %ecx
	subl	-32(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB15_9
.LBB15_4:                               # %if.then
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$0, -44(%rbp)
.LBB15_5:                               # %for.cond.12
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB15_8
# BB#6:                                 # %for.body.15
                                        #   in Loop: Header=BB15_5 Depth=2
	imull	$3, -44(%rbp), %eax
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rcx
	movb	(%rcx), %dl
	movl	-84(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rsi
	movb	%dl, (%rsi,%rcx)
	movq	-40(%rbp), %rcx
	movb	1(%rcx), %dl
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rsi
	movb	%dl, (%rsi,%rcx)
	movq	-40(%rbp), %rcx
	movb	2(%rcx), %dl
	movl	-84(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rsi
	movb	%dl, (%rsi,%rcx)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB15_5 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB15_5
.LBB15_8:                               # %for.end
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_22
.LBB15_9:                               # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-48(%rbp), %ecx
	subl	-28(%rbp), %ecx
	movq	-16(%rbp), %rdx
	imull	(%rdx), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movl	$0, -44(%rbp)
.LBB15_10:                              # %for.cond.35
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB15_13
# BB#11:                                # %for.body.37
                                        #   in Loop: Header=BB15_10 Depth=2
	imull	$3, -44(%rbp), %eax
	movl	%eax, -88(%rbp)
	movq	-40(%rbp), %rcx
	movb	(%rcx), %dl
	movl	-88(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rsi
	movb	%dl, (%rsi,%rcx)
	movq	-40(%rbp), %rcx
	movb	1(%rcx), %dl
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rsi
	movb	%dl, (%rsi,%rcx)
	movq	-40(%rbp), %rcx
	movb	2(%rcx), %dl
	movl	-88(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rsi
	movb	%dl, (%rsi,%rcx)
# BB#12:                                # %for.inc.53
                                        #   in Loop: Header=BB15_10 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB15_10
.LBB15_13:                              # %for.end.55
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_14
.LBB15_14:                              # %for.cond.56
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	movl	-64(%rbp), %ecx
	subl	-24(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB15_17
# BB#15:                                # %for.body.60
                                        #   in Loop: Header=BB15_14 Depth=2
	movl	-48(%rbp), %eax
	imull	-64(%rbp), %eax
	imull	$3, %eax, %eax
	imull	$3, -44(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -92(%rbp)
	movl	-44(%rbp), %eax
	subl	-20(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movl	-92(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
	movl	-44(%rbp), %eax
	subl	-20(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
	movl	-44(%rbp), %eax
	subl	-20(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movl	-92(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
# BB#16:                                # %for.inc.95
                                        #   in Loop: Header=BB15_14 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB15_14
.LBB15_17:                              # %for.end.97
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_18
.LBB15_18:                              # %for.cond.98
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB15_21
# BB#19:                                # %for.body.101
                                        #   in Loop: Header=BB15_18 Depth=2
	imull	$3, -44(%rbp), %eax
	movl	%eax, -96(%rbp)
	movq	-40(%rbp), %rcx
	movb	(%rcx), %dl
	movl	-96(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rsi
	movb	%dl, (%rsi,%rcx)
	movq	-40(%rbp), %rcx
	movb	1(%rcx), %dl
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rsi
	movb	%dl, (%rsi,%rcx)
	movq	-40(%rbp), %rcx
	movb	2(%rcx), %dl
	movl	-96(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rsi
	movb	%dl, (%rsi,%rcx)
# BB#20:                                # %for.inc.117
                                        #   in Loop: Header=BB15_18 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB15_18
.LBB15_21:                              # %for.end.119
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_22
.LBB15_22:                              # %for.inc.120
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB15_1
.LBB15_23:                              # %for.end.122
	movq	-16(%rbp), %rdi
	callq	ppm_kill
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, (%rdi)
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, 4(%rdi)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rdi, 8(%rcx)
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end15:
	.size	ppm_pad, .Lfunc_end15-ppm_pad
	.cfi_endproc

	.globl	ppm_save
	.align	16, 0x90
	.type	ppm_save,@function
ppm_save:                               # @ppm_save
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$.L.str.8, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.9, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	jmp	.LBB16_3
.LBB16_2:                               # %if.end
	movabsq	$.L.str.10, %rsi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movb	$0, %al
	callq	fprintf
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	-8(%rbp), %rsi
	imull	$3, (%rsi), %ecx
	movq	-8(%rbp), %rsi
	imull	4(%rsi), %ecx
	movslq	%ecx, %rsi
	movq	-24(%rbp), %rcx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	fwrite
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	fclose
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB16_3:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	ppm_save, .Lfunc_end16-ppm_save
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB17_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB17_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end17:
	.size	g_message, .Lfunc_end17-g_message
	.cfi_endproc

	.globl	edgepad
	.align	16, 0x90
	.type	edgepad,@function
edgepad:                                # @edgepad
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp58:
	.cfi_offset %rbx, -32
.Ltmp59:
	.cfi_offset %r14, -24
	leaq	-64(%rbp), %rax
	xorl	%r9d, %r9d
	movl	$16, %r10d
	movl	%r10d, %r11d
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	%rax, %rdi
	movl	%r9d, %esi
	movq	%r11, %rdx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	memset
	movw	.Ledgepad.testcol, %bx
	movw	%bx, -67(%rbp)
	movb	.Ledgepad.testcol+2, %r14b
	movb	%r14b, -65(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	-28(%rbp), %ecx
	addl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	4(%rax), %esi
	addl	-36(%rbp), %esi
	addl	-40(%rbp), %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%esi, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	-108(%rbp), %edx        # 4-byte Reload
	callq	ppm_new
	leaq	-64(%rbp), %rdi
	leaq	-67(%rbp), %rsi
	callq	fill
	movq	-24(%rbp), %rax
	imull	$3, (%rax), %ecx
	movl	%ecx, -72(%rbp)
	imull	$3, -64(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movl	$0, -48(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB18_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-48(%rbp), %eax
	imull	-76(%rbp), %eax
	imull	$3, -28(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	addq	-56(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movslq	-72(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB18_1
.LBB18_4:                               # %for.end
	jmp	.LBB18_5
.LBB18_5:                               # %for.cond.14
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	subl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB18_8
# BB#6:                                 # %for.body.18
                                        #   in Loop: Header=BB18_5 Depth=1
	movl	-48(%rbp), %eax
	imull	-76(%rbp), %eax
	imull	$3, -28(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	addq	-56(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	-48(%rbp), %eax
	subl	-36(%rbp), %eax
	imull	-72(%rbp), %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movslq	-72(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
# BB#7:                                 # %for.inc.29
                                        #   in Loop: Header=BB18_5 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB18_5
.LBB18_8:                               # %for.end.31
	jmp	.LBB18_9
.LBB18_9:                               # %for.cond.32
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB18_12
# BB#10:                                # %for.body.36
                                        #   in Loop: Header=BB18_9 Depth=1
	movl	-48(%rbp), %eax
	imull	-76(%rbp), %eax
	imull	$3, -28(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	addq	-56(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-24(%rbp), %rdi
	movl	4(%rdi), %eax
	subl	$1, %eax
	imull	-72(%rbp), %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movslq	-72(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
# BB#11:                                # %for.inc.50
                                        #   in Loop: Header=BB18_9 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB18_9
.LBB18_12:                              # %for.end.52
	movl	$0, -48(%rbp)
.LBB18_13:                              # %for.cond.53
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_15 Depth 2
                                        #     Child Loop BB18_19 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB18_24
# BB#14:                                # %for.body.57
                                        #   in Loop: Header=BB18_13 Depth=1
	movq	-56(%rbp), %rax
	movl	-48(%rbp), %ecx
	imull	-76(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movl	-48(%rbp), %ecx
	imull	-76(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	imull	$3, -28(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movl	$0, -44(%rbp)
.LBB18_15:                              # %for.cond.72
                                        #   Parent Loop BB18_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB18_18
# BB#16:                                # %for.body.75
                                        #   in Loop: Header=BB18_15 Depth=2
	imull	$3, -44(%rbp), %eax
	movslq	%eax, %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movw	(%rsi), %di
	movw	%di, (%rdx,%rcx)
	movb	2(%rsi), %r8b
	movb	%r8b, 2(%rdx,%rcx)
# BB#17:                                # %for.inc.79
                                        #   in Loop: Header=BB18_15 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB18_15
.LBB18_18:                              # %for.end.81
                                        #   in Loop: Header=BB18_13 Depth=1
	movq	-56(%rbp), %rax
	movl	-48(%rbp), %ecx
	imull	-76(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-64(%rbp), %ecx
	subl	-32(%rbp), %ecx
	subl	$1, %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movl	$0, -44(%rbp)
.LBB18_19:                              # %for.cond.92
                                        #   Parent Loop BB18_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB18_22
# BB#20:                                # %for.body.95
                                        #   in Loop: Header=BB18_19 Depth=2
	movl	-44(%rbp), %eax
	addl	-64(%rbp), %eax
	subl	-32(%rbp), %eax
	subl	$1, %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movw	(%rsi), %di
	movw	%di, (%rdx,%rcx)
	movb	2(%rsi), %r8b
	movb	%r8b, 2(%rdx,%rcx)
# BB#21:                                # %for.inc.103
                                        #   in Loop: Header=BB18_19 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB18_19
.LBB18_22:                              # %for.end.105
                                        #   in Loop: Header=BB18_13 Depth=1
	jmp	.LBB18_23
.LBB18_23:                              # %for.inc.106
                                        #   in Loop: Header=BB18_13 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB18_13
.LBB18_24:                              # %for.end.108
	movq	-24(%rbp), %rdi
	callq	ppm_kill
	movl	-64(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, (%rdi)
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, 4(%rdi)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, 8(%rcx)
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end18:
	.size	edgepad, .Lfunc_end18-edgepad
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4643176031446892544     # double 255
.LCPI19_1:
	.quad	-4616189618054758400    # double -1
.LCPI19_2:
	.quad	4607182418800017408     # double 1
	.text
	.globl	ppm_apply_gamma
	.align	16, 0x90
	.type	ppm_apply_gamma,@function
ppm_apply_gamma:                        # @ppm_apply_gamma
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rdi
	imull	$3, (%rdi), %ecx
	movq	-8(%rbp), %rdi
	imull	4(%rdi), %ecx
	movl	%ecx, -32(%rbp)
	cvtss2sd	-12(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB19_6
# BB#1:                                 # %if.then
	movl	$0, -28(%rbp)
.LBB19_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -28(%rbp)         # imm = 0x100
	jge	.LBB19_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB19_2 Depth=1
	cvtsi2sdl	-28(%rbp), %xmm0
	movsd	.LCPI19_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movss	-12(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movsd	.LCPI19_2(%rip), %xmm3  # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movsd	%xmm1, -304(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	callq	pow
	movsd	-304(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-28(%rbp), %rdx
	movb	%cl, -288(%rbp,%rdx)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB19_2 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB19_2
.LBB19_5:                               # %for.end
	jmp	.LBB19_18
.LBB19_6:                               # %if.else
	xorps	%xmm0, %xmm0
	cvtss2sd	-12(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB19_12
# BB#7:                                 # %if.then.13
	movl	$0, -28(%rbp)
.LBB19_8:                               # %for.cond.14
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -28(%rbp)         # imm = 0x100
	jge	.LBB19_11
# BB#9:                                 # %for.body.17
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	$255, %eax
	cvtsi2sdl	-28(%rbp), %xmm0
	movsd	.LCPI19_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movss	-12(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movsd	.LCPI19_1(%rip), %xmm3  # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movsd	%xmm1, -312(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	pow
	movsd	-312(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movl	-316(%rbp), %eax        # 4-byte Reload
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movb	%cl, -288(%rbp,%rdx)
# BB#10:                                # %for.inc.27
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB19_8
.LBB19_11:                              # %for.end.29
	jmp	.LBB19_17
.LBB19_12:                              # %if.else.30
	movl	$0, -28(%rbp)
.LBB19_13:                              # %for.cond.31
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -28(%rbp)         # imm = 0x100
	jge	.LBB19_16
# BB#14:                                # %for.body.34
                                        #   in Loop: Header=BB19_13 Depth=1
	movslq	-28(%rbp), %rax
	movb	$0, -288(%rbp,%rax)
# BB#15:                                # %for.inc.37
                                        #   in Loop: Header=BB19_13 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB19_13
.LBB19_16:                              # %for.end.39
	jmp	.LBB19_17
.LBB19_17:                              # %if.end
	jmp	.LBB19_18
.LBB19_18:                              # %if.end.40
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -296(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB19_24
# BB#19:                                # %if.then.41
	movl	$0, -28(%rbp)
.LBB19_20:                              # %for.cond.42
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB19_23
# BB#21:                                # %for.body.45
                                        #   in Loop: Header=BB19_20 Depth=1
	movslq	-28(%rbp), %rax
	movq	-296(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movb	-288(%rbp,%rax), %sil
	movslq	-28(%rbp), %rax
	movq	-296(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#22:                                # %for.inc.52
                                        #   in Loop: Header=BB19_20 Depth=1
	movl	-28(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB19_20
.LBB19_23:                              # %for.end.53
	jmp	.LBB19_24
.LBB19_24:                              # %if.end.54
	cmpl	$0, -20(%rbp)
	je	.LBB19_30
# BB#25:                                # %if.then.56
	movl	$1, -28(%rbp)
.LBB19_26:                              # %for.cond.57
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB19_29
# BB#27:                                # %for.body.60
                                        #   in Loop: Header=BB19_26 Depth=1
	movslq	-28(%rbp), %rax
	movq	-296(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movb	-288(%rbp,%rax), %sil
	movslq	-28(%rbp), %rax
	movq	-296(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#28:                                # %for.inc.67
                                        #   in Loop: Header=BB19_26 Depth=1
	movl	-28(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB19_26
.LBB19_29:                              # %for.end.69
	jmp	.LBB19_30
.LBB19_30:                              # %if.end.70
	cmpl	$0, -24(%rbp)
	je	.LBB19_36
# BB#31:                                # %if.then.72
	movl	$2, -28(%rbp)
.LBB19_32:                              # %for.cond.73
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB19_35
# BB#33:                                # %for.body.76
                                        #   in Loop: Header=BB19_32 Depth=1
	movslq	-28(%rbp), %rax
	movq	-296(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movb	-288(%rbp,%rax), %sil
	movslq	-28(%rbp), %rax
	movq	-296(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#34:                                # %for.inc.83
                                        #   in Loop: Header=BB19_32 Depth=1
	movl	-28(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB19_32
.LBB19_35:                              # %for.end.85
	jmp	.LBB19_36
.LBB19_36:                              # %if.end.86
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end19:
	.size	ppm_apply_gamma, .Lfunc_end19-ppm_apply_gamma
	.cfi_endproc

	.globl	ppm_apply_brightness
	.align	16, 0x90
	.type	ppm_apply_brightness,@function
ppm_apply_brightness:                   # @ppm_apply_brightness
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rdi
	imull	$3, (%rdi), %ecx
	movq	-8(%rbp), %rdi
	imull	4(%rdi), %ecx
	movl	%ecx, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -28(%rbp)         # imm = 0x100
	jge	.LBB20_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	cvtsi2ssl	-28(%rbp), %xmm0
	movss	-12(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-28(%rbp), %rdx
	movb	%cl, -288(%rbp,%rdx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB20_1
.LBB20_4:                               # %for.end
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -296(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB20_10
# BB#5:                                 # %if.then
	movl	$0, -28(%rbp)
.LBB20_6:                               # %for.cond.4
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB20_9
# BB#7:                                 # %for.body.7
                                        #   in Loop: Header=BB20_6 Depth=1
	movslq	-28(%rbp), %rax
	movq	-296(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movb	-288(%rbp,%rax), %sil
	movslq	-28(%rbp), %rax
	movq	-296(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#8:                                 # %for.inc.14
                                        #   in Loop: Header=BB20_6 Depth=1
	movl	-28(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB20_6
.LBB20_9:                               # %for.end.15
	jmp	.LBB20_10
.LBB20_10:                              # %if.end
	cmpl	$0, -20(%rbp)
	je	.LBB20_16
# BB#11:                                # %if.then.17
	movl	$1, -28(%rbp)
.LBB20_12:                              # %for.cond.18
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB20_15
# BB#13:                                # %for.body.21
                                        #   in Loop: Header=BB20_12 Depth=1
	movslq	-28(%rbp), %rax
	movq	-296(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movb	-288(%rbp,%rax), %sil
	movslq	-28(%rbp), %rax
	movq	-296(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#14:                                # %for.inc.28
                                        #   in Loop: Header=BB20_12 Depth=1
	movl	-28(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB20_12
.LBB20_15:                              # %for.end.30
	jmp	.LBB20_16
.LBB20_16:                              # %if.end.31
	cmpl	$0, -24(%rbp)
	je	.LBB20_22
# BB#17:                                # %if.then.33
	movl	$2, -28(%rbp)
.LBB20_18:                              # %for.cond.34
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB20_21
# BB#19:                                # %for.body.37
                                        #   in Loop: Header=BB20_18 Depth=1
	movslq	-28(%rbp), %rax
	movq	-296(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movb	-288(%rbp,%rax), %sil
	movslq	-28(%rbp), %rax
	movq	-296(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#20:                                # %for.inc.44
                                        #   in Loop: Header=BB20_18 Depth=1
	movl	-28(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB20_18
.LBB20_21:                              # %for.end.46
	jmp	.LBB20_22
.LBB20_22:                              # %if.end.47
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	ppm_apply_brightness, .Lfunc_end20-ppm_apply_brightness
	.cfi_endproc

	.globl	blur
	.align	16, 0x90
	.type	blur,@function
blur:                                   # @blur
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-56(%rbp), %rax
	xorl	%ecx, %ecx
	movl	$16, %r8d
	movl	%r8d, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	%r9, %rdx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	memset
	movq	-8(%rbp), %rax
	imull	$3, (%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	ppm_new
	movl	$0, -24(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_3 Depth 2
                                        #       Child Loop BB21_5 Depth 3
                                        #         Child Loop BB21_7 Depth 4
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB21_24
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$0, -20(%rbp)
.LBB21_3:                               # %for.cond.8
                                        #   Parent Loop BB21_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_5 Depth 3
                                        #         Child Loop BB21_7 Depth 4
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB21_22
# BB#4:                                 # %for.body.11
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	$0, -72(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
	movl	-24(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB21_5:                               # %for.cond.12
                                        #   Parent Loop BB21_1 Depth=1
                                        #     Parent Loop BB21_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB21_7 Depth 4
	movl	-36(%rbp), %eax
	movl	-24(%rbp), %ecx
	addl	-16(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB21_20
# BB#6:                                 # %for.body.14
                                        #   in Loop: Header=BB21_5 Depth=3
	movl	-20(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB21_7:                               # %for.cond.16
                                        #   Parent Loop BB21_1 Depth=1
                                        #     Parent Loop BB21_3 Depth=2
                                        #       Parent Loop BB21_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-32(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB21_18
# BB#8:                                 # %for.body.19
                                        #   in Loop: Header=BB21_7 Depth=4
	cmpl	$0, -36(%rbp)
	jge	.LBB21_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB21_7 Depth=4
	jmp	.LBB21_17
.LBB21_10:                              # %if.end
                                        #   in Loop: Header=BB21_7 Depth=4
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jl	.LBB21_12
# BB#11:                                # %if.then.23
                                        #   in Loop: Header=BB21_7 Depth=4
	jmp	.LBB21_17
.LBB21_12:                              # %if.end.24
                                        #   in Loop: Header=BB21_7 Depth=4
	cmpl	$0, -32(%rbp)
	jge	.LBB21_14
# BB#13:                                # %if.then.26
                                        #   in Loop: Header=BB21_7 Depth=4
	jmp	.LBB21_17
.LBB21_14:                              # %if.end.27
                                        #   in Loop: Header=BB21_7 Depth=4
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jl	.LBB21_16
# BB#15:                                # %if.then.30
                                        #   in Loop: Header=BB21_7 Depth=4
	jmp	.LBB21_17
.LBB21_16:                              # %if.end.31
                                        #   in Loop: Header=BB21_7 Depth=4
	movl	-36(%rbp), %eax
	imull	-76(%rbp), %eax
	imull	$3, -32(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-28(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	addl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
.LBB21_17:                              # %for.inc
                                        #   in Loop: Header=BB21_7 Depth=4
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB21_7
.LBB21_18:                              # %for.end
                                        #   in Loop: Header=BB21_5 Depth=3
	jmp	.LBB21_19
.LBB21_19:                              # %for.inc.50
                                        #   in Loop: Header=BB21_5 Depth=3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB21_5
.LBB21_20:                              # %for.end.52
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	-24(%rbp), %eax
	imull	-76(%rbp), %eax
	imull	$3, -20(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -28(%rbp)
	movl	-60(%rbp), %eax
	cltd
	idivl	-72(%rbp)
	movb	%al, %sil
	movl	-28(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdi
	movq	-48(%rbp), %r8
	movb	%sil, (%r8,%rdi)
	movl	-64(%rbp), %eax
	cltd
	idivl	-72(%rbp)
	movb	%al, %sil
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	movq	-48(%rbp), %r8
	movb	%sil, (%r8,%rdi)
	movl	-68(%rbp), %eax
	cltd
	idivl	-72(%rbp)
	movb	%al, %sil
	movl	-28(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdi
	movq	-48(%rbp), %r8
	movb	%sil, (%r8,%rdi)
# BB#21:                                # %for.inc.73
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB21_3
.LBB21_22:                              # %for.end.75
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_23
.LBB21_23:                              # %for.inc.76
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB21_1
.LBB21_24:                              # %for.end.78
	movq	-8(%rbp), %rdi
	callq	ppm_kill
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, (%rdi)
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 4(%rdi)
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, 8(%rcx)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	blur, .Lfunc_end21-blur
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	ppm_put_rgb_fast
	.align	16, 0x90
	.type	ppm_put_rgb_fast,@function
ppm_put_rgb_fast:                       # @ppm_put_rgb_fast
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI22_0, %xmm2        # xmm2 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm1, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-8(%rbp), %rdi
	imull	$3, (%rdi), %eax
	cvtss2sd	-16(%rbp), %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	cvtss2sd	-12(%rbp), %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movb	(%rsi), %dl
	movq	-32(%rbp), %rsi
	movb	%dl, (%rsi)
	movq	-24(%rbp), %rsi
	movb	1(%rsi), %dl
	movq	-32(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movq	-24(%rbp), %rsi
	movb	2(%rsi), %dl
	movq	-32(%rbp), %rsi
	movb	%dl, 2(%rsi)
	popq	%rbp
	retq
.Lfunc_end22:
	.size	ppm_put_rgb_fast, .Lfunc_end22-ppm_put_rgb_fast
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	ppm_put_rgb
	.align	16, 0x90
	.type	ppm_put_rgb,@function
ppm_put_rgb:                            # @ppm_put_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm1, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	imull	$3, (%rsi), %eax
	movl	%eax, -56(%rbp)
	cvttss2si	-12(%rbp), %eax
	movl	%eax, -28(%rbp)
	cvttss2si	-16(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -28(%rbp)
	jl	.LBB23_4
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -32(%rbp)
	jl	.LBB23_4
# BB#2:                                 # %lor.lhs.false.5
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB23_4
# BB#3:                                 # %lor.lhs.false.9
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jl	.LBB23_5
.LBB23_4:                               # %if.then
	jmp	.LBB23_6
.LBB23_5:                               # %if.end
	cvtsi2ssl	-28(%rbp), %xmm0
	movss	-12(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, -12(%rbp)
	cvtsi2ssl	-32(%rbp), %xmm0
	movss	-16(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, -16(%rbp)
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI23_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm1, %xmm3
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm2
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	-16(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movaps	%xmm1, %xmm3
	subsd	%xmm2, %xmm3
	mulsd	%xmm3, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-16(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	movss	%xmm0, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	-56(%rbp), %ecx
	imull	%ecx, %eax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	leal	(%rdx,%rdx,2), %ecx
	addl	%ecx, %eax
	movl	%eax, -52(%rbp)
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movslq	-52(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movl	-52(%rbp), %eax
	incl	%eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movl	-52(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movl	-52(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movl	-52(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movl	-52(%rbp), %eax
	addl	$5, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	movl	%eax, %esi
	leal	1(%rsi,%rdx), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	movl	%eax, %esi
	leal	2(%rsi,%rdx), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	movl	%eax, %esi
	leal	3(%rsi,%rdx), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	movl	%eax, %esi
	leal	4(%rsi,%rdx), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	movl	%eax, %esi
	leal	5(%rsi,%rdx), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	movslq	-52(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	movzbl	1(%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	movl	-52(%rbp), %eax
	incl	%eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	movzbl	2(%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	movl	-52(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	movl	-52(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	movzbl	1(%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	movl	-52(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	movzbl	2(%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	movl	-52(%rbp), %eax
	addl	$5, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	movzbl	1(%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	movl	%eax, %esi
	leal	1(%rsi,%rdx), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	movzbl	2(%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	movl	%eax, %esi
	leal	2(%rsi,%rdx), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	movl	%eax, %esi
	leal	3(%rsi,%rdx), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	movzbl	1(%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	movl	%eax, %esi
	leal	4(%rsi,%rdx), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movb	%al, %dil
	movb	%dil, (%rsi,%rdx)
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rdx
	movzbl	2(%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	movl	%eax, %esi
	leal	5(%rsi,%rdx), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rsi
	movq	-8(%rbp), %r8
	movq	8(%r8), %r8
	movzbl	(%r8,%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movb	%al, %dil
	movb	%dil, (%r8,%rsi)
.LBB23_6:                               # %return
	popq	%rbp
	retq
.Lfunc_end23:
	.size	ppm_put_rgb, .Lfunc_end23-ppm_put_rgb
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI24_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	ppm_drawline
	.align	16, 0x90
	.type	ppm_drawline,@function
ppm_drawline:                           # @ppm_drawline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm1, -16(%rbp)
	movss	%xmm2, -20(%rbp)
	movss	%xmm3, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movapd	.LCPI24_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	-24(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movapd	.LCPI24_0(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB24_8
# BB#1:                                 # %if.then
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-20(%rbp), %xmm0
	jbe	.LBB24_3
# BB#2:                                 # %if.then.7
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -20(%rbp)
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -24(%rbp)
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -16(%rbp)
.LBB24_3:                               # %if.end
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	-16(%rbp), %xmm0
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	-12(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
.LBB24_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB24_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB24_4 Depth=1
	movq	-8(%rbp), %rdi
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-48(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rsi
	callq	ppm_put_rgb
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-48(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB24_4 Depth=1
	movsd	.LCPI24_1, %xmm0        # xmm0 = mem[0],zero
	cvtss2sd	-44(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	jmp	.LBB24_4
.LBB24_7:                               # %for.end
	jmp	.LBB24_15
.LBB24_8:                               # %if.else
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-24(%rbp), %xmm0
	jbe	.LBB24_10
# BB#9:                                 # %if.then.17
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -20(%rbp)
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -24(%rbp)
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -16(%rbp)
.LBB24_10:                              # %if.end.18
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	-12(%rbp), %xmm0
	movss	-24(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	-16(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)
.LBB24_11:                              # %for.cond.22
                                        # =>This Inner Loop Header: Depth=1
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-24(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB24_14
# BB#12:                                # %for.body.25
                                        #   in Loop: Header=BB24_11 Depth=1
	movq	-8(%rbp), %rdi
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-48(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rsi
	callq	ppm_put_rgb
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-44(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
# BB#13:                                # %for.inc.27
                                        #   in Loop: Header=BB24_11 Depth=1
	movsd	.LCPI24_1, %xmm0        # xmm0 = mem[0],zero
	cvtss2sd	-48(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	jmp	.LBB24_11
.LBB24_14:                              # %for.end.31
	jmp	.LBB24_15
.LBB24_15:                              # %if.end.32
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	ppm_drawline, .Lfunc_end24-ppm_drawline
	.cfi_endproc

	.align	16, 0x90
	.type	msb2lsb,@function
msb2lsb:                                # @msb2lsb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movb	1(%rdi), %al
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rdi
	movb	2(%rdi), %al
	movq	-16(%rbp), %rdi
	movb	%al, 1(%rdi)
	movb	-17(%rbp), %al
	movq	-16(%rbp), %rdi
	movb	%al, 2(%rdi)
	movq	-16(%rbp), %rdi
	movb	(%rdi), %al
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rdi
	movb	3(%rdi), %al
	movq	-16(%rbp), %rdi
	movb	%al, (%rdi)
	movb	-17(%rbp), %al
	movq	-16(%rbp), %rdi
	movb	%al, 3(%rdi)
	popq	%rbp
	retq
.Lfunc_end25:
	.size	msb2lsb, .Lfunc_end25-msb2lsb
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".gbr"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"rb"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ppm_load: Unable to open file \"%s\"!\n"
	.size	.L.str.2, 37

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"P6"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"P5"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"ppm_load: File \"%s\" not PPM/PGM? (line=\"%s\")%c\n"
	.size	.L.str.5, 48

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"255"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ppm_load: File \"%s\" not valid PPM/PGM? (line=\"%s\")%c\n"
	.size	.L.str.7, 54

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"wb"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Failed to save PPM file '%s': %s"
	.size	.L.str.9, 33

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"P6\n%d %d\n255\n"
	.size	.L.str.10, 14

	.type	.Ledgepad.testcol,@object # @edgepad.testcol
	.section	.rodata,"a",@progbits
.Ledgepad.testcol:
	.asciz	"\000\377"
	.size	.Ledgepad.testcol, 3

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"load_gimp_brush: Unable to open file \"%s\"!\n"
	.size	.L.str.11, 44


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
