	.text
	.file	"desaturate.bc"
	.globl	desaturate_region
	.align	16, 0x90
	.type	desaturate_region,@function
desaturate_region:                      # @desaturate_region
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.desaturate_region, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_20
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	52(%rax), %ecx
	jne	.LBB0_8
# BB#7:                                 # %if.then.4
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.5
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.desaturate_region, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_20
.LBB0_9:                                # %if.end.6
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.7
	jmp	.LBB0_11
.LBB0_11:                               # %do.body.8
	movq	-16(%rbp), %rax
	cmpl	$3, 52(%rax)
	je	.LBB0_13
# BB#12:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$4, 52(%rax)
	jne	.LBB0_14
.LBB0_13:                               # %if.then.13
	jmp	.LBB0_15
.LBB0_14:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.desaturate_region, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_20
.LBB0_15:                               # %if.end.15
	jmp	.LBB0_16
.LBB0_16:                               # %do.end.16
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	je	.LBB0_17
	jmp	.LBB0_21
.LBB0_21:                               # %do.end.16
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB0_18
	jmp	.LBB0_22
.LBB0_22:                               # %do.end.16
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB0_19
	jmp	.LBB0_20
.LBB0_17:                               # %sw.bb
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	pixel_region_has_alpha
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	desaturate_region_lightness
	jmp	.LBB0_20
.LBB0_18:                               # %sw.bb.17
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	pixel_region_has_alpha
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	desaturate_region_luminosity
	jmp	.LBB0_20
.LBB0_19:                               # %sw.bb.19
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	pixel_region_has_alpha
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	desaturate_region_average
.LBB0_20:                               # %sw.epilog
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	desaturate_region, .Lfunc_end0-desaturate_region
	.cfi_endproc

	.align	16, 0x90
	.type	desaturate_region_lightness,@function
desaturate_region_lightness:            # @desaturate_region_lightness
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-8(%rbp), %rsi
	movl	48(%rsi), %edx
	movl	%edx, -44(%rbp)
.LBB1_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	je	.LBB1_21
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -68(%rbp)
.LBB1_3:                                # %for.cond
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB1_20
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %edx
	cmpl	%edx, %ecx
	jle	.LBB1_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	jmp	.LBB1_7
.LBB1_6:                                # %cond.false
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
.LBB1_7:                                # %cond.end
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movq	-56(%rbp), %rcx
	movzbl	2(%rcx), %edx
	cmpl	%edx, %eax
	jle	.LBB1_9
# BB#8:                                 # %cond.true.15
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB1_10
.LBB1_9:                                # %cond.false.16
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
.LBB1_10:                               # %cond.end.19
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)
	movq	-56(%rbp), %rcx
	movzbl	(%rcx), %eax
	movq	-56(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB1_12
# BB#11:                                # %cond.true.27
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %cond.false.30
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
.LBB1_13:                               # %cond.end.33
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	movq	-56(%rbp), %rcx
	movzbl	2(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB1_15
# BB#14:                                # %cond.true.39
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-72(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB1_16
.LBB1_15:                               # %cond.false.40
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
.LBB1_16:                               # %cond.end.43
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	$2, %ecx
	movl	%eax, -72(%rbp)
	movl	-76(%rbp), %eax
	addl	-72(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	movb	%al, %sil
	movq	-64(%rbp), %rdi
	movb	%sil, (%rdi)
	movl	-80(%rbp), %eax
	movb	%al, %sil
	movq	-64(%rbp), %rdi
	movb	%sil, 1(%rdi)
	movl	-80(%rbp), %eax
	movb	%al, %sil
	movq	-64(%rbp), %rdi
	movb	%sil, 2(%rdi)
	cmpl	$0, -20(%rbp)
	je	.LBB1_18
# BB#17:                                # %if.then
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	-56(%rbp), %rax
	movb	3(%rax), %cl
	movq	-64(%rbp), %rax
	movb	%cl, 3(%rax)
.LBB1_18:                               # %if.end
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-64(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB1_3
.LBB1_20:                               # %for.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB1_1
.LBB1_21:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end1:
	.size	desaturate_region_lightness, .Lfunc_end1-desaturate_region_lightness
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4602678819172646912     # double 0.5
.LCPI2_1:
	.quad	4589866978952703325     # double 0.0722
.LCPI2_2:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI2_3:
	.quad	4596827742536767164     # double 0.21260000000000001
	.text
	.align	16, 0x90
	.type	desaturate_region_luminosity,@function
desaturate_region_luminosity:           # @desaturate_region_luminosity
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-8(%rbp), %rsi
	movl	48(%rsi), %edx
	movl	%edx, -44(%rbp)
.LBB2_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	je	.LBB2_9
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -68(%rbp)
.LBB2_3:                                # %for.cond
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB2_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB2_3 Depth=2
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_3, %xmm3         # xmm3 = mem[0],zero
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	mulsd	%xmm3, %xmm4
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm4
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm4
	addsd	%xmm0, %xmm4
	cvttsd2si	%xmm4, %ecx
	movl	%ecx, -72(%rbp)
	movl	-72(%rbp), %ecx
	movb	%cl, %dl
	movq	-64(%rbp), %rax
	movb	%dl, (%rax)
	movl	-72(%rbp), %ecx
	movb	%cl, %dl
	movq	-64(%rbp), %rax
	movb	%dl, 1(%rax)
	movl	-72(%rbp), %ecx
	movb	%cl, %dl
	movq	-64(%rbp), %rax
	movb	%dl, 2(%rax)
	cmpl	$0, -20(%rbp)
	je	.LBB2_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB2_3 Depth=2
	movq	-56(%rbp), %rax
	movb	3(%rax), %cl
	movq	-64(%rbp), %rax
	movb	%cl, 3(%rax)
.LBB2_6:                                # %if.end
                                        #   in Loop: Header=BB2_3 Depth=2
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-64(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB2_3 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB2_3
.LBB2_8:                                # %for.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB2_1
.LBB2_9:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end2:
	.size	desaturate_region_luminosity, .Lfunc_end2-desaturate_region_luminosity
	.cfi_endproc

	.align	16, 0x90
	.type	desaturate_region_average,@function
desaturate_region_average:              # @desaturate_region_average
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-8(%rbp), %rsi
	movl	48(%rsi), %edx
	movl	%edx, -44(%rbp)
.LBB3_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	je	.LBB3_9
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -68(%rbp)
.LBB3_3:                                # %for.cond
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB3_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	$3, %eax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx), %edx
	movq	-56(%rbp), %rcx
	movzbl	1(%rcx), %esi
	addl	%esi, %edx
	movq	-56(%rbp), %rcx
	movzbl	2(%rcx), %esi
	addl	%esi, %edx
	addl	$1, %edx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-76(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	movb	%al, %dil
	movq	-64(%rbp), %rcx
	movb	%dil, (%rcx)
	movl	-72(%rbp), %eax
	movb	%al, %dil
	movq	-64(%rbp), %rcx
	movb	%dil, 1(%rcx)
	movl	-72(%rbp), %eax
	movb	%al, %dil
	movq	-64(%rbp), %rcx
	movb	%dil, 2(%rcx)
	cmpl	$0, -20(%rbp)
	je	.LBB3_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	-56(%rbp), %rax
	movb	3(%rax), %cl
	movq	-64(%rbp), %rax
	movb	%cl, 3(%rax)
.LBB3_6:                                # %if.end
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-64(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB3_3
.LBB3_8:                                # %for.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB3_1
.LBB3_9:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end3:
	.size	desaturate_region_average, .Lfunc_end3-desaturate_region_average
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Base"
	.size	.L.str, 10

	.type	.L__func__.desaturate_region,@object # @__func__.desaturate_region
.L__func__.desaturate_region:
	.asciz	"desaturate_region"
	.size	.L__func__.desaturate_region, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"mode != NULL"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"srcPR->bytes == destPR->bytes"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"srcPR->bytes == 3 || srcPR->bytes == 4"
	.size	.L.str.3, 39


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
