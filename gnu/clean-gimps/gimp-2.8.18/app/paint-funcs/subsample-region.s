	.text
	.file	"subsample-region.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4547007122018943789     # double 1.0E-4
.LCPI0_1:
	.quad	4607182418800017408     # double 1
.LCPI0_2:
	.quad	4602678819172646912     # double 0.5
.LCPI0_3:
	.quad	4643176031446892544     # double 255
	.text
	.globl	subsample_region
	.align	16, 0x90
	.type	subsample_region,@function
subsample_region:                       # @subsample_region
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rsi
	movl	44(%rsi), %edx
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	48(%rsi), %edx
	movl	%edx, -28(%rbp)
	movq	-8(%rbp), %rsi
	movl	44(%rsi), %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rsi
	movl	48(%rsi), %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, -36(%rbp)
	cvtsi2sdl	-32(%rbp), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	cvtsi2sdl	-36(%rbp), %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-16(%rbp), %rsi
	movl	52(%rsi), %eax
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rsi
	movl	32(%rsi), %eax
	movl	%eax, -64(%rbp)
	movq	-8(%rbp), %rdi
	callq	pixel_region_has_alpha
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -68(%rbp)
	movl	-32(%rbp), %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movl	-24(%rbp), %ecx
	imull	-60(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -112(%rbp)
	movl	-24(%rbp), %ecx
	addl	-32(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, -168(%rbp)
	movl	$0, -128(%rbp)
	cvtsi2sdl	-128(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movl	$0, -188(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-188(%rbp), %eax
	movl	-24(%rbp), %ecx
	addl	-32(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-48(%rbp), %xmm1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jb	.LBB0_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-136(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-152(%rbp), %xmm0
	movslq	-188(%rbp), %rax
	movq	-168(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	jmp	.LBB0_5
.LBB0_4:                                # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	cvtsi2sdl	-128(%rbp), %xmm0
	subsd	-152(%rbp), %xmm0
	movslq	-188(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movsd	%xmm0, (%rdx,%rcx,8)
.LBB0_5:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-188(%rbp), %rax
	movq	-168(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB0_1
.LBB0_7:                                # %for.end
	xorl	%esi, %esi
	movq	-112(%rbp), %rax
	movslq	-24(%rbp), %rcx
	shlq	$3, %rcx
	movslq	-60(%rbp), %rdx
	imulq	%rdx, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
	movl	$0, -124(%rbp)
	cvtsi2sdl	-124(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %r8d
	movl	-124(%rbp), %r9d
	imull	-20(%rbp), %r9d
	addl	%r9d, %r8d
	movl	-32(%rbp), %r9d
	imull	-20(%rbp), %r9d
	movq	-80(%rbp), %rax
	movl	-20(%rbp), %r10d
	movl	%r8d, %edx
	movl	%r9d, %ecx
	movq	%rax, %r8
	movl	%r10d, %r9d
	callq	pixel_region_get_row
	movl	$0, -188(%rbp)
.LBB0_8:                                # %for.cond.43
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #       Child Loop BB0_21 Depth 3
                                        #     Child Loop BB0_31 Depth 2
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_46 Depth 3
	movl	-188(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_54
# BB#9:                                 # %for.body.46
                                        #   in Loop: Header=BB0_8 Depth=1
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movl	$0, -128(%rbp)
	cvtsi2sdl	-128(%rbp), %xmm1
	movsd	%xmm1, -136(%rbp)
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-56(%rbp), %xmm1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jb	.LBB0_11
# BB#10:                                # %if.then.54
                                        #   in Loop: Header=BB0_8 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-144(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-160(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movl	$1, -204(%rbp)
	jmp	.LBB0_12
.LBB0_11:                               # %if.else.57
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	cvtsi2sdl	-124(%rbp), %xmm0
	subsd	-160(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movl	$0, -204(%rbp)
.LBB0_12:                               # %if.end.61
                                        #   in Loop: Header=BB0_8 Depth=1
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-160(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	$0, -200(%rbp)
	movl	-24(%rbp), %ecx
	movl	%ecx, -192(%rbp)
.LBB0_13:                               # %while.cond
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
                                        #       Child Loop BB0_21 Depth 3
	cmpl	$0, -192(%rbp)
	je	.LBB0_29
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB0_13 Depth=2
	movl	-200(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -200(%rbp)
	movslq	%eax, %rdx
	movq	-168(%rbp), %rsi
	movsd	(%rsi,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	-176(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB0_20
# BB#15:                                # %if.then.68
                                        #   in Loop: Header=BB0_13 Depth=2
	movsd	.LCPI0_3, %xmm0         # xmm0 = mem[0],zero
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-60(%rbp), %eax
	decl	%eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -216(%rbp)
	movl	$0, -196(%rbp)
.LBB0_16:                               # %for.cond.75
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-196(%rbp), %eax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_19
# BB#17:                                # %for.body.79
                                        #   in Loop: Header=BB0_16 Depth=3
	movslq	-196(%rbp), %rax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	mulsd	-216(%rbp), %xmm0
	movslq	-196(%rbp), %rax
	movq	-120(%rbp), %rcx
	addsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, (%rcx,%rax,8)
# BB#18:                                # %for.inc.88
                                        #   in Loop: Header=BB0_16 Depth=3
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB0_16
.LBB0_19:                               # %for.end.90
                                        #   in Loop: Header=BB0_13 Depth=2
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-120(%rbp), %rdx
	addsd	(%rdx,%rcx,8), %xmm0
	movsd	%xmm0, (%rdx,%rcx,8)
	jmp	.LBB0_25
.LBB0_20:                               # %if.else.95
                                        #   in Loop: Header=BB0_13 Depth=2
	movl	$0, -196(%rbp)
.LBB0_21:                               # %for.cond.96
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-196(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB0_24
# BB#22:                                # %for.body.99
                                        #   in Loop: Header=BB0_21 Depth=3
	movslq	-196(%rbp), %rax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	mulsd	-184(%rbp), %xmm0
	movslq	-196(%rbp), %rax
	movq	-120(%rbp), %rcx
	addsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, (%rcx,%rax,8)
# BB#23:                                # %for.inc.108
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB0_21
.LBB0_24:                               # %for.end.110
                                        #   in Loop: Header=BB0_13 Depth=2
	jmp	.LBB0_25
.LBB0_25:                               # %if.end.111
                                        #   in Loop: Header=BB0_13 Depth=2
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-48(%rbp), %xmm1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jb	.LBB0_27
# BB#26:                                # %if.then.118
                                        #   in Loop: Header=BB0_13 Depth=2
	movl	-60(%rbp), %eax
	movq	-120(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -120(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-136(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movl	-192(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -192(%rbp)
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.120
                                        #   in Loop: Header=BB0_13 Depth=2
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
.LBB0_28:                               # %if.end.124
                                        #   in Loop: Header=BB0_13 Depth=2
	jmp	.LBB0_13
.LBB0_29:                               # %while.end
                                        #   in Loop: Header=BB0_8 Depth=1
	cmpl	$0, -204(%rbp)
	je	.LBB0_52
# BB#30:                                # %if.then.126
                                        #   in Loop: Header=BB0_8 Depth=1
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -184(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	-24(%rbp), %ecx
	movl	%ecx, -192(%rbp)
.LBB0_31:                               # %while.cond.129
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_46 Depth 3
	movl	-192(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -192(%rbp)
	cmpl	$0, %eax
	je	.LBB0_51
# BB#32:                                # %while.body.132
                                        #   in Loop: Header=BB0_31 Depth=2
	cmpl	$0, -68(%rbp)
	je	.LBB0_45
# BB#33:                                # %if.then.134
                                        #   in Loop: Header=BB0_31 Depth=2
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-120(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm1    # xmm1 = mem[0],zero
	movsd	%xmm1, -224(%rbp)
	movsd	-224(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_39
# BB#34:                                # %if.then.140
                                        #   in Loop: Header=BB0_31 Depth=2
	movl	$0, -196(%rbp)
.LBB0_35:                               # %for.cond.141
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-196(%rbp), %eax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_38
# BB#36:                                # %for.body.145
                                        #   in Loop: Header=BB0_35 Depth=3
	movslq	-196(%rbp), %rax
	movq	-120(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-224(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movslq	-196(%rbp), %rax
	movq	-104(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#37:                                # %for.inc.153
                                        #   in Loop: Header=BB0_35 Depth=3
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB0_35
.LBB0_38:                               # %for.end.155
                                        #   in Loop: Header=BB0_31 Depth=2
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB0_44
.LBB0_39:                               # %if.else.163
                                        #   in Loop: Header=BB0_31 Depth=2
	movl	$0, -196(%rbp)
.LBB0_40:                               # %for.cond.164
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-196(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB0_43
# BB#41:                                # %for.body.167
                                        #   in Loop: Header=BB0_40 Depth=3
	movslq	-196(%rbp), %rax
	movq	-104(%rbp), %rcx
	movb	$0, (%rcx,%rax)
# BB#42:                                # %for.inc.170
                                        #   in Loop: Header=BB0_40 Depth=3
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB0_40
.LBB0_43:                               # %for.end.172
                                        #   in Loop: Header=BB0_31 Depth=2
	jmp	.LBB0_44
.LBB0_44:                               # %if.end.173
                                        #   in Loop: Header=BB0_31 Depth=2
	jmp	.LBB0_50
.LBB0_45:                               # %if.else.174
                                        #   in Loop: Header=BB0_31 Depth=2
	movl	$0, -196(%rbp)
.LBB0_46:                               # %for.cond.175
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-196(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB0_49
# BB#47:                                # %for.body.178
                                        #   in Loop: Header=BB0_46 Depth=3
	movslq	-196(%rbp), %rax
	movq	-120(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movslq	-196(%rbp), %rax
	movq	-104(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#48:                                # %for.inc.186
                                        #   in Loop: Header=BB0_46 Depth=3
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB0_46
.LBB0_49:                               # %for.end.188
                                        #   in Loop: Header=BB0_31 Depth=2
	jmp	.LBB0_50
.LBB0_50:                               # %if.end.189
                                        #   in Loop: Header=BB0_31 Depth=2
	movl	-60(%rbp), %eax
	movq	-120(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -120(%rbp)
	movl	-60(%rbp), %eax
	movq	-104(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -104(%rbp)
	jmp	.LBB0_31
.LBB0_51:                               # %while.end.194
                                        #   in Loop: Header=BB0_8 Depth=1
	xorl	%esi, %esi
	movl	-64(%rbp), %eax
	movq	-96(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -96(%rbp)
	movq	-112(%rbp), %rcx
	movslq	-64(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	callq	memset
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB0_53
.LBB0_52:                               # %if.else.200
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	movl	-124(%rbp), %edx
	imull	-20(%rbp), %edx
	addl	%edx, %ecx
	movl	-32(%rbp), %edx
	imull	-20(%rbp), %edx
	movq	-80(%rbp), %r8
	movl	-20(%rbp), %r9d
	movl	%edx, -228(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-228(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_get_row
.LBB0_53:                               # %if.end.206
                                        #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_8
.LBB0_54:                               # %for.end.207
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	g_free
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	subsample_region, .Lfunc_end0-subsample_region
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4547007122018943789     # double 1.0E-4
.LCPI1_1:
	.quad	4607182418800017408     # double 1
.LCPI1_2:
	.quad	4602678819172646912     # double 0.5
.LCPI1_3:
	.quad	4643176031446892544     # double 255
	.text
	.globl	subsample_indexed_region
	.align	16, 0x90
	.type	subsample_indexed_region,@function
subsample_indexed_region:               # @subsample_indexed_region
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movl	44(%rdx), %ecx
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movl	48(%rdx), %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rdx
	movl	44(%rdx), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rsi
	movl	48(%rsi), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, -44(%rbp)
	cvtsi2sdl	-40(%rbp), %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	cvtsi2sdl	-44(%rbp), %xmm0
	cvtsi2sdl	-36(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-16(%rbp), %rsi
	movl	52(%rsi), %eax
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rsi
	movl	32(%rsi), %eax
	movl	%eax, -72(%rbp)
	movq	-8(%rbp), %rdi
	callq	pixel_region_has_alpha
	movl	%eax, -76(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.subsample_indexed_region, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_54
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movl	$1, %eax
	movl	%eax, %esi
	movl	-40(%rbp), %eax
	imull	-68(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movl	-32(%rbp), %ecx
	imull	-68(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc0_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -120(%rbp)
	movl	-32(%rbp), %ecx
	addl	-40(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, -176(%rbp)
	movl	$0, -136(%rbp)
	cvtsi2sdl	-136(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
	movl	$0, -196(%rbp)
.LBB1_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-196(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	-40(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB1_12
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB1_6 Depth=1
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-56(%rbp), %xmm1
	movl	-136(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jb	.LBB1_9
# BB#8:                                 # %if.then.28
                                        #   in Loop: Header=BB1_6 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-144(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-160(%rbp), %xmm0
	movslq	-196(%rbp), %rax
	movq	-176(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	jmp	.LBB1_10
.LBB1_9:                                # %if.else.30
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	cvtsi2sdl	-136(%rbp), %xmm0
	subsd	-160(%rbp), %xmm0
	movslq	-196(%rbp), %rcx
	movq	-176(%rbp), %rdx
	movsd	%xmm0, (%rdx,%rcx,8)
.LBB1_10:                               # %if.end.35
                                        #   in Loop: Header=BB1_6 Depth=1
	movslq	-196(%rbp), %rax
	movq	-176(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-160(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB1_6
.LBB1_12:                               # %for.end
	movl	$0, -132(%rbp)
	cvtsi2sdl	-132(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	movl	-132(%rbp), %edx
	imull	-28(%rbp), %edx
	addl	%edx, %ecx
	movl	-40(%rbp), %edx
	imull	-28(%rbp), %edx
	movq	-88(%rbp), %r8
	movl	-28(%rbp), %r9d
	movl	%edx, -228(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-228(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_get_row
	movl	$0, -196(%rbp)
.LBB1_13:                               # %for.cond.44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_18 Depth 2
                                        #     Child Loop BB1_30 Depth 2
                                        #       Child Loop BB1_34 Depth 3
                                        #       Child Loop BB1_39 Depth 3
                                        #       Child Loop BB1_45 Depth 3
	movl	-196(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB1_53
# BB#14:                                # %for.body.47
                                        #   in Loop: Header=BB1_13 Depth=1
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movl	$0, -136(%rbp)
	cvtsi2sdl	-136(%rbp), %xmm1
	movsd	%xmm1, -144(%rbp)
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-64(%rbp), %xmm1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jb	.LBB1_16
# BB#15:                                # %if.then.55
                                        #   in Loop: Header=BB1_13 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-168(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	movl	$1, -212(%rbp)
	jmp	.LBB1_17
.LBB1_16:                               # %if.else.58
                                        #   in Loop: Header=BB1_13 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	cvtsi2sdl	-132(%rbp), %xmm0
	subsd	-168(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	movl	$0, -212(%rbp)
.LBB1_17:                               # %if.end.62
                                        #   in Loop: Header=BB1_13 Depth=1
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-168(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
	movl	$0, -208(%rbp)
	movl	-32(%rbp), %ecx
	movl	%ecx, -200(%rbp)
.LBB1_18:                               # %while.cond
                                        #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -200(%rbp)
	je	.LBB1_28
# BB#19:                                # %while.body
                                        #   in Loop: Header=BB1_18 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, -216(%rbp)
	movl	-208(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -208(%rbp)
	movslq	%ecx, %rax
	movq	-176(%rbp), %rsi
	movsd	(%rsi,%rax,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	-184(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB1_23
# BB#20:                                # %if.then.71
                                        #   in Loop: Header=BB1_18 Depth=2
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	je	.LBB1_22
# BB#21:                                # %if.then.75
                                        #   in Loop: Header=BB1_18 Depth=2
	movl	-216(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -216(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-192(%rbp), %xmm0
	movq	-128(%rbp), %rdx
	addsd	(%rdx), %xmm0
	movsd	%xmm0, (%rdx)
	movl	-216(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -216(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-192(%rbp), %xmm0
	movq	-128(%rbp), %rdx
	addsd	8(%rdx), %xmm0
	movsd	%xmm0, 8(%rdx)
	movl	-216(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -216(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-192(%rbp), %xmm0
	movq	-128(%rbp), %rdx
	addsd	16(%rdx), %xmm0
	movsd	%xmm0, 16(%rdx)
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-128(%rbp), %rdx
	addsd	24(%rdx), %xmm0
	movsd	%xmm0, 24(%rdx)
.LBB1_22:                               # %if.end.102
                                        #   in Loop: Header=BB1_18 Depth=2
	jmp	.LBB1_24
.LBB1_23:                               # %if.else.103
                                        #   in Loop: Header=BB1_18 Depth=2
	movl	-216(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -216(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-192(%rbp), %xmm0
	movq	-128(%rbp), %rdx
	addsd	(%rdx), %xmm0
	movsd	%xmm0, (%rdx)
	movl	-216(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -216(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-192(%rbp), %xmm0
	movq	-128(%rbp), %rdx
	addsd	8(%rdx), %xmm0
	movsd	%xmm0, 8(%rdx)
	movl	-216(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -216(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-192(%rbp), %xmm0
	movq	-128(%rbp), %rdx
	addsd	16(%rdx), %xmm0
	movsd	%xmm0, 16(%rdx)
.LBB1_24:                               # %if.end.128
                                        #   in Loop: Header=BB1_18 Depth=2
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-56(%rbp), %xmm1
	movl	-136(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jb	.LBB1_26
# BB#25:                                # %if.then.135
                                        #   in Loop: Header=BB1_18 Depth=2
	movl	-68(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-144(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movl	-200(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB1_27
.LBB1_26:                               # %if.else.137
                                        #   in Loop: Header=BB1_18 Depth=2
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-96(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movl	-136(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -136(%rbp)
.LBB1_27:                               # %if.end.142
                                        #   in Loop: Header=BB1_18 Depth=2
	jmp	.LBB1_18
.LBB1_28:                               # %while.end
                                        #   in Loop: Header=BB1_13 Depth=1
	cmpl	$0, -212(%rbp)
	je	.LBB1_51
# BB#29:                                # %if.then.144
                                        #   in Loop: Header=BB1_13 Depth=1
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -192(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
	movl	-32(%rbp), %ecx
	movl	%ecx, -200(%rbp)
.LBB1_30:                               # %while.cond.147
                                        #   Parent Loop BB1_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_34 Depth 3
                                        #       Child Loop BB1_39 Depth 3
                                        #       Child Loop BB1_45 Depth 3
	movl	-200(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -200(%rbp)
	cmpl	$0, %eax
	je	.LBB1_50
# BB#31:                                # %while.body.150
                                        #   in Loop: Header=BB1_30 Depth=2
	cmpl	$0, -76(%rbp)
	je	.LBB1_44
# BB#32:                                # %if.then.152
                                        #   in Loop: Header=BB1_30 Depth=2
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movl	-68(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm1    # xmm1 = mem[0],zero
	movsd	%xmm1, -224(%rbp)
	movsd	-224(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_38
# BB#33:                                # %if.then.158
                                        #   in Loop: Header=BB1_30 Depth=2
	movl	$0, -204(%rbp)
.LBB1_34:                               # %for.cond.159
                                        #   Parent Loop BB1_13 Depth=1
                                        #     Parent Loop BB1_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-204(%rbp), %eax
	movl	-68(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB1_37
# BB#35:                                # %for.body.163
                                        #   in Loop: Header=BB1_34 Depth=3
	movslq	-204(%rbp), %rax
	movq	-128(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-224(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movslq	-204(%rbp), %rax
	movq	-112(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#36:                                # %for.inc.171
                                        #   in Loop: Header=BB1_34 Depth=3
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB1_34
.LBB1_37:                               # %for.end.173
                                        #   in Loop: Header=BB1_30 Depth=2
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-192(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI1_3(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movl	-68(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-112(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB1_43
.LBB1_38:                               # %if.else.181
                                        #   in Loop: Header=BB1_30 Depth=2
	movl	$0, -204(%rbp)
.LBB1_39:                               # %for.cond.182
                                        #   Parent Loop BB1_13 Depth=1
                                        #     Parent Loop BB1_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-204(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB1_42
# BB#40:                                # %for.body.185
                                        #   in Loop: Header=BB1_39 Depth=3
	movslq	-204(%rbp), %rax
	movq	-112(%rbp), %rcx
	movb	$0, (%rcx,%rax)
# BB#41:                                # %for.inc.188
                                        #   in Loop: Header=BB1_39 Depth=3
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB1_39
.LBB1_42:                               # %for.end.190
                                        #   in Loop: Header=BB1_30 Depth=2
	jmp	.LBB1_43
.LBB1_43:                               # %if.end.191
                                        #   in Loop: Header=BB1_30 Depth=2
	jmp	.LBB1_49
.LBB1_44:                               # %if.else.192
                                        #   in Loop: Header=BB1_30 Depth=2
	movl	$0, -204(%rbp)
.LBB1_45:                               # %for.cond.193
                                        #   Parent Loop BB1_13 Depth=1
                                        #     Parent Loop BB1_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-204(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB1_48
# BB#46:                                # %for.body.196
                                        #   in Loop: Header=BB1_45 Depth=3
	movslq	-204(%rbp), %rax
	movq	-128(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-192(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movslq	-204(%rbp), %rax
	movq	-112(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#47:                                # %for.inc.204
                                        #   in Loop: Header=BB1_45 Depth=3
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB1_45
.LBB1_48:                               # %for.end.206
                                        #   in Loop: Header=BB1_30 Depth=2
	jmp	.LBB1_49
.LBB1_49:                               # %if.end.207
                                        #   in Loop: Header=BB1_30 Depth=2
	movl	-68(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	movl	-68(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -112(%rbp)
	jmp	.LBB1_30
.LBB1_50:                               # %while.end.212
                                        #   in Loop: Header=BB1_13 Depth=1
	xorl	%esi, %esi
	movl	-72(%rbp), %eax
	movq	-104(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -104(%rbp)
	movq	-120(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	callq	memset
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB1_52
.LBB1_51:                               # %if.else.218
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	movl	-132(%rbp), %edx
	imull	-28(%rbp), %edx
	addl	%edx, %ecx
	movl	-40(%rbp), %edx
	imull	-28(%rbp), %edx
	movq	-88(%rbp), %r8
	movl	-28(%rbp), %r9d
	movl	%edx, -232(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-232(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_get_row
.LBB1_52:                               # %if.end.224
                                        #   in Loop: Header=BB1_13 Depth=1
	jmp	.LBB1_13
.LBB1_53:                               # %for.end.225
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-88(%rbp), %rdi
	callq	g_free
.LBB1_54:                               # %return
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	subsample_indexed_region, .Lfunc_end1-subsample_indexed_region
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Paint-Funcs"
	.size	.L.str, 17

	.type	.L__func__.subsample_indexed_region,@object # @__func__.subsample_indexed_region
.L__func__.subsample_indexed_region:
	.asciz	"subsample_indexed_region"
	.size	.L__func__.subsample_indexed_region, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"cmap != NULL"
	.size	.L.str.1, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
