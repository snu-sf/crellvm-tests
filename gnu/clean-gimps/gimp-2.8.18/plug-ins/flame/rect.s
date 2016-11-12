	.text
	.file	"rect.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4617315517961601024     # double 5
.LCPI0_1:
	.quad	4607182418800017408     # double 1
.LCPI0_2:
	.quad	4602678819172646912     # double 0.5
.LCPI0_3:
	.quad	4643211215818981376     # double 256
.LCPI0_4:
	.quad	4652218415073722368     # double 1024
.LCPI0_5:
	.quad	4611686018427387904     # double 2
.LCPI0_6:
	.quad	-4620693217682128896    # double -0.5
.LCPI0_7:
	.quad	4643422322051514368     # double 268
.LCPI0_8:
	.quad	-4611686018427387904    # double -2
.LCPI0_9:
	.quad	4612811918334230528     # double 2.5
	.text
	.globl	render_rectangle
	.align	16, 0x90
	.type	render_rectangle,@function
render_rectangle:                       # @render_rectangle
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
	subq	$10832, %rsp            # imm = 0x2A50
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	7968(%rsi), %ecx
	movl	%ecx, -216(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	8024(%rsi), %ecx
	movl	%ecx, -220(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	7960(%rsi), %ecx
	movl	%ecx, -196(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB0_4
# BB#1:                                 # %if.then
	movl	$2, %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	7964(%rcx), %edx
	movl	%eax, -10708(%rbp)      # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-10708(%rbp), %esi      # 4-byte Reload
	idivl	%esi
	movl	%eax, -200(%rbp)
	cmpl	$2, -24(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then.10
	movl	-28(%rbp), %eax
	imull	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
.LBB0_3:                                # %if.end
	movl	-20(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_5
.LBB0_4:                                # %if.else
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	7964(%rax), %ecx
	movl	%ecx, -200(%rbp)
.LBB0_5:                                # %if.end.15
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-216(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	mulsd	8008(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -212(%rbp)
	movl	-212(%rbp), %ecx
	xorl	-216(%rbp), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB0_7
# BB#6:                                 # %if.then.22
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
.LBB0_7:                                # %if.end.23
	movslq	-212(%rbp), %rax
	shlq	$3, %rax
	movslq	-212(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -104(%rbp)
	movl	$0, -44(%rbp)
.LBB0_8:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-212(%rbp), %eax
	jge	.LBB0_17
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	$0, -48(%rbp)
.LBB0_10:                               # %for.cond.30
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-212(%rbp), %eax
	jge	.LBB0_15
# BB#11:                                # %for.body.33
                                        #   in Loop: Header=BB0_10 Depth=2
	movsd	.LCPI0_9, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_5, %xmm2         # xmm2 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm3
	movaps	%xmm2, %xmm4
	mulsd	%xmm3, %xmm4
	addsd	%xmm1, %xmm4
	cvtsi2sdl	-212(%rbp), %xmm3
	divsd	%xmm3, %xmm4
	subsd	%xmm1, %xmm4
	mulsd	%xmm0, %xmm4
	movsd	%xmm4, -2288(%rbp)
	cvtsi2sdl	-48(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	cvtsi2sdl	-212(%rbp), %xmm3
	divsd	%xmm3, %xmm2
	subsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -2296(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB0_13
# BB#12:                                # %if.then.47
                                        #   in Loop: Header=BB0_10 Depth=2
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	mulsd	-2296(%rbp), %xmm0
	movsd	%xmm0, -2296(%rbp)
.LBB0_13:                               # %if.end.49
                                        #   in Loop: Header=BB0_10 Depth=2
	movsd	.LCPI0_8, %xmm0         # xmm0 = mem[0],zero
	movsd	-2288(%rbp), %xmm1      # xmm1 = mem[0],zero
	mulsd	-2288(%rbp), %xmm1
	movsd	-2296(%rbp), %xmm2      # xmm2 = mem[0],zero
	mulsd	-2296(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	callq	exp
	movl	-44(%rbp), %eax
	movl	-48(%rbp), %ecx
	imull	-212(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rsi
	movsd	%xmm0, (%rsi,%rdx,8)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB0_10 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_10
.LBB0_15:                               # %for.end
                                        #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               # %for.inc.59
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_8
.LBB0_17:                               # %for.end.61
	movq	-104(%rbp), %rdi
	movl	-212(%rbp), %eax
	imull	-212(%rbp), %eax
	movl	%eax, %esi
	callq	normalize_vector
	movslq	-220(%rbp), %rdi
	shlq	$3, %rdi
	callq	malloc
	movq	%rax, -112(%rbp)
	movslq	-220(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -120(%rbp)
	cmpl	$1, -220(%rbp)
	jle	.LBB0_23
# BB#18:                                # %if.then.71
	movl	$0, -44(%rbp)
.LBB0_19:                               # %for.cond.72
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-220(%rbp), %eax
	jge	.LBB0_22
# BB#20:                                # %for.body.75
                                        #   in Loop: Header=BB0_19 Depth=1
	movsd	.LCPI0_8, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_5, %xmm2         # xmm2 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm3
	movl	-220(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm4
	divsd	%xmm4, %xmm3
	mulsd	%xmm3, %xmm2
	subsd	%xmm1, %xmm2
	movq	-8(%rbp), %rcx
	mulsd	(%rcx), %xmm2
	movslq	-44(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movsd	%xmm2, (%rdx,%rcx,8)
	movsd	%xmm2, -2304(%rbp)
	mulsd	-2304(%rbp), %xmm0
	mulsd	-2304(%rbp), %xmm0
	callq	exp
	movslq	-44(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movsd	%xmm0, (%rdx,%rcx,8)
# BB#21:                                # %for.inc.90
                                        #   in Loop: Header=BB0_19 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_19
.LBB0_22:                               # %for.end.92
	movq	-112(%rbp), %rdi
	movl	-220(%rbp), %esi
	callq	normalize_vector
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.93
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movq	-112(%rbp), %rax
	movsd	%xmm1, (%rax)
	movq	-120(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB0_24:                               # %if.end.96
	movl	$2, %eax
	movl	-212(%rbp), %ecx
	subl	-216(%rbp), %ecx
	movl	%eax, -10712(%rbp)      # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-10712(%rbp), %ecx      # 4-byte Reload
	idivl	%ecx
	movl	%eax, -2276(%rbp)
	movl	-216(%rbp), %eax
	imull	-200(%rbp), %eax
	movl	-2276(%rbp), %esi
	shll	$1, %esi
	addl	%esi, %eax
	movl	%eax, -208(%rbp)
	movl	-216(%rbp), %eax
	imull	-196(%rbp), %eax
	movl	-2276(%rbp), %esi
	shll	$1, %esi
	addl	%esi, %eax
	movl	%eax, -204(%rbp)
	movl	-204(%rbp), %eax
	imull	-208(%rbp), %eax
	movl	%eax, -60(%rbp)
	movslq	-60(%rbp), %rdi
	shlq	$3, %rdi
	movslq	-60(%rbp), %r8
	shlq	$3, %r8
	addq	%r8, %rdi
	addq	$240000, %rdi           # imm = 0x3A980
	movl	%edi, %eax
	movl	%eax, -2308(%rbp)
	movl	-2308(%rbp), %eax
	cmpl	render_rectangle.last_block_size, %eax
	jle	.LBB0_30
# BB#25:                                # %if.then.115
	cmpq	$0, render_rectangle.last_block
	je	.LBB0_27
# BB#26:                                # %if.then.118
	movq	render_rectangle.last_block, %rdi
	callq	free
.LBB0_27:                               # %if.end.119
	movslq	-2308(%rbp), %rdi
	callq	malloc
	movq	%rax, render_rectangle.last_block
	cmpq	$0, render_rectangle.last_block
	jne	.LBB0_29
# BB#28:                                # %if.then.124
	movabsq	$.L.str, %rsi
	movq	stderr, %rdi
	movl	-2308(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -10716(%rbp)      # 4-byte Spill
	callq	exit
.LBB0_29:                               # %if.end.126
	movl	-2308(%rbp), %eax
	movl	%eax, render_rectangle.last_block_size
.LBB0_30:                               # %if.end.127
	xorl	%esi, %esi
	movq	render_rectangle.last_block, %rax
	movq	%rax, -80(%rbp)
	movq	render_rectangle.last_block, %rax
	movslq	-60(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	render_rectangle.last_block, %rax
	movslq	-60(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movslq	-60(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
	movl	$0, -68(%rbp)
.LBB0_31:                               # %for.cond.136
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_33 Depth 2
                                        #       Child Loop BB0_35 Depth 3
                                        #     Child Loop BB0_48 Depth 2
                                        #       Child Loop BB0_53 Depth 3
                                        #         Child Loop BB0_64 Depth 4
                                        #     Child Loop BB0_75 Depth 2
                                        #       Child Loop BB0_77 Depth 3
	movl	-68(%rbp), %eax
	cmpl	-220(%rbp), %eax
	jge	.LBB0_94
# BB#32:                                # %for.body.139
                                        #   in Loop: Header=BB0_31 Depth=1
	leaq	-10432(%rbp), %rdx
	xorl	%esi, %esi
	movq	-80(%rbp), %rax
	movslq	-60(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rdx, -10728(%rbp)      # 8-byte Spill
	movq	%rcx, %rdx
	callq	memset
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movslq	-68(%rbp), %rax
	movq	-120(%rbp), %rcx
	addsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, -2320(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	16(%rax), %esi
	movsd	-2320(%rbp), %xmm0      # xmm0 = mem[0],zero
	movq	-10728(%rbp), %rdx      # 8-byte Reload
	callq	interpolate
	movl	$0, -48(%rbp)
.LBB0_33:                               # %for.cond.146
                                        #   Parent Loop BB0_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_35 Depth 3
	cmpl	$256, -48(%rbp)         # imm = 0x100
	jge	.LBB0_40
# BB#34:                                # %for.body.149
                                        #   in Loop: Header=BB0_33 Depth=2
	movl	$0, -52(%rbp)
.LBB0_35:                               # %for.cond.150
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$3, -52(%rbp)
	jge	.LBB0_38
# BB#36:                                # %for.body.153
                                        #   in Loop: Header=BB0_35 Depth=3
	leaq	-2272(%rbp), %rax
	leaq	-10432(%rbp), %rcx
	movl	$256, %edx              # imm = 0x100
	movslq	-52(%rbp), %rsi
	movl	-48(%rbp), %edi
	shll	$8, %edi
	movq	%rax, -10736(%rbp)      # 8-byte Spill
	movl	%edi, %eax
	movl	%edx, -10740(%rbp)      # 4-byte Spill
	cltd
	movl	-10740(%rbp), %edi      # 4-byte Reload
	idivl	%edi
	movslq	%eax, %r8
	addq	$1776, %rcx             # imm = 0x6F0
	imulq	$24, %r8, %r8
	addq	%r8, %rcx
	movsd	(%rcx,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	cvtsi2sdl	-2404(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movw	%ax, %r9w
	movslq	-52(%rbp), %rcx
	movslq	-48(%rbp), %rsi
	shlq	$3, %rsi
	movq	-10736(%rbp), %r8       # 8-byte Reload
	addq	%rsi, %r8
	movw	%r9w, (%r8,%rcx,2)
# BB#37:                                # %for.inc.169
                                        #   in Loop: Header=BB0_35 Depth=3
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_35
.LBB0_38:                               # %for.end.171
                                        #   in Loop: Header=BB0_33 Depth=2
	movl	-2404(%rbp), %eax
	movw	%ax, %cx
	movslq	-48(%rbp), %rdx
	movw	%cx, -2266(%rbp,%rdx,8)
# BB#39:                                # %for.inc.177
                                        #   in Loop: Header=BB0_33 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_33
.LBB0_40:                               # %for.end.179
                                        #   in Loop: Header=BB0_31 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm1, -10456(%rbp)
	movsd	-2440(%rbp), %xmm1      # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, -10480(%rbp)
	movsd	-2416(%rbp), %xmm0      # xmm0 = mem[0],zero
	mulsd	-10480(%rbp), %xmm0
	mulsd	-10480(%rbp), %xmm0
	movsd	%xmm0, -2328(%rbp)
	movsd	-2432(%rbp), %xmm0      # xmm0 = mem[0],zero
	mulsd	-10480(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB0_42
# BB#41:                                # %cond.true
                                        #   in Loop: Header=BB0_31 Depth=1
	movsd	.LCPI0_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -10752(%rbp)     # 8-byte Spill
	jmp	.LBB0_43
.LBB0_42:                               # %cond.false
                                        #   in Loop: Header=BB0_31 Depth=1
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -10752(%rbp)     # 8-byte Spill
.LBB0_43:                               # %cond.end
                                        #   in Loop: Header=BB0_31 Depth=1
	movsd	-10752(%rbp), %xmm0     # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -10756(%rbp)      # 4-byte Spill
	je	.LBB0_44
	jmp	.LBB0_136
.LBB0_136:                              # %cond.end
                                        #   in Loop: Header=BB0_31 Depth=1
	movl	-10756(%rbp), %eax      # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -10760(%rbp)      # 4-byte Spill
	je	.LBB0_45
	jmp	.LBB0_137
.LBB0_137:                              # %cond.end
                                        #   in Loop: Header=BB0_31 Depth=1
	movl	-10756(%rbp), %eax      # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -10764(%rbp)      # 4-byte Spill
	je	.LBB0_46
	jmp	.LBB0_47
.LBB0_44:                               # %sw.bb
                                        #   in Loop: Header=BB0_31 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -10456(%rbp)
	jmp	.LBB0_47
.LBB0_45:                               # %sw.bb.187
                                        #   in Loop: Header=BB0_31 Depth=1
	movsd	.LCPI0_6, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -10456(%rbp)
	jmp	.LBB0_47
.LBB0_46:                               # %sw.bb.188
                                        #   in Loop: Header=BB0_31 Depth=1
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -10456(%rbp)
.LBB0_47:                               # %sw.epilog
                                        #   in Loop: Header=BB0_31 Depth=1
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_5, %xmm1         # xmm1 = mem[0],zero
	movsd	-10456(%rbp), %xmm2     # xmm2 = mem[0],zero
	divsd	-184(%rbp), %xmm2
	movsd	%xmm2, -10456(%rbp)
	cvtsi2sdl	-2276(%rbp), %xmm2
	cvtsi2sdl	-216(%rbp), %xmm3
	mulsd	-184(%rbp), %xmm3
	divsd	%xmm3, %xmm2
	movsd	%xmm2, -10440(%rbp)
	cvtsi2sdl	-2276(%rbp), %xmm2
	cvtsi2sdl	-216(%rbp), %xmm3
	mulsd	-192(%rbp), %xmm3
	divsd	%xmm3, %xmm2
	movsd	%xmm2, -10448(%rbp)
	movsd	-2456(%rbp), %xmm2      # xmm2 = mem[0],zero
	cvtsi2sdl	-196(%rbp), %xmm3
	divsd	-184(%rbp), %xmm3
	divsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm2
	movsd	%xmm2, -10464(%rbp)
	movsd	-2448(%rbp), %xmm2      # xmm2 = mem[0],zero
	cvtsi2sdl	-200(%rbp), %xmm3
	divsd	-192(%rbp), %xmm3
	divsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm2
	movsd	%xmm2, -10472(%rbp)
	movsd	-10464(%rbp), %xmm1     # xmm1 = mem[0],zero
	subsd	-10440(%rbp), %xmm1
	movsd	%xmm1, -160(%rbp)
	movsd	-10472(%rbp), %xmm1     # xmm1 = mem[0],zero
	subsd	-10448(%rbp), %xmm1
	addsd	-10456(%rbp), %xmm1
	movsd	%xmm1, -152(%rbp)
	movsd	-10464(%rbp), %xmm1     # xmm1 = mem[0],zero
	cvtsi2sdl	-196(%rbp), %xmm2
	divsd	-184(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	addsd	-10440(%rbp), %xmm1
	movsd	%xmm1, -144(%rbp)
	movsd	-10472(%rbp), %xmm1     # xmm1 = mem[0],zero
	cvtsi2sdl	-200(%rbp), %xmm2
	divsd	-192(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	addsd	-10448(%rbp), %xmm1
	addsd	-10456(%rbp), %xmm1
	movsd	%xmm1, -136(%rbp)
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-160(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -176(%rbp)
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-152(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-2328(%rbp), %xmm0      # xmm0 = mem[0],zero
	cvtsi2sdl	-60(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movl	-216(%rbp), %eax
	imull	-216(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cltd
	idivl	-2408(%rbp)
	movl	%eax, -64(%rbp)
	movl	$0, -2280(%rbp)
	movl	$0, -72(%rbp)
.LBB0_48:                               # %for.cond.243
                                        #   Parent Loop BB0_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_53 Depth 3
                                        #         Child Loop BB0_64 Depth 4
	movl	-72(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB0_74
# BB#49:                                # %for.body.246
                                        #   in Loop: Header=BB0_48 Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB0_52
# BB#50:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_48 Depth=2
	movl	$32, %eax
	movl	-2280(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -2280(%rbp)
	movl	%eax, -10768(%rbp)      # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-10768(%rbp), %ecx      # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB0_52
# BB#51:                                # %if.then.251
                                        #   in Loop: Header=BB0_48 Depth=2
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	cvtsi2sdl	-72(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-64(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	*%rax
	movl	%eax, -10772(%rbp)      # 4-byte Spill
.LBB0_52:                               # %if.end.257
                                        #   in Loop: Header=BB0_48 Depth=2
	callq	random_uniform11
	movq	-96(%rbp), %rax
	movsd	%xmm0, (%rax)
	callq	random_uniform11
	movq	-96(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	callq	random_uniform01
	leaq	-10432(%rbp), %rdi
	movl	$10000, %esi            # imm = 0x2710
	movl	$15, %edx
	movq	-96(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-96(%rbp), %rcx
	callq	iterate
	movl	$0, -48(%rbp)
.LBB0_53:                               # %for.cond.267
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_48 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_64 Depth 4
	cmpl	$10000, -48(%rbp)       # imm = 0x2710
	jge	.LBB0_72
# BB#54:                                # %for.body.270
                                        #   in Loop: Header=BB0_53 Depth=3
	movslq	-48(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-96(%rbp), %rax
	movq	%rax, -10496(%rbp)
	movq	-10496(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	-160(%rbp), %xmm0
	jb	.LBB0_70
# BB#55:                                # %land.lhs.true.278
                                        #   in Loop: Header=BB0_53 Depth=3
	movq	-10496(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	-152(%rbp), %xmm0
	jb	.LBB0_70
# BB#56:                                # %land.lhs.true.283
                                        #   in Loop: Header=BB0_53 Depth=3
	movq	-10496(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB0_70
# BB#57:                                # %land.lhs.true.288
                                        #   in Loop: Header=BB0_53 Depth=3
	movq	-10496(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB0_70
# BB#58:                                # %if.then.293
                                        #   in Loop: Header=BB0_53 Depth=3
	movsd	.LCPI0_3, %xmm0         # xmm0 = mem[0],zero
	movq	-10496(%rbp), %rax
	mulsd	16(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -10488(%rbp)
	cmpl	$0, -10488(%rbp)
	jge	.LBB0_60
# BB#59:                                # %if.then.299
                                        #   in Loop: Header=BB0_53 Depth=3
	movl	$0, -10488(%rbp)
	jmp	.LBB0_63
.LBB0_60:                               # %if.else.300
                                        #   in Loop: Header=BB0_53 Depth=3
	cmpl	$255, -10488(%rbp)
	jle	.LBB0_62
# BB#61:                                # %if.then.303
                                        #   in Loop: Header=BB0_53 Depth=3
	movl	$255, -10488(%rbp)
.LBB0_62:                               # %if.end.304
                                        #   in Loop: Header=BB0_53 Depth=3
	jmp	.LBB0_63
.LBB0_63:                               # %if.end.305
                                        #   in Loop: Header=BB0_53 Depth=3
	movq	-80(%rbp), %rax
	cvtsi2sdl	-204(%rbp), %xmm0
	movq	-10496(%rbp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	subsd	-160(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	mulsd	-176(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	movslq	%edx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movl	-204(%rbp), %edx
	cvtsi2sdl	-208(%rbp), %xmm0
	movq	-10496(%rbp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	subsd	-152(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	mulsd	-168(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	imull	%esi, %edx
	movslq	%edx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -10504(%rbp)
	movl	$0, -10484(%rbp)
.LBB0_64:                               # %for.cond.327
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_48 Depth=2
                                        #       Parent Loop BB0_53 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -10484(%rbp)
	jge	.LBB0_69
# BB#65:                                # %for.body.330
                                        #   in Loop: Header=BB0_64 Depth=4
	leaq	-2272(%rbp), %rax
	movslq	-10484(%rbp), %rcx
	movq	-10504(%rbp), %rdx
	movswl	(%rdx,%rcx,2), %esi
	movslq	-10484(%rbp), %rcx
	movslq	-10488(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movswl	(%rax,%rcx,2), %edi
	addl	%edi, %esi
	movw	%si, %r8w
	movw	%r8w, -10506(%rbp)
	movswl	-10506(%rbp), %esi
	movslq	-10484(%rbp), %rax
	movq	-10504(%rbp), %rcx
	movswl	(%rcx,%rax,2), %edi
	cmpl	%edi, %esi
	jle	.LBB0_67
# BB#66:                                # %if.then.349
                                        #   in Loop: Header=BB0_64 Depth=4
	movw	-10506(%rbp), %ax
	movslq	-10484(%rbp), %rcx
	movq	-10504(%rbp), %rdx
	movw	%ax, (%rdx,%rcx,2)
.LBB0_67:                               # %if.end.353
                                        #   in Loop: Header=BB0_64 Depth=4
	jmp	.LBB0_68
.LBB0_68:                               # %for.inc.354
                                        #   in Loop: Header=BB0_64 Depth=4
	movl	-10484(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -10484(%rbp)
	jmp	.LBB0_64
.LBB0_69:                               # %for.end.356
                                        #   in Loop: Header=BB0_53 Depth=3
	jmp	.LBB0_70
.LBB0_70:                               # %if.end.357
                                        #   in Loop: Header=BB0_53 Depth=3
	jmp	.LBB0_71
.LBB0_71:                               # %for.inc.358
                                        #   in Loop: Header=BB0_53 Depth=3
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_53
.LBB0_72:                               # %for.end.360
                                        #   in Loop: Header=BB0_48 Depth=2
	jmp	.LBB0_73
.LBB0_73:                               # %for.inc.361
                                        #   in Loop: Header=BB0_48 Depth=2
	movl	-72(%rbp), %eax
	addl	$10000, %eax            # imm = 0x2710
	movl	%eax, -72(%rbp)
	jmp	.LBB0_48
.LBB0_74:                               # %for.end.363
                                        #   in Loop: Header=BB0_31 Depth=1
	movsd	.LCPI0_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_7, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_4, %xmm2         # xmm2 = mem[0],zero
	movsd	-2488(%rbp), %xmm3      # xmm3 = mem[0],zero
	mulsd	-2496(%rbp), %xmm3
	mulsd	%xmm2, %xmm3
	mulsd	%xmm1, %xmm3
	movslq	-68(%rbp), %rax
	movq	-112(%rbp), %rcx
	mulsd	(%rcx,%rax,8), %xmm3
	divsd	%xmm0, %xmm3
	movsd	%xmm3, -10520(%rbp)
	movl	-196(%rbp), %edx
	imull	-200(%rbp), %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-192(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -10528(%rbp)
	movl	-216(%rbp), %edx
	imull	-216(%rbp), %edx
	imull	-220(%rbp), %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	-2488(%rbp), %xmm1      # xmm1 = mem[0],zero
	mulsd	-10528(%rbp), %xmm1
	cvtsi2sdl	-2404(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	mulsd	-2328(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -10536(%rbp)
	movl	$0, -48(%rbp)
.LBB0_75:                               # %for.cond.385
                                        #   Parent Loop BB0_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_77 Depth 3
	movl	-48(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jge	.LBB0_92
# BB#76:                                # %for.body.388
                                        #   in Loop: Header=BB0_75 Depth=2
	movl	$0, -44(%rbp)
.LBB0_77:                               # %for.cond.389
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jge	.LBB0_90
# BB#78:                                # %for.body.392
                                        #   in Loop: Header=BB0_77 Depth=3
	xorps	%xmm0, %xmm0
	movq	-88(%rbp), %rax
	movslq	-44(%rbp), %rcx
	leaq	(%rax,%rcx,8), %rax
	movl	-48(%rbp), %edx
	movl	-204(%rbp), %esi
	imull	%esi, %edx
	movslq	%edx, %rcx
	leaq	(%rax,%rcx,8), %rax
	movq	%rax, -10544(%rbp)
	movq	-80(%rbp), %rax
	movslq	-44(%rbp), %rcx
	leaq	(%rax,%rcx,8), %rax
	movl	-48(%rbp), %edx
	movl	-204(%rbp), %esi
	imull	%esi, %edx
	movslq	%edx, %rcx
	leaq	(%rax,%rcx,8), %rdi
	movq	%rdi, -10552(%rbp)
	movswl	(%rax,%rcx,8), %edx
	cvtsi2sdl	%edx, %xmm1
	movsd	%xmm1, -10592(%rbp)
	movq	-10552(%rbp), %rax
	movswl	2(%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	movsd	%xmm1, -10584(%rbp)
	movq	-10552(%rbp), %rax
	movswl	4(%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	movsd	%xmm1, -10576(%rbp)
	movq	-10552(%rbp), %rax
	movswl	6(%rax), %edx
	movw	%dx, %r8w
	cvtsi2sdl	%edx, %xmm1
	movsd	%xmm1, -10568(%rbp)
	ucomisd	-10568(%rbp), %xmm0
	movw	%r8w, -10774(%rbp)      # 2-byte Spill
	jne	.LBB0_80
	jp	.LBB0_80
# BB#79:                                # %if.then.423
                                        #   in Loop: Header=BB0_77 Depth=3
	jmp	.LBB0_89
.LBB0_80:                               # %if.end.424
                                        #   in Loop: Header=BB0_77 Depth=3
	movsd	-10520(%rbp), %xmm0     # xmm0 = mem[0],zero
	movsd	-10568(%rbp), %xmm1     # xmm1 = mem[0],zero
	movsd	-10536(%rbp), %xmm2     # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -10784(%rbp)     # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	log
	movsd	-10784(%rbp), %xmm1     # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-10568(%rbp), %xmm0     # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -10600(%rbp)
	movsd	-10592(%rbp), %xmm0     # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -10592(%rbp)
	movsd	-10600(%rbp), %xmm0     # xmm0 = mem[0],zero
	movsd	-10584(%rbp), %xmm1     # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -10584(%rbp)
	movsd	-10600(%rbp), %xmm0     # xmm0 = mem[0],zero
	movsd	-10576(%rbp), %xmm1     # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -10576(%rbp)
	movsd	-10600(%rbp), %xmm0     # xmm0 = mem[0],zero
	movsd	-10568(%rbp), %xmm1     # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -10568(%rbp)
	movq	-10544(%rbp), %rax
	movswl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-10592(%rbp), %xmm1     # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movw	%cx, %dx
	movw	%dx, -10602(%rbp)
	movswl	-10602(%rbp), %ecx
	movq	-10544(%rbp), %rax
	movswl	(%rax), %esi
	cmpl	%esi, %ecx
	jle	.LBB0_82
# BB#81:                                # %if.then.455
                                        #   in Loop: Header=BB0_77 Depth=3
	movw	-10602(%rbp), %ax
	movq	-10544(%rbp), %rcx
	movw	%ax, (%rcx)
.LBB0_82:                               # %if.end.458
                                        #   in Loop: Header=BB0_77 Depth=3
	movq	-10544(%rbp), %rax
	movswl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-10584(%rbp), %xmm1     # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movw	%cx, %dx
	movw	%dx, -10604(%rbp)
	movswl	-10604(%rbp), %ecx
	movq	-10544(%rbp), %rax
	movswl	2(%rax), %esi
	cmpl	%esi, %ecx
	jle	.LBB0_84
# BB#83:                                # %if.then.474
                                        #   in Loop: Header=BB0_77 Depth=3
	movw	-10604(%rbp), %ax
	movq	-10544(%rbp), %rcx
	movw	%ax, 2(%rcx)
.LBB0_84:                               # %if.end.477
                                        #   in Loop: Header=BB0_77 Depth=3
	movq	-10544(%rbp), %rax
	movswl	4(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-10576(%rbp), %xmm1     # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movw	%cx, %dx
	movw	%dx, -10606(%rbp)
	movswl	-10606(%rbp), %ecx
	movq	-10544(%rbp), %rax
	movswl	4(%rax), %esi
	cmpl	%esi, %ecx
	jle	.LBB0_86
# BB#85:                                # %if.then.493
                                        #   in Loop: Header=BB0_77 Depth=3
	movw	-10606(%rbp), %ax
	movq	-10544(%rbp), %rcx
	movw	%ax, 4(%rcx)
.LBB0_86:                               # %if.end.496
                                        #   in Loop: Header=BB0_77 Depth=3
	movq	-10544(%rbp), %rax
	movswl	6(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-10568(%rbp), %xmm1     # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movw	%cx, %dx
	movw	%dx, -10608(%rbp)
	movswl	-10608(%rbp), %ecx
	movq	-10544(%rbp), %rax
	movswl	6(%rax), %esi
	cmpl	%esi, %ecx
	jle	.LBB0_88
# BB#87:                                # %if.then.512
                                        #   in Loop: Header=BB0_77 Depth=3
	movw	-10608(%rbp), %ax
	movq	-10544(%rbp), %rcx
	movw	%ax, 6(%rcx)
.LBB0_88:                               # %if.end.515
                                        #   in Loop: Header=BB0_77 Depth=3
	jmp	.LBB0_89
.LBB0_89:                               # %for.inc.516
                                        #   in Loop: Header=BB0_77 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_77
.LBB0_90:                               # %for.end.518
                                        #   in Loop: Header=BB0_75 Depth=2
	jmp	.LBB0_91
.LBB0_91:                               # %for.inc.519
                                        #   in Loop: Header=BB0_75 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_75
.LBB0_92:                               # %for.end.521
                                        #   in Loop: Header=BB0_31 Depth=1
	jmp	.LBB0_93
.LBB0_93:                               # %for.inc.522
                                        #   in Loop: Header=BB0_31 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_31
.LBB0_94:                               # %for.end.524
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	divsd	7952(%rax), %xmm0
	movsd	%xmm0, -10664(%rbp)
	movl	$0, -10616(%rbp)
	movl	$0, -48(%rbp)
.LBB0_95:                               # %for.cond.529
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_100 Depth 2
                                        #       Child Loop BB0_102 Depth 3
                                        #         Child Loop BB0_104 Depth 4
	movl	-48(%rbp), %eax
	cmpl	-200(%rbp), %eax
	jge	.LBB0_135
# BB#96:                                # %for.body.532
                                        #   in Loop: Header=BB0_95 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_99
# BB#97:                                # %land.lhs.true.534
                                        #   in Loop: Header=BB0_95 Depth=1
	movl	$32, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -10788(%rbp)      # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-10788(%rbp), %ecx      # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB0_99
# BB#98:                                # %if.then.538
                                        #   in Loop: Header=BB0_95 Depth=1
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	cvtsi2sdl	-48(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	cvtsi2sdl	-200(%rbp), %xmm1
	divsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	callq	*%rax
	movl	%eax, -10792(%rbp)      # 4-byte Spill
.LBB0_99:                               # %if.end.545
                                        #   in Loop: Header=BB0_95 Depth=1
	movl	$0, -10612(%rbp)
	movl	$0, -44(%rbp)
.LBB0_100:                              # %for.cond.546
                                        #   Parent Loop BB0_95 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_102 Depth 3
                                        #         Child Loop BB0_104 Depth 4
	movl	-44(%rbp), %eax
	cmpl	-196(%rbp), %eax
	jge	.LBB0_133
# BB#101:                               # %for.body.549
                                        #   in Loop: Header=BB0_100 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -10632(%rbp)
	movsd	%xmm0, -10640(%rbp)
	movsd	%xmm0, -10648(%rbp)
	movsd	%xmm0, -10656(%rbp)
	movl	$0, -10668(%rbp)
.LBB0_102:                              # %for.cond.558
                                        #   Parent Loop BB0_95 Depth=1
                                        #     Parent Loop BB0_100 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_104 Depth 4
	movl	-10668(%rbp), %eax
	cmpl	-212(%rbp), %eax
	jge	.LBB0_109
# BB#103:                               # %for.body.561
                                        #   in Loop: Header=BB0_102 Depth=3
	movl	$0, -10672(%rbp)
.LBB0_104:                              # %for.cond.562
                                        #   Parent Loop BB0_95 Depth=1
                                        #     Parent Loop BB0_100 Depth=2
                                        #       Parent Loop BB0_102 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-10672(%rbp), %eax
	cmpl	-212(%rbp), %eax
	jge	.LBB0_107
# BB#105:                               # %for.body.565
                                        #   in Loop: Header=BB0_104 Depth=4
	movl	-10668(%rbp), %eax
	movl	-10672(%rbp), %ecx
	imull	-212(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rsi
	movsd	(%rsi,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -10696(%rbp)
	movq	-88(%rbp), %rdx
	movslq	-10612(%rbp), %rsi
	shlq	$3, %rsi
	addq	%rsi, %rdx
	movslq	-10668(%rbp), %rsi
	shlq	$3, %rsi
	addq	%rsi, %rdx
	movl	-10616(%rbp), %eax
	addl	-10672(%rbp), %eax
	imull	-204(%rbp), %eax
	movslq	%eax, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -10704(%rbp)
	movsd	-10696(%rbp), %xmm0     # xmm0 = mem[0],zero
	movq	-10704(%rbp), %rdx
	movswl	(%rdx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-10656(%rbp), %xmm0
	movsd	%xmm0, -10656(%rbp)
	movsd	-10696(%rbp), %xmm0     # xmm0 = mem[0],zero
	movq	-10704(%rbp), %rdx
	movswl	2(%rdx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-10648(%rbp), %xmm0
	movsd	%xmm0, -10648(%rbp)
	movsd	-10696(%rbp), %xmm0     # xmm0 = mem[0],zero
	movq	-10704(%rbp), %rdx
	movswl	4(%rdx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-10640(%rbp), %xmm0
	movsd	%xmm0, -10640(%rbp)
	movsd	-10696(%rbp), %xmm0     # xmm0 = mem[0],zero
	movq	-10704(%rbp), %rdx
	movswl	6(%rdx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-10632(%rbp), %xmm0
	movsd	%xmm0, -10632(%rbp)
# BB#106:                               # %for.inc.608
                                        #   in Loop: Header=BB0_104 Depth=4
	movl	-10672(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -10672(%rbp)
	jmp	.LBB0_104
.LBB0_107:                              # %for.end.610
                                        #   in Loop: Header=BB0_102 Depth=3
	jmp	.LBB0_108
.LBB0_108:                              # %for.inc.611
                                        #   in Loop: Header=BB0_102 Depth=3
	movl	-10668(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -10668(%rbp)
	jmp	.LBB0_102
.LBB0_109:                              # %for.end.613
                                        #   in Loop: Header=BB0_100 Depth=2
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %esi
	imull	-20(%rbp), %esi
	addl	%esi, %edx
	imull	%edx, %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rax
	movq	%rax, -10688(%rbp)
	movsd	-10656(%rbp), %xmm1     # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-10664(%rbp), %xmm0     # xmm0 = mem[0],zero
	movsd	%xmm0, -10800(%rbp)     # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-10800(%rbp), %xmm1     # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_3, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, -10676(%rbp)
	cmpl	$0, -10676(%rbp)
	jge	.LBB0_111
# BB#110:                               # %if.then.627
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	$0, -10676(%rbp)
	jmp	.LBB0_114
.LBB0_111:                              # %if.else.628
                                        #   in Loop: Header=BB0_100 Depth=2
	cmpl	$255, -10676(%rbp)
	jle	.LBB0_113
# BB#112:                               # %if.then.631
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	$255, -10676(%rbp)
.LBB0_113:                              # %if.end.632
                                        #   in Loop: Header=BB0_100 Depth=2
	jmp	.LBB0_114
.LBB0_114:                              # %if.end.633
                                        #   in Loop: Header=BB0_100 Depth=2
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	movl	-10676(%rbp), %eax
	movb	%al, %cl
	movq	-10688(%rbp), %rdx
	movb	%cl, (%rdx)
	movsd	-10648(%rbp), %xmm1     # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-10664(%rbp), %xmm0     # xmm0 = mem[0],zero
	movsd	%xmm0, -10808(%rbp)     # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-10808(%rbp), %xmm1     # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_3, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -10676(%rbp)
	cmpl	$0, -10676(%rbp)
	jge	.LBB0_116
# BB#115:                               # %if.then.644
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	$0, -10676(%rbp)
	jmp	.LBB0_119
.LBB0_116:                              # %if.else.645
                                        #   in Loop: Header=BB0_100 Depth=2
	cmpl	$255, -10676(%rbp)
	jle	.LBB0_118
# BB#117:                               # %if.then.648
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	$255, -10676(%rbp)
.LBB0_118:                              # %if.end.649
                                        #   in Loop: Header=BB0_100 Depth=2
	jmp	.LBB0_119
.LBB0_119:                              # %if.end.650
                                        #   in Loop: Header=BB0_100 Depth=2
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	movl	-10676(%rbp), %eax
	movb	%al, %cl
	movq	-10688(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movsd	-10640(%rbp), %xmm1     # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-10664(%rbp), %xmm0     # xmm0 = mem[0],zero
	movsd	%xmm0, -10816(%rbp)     # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-10816(%rbp), %xmm1     # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_3, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -10676(%rbp)
	cmpl	$0, -10676(%rbp)
	jge	.LBB0_121
# BB#120:                               # %if.then.661
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	$0, -10676(%rbp)
	jmp	.LBB0_124
.LBB0_121:                              # %if.else.662
                                        #   in Loop: Header=BB0_100 Depth=2
	cmpl	$255, -10676(%rbp)
	jle	.LBB0_123
# BB#122:                               # %if.then.665
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	$255, -10676(%rbp)
.LBB0_123:                              # %if.end.666
                                        #   in Loop: Header=BB0_100 Depth=2
	jmp	.LBB0_124
.LBB0_124:                              # %if.end.667
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	-10676(%rbp), %eax
	movb	%al, %cl
	movq	-10688(%rbp), %rdx
	movb	%cl, 2(%rdx)
	cmpl	$3, -28(%rbp)
	jle	.LBB0_131
# BB#125:                               # %if.then.672
                                        #   in Loop: Header=BB0_100 Depth=2
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	movsd	-10632(%rbp), %xmm1     # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-10664(%rbp), %xmm0     # xmm0 = mem[0],zero
	movsd	%xmm0, -10824(%rbp)     # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-10824(%rbp), %xmm1     # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_3, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -10676(%rbp)
	cmpl	$0, -10676(%rbp)
	jge	.LBB0_127
# BB#126:                               # %if.then.681
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	$0, -10676(%rbp)
	jmp	.LBB0_130
.LBB0_127:                              # %if.else.682
                                        #   in Loop: Header=BB0_100 Depth=2
	cmpl	$255, -10676(%rbp)
	jle	.LBB0_129
# BB#128:                               # %if.then.685
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	$255, -10676(%rbp)
.LBB0_129:                              # %if.end.686
                                        #   in Loop: Header=BB0_100 Depth=2
	jmp	.LBB0_130
.LBB0_130:                              # %if.end.687
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	-10676(%rbp), %eax
	movb	%al, %cl
	movq	-10688(%rbp), %rdx
	movb	%cl, 3(%rdx)
.LBB0_131:                              # %if.end.690
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	-216(%rbp), %eax
	addl	-10612(%rbp), %eax
	movl	%eax, -10612(%rbp)
# BB#132:                               # %for.inc.692
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_100
.LBB0_133:                              # %for.end.694
                                        #   in Loop: Header=BB0_95 Depth=1
	movl	-216(%rbp), %eax
	addl	-10616(%rbp), %eax
	movl	%eax, -10616(%rbp)
# BB#134:                               # %for.inc.696
                                        #   in Loop: Header=BB0_95 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_95
.LBB0_135:                              # %for.end.698
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$10832, %rsp            # imm = 0x2A50
	popq	%rbp
	retq
.Lfunc_end0:
	.size	render_rectangle, .Lfunc_end0-render_rectangle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	normalize_vector,@function
normalize_vector:                       # @normalize_vector
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
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB1_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_1
.LBB1_4:                                # %for.end
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	divsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB1_5:                                # %for.cond.1
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB1_8
# BB#6:                                 # %for.body.3
                                        #   in Loop: Header=BB1_5 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	mulsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, (%rcx,%rax,8)
# BB#7:                                 # %for.inc.6
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_5
.LBB1_8:                                # %for.end.8
	popq	%rbp
	retq
.Lfunc_end1:
	.size	normalize_vector, .Lfunc_end1-normalize_vector
	.cfi_endproc

	.type	render_rectangle.last_block,@object # @render_rectangle.last_block
	.local	render_rectangle.last_block
	.comm	render_rectangle.last_block,8,8
	.type	render_rectangle.last_block_size,@object # @render_rectangle.last_block_size
	.local	render_rectangle.last_block_size
	.comm	render_rectangle.last_block_size,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"render_rectangle: cannot malloc %d bytes.\n"
	.size	.L.str, 43


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
