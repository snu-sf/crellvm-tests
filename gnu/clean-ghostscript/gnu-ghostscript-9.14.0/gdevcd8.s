	.text
	.file	"gdevcd8.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4535124824762089472     # double 1.52587890625E-5
.LCPI0_1:
	.quad	4634766966517661696     # double 72
	.text
	.align	16, 0x90
	.type	cdj850_print_page,@function
cdj850_print_page:                      # @cdj850_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$2744, %rsp             # imm = 0xAB8
.Ltmp6:
	.cfi_def_cfa_offset 2800
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r12
	movq	%r12, 24(%rsp)          # 8-byte Spill
	movslq	18504(%r12), %rax
	movq	gammat(,%rax,8), %rsi
	leaq	32(%rsp), %rdi
	movl	$2048, %edx             # imm = 0x800
	callq	memcpy
	xorl	%eax, %eax
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edx
	imull	%edx, %edx
	imull	%ecx, %edx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, 800(%rsp,%rcx)
	leal	1(%rcx), %edx
	movl	%edx, %esi
	imull	%esi, %esi
	imull	%edx, %esi
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%esi, %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, 801(%rsp,%rcx)
	addq	$2, %rcx
	cmpq	$256, %rcx              # imm = 0x100
	jne	.LBB0_1
# BB#2:
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_3:                                # %for.body.10
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	imull	%edx, %edx
	imull	%eax, %edx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, 32(%rsp,%rax)
	leal	1(%rax), %edx
	movl	%edx, %esi
	imull	%esi, %esi
	imull	%edx, %esi
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%esi, %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, 33(%rsp,%rax)
	addq	$2, %rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB0_3
# BB#4:
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_5:                                # %for.body.26
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edx
	imull	%edx, %edx
	imull	%ecx, %edx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, 288(%rsp,%rcx)
	leal	1(%rcx), %edx
	movl	%edx, %esi
	imull	%esi, %esi
	imull	%edx, %esi
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%esi, %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, 289(%rsp,%rcx)
	addq	$2, %rcx
	cmpq	$256, %rcx              # imm = 0x100
	jne	.LBB0_5
	.align	16, 0x90
.LBB0_6:                                # %for.body.42
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	imull	%ecx, %ecx
	imull	%eax, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movb	%cl, 544(%rsp,%rax)
	leal	1(%rax), %ecx
	movl	%ecx, %edx
	imull	%edx, %edx
	imull	%ecx, %edx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movb	%cl, 545(%rsp,%rax)
	addq	$2, %rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB0_6
# BB#7:                                 # %vector.body
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 1056(%rsp)
	movupd	%xmm0, 1072(%rsp)
	movupd	%xmm0, 1088(%rsp)
	movupd	%xmm0, 1104(%rsp)
	movupd	%xmm0, 1120(%rsp)
	movupd	%xmm0, 1136(%rsp)
	movupd	%xmm0, 1152(%rsp)
	movupd	%xmm0, 1168(%rsp)
	movupd	%xmm0, 1184(%rsp)
	movupd	%xmm0, 1200(%rsp)
	movupd	%xmm0, 1216(%rsp)
	movupd	%xmm0, 1232(%rsp)
	movupd	%xmm0, 1248(%rsp)
	movupd	%xmm0, 1264(%rsp)
	movupd	%xmm0, 1280(%rsp)
	movupd	%xmm0, 1296(%rsp)
	movupd	%xmm0, 1312(%rsp)
	movupd	%xmm0, 1328(%rsp)
	movupd	%xmm0, 1344(%rsp)
	movupd	%xmm0, 1360(%rsp)
	movupd	%xmm0, 1376(%rsp)
	movupd	%xmm0, 1392(%rsp)
	movupd	%xmm0, 1408(%rsp)
	movupd	%xmm0, 1424(%rsp)
	movupd	%xmm0, 1440(%rsp)
	movupd	%xmm0, 1456(%rsp)
	movupd	%xmm0, 1472(%rsp)
	movupd	%xmm0, 1488(%rsp)
	movupd	%xmm0, 1504(%rsp)
	movupd	%xmm0, 1520(%rsp)
	movupd	%xmm0, 1536(%rsp)
	movupd	%xmm0, 1552(%rsp)
	movupd	%xmm0, 1568(%rsp)
	movupd	%xmm0, 1584(%rsp)
	movupd	%xmm0, 1600(%rsp)
	movupd	%xmm0, 1616(%rsp)
	movupd	%xmm0, 1632(%rsp)
	movupd	%xmm0, 1648(%rsp)
	movupd	%xmm0, 1664(%rsp)
	movupd	%xmm0, 1680(%rsp)
	movupd	%xmm0, 1696(%rsp)
	movupd	%xmm0, 1712(%rsp)
	movupd	%xmm0, 1728(%rsp)
	movupd	%xmm0, 1744(%rsp)
	movupd	%xmm0, 1760(%rsp)
	movupd	%xmm0, 1776(%rsp)
	movupd	%xmm0, 1792(%rsp)
	movupd	%xmm0, 1808(%rsp)
	movupd	%xmm0, 1824(%rsp)
	movupd	%xmm0, 1840(%rsp)
	movupd	%xmm0, 1856(%rsp)
	movupd	%xmm0, 1872(%rsp)
	movupd	%xmm0, 1888(%rsp)
	movupd	%xmm0, 1904(%rsp)
	movupd	%xmm0, 1920(%rsp)
	movupd	%xmm0, 1936(%rsp)
	movupd	%xmm0, 1952(%rsp)
	movupd	%xmm0, 1968(%rsp)
	movupd	%xmm0, 1984(%rsp)
	movupd	%xmm0, 2000(%rsp)
	movupd	%xmm0, 2016(%rsp)
	movupd	%xmm0, 2032(%rsp)
	movupd	%xmm0, 2048(%rsp)
	movupd	%xmm0, 2064(%rsp)
	movl	$2, %r14d
	cmpl	$0, 18496(%r12)
	jne	.LBB0_9
# BB#8:                                 # %select.mid
	movl	$1, %r14d
.LBB0_9:                                # %select.end
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	gx_device_raster
	movl	%eax, %ecx
	movl	%ecx, 2080(%rsp)
	cltd
	idivl	%r14d
	movl	%eax, 2084(%rsp)
	movslq	%ecx, %rax
	addq	$7, %rax
	shrq	$3, %rax
	movl	%eax, 2088(%rsp)
	movq	%r12, %rdi
	callq	gdev_pcl_paper_size
	movl	%eax, 2092(%rsp)
	movslq	100(%r12), %rdi
	movl	%edi, 2096(%rsp)
	movzwl	108(%r12), %eax
	movl	%eax, 2100(%rsp)
	leaq	(,%rdi,8), %r8
	movl	%r8d, 2104(%rsp)
	movl	%r8d, 2108(%rsp)
	movslq	2080(%rsp), %rax
	movq	%rdi, %rcx
	shlq	$6, %rcx
	leaq	-1(%rax,%rcx), %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, %rcx
	leaq	(,%rcx,8), %rbp
	movl	%ebp, 2112(%rsp)
	movq	%rcx, %rsi
	shlq	$4, %rsi
	movl	%esi, %eax
	cltd
	idivl	%r14d
	movl	%eax, 2116(%rsp)
	imull	%r8d, %ebp
	leal	(%rbp,%rdi,4), %edx
	leal	7(,%rdx,4), %r9d
	andl	$-8, %r9d
	movl	%r9d, 2128(%rsp)
	movl	%eax, %ebx
	shrl	$31, %ebx
	leal	(%rbx,%rax), %ebx
	sarl	%ebx
	imull	%r8d, %ebx
	leal	(%rbx,%rdi,4), %r8d
	leal	(,%r8,4), %edx
	movl	%edx, 2132(%rsp)
	movl	%ebp, 2120(%rsp)
	movl	%ebx, 2124(%rsp)
	shlq	$5, %rcx
	movl	%ecx, 2136(%rsp)
	imull	%edi, %esi
	leal	4(%rdi,%rdi), %edx
	imull	%eax, %edx
	addl	%ecx, %edx
	addl	%ebp, %edx
	addl	%esi, %edx
	addl	%ebx, %edx
	leal	(%rdx,%r8,4), %eax
	addl	%r9d, %eax
	movslq	%eax, %rsi
	shrq	$3, %rsi
	movl	%esi, 2156(%rsp)
	movq	24(%r12), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$8, %edx
	movl	$.L.str.27, %ecx
	callq	*88(%rdi)
	movq	%rax, 2688(%rsp)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB0_101
# BB#10:                                # %if.end
	movq	%rax, %rcx
	movl	$0, 2140(%rsp)
	movl	$0, 2144(%rsp)
	movl	$0, 2148(%rsp)
	movq	%rcx, 2184(%rsp)
	movq	%rcx, 2176(%rsp)
	movq	%rcx, 2168(%rsp)
	movslq	2120(%rsp), %rdx
	addq	%rdx, %rax
	movq	%rax, 2192(%rsp)
	movl	2100(%rsp), %r8d
	cmpl	$2, %r8d
	jl	.LBB0_14
# BB#11:                                # %if.end.i
	cmpl	$5, %r8d
	jl	.LBB0_12
# BB#13:                                # %if.then.12.i
	movslq	2096(%rsp), %rcx
	leaq	(%rax,%rcx,8), %rcx
	movq	%rcx, 2656(%rsp)
	leaq	(%rcx,%rdx,4), %rcx
	movq	%rcx, 2664(%rsp)
	movslq	2128(%rsp), %rcx
	addq	%rax, %rcx
	jmp	.LBB0_14
.LBB0_12:
	movq	%rax, %rcx
.LBB0_14:                               # %for.cond.preheader.i
	movslq	2096(%rsp), %r11
	testq	%r11, %r11
	jle	.LBB0_29
# BB#15:                                # %for.body.lr.ph.i
	movslq	2112(%rsp), %rdx
	leaq	-1(%r11), %r9
	xorl	%ebx, %ebx
	testb	$3, %r11b
	movq	%rcx, %rsi
	je	.LBB0_18
# BB#16:                                # %for.body.i.46.prol.preheader
	movl	%r11d, %eax
	andl	$3, %eax
	xorl	%ebx, %ebx
	movq	%rcx, %rsi
	.align	16, 0x90
.LBB0_17:                               # %for.body.i.46.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, 2296(%rsp,%rbx,8)
	movq	%rsi, 2232(%rsp,%rbx,8)
	addq	%rdx, %rsi
	incq	%rbx
	cmpq	%rbx, %rax
	jne	.LBB0_17
.LBB0_18:                               # %for.body.lr.ph.i.split
	movq	%rdx, %r10
	imulq	%r11, %r10
	cmpq	$3, %r9
	jb	.LBB0_21
# BB#19:                                # %for.body.lr.ph.i.split.split
	movq	%r11, %rax
	subq	%rbx, %rax
	leaq	2320(%rsp,%rbx,8), %rdi
	.align	16, 0x90
.LBB0_20:                               # %for.body.i.46
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, -24(%rdi)
	movq	%rsi, -88(%rdi)
	addq	%rdx, %rsi
	movq	%rsi, -16(%rdi)
	movq	%rsi, -80(%rdi)
	addq	%rdx, %rsi
	movq	%rsi, -8(%rdi)
	movq	%rsi, -72(%rdi)
	addq	%rdx, %rsi
	movq	%rsi, (%rdi)
	movq	%rsi, -64(%rdi)
	addq	$32, %rdi
	addq	%rdx, %rsi
	addq	$-4, %rax
	jne	.LBB0_20
.LBB0_21:                               # %for.body.39.lr.ph.i
	leaq	(%rcx,%r10), %rbx
	xorl	%ebp, %ebp
	testb	$3, %r11b
	movq	%rbx, %rsi
	je	.LBB0_25
# BB#22:                                # %for.body.39.i.prol.preheader
	leaq	1(%r11), %rax
	imulq	%rdx, %rax
	movl	%r11d, %esi
	andl	$3, %esi
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_23:                               # %for.body.39.i.prol
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rcx,%r10), %rdi
	movq	%rdi, 2264(%rsp,%rbp,8)
	leaq	(%rcx,%rax), %rdi
	movq	%rdi, 2328(%rsp,%rbp,8)
	incq	%rbp
	addq	%rdx, %rcx
	cmpq	%rbp, %rsi
	jne	.LBB0_23
# BB#24:
	addq	%r10, %rcx
	movq	%rcx, %rsi
.LBB0_25:                               # %for.body.39.lr.ph.i.split
	cmpq	$3, %r9
	jb	.LBB0_28
# BB#26:                                # %for.body.39.lr.ph.i.split.split
	movq	%r11, %rax
	subq	%rbp, %rax
	leaq	2352(%rsp,%rbp,8), %rcx
	.align	16, 0x90
.LBB0_27:                               # %for.body.39.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, -88(%rcx)
	addq	%rdx, %rsi
	movq	%rsi, -24(%rcx)
	movq	%rsi, -80(%rcx)
	addq	%rdx, %rsi
	movq	%rsi, -16(%rcx)
	movq	%rsi, -72(%rcx)
	addq	%rdx, %rsi
	movq	%rsi, -8(%rcx)
	movq	%rsi, -64(%rcx)
	addq	%rdx, %rsi
	movq	%rsi, (%rcx)
	addq	$32, %rcx
	addq	$-4, %rax
	jne	.LBB0_27
.LBB0_28:                               # %for.end.56.i.loopexit
	addq	%r10, %rbx
	movq	%rbx, %rcx
.LBB0_29:                               # %for.end.56.i
	movq	%rcx, 2616(%rsp)
	movslq	2136(%rsp), %rbp
	addq	%rcx, %rbp
	movq	%rbp, 2216(%rsp)
	movq	%rbp, 2208(%rsp)
	movq	%rbp, 2200(%rsp)
	movslq	2124(%rsp), %rcx
	leaq	(%rbp,%rcx), %rax
	movq	%rax, 2224(%rsp)
	cmpl	$2, %r8d
	jl	.LBB0_33
# BB#30:                                # %if.end.74.i
	cmpl	$5, %r8d
	jl	.LBB0_31
# BB#32:                                # %if.then.77.i
	leaq	(%rax,%r11,8), %rdx
	movq	%rdx, 2672(%rsp)
	leaq	(%rdx,%rcx,4), %rcx
	movq	%rcx, 2680(%rsp)
	movslq	2132(%rsp), %rbp
	addq	%rax, %rbp
	jmp	.LBB0_33
.LBB0_31:
	movq	%rax, %rbp
.LBB0_33:                               # %for.cond.93.preheader.i
	testl	%r11d, %r11d
	jle	.LBB0_63
# BB#34:                                # %for.body.96.lr.ph.i
	movl	2116(%rsp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movslq	%ecx, %rcx
	leaq	-1(%r11), %r8
	xorl	%edx, %edx
	testb	$3, %r11b
	movq	%rbp, %rsi
	je	.LBB0_37
# BB#35:                                # %for.body.96.i.prol.preheader
	movl	%r11d, %eax
	andl	$3, %eax
	xorl	%edx, %edx
	movq	%rbp, %rsi
	.align	16, 0x90
.LBB0_36:                               # %for.body.96.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, 2488(%rsp,%rdx,8)
	movq	%rsi, 2360(%rsp,%rdx,8)
	addq	%rcx, %rsi
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.LBB0_36
.LBB0_37:                               # %for.body.96.lr.ph.i.split
	movq	%r11, %r9
	imulq	%rcx, %r9
	cmpq	$3, %r8
	jb	.LBB0_40
# BB#38:                                # %for.body.96.lr.ph.i.split.split
	movq	%r11, %rdi
	subq	%rdx, %rdi
	leaq	2512(%rsp,%rdx,8), %rdx
	.align	16, 0x90
.LBB0_39:                               # %for.body.96.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, -24(%rdx)
	movq	%rsi, -152(%rdx)
	addq	%rcx, %rsi
	movq	%rsi, -16(%rdx)
	movq	%rsi, -144(%rdx)
	addq	%rcx, %rsi
	movq	%rsi, -8(%rdx)
	movq	%rsi, -136(%rdx)
	addq	%rcx, %rsi
	movq	%rsi, (%rdx)
	movq	%rsi, -128(%rdx)
	addq	$32, %rdx
	addq	%rcx, %rsi
	addq	$-4, %rdi
	jne	.LBB0_39
.LBB0_40:                               # %for.body.112.lr.ph.i
	leaq	(%rbp,%r9), %rbx
	xorl	%edx, %edx
	testb	$3, %r11b
	movq	%rbx, %rsi
	je	.LBB0_44
# BB#41:                                # %for.body.112.i.prol.preheader
	leaq	1(%r11), %rsi
	imulq	%rcx, %rsi
	movl	%r11d, %edi
	andl	$3, %edi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_42:                               # %for.body.112.i.prol
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rbp,%r9), %rax
	movq	%rax, 2424(%rsp,%rdx,8)
	leaq	(%rbp,%rsi), %rax
	movq	%rax, 2552(%rsp,%rdx,8)
	incq	%rdx
	addq	%rcx, %rbp
	cmpq	%rdx, %rdi
	jne	.LBB0_42
# BB#43:
	addq	%r9, %rbp
	movq	%rbp, %rsi
.LBB0_44:                               # %for.body.112.lr.ph.i.split
	cmpq	$3, %r8
	jb	.LBB0_47
# BB#45:                                # %for.body.112.lr.ph.i.split.split
	movq	%r11, %rdi
	subq	%rdx, %rdi
	leaq	2576(%rsp,%rdx,8), %rdx
	.align	16, 0x90
.LBB0_46:                               # %for.body.112.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, -152(%rdx)
	addq	%rcx, %rsi
	movq	%rsi, -24(%rdx)
	movq	%rsi, -144(%rdx)
	addq	%rcx, %rsi
	movq	%rsi, -16(%rdx)
	movq	%rsi, -136(%rdx)
	addq	%rcx, %rsi
	movq	%rsi, -8(%rdx)
	movq	%rsi, -128(%rdx)
	addq	%rcx, %rsi
	movq	%rsi, (%rdx)
	addq	$32, %rdx
	addq	$-4, %rdi
	jne	.LBB0_46
.LBB0_47:                               # %for.body.135.lr.ph.i
	addq	%r9, %rbx
	xorl	%edi, %edi
	testb	$1, %r11b
	movq	%rbx, %rsi
	je	.LBB0_49
# BB#48:                                # %for.body.135.i.prol
	movq	%rbx, 2520(%rsp)
	movq	%rbx, 2392(%rsp)
	leaq	(%rbx,%rcx), %rsi
	movl	$1, %edi
.LBB0_49:                               # %for.body.135.lr.ph.i.split
	cmpl	$1, %r11d
	je	.LBB0_52
# BB#50:                                # %for.body.135.lr.ph.i.split.split
	movq	%r11, %rdx
	subq	%rdi, %rdx
	leaq	2528(%rsp,%rdi,8), %rdi
	.align	16, 0x90
.LBB0_51:                               # %for.body.135.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, -8(%rdi)
	movq	%rsi, -136(%rdi)
	addq	%rcx, %rsi
	movq	%rsi, (%rdi)
	movq	%rsi, -128(%rdi)
	addq	%rcx, %rsi
	addq	$16, %rdi
	addq	$-2, %rdx
	jne	.LBB0_51
.LBB0_52:                               # %for.body.155.lr.ph.i
	addq	%r9, %rbx
	xorl	%edi, %edi
	testb	$1, %r11b
	movq	%rbx, %rdx
	je	.LBB0_54
# BB#53:                                # %for.body.155.i.prol
	movq	%rbx, 2456(%rsp)
	leaq	(%rbx,%rcx), %rdx
	movq	%rdx, 2584(%rsp)
	movl	$1, %edi
.LBB0_54:                               # %for.body.155.lr.ph.i.split
	cmpl	$1, %r11d
	je	.LBB0_57
# BB#55:                                # %for.body.155.lr.ph.i.split.split
	movq	%r11, %rsi
	subq	%rdi, %rsi
	leaq	2592(%rsp,%rdi,8), %rdi
	leaq	(%rcx,%rcx), %rbp
	.align	16, 0x90
.LBB0_56:                               # %for.body.155.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, -136(%rdi)
	leaq	(%rdx,%rcx), %rax
	movq	%rax, -8(%rdi)
	movq	%rax, -128(%rdi)
	addq	%rcx, %rax
	addq	%rbp, %rdx
	movq	%rdx, (%rdi)
	addq	$16, %rdi
	addq	$-2, %rsi
	movq	%rax, %rdx
	jne	.LBB0_56
.LBB0_57:                               # %for.body.180.lr.ph.i
	addq	%r9, %rbx
	xorl	%eax, %eax
	testb	$3, %r11b
	je	.LBB0_60
# BB#58:                                # %for.body.180.i.prol.preheader
	movl	%r11d, %edx
	andl	$3, %edx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_59:                               # %for.body.180.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, 2624(%rsp,%rax,8)
	addq	%rcx, %rbx
	incq	%rax
	cmpq	%rax, %rdx
	jne	.LBB0_59
.LBB0_60:                               # %for.body.180.lr.ph.i.split
	cmpq	$3, %r8
	jb	.LBB0_63
# BB#61:                                # %for.body.180.lr.ph.i.split.split
	subq	%rax, %r11
	leaq	2648(%rsp,%rax,8), %rax
	.align	16, 0x90
.LBB0_62:                               # %for.body.180.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, -24(%rax)
	addq	%rcx, %rbx
	movq	%rbx, -16(%rax)
	addq	%rcx, %rbx
	movq	%rbx, -8(%rax)
	addq	%rcx, %rbx
	movq	%rbx, (%rax)
	addq	$32, %rax
	addq	%rcx, %rbx
	addq	$-4, %r11
	jne	.LBB0_62
.LBB0_63:                               # %init_data_structure.exit
	movq	2688(%rsp), %rdi
	movl	2156(%rsp), %edx
	shlq	$3, %rdx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	callq	memset
	movl	2092(%rsp), %esi
	movq	%r12, %rdi
	movq	(%rsp), %rdx            # 8-byte Reload
	callq	*18536(%r12)
	subl	832(%r12), %ebp
	imull	2104(%rsp), %ebp
	movq	$-1, %rax
	movb	%bpl, %cl
	shlq	%cl, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	cvtsi2sdl	836(%r12), %xmm4
	movss	920(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movss	888(%r12), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	912(%r12), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	mulsd	%xmm3, %xmm0
	subsd	%xmm0, %xmm4
	movsd	%xmm4, 16(%rsp)         # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 2720(%rsp)
	cmpl	$5, 2100(%rsp)
	jl	.LBB0_69
# BB#64:                                # %if.then.i.i
	movq	2672(%rsp), %r14
	cmpl	$0, 2120(%rsp)
	jle	.LBB0_67
# BB#65:                                # %for.body.lr.ph.i.i
	movq	2656(%rsp), %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_66:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	callq	rand
	shll	$19, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$6, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-67108864, %ecx        # imm = 0xFFFFFFFFFC000000
	negl	%ecx
	leal	-33554432(%rax,%rcx), %eax
	movl	%eax, (%rbp,%rbx,4)
	incq	%rbx
	cmpl	2120(%rsp), %ebx
	jl	.LBB0_66
.LBB0_67:                               # %for.cond.3.preheader.i.i
	xorl	%ebp, %ebp
	cmpl	$0, 2124(%rsp)
	jle	.LBB0_69
	.align	16, 0x90
.LBB0_68:                               # %for.body.5.i.i
                                        # =>This Inner Loop Header: Depth=1
	callq	rand
	shll	$19, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$7, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-33554432, %ecx        # imm = 0xFFFFFFFFFE000000
	negl	%ecx
	leal	-16777216(%rax,%rcx), %eax
	movl	%eax, (%r14,%rbp,4)
	incq	%rbp
	cmpl	2124(%rsp), %ebp
	jl	.LBB0_68
.LBB0_69:                               # %init_error_buffer.exit.i
	cvttsd2si	16(%rsp), %r15d # 8-byte Folded Reload
	movl	$0, 2152(%rsp)
	movslq	2140(%rsp), %rax
	movq	2168(%rsp,%rax,8), %rbp
	movslq	2088(%rsp), %r14
	leaq	(%rbp,%r14,8), %rbx
	movl	2080(%rsp), %ecx
	xorl	%esi, %esi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	gdev_prn_copy_scan_lines
	cmpl	$0, 2140(%rsp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 2140(%rsp)
	movl	$0, 2148(%rsp)
	movq	8(%rsp), %rax           # 8-byte Reload
	andq	%rax, -8(%rbp,%r14,8)
	.align	16, 0x90
.LBB0_70:                               # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %r13
	subq	%rbp, %r13
	jbe	.LBB0_72
# BB#71:                                # %land.rhs.i.i
                                        #   in Loop: Header=BB0_70 Depth=1
	cmpq	$0, -8(%rbx)
	leaq	-8(%rbx), %rbx
	je	.LBB0_70
.LBB0_72:                               # %GetScanLine.exit.i
	testl	%r15d, %r15d
	jle	.LBB0_100
# BB#73:                                # %while.cond.13.preheader.lr.ph.i
	shrq	$3, %r13
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB0_74:                               # %while.cond.13.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_77 Depth 2
                                        #       Child Loop BB0_78 Depth 3
                                        #     Child Loop BB0_91 Depth 2
                                        #       Child Loop BB0_92 Depth 3
	cmpl	%r15d, %r14d
	setl	%cl
	xorl	%eax, %eax
	testl	%r13d, %r13d
	jne	.LBB0_83
# BB#75:                                # %while.cond.13.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=1
	cmpl	%r15d, %r14d
	jge	.LBB0_83
# BB#76:                                # %while.body.18.lr.ph.i
                                        #   in Loop: Header=BB0_74 Depth=1
	movl	2140(%rsp), %edx
	.align	16, 0x90
.LBB0_77:                               # %while.body.18.i
                                        #   Parent Loop BB0_74 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_78 Depth 3
	incl	%eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movslq	%edx, %rax
	movq	2168(%rsp,%rax,8), %r12
	movslq	2088(%rsp), %rbx
	leaq	(%r12,%rbx,8), %rbp
	incl	%r14d
	movl	2080(%rsp), %ecx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	%r14d, %esi
	movq	%r12, %rdx
	callq	gdev_prn_copy_scan_lines
	cmpl	$0, 2140(%rsp)
	sete	%al
	movzbl	%al, %edx
	movl	%edx, 2140(%rsp)
	movl	%r14d, %ecx
	andl	$1, %ecx
	movl	%ecx, 2148(%rsp)
	movq	8(%rsp), %rcx           # 8-byte Reload
	andq	%rcx, -8(%r12,%rbx,8)
	.align	16, 0x90
.LBB0_78:                               # %while.cond.i.76.i
                                        #   Parent Loop BB0_74 Depth=1
                                        #     Parent Loop BB0_77 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbp, %r13
	subq	%r12, %r13
	jbe	.LBB0_80
# BB#79:                                # %land.rhs.i.79.i
                                        #   in Loop: Header=BB0_78 Depth=3
	cmpq	$0, -8(%rbp)
	leaq	-8(%rbp), %rbp
	je	.LBB0_78
.LBB0_80:                               # %GetScanLine.exit85.i
                                        #   in Loop: Header=BB0_77 Depth=2
	shrq	$3, %r13
	cmpl	%r15d, %r14d
	setl	%cl
	jge	.LBB0_81
# BB#82:                                # %GetScanLine.exit85.i
                                        #   in Loop: Header=BB0_77 Depth=2
	testl	%r13d, %r13d
	movl	16(%rsp), %eax          # 4-byte Reload
	je	.LBB0_77
	jmp	.LBB0_83
	.align	16, 0x90
.LBB0_81:                               #   in Loop: Header=BB0_74 Depth=1
	movl	16(%rsp), %eax          # 4-byte Reload
.LBB0_83:                               # %while.end.i
                                        #   in Loop: Header=BB0_74 Depth=1
	testb	%cl, %cl
	movq	24(%rsp), %r12          # 8-byte Reload
	je	.LBB0_100
# BB#84:                                # %if.end.i.67
                                        #   in Loop: Header=BB0_74 Depth=1
	testl	%eax, %eax
	jle	.LBB0_86
# BB#85:                                # %if.then.24.i
                                        #   in Loop: Header=BB0_74 Depth=1
	movl	18500(%r12), %ecx
	incl	%ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	$.L.str.29, %esi
	xorl	%eax, %eax
	movq	(%rsp), %rdi            # 8-byte Reload
	movl	%ecx, %edx
	callq	fprintf
	movq	2232(%rsp), %rdi
	movl	2112(%rsp), %eax
	addl	%eax, %eax
	movslq	2096(%rsp), %rcx
	movslq	%eax, %rdx
	imulq	%rcx, %rdx
	xorl	%esi, %esi
	callq	memset
	movq	2360(%rsp), %rdi
	movl	2116(%rsp), %eax
	addl	%eax, %eax
	movslq	2096(%rsp), %rcx
	movslq	%eax, %rdx
	imulq	%rcx, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB0_86:                               # %if.end.41.i
                                        #   in Loop: Header=BB0_74 Depth=1
	testb	$1, %r14b
	je	.LBB0_89
# BB#87:                                # %if.end.41.i
                                        #   in Loop: Header=BB0_74 Depth=1
	movl	18500(%r12), %eax
	testl	%eax, %eax
	je	.LBB0_89
# BB#88:                                # %if.then.46.i
                                        #   in Loop: Header=BB0_74 Depth=1
	movl	$.L.str.30, %esi
	xorl	%eax, %eax
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	fprintf
.LBB0_89:                               # %while.cond.49.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=1
	testl	%r13d, %r13d
	je	.LBB0_96
# BB#90:                                # %while.cond.49.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=1
	cmpl	%r15d, %r14d
	jge	.LBB0_96
	.align	16, 0x90
.LBB0_91:                               # %while.body.56.i
                                        #   Parent Loop BB0_74 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_92 Depth 3
	movl	%r15d, %r12d
	movl	$0, 2164(%rsp)
	movq	24(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdi
	leaq	2168(%rsp), %rsi
	leaq	2080(%rsp), %rdx
	leaq	2720(%rsp), %rcx
	leaq	32(%rsp), %r8
	movq	(%rsp), %r9             # 8-byte Reload
	callq	*18544(%r13)
	movslq	2140(%rsp), %rax
	movq	2168(%rsp,%rax,8), %rbp
	movslq	2088(%rsp), %r15
	leaq	(%rbp,%r15,8), %rbx
	incl	%r14d
	movl	2080(%rsp), %ecx
	movq	%r13, %rdi
	movl	%r14d, %esi
	movq	%rbp, %rdx
	callq	gdev_prn_copy_scan_lines
	cmpl	$0, 2140(%rsp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 2140(%rsp)
	movl	%r14d, %eax
	andl	$1, %eax
	movl	%eax, 2148(%rsp)
	movq	8(%rsp), %rax           # 8-byte Reload
	andq	%rax, -8(%rbp,%r15,8)
	.align	16, 0x90
.LBB0_92:                               # %while.cond.i.103.i
                                        #   Parent Loop BB0_74 Depth=1
                                        #     Parent Loop BB0_91 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbx, %r13
	subq	%rbp, %r13
	jbe	.LBB0_94
# BB#93:                                # %land.rhs.i.106.i
                                        #   in Loop: Header=BB0_92 Depth=3
	cmpq	$0, -8(%rbx)
	leaq	-8(%rbx), %rbx
	je	.LBB0_92
.LBB0_94:                               # %GetScanLine.exit112.i
                                        #   in Loop: Header=BB0_91 Depth=2
	shrq	$3, %r13
	movl	%r12d, %r15d
	cmpl	%r15d, %r14d
	jge	.LBB0_96
# BB#95:                                # %GetScanLine.exit112.i
                                        #   in Loop: Header=BB0_91 Depth=2
	testl	%r13d, %r13d
	jne	.LBB0_91
.LBB0_96:                               # %while.end.58.i
                                        #   in Loop: Header=BB0_74 Depth=1
	testb	$1, %r14b
	movq	24(%rsp), %r12          # 8-byte Reload
	je	.LBB0_99
# BB#97:                                # %while.end.58.i
                                        #   in Loop: Header=BB0_74 Depth=1
	movl	18500(%r12), %eax
	testl	%eax, %eax
	je	.LBB0_99
# BB#98:                                # %if.then.65.i
                                        #   in Loop: Header=BB0_74 Depth=1
	movq	%r12, %rdi
	leaq	2168(%rsp), %rsi
	leaq	2080(%rsp), %rdx
	leaq	2720(%rsp), %rcx
	leaq	32(%rsp), %r8
	movq	(%rsp), %r9             # 8-byte Reload
	callq	*18544(%r12)
.LBB0_99:                               # %while.cond.backedge.i
                                        #   in Loop: Header=BB0_74 Depth=1
	cmpl	%r15d, %r14d
	jl	.LBB0_74
.LBB0_100:                              # %send_scan_lines.exit
	movq	%r12, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	*18552(%r12)
	movq	24(%r12), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movq	2688(%rsp), %rsi
	movl	$.L.str.28, %edx
	callq	*24(%rdi)
	xorl	%ecx, %ecx
.LBB0_101:                              # %cleanup
	movl	%ecx, %eax
	addq	$2744, %rsp             # imm = 0xAB8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cdj850_print_page, .Lfunc_end0-cdj850_print_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4634766966517661696     # double 72
.LCPI1_1:
	.quad	-4637446608295947141    # double -0.040000000000000001
.LCPI1_2:
	.quad	4648488871632306176     # double 600
	.text
	.align	16, 0x90
	.type	cdj850_start_raster_mode,@function
cdj850_start_raster_mode:               # @cdj850_start_raster_mode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 64
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movups	hp850_cmyk_init+9(%rip), %xmm0
	movups	%xmm0, 9(%rsp)
	movups	hp850_cmyk_init(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	movb	18492(%rbx), %al
	movb	%al, 13(%rsp)
	movb	%al, 19(%rsp)
	movb	%al, 25(%rsp)
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm0, %eax
	cmpl	$600, %eax              # imm = 0x258
	sete	%al
	movb	$88, %sil
	movb	$88, %cl
	je	.LBB1_2
# BB#1:                                 # %entry
	movb	$44, %cl
.LBB1_2:                                # %entry
	incb	%al
	movb	%al, 2(%rsp)
	movb	%cl, 3(%rsp)
	movss	888(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvttss2si	%xmm1, %eax
	cmpl	$600, %eax              # imm = 0x258
	sete	%al
	movb	$88, %cl
	je	.LBB1_4
# BB#3:                                 # %entry
	movb	$44, %cl
.LBB1_4:                                # %entry
	incb	%al
	movb	%al, 4(%rsp)
	movb	%cl, 5(%rsp)
	movl	18496(%rbx), %eax
	movl	18500(%rbx), %ecx
	incl	%eax
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm0
	cvttss2si	%xmm0, %edx
	incl	%ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	divss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	cmpl	$600, %edx              # imm = 0x258
	sete	%cl
	movb	$88, %dl
	je	.LBB1_6
# BB#5:                                 # %entry
	movb	$44, %dl
.LBB1_6:                                # %entry
	incb	%cl
	movb	%cl, 8(%rsp)
	movb	%dl, 9(%rsp)
	cmpl	$600, %eax              # imm = 0x258
	sete	%al
	je	.LBB1_8
# BB#7:                                 # %entry
	movb	$44, %sil
.LBB1_8:                                # %entry
	incb	%al
	movb	%al, 10(%rsp)
	movb	%sil, 11(%rsp)
	movb	%cl, 14(%rsp)
	movb	%dl, 15(%rsp)
	movb	%al, 16(%rsp)
	movb	%sil, 17(%rsp)
	movb	%cl, 20(%rsp)
	movb	%dl, 21(%rsp)
	movb	%al, 22(%rsp)
	movb	%sil, 23(%rsp)
	movl	$.L.str.48, %edi
	movq	%r14, %rsi
	callq	fputs
	movl	$.L.str.49, %edi
	movq	%r14, %rsi
	callq	fputs
	movl	$.L.str.50, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	fprintf
	movl	18484(%rbx), %edx
	movl	$.L.str.51, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	18488(%rbx), %edx
	movl	$.L.str.52, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movss	920(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	.LCPI1_0(%rip), %xmm0
	addsd	.LCPI1_1(%rip), %xmm0
	mulsd	.LCPI1_2(%rip), %xmm0
	cvttsd2si	%xmm0, %edx
	movl	$.L.str.53, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.54, %esi
	movl	$26, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	leaq	(%rsp), %rdi
	movl	$1, %esi
	movl	$26, %edx
	movq	%r14, %rcx
	callq	fwrite
	movl	$.L.str.34, %edi
	movq	%r14, %rsi
	callq	fputs
	movl	18508(%rbx), %edx
	testl	%edx, %edx
	je	.LBB1_10
# BB#9:                                 # %if.then
	movl	$.L.str.55, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB1_10:                               # %if.end
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	cdj850_start_raster_mode, .Lfunc_end1-cdj850_start_raster_mode
	.cfi_endproc

	.align	16, 0x90
	.type	cdj850_print_non_blank_lines,@function
cdj850_print_non_blank_lines:           # @cdj850_print_non_blank_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp23:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp24:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp26:
	.cfi_def_cfa_offset 112
.Ltmp27:
	.cfi_offset %rbx, -56
.Ltmp28:
	.cfi_offset %r12, -48
.Ltmp29:
	.cfi_offset %r13, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%r9, 48(%rsp)           # 8-byte Spill
	movq	%rcx, %r13
	movq	%r13, 8(%rsp)           # 8-byte Spill
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movslq	60(%rbp), %rax
	leaq	2(%rax), %rcx
	shlq	$5, %rcx
	movq	88(%rbx,%rcx), %r15
	movq	16(%rbx,%rax,8), %r14
	movq	488(%rbx,%rax,8), %r12
	movl	40(%rbp), %edi
	movq	(%rbx,%rax,8), %rsi
	leaq	768(%r8), %rdx
	movq	%rsi, (%rsp)
	leaq	256(%r8), %rax
	leaq	512(%r8), %r9
	movq	%r8, %rcx
	movq	%rax, %r8
	callq	do_gcr
	movl	%eax, 84(%rbp)
	movl	60(%rbp), %edi
	movl	16(%rbp), %r8d
	movl	32(%rbp), %esi
	movq	%r14, (%rsp)
	movq	%r13, %rdx
	movq	%r15, %rcx
	movq	48(%rsp), %r15          # 8-byte Reload
	movq	%r12, %r9
	callq	FSDlinebw
	movl	32(%rbp), %edi
	movslq	60(%rbp), %rax
	movq	%rbp, %r12
	movl	$1, %ecx
	subq	%rax, %rcx
	shlq	$5, %rax
	movq	88(%rbx,%rax), %rsi
	shlq	$5, %rcx
	movq	88(%rbx,%rcx), %rdx
	movq	448(%rbx), %r13
	movq	%rbx, %r14
	movq	%r13, %rcx
	callq	gdev_pcl_mode9compress
	movl	%eax, %ebp
	movl	$.L.str.45, %esi
	movl	$118, %ecx
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	fprintf
	testl	%ebp, %ebp
	jle	.LBB2_2
# BB#1:                                 # %if.then.i
	movslq	%ebp, %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	movq	%r15, %rcx
	callq	fwrite
.LBB2_2:                                # %print_c9plane.exit
	movq	16(%rsp), %rbx          # 8-byte Reload
	movslq	18500(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_4
# BB#3:                                 # %lor.lhs.false
	cmpl	$0, 68(%r12)
	je	.LBB2_13
.LBB2_4:                                # %if.then
	movslq	18496(%rbx), %r8
	shlq	$4, %r8
	movq	%r12, %r15
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movl	40(%r15), %edi
	movslq	60(%r15), %rcx
	testq	%rcx, %rcx
	sete	%dl
	movq	%r14, %rbp
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	(%rbp,%rcx,8), %rsi
	movzbl	%dl, %ecx
	movq	(%rbp,%rcx,8), %rdx
	movslq	64(%r15), %rcx
	movq	32(%rbp,%rcx,8), %rcx
	callq	*rescale_color_plane(%r8,%rax,8)
	cltd
	idivl	24(%r15)
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	16(%r15), %ecx
	movl	60(%r15), %edi
	movl	64(%r15), %esi
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	%rdx, (%rsp)
	movl	%eax, %edx
	movq	%rbp, %r8
	movq	%rbx, %r9
	callq	do_floyd_steinberg
	movl	16(%r15), %eax
	addl	$-2, %eax
	js	.LBB2_12
# BB#5:                                 # %for.body.lr.ph
	movslq	%eax, %r15
	.align	16, 0x90
.LBB2_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, 18492(%rbx)
	movq	%rbx, %r14
	setg	%al
	movzbl	%al, %eax
	movq	cdj850_print_non_blank_lines.plane_code(,%rax,8), %rax
	movq	40(%rsp), %rcx          # 8-byte Reload
	movslq	64(%rcx), %rcx
	movl	$1, %edx
	subq	%rcx, %rdx
	shlq	$6, %rcx
	movq	32(%rsp), %rdi          # 8-byte Reload
	leaq	(%rcx,%rdi), %rcx
	movq	192(%rcx,%r15,8), %rsi
	shlq	$6, %rdx
	leaq	(%rdx,%rdi), %rcx
	movq	192(%rcx,%r15,8), %rdx
	movq	448(%rdi), %r13
	movsbl	(%rax,%r15), %r12d
	movl	28(%rsp), %edi          # 4-byte Reload
	movq	%r13, %rcx
	callq	gdev_pcl_mode9compress
	movl	%eax, %ebx
	movl	$.L.str.45, %esi
	xorl	%eax, %eax
	movq	48(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movl	%ebx, %edx
	movl	%r12d, %ecx
	callq	fprintf
	testl	%ebx, %ebx
	jle	.LBB2_8
# BB#7:                                 # %if.then.i.78
                                        #   in Loop: Header=BB2_6 Depth=1
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	movq	%rbp, %rcx
	callq	fwrite
.LBB2_8:                                # %print_c9plane.exit79
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	%r14, %rbx
	cmpl	$3, 18492(%rbx)
	jl	.LBB2_11
# BB#9:                                 # %if.then.79
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movslq	64(%rax), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	shlq	$6, %rax
	movq	32(%rsp), %rdi          # 8-byte Reload
	leaq	(%rax,%rdi), %rax
	movq	224(%rax,%r15,8), %rsi
	shlq	$6, %rcx
	leaq	(%rcx,%rdi), %rax
	movq	224(%rax,%r15,8), %rdx
	movq	448(%rdi), %rbp
	movl	28(%rsp), %edi          # 4-byte Reload
	movq	%rbp, %rcx
	callq	gdev_pcl_mode9compress
	movl	%eax, %r12d
	movsbl	.L.str.43(%r15), %ecx
	movl	$.L.str.45, %esi
	xorl	%eax, %eax
	movq	48(%rsp), %rdi          # 8-byte Reload
	movl	%r12d, %edx
	callq	fprintf
	testl	%r12d, %r12d
	jle	.LBB2_11
# BB#10:                                # %if.then.i.86
                                        #   in Loop: Header=BB2_6 Depth=1
	movslq	%r12d, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	48(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
.LBB2_11:                               # %for.inc
                                        #   in Loop: Header=BB2_6 Depth=1
	testq	%r15, %r15
	leaq	-1(%r15), %r15
	jg	.LBB2_6
.LBB2_12:                               # %for.end
	movl	$1, %eax
	movq	40(%rsp), %r13          # 8-byte Reload
	subl	64(%r13), %eax
	movl	%eax, 64(%r13)
.LBB2_13:                               # %if.end.101
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	cdj850_print_non_blank_lines, .Lfunc_end2-cdj850_print_non_blank_lines
	.cfi_endproc

	.align	16, 0x90
	.type	cdj850_terminate_page,@function
cdj850_terminate_page:                  # @cdj850_terminate_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	$.L.str.19, %edi
	callq	fputs
	movl	$.L.str.20, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.21, %edi
	movq	%rbx, %rsi
	popq	%rbx
	jmp	fputs                   # TAILCALL
.Lfunc_end3:
	.size	cdj850_terminate_page, .Lfunc_end3-cdj850_terminate_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4634766966517661696     # double 72
.LCPI4_1:
	.quad	-4637446608295947141    # double -0.040000000000000001
.LCPI4_2:
	.quad	4648488871632306176     # double 600
	.text
	.align	16, 0x90
	.type	cdj880_start_raster_mode,@function
cdj880_start_raster_mode:               # @cdj880_start_raster_mode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp38:
	.cfi_def_cfa_offset 64
.Ltmp39:
	.cfi_offset %rbx, -32
.Ltmp40:
	.cfi_offset %r14, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %ebp
	movq	%rdi, %r14
	movups	hp850_cmyk_init+9(%rip), %xmm0
	movups	%xmm0, 9(%rsp)
	movups	hp850_cmyk_init(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	movb	18492(%r14), %al
	movb	%al, 13(%rsp)
	movb	%al, 19(%rsp)
	movb	%al, 25(%rsp)
	movss	884(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm0, %eax
	cmpl	$600, %eax              # imm = 0x258
	sete	%al
	movb	$88, %sil
	movb	$88, %cl
	je	.LBB4_2
# BB#1:                                 # %entry
	movb	$44, %cl
.LBB4_2:                                # %entry
	incb	%al
	movb	%al, 2(%rsp)
	movb	%cl, 3(%rsp)
	movss	888(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvttss2si	%xmm1, %eax
	cmpl	$600, %eax              # imm = 0x258
	sete	%al
	movb	$88, %cl
	je	.LBB4_4
# BB#3:                                 # %entry
	movb	$44, %cl
.LBB4_4:                                # %entry
	incb	%al
	movb	%al, 4(%rsp)
	movb	%cl, 5(%rsp)
	movl	18496(%r14), %eax
	movl	18500(%r14), %ecx
	incl	%eax
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm0
	cvttss2si	%xmm0, %edx
	incl	%ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	divss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	cmpl	$600, %edx              # imm = 0x258
	sete	%cl
	movb	$88, %dl
	je	.LBB4_6
# BB#5:                                 # %entry
	movb	$44, %dl
.LBB4_6:                                # %entry
	incb	%cl
	movb	%cl, 8(%rsp)
	movb	%dl, 9(%rsp)
	cmpl	$600, %eax              # imm = 0x258
	sete	%al
	je	.LBB4_8
# BB#7:                                 # %entry
	movb	$44, %sil
.LBB4_8:                                # %entry
	incb	%al
	movb	%al, 10(%rsp)
	movb	%sil, 11(%rsp)
	movb	%cl, 14(%rsp)
	movb	%dl, 15(%rsp)
	movb	%al, 16(%rsp)
	movb	%sil, 17(%rsp)
	movb	%cl, 20(%rsp)
	movb	%dl, 21(%rsp)
	movb	%al, 22(%rsp)
	movb	%sil, 23(%rsp)
	movl	$.L.str.48, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.49, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.56, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.50, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	fprintf
	movl	18484(%r14), %edx
	movl	$.L.str.51, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	18488(%r14), %edx
	movl	$.L.str.52, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movss	920(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	.LCPI4_0(%rip), %xmm0
	addsd	.LCPI4_1(%rip), %xmm0
	mulsd	.LCPI4_2(%rip), %xmm0
	cvttsd2si	%xmm0, %edx
	movl	$.L.str.53, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.54, %esi
	movl	$26, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	leaq	(%rsp), %rdi
	movl	$1, %esi
	movl	$26, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.42, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	18508(%r14), %edx
	movl	$.L.str.57, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	cdj880_start_raster_mode, .Lfunc_end4-cdj880_start_raster_mode
	.cfi_endproc

	.align	16, 0x90
	.type	cdj880_print_non_blank_lines,@function
cdj880_print_non_blank_lines:           # @cdj880_print_non_blank_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp48:
	.cfi_def_cfa_offset 112
.Ltmp49:
	.cfi_offset %rbx, -56
.Ltmp50:
	.cfi_offset %r12, -48
.Ltmp51:
	.cfi_offset %r13, -40
.Ltmp52:
	.cfi_offset %r14, -32
.Ltmp53:
	.cfi_offset %r15, -24
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movq	%rcx, %r13
	movq	%rdx, %rbx
	movq	%rsi, %rbp
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movslq	60(%rbx), %rax
	leaq	2(%rax), %rcx
	shlq	$5, %rcx
	movq	88(%rbp,%rcx), %r14
	movq	16(%rbp,%rax,8), %r15
	movq	488(%rbp,%rax,8), %r12
	movl	40(%rbx), %edi
	movq	(%rbp,%rax,8), %rsi
	leaq	768(%r8), %rdx
	movq	%rsi, (%rsp)
	leaq	256(%r8), %rax
	leaq	512(%r8), %r9
	movq	%r8, %rcx
	movq	%rax, %r8
	callq	do_gcr
	movl	%eax, 84(%rbx)
	movl	60(%rbx), %edi
	movl	16(%rbx), %r8d
	movl	32(%rbx), %esi
	movq	%r15, (%rsp)
	movq	%r13, %rdx
	movq	%r14, %rcx
	movq	%r12, %r9
	movq	24(%rsp), %r12          # 8-byte Reload
	callq	FSDlinebw
	movl	$.L.str.34, %edi
	movq	%r12, %rsi
	callq	fputs
	movslq	60(%rbx), %rax
	shlq	$5, %rax
	movq	88(%rbp,%rax), %rdi
	movq	448(%rbp), %r15
	movslq	32(%rbx), %rax
	movq	%rbx, %r14
	leaq	-2(%rdi,%rax), %rsi
	movq	%r15, %rdx
	callq	gdev_pcl_mode2compress
	movl	%eax, %ebx
	movl	$.L.str.45, %esi
	movl	$86, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	fprintf
	testl	%ebx, %ebx
	jle	.LBB5_2
# BB#1:                                 # %if.then.i
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%r12, %rcx
	callq	fwrite
.LBB5_2:                                # %print_c2plane.exit
	movq	48(%rsp), %rbp          # 8-byte Reload
	movslq	18500(%rbp), %rax
	testq	%rax, %rax
	je	.LBB5_4
# BB#3:                                 # %lor.lhs.false
	cmpl	$0, 68(%r14)
	je	.LBB5_13
.LBB5_4:                                # %if.then
	movslq	18496(%rbp), %r8
	shlq	$4, %r8
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movl	40(%r14), %edi
	movslq	60(%r14), %rcx
	testq	%rcx, %rcx
	sete	%dl
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	(%rbx,%rcx,8), %rsi
	movzbl	%dl, %ecx
	movq	(%rbx,%rcx,8), %rdx
	movslq	64(%r14), %rcx
	movq	32(%rbx,%rcx,8), %rcx
	callq	*rescale_color_plane(%r8,%rax,8)
	cltd
	idivl	24(%r14)
	movl	%eax, %r15d
	movl	16(%r14), %ecx
	movl	60(%r14), %edi
	movl	64(%r14), %esi
	movq	%r13, (%rsp)
	movl	%r15d, %edx
	movq	%rbx, %r8
	movq	%rbx, %r13
	movq	%rbp, %r9
	callq	do_floyd_steinberg
	movl	16(%r14), %eax
	addl	$-2, %eax
	js	.LBB5_12
# BB#5:                                 # %for.body.lr.ph
	movslq	%r15d, %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movslq	%eax, %r14
	.align	16, 0x90
.LBB5_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.34, %edi
	movq	%r12, %r15
	movq	%r15, %rsi
	callq	fputs
	cmpl	$2, 18492(%rbp)
	setg	%al
	movzbl	%al, %eax
	movq	cdj880_print_non_blank_lines.plane_code(,%rax,8), %rax
	movq	40(%rsp), %rcx          # 8-byte Reload
	movslq	64(%rcx), %rcx
	shlq	$6, %rcx
	leaq	(%rcx,%r13), %rcx
	movq	192(%rcx,%r14,8), %rdi
	movq	448(%r13), %rbp
	movq	32(%rsp), %rcx          # 8-byte Reload
	leaq	-2(%rdi,%rcx), %rsi
	movsbl	(%rax,%r14), %r12d
	movq	%rbp, %rdx
	callq	gdev_pcl_mode2compress
	movl	%eax, %ebx
	movl	$.L.str.45, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%ebx, %edx
	movl	%r12d, %ecx
	callq	fprintf
	testl	%ebx, %ebx
	jle	.LBB5_8
# BB#7:                                 # %if.then.i.76
                                        #   in Loop: Header=BB5_6 Depth=1
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%r15, %rcx
	callq	fwrite
.LBB5_8:                                # %print_c2plane.exit77
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	%r15, %r12
	movq	48(%rsp), %rbp          # 8-byte Reload
	cmpl	$3, 18492(%rbp)
	jl	.LBB5_11
# BB#9:                                 # %if.then.68
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	$.L.str.34, %edi
	movq	%r12, %rsi
	callq	fputs
	movq	40(%rsp), %rax          # 8-byte Reload
	movslq	64(%rax), %rax
	shlq	$6, %rax
	leaq	(%rax,%r13), %rax
	movq	224(%rax,%r14,8), %rdi
	movq	448(%r13), %r15
	movq	32(%rsp), %rax          # 8-byte Reload
	leaq	-2(%rdi,%rax), %rsi
	movq	%r15, %rdx
	callq	gdev_pcl_mode2compress
	movl	%eax, %ebx
	movsbl	.L.str.46(%r14), %ecx
	movl	$.L.str.45, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	48(%rsp), %rbp          # 8-byte Reload
	movl	%ebx, %edx
	callq	fprintf
	testl	%ebx, %ebx
	jle	.LBB5_11
# BB#10:                                # %if.then.i.87
                                        #   in Loop: Header=BB5_6 Depth=1
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%r12, %rcx
	callq	fwrite
.LBB5_11:                               # %for.inc
                                        #   in Loop: Header=BB5_6 Depth=1
	testq	%r14, %r14
	leaq	-1(%r14), %r14
	jg	.LBB5_6
.LBB5_12:                               # %for.end
	movl	$1, %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	subl	64(%rcx), %eax
	movl	%eax, 64(%rcx)
.LBB5_13:                               # %if.end.83
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	cdj880_print_non_blank_lines, .Lfunc_end5-cdj880_print_non_blank_lines
	.cfi_endproc

	.align	16, 0x90
	.type	cdj880_terminate_page,@function
cdj880_terminate_page:                  # @cdj880_terminate_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	$.L.str.22, %edi
	callq	fputs
	movl	$.L.str.23, %edi
	movq	%rbx, %rsi
	popq	%rbx
	jmp	fputs                   # TAILCALL
.Lfunc_end6:
	.size	cdj880_terminate_page, .Lfunc_end6-cdj880_terminate_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4634766966517661696     # double 72
.LCPI7_1:
	.quad	-4637446608295947141    # double -0.040000000000000001
.LCPI7_2:
	.quad	4643985272004935680     # double 300
	.text
	.align	16, 0x90
	.type	cdj1600_start_raster_mode,@function
cdj1600_start_raster_mode:              # @cdj1600_start_raster_mode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp61:
	.cfi_def_cfa_offset 48
.Ltmp62:
	.cfi_offset %rbx, -40
.Ltmp63:
	.cfi_offset %r14, -32
.Ltmp64:
	.cfi_offset %r15, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %ebp
	movq	%rdi, %r14
	cvtsi2sdl	832(%r14), %xmm0
	movss	884(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	908(%r14), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm2
	movsd	.LCPI7_0(%rip), %xmm4   # xmm4 = mem[0],zero
	divsd	%xmm4, %xmm2
	movss	916(%r14), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm4, %xmm3
	addsd	%xmm2, %xmm3
	mulsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %r15
	movl	$.L.str.76, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.48, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.49, %edi
	movq	%rbx, %rsi
	callq	fputs
	cvttss2si	884(%r14), %edx
	movl	$.L.str.77, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.50, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	fprintf
	movl	$.L.str.78, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	18484(%r14), %edx
	movl	$.L.str.79, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	18488(%r14), %edx
	movl	$.L.str.52, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movss	920(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	.LCPI7_0(%rip), %xmm0
	addsd	.LCPI7_1(%rip), %xmm0
	mulsd	.LCPI7_2(%rip), %xmm0
	cvttsd2si	%xmm0, %edx
	movl	$.L.str.53, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	100(%r14), %ecx
	movl	$.L.str.80, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r15d, %edx
	callq	fprintf
	movl	$.L.str.42, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.34, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	18508(%r14), %edx
	testl	%edx, %edx
	je	.LBB7_1
# BB#2:                                 # %if.then
	movl	$.L.str.55, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	fprintf                 # TAILCALL
.LBB7_1:                                # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	cdj1600_start_raster_mode, .Lfunc_end7-cdj1600_start_raster_mode
	.cfi_endproc

	.align	16, 0x90
	.type	cdj1600_print_non_blank_lines,@function
cdj1600_print_non_blank_lines:          # @cdj1600_print_non_blank_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp67:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp69:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp70:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp72:
	.cfi_def_cfa_offset 112
.Ltmp73:
	.cfi_offset %rbx, -56
.Ltmp74:
	.cfi_offset %r12, -48
.Ltmp75:
	.cfi_offset %r13, -40
.Ltmp76:
	.cfi_offset %r14, -32
.Ltmp77:
	.cfi_offset %r15, -24
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	40(%rbx), %eax
	cmpl	$3, %eax
	movslq	60(%rbx), %rdi
	jle	.LBB8_1
# BB#2:                                 # %while.body.lr.ph.i
	movabsq	$8589934588, %r11       # imm = 0x1FFFFFFFC
	movq	(%r12,%rdi,8), %r9
	movslq	64(%rbx), %rsi
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	32(%r12,%rsi,8), %rbp
	movl	%eax, %ebx
	sarl	$31, %ebx
	shrl	$30, %ebx
	leal	(%rbx,%rax), %ebx
	sarl	$2, %ebx
	cmpl	$2, %ebx
	movl	$1, %r13d
	movl	$1, %edx
	cmovll	%ebx, %edx
	notl	%edx
	leal	1(%rbx,%rdx), %r8d
	incq	%r8
	xorl	%r14d, %r14d
	movq	%r8, %r10
	andq	%r11, %r10
	je	.LBB8_13
# BB#3:                                 # %vector.memcheck
	cmpl	$2, %ebx
	cmovll	%ebx, %r13d
	notl	%r13d
	leal	1(%rbx,%r13), %r11d
	leaq	(%r9,%r11,8), %rdx
	xorl	%r14d, %r14d
	cmpq	%rdx, %rbp
	ja	.LBB8_5
# BB#4:                                 # %vector.memcheck
	leaq	(%rbp,%r11,8), %rdx
	cmpq	%rdx, %r9
	jbe	.LBB8_13
.LBB8_5:                                # %vector.body.preheader
	movq	%r15, 32(%rsp)          # 8-byte Spill
	cmpl	$2, %ebx
	movl	$1, %edx
	cmovll	%ebx, %edx
	notl	%edx
	leal	1(%rbx,%rdx), %r14d
	incq	%r14
	movabsq	$8589934588, %rdx       # imm = 0x1FFFFFFFC
	andq	%rdx, %r14
	addq	$-4, %r14
	movq	%r14, %r11
	shrq	$2, %r11
	xorl	%r13d, %r13d
	btq	$2, %r14
	jb	.LBB8_7
# BB#6:                                 # %vector.body.prol
	movups	(%r9), %xmm0
	movups	16(%r9), %xmm1
	movups	%xmm0, (%rbp)
	movups	%xmm1, 16(%rbp)
	movl	$4, %r13d
.LBB8_7:                                # %vector.body.preheader.split
	leaq	(%r9,%r10,8), %r14
	leaq	(%rbp,%r10,8), %rdx
	movl	%ebx, %r15d
	subl	%r10d, %r15d
	testq	%r11, %r11
	je	.LBB8_8
# BB#9:                                 # %vector.body.preheader.split.split
	movl	%r15d, 12(%rsp)         # 4-byte Spill
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movl	%ebx, %r11d
	notl	%r11d
	cmpl	$-3, %r11d
	movl	$-2, %edx
	cmovgl	%r11d, %edx
	leal	1(%rbx,%rdx), %ebx
	incq	%rbx
	movabsq	$8589934588, %rdx       # imm = 0x1FFFFFFFC
	andq	%rdx, %rbx
	subq	%r13, %rbx
	leaq	48(%rbp,%r13,8), %rbp
	leaq	48(%r9,%r13,8), %rdx
	.align	16, 0x90
.LBB8_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rdx), %xmm0
	movups	-32(%rdx), %xmm1
	movups	%xmm0, -48(%rbp)
	movups	%xmm1, -32(%rbp)
	movups	-16(%rdx), %xmm0
	movups	(%rdx), %xmm1
	movups	%xmm0, -16(%rbp)
	movups	%xmm1, (%rbp)
	addq	$64, %rbp
	addq	$64, %rdx
	addq	$-8, %rbx
	jne	.LBB8_10
# BB#11:
	movq	16(%rsp), %r9           # 8-byte Reload
	movq	24(%rsp), %rbp          # 8-byte Reload
	movl	12(%rsp), %edx          # 4-byte Reload
	movl	%edx, %ebx
	jmp	.LBB8_12
.LBB8_1:                                # %entry.copy_color_data.exit_crit_edge
	movl	64(%rbx), %esi
	jmp	.LBB8_17
.LBB8_8:
	movq	%r14, %r9
	movq	%rdx, %rbp
	movl	%r15d, %ebx
.LBB8_12:                               # %middle.block
	movq	%r10, %r14
	movq	32(%rsp), %r15          # 8-byte Reload
.LBB8_13:                               # %middle.block
	cmpq	%r14, %r8
	je	.LBB8_16
# BB#14:                                # %while.body.i.preheader
	incl	%ebx
	.align	16, 0x90
.LBB8_15:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r9), %rdx
	addq	$8, %r9
	movq	%rdx, (%rbp)
	addq	$8, %rbp
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB8_15
.LBB8_16:
	movq	48(%rsp), %rbx          # 8-byte Reload
.LBB8_17:                               # %copy_color_data.exit
	cltd
	idivl	24(%rbx)
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movl	16(%rbx), %ebp
	movq	%rcx, (%rsp)
	movl	%eax, %edx
	movl	%ebp, %ecx
	movq	%r12, %r8
	movq	%r15, %r9
	callq	do_floyd_steinberg
	movslq	16(%rbx), %r14
	testq	%r14, %r14
	jle	.LBB8_22
# BB#18:                                # %for.body.lr.ph
	addq	$23, %r14
	.align	16, 0x90
.LBB8_19:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	64(%rbx), %rax
	movq	%rbx, %r15
	movl	$1, %ecx
	subq	%rax, %rcx
	shlq	$6, %rax
	leaq	(%rax,%r12), %rax
	movq	(%rax,%r14,8), %rsi
	shlq	$6, %rcx
	leaq	(%rcx,%r12), %rax
	movq	(%rax,%r14,8), %rdx
	movq	448(%r12), %rbx
	movl	48(%rsp), %edi          # 4-byte Reload
	movq	%rbx, %rcx
	callq	gdev_pcl_mode3compress
	movl	%eax, %ebp
	movsbl	.L.str.81-24(%r14), %ecx
	testl	%ebp, %ebp
	jle	.LBB8_23
# BB#20:                                # %if.then.i
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	$.L.str.45, %esi
	xorl	%eax, %eax
	movq	%r12, %r13
	movq	40(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	fprintf
	movslq	%ebp, %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%r12, %rcx
	movq	%r13, %r12
	callq	fwrite
	jmp	.LBB8_21
	.align	16, 0x90
.LBB8_23:                               # %if.else.i
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	%ecx, %edi
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	_IO_putc
.LBB8_21:                               # %for.cond.backedge
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	%r15, %rbx
	leaq	-1(%r14), %rax
	addq	$-23, %r14
	cmpq	$1, %r14
	movq	%rax, %r14
	jg	.LBB8_19
.LBB8_22:                               # %for.end
	movl	$1, %eax
	subl	64(%rbx), %eax
	movl	%eax, 64(%rbx)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	cdj1600_print_non_blank_lines, .Lfunc_end8-cdj1600_print_non_blank_lines
	.cfi_endproc

	.align	16, 0x90
	.type	cdj1600_terminate_page,@function
cdj1600_terminate_page:                 # @cdj1600_terminate_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	$.L.str.19, %edi
	callq	fputs
	movl	$.L.str.20, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.21, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.23, %edi
	movq	%rbx, %rsi
	popq	%rbx
	jmp	fputs                   # TAILCALL
.Lfunc_end9:
	.size	cdj1600_terminate_page, .Lfunc_end9-cdj1600_terminate_page
	.cfi_endproc

	.align	16, 0x90
	.type	chp2200_print_page,@function
chp2200_print_page:                     # @chp2200_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp83:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp84:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp85:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp87:
	.cfi_def_cfa_offset 112
.Ltmp88:
	.cfi_offset %rbx, -56
.Ltmp89:
	.cfi_offset %r12, -48
.Ltmp90:
	.cfi_offset %r13, -40
.Ltmp91:
	.cfi_offset %r14, -32
.Ltmp92:
	.cfi_offset %r15, -24
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbp
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	24(%rbp), %r15
	movslq	832(%rbp), %r13
	movq	%r13, 48(%rsp)          # 8-byte Spill
	leaq	(%r13,%r13,2), %r12
	movq	%r12, 8(%rsp)           # 8-byte Spill
	movl	$.L.str.31, %edx
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	*64(%r15)
	movq	%rax, %rbx
	movl	$.L.str.32, %edx
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	*64(%r15)
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leal	(%r13,%r13), %eax
	leal	(%rax,%rax,2), %esi
	movl	$.L.str.33, %edx
	movq	%r15, %rdi
	callq	*64(%r15)
	movq	%rax, %rcx
	testq	%rbx, %rbx
	movl	$-25, %eax
	je	.LBB10_17
# BB#1:                                 # %entry
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	je	.LBB10_17
# BB#2:                                 # %entry
	testq	%rcx, %rcx
	je	.LBB10_17
# BB#3:                                 # %if.end
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%r15, (%rsp)            # 8-byte Spill
	movq	18536(%rbp), %r15
	movq	%rbp, %rdi
	callq	gdev_pcl_paper_size
	movq	%rbp, %rdi
	movl	%eax, %esi
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movq	%r14, %rdx
	callq	*%r15
	movl	$.L.str.34, %edi
	movq	%r14, %rsi
	callq	fputs
	movl	$255, %esi
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rdx
	callq	memset
	cmpl	$0, 836(%rbp)
	jle	.LBB10_16
# BB#4:                                 # %for.body.lr.ph
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax,2), %eax
	movslq	%eax, %r15
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB10_5:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_9 Depth 2
	movq	%rbp, %rdi
	movl	%r13d, %esi
	movq	%rbx, %rdx
	movl	%r12d, %ecx
	callq	gdev_prn_copy_scan_lines
	cmpl	$1, %eax
	jne	.LBB10_7
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	$0, %eax
	je	.LBB10_7
	.align	16, 0x90
.LBB10_9:                               # %while.body.i
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx,%rax), %ecx
	cmpl	$255, %ecx
	jne	.LBB10_10
# BB#8:                                 # %while.cond.i
                                        #   in Loop: Header=BB10_9 Depth=2
	incq	%rax
	cmpq	%rax, %r15
	jne	.LBB10_9
.LBB10_7:                               # %if.else.37
                                        #   in Loop: Header=BB10_5 Depth=1
	incl	%r14d
	jmp	.LBB10_15
	.align	16, 0x90
.LBB10_10:                              # %if.then.20
                                        #   in Loop: Header=BB10_5 Depth=1
	testl	%r14d, %r14d
	je	.LBB10_12
# BB#11:                                # %if.then.22
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	$.L.str.35, %esi
	xorl	%eax, %eax
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%r14d, %edx
	callq	fprintf
	movl	$255, %esi
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rdx
	callq	memset
.LBB10_12:                              # %if.end.26
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	16(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rcx
	callq	Mode10
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB10_14
# BB#13:                                # %if.then.29
                                        #   in Loop: Header=BB10_5 Depth=1
	xorl	%r14d, %r14d
	movl	$.L.str.36, %esi
	xorl	%eax, %eax
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%ebp, %edx
	callq	fprintf
	movl	%ebp, %edx
	movl	$1, %esi
	movq	%r12, %rdi
	movq	32(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movq	8(%rsp), %r12           # 8-byte Reload
	movq	%r12, %rdx
	callq	memcpy
	movq	24(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB10_15
.LBB10_14:                              # %if.else
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	$.L.str.37, %edi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	fputs
	xorl	%r14d, %r14d
	movq	24(%rsp), %rbp          # 8-byte Reload
	movq	8(%rsp), %r12           # 8-byte Reload
	.align	16, 0x90
.LBB10_15:                              # %if.end.38
                                        #   in Loop: Header=BB10_5 Depth=1
	incl	%r13d
	cmpl	836(%rbp), %r13d
	jl	.LBB10_5
.LBB10_16:                              # %for.end
	movl	$.L.str.38, %edi
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rsi
	callq	fputs
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	*18552(%rbp)
	movl	$.L.str.31, %edx
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*24(%rbp)
	movl	$.L.str.32, %edx
	movq	%rbp, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rbp)
	movl	$.L.str.33, %edx
	movq	%rbp, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rbp)
	xorl	%eax, %eax
.LBB10_17:                              # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	chp2200_print_page, .Lfunc_end10-chp2200_print_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4634766966517661696     # double 72
.LCPI11_1:
	.quad	-4637446608295947141    # double -0.040000000000000001
	.text
	.align	16, 0x90
	.type	chp2200_start_raster_mode,@function
chp2200_start_raster_mode:              # @chp2200_start_raster_mode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp95:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp96:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp97:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp98:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp99:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp100:
	.cfi_def_cfa_offset 80
.Ltmp101:
	.cfi_offset %rbx, -56
.Ltmp102:
	.cfi_offset %r12, -48
.Ltmp103:
	.cfi_offset %r13, -40
.Ltmp104:
	.cfi_offset %r14, -32
.Ltmp105:
	.cfi_offset %r15, -24
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %r15d
	movq	%rdi, %r14
	movaps	.Lchp2200_start_raster_mode.CRD_SeqC(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	movw	$288, 16(%rsp)          # imm = 0x120
	cvttss2si	884(%r14), %r13d
	cvttss2si	888(%r14), %r12d
	movl	832(%r14), %ebp
	movl	$.L.str.58, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.59, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.60, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.61, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.62, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	18488(%r14), %edx
	movl	$.L.str.52, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	18484(%r14), %edx
	movl	$.L.str.51, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.63, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	fprintf
	movl	$.L.str.64, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r15d, %edx
	callq	fprintf
	movl	$.L.str.65, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.66, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r13d, %edx
	callq	fprintf
	cvtsi2sdl	%r12d, %xmm0
	movss	920(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	.LCPI11_0(%rip), %xmm1
	addsd	.LCPI11_1(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	$.L.str.53, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	%r13d, %eax
	movb	%ah, 10(%rsp)  # NOREX
	movb	%al, 11(%rsp)
	movl	%r12d, %eax
	movb	%ah, 12(%rsp)  # NOREX
	movb	%al, 13(%rsp)
	leaq	(%rsp), %rdi
	movl	$1, %esi
	movl	$18, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.42, %edi
	movq	%rbx, %rsi
	callq	fputs
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	chp2200_start_raster_mode, .Lfunc_end11-chp2200_start_raster_mode
	.cfi_endproc

	.align	16, 0x90
	.type	chp2200_terminate_page,@function
chp2200_terminate_page:                 # @chp2200_terminate_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	$.L.str.22, %edi
	callq	fputs
	movl	$.L.str.24, %edi
	movq	%rbx, %rsi
	popq	%rbx
	jmp	fputs                   # TAILCALL
.Lfunc_end12:
	.size	chp2200_terminate_page, .Lfunc_end12-chp2200_terminate_page
	.cfi_endproc

	.align	16, 0x90
	.type	cdnj500_print_page,@function
cdnj500_print_page:                     # @cdnj500_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp110:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp111:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp112:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp113:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp115:
	.cfi_def_cfa_offset 144
.Ltmp116:
	.cfi_offset %rbx, -56
.Ltmp117:
	.cfi_offset %r12, -48
.Ltmp118:
	.cfi_offset %r13, -40
.Ltmp119:
	.cfi_offset %r14, -32
.Ltmp120:
	.cfi_offset %r15, -24
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movaps	.Lcdnj500_print_page.CRD_SeqC(%rip), %xmm0
	movaps	%xmm0, 64(%rsp)
	movw	$288, 80(%rsp)          # imm = 0x120
	cvttss2si	884(%rdi), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	cvttss2si	888(%rdi), %r13d
	movq	24(%rdi), %rbp
	movslq	832(%rdi), %r12
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	leaq	(%r12,%r12,2), %r15
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movl	$.L.str.39, %edx
	movq	%rbp, %rdi
	movl	%r15d, %esi
	callq	*64(%rbp)
	movq	%rax, %rbx
	movl	$.L.str.40, %edx
	movq	%rbp, %rdi
	movl	%r15d, %esi
	callq	*64(%rbp)
	movq	%rax, %r15
	leal	(%r12,%r12), %eax
	leal	(%rax,%rax,2), %esi
	movl	$.L.str.41, %edx
	movq	%rbp, %rdi
	callq	*64(%rbp)
	movq	%rax, %rcx
	testq	%rbx, %rbx
	movl	$-25, %eax
	je	.LBB13_22
# BB#1:                                 # %entry
	testq	%r15, %r15
	je	.LBB13_22
# BB#2:                                 # %entry
	testq	%rcx, %rcx
	je	.LBB13_22
# BB#3:                                 # %if.end
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movq	%rbp, (%rsp)            # 8-byte Spill
	movq	%r14, %rbp
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	18536(%rbp), %r14
	movq	%rbp, %rdi
	callq	gdev_pcl_paper_size
	movq	%rbp, %rdi
	movl	%eax, %esi
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	*%r14
	movl	28(%rsp), %eax          # 4-byte Reload
	movb	%ah, 74(%rsp)  # NOREX
	movb	%al, 75(%rsp)
	movl	%r13d, %eax
	movb	%ah, 76(%rsp)  # NOREX
	movb	%al, 77(%rsp)
	cmpl	$0, 836(%rbp)
	jle	.LBB13_21
# BB#4:                                 # %for.body.lr.ph
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax,2), %eax
	movslq	%eax, %r14
	movl	$1, %r15d
	xorl	%r13d, %r13d
	movl	$0, 28(%rsp)            # 4-byte Folded Spill
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB13_5:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_9 Depth 2
	movq	%rbp, %rdi
	movl	%r13d, %esi
	movq	%rbx, %rdx
	movq	56(%rsp), %rcx          # 8-byte Reload
	callq	gdev_prn_copy_scan_lines
	cmpl	$1, %eax
	jne	.LBB13_7
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB13_5 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	$0, %eax
	je	.LBB13_7
	.align	16, 0x90
.LBB13_9:                               # %while.body.i
                                        #   Parent Loop BB13_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx,%rax), %ecx
	cmpl	$255, %ecx
	jne	.LBB13_10
# BB#8:                                 # %while.cond.i
                                        #   in Loop: Header=BB13_9 Depth=2
	incq	%rax
	cmpq	%rax, %r14
	jne	.LBB13_9
.LBB13_7:                               # %if.else.66
                                        #   in Loop: Header=BB13_5 Depth=1
	cmpl	$1, %r15d
	adcl	$0, %r12d
	jmp	.LBB13_20
	.align	16, 0x90
.LBB13_10:                              # %if.then.34
                                        #   in Loop: Header=BB13_5 Depth=1
	movl	28(%rsp), %ebp          # 4-byte Reload
	testl	%ebp, %ebp
	je	.LBB13_13
# BB#11:                                # %if.then.34
                                        #   in Loop: Header=BB13_5 Depth=1
	cmpl	$448, %ebp              # imm = 0x1C0
	movq	32(%rsp), %r15          # 8-byte Reload
	jne	.LBB13_14
# BB#12:                                # %if.end.40.thread
                                        #   in Loop: Header=BB13_5 Depth=1
	movl	$.L.str.38, %edi
	movq	40(%rsp), %r15          # 8-byte Reload
	movq	%r15, %rsi
	callq	fputs
	movl	$.L.str.25, %edi
	movq	%r15, %rsi
	callq	fputs
.LBB13_13:                              # %if.then.43
                                        #   in Loop: Header=BB13_5 Depth=1
	movl	$1, %esi
	movl	$18, %edx
	leaq	64(%rsp), %rdi
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rcx
	callq	fwrite
	movl	$.L.str.42, %edi
	movq	%rbp, %rsi
	callq	fputs
	movl	$.L.str.34, %edi
	movq	%rbp, %rsi
	callq	fputs
	movl	$255, %esi
	movq	32(%rsp), %r15          # 8-byte Reload
	movq	%r15, %rdi
	movq	56(%rsp), %rdx          # 8-byte Reload
	callq	memset
	xorl	%ebp, %ebp
.LBB13_14:                              # %if.end.49
                                        #   in Loop: Header=BB13_5 Depth=1
	testl	%r12d, %r12d
	je	.LBB13_16
# BB#15:                                # %if.then.51
                                        #   in Loop: Header=BB13_5 Depth=1
	movl	$.L.str.35, %esi
	xorl	%eax, %eax
	movq	40(%rsp), %rdi          # 8-byte Reload
	movl	%r12d, %edx
	callq	fprintf
	movl	$255, %esi
	movq	%r15, %rdi
	movq	56(%rsp), %rdx          # 8-byte Reload
	callq	memset
.LBB13_16:                              # %if.end.55
                                        #   in Loop: Header=BB13_5 Depth=1
	incl	%ebp
	movl	%ebp, 28(%rsp)          # 4-byte Spill
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	16(%rsp), %rcx          # 8-byte Reload
	callq	Mode10
	movq	%r15, %rcx
	movl	%eax, %r15d
	testl	%r15d, %r15d
	je	.LBB13_18
# BB#17:                                # %if.then.58
                                        #   in Loop: Header=BB13_5 Depth=1
	xorl	%r12d, %r12d
	movl	$.L.str.36, %esi
	xorl	%eax, %eax
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movl	%r15d, %edx
	callq	fprintf
	movl	%r15d, %edx
	movl	$1, %esi
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rcx
	callq	fwrite
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movq	56(%rsp), %rdx          # 8-byte Reload
	callq	memcpy
	jmp	.LBB13_19
.LBB13_18:                              # %if.else
                                        #   in Loop: Header=BB13_5 Depth=1
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movl	$.L.str.37, %edi
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	fputs
	xorl	%r12d, %r12d
.LBB13_19:                              # %if.end.72
                                        #   in Loop: Header=BB13_5 Depth=1
	xorl	%r15d, %r15d
	movq	8(%rsp), %rbp           # 8-byte Reload
.LBB13_20:                              # %if.end.72
                                        #   in Loop: Header=BB13_5 Depth=1
	incl	%r13d
	cmpl	836(%rbp), %r13d
	jl	.LBB13_5
.LBB13_21:                              # %for.end
	movl	$.L.str.38, %edi
	movq	%rbp, %r14
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	callq	fputs
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	*18552(%r14)
	movl	$.L.str.39, %edx
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*24(%rbp)
	movl	$.L.str.40, %edx
	movq	%rbp, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rbp)
	movl	$.L.str.41, %edx
	movq	%rbp, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rbp)
	xorl	%eax, %eax
.LBB13_22:                              # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	cdnj500_print_page, .Lfunc_end13-cdnj500_print_page
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI14_0:
	.long	1092616192              # float 10
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_1:
	.quad	4612901990326777938     # double 2.54
	.text
	.align	16, 0x90
	.type	cdnj500_start_raster_mode,@function
cdnj500_start_raster_mode:              # @cdnj500_start_raster_mode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp123:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp124:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp125:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp126:
	.cfi_def_cfa_offset 48
.Ltmp127:
	.cfi_offset %rbx, -40
.Ltmp128:
	.cfi_offset %r14, -32
.Ltmp129:
	.cfi_offset %r15, -24
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rdi, %r15
	movss	884(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm0, %r14d
	cvtsi2ssl	832(%r15), %xmm1
	divss	%xmm0, %xmm1
	movss	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, 4(%rsp)          # 4-byte Spill
	xorps	%xmm1, %xmm1
	cvtsi2ssl	836(%r15), %xmm1
	divss	888(%r15), %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%rsp)           # 4-byte Spill
	movl	$.L.str.58, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movss	4(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI14_1(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movss	(%rsp), %xmm1           # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	movl	$.L.str.67, %esi
	movb	$2, %al
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.68, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.69, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	18484(%r15), %ebp
	movl	$.L.str.70, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	cmpl	$-1, %ebp
	je	.LBB14_1
# BB#2:                                 # %if.else
	callq	fprintf
	testl	%ebp, %ebp
	je	.LBB14_3
# BB#4:                                 # %if.else.30
	movl	$.L.str.74, %esi
	jmp	.LBB14_5
.LBB14_1:                               # %if.then
	callq	fprintf
	movl	$.L.str.71, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.72, %esi
	jmp	.LBB14_6
.LBB14_3:                               # %if.then.26
	movl	$.L.str.71, %esi
.LBB14_5:                               # %if.end.34
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.73, %esi
.LBB14_6:                               # %if.end.34
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.75, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	18484(%r15), %edx
	movl	$.L.str.51, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.66, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r14d, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	fprintf                 # TAILCALL
.Lfunc_end14:
	.size	cdnj500_start_raster_mode, .Lfunc_end14-cdnj500_start_raster_mode
	.cfi_endproc

	.align	16, 0x90
	.type	cdnj500_terminate_page,@function
cdnj500_terminate_page:                 # @cdnj500_terminate_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp131:
	.cfi_def_cfa_offset 16
.Ltmp132:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	$.L.str.25, %edi
	callq	fputs
	movl	$.L.str.26, %edi
	movq	%rbx, %rsi
	popq	%rbx
	jmp	fputs                   # TAILCALL
.Lfunc_end15:
	.size	cdnj500_terminate_page, .Lfunc_end15-cdnj500_terminate_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4648488871632306176     # double 600
.LCPI16_1:
	.quad	4643985272004935680     # double 300
	.text
	.align	16, 0x90
	.type	hp_colour_open,@function
hp_colour_open:                         # @hp_colour_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp134:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp135:
	.cfi_def_cfa_offset 32
.Ltmp136:
	.cfi_offset %rbx, -24
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	cmpl	$0, 100(%rbx)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movzwl	108(%rbx), %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	cdj_set_bpp
	testl	%eax, %eax
	js	.LBB16_36
.LBB16_2:                               # %if.end.7
	xorl	%esi, %esi
	movl	18504(%rbx), %eax
	cmpq	$6, %rax
	ja	.LBB16_35
# BB#3:                                 # %if.end.7
	jmpq	*.LJTI16_0(,%rax,8)
.LBB16_4:                               # %sw.bb
	cmpl	$2, 18488(%rbx)
	jg	.LBB16_8
# BB#5:                                 # %if.then.10
	movl	18484(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB16_6
.LBB16_8:                               # %if.else.25
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	%rbx, %rdi
	callq	gx_device_set_resolution
	movl	$1, 18496(%rbx)
.LBB16_9:                               # %if.end.28
	movl	$0, 18500(%rbx)
	jmp	.LBB16_10
.LBB16_36:                              # %cleanup.160
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB16_11:                              # %sw.bb.32
	movl	18484(%rbx), %ebp
	cmpl	$-1, %ebp
	je	.LBB16_12
# BB#13:                                # %if.else.39
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	movapd	%xmm0, %xmm1
	callq	gx_device_set_resolution
	movl	$1, 18496(%rbx)
	movl	$1, 18500(%rbx)
	testl	%ebp, %ebp
	jne	.LBB16_10
# BB#14:                                # %if.then.43
	cmpl	$0, 18488(%rbx)
	jg	.LBB16_10
# BB#15:                                # %if.then.49
	movl	$3, 18492(%rbx)
	jmp	.LBB16_10
.LBB16_16:                              # %sw.bb.61
	movl	18484(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB16_17
# BB#37:                                # %if.then.73
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	%rbx, %rdi
	callq	gx_device_set_resolution
	movl	$1, 18496(%rbx)
	movl	$0, 18500(%rbx)
	cmpl	$0, 18488(%rbx)
	jg	.LBB16_10
	jmp	.LBB16_19
.LBB16_20:                              # %sw.bb.92
	movl	18484(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB16_21
# BB#23:                                # %if.then.104
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	%rbx, %rdi
	callq	gx_device_set_resolution
	movl	$1, 18496(%rbx)
	movl	$0, 18500(%rbx)
	cmpl	$0, 18488(%rbx)
	jg	.LBB16_10
# BB#24:                                # %if.then.110
	movl	$3, 18492(%rbx)
	jmp	.LBB16_10
.LBB16_25:                              # %sw.bb.122
	movsd	.LCPI16_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	movapd	%xmm0, %xmm1
	callq	gx_device_set_resolution
	movl	$hp_colour_open.m_cdj1600, %esi
	jmp	.LBB16_35
.LBB16_26:                              # %sw.bb.123
	movl	$0, 18496(%rbx)
	movl	$0, 18500(%rbx)
	movl	$0, 18492(%rbx)
	movl	18484(%rbx), %eax
	testl	%eax, %eax
	je	.LBB16_28
# BB#27:                                # %sw.bb.123
	cmpl	$-1, %eax
	jne	.LBB16_29
.LBB16_28:                              # %if.then.135
	movsd	.LCPI16_1(%rip), %xmm0  # xmm0 = mem[0],zero
	jmp	.LBB16_30
.LBB16_31:                              # %sw.bb.143
	movl	$0, 18496(%rbx)
	movl	$0, 18500(%rbx)
	movl	$0, 18492(%rbx)
	cmpl	$-1, 18484(%rbx)
	je	.LBB16_32
# BB#33:                                # %if.else.151
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	jmp	.LBB16_34
.LBB16_17:                              # %sw.bb.61
	cmpl	$-1, %eax
	je	.LBB16_12
# BB#18:                                # %if.else.82
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	movapd	%xmm0, %xmm1
	callq	gx_device_set_resolution
	movl	$0, 18496(%rbx)
	movl	$0, 18500(%rbx)
.LBB16_19:                              # %if.end.87
	movl	$4, 18492(%rbx)
	jmp	.LBB16_10
.LBB16_21:                              # %sw.bb.92
	cmpl	$-1, %eax
	jne	.LBB16_22
.LBB16_12:                              # %if.then.36
	movsd	.LCPI16_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	movapd	%xmm0, %xmm1
	callq	gx_device_set_resolution
	movl	$0, 18496(%rbx)
	movl	$0, 18500(%rbx)
	movl	$2, 18492(%rbx)
	jmp	.LBB16_10
.LBB16_32:                              # %if.then.150
	movsd	.LCPI16_1(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB16_34:                              # %sw.epilog
	movq	%rbx, %rdi
	movapd	%xmm0, %xmm1
	callq	gx_device_set_resolution
	movl	$hp_colour_open.cdnj500, %esi
	jmp	.LBB16_35
.LBB16_6:                               # %if.then.10
	cmpl	$-1, %eax
	jne	.LBB16_22
# BB#7:                                 # %if.then.13
	movsd	.LCPI16_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	movapd	%xmm0, %xmm1
	callq	gx_device_set_resolution
	movl	$0, 18496(%rbx)
	jmp	.LBB16_9
.LBB16_22:                              # %if.else.20
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	movapd	%xmm0, %xmm1
	callq	gx_device_set_resolution
	movl	$1, 18496(%rbx)
	movl	$1, 18500(%rbx)
.LBB16_10:                              # %if.end.28
	movq	%rbx, %rdi
	callq	gdev_pcl_paper_size
	cmpl	$26, %eax
	movl	$hp_colour_open.dj_a4, %eax
	movl	$hp_colour_open.dj_letter, %esi
	cmoveq	%rax, %rsi
	jmp	.LBB16_35
.LBB16_29:                              # %if.else.136
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB16_30:                              # %if.end.138
	movq	%rbx, %rdi
	movapd	%xmm0, %xmm1
	callq	gx_device_set_resolution
	movq	%rbx, %rdi
	callq	gdev_pcl_paper_size
	cmpl	$26, %eax
	movl	$hp_colour_open.chp2200_a4, %eax
	movl	$hp_colour_open.chp2200_letter, %esi
	cmoveq	%rax, %rsi
.LBB16_35:                              # %sw.epilog
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	gx_device_set_margins
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	gdev_prn_open           # TAILCALL
.Lfunc_end16:
	.size	hp_colour_open, .Lfunc_end16-hp_colour_open
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_4
	.quad	.LBB16_11
	.quad	.LBB16_16
	.quad	.LBB16_20
	.quad	.LBB16_25
	.quad	.LBB16_26
	.quad	.LBB16_31

	.text
	.align	16, 0x90
	.type	gdev_cmyk_map_color_rgb,@function
gdev_cmyk_map_color_rgb:                # @gdev_cmyk_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %r8
	movzwl	108(%rdi), %eax
	cmpl	$8, %eax
	jne	.LBB17_1
# BB#3:                                 # %sw.bb.4
	cmpl	$1, 100(%rdi)
	jne	.LBB17_6
# BB#4:                                 # %if.then
	xorl	$255, %esi
	imull	$257, %esi, %eax        # imm = 0x101
	jmp	.LBB17_5
.LBB17_1:                               # %entry
	cmpl	$1, %eax
	jne	.LBB17_6
# BB#2:                                 # %sw.bb
	movl	$1, %eax
	subl	%esi, %eax
	imull	$65535, %eax, %eax      # imm = 0xFFFF
.LBB17_5:                               # %sw.epilog
	movw	%ax, 4(%r8)
	movw	%ax, 2(%r8)
	movw	%ax, (%r8)
	xorl	%eax, %eax
	retq
.LBB17_6:                               # %sw.default
	shrl	$2, %eax
	leal	(%rax,%rax,2), %ecx
	movq	%rsi, %r10
	shrq	%cl, %r10
	movl	$1, %edx
	movb	%al, %cl
	shll	%cl, %edx
	decl	%edx
	movslq	%edx, %r9
	andq	%r9, %r10
	movl	$16, %edx
	subl	%eax, %edx
	movb	%dl, %cl
	shlq	%cl, %r10
	movl	%eax, %ecx
	addl	%ecx, %ecx
	movq	%rsi, %rdi
	shrq	%cl, %rdi
	andq	%r9, %rdi
	movb	%dl, %cl
	shlq	%cl, %rdi
	movq	%rsi, %r11
	movb	%al, %cl
	shrq	%cl, %r11
	andq	%r9, %r11
	movb	%dl, %cl
	shlq	%cl, %r11
	andq	%rsi, %r9
	movb	%dl, %cl
	shlq	%cl, %r9
	movl	$65535, %ecx            # imm = 0xFFFF
	movl	$65535, %eax            # imm = 0xFFFF
	subq	%rdi, %rax
	movl	$65535, %esi            # imm = 0xFFFF
	subq	%r10, %rsi
	imulq	%rsi, %rax
	movabsq	$-9223231297218904063, %rdi # imm = 0x8000800080008001
	mulq	%rdi
	shrq	$15, %rdx
	movw	%dx, (%r8)
	movl	$65535, %eax            # imm = 0xFFFF
	subq	%r11, %rax
	imulq	%rsi, %rax
	mulq	%rdi
	shrq	$15, %rdx
	movw	%dx, 2(%r8)
	subq	%r9, %rcx
	imulq	%rsi, %rcx
	movq	%rcx, %rax
	mulq	%rdi
	shrq	$15, %rdx
	movw	%dx, 4(%r8)
	xorl	%eax, %eax
	retq
.Lfunc_end17:
	.size	gdev_cmyk_map_color_rgb, .Lfunc_end17-gdev_cmyk_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	cdj850_get_params,@function
cdj850_get_params:                      # @cdj850_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp138:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp139:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 32
.Ltmp141:
	.cfi_offset %rbx, -32
.Ltmp142:
	.cfi_offset %r14, -24
.Ltmp143:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	gdev_prn_get_params
	testl	%eax, %eax
	js	.LBB18_8
# BB#1:                                 # %lor.lhs.false
	leaq	18484(%r14), %rdx
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB18_8
# BB#2:                                 # %lor.lhs.false.3
	leaq	18488(%r14), %rdx
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB18_8
# BB#3:                                 # %lor.lhs.false.6
	leaq	18516(%r14), %r15
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	param_write_float
	testl	%eax, %eax
	js	.LBB18_8
# BB#4:                                 # %lor.lhs.false.9
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	param_write_float
	testl	%eax, %eax
	js	.LBB18_8
# BB#5:                                 # %lor.lhs.false.13
	leaq	18520(%r14), %rdx
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	callq	param_write_float
	testl	%eax, %eax
	js	.LBB18_8
# BB#6:                                 # %lor.lhs.false.16
	leaq	18524(%r14), %rdx
	movl	$.L.str.14, %esi
	movq	%rbx, %rdi
	callq	param_write_float
	testl	%eax, %eax
	js	.LBB18_8
# BB#7:                                 # %lor.lhs.false.19
	leaq	18528(%r14), %rdx
	movl	$.L.str.15, %esi
	movq	%rbx, %rdi
	callq	param_write_float
	testl	%eax, %eax
	js	.LBB18_8
# BB#9:                                 # %lor.lhs.false.22
	addq	$18532, %r14            # imm = 0x4864
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	param_write_float       # TAILCALL
.LBB18_8:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end18:
	.size	cdj850_get_params, .Lfunc_end18-cdj850_get_params
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI19_0:
	.long	1036831949              # float 0.100000001
.LCPI19_1:
	.long	1091567616              # float 9
	.text
	.align	16, 0x90
	.type	cdj850_put_params,@function
cdj850_put_params:                      # @cdj850_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp145:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp146:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp147:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp148:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp149:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp150:
	.cfi_def_cfa_offset 112
.Ltmp151:
	.cfi_offset %rbx, -56
.Ltmp152:
	.cfi_offset %r12, -48
.Ltmp153:
	.cfi_offset %r13, -40
.Ltmp154:
	.cfi_offset %r14, -32
.Ltmp155:
	.cfi_offset %r15, -24
.Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	18484(%r14), %r12d
	movl	18488(%r14), %r15d
	movl	18512(%r14), %r13d
	movl	18516(%r14), %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movl	18520(%r14), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movl	18524(%r14), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movl	18528(%r14), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movl	18532(%r14), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	leaq	52(%rsp), %rdx
	movl	$.L.str.17, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB19_1
# BB#3:                                 # %sw.bb.1.i
	movl	52(%rsp), %ecx
	leal	-1(%rcx), %eax
	movl	$1, %ebp
	cmpl	$32, %eax
	jb	.LBB19_4
# BB#5:                                 # %if.then.i
	movq	(%rbx), %rax
	movl	$.L.str.17, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	52(%rsp), %eax
	jmp	.LBB19_6
.LBB19_1:                               # %entry
	xorl	%eax, %eax
	cmpl	$1, %ebp
	jne	.LBB19_6
# BB#2:                                 # %sw.bb.i
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	jmp	.LBB19_7
.LBB19_6:                               # %cdj_put_param_int.exit
	movq	%rax, 24(%rsp)          # 8-byte Spill
	jmp	.LBB19_7
.LBB19_4:
	movq	%rcx, 24(%rsp)          # 8-byte Spill
.LBB19_7:                               # %cdj_put_param_int.exit
	leaq	52(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	testl	%eax, %eax
	jne	.LBB19_8
# BB#10:                                # %sw.bb.1.i.45
	movl	52(%rsp), %r12d
	cmpl	$3, %r12d
	jb	.LBB19_12
# BB#11:                                # %if.then.i.50
	movq	(%rbx), %rax
	movl	$.L.str.9, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	52(%rsp), %r12d
.LBB19_12:                              # %if.end.i.51
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
	jmp	.LBB19_13
.LBB19_8:                               # %cdj_put_param_int.exit
	cmpl	$1, %eax
	je	.LBB19_13
# BB#9:
	movl	%eax, %ebp
.LBB19_13:                              # %cdj_put_param_int.exit53
	leaq	52(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	testl	%eax, %eax
	jne	.LBB19_14
# BB#16:                                # %sw.bb.1.i.60
	movl	52(%rsp), %r15d
	cmpl	$5, %r15d
	jb	.LBB19_18
# BB#17:                                # %if.then.i.65
	movq	(%rbx), %rax
	movl	$.L.str.10, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	52(%rsp), %r15d
.LBB19_18:                              # %if.end.i.68
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
	jmp	.LBB19_19
.LBB19_14:                              # %cdj_put_param_int.exit53
	cmpl	$1, %eax
	je	.LBB19_19
# BB#15:
	movl	%eax, %ebp
.LBB19_19:                              # %cdj_put_param_int.exit70
	leaq	52(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	callq	param_read_float
	testl	%eax, %eax
	jne	.LBB19_20
# BB#22:                                # %sw.bb.1.i.77
	movss	52(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI19_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB19_25
# BB#23:                                # %sw.bb.1.i.77
	ucomiss	.LCPI19_1(%rip), %xmm0
	ja	.LBB19_25
# BB#24:                                # %sw.bb.1.if.end_crit_edge.i
	movd	%xmm0, %r13d
	jmp	.LBB19_26
.LBB19_20:                              # %cdj_put_param_int.exit70
	cmpl	$1, %eax
	je	.LBB19_27
# BB#21:
	movl	%eax, %ebp
	jmp	.LBB19_27
.LBB19_25:                              # %if.then.i.82
	movq	(%rbx), %rax
	movl	$.L.str.11, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	52(%rsp), %r13d
.LBB19_26:                              # %if.end.i.85
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
.LBB19_27:                              # %cdj_put_param_float.exit
	leaq	52(%rsp), %rdx
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	param_read_float
	testl	%eax, %eax
	jne	.LBB19_28
# BB#30:                                # %sw.bb.1.i.93
	movss	52(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.LBB19_33
# BB#31:                                # %sw.bb.1.i.93
	ucomiss	.LCPI19_1(%rip), %xmm0
	ja	.LBB19_33
# BB#32:                                # %sw.bb.1.if.end_crit_edge.i.94
	movd	%xmm0, 48(%rsp)         # 4-byte Folded Spill
	jmp	.LBB19_34
.LBB19_28:                              # %cdj_put_param_float.exit
	cmpl	$1, %eax
	je	.LBB19_35
# BB#29:
	movl	%eax, %ebp
	jmp	.LBB19_35
.LBB19_33:                              # %if.then.i.100
	movq	(%rbx), %rax
	movl	$.L.str.12, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	52(%rsp), %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
.LBB19_34:                              # %if.end.i.103
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
.LBB19_35:                              # %cdj_put_param_float.exit105
	leaq	52(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	callq	param_read_float
	testl	%eax, %eax
	jne	.LBB19_36
# BB#38:                                # %sw.bb.1.i.112
	movss	52(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.LBB19_41
# BB#39:                                # %sw.bb.1.i.112
	ucomiss	.LCPI19_1(%rip), %xmm0
	ja	.LBB19_41
# BB#40:                                # %sw.bb.1.if.end_crit_edge.i.113
	movd	%xmm0, 44(%rsp)         # 4-byte Folded Spill
	jmp	.LBB19_42
.LBB19_36:                              # %cdj_put_param_float.exit105
	cmpl	$1, %eax
	je	.LBB19_43
# BB#37:
	movl	%eax, %ebp
	jmp	.LBB19_43
.LBB19_41:                              # %if.then.i.119
	movq	(%rbx), %rax
	movl	$.L.str.13, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	52(%rsp), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
.LBB19_42:                              # %if.end.i.122
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
.LBB19_43:                              # %cdj_put_param_float.exit124
	leaq	52(%rsp), %rdx
	movl	$.L.str.14, %esi
	movq	%rbx, %rdi
	callq	param_read_float
	testl	%eax, %eax
	jne	.LBB19_44
# BB#46:                                # %sw.bb.1.i.131
	movss	52(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.LBB19_49
# BB#47:                                # %sw.bb.1.i.131
	ucomiss	.LCPI19_1(%rip), %xmm0
	ja	.LBB19_49
# BB#48:                                # %sw.bb.1.if.end_crit_edge.i.132
	movd	%xmm0, 40(%rsp)         # 4-byte Folded Spill
	jmp	.LBB19_50
.LBB19_44:                              # %cdj_put_param_float.exit124
	cmpl	$1, %eax
	je	.LBB19_51
# BB#45:
	movl	%eax, %ebp
	jmp	.LBB19_51
.LBB19_49:                              # %if.then.i.138
	movq	(%rbx), %rax
	movl	$.L.str.14, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	52(%rsp), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
.LBB19_50:                              # %if.end.i.141
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
.LBB19_51:                              # %cdj_put_param_float.exit143
	leaq	52(%rsp), %rdx
	movl	$.L.str.15, %esi
	movq	%rbx, %rdi
	callq	param_read_float
	testl	%eax, %eax
	jne	.LBB19_52
# BB#54:                                # %sw.bb.1.i.150
	movss	52(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.LBB19_57
# BB#55:                                # %sw.bb.1.i.150
	ucomiss	.LCPI19_1(%rip), %xmm0
	ja	.LBB19_57
# BB#56:                                # %sw.bb.1.if.end_crit_edge.i.151
	movd	%xmm0, 36(%rsp)         # 4-byte Folded Spill
	jmp	.LBB19_58
.LBB19_52:                              # %cdj_put_param_float.exit143
	cmpl	$1, %eax
	je	.LBB19_59
# BB#53:
	movl	%eax, %ebp
	jmp	.LBB19_59
.LBB19_57:                              # %if.then.i.157
	movq	(%rbx), %rax
	movl	$.L.str.15, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	52(%rsp), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
.LBB19_58:                              # %if.end.i.160
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
.LBB19_59:                              # %cdj_put_param_float.exit162
	leaq	52(%rsp), %rdx
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	callq	param_read_float
	testl	%eax, %eax
	jne	.LBB19_60
# BB#63:                                # %sw.bb.1.i.169
	movss	52(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.LBB19_66
# BB#64:                                # %sw.bb.1.i.169
	ucomiss	.LCPI19_1(%rip), %xmm0
	ja	.LBB19_66
# BB#65:                                # %sw.bb.1.if.end_crit_edge.i.170
	movd	%xmm0, 32(%rsp)         # 4-byte Folded Spill
	jmp	.LBB19_67
.LBB19_60:                              # %cdj_put_param_float.exit162
	cmpl	$1, %eax
	jne	.LBB19_62
# BB#61:                                # %sw.bb.i.165
	movl	%ebp, %eax
.LBB19_62:                              # %cdj_put_param_float.exit181
	testl	%eax, %eax
	movl	%eax, %ebp
	jns	.LBB19_68
	jmp	.LBB19_84
.LBB19_66:                              # %if.then.i.176
	movq	(%rbx), %rax
	movl	$.L.str.16, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	52(%rsp), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
.LBB19_67:                              # %if.end.i.179
	testl	%ebp, %ebp
	js	.LBB19_84
.LBB19_68:                              # %if.end
	movq	24(%rsp), %rbp          # 8-byte Reload
	testl	%ebp, %ebp
	je	.LBB19_69
# BB#70:                                # %if.else.i
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	movl	%r15d, 20(%rsp)         # 4-byte Spill
	movl	%r12d, 12(%rsp)         # 4-byte Spill
	movl	100(%r14), %r13d
	movw	108(%r14), %ax
	movzwl	%ax, %r12d
	cmpl	$3, %r13d
	jne	.LBB19_75
# BB#71:                                # %if.else.i
	movzwl	%ax, %eax
	cmpl	$8, %eax
	jne	.LBB19_75
# BB#72:                                # %land.lhs.true.7.i
	movl	$3, %eax
	cmpl	$0, 18472(%r14)
	je	.LBB19_74
# BB#73:                                # %select.mid
	movl	%r12d, %eax
.LBB19_74:                              # %select.end
	movl	%eax, %r12d
.LBB19_75:                              # %if.end.i.187
	xorl	%edx, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	cdj_set_bpp
	movq	%rbp, %r15
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB19_76
# BB#77:                                # %if.end.17.i
	movw	%r15w, 108(%r14)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gdev_prn_put_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB19_78
# BB#79:                                # %if.end.27.i
	xorl	%edx, %edx
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	cdj_set_bpp
	movzwl	108(%r14), %eax
	cmpl	%r12d, %eax
	movl	12(%rsp), %r12d         # 4-byte Reload
	movl	20(%rsp), %r15d         # 4-byte Reload
	movl	16(%rsp), %r13d         # 4-byte Reload
	je	.LBB19_83
# BB#80:                                # %land.lhs.true.40.i
	cmpl	$0, 84(%r14)
	je	.LBB19_83
# BB#81:                                # %if.then.42.i
	movq	%r14, %rdi
	callq	gs_closedevice
	jmp	.LBB19_82
.LBB19_69:                              # %if.then.i.184
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gdev_prn_put_params
.LBB19_82:                              # %cdj_put_param_bpp.exit
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB19_84
.LBB19_83:                              # %if.end.20
	movl	%r12d, 18484(%r14)
	movl	%r15d, 18488(%r14)
	movl	%r13d, 18512(%r14)
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, 18516(%r14)
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 18520(%r14)
	movl	40(%rsp), %eax          # 4-byte Reload
	movl	%eax, 18524(%r14)
	movl	36(%rsp), %eax          # 4-byte Reload
	movl	%eax, 18528(%r14)
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, 18532(%r14)
	xorl	%ebp, %ebp
	jmp	.LBB19_84
.LBB19_76:                              # %if.then.12.i
	movq	(%rbx), %rax
	movl	$.L.str.17, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movq	(%rbx), %rax
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	jmp	.LBB19_84
.LBB19_78:                              # %if.then.24.i
	movq	%r14, %rdi
	movl	%r12d, %esi
	movl	%r13d, %edx
	callq	cdj_set_bpp
.LBB19_84:                              # %cleanup
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	cdj850_put_params, .Lfunc_end19-cdj850_put_params
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4599075939470750515     # double 0.29999999999999999
.LCPI20_1:
	.quad	4603489467105573601     # double 0.58999999999999997
.LCPI20_2:
	.quad	4592590756007337001     # double 0.11
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI20_3:
	.long	1199570688              # float 65535
.LCPI20_4:
	.long	1593835520              # float 9.22337203E+18
	.text
	.align	16, 0x90
	.type	gdev_cmyk_map_cmyk_color,@function
gdev_cmyk_map_cmyk_color:               # @gdev_cmyk_map_cmyk_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp157:
	.cfi_def_cfa_offset 16
.Ltmp158:
	.cfi_offset %rbx, -16
	movzwl	(%rsi), %r10d
	movzwl	2(%rsi), %r9d
	movzwl	4(%rsi), %r8d
	movzwl	6(%rsi), %eax
	movzwl	108(%rdi), %r11d
	cmpl	$1, %r11d
	jne	.LBB20_2
# BB#1:                                 # %sw.bb
	orl	%r10d, %r9d
	orl	%r9d, %r8d
	orl	%r8d, %eax
	andl	$32768, %eax            # imm = 0x8000
	shrl	$15, %eax
	popq	%rbx
	retq
.LBB20_2:                               # %sw.default
	movzwl	%r9w, %esi
	movzwl	%r10w, %ecx
	cmpl	%esi, %ecx
	jne	.LBB20_5
# BB#3:                                 # %sw.default
	movzwl	%r8w, %edi
	cmpl	%edi, %esi
	jne	.LBB20_5
# BB#4:                                 # %if.then
	cvtsi2ssl	%ecx, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI20_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	.LCPI20_1(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	mulsd	.LCPI20_2(%rip), %xmm0
	addsd	%xmm2, %xmm0
	movzwl	%ax, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	.LCPI20_3(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	minss	%xmm0, %xmm1
	movss	.LCPI20_4(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	subss	%xmm0, %xmm2
	cvttss2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttss2si	%xmm1, %rax
	ucomiss	%xmm0, %xmm1
	cmovaeq	%rcx, %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
.LBB20_5:                               # %if.end
	movzwl	%ax, %ebx
	shrl	$2, %r11d
	movl	$16, %eax
	subl	%r11d, %eax
	movb	%al, %cl
	shrl	%cl, %ebx
	leal	(%r11,%r11,2), %ecx
	shll	%cl, %ebx
	movzwl	%r10w, %edi
	movb	%al, %cl
	shrl	%cl, %edi
	leal	(%r11,%r11), %ecx
	shll	%cl, %edi
	movzwl	%r9w, %edx
	movb	%al, %cl
	shrl	%cl, %edx
	movb	%r11b, %cl
	shll	%cl, %edx
	movzwl	%r8w, %esi
	movb	%al, %cl
	shrl	%cl, %esi
	orl	%edx, %esi
	orl	%ebx, %esi
	orl	%edi, %esi
	movslq	%esi, %rax
	popq	%rbx
	retq
.Lfunc_end20:
	.size	gdev_cmyk_map_cmyk_color, .Lfunc_end20-gdev_cmyk_map_cmyk_color
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI21_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	5                       # 0x5
	.long	5                       # 0x5
	.text
	.align	16, 0x90
	.type	cdj_set_bpp,@function
cdj_set_bpp:                            # @cdj_set_bpp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp160:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp161:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp162:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp163:
	.cfi_def_cfa_offset 48
.Ltmp164:
	.cfi_offset %rbx, -40
.Ltmp165:
	.cfi_offset %r14, -32
.Ltmp166:
	.cfi_offset %r15, -24
.Ltmp167:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	testl	%ebp, %ebp
	jne	.LBB21_10
# BB#1:                                 # %entry
	testl	%r14d, %r14d
	je	.LBB21_10
# BB#2:                                 # %if.then
	cmpl	$0, 18472(%rbx)
	je	.LBB21_11
# BB#3:                                 # %if.then.2
	movl	$1, %ebp
	cmpl	$1, %r14d
	je	.LBB21_12
# BB#4:                                 # %if.then.2
	cmpl	$4, %r14d
	jne	.LBB21_5
# BB#7:                                 # %sw.bb.4
	movzwl	108(%rbx), %eax
	cmpl	$32, %eax
	ja	.LBB21_9
# BB#8:                                 # %sw.bb.4
	movabsq	$4311810304, %rcx       # imm = 0x101010100
	btq	%rax, %rcx
	jb	.LBB21_11
.LBB21_9:                               # %sw.default.6
	movl	18476(%rbx), %ebp
.LBB21_10:                              # %if.end.8
	testl	%ebp, %ebp
	jne	.LBB21_12
.LBB21_11:                              # %if.then.11
	movzwl	108(%rbx), %ebp
.LBB21_12:                              # %if.end.14
	cmpl	$0, 18472(%rbx)
	jns	.LBB21_15
# BB#13:                                # %if.then.18
	movq	$gdev_cmyk_map_cmyk_color, 1264(%rbx)
	movq	$0, 1184(%rbx)
	movq	$gdev_cmyk_map_color_rgb, 1192(%rbx)
	cmpl	$0, 84(%rbx)
	je	.LBB21_15
# BB#14:                                # %if.then.22
	movq	%rbx, %rdi
	callq	gs_closedevice
.LBB21_15:                              # %if.end.24
	movl	$-15, %r15d
	cmpl	$15, %ebp
	jg	.LBB21_27
# BB#16:                                # %if.end.24
	cmpl	$1, %ebp
	je	.LBB21_36
# BB#17:                                # %if.end.24
	cmpl	$3, %ebp
	jne	.LBB21_18
# BB#42:                                # %sw.bb.101
	movl	$3, %ebp
	cmpl	$0, 18472(%rbx)
	jne	.LBB21_61
	jmp	.LBB21_43
.LBB21_27:                              # %if.end.24
	cmpl	$32, %ebp
	je	.LBB21_30
# BB#28:                                # %if.end.24
	cmpl	$24, %ebp
	jne	.LBB21_29
# BB#32:                                # %sw.bb.35
	movl	18472(%rbx), %eax
	testl	$-5, %r14d
	movl	$24, %ebp
	je	.LBB21_41
# BB#33:                                # %sw.bb.35
	testl	%eax, %eax
	je	.LBB21_41
# BB#34:                                # %if.else
	cmpl	$1, %r14d
	je	.LBB21_61
# BB#35:                                # %sw.epilog.107.thread119
	movl	$-1, 18472(%rbx)
	movl	$24, %ebp
	jmp	.LBB21_25
.LBB21_36:                              # %sw.bb.77
	cmpl	$1, %r14d
	jne	.LBB21_61
# BB#37:                                # %if.end.81
	movl	18472(%rbx), %eax
	movl	$1, %ebp
	testl	%eax, %eax
	jne	.LBB21_38
	jmp	.LBB21_51
.LBB21_18:                              # %if.end.24
	cmpl	$8, %ebp
	jne	.LBB21_61
# BB#19:                                # %sw.bb.51
	movl	18472(%rbx), %eax
	movl	$8, %ebp
	testl	%eax, %eax
	je	.LBB21_43
# BB#20:                                # %if.then.54
	movl	$8, %ebp
	testl	%r14d, %r14d
	je	.LBB21_41
# BB#21:                                # %if.then.56
	movl	$8, %ebp
	cmpl	$1, %r14d
	je	.LBB21_38
# BB#22:                                # %if.then.56
	cmpl	$4, %r14d
	je	.LBB21_41
# BB#23:                                # %if.then.56
	cmpl	$3, %r14d
	jne	.LBB21_61
# BB#24:                                # %sw.epilog.107.thread
	movl	$-1, 18472(%rbx)
	movl	$3, %ebp
	jmp	.LBB21_25
.LBB21_29:                              # %if.end.24
	cmpl	$16, %ebp
	jne	.LBB21_61
.LBB21_30:                              # %sw.bb.25
	movl	18472(%rbx), %eax
	testl	%eax, %eax
	je	.LBB21_41
# BB#31:                                # %switch.early.test
	movl	%r14d, %ecx
	orl	$4, %ecx
	cmpl	$4, %ecx
	je	.LBB21_41
	jmp	.LBB21_61
.LBB21_5:                               # %if.then.2
	movl	$-15, %r15d
	cmpl	$3, %r14d
	jne	.LBB21_61
# BB#6:                                 # %sw.bb.3
	movl	$24, %ebp
	jmp	.LBB21_12
.LBB21_38:                              # %land.lhs.true.84
	movzwl	108(%rbx), %ecx
	cmpl	%ecx, %ebp
	je	.LBB21_41
# BB#39:                                # %if.then.90
	movq	$0, 1264(%rbx)
	movq	$gdev_cmyk_map_rgb_color, 1184(%rbx)
	cmpl	$0, 84(%rbx)
	je	.LBB21_41
# BB#40:                                # %if.then.97
	movq	%rbx, %rdi
	callq	gs_closedevice
	movl	18472(%rbx), %eax
.LBB21_41:                              # %sw.epilog.107
	cmpl	$-1, %eax
	jne	.LBB21_43
.LBB21_25:                              # %if.then.111
	movq	$0, 1264(%rbx)
	movq	$gdev_pcl_map_rgb_color, 1184(%rbx)
	movq	$gdev_pcl_map_color_rgb, 1192(%rbx)
	cmpl	$0, 84(%rbx)
	je	.LBB21_43
# BB#26:                                # %if.then.120
	movq	%rbx, %rdi
	callq	gs_closedevice
.LBB21_43:                              # %if.end.123
	movl	%r14d, %eax
	cmpl	$4, %r14d
	ja	.LBB21_61
# BB#44:                                # %if.end.123
	jmpq	*.LJTI21_0(,%rax,8)
.LBB21_45:                              # %sw.bb.124
	cmpl	$1, %ebp
	je	.LBB21_51
# BB#46:                                # %sw.bb.124
	cmpl	$8, %ebp
	je	.LBB21_51
	jmp	.LBB21_61
.LBB21_47:                              # %sw.bb.132
	cmpl	$8, %ebp
	jl	.LBB21_49
# BB#48:                                # %sw.bb.132
	movl	18472(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB21_52
.LBB21_49:                              # %sw.bb.141
	movl	%ebp, %eax
	cmpl	$32, %ebp
	ja	.LBB21_61
# BB#50:                                # %sw.bb.141
	movabsq	$4311810314, %rcx       # imm = 0x10101010A
	btq	%rax, %rcx
	jae	.LBB21_61
.LBB21_51:                              # %sw.epilog.162thread-pre-split
	movl	18472(%rbx), %eax
.LBB21_52:                              # %sw.epilog.162
	testl	%eax, %eax
	je	.LBB21_59
# BB#53:                                # %if.then.165
	cmpl	$7, %ebp
	setg	%cl
	testl	%eax, %eax
	movzbl	%cl, %eax
	leal	1(%rax,%rax,2), %ecx
	leal	1(%rax,%rax), %edx
	cmovgl	%ecx, %edx
	testl	%r14d, %r14d
	cmovnel	%r14d, %edx
	movl	%edx, 100(%rbx)
	movl	$1, %esi
	cmpl	$1, %ebp
	movl	$1, %eax
	je	.LBB21_55
# BB#54:                                # %land.lhs.true.187
	cmpl	$1, %edx
	movl	$8, %eax
	cmovnel	%ebp, %eax
	cmpl	$8, %ebp
	cmovgel	%ebp, %eax
.LBB21_55:                              # %if.end.198
	movl	%eax, %ecx
	shrl	$2, %ecx
	movl	$1, %edi
	shll	%cl, %edi
	decl	%edi
	movl	%edi, 116(%rbx)
	cmpl	$7, %eax
	movl	$255, %ecx
	cmovlel	%esi, %ecx
	movl	%ecx, 112(%rbx)
	cmpl	$1, %edx
	jne	.LBB21_58
# BB#56:                                # %if.then.205
	cmpl	$1, %eax
	setg	%cl
	movzbl	%cl, %ecx
	addl	%ecx, %ecx
	cmpl	$7, %eax
	jmp	.LBB21_57
.LBB21_59:                              # %if.else.234
	cmpl	$8, %ebp
	setne	%al
	cmpl	$7, %ebp
	setg	%cl
	cmpl	$1, %ebp
	movzbl	%al, %eax
	leal	1(%rax,%rax), %eax
	cmovel	%ebp, %eax
	movl	%eax, 100(%rbx)
	setg	%al
	movzbl	%al, %eax
	movzbl	%cl, %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	pslld	$31, %xmm0
	psrad	$31, %xmm0
	movl	$2, %ecx
	movd	%ecx, %xmm1
	movl	$1, %ecx
	movd	%ecx, %xmm2
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movd	%eax, %xmm1
	addl	%eax, %eax
	movd	%eax, %xmm3
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movdqa	%xmm0, %xmm1
	pandn	%xmm2, %xmm1
	pand	.LCPI21_0(%rip), %xmm0
	por	%xmm1, %xmm0
	movdqu	%xmm0, 112(%rbx)
	movl	%ebp, %eax
	jmp	.LBB21_60
.LBB21_58:                              # %if.else.218
	cmpl	$1, %eax
	setg	%cl
	movzbl	%cl, %ecx
	addl	%ecx, %ecx
	cmpl	$8, %eax
.LBB21_57:                              # %if.end.269
	setg	%dl
	movzbl	%dl, %edx
	leal	2(%rdx,%rdx,2), %edx
	movl	%edx, 120(%rbx)
	movl	$5, %edx
	cmovlel	%ecx, %edx
	movl	%edx, 124(%rbx)
.LBB21_60:                              # %if.end.269
	leal	-2(%rax), %ecx
	cmpl	$6, %ecx
	movw	$8, %cx
	cmovaew	%ax, %cx
	movw	%cx, 108(%rbx)
	xorl	%r15d, %r15d
.LBB21_61:                              # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	cdj_set_bpp, .Lfunc_end21-cdj_set_bpp
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI21_0:
	.quad	.LBB21_51
	.quad	.LBB21_45
	.quad	.LBB21_61
	.quad	.LBB21_49
	.quad	.LBB21_47

	.text
	.align	16, 0x90
	.type	gdev_cmyk_map_rgb_color,@function
gdev_cmyk_map_rgb_color:                # @gdev_cmyk_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %r8d
	movzwl	2(%rsi), %edx
	movzwl	4(%rsi), %ecx
	movl	%edx, %eax
	andl	%r8d, %eax
	andl	%ecx, %eax
	imull	$65281, %eax, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	xorl	%eax, %eax
	cmpl	$-16777217, %esi        # imm = 0xFFFFFFFFFEFFFFFF
	ja	.LBB22_5
# BB#1:                                 # %if.else
	notl	%r8d
	notl	%edx
	notl	%ecx
	movzwl	108(%rdi), %esi
	xorl	%eax, %eax
	cmpl	$8, %esi
	jne	.LBB22_2
# BB#4:                                 # %sw.bb.24
	movzwl	%r8w, %eax
	imulq	$300, %rax, %rax        # imm = 0x12C
	movzwl	%dx, %edx
	imulq	$590, %rdx, %rdx        # imm = 0x24E
	addq	%rax, %rdx
	movzwl	%cx, %eax
	imulq	$110, %rax, %rax
	addq	%rdx, %rax
	shrq	$18, %rax
	jmp	.LBB22_5
.LBB22_2:                               # %if.else
	cmpl	$1, %esi
	jne	.LBB22_5
# BB#3:                                 # %sw.bb
	orl	%r8d, %edx
	orl	%edx, %ecx
	andl	$32768, %ecx            # imm = 0x8000
	shrl	$15, %ecx
	movq	%rcx, %rax
	retq
.LBB22_5:                               # %cleanup
	retq
.Lfunc_end22:
	.size	gdev_cmyk_map_rgb_color, .Lfunc_end22-gdev_cmyk_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	gdev_pcl_map_rgb_color,@function
gdev_pcl_map_rgb_color:                 # @gdev_pcl_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %edx
	movzwl	2(%rsi), %ecx
	movzwl	4(%rsi), %r11d
	movl	%ecx, %eax
	andl	%edx, %eax
	andl	%r11d, %eax
	imull	$65281, %eax, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	xorl	%eax, %eax
	cmpl	$-16777217, %esi        # imm = 0xFFFFFFFFFEFFFFFF
	ja	.LBB23_18
# BB#1:                                 # %if.else
	movl	%edx, %r10d
	notl	%r10d
	movl	%ecx, %r8d
	notl	%r8d
	movl	%r11d, %r9d
	notl	%r9d
	movzwl	108(%rdi), %esi
	xorl	%eax, %eax
	cmpl	$15, %esi
	jle	.LBB23_2
# BB#6:                                 # %if.else
	cmpl	$16, %esi
	je	.LBB23_14
# BB#7:                                 # %if.else
	cmpl	$24, %esi
	jne	.LBB23_8
# BB#15:                                # %sw.bb.61
	movzwl	%r9w, %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movzwl	%r8w, %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$16, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orl	%eax, %ecx
	movzwl	%r10w, %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$8, %eax
	andl	$16711680, %eax         # imm = 0xFF0000
	jmp	.LBB23_17
.LBB23_2:                               # %if.else
	cmpl	$1, %esi
	jne	.LBB23_3
# BB#12:                                # %sw.bb
	orl	%r10d, %r8d
	orl	%r8d, %r9d
	andl	$32768, %r9d            # imm = 0x8000
	shrl	$15, %r9d
	movq	%r9, %rax
	retq
.LBB23_14:                              # %sw.bb.49
	movzwl	%r9w, %eax
	shrl	$11, %eax
	shrl	$5, %r8d
	andl	$2016, %r8d             # imm = 0x7E0
	andl	$63488, %r10d           # imm = 0xF800
	orl	%r8d, %r10d
	orl	%eax, %r10d
	movq	%r10, %rax
	retq
.LBB23_8:                               # %if.else
	cmpl	$32, %esi
	jne	.LBB23_18
# BB#9:                                 # %sw.bb.85
	movzwl	%r10w, %eax
	movzwl	%dx, %edx
	movzwl	%cx, %ecx
	cmpl	%edx, %ecx
	jne	.LBB23_16
# BB#10:                                # %sw.bb.85
	movzwl	%r11w, %ecx
	cmpl	%edx, %ecx
	jne	.LBB23_16
# BB#11:                                # %cond.true
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	andl	$-16777216, %eax        # imm = 0xFFFFFFFFFF000000
	retq
.LBB23_3:                               # %if.else
	cmpl	$8, %esi
	jne	.LBB23_18
# BB#4:                                 # %sw.bb.24
	cmpl	$3, 100(%rdi)
	jl	.LBB23_13
# BB#5:                                 # %if.then.28
	movzwl	%r10w, %eax
	shrl	$15, %eax
	shrl	$14, %r8d
	andl	$2, %r8d
	orl	%eax, %r8d
	shrl	$13, %r9d
	andl	$4, %r9d
	orl	%r8d, %r9d
	movq	%r9, %rax
	retq
.LBB23_16:                              # %cond.false
	movzwl	%r8w, %ecx
	movzwl	%r9w, %edx
	imull	$65281, %edx, %edx      # imm = 0xFF01
	addl	$8388608, %edx          # imm = 0x800000
	shrl	$24, %edx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$16, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orl	%edx, %ecx
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	shlq	$16, %rax
.LBB23_17:                              # %cleanup
	orq	%rcx, %rax
.LBB23_18:                              # %cleanup
	retq
.LBB23_13:                              # %if.else.39
	movzwl	%r10w, %eax
	imulq	$306, %rax, %rax        # imm = 0x132
	movzwl	%r8w, %ecx
	imulq	$601, %rcx, %rcx        # imm = 0x259
	addq	%rax, %rcx
	movzwl	%r9w, %eax
	imulq	$117, %rax, %rax
	addq	%rcx, %rax
	shrq	$18, %rax
	retq
.Lfunc_end23:
	.size	gdev_pcl_map_rgb_color, .Lfunc_end23-gdev_pcl_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	gdev_pcl_map_color_rgb,@function
gdev_pcl_map_color_rgb:                 # @gdev_pcl_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movzwl	108(%rdi), %ecx
	cmpl	$15, %ecx
	jle	.LBB24_1
# BB#5:                                 # %entry
	cmpl	$16, %ecx
	je	.LBB24_11
# BB#6:                                 # %entry
	cmpl	$24, %ecx
	jne	.LBB24_7
# BB#12:                                # %sw.bb.93
	notl	%eax
	movw	$0, (%rdx)
	movzbl	%ah, %ecx  # NOREX
	imull	$257, %ecx, %ecx        # imm = 0x101
	movw	%cx, 2(%rdx)
	movzbl	%al, %eax
	imull	$257, %eax, %eax        # imm = 0x101
	jmp	.LBB24_13
.LBB24_1:                               # %entry
	cmpl	$1, %ecx
	jne	.LBB24_2
# BB#9:                                 # %sw.bb
	xorl	$-2, %eax
	incl	%eax
	movw	%ax, 4(%rdx)
	movw	%ax, 2(%rdx)
	movw	%ax, (%rdx)
	xorl	%eax, %eax
	retq
.LBB24_11:                              # %sw.bb.37
	notl	%eax
	movzwl	%ax, %ecx
	movl	%ecx, %esi
	shrl	$11, %esi
	imull	$2114, %esi, %esi       # imm = 0x842
	movl	%ecx, %edi
	shrl	$15, %edi
	orl	%esi, %edi
	movw	%di, (%rdx)
	shrl	$6, %ecx
	andl	$63, %ecx
	imull	$1040, %ecx, %esi       # imm = 0x410
	shrl	$2, %ecx
	orl	%esi, %ecx
	movw	%cx, 2(%rdx)
	andl	$31, %eax
	imull	$2114, %eax, %ecx       # imm = 0x842
	shrl	$4, %eax
	orl	%ecx, %eax
	movw	%ax, 4(%rdx)
	xorl	%eax, %eax
	retq
.LBB24_7:                               # %entry
	cmpl	$32, %ecx
	jne	.LBB24_14
# BB#8:                                 # %sw.bb.128
	movq	%rax, %rcx
	shrq	$24, %rcx
	imull	$-257, %ecx, %ecx       # imm = 0xFFFFFFFFFFFFFEFF
	movl	%eax, %esi
	shrl	$16, %esi
	movzbl	%sil, %esi
	imull	$-257, %esi, %esi       # imm = 0xFFFFFFFFFFFFFEFF
	leal	65535(%rcx,%rsi), %esi
	movw	%si, (%rdx)
	movzbl	%ah, %esi  # NOREX
	imull	$-257, %esi, %esi       # imm = 0xFFFFFFFFFFFFFEFF
	leal	65535(%rcx,%rsi), %esi
	movw	%si, 2(%rdx)
	movzbl	%al, %eax
	imull	$-257, %eax, %eax       # imm = 0xFFFFFFFFFFFFFEFF
	leal	65535(%rcx,%rax), %eax
	jmp	.LBB24_13
.LBB24_2:                               # %entry
	cmpl	$8, %ecx
	jne	.LBB24_14
# BB#3:                                 # %sw.bb.6
	cmpl	$3, 100(%rdi)
	jl	.LBB24_10
# BB#4:                                 # %if.then
	movzwl	%ax, %eax
	xorl	$7, %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	negl	%ecx
	movw	%cx, (%rdx)
	movl	%eax, %ecx
	shrl	%ecx
	andl	$1, %ecx
	negl	%ecx
	movw	%cx, 2(%rdx)
	shrl	$2, %eax
	negl	%eax
.LBB24_13:                              # %sw.epilog
	movw	%ax, 4(%rdx)
.LBB24_14:                              # %sw.epilog
	xorl	%eax, %eax
	retq
.LBB24_10:                              # %if.else
	xorl	$255, %eax
	imull	$257, %eax, %eax        # imm = 0x101
	movw	%ax, 4(%rdx)
	movw	%ax, 2(%rdx)
	movw	%ax, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end24:
	.size	gdev_pcl_map_color_rgb, .Lfunc_end24-gdev_pcl_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	Mode10,@function
Mode10:                                 # @Mode10
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp169:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp170:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp171:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp172:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp173:
	.cfi_def_cfa_offset 56
.Ltmp174:
	.cfi_offset %rbx, -56
.Ltmp175:
	.cfi_offset %r12, -48
.Ltmp176:
	.cfi_offset %r13, -40
.Ltmp177:
	.cfi_offset %r14, -32
.Ltmp178:
	.cfi_offset %r15, -24
.Ltmp179:
	.cfi_offset %rbp, -16
	movq	%rsi, -16(%rsp)         # 8-byte Spill
	movq	%rdi, -72(%rsp)         # 8-byte Spill
	leal	-1(%rdi), %r11d
	movq	%r11, -88(%rsp)         # 8-byte Spill
	leal	(%r11,%r11,2), %r10d
	movq	%r10, -56(%rsp)         # 8-byte Spill
	movzbl	(%rsi,%r10), %r8d
	movl	%r8d, -60(%rsp)         # 4-byte Spill
	shll	$16, %r8d
	movzbl	1(%rsi,%r10), %r14d
	movl	%r14d, -44(%rsp)        # 4-byte Spill
	movl	%r14d, %eax
	shll	$8, %eax
	orl	%r8d, %eax
	movzbl	2(%rsi,%r10), %r9d
	movl	%r9d, -40(%rsp)         # 4-byte Spill
	andl	$254, %r9d
	orl	%r9d, %eax
	movl	%eax, -36(%rsp)         # 4-byte Spill
	leal	-6(%rdi,%rdi,2), %ebx
	movzbl	(%rsi,%rbx), %edi
	shll	$16, %edi
	movzbl	1(%rsi,%rbx), %ebp
	shll	$8, %ebp
	orl	%edi, %ebp
	movzbl	2(%rsi,%rbx), %edi
	andl	$254, %edi
	orl	%ebp, %edi
	movzbl	(%rdx,%r10), %ebp
	shll	$16, %ebp
	movzbl	1(%rdx,%r10), %ebx
	shll	$8, %ebx
	orl	%ebp, %ebx
	movzbl	2(%rdx,%r10), %ebp
	andl	$254, %ebp
	orl	%ebx, %ebp
	cmpl	%eax, %edi
	movb	%r14b, %bl
	je	.LBB25_2
# BB#1:                                 # %entry
	cmpl	-36(%rsp), %ebp         # 4-byte Folded Reload
	movl	-44(%rsp), %eax         # 4-byte Reload
	movb	%al, %bl
	jne	.LBB25_5
	.align	16, 0x90
.LBB25_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	incb	%bl
	movzbl	%bl, %eax
	shll	$8, %eax
	orl	%r8d, %eax
	orl	%r9d, %eax
	cmpl	%eax, %edi
	je	.LBB25_2
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB25_2 Depth=1
	cmpl	%eax, %ebp
	je	.LBB25_2
# BB#4:                                 # %while.cond.do.body.preheader_crit_edge
	movq	-56(%rsp), %rax         # 8-byte Reload
	movb	%bl, 1(%rsi,%rax)
.LBB25_5:                               # %do.body.preheader
	movl	-40(%rsp), %eax         # 4-byte Reload
	andb	$-2, %al
	movl	%eax, -40(%rsp)         # 4-byte Spill
	movq	-72(%rsp), %rax         # 8-byte Reload
	leal	-2(%rax), %eax
	movl	%eax, -92(%rsp)         # 4-byte Spill
	xorl	%r9d, %r9d
	movl	$16777214, -76(%rsp)    # 4-byte Folded Spill
                                        # imm = 0xFFFFFE
	movq	%rcx, %r8
	movq	%rcx, -104(%rsp)        # 8-byte Spill
	movq	%rdx, -24(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB25_6:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_7 Depth 2
                                        #     Child Loop BB25_10 Depth 2
                                        #     Child Loop BB25_70 Depth 2
                                        #     Child Loop BB25_83 Depth 2
                                        #     Child Loop BB25_36 Depth 2
                                        #     Child Loop BB25_47 Depth 2
                                        #     Child Loop BB25_55 Depth 2
	leal	-1(%r9), %r12d
	leal	-3(%r9,%r9,2), %ebx
	.align	16, 0x90
.LBB25_7:                               # %while.cond.8
                                        #   Parent Loop BB25_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	$3, %ebx
	movzbl	(%rdx,%rbx), %ecx
	shll	$16, %ecx
	movzbl	1(%rdx,%rbx), %edi
	shll	$8, %edi
	orl	%ecx, %edi
	movzbl	2(%rdx,%rbx), %ecx
	andl	$254, %ecx
	orl	%edi, %ecx
	movzbl	(%rsi,%rbx), %edi
	shll	$16, %edi
	movzbl	1(%rsi,%rbx), %ebp
	shll	$8, %ebp
	orl	%edi, %ebp
	movzbl	2(%rsi,%rbx), %edi
	andl	$254, %edi
	orl	%ebp, %edi
	incl	%r12d
	cmpl	%edi, %ecx
	je	.LBB25_7
# BB#8:                                 # %while.end.14
                                        #   in Loop: Header=BB25_6 Depth=1
	movl	%r12d, %r15d
	subl	%r9d, %r15d
	cmpl	%r11d, %r12d
	jne	.LBB25_9
# BB#13:                                # %if.then
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	-56(%rsp), %rax         # 8-byte Reload
	movl	-60(%rsp), %ecx         # 4-byte Reload
	movb	%cl, (%rsi,%rax)
	movl	-44(%rsp), %ecx         # 4-byte Reload
	movb	%cl, 1(%rsi,%rax)
	movl	-40(%rsp), %ecx         # 4-byte Reload
	movb	%cl, 2(%rsi,%rax)
	movzbl	(%rdx,%rbx), %ecx
	shll	$16, %ecx
	movzbl	1(%rdx,%rbx), %edi
	shll	$8, %edi
	orl	%ecx, %edi
	movzbl	2(%rdx,%rbx), %ecx
	andl	$254, %ecx
	orl	%edi, %ecx
	cmpl	-36(%rsp), %ecx         # 4-byte Folded Reload
	je	.LBB25_90
# BB#14:                                #   in Loop: Header=BB25_6 Depth=1
	xorl	%r10d, %r10d
	movl	$1, %eax
	movq	-72(%rsp), %r14         # 8-byte Reload
	jmp	.LBB25_44
	.align	16, 0x90
.LBB25_9:                               # %while.cond.27.preheader
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	%r8, %r13
	leal	3(%r12,%r12,2), %r10d
	movl	%r12d, %r14d
	.align	16, 0x90
.LBB25_10:                              # %while.cond.27
                                        #   Parent Loop BB25_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %eax
	leal	1(%rax), %r14d
	movl	%r10d, %r8d
	movzbl	(%rsi,%r8), %r9d
	shll	$16, %r9d
	movzbl	1(%rsi,%r8), %ebp
	shll	$8, %ebp
	orl	%r9d, %ebp
	movzbl	2(%rsi,%r8), %ecx
	andl	$254, %ecx
	orl	%ebp, %ecx
	addl	$3, %r10d
	cmpl	%ecx, %edi
	je	.LBB25_10
# BB#11:                                # %while.end.33
                                        #   in Loop: Header=BB25_6 Depth=1
	xorl	%r10d, %r10d
	subl	%r12d, %eax
	jne	.LBB25_15
# BB#12:                                #   in Loop: Header=BB25_6 Depth=1
	xorl	%r8d, %r8d
	movl	%r12d, %r14d
	jmp	.LBB25_23
	.align	16, 0x90
.LBB25_15:                              # %if.then.37
                                        #   in Loop: Header=BB25_6 Depth=1
	incl	%eax
	movl	$128, %r8d
	cmpl	%edi, -76(%rsp)         # 4-byte Folded Reload
	jne	.LBB25_17
# BB#16:                                #   in Loop: Header=BB25_6 Depth=1
	movl	$96, %r10d
	jmp	.LBB25_23
.LBB25_17:                              # %if.else.43
                                        #   in Loop: Header=BB25_6 Depth=1
	leal	3(%rbx), %r9d
	movzbl	(%rdx,%r9), %ebp
	shll	$16, %ebp
	movzbl	1(%rdx,%r9), %ecx
	shll	$8, %ecx
	orl	%ebp, %ecx
	movzbl	2(%rdx,%r9), %ebp
	andl	$254, %ebp
	orl	%ecx, %ebp
	cmpl	%edi, %ebp
	jne	.LBB25_19
# BB#18:                                #   in Loop: Header=BB25_6 Depth=1
	movl	$64, %r10d
	jmp	.LBB25_23
.LBB25_19:                              # %if.else.50
                                        #   in Loop: Header=BB25_6 Depth=1
	testl	%r12d, %r12d
	je	.LBB25_22
# BB#20:                                # %land.lhs.true
                                        #   in Loop: Header=BB25_6 Depth=1
	addl	$-3, %ebx
	movzbl	(%rsi,%rbx), %ecx
	shll	$16, %ecx
	movzbl	1(%rsi,%rbx), %ebp
	shll	$8, %ebp
	orl	%ecx, %ebp
	movzbl	2(%rsi,%rbx), %ecx
	andl	$254, %ecx
	orl	%ebp, %ecx
	cmpl	%edi, %ecx
	jne	.LBB25_22
# BB#21:                                #   in Loop: Header=BB25_6 Depth=1
	movl	$32, %r10d
	jmp	.LBB25_23
.LBB25_22:                              # %if.else.60
                                        #   in Loop: Header=BB25_6 Depth=1
	movl	%edi, -76(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB25_23:                              # %if.end.64
                                        #   in Loop: Header=BB25_6 Depth=1
	cmpl	%edi, -36(%rsp)         # 4-byte Folded Reload
	jne	.LBB25_27
# BB#24:                                # %if.end.64
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	%rax, %rdi
	cmpl	%r11d, %r14d
	jne	.LBB25_25
# BB#26:                                # %if.then.70
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	-56(%rsp), %rax         # 8-byte Reload
	movl	-60(%rsp), %ecx         # 4-byte Reload
	movb	%cl, (%rsi,%rax)
	movl	-44(%rsp), %ecx         # 4-byte Reload
	movb	%cl, 1(%rsi,%rax)
	movl	-40(%rsp), %ecx         # 4-byte Reload
	movb	%cl, 2(%rsi,%rax)
	movq	%rdi, %rax
	incl	%eax
	movq	-72(%rsp), %r14         # 8-byte Reload
	jmp	.LBB25_27
.LBB25_25:                              #   in Loop: Header=BB25_6 Depth=1
	movq	%rdi, %rax
.LBB25_27:                              # %if.end.74
                                        #   in Loop: Header=BB25_6 Depth=1
	testl	%eax, %eax
	je	.LBB25_28
# BB#42:                                # %if.end.118
                                        #   in Loop: Header=BB25_6 Depth=1
	testl	%r8d, %r8d
	je	.LBB25_43
# BB#67:                                # %if.else.217
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	%rax, %r12
	leal	-2(%r12), %eax
	cmpl	$3, %r15d
	movl	%r15d, %ecx
	movl	$3, %edi
	cmoval	%edi, %ecx
	shll	$3, %ecx
	cmpl	$7, %eax
	movl	$7, %edi
	cmoval	%edi, %eax
	orl	%r10d, %ecx
	orl	%r8d, %ecx
	orl	%eax, %ecx
	cmpl	$3, %r15d
	movb	%cl, (%r13)
	leaq	1(%r13), %rcx
	movq	%r14, %r13
	jb	.LBB25_68
# BB#69:                                # %if.then.244
                                        #   in Loop: Header=BB25_6 Depth=1
	addl	$-3, %r15d
	.align	16, 0x90
.LBB25_70:                              # %do.body.248
                                        #   Parent Loop BB25_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, %r15d             # imm = 0x100
	movl	$255, %edi
	cmovll	%r15d, %edi
	leaq	1(%rcx), %r8
	cmpl	$255, %r15d
	movb	%r15b, %bl
	jl	.LBB25_72
# BB#71:                                # %do.body.248
                                        #   in Loop: Header=BB25_70 Depth=2
	movb	$-1, %bl
.LBB25_72:                              # %do.body.248
                                        #   in Loop: Header=BB25_70 Depth=2
	movb	%bl, (%rcx)
	jne	.LBB25_74
# BB#73:                                # %if.then.259
                                        #   in Loop: Header=BB25_70 Depth=2
	movb	$0, 1(%rcx)
	addq	$2, %rcx
	movq	%rcx, %r8
.LBB25_74:                              # %do.cond.262
                                        #   in Loop: Header=BB25_70 Depth=2
	movzbl	%dil, %eax
	subl	%eax, %r15d
	movq	%r8, %rcx
	jne	.LBB25_70
	jmp	.LBB25_75
.LBB25_28:                              # %if.then.77
                                        #   in Loop: Header=BB25_6 Depth=1
	leal	(%r14,%r14,2), %edi
	movzbl	(%rsi,%rdi), %ecx
	shll	$16, %ecx
	movzbl	1(%rsi,%rdi), %ebp
	shll	$8, %ebp
	orl	%ecx, %ebp
	movzbl	2(%rsi,%rdi), %ecx
	andl	$254, %ecx
	orl	%ebp, %ecx
	movl	$96, %r10d
	cmpl	%ecx, -76(%rsp)         # 4-byte Folded Reload
	jne	.LBB25_30
# BB#29:                                #   in Loop: Header=BB25_6 Depth=1
	movl	-92(%rsp), %eax         # 4-byte Reload
	jmp	.LBB25_35
.LBB25_68:                              #   in Loop: Header=BB25_6 Depth=1
	movq	%rcx, %r8
.LBB25_75:                              # %if.end.267
                                        #   in Loop: Header=BB25_6 Depth=1
	testl	%r10d, %r10d
	jne	.LBB25_81
# BB#76:                                # %if.then.271
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	%r8, %r14
	movl	%r13d, %eax
	subl	%r12d, %eax
	leal	(%rax,%rax,2), %eax
	movzbl	(%rsi,%rax), %r9d
	movzbl	(%rdx,%rax), %r10d
	movq	%rdx, %rcx
	movl	%r10d, %edx
	negl	%edx
	movzbl	1(%rsi,%rax), %ebp
	movzbl	1(%rcx,%rax), %r8d
	movl	%r8d, %ebx
	negl	%ebx
	movzbl	2(%rsi,%rax), %edi
	movq	%rsi, %r15
	andl	$254, %edi
	movzbl	2(%rcx,%rax), %eax
	movq	%rcx, %r11
	andl	$254, %eax
	movl	%eax, %ecx
	negl	%ecx
	leal	16(%r9,%rdx), %edx
	leal	16(%rbp,%rbx), %ebx
	orl	%edx, %ebx
	cmpl	$31, %ebx
	ja	.LBB25_79
# BB#77:                                # %if.then.271
                                        #   in Loop: Header=BB25_6 Depth=1
	leal	32(%rdi,%rcx), %ecx
	cmpl	$62, %ecx
	ja	.LBB25_79
# BB#78:                                # %ShortDelta.exit
                                        #   in Loop: Header=BB25_6 Depth=1
	subl	%r10d, %r9d
	subl	%r8d, %ebp
	subl	%eax, %edi
	shll	$5, %ebp
	shrl	%edi
	andl	$31, %edi
	orl	%ebp, %edi
	shll	$10, %r9d
	andl	$768, %ebp              # imm = 0x300
	orl	%r9d, %ebp
	shrl	$8, %ebp
	orl	$128, %ebp
	movq	%r14, %r8
	movb	%bpl, (%r8)
	movb	%dil, 1(%r8)
	addq	$2, %r8
	jmp	.LBB25_80
.LBB25_30:                              # %if.else.82
                                        #   in Loop: Header=BB25_6 Depth=1
	leal	3(%rdi), %r8d
	movzbl	(%rdx,%r8), %ebx
	shll	$16, %ebx
	movzbl	1(%rdx,%r8), %ebp
	shll	$8, %ebp
	orl	%ebx, %ebp
	movzbl	2(%rdx,%r8), %ebx
	andl	$254, %ebx
	orl	%ebp, %ebx
	movl	$64, %r10d
	cmpl	%ecx, %ebx
	jne	.LBB25_32
# BB#31:                                #   in Loop: Header=BB25_6 Depth=1
	movl	-92(%rsp), %eax         # 4-byte Reload
	jmp	.LBB25_35
.LBB25_32:                              # %if.else.88
                                        #   in Loop: Header=BB25_6 Depth=1
	testl	%r14d, %r14d
	movl	-92(%rsp), %eax         # 4-byte Reload
	je	.LBB25_34
# BB#33:                                # %land.lhs.true.91
                                        #   in Loop: Header=BB25_6 Depth=1
	addl	$-3, %edi
	movzbl	(%rsi,%rdi), %ebp
	shll	$16, %ebp
	movzbl	1(%rsi,%rdi), %ebx
	shll	$8, %ebx
	orl	%ebp, %ebx
	movzbl	2(%rsi,%rdi), %edi
	andl	$254, %edi
	orl	%ebx, %edi
	movl	$32, %r10d
	cmpl	%ecx, %edi
	je	.LBB25_35
.LBB25_34:                              # %if.else.97
                                        #   in Loop: Header=BB25_6 Depth=1
	xorl	%r10d, %r10d
	movl	%ecx, -76(%rsp)         # 4-byte Spill
.LBB25_35:                              # %if.end.100
                                        #   in Loop: Header=BB25_6 Depth=1
	leal	6(%r14,%r14,2), %r9d
	movq	%r14, %rcx
	movq	%rcx, %r12
	.align	16, 0x90
.LBB25_36:                              # %do.body.101
                                        #   Parent Loop BB25_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %r8d
	cmpl	%r8d, %eax
	je	.LBB25_37
# BB#38:                                # %if.end.107
                                        #   in Loop: Header=BB25_36 Depth=2
	leal	-3(%r9), %ebx
	movzbl	(%rsi,%rbx), %edi
	shll	$16, %edi
	movzbl	1(%rsi,%rbx), %ecx
	shll	$8, %ecx
	orl	%edi, %ecx
	movzbl	2(%rsi,%rbx), %ebp
	andl	$254, %ebp
	orl	%ecx, %ebp
	movl	%r9d, %r14d
	movzbl	(%rsi,%r14), %edi
	shll	$16, %edi
	movzbl	1(%rsi,%r14), %ecx
	shll	$8, %ecx
	orl	%edi, %ecx
	movzbl	2(%rsi,%r14), %edi
	andl	$254, %edi
	orl	%ecx, %edi
	cmpl	%edi, %ebp
	je	.LBB25_40
# BB#39:                                # %land.rhs
                                        #   in Loop: Header=BB25_36 Depth=2
	leal	1(%r8), %r14d
	movzbl	(%rdx,%rbx), %ecx
	shll	$16, %ecx
	movzbl	1(%rdx,%rbx), %edi
	shll	$8, %edi
	orl	%ecx, %edi
	movzbl	2(%rdx,%rbx), %ecx
	andl	$254, %ecx
	orl	%edi, %ecx
	addl	$3, %r9d
	cmpl	%ecx, %ebp
	jne	.LBB25_36
.LBB25_40:                              # %if.end.107.do.end.loopexit_crit_edge
                                        #   in Loop: Header=BB25_6 Depth=1
	movl	%eax, -92(%rsp)         # 4-byte Spill
	incl	%r8d
	jmp	.LBB25_41
.LBB25_37:                              # %if.then.105
                                        #   in Loop: Header=BB25_6 Depth=1
	movl	%eax, -92(%rsp)         # 4-byte Spill
	movq	-56(%rsp), %rax         # 8-byte Reload
	movl	-60(%rsp), %ecx         # 4-byte Reload
	movb	%cl, (%rsi,%rax)
	movl	-44(%rsp), %ecx         # 4-byte Reload
	movb	%cl, 1(%rsi,%rax)
	movl	-40(%rsp), %ecx         # 4-byte Reload
	movb	%cl, 2(%rsi,%rax)
	addl	$2, %r8d
.LBB25_41:                              # %if.then.122
                                        #   in Loop: Header=BB25_6 Depth=1
	movl	%r8d, %eax
	subl	%r12d, %eax
	movl	%r8d, %r14d
.LBB25_43:                              #   in Loop: Header=BB25_6 Depth=1
	movq	%r13, %r8
.LBB25_44:                              # %if.then.122
                                        #   in Loop: Header=BB25_6 Depth=1
	leal	-1(%rax), %r12d
	movq	%rax, %rbp
	cmpl	$3, %r15d
	movl	%r15d, %edi
	movl	$3, %eax
	cmoval	%eax, %edi
	shll	$3, %edi
	cmpl	$7, %r12d
	movl	%r12d, %ecx
	movl	$7, %eax
	cmoval	%eax, %ecx
	orl	%r10d, %edi
	orl	%ecx, %edi
	leaq	1(%r8), %rcx
	cmpl	$3, %r15d
	movb	%dil, (%r8)
	jb	.LBB25_45
# BB#46:                                # %if.then.148
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	%r14, -32(%rsp)         # 8-byte Spill
	addl	$-3, %r15d
	movq	%rbp, %rax
	.align	16, 0x90
.LBB25_47:                              # %do.body.150
                                        #   Parent Loop BB25_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, %r15d             # imm = 0x100
	movl	$255, %edi
	cmovll	%r15d, %edi
	leaq	1(%rcx), %r8
	cmpl	$255, %r15d
	movb	%r15b, %bl
	jl	.LBB25_49
# BB#48:                                # %do.body.150
                                        #   in Loop: Header=BB25_47 Depth=2
	movb	$-1, %bl
.LBB25_49:                              # %do.body.150
                                        #   in Loop: Header=BB25_47 Depth=2
	movb	%bl, (%rcx)
	jne	.LBB25_51
# BB#50:                                # %if.then.161
                                        #   in Loop: Header=BB25_47 Depth=2
	movb	$0, 1(%rcx)
	addq	$2, %rcx
	movq	%rcx, %r8
.LBB25_51:                              # %do.cond.164
                                        #   in Loop: Header=BB25_47 Depth=2
	movzbl	%dil, %ecx
	subl	%ecx, %r15d
	movq	%r8, %rcx
	jne	.LBB25_47
	jmp	.LBB25_52
	.align	16, 0x90
.LBB25_45:                              #   in Loop: Header=BB25_6 Depth=1
	movq	%r14, -32(%rsp)         # 8-byte Spill
	movq	%rcx, %r8
	movq	%rbp, %rax
.LBB25_52:                              # %if.end.168
                                        #   in Loop: Header=BB25_6 Depth=1
	cmpl	$1, %r10d
	movl	$1, %r14d
	sbbl	$-1, %r14d
	movl	%eax, %r15d
	subl	%r14d, %r15d
	jae	.LBB25_54
# BB#53:                                #   in Loop: Header=BB25_6 Depth=1
	movq	-32(%rsp), %r9          # 8-byte Reload
	jmp	.LBB25_89
	.align	16, 0x90
.LBB25_54:                              # %for.body.lr.ph
                                        #   in Loop: Header=BB25_6 Depth=1
	testl	%r10d, %r10d
	cmovel	%eax, %r12d
	movq	%rax, %rsi
	movq	-32(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rax,2), %r10d
	leal	(%r12,%r12,2), %ecx
	subl	%ecx, %r10d
	.align	16, 0x90
.LBB25_55:                              # %for.body
                                        #   Parent Loop BB25_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r8, -8(%rsp)           # 8-byte Spill
	movl	%r10d, %ebp
	movq	-16(%rsp), %rax         # 8-byte Reload
	movzbl	(%rax,%rbp), %edi
	movzbl	(%rdx,%rbp), %r12d
	movl	%r12d, %r11d
	negl	%r11d
	movzbl	1(%rax,%rbp), %ebx
	movzbl	1(%rdx,%rbp), %r8d
	movl	%r8d, %r13d
	negl	%r13d
	movzbl	2(%rax,%rbp), %ecx
	andl	$254, %ecx
	movzbl	2(%rdx,%rbp), %r9d
	andl	$254, %r9d
	movl	%r9d, %ebp
	negl	%ebp
	leal	16(%rdi,%r11), %eax
	leal	16(%rbx,%r13), %edx
	orl	%eax, %edx
	cmpl	$31, %edx
	ja	.LBB25_58
# BB#56:                                # %for.body
                                        #   in Loop: Header=BB25_55 Depth=2
	leal	32(%rcx,%rbp), %eax
	cmpl	$62, %eax
	ja	.LBB25_58
# BB#57:                                # %ShortDelta.exit270
                                        #   in Loop: Header=BB25_55 Depth=2
	subl	%r12d, %edi
	subl	%r8d, %ebx
	subl	%r9d, %ecx
	shll	$5, %ebx
	shrl	%ecx
	andl	$31, %ecx
	orl	%ebx, %ecx
	shll	$10, %edi
	andl	$768, %ebx              # imm = 0x300
	orl	%edi, %ebx
	shrl	$8, %ebx
	orl	$128, %ebx
	movq	-8(%rsp), %r8           # 8-byte Reload
	movb	%bl, (%r8)
	leaq	2(%r8), %rdi
	movl	%ecx, %ebp
	movl	$2, %ecx
	jmp	.LBB25_59
	.align	16, 0x90
.LBB25_58:                              # %if.else.185
                                        #   in Loop: Header=BB25_55 Depth=2
	movl	%edi, %eax
	shll	$16, %eax
	shll	$8, %ebx
	leal	(%rax,%rbx), %ebp
	orl	%ebx, %ecx
	shrl	%ecx
	shrb	%dil
	movq	-8(%rsp), %r8           # 8-byte Reload
	movb	%dil, (%r8)
	shrl	$9, %ebp
	leaq	3(%r8), %rdi
	movb	%cl, 2(%r8)
	movl	$3, %ecx
.LBB25_59:                              # %if.end.196
                                        #   in Loop: Header=BB25_55 Depth=2
	movb	%bpl, 1(%r8)
	cmpl	$8, %r14d
	jb	.LBB25_60
# BB#61:                                # %land.lhs.true.199
                                        #   in Loop: Header=BB25_55 Depth=2
	leal	-8(%r14), %eax
	movq	%rax, %rdx
	movl	$2155905153, %ebp       # imm = 0x80808081
	imulq	%rbp, %rdx
	shrq	$39, %rdx
	imull	$255, %edx, %edx
	cmpl	%edx, %eax
	je	.LBB25_62
.LBB25_60:                              #   in Loop: Header=BB25_55 Depth=2
	movq	%rdi, %r8
	jmp	.LBB25_65
.LBB25_62:                              # %if.then.203
                                        #   in Loop: Header=BB25_55 Depth=2
	cmpl	$255, %r15d
	movb	$-1, %bl
	ja	.LBB25_64
# BB#63:                                # %if.then.203
                                        #   in Loop: Header=BB25_55 Depth=2
	movb	%r15b, %bl
.LBB25_64:                              # %if.then.203
                                        #   in Loop: Header=BB25_55 Depth=2
	leaq	1(%r8,%rcx), %r8
	movb	%bl, (%rdi)
	.align	16, 0x90
.LBB25_65:                              # %if.end.214
                                        #   in Loop: Header=BB25_55 Depth=2
	movq	-24(%rsp), %rdx         # 8-byte Reload
	incl	%r14d
	addl	$3, %r10d
	decl	%r15d
	cmpl	%r14d, %esi
	jae	.LBB25_55
# BB#66:                                #   in Loop: Header=BB25_6 Depth=1
	movq	-88(%rsp), %r11         # 8-byte Reload
	movq	-16(%rsp), %rsi         # 8-byte Reload
	movq	-32(%rsp), %r9          # 8-byte Reload
	jmp	.LBB25_89
.LBB25_79:                              # %if.else.283
                                        #   in Loop: Header=BB25_6 Depth=1
	movl	%r9d, %eax
	shll	$16, %eax
	shll	$8, %ebp
	leal	(%rax,%rbp), %eax
	orl	%ebp, %edi
	shrl	%edi
	shrb	%r9b
	movq	%r14, %r8
	movb	%r9b, (%r8)
	shrl	$9, %eax
	movb	%al, 1(%r8)
	movb	%dil, 2(%r8)
	addq	$3, %r8
.LBB25_80:                              # %if.end.296
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	%r11, %rdx
	movq	-88(%rsp), %r11         # 8-byte Reload
	movq	%r15, %rsi
.LBB25_81:                              # %if.end.296
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	%r13, %r9
	cmpl	$9, %r12d
	jb	.LBB25_89
# BB#82:                                # %if.then.299
                                        #   in Loop: Header=BB25_6 Depth=1
	addl	$-9, %r12d
	.align	16, 0x90
.LBB25_83:                              # %do.body.303
                                        #   Parent Loop BB25_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, %r12d             # imm = 0x100
	movl	$255, %ecx
	cmovll	%r12d, %ecx
	leaq	1(%r8), %rdi
	cmpl	$255, %r12d
	movb	%r12b, %bl
	jl	.LBB25_85
# BB#84:                                # %do.body.303
                                        #   in Loop: Header=BB25_83 Depth=2
	movb	$-1, %bl
.LBB25_85:                              # %do.body.303
                                        #   in Loop: Header=BB25_83 Depth=2
	movb	%bl, (%r8)
	jne	.LBB25_87
# BB#86:                                # %if.then.314
                                        #   in Loop: Header=BB25_83 Depth=2
	movb	$0, 1(%r8)
	addq	$2, %r8
	movq	%r8, %rdi
.LBB25_87:                              # %do.cond.317
                                        #   in Loop: Header=BB25_83 Depth=2
	movzbl	%cl, %eax
	subl	%eax, %r12d
	movq	%rdi, %r8
	jne	.LBB25_83
# BB#88:                                #   in Loop: Header=BB25_6 Depth=1
	movq	%rdi, %r8
	.align	16, 0x90
.LBB25_89:                              # %do.cond.326
                                        #   in Loop: Header=BB25_6 Depth=1
	cmpl	%r11d, %r9d
	jbe	.LBB25_6
.LBB25_90:                              # %do.end.329
	subq	-104(%rsp), %r8         # 8-byte Folded Reload
	movl	%r8d, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	Mode10, .Lfunc_end25-Mode10
	.cfi_endproc

	.align	16, 0x90
	.type	do_gcr,@function
do_gcr:                                 # @do_gcr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp180:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp181:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp182:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp183:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp184:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp185:
	.cfi_def_cfa_offset 56
.Ltmp186:
	.cfi_offset %rbx, -56
.Ltmp187:
	.cfi_offset %r12, -48
.Ltmp188:
	.cfi_offset %r13, -40
.Ltmp189:
	.cfi_offset %r14, -32
.Ltmp190:
	.cfi_offset %r15, -24
.Ltmp191:
	.cfi_offset %rbp, -16
	movq	%r9, -24(%rsp)          # 8-byte Spill
	movq	%r8, %r13
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	movq	%rdx, -16(%rsp)         # 8-byte Spill
	movl	%edi, %r8d
	movq	$0, -8(%rsp)
	xorl	%eax, %eax
	testl	%r8d, %r8d
	jle	.LBB26_33
# BB#1:                                 # %for.body.preheader
	movq	56(%rsp), %r10
	addq	$3, %rsi
	xorl	%r11d, %r11d
	leaq	-8(%rsp), %r15
	xorl	%eax, %eax
	jmp	.LBB26_2
.LBB26_24:                              # %if.else.134
                                        #   in Loop: Header=BB26_2 Depth=1
	cmpl	%r9d, %r15d
	jb	.LBB26_27
# BB#25:                                # %if.else.134
                                        #   in Loop: Header=BB26_2 Depth=1
	movzbl	%cl, %ecx
	cmpl	%r9d, %ecx
	jae	.LBB26_27
# BB#26:                                # %if.then.148
                                        #   in Loop: Header=BB26_2 Depth=1
	movb	%bl, -1(%rsi)
	movb	%al, (%rsi)
	movb	%r14b, -2(%rsi)
	jmp	.LBB26_16
.LBB26_27:                              # %if.else.159
                                        #   in Loop: Header=BB26_2 Depth=1
	cmpl	%edi, %r15d
	movq	-24(%rsp), %r9          # 8-byte Reload
	movq	%rdx, %r13
	movq	-32(%rsp), %rcx         # 8-byte Reload
	jb	.LBB26_31
# BB#28:                                # %if.else.159
                                        #   in Loop: Header=BB26_2 Depth=1
	movzbl	%r12b, %edx
	cmpl	%edi, %edx
	jae	.LBB26_31
# BB#29:                                # %if.then.173
                                        #   in Loop: Header=BB26_2 Depth=1
	movb	%bl, -1(%rsi)
	movb	%r14b, -2(%rsi)
	movb	%al, (%rsi)
	jmp	.LBB26_30
	.align	16, 0x90
.LBB26_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	-3(%rsi), %bl
	testb	%bl, %bl
	je	.LBB26_3
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB26_2 Depth=1
	movb	-2(%rsi), %r14b
	addb	%bl, %r14b
	movb	%r14b, -2(%rsi)
	movb	-1(%rsi), %dil
	addb	%bl, %dil
	movb	%dil, -1(%rsi)
	addb	(%rsi), %bl
	movb	%bl, (%rsi)
	movb	$0, -3(%rsi)
	jmp	.LBB26_5
	.align	16, 0x90
.LBB26_3:                               # %for.body.if.end_crit_edge
                                        #   in Loop: Header=BB26_2 Depth=1
	movb	-2(%rsi), %r14b
	movb	-1(%rsi), %dil
	movb	(%rsi), %bl
.LBB26_5:                               # %if.end
                                        #   in Loop: Header=BB26_2 Depth=1
	movzbl	%dil, %ebp
	movzbl	%bl, %ebx
	addl	%ebp, %ebx
	movzbl	%r14b, %ebp
	addl	%ebx, %ebp
	jne	.LBB26_7
# BB#6:                                 #   in Loop: Header=BB26_2 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB26_32
	.align	16, 0x90
.LBB26_7:                               # %if.then.22
                                        #   in Loop: Header=BB26_2 Depth=1
	movq	(%r10), %rax
	cmpq	-8(%rsp), %rax
	movq	%rax, -8(%rsp)
	jne	.LBB26_9
# BB#8:                                 # %if.then.25
                                        #   in Loop: Header=BB26_2 Depth=1
	movq	(%r15), %rax
	movq	%rax, (%r10)
	movb	-3(%rsi), %bl
	movl	$1, %eax
	jmp	.LBB26_32
	.align	16, 0x90
.LBB26_9:                               # %if.else
                                        #   in Loop: Header=BB26_2 Depth=1
	movb	-3(%rsi), %al
	movb	-2(%rsi), %r14b
	addb	%al, %r14b
	movb	%r14b, -2(%rsi)
	movb	-1(%rsi), %bl
	addb	%al, %bl
	movb	%bl, -1(%rsi)
	addb	(%rsi), %al
	movb	%al, (%rsi)
	movb	$0, -3(%rsi)
	movb	%al, %r12b
	decb	%r12b
	movzbl	%r14b, %edi
	movzbl	%bl, %r15d
	cmpl	%r15d, %edi
	jb	.LBB26_12
# BB#10:                                # %if.else
                                        #   in Loop: Header=BB26_2 Depth=1
	movzbl	%r12b, %ebp
	cmpl	%r15d, %ebp
	jae	.LBB26_12
# BB#11:                                # %if.then.48
                                        #   in Loop: Header=BB26_2 Depth=1
	movb	%r14b, -2(%rsi)
.LBB26_30:                              # %if.end.205
                                        #   in Loop: Header=BB26_2 Depth=1
	movb	$0, -3(%rsi)
	jmp	.LBB26_31
.LBB26_12:                              # %if.else.59
                                        #   in Loop: Header=BB26_2 Depth=1
	movq	%r13, %rdx
	movb	%bl, %r13b
	decb	%r13b
	movzbl	%al, %r9d
	cmpl	%r9d, %edi
	jb	.LBB26_17
# BB#13:                                # %if.else.59
                                        #   in Loop: Header=BB26_2 Depth=1
	movzbl	%r13b, %ebp
	cmpl	%r9d, %ebp
	jae	.LBB26_17
# BB#14:                                # %if.then.73
                                        #   in Loop: Header=BB26_2 Depth=1
	movb	%r14b, -2(%rsi)
	movb	%al, (%rsi)
	jmp	.LBB26_15
.LBB26_17:                              # %if.else.84
                                        #   in Loop: Header=BB26_2 Depth=1
	movb	%r14b, %cl
	decb	%cl
	cmpl	%r15d, %r9d
	jb	.LBB26_21
# BB#18:                                # %if.else.84
                                        #   in Loop: Header=BB26_2 Depth=1
	movzbl	%cl, %ebp
	cmpl	%r15d, %ebp
	jae	.LBB26_21
# BB#19:                                # %if.then.98
                                        #   in Loop: Header=BB26_2 Depth=1
	movb	%al, (%rsi)
	movb	%bl, -1(%rsi)
	movb	%r14b, -2(%rsi)
	jmp	.LBB26_16
.LBB26_21:                              # %if.else.109
                                        #   in Loop: Header=BB26_2 Depth=1
	cmpl	%edi, %r9d
	jb	.LBB26_24
# BB#22:                                # %if.else.109
                                        #   in Loop: Header=BB26_2 Depth=1
	movzbl	%r13b, %ebp
	cmpl	%edi, %ebp
	jae	.LBB26_24
# BB#23:                                # %if.then.123
                                        #   in Loop: Header=BB26_2 Depth=1
	movb	%al, (%rsi)
	movb	%r14b, -2(%rsi)
.LBB26_15:                              # %if.end.205
                                        #   in Loop: Header=BB26_2 Depth=1
	movb	%bl, -1(%rsi)
.LBB26_16:                              # %if.end.205
                                        #   in Loop: Header=BB26_2 Depth=1
	movb	$0, -3(%rsi)
	movq	-24(%rsp), %r9          # 8-byte Reload
	movq	%rdx, %r13
	movq	-32(%rsp), %rcx         # 8-byte Reload
.LBB26_31:                              # %if.end.205
                                        #   in Loop: Header=BB26_2 Depth=1
	movb	(%rcx,%rdi), %dl
	movb	%dl, -2(%rsi)
	movb	(%r13,%r15), %dl
	movb	%dl, -1(%rsi)
	movzbl	%al, %eax
	movb	(%r9,%rax), %al
	movb	%al, (%rsi)
	movl	$1, %eax
	xorl	%ebx, %ebx
	movq	%r10, %r15
	movq	-16(%rsp), %rdx         # 8-byte Reload
.LBB26_32:                              # %if.end.214
                                        #   in Loop: Header=BB26_2 Depth=1
	movzbl	%bl, %edi
	movb	(%rdx,%rdi), %bl
	movb	%bl, -3(%rsi)
	addq	$8, %r10
	addl	$4, %r11d
	addq	$4, %rsi
	cmpl	%r8d, %r11d
	jl	.LBB26_2
.LBB26_33:                              # %for.end
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	do_gcr, .Lfunc_end26-do_gcr
	.cfi_endproc

	.align	16, 0x90
	.type	FSDlinebw,@function
FSDlinebw:                              # @FSDlinebw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp193:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp194:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp195:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp196:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp197:
	.cfi_def_cfa_offset 56
.Ltmp198:
	.cfi_offset %rbx, -56
.Ltmp199:
	.cfi_offset %r12, -48
.Ltmp200:
	.cfi_offset %r13, -40
.Ltmp201:
	.cfi_offset %r14, -32
.Ltmp202:
	.cfi_offset %r15, -24
.Ltmp203:
	.cfi_offset %rbp, -16
	movq	%rcx, %r11
	movl	%esi, -20(%rsp)         # 4-byte Spill
	movq	56(%rsp), %r10
	testl	%edi, %edi
	je	.LBB27_9
# BB#1:                                 # %for.cond.52.preheader
	testl	%esi, %esi
	jle	.LBB27_17
# BB#2:                                 # %for.cond.56.preheader.lr.ph
	movslq	%r8d, %rax
	leaq	(,%rax,4), %r15
	movq	%r15, %r12
	negq	%r12
	movq	%rax, %rsi
	shlq	$5, %rsi
	negq	%rsi
	movq	%rsi, -40(%rsp)         # 8-byte Spill
	movq	%rax, %r13
	negq	%r13
	subq	%rax, %r10
	shlq	$3, %rax
	negq	%rax
	movq	%rax, -32(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	.align	16, 0x90
.LBB27_3:                               # %for.cond.56.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_4 Depth 2
	movl	%esi, -16(%rsp)         # 4-byte Spill
	movq	%r11, -8(%rsp)          # 8-byte Spill
	movl	$1, %esi
	xorl	%ebp, %ebp
	movq	%r10, %rax
	movl	$1, %edi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB27_4:                               # %for.body.60
                                        #   Parent Loop BB27_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r12,%rbp), %r11
	movl	12(%rdx), %r8d
	imull	$7, %r8d, %ecx
	addl	$8, %ecx
	sarl	$4, %ecx
	addl	(%r9,%r11), %ecx
	movzbl	(%rax), %r14d
	shll	$19, %r14d
	addl	%ecx, %r14d
	movl	%r14d, 12(%rdx)
	cmpl	$67108864, %r14d        # imm = 0x4000000
	jg	.LBB27_6
# BB#5:                                 # %lor.lhs.false.81
                                        #   in Loop: Header=BB27_4 Depth=2
	movzbl	(%rax), %ecx
	cmpl	$255, %ecx
	jne	.LBB27_7
.LBB27_6:                               # %if.then.86
                                        #   in Loop: Header=BB27_4 Depth=2
	movzbl	%bl, %ebx
	orl	%edi, %ebx
	addl	$-134217728, %r14d      # imm = 0xFFFFFFFFF8000000
	movl	%r14d, 12(%rdx)
.LBB27_7:                               # %if.end.93
                                        #   in Loop: Header=BB27_4 Depth=2
	leal	8(%r14,%r14,2), %ecx
	sarl	$4, %ecx
	addl	%ecx, (%r9,%rbp)
	imull	$5, 12(%rdx), %ecx
	leal	8(%r8,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, (%r9,%r11)
	movl	%esi, %edi
	addl	%edi, %edi
	subq	%r15, %rbp
	addq	%r13, %rax
	movl	%edi, %esi
	andl	$254, %esi
	jne	.LBB27_4
# BB#8:                                 # %for.end.112
                                        #   in Loop: Header=BB27_3 Depth=1
	movq	-8(%rsp), %r11          # 8-byte Reload
	movb	%bl, -1(%r11)
	decq	%r11
	movl	-16(%rsp), %esi         # 4-byte Reload
	incl	%esi
	addq	-40(%rsp), %r9          # 8-byte Folded Reload
	addq	-32(%rsp), %r10         # 8-byte Folded Reload
	movl	-20(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %esi
	jne	.LBB27_3
	jmp	.LBB27_17
.LBB27_9:                               # %for.cond.preheader
	testl	%esi, %esi
	jle	.LBB27_17
# BB#10:                                # %for.cond.2.preheader.lr.ph
	movslq	%r8d, %r12
	negl	%r8d
	leaq	(,%r12,8), %rax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movslq	%r8d, %rax
	shlq	$2, %rax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	movq	%r12, %r14
	shlq	$5, %r14
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB27_11:                              # %for.cond.2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_12 Depth 2
	movl	%esi, %r8d
	movq	-16(%rsp), %rax         # 8-byte Reload
	leaq	(%r9,%rax), %r13
	movl	$128, %ebx
	xorl	%edi, %edi
	xorl	%eax, %eax
	.align	16, 0x90
.LBB27_12:                              # %for.body.5
                                        #   Parent Loop BB27_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12(%rdx), %esi
	imull	$7, %esi, %ebp
	addl	$8, %ebp
	sarl	$4, %ebp
	addl	(%r9,%rdi,4), %ebp
	movzbl	(%r10,%rdi), %ecx
	shll	$19, %ecx
	addl	%ebp, %ecx
	movl	%ecx, 12(%rdx)
	cmpl	$67108864, %ecx         # imm = 0x4000000
	jg	.LBB27_14
# BB#13:                                # %lor.lhs.false
                                        #   in Loop: Header=BB27_12 Depth=2
	movzbl	(%r10,%rdi), %ebp
	cmpl	$255, %ebp
	jne	.LBB27_15
.LBB27_14:                              # %if.then.20
                                        #   in Loop: Header=BB27_12 Depth=2
	movzbl	%al, %eax
	orl	%ebx, %eax
	addl	$-134217728, %ecx       # imm = 0xFFFFFFFFF8000000
	movl	%ecx, 12(%rdx)
.LBB27_15:                              # %if.end
                                        #   in Loop: Header=BB27_12 Depth=2
	leal	8(%rcx,%rcx,2), %ecx
	sarl	$4, %ecx
	addl	%ecx, (%r13,%rdi,4)
	imull	$5, 12(%rdx), %ecx
	leal	8(%rsi,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, (%r9,%rdi,4)
	shrl	%ebx
	addq	%r12, %rdi
	testl	%ebx, %ebx
	jne	.LBB27_12
# BB#16:                                # %for.end
                                        #   in Loop: Header=BB27_11 Depth=1
	addq	-8(%rsp), %r10          # 8-byte Folded Reload
	movb	%al, (%r11)
	incq	%r11
	incl	%r15d
	addq	%r14, %r9
	movl	%r8d, %esi
	cmpl	%esi, %r15d
	jne	.LBB27_11
.LBB27_17:                              # %if.end.117
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	FSDlinebw, .Lfunc_end27-FSDlinebw
	.cfi_endproc

	.align	16, 0x90
	.type	do_floyd_steinberg,@function
do_floyd_steinberg:                     # @do_floyd_steinberg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp204:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp205:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp206:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp207:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp208:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp209:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp210:
	.cfi_def_cfa_offset 64
.Ltmp211:
	.cfi_offset %rbx, -56
.Ltmp212:
	.cfi_offset %r12, -48
.Ltmp213:
	.cfi_offset %r13, -40
.Ltmp214:
	.cfi_offset %r14, -32
.Ltmp215:
	.cfi_offset %r15, -24
.Ltmp216:
	.cfi_offset %rbp, -16
	movl	%edx, -108(%rsp)        # 4-byte Spill
	movq	64(%rsp), %r15
	leal	2(%rsi), %edx
	movslq	%edx, %rdx
	movq	32(%r8,%rdx,8), %rax
	shlq	$6, %rdx
	movq	208(%r8,%rdx), %r14
	movq	192(%r8,%rdx), %r10
	movq	200(%r8,%rdx), %r11
	movq	240(%r8,%rdx), %rdi
	movq	232(%r8,%rdx), %rbx
	movq	224(%r8,%rdx), %rbp
	movslq	%esi, %rdx
	movq	504(%r8,%rdx,8), %r8
	movl	18492(%r9), %edx
	cmpl	$4, %edx
	je	.LBB28_68
# BB#1:                                 # %entry
	movq	%r11, -64(%rsp)         # 8-byte Spill
	cmpl	$3, %edx
	jne	.LBB28_2
# BB#33:                                # %sw.bb.41
	testl	%esi, %esi
	je	.LBB28_39
# BB#34:                                # %for.cond.196.preheader.i
	movq	%r14, -72(%rsp)         # 8-byte Spill
	cmpl	$0, -108(%rsp)          # 4-byte Folded Reload
	movq	%rax, %rsi
	movq	%r8, %r12
	jle	.LBB28_115
# BB#35:                                # %for.cond.200.preheader.lr.ph.i
	leal	-3(%rcx,%rcx), %edx
	movslq	%edx, %rdx
	shlq	$2, %rdx
	movslq	%ecx, %r9
	leaq	(,%r9,4), %r8
	subq	%r8, %rdx
	movq	%rdx, -16(%rsp)         # 8-byte Spill
	movq	%r9, %rdx
	shlq	$5, %rdx
	negq	%rdx
	movq	%rdx, -120(%rsp)        # 8-byte Spill
	leal	-2(%rcx,%rcx), %edx
	movslq	%edx, %rdx
	shlq	$2, %rdx
	subq	%r8, %rdx
	movq	%rdx, -32(%rsp)         # 8-byte Spill
	leal	-1(%rcx,%rcx), %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	subq	%r8, %rcx
	movq	%rcx, -40(%rsp)         # 8-byte Spill
	negq	%r8
	movq	%r8, -48(%rsp)          # 8-byte Spill
	decq	%rsi
	leaq	(,%r9,8), %rcx
	negq	%rcx
	movq	%rcx, -128(%rsp)        # 8-byte Spill
	negq	%r9
	movq	%r9, -24(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB28_36:                              # %for.cond.200.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_37 Depth 2
	movl	%ecx, -112(%rsp)        # 4-byte Spill
	movq	%rbp, -104(%rsp)        # 8-byte Spill
	movq	%rbx, -96(%rsp)         # 8-byte Spill
	movq	%rdi, -88(%rsp)         # 8-byte Spill
	movq	%r12, -8(%rsp)          # 8-byte Spill
	movq	%r10, -80(%rsp)         # 8-byte Spill
	movq	%rsi, (%rsp)            # 8-byte Spill
	movl	$1, %r14d
	movl	$0, -56(%rsp)           # 4-byte Folded Spill
	movq	%rsi, %rbp
	movl	$1, %r10d
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	xorl	%r11d, %r11d
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB28_37:                              # %for.body.204.i
                                        #   Parent Loop BB28_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8(%r15), %r13d
	imull	$7, %r13d, %edi
	addl	$8, %edi
	sarl	$4, %edi
	addl	-4(%r12), %edi
	movzbl	(%rbp), %ebx
	shll	$19, %ebx
	leal	(%rdi,%rbx), %ecx
	leal	-33554433(%rbx,%rdi), %edi
	cmpl	$33554431, %edi         # imm = 0x1FFFFFF
	ja	.LBB28_56
# BB#38:                                # %if.end.240.thread.i
                                        #   in Loop: Header=BB28_37 Depth=2
	movzbl	%r11b, %r11d
	orl	%r10d, %r11d
	addl	$-67108864, %ecx        # imm = 0xFFFFFFFFFC000000
	jmp	.LBB28_58
	.align	16, 0x90
.LBB28_56:                              # %if.end.240.i
                                        #   in Loop: Header=BB28_37 Depth=2
	cmpl	$67108865, %ecx         # imm = 0x4000001
	jl	.LBB28_58
# BB#57:                                # %if.then.244.i
                                        #   in Loop: Header=BB28_37 Depth=2
	movzbl	%sil, %esi
	orl	%r10d, %esi
	addl	$-100663296, %ecx       # imm = 0xFFFFFFFFFA000000
.LBB28_58:                              # %if.end.251.i
                                        #   in Loop: Header=BB28_37 Depth=2
	movl	%ecx, 8(%r15)
	leal	8(%rcx,%rcx,2), %ecx
	sarl	$4, %ecx
	movq	-40(%rsp), %rdx         # 8-byte Reload
	addl	%ecx, (%rdx,%r12)
	imull	$5, 8(%r15), %ecx
	leal	8(%r13,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, -4(%r12)
	movl	4(%r15), %ecx
	imull	$7, %ecx, %ebx
	addl	$8, %ebx
	sarl	$4, %ebx
	addl	-8(%r12), %ebx
	movzbl	-1(%rbp), %edx
	shll	$19, %edx
	leal	(%rbx,%rdx), %edi
	leal	-33554433(%rdx,%rbx), %edx
	cmpl	$33554431, %edx         # imm = 0x1FFFFFF
	ja	.LBB28_60
# BB#59:                                # %if.end.299.thread.i
                                        #   in Loop: Header=BB28_37 Depth=2
	movzbl	%r8b, %r8d
	orl	%r10d, %r8d
	addl	$-67108864, %edi        # imm = 0xFFFFFFFFFC000000
	jmp	.LBB28_62
	.align	16, 0x90
.LBB28_60:                              # %if.end.299.i
                                        #   in Loop: Header=BB28_37 Depth=2
	cmpl	$67108865, %edi         # imm = 0x4000001
	jl	.LBB28_62
# BB#61:                                # %if.then.303.i
                                        #   in Loop: Header=BB28_37 Depth=2
	movl	-56(%rsp), %edx         # 4-byte Reload
	movzbl	%dl, %edx
	orl	%r10d, %edx
	movl	%edx, -56(%rsp)         # 4-byte Spill
	addl	$-100663296, %edi       # imm = 0xFFFFFFFFFA000000
.LBB28_62:                              # %if.end.310.i
                                        #   in Loop: Header=BB28_37 Depth=2
	movl	%edi, 4(%r15)
	leal	8(%rdi,%rdi,2), %edx
	sarl	$4, %edx
	movq	-32(%rsp), %rdi         # 8-byte Reload
	addl	%edx, (%rdi,%r12)
	imull	$5, 4(%r15), %edx
	leal	8(%rcx,%rdx), %ecx
	sarl	$4, %ecx
	movl	%ecx, -8(%r12)
	movl	(%r15), %ecx
	imull	$7, %ecx, %edx
	addl	$8, %edx
	sarl	$4, %edx
	addl	-12(%r12), %edx
	movzbl	-2(%rbp), %ebx
	shll	$19, %ebx
	leal	(%rdx,%rbx), %edi
	leal	-33554433(%rbx,%rdx), %edx
	cmpl	$33554431, %edx         # imm = 0x1FFFFFF
	ja	.LBB28_64
# BB#63:                                # %if.end.358.thread.i
                                        #   in Loop: Header=BB28_37 Depth=2
	movzbl	%r9b, %r9d
	orl	%r10d, %r9d
	addl	$-67108864, %edi        # imm = 0xFFFFFFFFFC000000
	jmp	.LBB28_66
	.align	16, 0x90
.LBB28_64:                              # %if.end.358.i
                                        #   in Loop: Header=BB28_37 Depth=2
	cmpl	$67108865, %edi         # imm = 0x4000001
	jl	.LBB28_66
# BB#65:                                # %if.then.362.i
                                        #   in Loop: Header=BB28_37 Depth=2
	movzbl	%al, %eax
	orl	%r10d, %eax
	addl	$-100663296, %edi       # imm = 0xFFFFFFFFFA000000
.LBB28_66:                              # %if.end.369.i
                                        #   in Loop: Header=BB28_37 Depth=2
	movl	%edi, (%r15)
	leal	8(%rdi,%rdi,2), %edx
	sarl	$4, %edx
	movq	-16(%rsp), %rdi         # 8-byte Reload
	addl	%edx, (%rdi,%r12)
	imull	$5, (%r15), %edx
	leal	8(%rcx,%rdx), %ecx
	sarl	$4, %ecx
	movl	%ecx, -12(%r12)
	movl	%r14d, %r10d
	addl	%r10d, %r10d
	addq	-48(%rsp), %r12         # 8-byte Folded Reload
	addq	-24(%rsp), %rbp         # 8-byte Folded Reload
	movl	%r10d, %r14d
	andl	$254, %r14d
	jne	.LBB28_37
# BB#67:                                # %for.end.391.i
                                        #   in Loop: Header=BB28_36 Depth=1
	movq	-80(%rsp), %r10         # 8-byte Reload
	movb	%r11b, -1(%r10)
	movq	-64(%rsp), %rdx         # 8-byte Reload
	movb	%r8b, -1(%rdx)
	movq	-72(%rsp), %rcx         # 8-byte Reload
	movb	%r9b, -1(%rcx)
	movq	-104(%rsp), %rbp        # 8-byte Reload
	movb	%sil, -1(%rbp)
	movq	-96(%rsp), %rbx         # 8-byte Reload
	movl	-56(%rsp), %esi         # 4-byte Reload
	movb	%sil, -1(%rbx)
	movq	-88(%rsp), %rdi         # 8-byte Reload
	movb	%al, -1(%rdi)
	decq	%r10
	decq	%rdx
	movq	%rdx, -64(%rsp)         # 8-byte Spill
	decq	%rcx
	movq	%rcx, -72(%rsp)         # 8-byte Spill
	decq	%rbp
	decq	%rbx
	decq	%rdi
	movl	-112(%rsp), %ecx        # 4-byte Reload
	incl	%ecx
	movq	-8(%rsp), %r12          # 8-byte Reload
	addq	-120(%rsp), %r12        # 8-byte Folded Reload
	movq	(%rsp), %rsi            # 8-byte Reload
	addq	-128(%rsp), %rsi        # 8-byte Folded Reload
	cmpl	-108(%rsp), %ecx        # 4-byte Folded Reload
	jne	.LBB28_36
	jmp	.LBB28_115
.LBB28_68:                              # %sw.bb.42
	testl	%esi, %esi
	je	.LBB28_76
# BB#69:                                # %for.cond.253.preheader.i
	movq	%r11, -64(%rsp)         # 8-byte Spill
	movq	%r14, -72(%rsp)         # 8-byte Spill
	cmpl	$0, -108(%rsp)          # 4-byte Folded Reload
	jle	.LBB28_115
# BB#70:                                # %for.cond.257.preheader.lr.ph.i
	leal	-3(%rcx,%rcx), %edx
	movslq	%edx, %rsi
	shlq	$2, %rsi
	movslq	%ecx, %rdx
	leaq	(,%rdx,4), %r9
	subq	%r9, %rsi
	movq	%rsi, -24(%rsp)         # 8-byte Spill
	movq	%rdx, %rsi
	shlq	$5, %rsi
	negq	%rsi
	movq	%rsi, -120(%rsp)        # 8-byte Spill
	leal	-2(%rcx,%rcx), %esi
	movslq	%esi, %rsi
	shlq	$2, %rsi
	subq	%r9, %rsi
	movq	%rsi, -40(%rsp)         # 8-byte Spill
	leal	-1(%rcx,%rcx), %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	subq	%r9, %rcx
	movq	%rcx, -48(%rsp)         # 8-byte Spill
	negq	%r9
	movq	%r9, -56(%rsp)          # 8-byte Spill
	decq	%rax
	leaq	(,%rdx,8), %rcx
	negq	%rcx
	movq	%rcx, -128(%rsp)        # 8-byte Spill
	negq	%rdx
	movq	%rdx, -32(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB28_71:                              # %for.cond.257.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_72 Depth 2
	movl	%ecx, -112(%rsp)        # 4-byte Spill
	movq	%rbp, -104(%rsp)        # 8-byte Spill
	movq	%rbx, -96(%rsp)         # 8-byte Spill
	movq	%rdi, -88(%rsp)         # 8-byte Spill
	movq	%r8, -8(%rsp)           # 8-byte Spill
	movq	%r10, -80(%rsp)         # 8-byte Spill
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	$1, %ebp
	movl	$0, -16(%rsp)           # 4-byte Folded Spill
	movq	%rax, %rdi
	movq	%r8, %rbx
	movl	$1, %r8d
	xorl	%r14d, %r14d
	xorl	%r11d, %r11d
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB28_72:                              # %for.body.261.i
                                        #   Parent Loop BB28_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8(%r15), %ecx
	imull	$7, %ecx, %edx
	addl	$8, %edx
	sarl	$4, %edx
	addl	-4(%rbx), %edx
	movzbl	(%rdi), %esi
	shll	$19, %esi
	leal	(%rdx,%rsi), %r12d
	leal	-33554433(%rsi,%rdx), %edx
	cmpl	$33554431, %edx         # imm = 0x1FFFFFF
	ja	.LBB28_74
# BB#73:                                # %if.then.290.i
                                        #   in Loop: Header=BB28_72 Depth=2
	movzbl	%r10b, %r10d
	orl	%r8d, %r10d
	addl	$-67108864, %r12d       # imm = 0xFFFFFFFFFC000000
.LBB28_74:                              # %if.end.297.i
                                        #   in Loop: Header=BB28_72 Depth=2
	leal	-67108865(%r12), %edx
	cmpl	$33554431, %edx         # imm = 0x1FFFFFF
	ja	.LBB28_99
# BB#75:                                # %if.end.312.thread.i
                                        #   in Loop: Header=BB28_72 Depth=2
	movzbl	%r14b, %r14d
	orl	%r8d, %r14d
	addl	$-100663296, %r12d      # imm = 0xFFFFFFFFFA000000
	jmp	.LBB28_101
	.align	16, 0x90
.LBB28_99:                              # %if.end.312.i
                                        #   in Loop: Header=BB28_72 Depth=2
	cmpl	$100663297, %r12d       # imm = 0x6000001
	jl	.LBB28_101
# BB#100:                               # %if.then.316.i
                                        #   in Loop: Header=BB28_72 Depth=2
	movzbl	%r10b, %r10d
	orl	%r8d, %r10d
	movzbl	%r14b, %r14d
	orl	%r8d, %r14d
	addl	$-134217728, %r12d      # imm = 0xFFFFFFFFF8000000
.LBB28_101:                             # %if.end.327.i
                                        #   in Loop: Header=BB28_72 Depth=2
	movl	%r12d, 8(%r15)
	leal	8(%r12,%r12,2), %edx
	sarl	$4, %edx
	movq	-48(%rsp), %rax         # 8-byte Reload
	addl	%edx, (%rax,%rbx)
	imull	$5, 8(%r15), %edx
	leal	8(%rcx,%rdx), %ecx
	sarl	$4, %ecx
	movl	%ecx, -4(%rbx)
	movl	4(%r15), %ecx
	imull	$7, %ecx, %esi
	addl	$8, %esi
	sarl	$4, %esi
	addl	-8(%rbx), %esi
	movzbl	-1(%rdi), %eax
	shll	$19, %eax
	leal	(%rsi,%rax), %edx
	leal	-33554433(%rax,%rsi), %eax
	cmpl	$33554431, %eax         # imm = 0x1FFFFFF
	ja	.LBB28_103
# BB#102:                               # %if.then.368.i
                                        #   in Loop: Header=BB28_72 Depth=2
	movzbl	%r9b, %r9d
	orl	%r8d, %r9d
	addl	$-67108864, %edx        # imm = 0xFFFFFFFFFC000000
.LBB28_103:                             # %if.end.375.i
                                        #   in Loop: Header=BB28_72 Depth=2
	leal	-67108865(%rdx), %eax
	cmpl	$33554431, %eax         # imm = 0x1FFFFFF
	ja	.LBB28_105
# BB#104:                               # %if.end.390.thread.i
                                        #   in Loop: Header=BB28_72 Depth=2
	movl	-16(%rsp), %eax         # 4-byte Reload
	movzbl	%al, %eax
	orl	%r8d, %eax
	movl	%eax, -16(%rsp)         # 4-byte Spill
	addl	$-100663296, %edx       # imm = 0xFFFFFFFFFA000000
	jmp	.LBB28_107
	.align	16, 0x90
.LBB28_105:                             # %if.end.390.i
                                        #   in Loop: Header=BB28_72 Depth=2
	cmpl	$100663297, %edx        # imm = 0x6000001
	jl	.LBB28_107
# BB#106:                               # %if.then.394.i
                                        #   in Loop: Header=BB28_72 Depth=2
	movzbl	%r9b, %r9d
	orl	%r8d, %r9d
	movl	-16(%rsp), %eax         # 4-byte Reload
	movzbl	%al, %eax
	orl	%r8d, %eax
	movl	%eax, -16(%rsp)         # 4-byte Spill
	addl	$-134217728, %edx       # imm = 0xFFFFFFFFF8000000
.LBB28_107:                             # %if.end.405.i
                                        #   in Loop: Header=BB28_72 Depth=2
	movl	%edx, 4(%r15)
	leal	8(%rdx,%rdx,2), %eax
	sarl	$4, %eax
	movq	-40(%rsp), %rdx         # 8-byte Reload
	addl	%eax, (%rdx,%rbx)
	imull	$5, 4(%r15), %eax
	leal	8(%rcx,%rax), %eax
	sarl	$4, %eax
	movl	%eax, -8(%rbx)
	movl	(%r15), %ecx
	imull	$7, %ecx, %eax
	addl	$8, %eax
	sarl	$4, %eax
	addl	-12(%rbx), %eax
	movzbl	-2(%rdi), %esi
	shll	$19, %esi
	leal	(%rax,%rsi), %edx
	leal	-33554433(%rsi,%rax), %eax
	cmpl	$33554431, %eax         # imm = 0x1FFFFFF
	ja	.LBB28_109
# BB#108:                               # %if.then.446.i
                                        #   in Loop: Header=BB28_72 Depth=2
	movzbl	%r13b, %r13d
	orl	%r8d, %r13d
	addl	$-67108864, %edx        # imm = 0xFFFFFFFFFC000000
.LBB28_109:                             # %if.end.453.i
                                        #   in Loop: Header=BB28_72 Depth=2
	leal	-67108865(%rdx), %eax
	cmpl	$33554431, %eax         # imm = 0x1FFFFFF
	ja	.LBB28_111
# BB#110:                               # %if.end.468.thread.i
                                        #   in Loop: Header=BB28_72 Depth=2
	movzbl	%r11b, %r11d
	orl	%r8d, %r11d
	addl	$-100663296, %edx       # imm = 0xFFFFFFFFFA000000
	jmp	.LBB28_113
	.align	16, 0x90
.LBB28_111:                             # %if.end.468.i
                                        #   in Loop: Header=BB28_72 Depth=2
	cmpl	$100663297, %edx        # imm = 0x6000001
	jl	.LBB28_113
# BB#112:                               # %if.then.472.i
                                        #   in Loop: Header=BB28_72 Depth=2
	movzbl	%r13b, %r13d
	orl	%r8d, %r13d
	movzbl	%r11b, %r11d
	orl	%r8d, %r11d
	addl	$-134217728, %edx       # imm = 0xFFFFFFFFF8000000
.LBB28_113:                             # %if.end.483.i
                                        #   in Loop: Header=BB28_72 Depth=2
	movl	%edx, (%r15)
	leal	8(%rdx,%rdx,2), %eax
	sarl	$4, %eax
	movq	-24(%rsp), %rdx         # 8-byte Reload
	addl	%eax, (%rdx,%rbx)
	imull	$5, (%r15), %eax
	leal	8(%rcx,%rax), %eax
	sarl	$4, %eax
	movl	%eax, -12(%rbx)
	movl	%ebp, %r8d
	addl	%r8d, %r8d
	addq	-56(%rsp), %rbx         # 8-byte Folded Reload
	addq	-32(%rsp), %rdi         # 8-byte Folded Reload
	movl	%r8d, %ebp
	andl	$254, %ebp
	jne	.LBB28_72
# BB#114:                               # %for.end.505.i
                                        #   in Loop: Header=BB28_71 Depth=1
	movq	-80(%rsp), %rax         # 8-byte Reload
	movb	%r10b, -1(%rax)
	movq	%rax, %r10
	movq	-64(%rsp), %rcx         # 8-byte Reload
	movb	%r9b, -1(%rcx)
	movq	-72(%rsp), %rax         # 8-byte Reload
	movb	%r13b, -1(%rax)
	movq	-104(%rsp), %rbp        # 8-byte Reload
	movb	%r14b, -1(%rbp)
	movq	-96(%rsp), %rbx         # 8-byte Reload
	movl	-16(%rsp), %edx         # 4-byte Reload
	movb	%dl, -1(%rbx)
	movq	-88(%rsp), %rdi         # 8-byte Reload
	movb	%r11b, -1(%rdi)
	decq	%r10
	decq	%rcx
	movq	%rcx, -64(%rsp)         # 8-byte Spill
	decq	%rax
	movq	%rax, -72(%rsp)         # 8-byte Spill
	decq	%rbp
	decq	%rbx
	decq	%rdi
	movl	-112(%rsp), %ecx        # 4-byte Reload
	incl	%ecx
	movq	-8(%rsp), %r8           # 8-byte Reload
	addq	-120(%rsp), %r8         # 8-byte Folded Reload
	movq	(%rsp), %rax            # 8-byte Reload
	addq	-128(%rsp), %rax        # 8-byte Folded Reload
	cmpl	-108(%rsp), %ecx        # 4-byte Folded Reload
	jne	.LBB28_71
	jmp	.LBB28_115
.LBB28_2:                               # %entry
	movq	%r14, -72(%rsp)         # 8-byte Spill
	cmpl	$2, %edx
	jne	.LBB28_115
# BB#3:                                 # %sw.bb
	movq	%r8, %r11
	testl	%esi, %esi
	je	.LBB28_18
# BB#4:                                 # %for.cond.166.preheader.i
	cmpl	$0, -108(%rsp)          # 4-byte Folded Reload
	movq	%rax, %rsi
	movq	%r11, %rbp
	jle	.LBB28_115
# BB#5:                                 # %for.cond.170.preheader.lr.ph.i
	leal	-3(%rcx,%rcx), %edx
	movslq	%edx, %rdx
	shlq	$2, %rdx
	movslq	%ecx, %r12
	leaq	(,%r12,4), %rax
	subq	%rax, %rdx
	movq	%rdx, -16(%rsp)         # 8-byte Spill
	movq	%r12, %rdx
	shlq	$5, %rdx
	negq	%rdx
	movq	%rdx, -40(%rsp)         # 8-byte Spill
	leal	-2(%rcx,%rcx), %edx
	movslq	%edx, %rdx
	shlq	$2, %rdx
	subq	%rax, %rdx
	movq	%rdx, -24(%rsp)         # 8-byte Spill
	leal	-1(%rcx,%rcx), %ecx
	movslq	%ecx, %r13
	shlq	$2, %r13
	subq	%rax, %r13
	negq	%rax
	decq	%rsi
	leaq	(,%r12,8), %rcx
	negq	%rcx
	movq	%rcx, -48(%rsp)         # 8-byte Spill
	negq	%r12
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB28_6:                               # %for.cond.170.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_7 Depth 2
	movl	%ecx, -32(%rsp)         # 4-byte Spill
	movq	%rbp, -8(%rsp)          # 8-byte Spill
	movq	%r10, -80(%rsp)         # 8-byte Spill
	movq	%rsi, (%rsp)            # 8-byte Spill
	movl	$1, %r9d
	xorl	%r11d, %r11d
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB28_7:                               # %for.body.174.i
                                        #   Parent Loop BB28_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8(%r15), %ebx
	imull	$7, %ebx, %edi
	addl	$8, %edi
	sarl	$4, %edi
	addl	-4(%rbp), %edi
	movzbl	(%rsi), %r10d
	shll	$19, %r10d
	addl	%edi, %r10d
	movl	%r10d, 8(%r15)
	cmpl	$67108864, %r10d        # imm = 0x4000000
	jg	.LBB28_9
# BB#8:                                 # %lor.lhs.false.199.i
                                        #   in Loop: Header=BB28_7 Depth=2
	movzbl	(%rsi), %edi
	cmpl	$255, %edi
	jne	.LBB28_10
.LBB28_9:                               # %if.then.206.i
                                        #   in Loop: Header=BB28_7 Depth=2
	movzbl	%r8b, %r8d
	orl	%ecx, %r8d
	addl	$-134217728, %r10d      # imm = 0xFFFFFFFFF8000000
	movl	%r10d, 8(%r15)
.LBB28_10:                              # %if.end.213.i
                                        #   in Loop: Header=BB28_7 Depth=2
	leal	8(%r10,%r10,2), %edi
	sarl	$4, %edi
	addl	%edi, (%r13,%rbp)
	imull	$5, 8(%r15), %edi
	leal	8(%rbx,%rdi), %edi
	sarl	$4, %edi
	movl	%edi, -4(%rbp)
	movl	4(%r15), %ebx
	imull	$7, %ebx, %edx
	addl	$8, %edx
	sarl	$4, %edx
	addl	-8(%rbp), %edx
	movzbl	-1(%rsi), %edi
	shll	$19, %edi
	addl	%edx, %edi
	movl	%edi, 4(%r15)
	cmpl	$67108864, %edi         # imm = 0x4000000
	jg	.LBB28_12
# BB#11:                                # %lor.lhs.false.250.i
                                        #   in Loop: Header=BB28_7 Depth=2
	movzbl	-1(%rsi), %edx
	cmpl	$255, %edx
	jne	.LBB28_13
.LBB28_12:                              # %if.then.257.i
                                        #   in Loop: Header=BB28_7 Depth=2
	movzbl	%r11b, %r11d
	orl	%ecx, %r11d
	addl	$-134217728, %edi       # imm = 0xFFFFFFFFF8000000
	movl	%edi, 4(%r15)
.LBB28_13:                              # %if.end.264.i
                                        #   in Loop: Header=BB28_7 Depth=2
	leal	8(%rdi,%rdi,2), %edx
	sarl	$4, %edx
	movq	-24(%rsp), %rdi         # 8-byte Reload
	addl	%edx, (%rdi,%rbp)
	imull	$5, 4(%r15), %edx
	leal	8(%rbx,%rdx), %edx
	sarl	$4, %edx
	movl	%edx, -8(%rbp)
	movl	(%r15), %ebx
	imull	$7, %ebx, %edx
	addl	$8, %edx
	sarl	$4, %edx
	addl	-12(%rbp), %edx
	movzbl	-2(%rsi), %edi
	shll	$19, %edi
	addl	%edx, %edi
	movl	%edi, (%r15)
	cmpl	$67108864, %edi         # imm = 0x4000000
	jg	.LBB28_15
# BB#14:                                # %lor.lhs.false.301.i
                                        #   in Loop: Header=BB28_7 Depth=2
	movzbl	-2(%rsi), %edx
	cmpl	$255, %edx
	jne	.LBB28_16
.LBB28_15:                              # %if.then.308.i
                                        #   in Loop: Header=BB28_7 Depth=2
	movzbl	%r14b, %r14d
	orl	%ecx, %r14d
	addl	$-134217728, %edi       # imm = 0xFFFFFFFFF8000000
	movl	%edi, (%r15)
.LBB28_16:                              # %if.end.315.i
                                        #   in Loop: Header=BB28_7 Depth=2
	leal	8(%rdi,%rdi,2), %ecx
	sarl	$4, %ecx
	movq	-16(%rsp), %rdx         # 8-byte Reload
	addl	%ecx, (%rdx,%rbp)
	imull	$5, (%r15), %ecx
	leal	8(%rbx,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, -12(%rbp)
	movl	%r9d, %ecx
	addl	%ecx, %ecx
	addq	%rax, %rbp
	addq	%r12, %rsi
	movl	%ecx, %r9d
	andl	$254, %r9d
	jne	.LBB28_7
# BB#17:                                # %for.end.337.i
                                        #   in Loop: Header=BB28_6 Depth=1
	movq	-80(%rsp), %r10         # 8-byte Reload
	movb	%r8b, -1(%r10)
	decq	%r10
	movq	-64(%rsp), %rcx         # 8-byte Reload
	movb	%r11b, -1(%rcx)
	decq	%rcx
	movq	%rcx, -64(%rsp)         # 8-byte Spill
	movq	-72(%rsp), %rcx         # 8-byte Reload
	movb	%r14b, -1(%rcx)
	decq	%rcx
	movq	%rcx, -72(%rsp)         # 8-byte Spill
	movl	-32(%rsp), %ecx         # 4-byte Reload
	incl	%ecx
	movq	-8(%rsp), %rbp          # 8-byte Reload
	addq	-40(%rsp), %rbp         # 8-byte Folded Reload
	movq	(%rsp), %rsi            # 8-byte Reload
	addq	-48(%rsp), %rsi         # 8-byte Folded Reload
	cmpl	-108(%rsp), %ecx        # 4-byte Folded Reload
	jne	.LBB28_6
	jmp	.LBB28_115
.LBB28_39:                              # %for.cond.preheader.i.43
	movq	%r14, -72(%rsp)         # 8-byte Spill
	cmpl	$0, -108(%rsp)          # 4-byte Folded Reload
	movq	%r8, %r14
	jle	.LBB28_115
# BB#40:                                # %for.cond.2.preheader.lr.ph.i.48
	movslq	%ecx, %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	leaq	(,%rcx,8), %rdx
	movq	%rdx, -40(%rsp)         # 8-byte Spill
	movq	%rcx, %rdx
	shlq	$5, %rdx
	movq	%rdx, -48(%rsp)         # 8-byte Spill
	leaq	(,%rcx,4), %rcx
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB28_41:                              # %for.cond.2.preheader.i.50
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_42 Depth 2
	movl	%ecx, -32(%rsp)         # 4-byte Spill
	movq	%rbp, -104(%rsp)        # 8-byte Spill
	movq	%rbx, -96(%rsp)         # 8-byte Spill
	movq	%rdi, -88(%rsp)         # 8-byte Spill
	movq	%r10, -80(%rsp)         # 8-byte Spill
	movq	-56(%rsp), %rcx         # 8-byte Reload
	leaq	(%r14,%rcx), %rsi
	movl	$128, %ebp
	movq	$-1, %r9
	movl	$0, -8(%rsp)            # 4-byte Folded Spill
	movl	$0, -16(%rsp)           # 4-byte Folded Spill
	movl	$0, -24(%rsp)           # 4-byte Folded Spill
	xorl	%r12d, %r12d
	xorl	%r11d, %r11d
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB28_42:                              # %for.body.5.i.64
                                        #   Parent Loop BB28_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdx
	movq	%r9, %r8
	movl	(%r15), %r10d
	imull	$7, %r10d, %ecx
	addl	$8, %ecx
	sarl	$4, %ecx
	addl	-8(%rsi,%r8,4), %ecx
	movq	(%rsp), %rdi            # 8-byte Reload
	leaq	(%rdi,%r8), %r9
	movzbl	-2(%rax,%r9), %r14d
	shll	$19, %r14d
	leal	(%rcx,%r14), %edi
	leal	-33554433(%r14,%rcx), %ecx
	cmpl	$33554431, %ecx         # imm = 0x1FFFFFF
	ja	.LBB28_44
# BB#43:                                # %if.end.thread.i
                                        #   in Loop: Header=BB28_42 Depth=2
	movzbl	%r13b, %r13d
	orl	%ebp, %r13d
	addl	$-67108864, %edi        # imm = 0xFFFFFFFFFC000000
	jmp	.LBB28_46
	.align	16, 0x90
.LBB28_44:                              # %if.end.i.69
                                        #   in Loop: Header=BB28_42 Depth=2
	cmpl	$67108865, %edi         # imm = 0x4000001
	jl	.LBB28_46
# BB#45:                                # %if.then.29.i
                                        #   in Loop: Header=BB28_42 Depth=2
	movl	-24(%rsp), %ecx         # 4-byte Reload
	movzbl	%cl, %ecx
	orl	%ebp, %ecx
	movl	%ecx, -24(%rsp)         # 4-byte Spill
	addl	$-100663296, %edi       # imm = 0xFFFFFFFFFA000000
.LBB28_46:                              # %if.end.36.i
                                        #   in Loop: Header=BB28_42 Depth=2
	movq	%rdx, %r14
	movl	%edi, (%r15)
	leal	8(%rdi,%rdi,2), %ecx
	sarl	$4, %ecx
	addl	%ecx, -8(%r14,%r8,4)
	imull	$5, (%r15), %ecx
	leal	8(%r10,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, -8(%rsi,%r8,4)
	movl	4(%r15), %edi
	imull	$7, %edi, %ebx
	addl	$8, %ebx
	sarl	$4, %ebx
	addl	-4(%rsi,%r8,4), %ebx
	movzbl	-1(%rax,%r9), %edx
	shll	$19, %edx
	leal	(%rbx,%rdx), %ecx
	leal	-33554433(%rdx,%rbx), %edx
	cmpl	$33554431, %edx         # imm = 0x1FFFFFF
	ja	.LBB28_48
# BB#47:                                # %if.end.84.thread.i
                                        #   in Loop: Header=BB28_42 Depth=2
	movzbl	%r12b, %r12d
	orl	%ebp, %r12d
	addl	$-67108864, %ecx        # imm = 0xFFFFFFFFFC000000
	jmp	.LBB28_50
	.align	16, 0x90
.LBB28_48:                              # %if.end.84.i
                                        #   in Loop: Header=BB28_42 Depth=2
	cmpl	$67108865, %ecx         # imm = 0x4000001
	jl	.LBB28_50
# BB#49:                                # %if.then.88.i
                                        #   in Loop: Header=BB28_42 Depth=2
	movl	-8(%rsp), %edx          # 4-byte Reload
	movzbl	%dl, %edx
	orl	%ebp, %edx
	movl	%edx, -8(%rsp)          # 4-byte Spill
	addl	$-100663296, %ecx       # imm = 0xFFFFFFFFFA000000
.LBB28_50:                              # %if.end.95.i
                                        #   in Loop: Header=BB28_42 Depth=2
	movl	%ecx, 4(%r15)
	leal	8(%rcx,%rcx,2), %ecx
	sarl	$4, %ecx
	addl	%ecx, -4(%r14,%r8,4)
	imull	$5, 4(%r15), %ecx
	leal	8(%rdi,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, -4(%rsi,%r8,4)
	movl	8(%r15), %edi
	imull	$7, %edi, %edx
	addl	$8, %edx
	sarl	$4, %edx
	addl	(%rsi,%r8,4), %edx
	movzbl	(%rax,%r9), %ebx
	shll	$19, %ebx
	leal	(%rdx,%rbx), %ecx
	leal	-33554433(%rbx,%rdx), %edx
	cmpl	$33554431, %edx         # imm = 0x1FFFFFF
	ja	.LBB28_52
# BB#51:                                # %if.end.143.thread.i
                                        #   in Loop: Header=BB28_42 Depth=2
	movzbl	%r11b, %r11d
	orl	%ebp, %r11d
	addl	$-67108864, %ecx        # imm = 0xFFFFFFFFFC000000
	jmp	.LBB28_54
	.align	16, 0x90
.LBB28_52:                              # %if.end.143.i
                                        #   in Loop: Header=BB28_42 Depth=2
	cmpl	$67108865, %ecx         # imm = 0x4000001
	jl	.LBB28_54
# BB#53:                                # %if.then.147.i
                                        #   in Loop: Header=BB28_42 Depth=2
	movl	-16(%rsp), %edx         # 4-byte Reload
	movzbl	%dl, %edx
	orl	%ebp, %edx
	movl	%edx, -16(%rsp)         # 4-byte Spill
	addl	$-100663296, %ecx       # imm = 0xFFFFFFFFFA000000
.LBB28_54:                              # %if.end.154.i
                                        #   in Loop: Header=BB28_42 Depth=2
	movl	%ecx, 8(%r15)
	leal	8(%rcx,%rcx,2), %ecx
	sarl	$4, %ecx
	addl	%ecx, (%r14,%r8,4)
	imull	$5, 8(%r15), %ecx
	leal	8(%rdi,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, (%rsi,%r8,4)
	shrl	%ebp
	jne	.LBB28_42
# BB#55:                                # %for.end.i.83
                                        #   in Loop: Header=BB28_41 Depth=1
	movq	-72(%rsp), %rcx         # 8-byte Reload
	movb	%r13b, (%rcx)
	movq	-64(%rsp), %rdx         # 8-byte Reload
	movb	%r12b, (%rdx)
	movq	-80(%rsp), %r10         # 8-byte Reload
	movb	%r11b, (%r10)
	movq	-88(%rsp), %rdi         # 8-byte Reload
	movl	-24(%rsp), %esi         # 4-byte Reload
	movb	%sil, (%rdi)
	movq	-96(%rsp), %rbx         # 8-byte Reload
	movl	-8(%rsp), %esi          # 4-byte Reload
	movb	%sil, (%rbx)
	movq	-104(%rsp), %rbp        # 8-byte Reload
	movl	-16(%rsp), %esi         # 4-byte Reload
	movb	%sil, (%rbp)
	addq	-40(%rsp), %rax         # 8-byte Folded Reload
	incq	%rcx
	movq	%rcx, -72(%rsp)         # 8-byte Spill
	incq	%rdx
	movq	%rdx, -64(%rsp)         # 8-byte Spill
	incq	%r10
	incq	%rdi
	incq	%rbx
	incq	%rbp
	movl	-32(%rsp), %ecx         # 4-byte Reload
	incl	%ecx
	addq	-48(%rsp), %r14         # 8-byte Folded Reload
	cmpl	-108(%rsp), %ecx        # 4-byte Folded Reload
	jne	.LBB28_41
	jmp	.LBB28_115
.LBB28_76:                              # %for.cond.preheader.i.4
	movq	%r11, -64(%rsp)         # 8-byte Spill
	movq	%r14, -72(%rsp)         # 8-byte Spill
	cmpl	$0, -108(%rsp)          # 4-byte Folded Reload
	movq	%r8, %rdx
	jle	.LBB28_115
# BB#77:                                # %for.cond.2.preheader.lr.ph.i.9
	movslq	%ecx, %rcx
	movq	%rcx, -24(%rsp)         # 8-byte Spill
	leaq	(,%rcx,8), %rsi
	movq	%rsi, -40(%rsp)         # 8-byte Spill
	movq	%rcx, %rsi
	shlq	$5, %rsi
	movq	%rsi, -48(%rsp)         # 8-byte Spill
	leaq	(,%rcx,4), %rcx
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB28_78:                              # %for.cond.2.preheader.i.11
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_79 Depth 2
	movl	%ecx, -32(%rsp)         # 4-byte Spill
	movq	%rbp, -104(%rsp)        # 8-byte Spill
	movq	%rbx, -96(%rsp)         # 8-byte Spill
	movq	%rdi, -88(%rsp)         # 8-byte Spill
	movq	%rdx, -8(%rsp)          # 8-byte Spill
	movq	%r10, -80(%rsp)         # 8-byte Spill
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	-56(%rsp), %rax         # 8-byte Reload
	leaq	(%rdx,%rax), %rbx
	movl	$128, %edx
	movq	$-1, %r10
	movl	$0, -16(%rsp)           # 4-byte Folded Spill
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	.align	16, 0x90
.LBB28_79:                              # %for.body.5.i.23
                                        #   Parent Loop BB28_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r10, %r9
	movl	(%r15), %esi
	imull	$7, %esi, %edi
	addl	$8, %edi
	sarl	$4, %edi
	addl	-8(%rbx,%r9,4), %edi
	movq	-24(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r9), %r10
	movq	(%rsp), %rcx            # 8-byte Reload
	movzbl	-2(%rcx,%r10), %ecx
	shll	$19, %ecx
	leal	(%rdi,%rcx), %r11d
	leal	-33554433(%rcx,%rdi), %ecx
	cmpl	$33554431, %ecx         # imm = 0x1FFFFFF
	ja	.LBB28_81
# BB#80:                                # %if.then.21.i
                                        #   in Loop: Header=BB28_79 Depth=2
	movzbl	%r8b, %r8d
	orl	%edx, %r8d
	addl	$-67108864, %r11d       # imm = 0xFFFFFFFFFC000000
.LBB28_81:                              # %if.end.i.27
                                        #   in Loop: Header=BB28_79 Depth=2
	leal	-67108865(%r11), %ecx
	cmpl	$33554431, %ecx         # imm = 0x1FFFFFF
	ja	.LBB28_83
# BB#82:                                # %if.end.40.thread.i
                                        #   in Loop: Header=BB28_79 Depth=2
	movzbl	%r14b, %r14d
	orl	%edx, %r14d
	addl	$-100663296, %r11d      # imm = 0xFFFFFFFFFA000000
	jmp	.LBB28_85
	.align	16, 0x90
.LBB28_83:                              # %if.end.40.i
                                        #   in Loop: Header=BB28_79 Depth=2
	cmpl	$100663297, %r11d       # imm = 0x6000001
	jl	.LBB28_85
# BB#84:                                # %if.then.44.i
                                        #   in Loop: Header=BB28_79 Depth=2
	movzbl	%r8b, %r8d
	orl	%edx, %r8d
	movzbl	%r14b, %r14d
	orl	%edx, %r14d
	addl	$-134217728, %r11d      # imm = 0xFFFFFFFFF8000000
.LBB28_85:                              # %if.end.55.i
                                        #   in Loop: Header=BB28_79 Depth=2
	movl	%r11d, (%r15)
	leal	8(%r11,%r11,2), %ecx
	sarl	$4, %ecx
	movq	-8(%rsp), %rdi          # 8-byte Reload
	addl	%ecx, -8(%rdi,%r9,4)
	imull	$5, (%r15), %ecx
	leal	8(%rsi,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, -8(%rbx,%r9,4)
	movl	4(%r15), %esi
	imull	$7, %esi, %ecx
	addl	$8, %ecx
	sarl	$4, %ecx
	addl	-4(%rbx,%r9,4), %ecx
	movq	(%rsp), %rdi            # 8-byte Reload
	movzbl	-1(%rdi,%r10), %ebp
	shll	$19, %ebp
	leal	(%rcx,%rbp), %edi
	leal	-33554433(%rbp,%rcx), %ecx
	cmpl	$33554431, %ecx         # imm = 0x1FFFFFF
	ja	.LBB28_87
# BB#86:                                # %if.then.96.i
                                        #   in Loop: Header=BB28_79 Depth=2
	movzbl	%r13b, %r13d
	orl	%edx, %r13d
	addl	$-67108864, %edi        # imm = 0xFFFFFFFFFC000000
.LBB28_87:                              # %if.end.103.i
                                        #   in Loop: Header=BB28_79 Depth=2
	leal	-67108865(%rdi), %ecx
	cmpl	$33554431, %ecx         # imm = 0x1FFFFFF
	ja	.LBB28_89
# BB#88:                                # %if.end.118.thread.i
                                        #   in Loop: Header=BB28_79 Depth=2
	movl	-16(%rsp), %ecx         # 4-byte Reload
	movzbl	%cl, %ecx
	orl	%edx, %ecx
	movl	%ecx, -16(%rsp)         # 4-byte Spill
	addl	$-100663296, %edi       # imm = 0xFFFFFFFFFA000000
	jmp	.LBB28_91
	.align	16, 0x90
.LBB28_89:                              # %if.end.118.i
                                        #   in Loop: Header=BB28_79 Depth=2
	cmpl	$100663297, %edi        # imm = 0x6000001
	jl	.LBB28_91
# BB#90:                                # %if.then.122.i
                                        #   in Loop: Header=BB28_79 Depth=2
	movzbl	%r13b, %r13d
	orl	%edx, %r13d
	movl	-16(%rsp), %ecx         # 4-byte Reload
	movzbl	%cl, %ecx
	orl	%edx, %ecx
	movl	%ecx, -16(%rsp)         # 4-byte Spill
	addl	$-134217728, %edi       # imm = 0xFFFFFFFFF8000000
.LBB28_91:                              # %if.end.133.i
                                        #   in Loop: Header=BB28_79 Depth=2
	movl	%edi, 4(%r15)
	leal	8(%rdi,%rdi,2), %ecx
	sarl	$4, %ecx
	movq	-8(%rsp), %rdi          # 8-byte Reload
	addl	%ecx, -4(%rdi,%r9,4)
	imull	$5, 4(%r15), %ecx
	leal	8(%rsi,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, -4(%rbx,%r9,4)
	movl	8(%r15), %esi
	imull	$7, %esi, %ecx
	addl	$8, %ecx
	sarl	$4, %ecx
	addl	(%rbx,%r9,4), %ecx
	movq	(%rsp), %rdi            # 8-byte Reload
	movzbl	(%rdi,%r10), %ebp
	shll	$19, %ebp
	leal	(%rcx,%rbp), %edi
	leal	-33554433(%rbp,%rcx), %ecx
	cmpl	$33554431, %ecx         # imm = 0x1FFFFFF
	ja	.LBB28_93
# BB#92:                                # %if.then.174.i
                                        #   in Loop: Header=BB28_79 Depth=2
	movzbl	%al, %eax
	orl	%edx, %eax
	addl	$-67108864, %edi        # imm = 0xFFFFFFFFFC000000
.LBB28_93:                              # %if.end.181.i
                                        #   in Loop: Header=BB28_79 Depth=2
	leal	-67108865(%rdi), %ecx
	cmpl	$33554431, %ecx         # imm = 0x1FFFFFF
	ja	.LBB28_95
# BB#94:                                # %if.end.196.thread.i
                                        #   in Loop: Header=BB28_79 Depth=2
	movzbl	%r12b, %r12d
	orl	%edx, %r12d
	addl	$-100663296, %edi       # imm = 0xFFFFFFFFFA000000
	jmp	.LBB28_97
	.align	16, 0x90
.LBB28_95:                              # %if.end.196.i
                                        #   in Loop: Header=BB28_79 Depth=2
	cmpl	$100663297, %edi        # imm = 0x6000001
	jl	.LBB28_97
# BB#96:                                # %if.then.200.i
                                        #   in Loop: Header=BB28_79 Depth=2
	movzbl	%al, %eax
	orl	%edx, %eax
	movzbl	%r12b, %r12d
	orl	%edx, %r12d
	addl	$-134217728, %edi       # imm = 0xFFFFFFFFF8000000
.LBB28_97:                              # %if.end.211.i
                                        #   in Loop: Header=BB28_79 Depth=2
	movl	%edi, 8(%r15)
	leal	8(%rdi,%rdi,2), %ecx
	sarl	$4, %ecx
	movq	-8(%rsp), %rdi          # 8-byte Reload
	addl	%ecx, (%rdi,%r9,4)
	imull	$5, 8(%r15), %ecx
	leal	8(%rsi,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, (%rbx,%r9,4)
	shrl	%edx
	jne	.LBB28_79
# BB#98:                                # %for.end.i.37
                                        #   in Loop: Header=BB28_78 Depth=1
	movq	-72(%rsp), %rcx         # 8-byte Reload
	movb	%r8b, (%rcx)
	movq	-64(%rsp), %rdx         # 8-byte Reload
	movb	%r13b, (%rdx)
	movq	-80(%rsp), %r10         # 8-byte Reload
	movb	%al, (%r10)
	movq	-88(%rsp), %rdi         # 8-byte Reload
	movb	%r14b, (%rdi)
	movq	-96(%rsp), %rbx         # 8-byte Reload
	movl	-16(%rsp), %eax         # 4-byte Reload
	movb	%al, (%rbx)
	movq	-104(%rsp), %rax        # 8-byte Reload
	movb	%r12b, (%rax)
	movq	%rax, %rbp
	movq	(%rsp), %rax            # 8-byte Reload
	addq	-40(%rsp), %rax         # 8-byte Folded Reload
	incq	%rcx
	movq	%rcx, -72(%rsp)         # 8-byte Spill
	incq	%rdx
	movq	%rdx, -64(%rsp)         # 8-byte Spill
	incq	%r10
	incq	%rdi
	incq	%rbx
	incq	%rbp
	movl	-32(%rsp), %ecx         # 4-byte Reload
	incl	%ecx
	movq	-8(%rsp), %rdx          # 8-byte Reload
	addq	-48(%rsp), %rdx         # 8-byte Folded Reload
	cmpl	-108(%rsp), %ecx        # 4-byte Folded Reload
	jne	.LBB28_78
	jmp	.LBB28_115
.LBB28_18:                              # %for.cond.preheader.i
	cmpl	$0, -108(%rsp)          # 4-byte Folded Reload
	movq	%rax, %rdi
	movq	%r10, %rax
	jle	.LBB28_115
# BB#19:                                # %for.cond.2.preheader.lr.ph.i
	movslq	%ecx, %r14
	leaq	(,%r14,8), %rcx
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	movq	%r14, %rcx
	shlq	$5, %rcx
	movq	%rcx, -16(%rsp)         # 8-byte Spill
	leaq	(,%r14,4), %rcx
	movq	%rcx, -24(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB28_20:                              # %for.cond.2.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_21 Depth 2
	movl	%ecx, (%rsp)            # 4-byte Spill
	movq	%rax, -80(%rsp)         # 8-byte Spill
	movq	-24(%rsp), %rax         # 8-byte Reload
	leaq	(%r11,%rax), %r9
	movl	$128, %esi
	movq	$-1, %rbp
	xorl	%r12d, %r12d
	xorl	%r10d, %r10d
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB28_21:                              # %for.body.5.i
                                        #   Parent Loop BB28_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r15), %edx
	imull	$7, %edx, %r8d
	addl	$8, %r8d
	sarl	$4, %r8d
	addl	-8(%r9,%rbp,4), %r8d
	leaq	(%r14,%rbp), %rbx
	movq	%rdi, %rax
	movzbl	-2(%rax,%rbx), %ecx
	shll	$19, %ecx
	addl	%r8d, %ecx
	movl	%ecx, (%r15)
	cmpl	$67108864, %ecx         # imm = 0x4000000
	jg	.LBB28_23
# BB#22:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB28_21 Depth=2
	movzbl	-2(%rax,%rbx), %edi
	cmpl	$255, %edi
	jne	.LBB28_24
.LBB28_23:                              # %if.then.24.i
                                        #   in Loop: Header=BB28_21 Depth=2
	movzbl	%r13b, %r13d
	orl	%esi, %r13d
	addl	$-134217728, %ecx       # imm = 0xFFFFFFFFF8000000
	movl	%ecx, (%r15)
.LBB28_24:                              # %if.end.i
                                        #   in Loop: Header=BB28_21 Depth=2
	leal	8(%rcx,%rcx,2), %ecx
	sarl	$4, %ecx
	addl	%ecx, -8(%r11,%rbp,4)
	imull	$5, (%r15), %ecx
	leal	8(%rdx,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, -8(%r9,%rbp,4)
	movl	4(%r15), %edx
	imull	$7, %edx, %edi
	addl	$8, %edi
	sarl	$4, %edi
	addl	-4(%r9,%rbp,4), %edi
	movzbl	-1(%rax,%rbx), %ecx
	shll	$19, %ecx
	addl	%edi, %ecx
	movl	%ecx, 4(%r15)
	cmpl	$67108864, %ecx         # imm = 0x4000000
	jg	.LBB28_26
# BB#25:                                # %lor.lhs.false.65.i
                                        #   in Loop: Header=BB28_21 Depth=2
	movzbl	-1(%rax,%rbx), %edi
	cmpl	$255, %edi
	jne	.LBB28_27
.LBB28_26:                              # %if.then.72.i
                                        #   in Loop: Header=BB28_21 Depth=2
	movzbl	%r12b, %r12d
	orl	%esi, %r12d
	addl	$-134217728, %ecx       # imm = 0xFFFFFFFFF8000000
	movl	%ecx, 4(%r15)
.LBB28_27:                              # %if.end.79.i
                                        #   in Loop: Header=BB28_21 Depth=2
	leal	8(%rcx,%rcx,2), %ecx
	sarl	$4, %ecx
	addl	%ecx, -4(%r11,%rbp,4)
	imull	$5, 4(%r15), %ecx
	leal	8(%rdx,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, -4(%r9,%rbp,4)
	movl	8(%r15), %edx
	imull	$7, %edx, %edi
	addl	$8, %edi
	sarl	$4, %edi
	addl	(%r9,%rbp,4), %edi
	movzbl	(%rax,%rbx), %ecx
	shll	$19, %ecx
	addl	%edi, %ecx
	movl	%ecx, 8(%r15)
	cmpl	$67108864, %ecx         # imm = 0x4000000
	jg	.LBB28_30
# BB#28:                                # %lor.lhs.false.116.i
                                        #   in Loop: Header=BB28_21 Depth=2
	movzbl	(%rax,%rbx), %edi
	cmpl	$255, %edi
	je	.LBB28_30
# BB#29:                                #   in Loop: Header=BB28_21 Depth=2
	movq	%rax, %rdi
	jmp	.LBB28_31
	.align	16, 0x90
.LBB28_30:                              # %if.then.123.i
                                        #   in Loop: Header=BB28_21 Depth=2
	movq	%rax, %rdi
	movzbl	%r10b, %r10d
	orl	%esi, %r10d
	addl	$-134217728, %ecx       # imm = 0xFFFFFFFFF8000000
	movl	%ecx, 8(%r15)
.LBB28_31:                              # %if.end.130.i
                                        #   in Loop: Header=BB28_21 Depth=2
	leal	8(%rcx,%rcx,2), %ecx
	sarl	$4, %ecx
	addl	%ecx, (%r11,%rbp,4)
	imull	$5, 8(%r15), %ecx
	leal	8(%rdx,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, (%r9,%rbp,4)
	shrl	%esi
	movq	%rbx, %rbp
	jne	.LBB28_21
# BB#32:                                # %for.end.i
                                        #   in Loop: Header=BB28_20 Depth=1
	addq	-8(%rsp), %rdi          # 8-byte Folded Reload
	movq	-72(%rsp), %rax         # 8-byte Reload
	movb	%r13b, (%rax)
	incq	%rax
	movq	%rax, -72(%rsp)         # 8-byte Spill
	movq	-64(%rsp), %rax         # 8-byte Reload
	movb	%r12b, (%rax)
	incq	%rax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	movq	-80(%rsp), %rax         # 8-byte Reload
	movb	%r10b, (%rax)
	incq	%rax
	movl	(%rsp), %ecx            # 4-byte Reload
	incl	%ecx
	addq	-16(%rsp), %r11         # 8-byte Folded Reload
	cmpl	-108(%rsp), %ecx        # 4-byte Folded Reload
	jne	.LBB28_20
.LBB28_115:                             # %sw.epilog
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	do_floyd_steinberg, .Lfunc_end28-do_floyd_steinberg
	.cfi_endproc

	.align	16, 0x90
	.type	rescale_byte_wise1x1,@function
rescale_byte_wise1x1:                   # @rescale_byte_wise1x1
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edi, %edi
	jle	.LBB29_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%edi, %r8
	xorl	%edx, %edx
	.align	16, 0x90
.LBB29_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	1(%rsi,%rdx), %al
	movb	%al, 1(%rcx,%rdx)
	movb	2(%rsi,%rdx), %al
	movb	%al, 2(%rcx,%rdx)
	movb	3(%rsi,%rdx), %al
	movb	%al, 3(%rcx,%rdx)
	addq	$4, %rdx
	cmpq	%r8, %rdx
	jl	.LBB29_2
.LBB29_3:                               # %for.end
	movl	%edi, %eax
	retq
.Lfunc_end29:
	.size	rescale_byte_wise1x1, .Lfunc_end29-rescale_byte_wise1x1
	.cfi_endproc

	.align	16, 0x90
	.type	rescale_byte_wise1x2,@function
rescale_byte_wise1x2:                   # @rescale_byte_wise1x2
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edi, %edi
	jle	.LBB30_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%edi, %r8
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB30_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rsi,%r10), %r9d
	movzbl	1(%rdx,%r10), %eax
	addl	%r9d, %eax
	shrl	%eax
	movb	%al, 1(%rcx,%r10)
	movzbl	2(%rsi,%r10), %r9d
	movzbl	2(%rdx,%r10), %eax
	addl	%r9d, %eax
	shrl	%eax
	movb	%al, 2(%rcx,%r10)
	movzbl	3(%rsi,%r10), %r9d
	movzbl	3(%rdx,%r10), %eax
	addl	%r9d, %eax
	shrl	%eax
	movb	%al, 3(%rcx,%r10)
	addq	$4, %r10
	cmpq	%r8, %r10
	jl	.LBB30_2
.LBB30_3:                               # %for.end
	movl	%edi, %eax
	retq
.Lfunc_end30:
	.size	rescale_byte_wise1x2, .Lfunc_end30-rescale_byte_wise1x2
	.cfi_endproc

	.align	16, 0x90
	.type	rescale_byte_wise2x1,@function
rescale_byte_wise2x1:                   # @rescale_byte_wise2x1
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edi, %eax
	shrl	$31, %eax
	leal	(%rax,%rdi), %eax
	sarl	%eax
	cmpl	$2, %edi
	jl	.LBB31_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%eax, %r8
	xorl	%edi, %edi
	.align	16, 0x90
.LBB31_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rsi,%rdi,2), %r9d
	movzbl	5(%rsi,%rdi,2), %edx
	addl	%r9d, %edx
	shrl	%edx
	movb	%dl, 1(%rcx,%rdi)
	movzbl	2(%rsi,%rdi,2), %r9d
	movzbl	6(%rsi,%rdi,2), %edx
	addl	%r9d, %edx
	shrl	%edx
	movb	%dl, 2(%rcx,%rdi)
	movzbl	3(%rsi,%rdi,2), %r9d
	movzbl	7(%rsi,%rdi,2), %edx
	addl	%r9d, %edx
	shrl	%edx
	movb	%dl, 3(%rcx,%rdi)
	addq	$4, %rdi
	cmpq	%r8, %rdi
	jl	.LBB31_2
.LBB31_3:                               # %for.end
	retq
.Lfunc_end31:
	.size	rescale_byte_wise2x1, .Lfunc_end31-rescale_byte_wise2x1
	.cfi_endproc

	.align	16, 0x90
	.type	rescale_byte_wise2x2,@function
rescale_byte_wise2x2:                   # @rescale_byte_wise2x2
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edi, %eax
	shrl	$31, %eax
	leal	(%rax,%rdi), %eax
	sarl	%eax
	cmpl	$2, %edi
	jl	.LBB32_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%eax, %r8
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB32_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rsi,%r11,2), %r9d
	movzbl	5(%rsi,%r11,2), %r10d
	addl	%r9d, %r10d
	movzbl	1(%rdx,%r11,2), %r9d
	addl	%r10d, %r9d
	movzbl	5(%rdx,%r11,2), %edi
	addl	%r9d, %edi
	shrl	$2, %edi
	movb	%dil, 1(%rcx,%r11)
	movzbl	2(%rsi,%r11,2), %r9d
	movzbl	6(%rsi,%r11,2), %edi
	addl	%r9d, %edi
	movzbl	2(%rdx,%r11,2), %r9d
	addl	%edi, %r9d
	movzbl	6(%rdx,%r11,2), %edi
	addl	%r9d, %edi
	shrl	$2, %edi
	movb	%dil, 2(%rcx,%r11)
	movzbl	3(%rsi,%r11,2), %r9d
	movzbl	7(%rsi,%r11,2), %edi
	addl	%r9d, %edi
	movzbl	3(%rdx,%r11,2), %r9d
	addl	%edi, %r9d
	movzbl	7(%rdx,%r11,2), %edi
	addl	%r9d, %edi
	shrl	$2, %edi
	movb	%dil, 3(%rcx,%r11)
	addq	$4, %r11
	cmpq	%r8, %r11
	jl	.LBB32_2
.LBB32_3:                               # %for.end
	retq
.Lfunc_end32:
	.size	rescale_byte_wise2x2, .Lfunc_end32-rescale_byte_wise2x2
	.cfi_endproc

	.type	cdj670_procs,@object    # @cdj670_procs
	.section	.rodata,"a",@progbits
	.align	8
cdj670_procs:
	.quad	hp_colour_open
	.quad	gx_default_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gdev_prn_output_page
	.quad	gdev_prn_close
	.quad	0
	.quad	gdev_cmyk_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_bits
	.quad	cdj850_get_params
	.quad	cdj850_put_params
	.quad	gdev_cmyk_map_cmyk_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	cdj670_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cdj670"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceCMYK"
	.size	.L.str.1, 11

	.type	gs_cdj670_device,@object # @gs_cdj670_device
	.section	.rodata,"a",@progbits
	.globl	gs_cdj670_device
	.align	8
gs_cdj670_device:
	.long	18560                   # 0x4880
	.zero	4
	.quad	cdj670_procs
	.quad	.L.str
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	3                       # 0x3
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	cdj850_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	1                       # 0x1
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	9                       # 0x9
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.quad	cdj850_start_raster_mode
	.quad	cdj850_print_non_blank_lines
	.quad	cdj850_terminate_page
	.size	gs_cdj670_device, 18560

	.type	cdj850_procs,@object    # @cdj850_procs
	.align	8
cdj850_procs:
	.quad	hp_colour_open
	.quad	gx_default_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gdev_prn_output_page
	.quad	gdev_prn_close
	.quad	0
	.quad	gdev_cmyk_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_bits
	.quad	cdj850_get_params
	.quad	cdj850_put_params
	.quad	gdev_cmyk_map_cmyk_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	cdj850_procs, 584

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"cdj850"
	.size	.L.str.2, 7

	.type	gs_cdj850_device,@object # @gs_cdj850_device
	.section	.rodata,"a",@progbits
	.globl	gs_cdj850_device
	.align	8
gs_cdj850_device:
	.long	18560                   # 0x4880
	.zero	4
	.quad	cdj850_procs
	.quad	.L.str.2
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	3                       # 0x3
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	cdj850_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	1                       # 0x1
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	9                       # 0x9
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.quad	cdj850_start_raster_mode
	.quad	cdj850_print_non_blank_lines
	.quad	cdj850_terminate_page
	.size	gs_cdj850_device, 18560

	.type	cdj880_procs,@object    # @cdj880_procs
	.align	8
cdj880_procs:
	.quad	hp_colour_open
	.quad	gx_default_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gdev_prn_output_page
	.quad	gdev_prn_close
	.quad	0
	.quad	gdev_cmyk_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_bits
	.quad	cdj850_get_params
	.quad	cdj850_put_params
	.quad	gdev_cmyk_map_cmyk_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	cdj880_procs, 584

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"cdj880"
	.size	.L.str.3, 7

	.type	gs_cdj880_device,@object # @gs_cdj880_device
	.section	.rodata,"a",@progbits
	.globl	gs_cdj880_device
	.align	8
gs_cdj880_device:
	.long	18560                   # 0x4880
	.zero	4
	.quad	cdj880_procs
	.quad	.L.str.3
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	3                       # 0x3
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	cdj850_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	1                       # 0x1
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.quad	cdj880_start_raster_mode
	.quad	cdj880_print_non_blank_lines
	.quad	cdj880_terminate_page
	.size	gs_cdj880_device, 18560

	.type	cdj890_procs,@object    # @cdj890_procs
	.align	8
cdj890_procs:
	.quad	hp_colour_open
	.quad	gx_default_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gdev_prn_output_page
	.quad	gdev_prn_close
	.quad	0
	.quad	gdev_cmyk_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_bits
	.quad	cdj850_get_params
	.quad	cdj850_put_params
	.quad	gdev_cmyk_map_cmyk_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	cdj890_procs, 584

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"cdj890"
	.size	.L.str.4, 7

	.type	gs_cdj890_device,@object # @gs_cdj890_device
	.section	.rodata,"a",@progbits
	.globl	gs_cdj890_device
	.align	8
gs_cdj890_device:
	.long	18560                   # 0x4880
	.zero	4
	.quad	cdj890_procs
	.quad	.L.str.4
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	3                       # 0x3
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	cdj850_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	1                       # 0x1
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	9                       # 0x9
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.quad	cdj850_start_raster_mode
	.quad	cdj850_print_non_blank_lines
	.quad	cdj850_terminate_page
	.size	gs_cdj890_device, 18560

	.type	cdj1600_procs,@object   # @cdj1600_procs
	.align	8
cdj1600_procs:
	.quad	hp_colour_open
	.quad	gx_default_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gdev_prn_output_page
	.quad	gdev_prn_close
	.quad	gdev_pcl_map_rgb_color
	.quad	gdev_pcl_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_bits
	.quad	cdj850_get_params
	.quad	cdj850_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	cdj1600_procs, 584

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"cdj1600"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"DeviceRGB"
	.size	.L.str.6, 10

	.type	gs_cdj1600_device,@object # @gs_cdj1600_device
	.section	.rodata,"a",@progbits
	.globl	gs_cdj1600_device
	.align	8
gs_cdj1600_device:
	.long	18560                   # 0x4880
	.zero	4
	.quad	cdj1600_procs
	.quad	.L.str.5
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.6
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	cdj850_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	4294967295              # 0xffffffff
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.quad	cdj1600_start_raster_mode
	.quad	cdj1600_print_non_blank_lines
	.quad	cdj1600_terminate_page
	.size	gs_cdj1600_device, 18560

	.type	chp2200_procs,@object   # @chp2200_procs
	.align	8
chp2200_procs:
	.quad	hp_colour_open
	.quad	gx_default_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gdev_prn_output_page
	.quad	gdev_prn_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_bits
	.quad	cdj850_get_params
	.quad	cdj850_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	chp2200_procs, 584

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"chp2200"
	.size	.L.str.7, 8

	.type	gs_chp2200_device,@object # @gs_chp2200_device
	.section	.rodata,"a",@progbits
	.globl	gs_chp2200_device
	.align	8
gs_chp2200_device:
	.long	18560                   # 0x4880
	.zero	4
	.quad	chp2200_procs
	.quad	.L.str.7
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.6
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	chp2200_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	0                       # 0x0
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	5                       # 0x5
	.long	10                      # 0xa
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.quad	chp2200_start_raster_mode
	.quad	0
	.quad	chp2200_terminate_page
	.size	gs_chp2200_device, 18560

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"cdnj500"
	.size	.L.str.8, 8

	.type	gs_cdnj500_device,@object # @gs_cdnj500_device
	.section	.rodata,"a",@progbits
	.globl	gs_cdnj500_device
	.align	8
gs_cdnj500_device:
	.long	18560                   # 0x4880
	.zero	4
	.quad	chp2200_procs
	.quad	.L.str.8
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.6
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	cdnj500_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	0                       # 0x0
	.long	24                      # 0x18
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	6                       # 0x6
	.long	10                      # 0xa
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.quad	cdnj500_start_raster_mode
	.quad	0
	.quad	cdnj500_terminate_page
	.size	gs_cdnj500_device, 18560

	.type	hp_colour_open.dj_a4,@object # @hp_colour_open.dj_a4
	.align	16
hp_colour_open.dj_a4:
	.long	1040522936              # float 1.300000e-01
	.long	1055622431              # float 4.600000e-01
	.long	1040522936              # float 1.300000e-01
	.long	1025758986              # float 4.000000e-02
	.size	hp_colour_open.dj_a4, 16

	.type	hp_colour_open.dj_letter,@object # @hp_colour_open.dj_letter
	.align	16
hp_colour_open.dj_letter:
	.long	1048576000              # float 2.500000e-01
	.long	1056964608              # float 5.000000e-01
	.long	1048576000              # float 2.500000e-01
	.long	1043005964              # float 1.670000e-01
	.size	hp_colour_open.dj_letter, 16

	.type	hp_colour_open.m_cdj1600,@object # @hp_colour_open.m_cdj1600
	.align	16
hp_colour_open.m_cdj1600:
	.long	1048576000              # float 2.500000e-01
	.long	1056964608              # float 5.000000e-01
	.long	1048576000              # float 2.500000e-01
	.long	1056964608              # float 5.000000e-01
	.size	hp_colour_open.m_cdj1600, 16

	.type	hp_colour_open.chp2200_a4,@object # @hp_colour_open.chp2200_a4
	.align	16
hp_colour_open.chp2200_a4:
	.long	1040522936              # float 1.300000e-01
	.long	1055622431              # float 4.600000e-01
	.long	1040522936              # float 1.300000e-01
	.long	1034147594              # float 8.000000e-02
	.size	hp_colour_open.chp2200_a4, 16

	.type	hp_colour_open.chp2200_letter,@object # @hp_colour_open.chp2200_letter
	.align	16
hp_colour_open.chp2200_letter:
	.long	1048576000              # float 2.500000e-01
	.long	1055622431              # float 4.600000e-01
	.long	1048576000              # float 2.500000e-01
	.long	1034147594              # float 8.000000e-02
	.size	hp_colour_open.chp2200_letter, 16

	.type	hp_colour_open.cdnj500,@object # @hp_colour_open.cdnj500
	.align	16
hp_colour_open.cdnj500:
	.zero	16
	.size	hp_colour_open.cdnj500, 16

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"Quality"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Papertype"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"MasterGamma"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GammaValC"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GammaValM"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GammaValY"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"GammaValK"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"BlackCorrect"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"BitsPerPixel"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"ProcessColorModel"
	.size	.L.str.18, 18

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"0M"
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"\033*rC\033E"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\033&l0H"
	.size	.L.str.21, 6

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"\033*rC\f\033E"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"\033%-12345X"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"\033%-12345X@PJL EOJ\n\033%-12345X"
	.size	.L.str.24, 28

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"\033*rC"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"\033%-12345X@PJL EOJ \n"
	.size	.L.str.26, 20

	.type	gammat,@object          # @gammat
	.section	.rodata,"a",@progbits
	.align	16
gammat:
	.quad	gammat850
	.quad	gammat850
	.quad	gammat850
	.quad	gammat890
	.quad	gammat850
	.size	gammat, 40

	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"cdj850_print_page"
	.size	.L.str.27, 18

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"hp850_print_page"
	.size	.L.str.28, 17

	.type	gammat850,@object       # @gammat850
	.section	.rodata,"a",@progbits
	.align	4
gammat850:
	.ascii	"\000\000\000\002\002\002\003\003\003\005\005\005\007\007\006\007\007\006\007\007\007\b\b\b\b\b\b\t\t\t\t\t\n\n\n\n\n\n\013\013\f\f\f\f\f\f\r\r\016\016\016\017\017\020\020\017\020\020\021\021\021\021\021\022\022\022\023\023\024\024\024\024\024\025\025\025\026\026\027\027\027\027\027\030\030\031\031\032\032\032\032\032\033\033\033\033\034\034\035\034\034\035\035\036\036\037\037  !\"##$$%%&&''(())***+++,--..//00122334456667789::;<<=>>?AABCCDEEFHIIJKKLMOOPQRSSTVWXXYZ[\\]^_`aacdefghijlmnoprsuwxz|}\177\201\203\204\207\210\212\214\216\220\222\223\226\230\232\235\237\242\244\246\250\253\256\260\264\266\273\300\305\314\327\377"
	.ascii	"\000\000\000\001\001\001\003\003\003\004\004\004\005\005\005\006\006\006\007\007\007\007\007\007\b\b\b\t\t\n\n\t\n\n\n\013\013\013\013\013\f\f\f\r\r\r\016\016\017\017\017\020\020\020\020\020\021\021\021\021\021\022\022\023\023\023\023\023\024\024\024\025\025\026\026\026\027\027\030\030\031\031\031\032\032\033\033\034\035\035\035\035\036\036\037\036\037\037 \037\037  !!\"\"##$$%%&&''(())**++,,--../001122334556677899::;<<==>?@ABBCDDFGGHIIJLMMNOOPQRSTUVWWXYZ[[\\]^_`abcddefgijklmpqrstvwy{|}\200\201\202\205\206\207\212\213\216\220\221\224\226\230\232\235\237\242\244\250\251\252\254\257\261\263\266\271\275\301\306\314\327\377"
	.ascii	"\000\000\000\002\002\002\003\003\003\005\005\005\007\007\006\007\007\006\007\007\007\b\b\b\b\b\b\t\t\t\t\t\n\t\t\n\n\n\n\n\013\013\013\f\f\r\r\016\016\017\017\020\020\020\020\020\021\021\022\022\022\023\022\023\023\023\024\024\025\025\025\026\026\026\026\026\027\027\030\030\031\031\031\032\033\034\034\035\035\035\036\036\036\036\037\037  !! !!\"\"##$$%%&&''(())**++,,----../00112233455667789:;;<==>>?@ABCCDEEFGHIJJKLMMNOOPQRSTUVWWXYZ[[]^_`abdeffghjklmnoqrstuvwy{|~\200\202\203\206\207\211\213\214\217\221\222\224\226\230\232\234\236\240\243\246\247\251\253\255\260\262\265\270\274\300\306\314\327\377"
	.ascii	"\000\000\000\001\001\001\001\001\001\003\003\003\003\003\002\004\003\003\003\003\003\004\004\004\005\005\005\005\005\006\006\006\006\006\006\007\007\007\007\007\b\b\b\t\t\b\b\b\t\t\t\n\n\n\n\n\013\013\013\013\f\f\f\r\r\f\f\f\r\r\r\r\r\016\016\016\016\016\017\017\020\020\020\021\021\021\021\022\022\022\023\023\024\024\024\024\024\025\025\025\025\026\026\026\026\027\026\027\027\030\030\030\030\031\031\032\032\032\032\033\033\034\034\034\034\035\035\036\036\037\037\037  !!\"\"#$$$%%%&&((())*++++,--.//011244566889:;<<=>??@ABCDEFGHHIKKLMNPQRRSTUVXYZ[^_`bcdegijknopstvxy|~\177\203\205\206\212\214\215\222\224\227\232\234\240\243\246\251\256\261\266\273\302\313\327\377"
	.zero	1024
	.size	gammat850, 2048

	.type	gammat890,@object       # @gammat890
	.align	4
gammat890:
	.ascii	"\000\002\003\005\007\b\n\f\r\017\020\022\024\025\027\031\032\034\035\037 \"$%'(*+-.0235689;<>?ABDEFHIKLNOQRSUVXY[\\]_`acdfghjklnoprstvwxy{|}\177\200\201\202\204\205\206\207\211\212\213\214\215\217\220\221\222\223\225\226\227\230\231\232\233\235\236\237\240\241\242\243\244\246\247\250\251\252\253\254\255\256\257\260\261\262\263\264\265\266\267\270\271\272\273\274\275\276\277\300\301\302\303\304\305\306\307\310\311\311\312\313\314\315\316\317\320\320\321\322\323\324\325\325\326\327\330\331\331\332\333\334\334\335\336\337\337\340\341\341\342\343\344\344\345\346\346\347\347\350\351\351\352\353\353\354\354\355\356\356\357\357\360\360\361\361\362\362\363\363\364\364\365\365\366\366\367\367\367\370\370\371\371\371\372\372\372\373\373\373\374\374\374\374\375\375\375\375\376\376\376\376\376\377\377\377\377\377\377\377"
	.ascii	"\000\001\002\003\004\005\006\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\031\032\033\034\035\036\037 !\"#$%&'()*+,-./012456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVVWXYZ[\\]^_`abcdefghijklmmnopqrstuvwxyzz{|}~\177\200\201\202\203\204\204\205\206\207\210\211\212\213\214\214\215\216\217\220\221\222\223\223\224\225\226\227\230\231\231\232\233\234\235\236\236\237\240\241\242\243\243\244\245\246\247\250\250\251\252\253\254\254\255\256\257\260\260\261\262\263\263\264\265\266\266\267\270\271\271\272\273\274\274\275\276\277\277\300\301\301\302\303\304\304\305\306\306\307\310\310\311\312\312\313\314\314\315\315\316\317\317\320\321\321\322\322\323\323\324\325\325\326\326\327\327\330\330\331\331\332\332\332\333\333\333\334\334"
	.ascii	"\000\001\003\004\006\007\t\n\013\r\016\020\021\022\024\025\027\030\031\033\034\035\037 \"#$&'(*+,./0234678:;<>?@BCDFGHIKLMOPQRTUVXYZ[]^_`acdefhijkmnopqstuvwxz{|}~\177\201\202\203\204\205\206\210\211\212\213\214\215\216\217\221\222\223\224\225\226\227\230\231\232\233\235\236\237\240\241\242\243\244\245\246\247\250\251\252\253\254\255\256\257\260\261\262\263\264\265\266\267\270\271\272\273\274\275\276\277\300\301\302\303\304\304\305\306\307\310\311\312\313\314\315\315\316\317\320\321\322\323\323\324\325\326\327\330\330\331\332\333\334\334\335\336\337\337\340\341\342\342\343\344\345\345\346\347\350\350\351\352\352\353\354\354\355\356\356\357\357\360\361\361\362\362\363\364\364\365\365\366\366\367\367\370\370\371\371\372\372\373\373\373\374\374\375\375\375\376\376\376\376\377\377\377\377"
	.ascii	"\000\000\001\001\001\002\002\002\002\003\003\003\004\004\004\005\005\005\006\006\006\007\007\007\b\b\b\t\t\t\t\n\n\n\013\013\013\f\f\r\r\r\016\016\016\017\017\017\020\020\020\021\021\021\022\022\022\023\023\024\024\024\025\025\025\026\026\026\027\027\030\030\030\031\031\032\032\032\033\033\033\034\034\035\035\035\036\036\037\037   !!\"\"\"##$$%%%&&''(()))**++,,--..//00112233445566778899::;<<==>>?@@AABCCDDEFFGHHIJJKLLMNNOPPQRSSTUVVWXYZ[[\\]^_`aabcdefghijklnopqrsuvwxz{|~\177\201\202\204\206\207\211\213\215\217\221\223\225\230\232\235\237\242\246\251\255\262\267\275\304\317\377"
	.zero	1024
	.size	gammat890, 2048

	.type	.L.str.29,@object       # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"\033*b%dY"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"\033*b0V"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"(input)chp2200_print_page"
	.size	.L.str.31, 26

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"(seed)chp2200_print_page"
	.size	.L.str.32, 25

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"(output)chp2200_print_page"
	.size	.L.str.33, 27

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\033*b"
	.size	.L.str.34, 4

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%dy"
	.size	.L.str.35, 4

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"%dw"
	.size	.L.str.36, 4

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"0w"
	.size	.L.str.37, 3

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"0Y"
	.size	.L.str.38, 3

	.type	.Lcdnj500_print_page.CRD_SeqC,@object # @cdnj500_print_page.CRD_SeqC
	.section	.rodata,"a",@progbits
	.align	16
.Lcdnj500_print_page.CRD_SeqC:
	.ascii	"\033*g12W\006\037\000\001\000\000\000\000\n\001 \001"
	.size	.Lcdnj500_print_page.CRD_SeqC, 18

	.type	.L.str.39,@object       # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"(input)cdnj500_print_page"
	.size	.L.str.39, 26

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"(seed)cdnj500_print_page"
	.size	.L.str.40, 25

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"(output)cdnj500_print_page"
	.size	.L.str.41, 27

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"\033*r1A"
	.size	.L.str.42, 6

	.type	cdj850_print_non_blank_lines.plane_code,@object # @cdj850_print_non_blank_lines.plane_code
	.section	.rodata,"a",@progbits
	.align	16
cdj850_print_non_blank_lines.plane_code:
	.quad	.L.str.43
	.quad	.L.str.44
	.size	cdj850_print_non_blank_lines.plane_code, 16

	.type	.L.str.43,@object       # @.str.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.43:
	.asciz	"wvvv"
	.size	.L.str.43, 5

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"vvvv"
	.size	.L.str.44, 5

	.type	rescale_color_plane,@object # @rescale_color_plane
	.section	.rodata,"a",@progbits
	.align	16
rescale_color_plane:
	.quad	rescale_byte_wise1x1
	.quad	rescale_byte_wise1x2
	.quad	rescale_byte_wise2x1
	.quad	rescale_byte_wise2x2
	.size	rescale_color_plane, 32

	.type	.L.str.45,@object       # @.str.45
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.45:
	.asciz	"%d%c"
	.size	.L.str.45, 5

	.type	cdj880_print_non_blank_lines.plane_code,@object # @cdj880_print_non_blank_lines.plane_code
	.section	.rodata,"a",@progbits
	.align	16
cdj880_print_non_blank_lines.plane_code:
	.quad	.L.str.46
	.quad	.L.str.47
	.size	cdj880_print_non_blank_lines.plane_code, 16

	.type	.L.str.46,@object       # @.str.46
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.46:
	.asciz	"WVVV"
	.size	.L.str.46, 5

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"VVVV"
	.size	.L.str.47, 5

	.type	hp850_cmyk_init,@object # @hp850_cmyk_init
	.section	.rodata,"a",@progbits
hp850_cmyk_init:
	.ascii	"\002\004\001,\001,\000\002\001,\001,\000\002\001,\001,\000\002\001,\001,\000\002"
	.size	hp850_cmyk_init, 26

	.type	.L.str.48,@object       # @.str.48
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.48:
	.asciz	"\033*rbC"
	.size	.L.str.48, 6

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"\033E"
	.size	.L.str.49, 3

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"\033&l%daolE"
	.size	.L.str.50, 10

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"\033*o%dM"
	.size	.L.str.51, 7

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"\033&l%dM"
	.size	.L.str.52, 7

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"\033*p%dY"
	.size	.L.str.53, 7

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"\033*g%dW"
	.size	.L.str.54, 7

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"%dm"
	.size	.L.str.55, 4

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"\033%%-12345X@PJL ENTER LANGUAGE=PCL3GUI\n"
	.size	.L.str.56, 39

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"\033*b%dm"
	.size	.L.str.57, 7

	.type	.Lchp2200_start_raster_mode.CRD_SeqC,@object # @chp2200_start_raster_mode.CRD_SeqC
	.section	.rodata,"a",@progbits
	.align	16
.Lchp2200_start_raster_mode.CRD_SeqC:
	.ascii	"\033*g12W\006\007\000\001\000\000\000\000\n\001 \001"
	.size	.Lchp2200_start_raster_mode.CRD_SeqC, 18

	.type	.L.str.58,@object       # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"\033%%-12345X"
	.size	.L.str.58, 11

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"@PJL JOB NAME=\"ghostscript job\"\n"
	.size	.L.str.59, 33

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"@PJL SET TIMEOUT=90\n"
	.size	.L.str.60, 21

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"@PJL ENTER LANGUAGE=PCL3GUI\n"
	.size	.L.str.61, 29

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"\033&l7H"
	.size	.L.str.62, 6

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"\033*r%dS"
	.size	.L.str.63, 7

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"\033&l%dA"
	.size	.L.str.64, 7

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"\033&l-2H"
	.size	.L.str.65, 7

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"\033&u%dD"
	.size	.L.str.66, 7

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"@PJL JOB NAME=\"GS %.2fx%.2f\" \n"
	.size	.L.str.67, 31

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"@PJL SET RENDERMODE = COLOR \n"
	.size	.L.str.68, 30

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"@PJL SET COLORSPACE = SRGB \n"
	.size	.L.str.69, 29

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"@PJL SET RENDERINTENT = PERCEPTUAL \n"
	.size	.L.str.70, 37

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"@PJL SET RET = ON \n"
	.size	.L.str.71, 20

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"@PJL SET MAXDETAIL = OFF \n"
	.size	.L.str.72, 27

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"@PJL SET MAXDETAIL = ON \n"
	.size	.L.str.73, 26

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"@PJL SET RET = OFF \n"
	.size	.L.str.74, 21

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"@PJL ENTER LANGUAGE=PCL3GUI \n"
	.size	.L.str.75, 30

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"\033%-12345X@PJL enter language = PCL\n"
	.size	.L.str.76, 36

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"\033*t%dR"
	.size	.L.str.77, 7

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"\033&a1N"
	.size	.L.str.78, 6

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"\033*o%dQ"
	.size	.L.str.79, 7

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"\033*r%ds-%du0A"
	.size	.L.str.80, 13

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"wvv"
	.size	.L.str.81, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
