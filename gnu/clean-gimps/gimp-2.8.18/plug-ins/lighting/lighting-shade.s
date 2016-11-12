	.text
	.file	"lighting-shade.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	precompute_init
	.align	16, 0x90
	.type	precompute_init,@function
precompute_init:                        # @precompute_init
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
	subq	$64, %rsp
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$1, -16(%rbp)
	cvtsi2sdl	width, %xmm1
	movaps	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, xstep
	cvtsi2sdl	height, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, ystep
	movl	-4(%rbp), %esi
	movl	%esi, pre_w
	movl	-8(%rbp), %esi
	movl	%esi, pre_h
	movl	$0, -12(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -12(%rbp)
	jge	.LBB0_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-12(%rbp), %rax
	cmpq	$0, vertex_normals(,%rax,8)
	je	.LBB0_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	vertex_normals(,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB0_4:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-12(%rbp), %rax
	cmpq	$0, heights(,%rax,8)
	je	.LBB0_6
# BB#5:                                 # %if.then.12
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	heights(,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB0_6:                                # %if.end.15
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$8, %eax
	movl	%eax, %esi
	movslq	-4(%rbp), %rdi
	callq	g_malloc_n
	movl	$24, %ecx
	movl	%ecx, %esi
	movslq	-12(%rbp), %rdi
	movq	%rax, heights(,%rdi,8)
	movslq	-4(%rbp), %rdi
	callq	g_malloc_n
	movslq	-12(%rbp), %rsi
	movq	%rax, vertex_normals(,%rsi,8)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_8:                                # %for.end
	movl	$0, -12(%rbp)
.LBB0_9:                                # %for.cond.23
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -12(%rbp)
	jge	.LBB0_14
# BB#10:                                # %for.body.26
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	-12(%rbp), %rax
	cmpq	$0, triangle_normals(,%rax,8)
	je	.LBB0_12
# BB#11:                                # %if.then.31
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	-12(%rbp), %rax
	movq	triangle_normals(,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB0_12:                               # %if.end.34
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               # %for.inc.35
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_9
.LBB0_14:                               # %for.end.37
	cmpq	$0, bumprow
	je	.LBB0_16
# BB#15:                                # %if.then.40
	movq	bumprow, %rdi
	callq	g_free
	movq	$0, bumprow
.LBB0_16:                               # %if.end.41
	cmpl	$-1, mapvals+4
	je	.LBB0_18
# BB#17:                                # %if.then.44
	movl	mapvals+4, %edi
	callq	gimp_drawable_bpp
	movl	%eax, -16(%rbp)
.LBB0_18:                               # %if.end.46
	movl	$1, %eax
	movl	%eax, %esi
	movl	-4(%rbp), %eax
	imull	-16(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$24, %ecx
	movl	%ecx, %esi
	movq	%rax, bumprow
	movl	-4(%rbp), %ecx
	shll	$1, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$24, %ecx
	movl	%ecx, %esi
	movq	%rax, triangle_normals
	movl	-4(%rbp), %ecx
	shll	$1, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, triangle_normals+8
	movl	$0, -12(%rbp)
.LBB0_19:                               # %for.cond.55
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	-4(%rbp), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_22
# BB#20:                                # %for.body.60
                                        #   in Loop: Header=BB0_19 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm2         # xmm2 = mem[0],zero
	movslq	-12(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	triangle_normals, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm2         # xmm2 = mem[0],zero
	movslq	-12(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	triangle_normals+8, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
# BB#21:                                # %for.inc.65
                                        #   in Loop: Header=BB0_19 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_19
.LBB0_22:                               # %for.end.67
	movl	$0, -12(%rbp)
.LBB0_23:                               # %for.cond.68
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_26
# BB#24:                                # %for.body.71
                                        #   in Loop: Header=BB0_23 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm2         # xmm2 = mem[0],zero
	movslq	-12(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	vertex_normals, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm2         # xmm2 = mem[0],zero
	movslq	-12(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	vertex_normals+8, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm2         # xmm2 = mem[0],zero
	movslq	-12(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	vertex_normals+16, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_vector3_set
	xorps	%xmm0, %xmm0
	movslq	-12(%rbp), %rax
	movq	heights, %rdi
	movsd	%xmm0, (%rdi,%rax,8)
	movslq	-12(%rbp), %rax
	movq	heights+8, %rdi
	movsd	%xmm0, (%rdi,%rax,8)
	movslq	-12(%rbp), %rax
	movq	heights+16, %rdi
	movsd	%xmm0, (%rdi,%rax,8)
# BB#25:                                # %for.inc.84
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_23
.LBB0_26:                               # %for.end.86
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	precompute_init, .Lfunc_end0-precompute_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4613937818241073152     # double 3
.LCPI1_1:
	.quad	4643176031446892544     # double 255
	.text
	.globl	interpol_row
	.align	16, 0x90
	.type	interpol_row,@function
interpol_row:                           # @interpol_row
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	$0, -104(%rbp)
	movl	$1, -108(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	cmpl	$-1, mapvals+4
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	mapvals+4, %edi
	callq	gimp_drawable_bpp
	movl	%eax, -108(%rbp)
.LBB1_2:                                # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movl	pre_w, %eax
	imull	-108(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -120(%rbp)
	movl	pre_w, %ecx
	imull	-108(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movabsq	$bump_region, %rdi
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rsi
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-8(%rbp), %r8d
	subl	-4(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movabsq	$bump_region, %rdi
	movq	-128(%rbp), %rsi
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movl	-8(%rbp), %r8d
	subl	-4(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	cmpl	$0, mapvals+876
	jle	.LBB1_8
# BB#3:                                 # %if.then.8
	movl	mapvals+876(%rip), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movl	%ecx, -200(%rbp)        # 4-byte Spill
	je	.LBB1_4
	jmp	.LBB1_29
.LBB1_29:                               # %if.then.8
	movl	-196(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	je	.LBB1_5
	jmp	.LBB1_6
.LBB1_4:                                # %sw.bb
	movabsq	$logmap, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB1_7
.LBB1_5:                                # %sw.bb.9
	movabsq	$sinemap, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %sw.default
	movabsq	$spheremap, %rax
	movq	%rax, -104(%rbp)
.LBB1_7:                                # %sw.epilog
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.10
	movl	$0, -92(%rbp)
.LBB1_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	-4(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB1_24
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB1_9 Depth=1
	cmpl	$1, -108(%rbp)
	jle	.LBB1_12
# BB#11:                                # %if.then.16
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	-92(%rbp), %eax
	movl	-108(%rbp), %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%eax, %edi
	incl	%edi
	movslq	%edi, %rdx
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	addl	$2, %eax
	movslq	%eax, %rdx
	movzbl	(%rsi,%rdx), %eax
	addl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %r8b
	movb	%r8b, -138(%rbp)
	movl	-92(%rbp), %eax
	movl	-108(%rbp), %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdx
	movq	-128(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%eax, %edi
	incl	%edi
	movslq	%edi, %rdx
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	addl	$2, %eax
	movslq	%eax, %rdx
	movzbl	(%rsi,%rdx), %eax
	addl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %r8b
	movb	%r8b, -139(%rbp)
	jmp	.LBB1_13
.LBB1_12:                               # %if.else
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	-92(%rbp), %eax
	imull	-108(%rbp), %eax
	movslq	%eax, %rcx
	movq	-120(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -138(%rbp)
	movl	-92(%rbp), %eax
	imull	-108(%rbp), %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -139(%rbp)
.LBB1_13:                               # %if.end.60
                                        #   in Loop: Header=BB1_9 Depth=1
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movzbl	-138(%rbp), %eax
	movzbl	-139(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -136(%rbp)
	movzbl	-138(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-136(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_15
# BB#14:                                # %cond.true
                                        #   in Loop: Header=BB1_9 Depth=1
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jmp	.LBB1_19
.LBB1_15:                               # %cond.false
                                        #   in Loop: Header=BB1_9 Depth=1
	xorps	%xmm0, %xmm0
	movzbl	-138(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-136(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB1_17
# BB#16:                                # %cond.true.75
                                        #   in Loop: Header=BB1_9 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB1_18
.LBB1_17:                               # %cond.false.76
                                        #   in Loop: Header=BB1_9 Depth=1
	movzbl	-138(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-136(%rbp), %xmm0
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
.LBB1_18:                               # %cond.end
                                        #   in Loop: Header=BB1_9 Depth=1
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
.LBB1_19:                               # %cond.end.80
                                        #   in Loop: Header=BB1_9 Depth=1
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movb	%cl, -137(%rbp)
	cmpl	$0, mapvals+876
	jle	.LBB1_21
# BB#20:                                # %if.then.85
                                        #   in Loop: Header=BB1_9 Depth=1
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	mapvals+856(%rip), %xmm1 # xmm1 = mem[0],zero
	movzbl	-138(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movslq	-92(%rbp), %rcx
	movq	heights+8(%rip), %rdx
	movsd	%xmm1, (%rdx,%rcx,8)
	movsd	mapvals+856(%rip), %xmm1 # xmm1 = mem[0],zero
	movzbl	-137(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	movslq	-92(%rbp), %rcx
	movq	heights+16, %rdx
	movsd	%xmm1, (%rdx,%rcx,8)
	jmp	.LBB1_22
.LBB1_21:                               # %if.else.100
                                        #   in Loop: Header=BB1_9 Depth=1
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	mapvals+856(%rip), %xmm1 # xmm1 = mem[0],zero
	movzbl	-138(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movslq	-92(%rbp), %rcx
	movq	heights+8(%rip), %rdx
	movsd	%xmm1, (%rdx,%rcx,8)
	movsd	mapvals+856(%rip), %xmm1 # xmm1 = mem[0],zero
	movzbl	-137(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	movslq	-92(%rbp), %rcx
	movq	heights+16, %rdx
	movsd	%xmm1, (%rdx,%rcx,8)
.LBB1_22:                               # %if.end.111
                                        #   in Loop: Header=BB1_9 Depth=1
	jmp	.LBB1_23
.LBB1_23:                               # %for.inc
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB1_9
.LBB1_24:                               # %for.end
	movl	$0, -96(%rbp)
	movl	$0, -92(%rbp)
.LBB1_25:                               # %for.cond.112
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	-4(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB1_28
# BB#26:                                # %for.body.117
                                        #   in Loop: Header=BB1_25 Depth=1
	leaq	-168(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	ystep, %xmm1            # xmm1 = mem[0],zero
	movsd	%xmm1, -32(%rbp)
	movslq	-92(%rbp), %rax
	movq	heights+8, %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movslq	-92(%rbp), %rax
	movq	heights+16, %rcx
	subsd	(%rcx,%rax,8), %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	xstep, %xmm1            # xmm1 = mem[0],zero
	movsd	%xmm1, -64(%rbp)
	movsd	ystep, %xmm1            # xmm1 = mem[0],zero
	movsd	%xmm1, -56(%rbp)
	movl	-92(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rax
	movq	heights+8, %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movslq	-92(%rbp), %rax
	movq	heights+16, %rcx
	subsd	(%rcx,%rax,8), %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	xstep, %xmm1            # xmm1 = mem[0],zero
	movsd	%xmm1, -88(%rbp)
	movsd	%xmm0, -80(%rbp)
	movl	-92(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rax
	movq	heights+16, %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-92(%rbp), %rax
	movq	heights+16, %rcx
	subsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, -72(%rbp)
	movslq	-96(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	triangle_normals+8, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_vector3_cross_product
	leaq	-192(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-160(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-152(%rbp), %rax
	movq	%rax, 16(%rcx)
	movl	-96(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rax
	imulq	$24, %rax, %rax
	addq	triangle_normals+8, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_vector3_cross_product
	movq	-192(%rbp), %rax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-184(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-176(%rbp), %rax
	movq	%rax, 16(%rcx)
	movslq	-96(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	triangle_normals+8, %rax
	movq	%rax, %rdi
	callq	gimp_vector3_normalize
	movl	-96(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rax
	imulq	$24, %rax, %rax
	addq	triangle_normals+8, %rax
	movq	%rax, %rdi
	callq	gimp_vector3_normalize
	movl	-96(%rbp), %r8d
	addl	$2, %r8d
	movl	%r8d, -96(%rbp)
# BB#27:                                # %for.inc.154
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB1_25
.LBB1_28:                               # %for.end.156
	movq	-120(%rbp), %rdi
	callq	g_free
	movq	-128(%rbp), %rdi
	callq	g_free
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	interpol_row, .Lfunc_end1-interpol_row
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4613937818241073152     # double 3
.LCPI2_1:
	.quad	4643176031446892544     # double 255
.LCPI2_2:
	.quad	4607182418800017408     # double 1
	.text
	.globl	precompute_normals
	.align	16, 0x90
	.type	precompute_normals,@function
precompute_normals:                     # @precompute_normals
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
	subq	$256, %rsp              # imm = 0x100
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	$0, -152(%rbp)
	movl	$1, -156(%rbp)
	movq	triangle_normals, %rax
	movq	%rax, -24(%rbp)
	movq	triangle_normals+8, %rax
	movq	%rax, triangle_normals
	movq	-24(%rbp), %rax
	movq	%rax, triangle_normals+8
	movq	vertex_normals, %rax
	movq	%rax, -24(%rbp)
	movq	vertex_normals+8, %rax
	movq	%rax, vertex_normals
	movq	vertex_normals+16, %rax
	movq	%rax, vertex_normals+8
	movq	-24(%rbp), %rax
	movq	%rax, vertex_normals+16
	movq	heights, %rax
	movq	%rax, -128(%rbp)
	movq	heights+8, %rax
	movq	%rax, heights
	movq	heights+16, %rax
	movq	%rax, heights+8
	movq	-128(%rbp), %rax
	movq	%rax, heights+16
	cmpl	$-1, mapvals+4
	je	.LBB2_2
# BB#1:                                 # %if.then
	movl	mapvals+4, %edi
	callq	gimp_drawable_bpp
	movl	%eax, -156(%rbp)
.LBB2_2:                                # %if.end
	movabsq	$bump_region, %rdi
	movq	bumprow, %rsi
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-8(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_get_row
	cmpl	$0, mapvals+876
	jle	.LBB2_15
# BB#3:                                 # %if.then.2
	movl	mapvals+876(%rip), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movl	%ecx, -216(%rbp)        # 4-byte Spill
	je	.LBB2_4
	jmp	.LBB2_44
.LBB2_44:                               # %if.then.2
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	je	.LBB2_5
	jmp	.LBB2_6
.LBB2_4:                                # %sw.bb
	movabsq	$logmap, %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB2_7
.LBB2_5:                                # %sw.bb.3
	movabsq	$sinemap, %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %sw.default
	movabsq	$spheremap, %rax
	movq	%rax, -152(%rbp)
.LBB2_7:                                # %sw.epilog
	movl	$0, -132(%rbp)
.LBB2_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	-4(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB2_14
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB2_8 Depth=1
	cmpl	$1, -156(%rbp)
	jle	.LBB2_11
# BB#10:                                # %if.then.7
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	-132(%rbp), %eax
	movl	-156(%rbp), %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdx
	movq	bumprow(%rip), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%eax, %edi
	incl	%edi
	movslq	%edi, %rdx
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	addl	$2, %eax
	movslq	%eax, %rdx
	movzbl	(%rsi,%rdx), %eax
	addl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %r8b
	movb	%r8b, -157(%rbp)
	jmp	.LBB2_12
.LBB2_11:                               # %if.else
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	-132(%rbp), %eax
	imull	-156(%rbp), %eax
	movslq	%eax, %rcx
	movq	bumprow, %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -157(%rbp)
.LBB2_12:                               # %if.end.25
                                        #   in Loop: Header=BB2_8 Depth=1
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	movsd	mapvals+856(%rip), %xmm1 # xmm1 = mem[0],zero
	movzbl	-157(%rbp), %eax
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	movslq	-132(%rbp), %rcx
	movq	heights+16, %rdx
	movsd	%xmm1, (%rdx,%rcx,8)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB2_8
.LBB2_14:                               # %for.end
	jmp	.LBB2_23
.LBB2_15:                               # %if.else.33
	movl	$0, -132(%rbp)
.LBB2_16:                               # %for.cond.34
                                        # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	-4(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB2_22
# BB#17:                                # %for.body.38
                                        #   in Loop: Header=BB2_16 Depth=1
	cmpl	$1, -156(%rbp)
	jle	.LBB2_19
# BB#18:                                # %if.then.41
                                        #   in Loop: Header=BB2_16 Depth=1
	movl	-132(%rbp), %eax
	movl	-156(%rbp), %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdx
	movq	bumprow(%rip), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%eax, %edi
	incl	%edi
	movslq	%edi, %rdx
	movzbl	(%rsi,%rdx), %edi
	addl	%edi, %ecx
	addl	$2, %eax
	movslq	%eax, %rdx
	movzbl	(%rsi,%rdx), %eax
	addl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %r8b
	movb	%r8b, -157(%rbp)
	jmp	.LBB2_20
.LBB2_19:                               # %if.else.62
                                        #   in Loop: Header=BB2_16 Depth=1
	movl	-132(%rbp), %eax
	imull	-156(%rbp), %eax
	movslq	%eax, %rcx
	movq	bumprow, %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -157(%rbp)
.LBB2_20:                               # %if.end.66
                                        #   in Loop: Header=BB2_16 Depth=1
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	movsd	mapvals+856(%rip), %xmm1 # xmm1 = mem[0],zero
	movzbl	-157(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	movslq	-132(%rbp), %rcx
	movq	heights+16, %rdx
	movsd	%xmm1, (%rdx,%rcx,8)
# BB#21:                                # %for.inc.72
                                        #   in Loop: Header=BB2_16 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB2_16
.LBB2_22:                               # %for.end.74
	jmp	.LBB2_23
.LBB2_23:                               # %if.end.75
	movl	$0, -136(%rbp)
	movl	$0, -132(%rbp)
.LBB2_24:                               # %for.cond.76
                                        # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	-4(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB2_27
# BB#25:                                # %for.body.81
                                        #   in Loop: Header=BB2_24 Depth=1
	leaq	-184(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	ystep, %xmm1            # xmm1 = mem[0],zero
	movsd	%xmm1, -40(%rbp)
	movslq	-132(%rbp), %rax
	movq	heights+16, %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movslq	-132(%rbp), %rax
	movq	heights+8, %rcx
	subsd	(%rcx,%rax,8), %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	xstep, %xmm1            # xmm1 = mem[0],zero
	movsd	%xmm1, -72(%rbp)
	movsd	ystep, %xmm1            # xmm1 = mem[0],zero
	movsd	%xmm1, -64(%rbp)
	movl	-132(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rax
	movq	heights+16, %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movslq	-132(%rbp), %rax
	movq	heights+8, %rcx
	subsd	(%rcx,%rax,8), %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	xstep, %xmm1            # xmm1 = mem[0],zero
	movsd	%xmm1, -96(%rbp)
	movsd	%xmm0, -88(%rbp)
	movl	-132(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rax
	movq	heights+8, %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-132(%rbp), %rax
	movq	heights+8, %rcx
	subsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, -80(%rbp)
	movslq	-136(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	triangle_normals+8, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_vector3_cross_product
	leaq	-208(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-176(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-168(%rbp), %rax
	movq	%rax, 16(%rcx)
	movl	-136(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rax
	imulq	$24, %rax, %rax
	addq	triangle_normals+8, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_vector3_cross_product
	movq	-208(%rbp), %rax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-200(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-192(%rbp), %rax
	movq	%rax, 16(%rcx)
	movslq	-136(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	triangle_normals+8, %rax
	movq	%rax, %rdi
	callq	gimp_vector3_normalize
	movl	-136(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rax
	imulq	$24, %rax, %rax
	addq	triangle_normals+8, %rax
	movq	%rax, %rdi
	callq	gimp_vector3_normalize
	movl	-136(%rbp), %r8d
	addl	$2, %r8d
	movl	%r8d, -136(%rbp)
# BB#26:                                # %for.inc.118
                                        #   in Loop: Header=BB2_24 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB2_24
.LBB2_27:                               # %for.end.120
	leaq	-120(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movl	$0, -136(%rbp)
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-248(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_vector3_set
	movl	$0, -132(%rbp)
.LBB2_28:                               # %for.cond.121
                                        # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	-4(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB2_43
# BB#29:                                # %for.body.126
                                        #   in Loop: Header=BB2_28 Depth=1
	movl	$0, -140(%rbp)
	cmpl	$0, -132(%rbp)
	jle	.LBB2_35
# BB#30:                                # %if.then.129
                                        #   in Loop: Header=BB2_28 Depth=1
	cmpl	$0, -12(%rbp)
	jle	.LBB2_32
# BB#31:                                # %if.then.132
                                        #   in Loop: Header=BB2_28 Depth=1
	leaq	-120(%rbp), %rax
	movl	-136(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	imulq	$24, %rdx, %rdx
	addq	triangle_normals, %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_vector3_add
	leaq	-120(%rbp), %rax
	movl	-136(%rbp), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rdx
	imulq	$24, %rdx, %rdx
	addq	triangle_normals, %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_vector3_add
	movl	-140(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, -140(%rbp)
.LBB2_32:                               # %if.end.140
                                        #   in Loop: Header=BB2_28 Depth=1
	movl	-12(%rbp), %eax
	cmpl	pre_h, %eax
	jge	.LBB2_34
# BB#33:                                # %if.then.143
                                        #   in Loop: Header=BB2_28 Depth=1
	leaq	-120(%rbp), %rax
	movl	-136(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	imulq	$24, %rdx, %rdx
	addq	triangle_normals+8, %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_vector3_add
	movl	-140(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -140(%rbp)
.LBB2_34:                               # %if.end.148
                                        #   in Loop: Header=BB2_28 Depth=1
	jmp	.LBB2_35
.LBB2_35:                               # %if.end.149
                                        #   in Loop: Header=BB2_28 Depth=1
	movl	-132(%rbp), %eax
	cmpl	pre_w, %eax
	jge	.LBB2_41
# BB#36:                                # %if.then.152
                                        #   in Loop: Header=BB2_28 Depth=1
	cmpl	$0, -12(%rbp)
	jle	.LBB2_38
# BB#37:                                # %if.then.155
                                        #   in Loop: Header=BB2_28 Depth=1
	leaq	-120(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	triangle_normals, %rcx
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_vector3_add
	leaq	-120(%rbp), %rax
	movl	-136(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rcx
	imulq	$24, %rcx, %rcx
	addq	triangle_normals, %rcx
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_vector3_add
	movl	-140(%rbp), %r8d
	addl	$2, %r8d
	movl	%r8d, -140(%rbp)
.LBB2_38:                               # %if.end.162
                                        #   in Loop: Header=BB2_28 Depth=1
	movl	-12(%rbp), %eax
	cmpl	pre_h, %eax
	jge	.LBB2_40
# BB#39:                                # %if.then.165
                                        #   in Loop: Header=BB2_28 Depth=1
	leaq	-120(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	triangle_normals+8, %rcx
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_vector3_add
	leaq	-120(%rbp), %rax
	movl	-136(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rcx
	imulq	$24, %rcx, %rcx
	addq	triangle_normals+8, %rcx
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_vector3_add
	movl	-140(%rbp), %r8d
	addl	$2, %r8d
	movl	%r8d, -140(%rbp)
.LBB2_40:                               # %if.end.172
                                        #   in Loop: Header=BB2_28 Depth=1
	jmp	.LBB2_41
.LBB2_41:                               # %if.end.173
                                        #   in Loop: Header=BB2_28 Depth=1
	leaq	-120(%rbp), %rdi
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-140(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_vector3_mul
	leaq	-120(%rbp), %rdi
	callq	gimp_vector3_normalize
	movslq	-132(%rbp), %rdi
	imulq	$24, %rdi, %rdi
	addq	vertex_normals+8, %rdi
	movq	-120(%rbp), %rax
	movq	%rax, (%rdi)
	movq	-112(%rbp), %rax
	movq	%rax, 8(%rdi)
	movq	-104(%rbp), %rax
	movq	%rax, 16(%rdi)
	movl	-136(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, -136(%rbp)
# BB#42:                                # %for.inc.179
                                        #   in Loop: Header=BB2_28 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB2_28
.LBB2_43:                               # %for.end.181
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end2:
	.size	precompute_normals, .Lfunc_end2-precompute_normals
	.cfi_endproc

	.globl	get_ray_color
	.align	16, 0x90
	.type	get_ray_color,@function
get_ray_color:                          # @get_ray_color
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
	pushq	%rbx
	subq	$392, %rsp              # imm = 0x188
.Ltmp12:
	.cfi_offset %rbx, -24
	movq	%rdi, %rax
	leaq	-160(%rbp), %rcx
	leaq	-168(%rbp), %rdx
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	pos_to_float
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %r8d
	movl	%r8d, -148(%rbp)
	cmpl	$0, mapvals+888
	je	.LBB3_3
# BB#1:                                 # %land.lhs.true
	xorps	%xmm0, %xmm0
	movslq	-148(%rbp), %rax
	movq	heights+8, %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB3_3
	jp	.LBB3_3
# BB#2:                                 # %if.then
	leaq	-112(%rbp), %rdi
	xorps	%xmm0, %xmm0
	callq	gimp_rgb_set_alpha
	jmp	.LBB3_19
.LBB3_3:                                # %if.else
	leaq	-240(%rbp), %rdi
	leaq	-152(%rbp), %rsi
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-168(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	get_image_color
	leaq	-112(%rbp), %rdi
	movq	-240(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	movq	-232(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-224(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-216(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-48(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	movsd	mapvals+688, %xmm0      # xmm0 = mem[0],zero
	callq	gimp_rgb_multiply
	movl	$0, -204(%rbp)
.LBB3_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -204(%rbp)
	jge	.LBB3_18
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB3_4 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-204(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, 96(%rax)
	je	.LBB3_7
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB3_4 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-204(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$3, (%rax)
	jne	.LBB3_8
.LBB3_7:                                # %if.then.12
                                        #   in Loop: Header=BB3_4 Depth=1
	jmp	.LBB3_17
.LBB3_8:                                # %if.else.13
                                        #   in Loop: Header=BB3_4 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-204(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, (%rax)
	jne	.LBB3_10
# BB#9:                                 # %if.then.19
                                        #   in Loop: Header=BB3_4 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-204(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.23
                                        #   in Loop: Header=BB3_4 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-204(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	addq	$32, %rax
	movq	%rax, -200(%rbp)
.LBB3_11:                               # %if.end
                                        #   in Loop: Header=BB3_4 Depth=1
	jmp	.LBB3_12
.LBB3_12:                               # %if.end.26
                                        #   in Loop: Header=BB3_4 Depth=1
	leaq	-80(%rbp), %rdi
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-204(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	56(%rdx), %rcx
	movq	%rcx, -80(%rbp)
	movq	64(%rdx), %rcx
	movq	%rcx, -72(%rbp)
	movq	72(%rdx), %rcx
	movq	%rcx, -64(%rbp)
	movq	80(%rdx), %rcx
	movq	%rcx, -56(%rbp)
	movslq	-204(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_rgb_multiply
	cmpl	$0, mapvals+892
	je	.LBB3_14
# BB#13:                                # %lor.lhs.false.34
                                        #   in Loop: Header=BB3_4 Depth=1
	cmpl	$-1, mapvals+4
	jne	.LBB3_15
.LBB3_14:                               # %if.then.37
                                        #   in Loop: Header=BB3_4 Depth=1
	leaq	-272(%rbp), %rdi
	movabsq	$mapvals, %rax
	movq	%rax, %rcx
	addq	$16, %rcx
	movq	%rax, %rdx
	addq	$40, %rdx
	leaq	-48(%rbp), %r9
	leaq	-80(%rbp), %rsi
	addq	$64, %rax
	movq	-16(%rbp), %r8
	movq	-200(%rbp), %r10
	movslq	-204(%rbp), %r11
	imulq	$104, %r11, %r11
	addq	%r11, %rax
	movl	(%rax), %ebx
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	movq	%r10, %r8
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%ebx, 8(%rsp)
	callq	phong_shade
	movq	-272(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.42
                                        #   in Loop: Header=BB3_4 Depth=1
	leaq	-304(%rbp), %rdi
	movabsq	$mapvals, %rax
	movq	%rax, %rcx
	addq	$16, %rcx
	leaq	-192(%rbp), %rdx
	leaq	-48(%rbp), %r9
	leaq	-80(%rbp), %rsi
	addq	$64, %rax
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	movq	%r9, -376(%rbp)         # 8-byte Spill
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %r8d
	movslq	%r8d, %rax
	imulq	$24, %rax, %rax
	addq	vertex_normals+8, %rax
	movq	(%rax), %rcx
	movq	%rcx, -192(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -184(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-16(%rbp), %rsi
	movq	-200(%rbp), %r8
	movslq	-204(%rbp), %rax
	imulq	$104, %rax, %rax
	movq	-384(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movl	(%rcx), %r10d
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	-360(%rbp), %rdx        # 8-byte Reload
	movq	-368(%rbp), %rcx        # 8-byte Reload
	movq	-376(%rbp), %r9         # 8-byte Reload
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	phong_shade
	movq	-304(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB3_16:                               # %if.end.51
                                        #   in Loop: Header=BB3_4 Depth=1
	leaq	-112(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	callq	gimp_rgb_add
.LBB3_17:                               # %for.inc
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB3_4
.LBB3_18:                               # %for.end
	jmp	.LBB3_19
.LBB3_19:                               # %if.end.52
	leaq	-112(%rbp), %rdi
	callq	gimp_rgb_clamp
	movq	-112(%rbp), %rdi
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rdi, (%rax)
	movq	-104(%rbp), %rdi
	movq	%rdi, 8(%rax)
	movq	-96(%rbp), %rdi
	movq	%rdi, 16(%rax)
	movq	-88(%rbp), %rdi
	movq	%rdi, 24(%rax)
	movq	-320(%rbp), %rax        # 8-byte Reload
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	get_ray_color, .Lfunc_end3-get_ray_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4611686018427387904     # double 2
.LCPI4_2:
	.quad	4576918229304087675     # double 0.01
	.text
	.align	16, 0x90
	.type	phong_shade,@function
phong_shade:                            # @phong_shade
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, %rax
	movl	24(%rbp), %r10d
	movq	16(%rbp), %r11
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	%r11, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -216(%rbp)
	movq	8(%rcx), %rdx
	movq	%rdx, -208(%rbp)
	movq	16(%rcx), %rcx
	movq	%rcx, -200(%rbp)
	cmpl	$0, -52(%rbp)
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	jne	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-168(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	gimp_vector3_sub
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	leaq	-168(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -168(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -160(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_vector3_normalize
.LBB4_3:                                # %if.end
	leaq	-168(%rbp), %rdi
	callq	gimp_vector3_length
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -144(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB4_4
	jp	.LBB4_4
	jmp	.LBB4_5
.LBB4_4:                                # %if.then.2
	leaq	-168(%rbp), %rdi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	divsd	-144(%rbp), %xmm0
	callq	gimp_vector3_mul
.LBB4_5:                                # %if.end.3
	leaq	-216(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	callq	gimp_vector3_inner_product
	xorps	%xmm1, %xmm1
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB4_7
# BB#6:                                 # %cond.true
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false
	leaq	-216(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	callq	gimp_vector3_inner_product
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -288(%rbp)       # 8-byte Spill
.LBB4_8:                                # %cond.end
	movsd	-288(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-240(%rbp), %rdi
	movsd	%xmm0, -128(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gimp_vector3_normalize
	xorps	%xmm0, %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_15
# BB#9:                                 # %if.then.9
	leaq	-192(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	gimp_vector3_sub
	leaq	-192(%rbp), %rdi
	callq	gimp_vector3_normalize
	leaq	-264(%rbp), %rdi
	leaq	-240(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	callq	gimp_vector3_add
	leaq	-264(%rbp), %rdi
	callq	gimp_vector3_normalize
	leaq	-216(%rbp), %rdi
	leaq	-264(%rbp), %rsi
	callq	gimp_vector3_inner_product
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_11
# BB#10:                                # %cond.true.12
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	jmp	.LBB4_12
.LBB4_11:                               # %cond.false.13
	leaq	-216(%rbp), %rdi
	leaq	-264(%rbp), %rsi
	callq	gimp_vector3_inner_product
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
.LBB4_12:                               # %cond.end.15
	movsd	-296(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	mapvals+720, %xmm1      # xmm1 = mem[0],zero
	callq	pow
	leaq	-88(%rbp), %rdi
	movsd	%xmm0, -136(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-136(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -80(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	movsd	mapvals+696, %xmm0      # xmm0 = mem[0],zero
	callq	gimp_rgb_multiply
	leaq	-88(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_rgb_multiply
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -120(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -112(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -104(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -96(%rbp)
	cmpl	$0, mapvals+728
	je	.LBB4_14
# BB#13:                                # %if.then.25
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	mulsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
.LBB4_14:                               # %if.end.35
	leaq	-120(%rbp), %rdi
	movsd	mapvals+712, %xmm0      # xmm0 = mem[0],zero
	callq	gimp_rgb_multiply
	leaq	-120(%rbp), %rdi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_rgb_multiply
	leaq	-88(%rbp), %rdi
	leaq	-120(%rbp), %rsi
	callq	gimp_rgb_add
	leaq	-88(%rbp), %rdi
	callq	gimp_rgb_clamp
.LBB4_15:                               # %if.end.36
	leaq	-88(%rbp), %rdi
	callq	gimp_rgb_clamp
	movq	-88(%rbp), %rdi
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rdi, (%rax)
	movq	-80(%rbp), %rdi
	movq	%rdi, 8(%rax)
	movq	-72(%rbp), %rdi
	movq	%rdi, 16(%rax)
	movq	-64(%rbp), %rdi
	movq	%rdi, 24(%rax)
	movq	-272(%rbp), %rax        # 8-byte Reload
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end4:
	.size	phong_shade, .Lfunc_end4-phong_shade
	.cfi_endproc

	.globl	get_ray_color_ref
	.align	16, 0x90
	.type	get_ray_color_ref,@function
get_ray_color_ref:                      # @get_ray_color_ref
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$496, %rsp              # imm = 0x1F0
	movq	%rdi, %rax
	leaq	-184(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	pos_to_float
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %r8d
	movl	%r8d, -172(%rbp)
	cmpl	$0, mapvals+892
	je	.LBB5_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$-1, mapvals+4
	jne	.LBB5_3
.LBB5_2:                                # %if.then
	movq	mapvals+40, %rax
	movq	%rax, -216(%rbp)
	movq	mapvals+48, %rax
	movq	%rax, -208(%rbp)
	movq	mapvals+56, %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rcx
	imulq	$24, %rcx, %rcx
	addq	vertex_normals+8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -216(%rbp)
	movq	8(%rcx), %rdx
	movq	%rdx, -208(%rbp)
	movq	16(%rcx), %rcx
	movq	%rcx, -200(%rbp)
.LBB5_4:                                # %if.end
	leaq	-216(%rbp), %rdi
	callq	gimp_vector3_normalize
	cmpl	$0, mapvals+888
	je	.LBB5_7
# BB#5:                                 # %land.lhs.true
	xorps	%xmm0, %xmm0
	movslq	-172(%rbp), %rax
	movq	heights+8, %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_7
	jp	.LBB5_7
# BB#6:                                 # %if.then.11
	leaq	-40(%rbp), %rdi
	xorps	%xmm0, %xmm0
	callq	gimp_rgb_set_alpha
	jmp	.LBB5_18
.LBB5_7:                                # %if.else.12
	leaq	-320(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-192(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	get_image_color
	leaq	-40(%rbp), %rdi
	movq	-320(%rbp), %rsi
	movq	%rsi, -136(%rbp)
	movq	-312(%rbp), %rsi
	movq	%rsi, -128(%rbp)
	movq	-304(%rbp), %rsi
	movq	%rsi, -120(%rbp)
	movq	-296(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-136(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-128(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-120(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, -16(%rbp)
	movsd	mapvals+688, %xmm0      # xmm0 = mem[0],zero
	callq	gimp_rgb_multiply
	movl	$0, -276(%rbp)
.LBB5_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -276(%rbp)
	jge	.LBB5_17
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB5_8 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-276(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	addq	$32, %rdx
	movq	%rdx, -224(%rbp)
	movslq	-276(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, 96(%rax)
	je	.LBB5_11
# BB#10:                                # %lor.lhs.false.20
                                        #   in Loop: Header=BB5_8 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-276(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$3, (%rax)
	jne	.LBB5_12
.LBB5_11:                               # %if.then.25
                                        #   in Loop: Header=BB5_8 Depth=1
	jmp	.LBB5_16
.LBB5_12:                               # %if.else.26
                                        #   in Loop: Header=BB5_8 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-276(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, (%rax)
	jne	.LBB5_14
# BB#13:                                # %if.then.32
                                        #   in Loop: Header=BB5_8 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-276(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, -224(%rbp)
.LBB5_14:                               # %if.end.36
                                        #   in Loop: Header=BB5_8 Depth=1
	jmp	.LBB5_15
.LBB5_15:                               # %if.end.37
                                        #   in Loop: Header=BB5_8 Depth=1
	leaq	-72(%rbp), %rdi
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-276(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	56(%rdx), %rcx
	movq	%rcx, -72(%rbp)
	movq	64(%rdx), %rcx
	movq	%rcx, -64(%rbp)
	movq	72(%rdx), %rcx
	movq	%rcx, -56(%rbp)
	movq	80(%rdx), %rcx
	movq	%rcx, -48(%rbp)
	movslq	-276(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_rgb_multiply
	leaq	-352(%rbp), %rdi
	movabsq	$mapvals, %rax
	addq	$16, %rax
	leaq	-216(%rbp), %rcx
	leaq	-136(%rbp), %r9
	leaq	-72(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-224(%rbp), %r8
	movl	mapvals+64, %r10d
	movq	%rdx, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	phong_shade
	movq	-352(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB5_16:                               # %for.inc
                                        #   in Loop: Header=BB5_8 Depth=1
	movl	-276(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -276(%rbp)
	jmp	.LBB5_8
.LBB5_17:                               # %for.end
	leaq	-248(%rbp), %rdi
	movabsq	$mapvals, %rax
	addq	$16, %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_vector3_sub
	leaq	-248(%rbp), %rdi
	callq	gimp_vector3_normalize
	leaq	-376(%rbp), %rdi
	leaq	-216(%rbp), %rsi
	leaq	-248(%rbp), %rdx
	callq	compute_reflected_ray
	leaq	-272(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	movq	-376(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -256(%rbp)
	callq	sphere_to_image
	leaq	-408(%rbp), %rdi
	cvtsi2sdl	env_width, %xmm0
	mulsd	-184(%rbp), %xmm0
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %esi
	cvtsi2sdl	env_height, %xmm0
	mulsd	-192(%rbp), %xmm0
	movl	%esi, -476(%rbp)        # 4-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %edx
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movl	-476(%rbp), %esi        # 4-byte Reload
	callq	peek_env_map
	leaq	-440(%rbp), %rdi
	movabsq	$mapvals, %rax
	addq	$16, %rax
	leaq	-216(%rbp), %rcx
	leaq	-272(%rbp), %r8
	leaq	-136(%rbp), %r9
	leaq	-168(%rbp), %r10
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	movq	-408(%rbp), %r11
	movq	%r11, -168(%rbp)
	movq	-400(%rbp), %r11
	movq	%r11, -160(%rbp)
	movq	-392(%rbp), %r11
	movq	%r11, -152(%rbp)
	movq	-384(%rbp), %r11
	movq	%r11, -144(%rbp)
	movsd	mapvals+696, %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm1, -288(%rbp)
	movsd	%xmm0, mapvals+696
	movq	-8(%rbp), %rsi
	movl	%edx, -480(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movq	%r10, (%rsp)
	movl	$1, 8(%rsp)
	callq	phong_shade
	leaq	-40(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	movq	-440(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-432(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-424(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-416(%rbp), %rax
	movq	%rax, -80(%rbp)
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+696
	callq	gimp_rgb_add
.LBB5_18:                               # %if.end.54
	leaq	-40(%rbp), %rdi
	callq	gimp_rgb_clamp
	movq	-40(%rbp), %rdi
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	%rdi, (%rax)
	movq	-32(%rbp), %rdi
	movq	%rdi, 8(%rax)
	movq	-24(%rbp), %rdi
	movq	%rdi, 16(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, 24(%rax)
	movq	-456(%rbp), %rax        # 8-byte Reload
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end5:
	.size	get_ray_color_ref, .Lfunc_end5-get_ray_color_ref
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	compute_reflected_ray,@function
compute_reflected_ray:                  # @compute_reflected_ray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, %rax
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_vector3_inner_product
	leaq	-40(%rbp), %rdi
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	8(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_vector3_mul
	leaq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_vector3_sub
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	compute_reflected_ray, .Lfunc_end6-compute_reflected_ray
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI7_1:
	.quad	4607182418800017408     # double 1
.LCPI7_2:
	.quad	-4616189618054758400    # double -1
.LCPI7_3:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.align	16, 0x90
	.type	sphere_to_image,@function
sphere_to_image:                        # @sphere_to_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$sphere_to_image.secondaxis, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_vector3_inner_product
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rax
	movd	%rax, %xmm0
	callq	acos
	xorps	%xmm1, %xmm1
	movsd	.LCPI7_0, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, sphere_to_image.alpha
	movsd	sphere_to_image.alpha, %xmm0 # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB7_1
	jp	.LBB7_1
	jmp	.LBB7_2
.LBB7_1:                                # %lor.lhs.false
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB7_3
	jp	.LBB7_3
.LBB7_2:                                # %if.then
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB7_11
.LBB7_3:                                # %if.else
	movabsq	$sphere_to_image.firstaxis, %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_vector3_inner_product
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movsd	sphere_to_image.alpha, %xmm2 # xmm2 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	callq	sin
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, sphere_to_image.fac
	movsd	sphere_to_image.fac, %xmm0 # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB7_5
# BB#4:                                 # %if.then.7
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, sphere_to_image.fac
	jmp	.LBB7_8
.LBB7_5:                                # %if.else.8
	movsd	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero
	ucomisd	sphere_to_image.fac, %xmm0
	jbe	.LBB7_7
# BB#6:                                 # %if.then.10
	movsd	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, sphere_to_image.fac
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.11
	movsd	sphere_to_image.fac, %xmm0 # xmm0 = mem[0],zero
	callq	acos
	leaq	-48(%rbp), %rdi
	movabsq	$sphere_to_image.secondaxis, %rsi
	movabsq	$sphere_to_image.firstaxis, %rdx
	movsd	.LCPI7_3, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	callq	gimp_vector3_cross_product
	movabsq	$sphere_to_image.cross_prod, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, sphere_to_image.cross_prod
	movq	-40(%rbp), %rax
	movq	%rax, sphere_to_image.cross_prod+8
	movq	-32(%rbp), %rax
	movq	%rax, sphere_to_image.cross_prod+16
	movq	-8(%rbp), %rsi
	callq	gimp_vector3_inner_product
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_10
# BB#9:                                 # %if.then.16
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB7_10:                               # %if.end.18
	jmp	.LBB7_11
.LBB7_11:                               # %if.end.19
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	sphere_to_image, .Lfunc_end7-sphere_to_image
	.cfi_endproc

	.globl	get_ray_color_no_bilinear
	.align	16, 0x90
	.type	get_ray_color_no_bilinear,@function
get_ray_color_no_bilinear:              # @get_ray_color_no_bilinear
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
	pushq	%rbx
	subq	$376, %rsp              # imm = 0x178
.Ltmp28:
	.cfi_offset %rbx, -24
	movq	%rdi, %rax
	leaq	-160(%rbp), %rcx
	leaq	-168(%rbp), %rdx
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	pos_to_float
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %r8d
	movl	%r8d, -148(%rbp)
	cmpl	$0, mapvals+888
	je	.LBB8_3
# BB#1:                                 # %land.lhs.true
	xorps	%xmm0, %xmm0
	movslq	-148(%rbp), %rax
	movq	heights+8, %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB8_3
	jp	.LBB8_3
# BB#2:                                 # %if.then
	leaq	-112(%rbp), %rdi
	xorps	%xmm0, %xmm0
	callq	gimp_rgb_set_alpha
	jmp	.LBB8_18
.LBB8_3:                                # %if.else
	leaq	-240(%rbp), %rdi
	movl	-148(%rbp), %esi
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movl	%esi, -332(%rbp)        # 4-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %edx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movl	-332(%rbp), %esi        # 4-byte Reload
	callq	peek
	leaq	-112(%rbp), %rdi
	movq	-240(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	mapvals+688, %xmm0      # xmm0 = mem[0],zero
	callq	gimp_rgb_multiply
	movl	$0, -204(%rbp)
.LBB8_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -204(%rbp)
	jge	.LBB8_17
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB8_4 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-204(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	addq	$32, %rdx
	movq	%rdx, -200(%rbp)
	movslq	-204(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, 96(%rax)
	je	.LBB8_7
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB8_4 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-204(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$3, (%rax)
	jne	.LBB8_8
.LBB8_7:                                # %if.then.16
                                        #   in Loop: Header=BB8_4 Depth=1
	jmp	.LBB8_16
.LBB8_8:                                # %if.else.17
                                        #   in Loop: Header=BB8_4 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-204(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, (%rax)
	jne	.LBB8_10
# BB#9:                                 # %if.then.23
                                        #   in Loop: Header=BB8_4 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-204(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, -200(%rbp)
.LBB8_10:                               # %if.end
                                        #   in Loop: Header=BB8_4 Depth=1
	jmp	.LBB8_11
.LBB8_11:                               # %if.end.27
                                        #   in Loop: Header=BB8_4 Depth=1
	leaq	-80(%rbp), %rdi
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-204(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	56(%rdx), %rcx
	movq	%rcx, -80(%rbp)
	movq	64(%rdx), %rcx
	movq	%rcx, -72(%rbp)
	movq	72(%rdx), %rcx
	movq	%rcx, -64(%rbp)
	movq	80(%rdx), %rcx
	movq	%rcx, -56(%rbp)
	movslq	-204(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_rgb_multiply
	cmpl	$0, mapvals+892
	je	.LBB8_13
# BB#12:                                # %lor.lhs.false.35
                                        #   in Loop: Header=BB8_4 Depth=1
	cmpl	$-1, mapvals+4
	jne	.LBB8_14
.LBB8_13:                               # %if.then.38
                                        #   in Loop: Header=BB8_4 Depth=1
	leaq	-272(%rbp), %rdi
	movabsq	$mapvals, %rax
	movq	%rax, %rcx
	addq	$16, %rcx
	movq	%rax, %rdx
	addq	$40, %rdx
	leaq	-48(%rbp), %r9
	leaq	-80(%rbp), %rsi
	addq	$64, %rax
	movq	-16(%rbp), %r8
	movq	-200(%rbp), %r10
	movslq	-204(%rbp), %r11
	imulq	$104, %r11, %r11
	addq	%r11, %rax
	movl	(%rax), %ebx
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-352(%rbp), %rcx        # 8-byte Reload
	movq	%r10, %r8
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%ebx, 8(%rsp)
	callq	phong_shade
	movq	-272(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB8_15
.LBB8_14:                               # %if.else.43
                                        #   in Loop: Header=BB8_4 Depth=1
	leaq	-304(%rbp), %rdi
	movabsq	$mapvals, %rax
	movq	%rax, %rcx
	addq	$16, %rcx
	leaq	-192(%rbp), %rdx
	leaq	-48(%rbp), %r9
	leaq	-80(%rbp), %rsi
	addq	$64, %rax
	movslq	-148(%rbp), %r8
	imulq	$24, %r8, %r8
	addq	vertex_normals+8, %r8
	movq	(%r8), %r10
	movq	%r10, -192(%rbp)
	movq	8(%r8), %r10
	movq	%r10, -184(%rbp)
	movq	16(%r8), %r8
	movq	%r8, -176(%rbp)
	movq	-16(%rbp), %r8
	movq	-200(%rbp), %r10
	movslq	-204(%rbp), %r11
	imulq	$104, %r11, %r11
	addq	%r11, %rax
	movl	(%rax), %ebx
	movq	%rsi, -360(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	movq	%r10, %r8
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%ebx, 8(%rsp)
	callq	phong_shade
	movq	-304(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB8_15:                               # %if.end.50
                                        #   in Loop: Header=BB8_4 Depth=1
	leaq	-112(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	callq	gimp_rgb_add
.LBB8_16:                               # %for.inc
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB8_4
.LBB8_17:                               # %for.end
	jmp	.LBB8_18
.LBB8_18:                               # %if.end.51
	leaq	-112(%rbp), %rdi
	callq	gimp_rgb_clamp
	movq	-112(%rbp), %rdi
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rdi, (%rax)
	movq	-104(%rbp), %rdi
	movq	%rdi, 8(%rax)
	movq	-96(%rbp), %rdi
	movq	%rdi, 16(%rax)
	movq	-88(%rbp), %rdi
	movq	%rdi, 24(%rax)
	movq	-320(%rbp), %rax        # 8-byte Reload
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	get_ray_color_no_bilinear, .Lfunc_end8-get_ray_color_no_bilinear
	.cfi_endproc

	.globl	get_ray_color_no_bilinear_ref
	.align	16, 0x90
	.type	get_ray_color_no_bilinear_ref,@function
get_ray_color_no_bilinear_ref:          # @get_ray_color_no_bilinear_ref
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$512, %rsp              # imm = 0x200
	movq	%rdi, %rax
	leaq	-184(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	pos_to_float
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %r8d
	movl	%r8d, -172(%rbp)
	cmpl	$0, mapvals+892
	je	.LBB9_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$-1, mapvals+4
	jne	.LBB9_3
.LBB9_2:                                # %if.then
	movq	mapvals+40, %rax
	movq	%rax, -216(%rbp)
	movq	mapvals+48, %rax
	movq	%rax, -208(%rbp)
	movq	mapvals+56, %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rcx
	imulq	$24, %rcx, %rcx
	addq	vertex_normals+8, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -216(%rbp)
	movq	8(%rcx), %rdx
	movq	%rdx, -208(%rbp)
	movq	16(%rcx), %rcx
	movq	%rcx, -200(%rbp)
.LBB9_4:                                # %if.end
	leaq	-216(%rbp), %rdi
	callq	gimp_vector3_normalize
	cmpl	$0, mapvals+888
	je	.LBB9_7
# BB#5:                                 # %land.lhs.true
	xorps	%xmm0, %xmm0
	movslq	-172(%rbp), %rax
	movq	heights+8, %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_7
	jp	.LBB9_7
# BB#6:                                 # %if.then.11
	leaq	-40(%rbp), %rdi
	xorps	%xmm0, %xmm0
	callq	gimp_rgb_set_alpha
	jmp	.LBB9_18
.LBB9_7:                                # %if.else.12
	leaq	-320(%rbp), %rdi
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %esi
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%esi, -468(%rbp)        # 4-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %edx
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movl	-468(%rbp), %esi        # 4-byte Reload
	callq	peek
	leaq	-40(%rbp), %rdi
	movq	-320(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -16(%rbp)
	movsd	mapvals+688, %xmm0      # xmm0 = mem[0],zero
	callq	gimp_rgb_multiply
	movl	$0, -276(%rbp)
.LBB9_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -276(%rbp)
	jge	.LBB9_17
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB9_8 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-276(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	addq	$32, %rdx
	movq	%rdx, -224(%rbp)
	movslq	-276(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, 96(%rax)
	je	.LBB9_11
# BB#10:                                # %lor.lhs.false.24
                                        #   in Loop: Header=BB9_8 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-276(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$3, (%rax)
	jne	.LBB9_12
.LBB9_11:                               # %if.then.29
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_16
.LBB9_12:                               # %if.else.30
                                        #   in Loop: Header=BB9_8 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-276(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, (%rax)
	jne	.LBB9_14
# BB#13:                                # %if.then.36
                                        #   in Loop: Header=BB9_8 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-276(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, -224(%rbp)
.LBB9_14:                               # %if.end.40
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_15
.LBB9_15:                               # %if.end.41
                                        #   in Loop: Header=BB9_8 Depth=1
	leaq	-72(%rbp), %rdi
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-276(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	56(%rdx), %rcx
	movq	%rcx, -72(%rbp)
	movq	64(%rdx), %rcx
	movq	%rcx, -64(%rbp)
	movq	72(%rdx), %rcx
	movq	%rcx, -56(%rbp)
	movq	80(%rdx), %rcx
	movq	%rcx, -48(%rbp)
	movslq	-276(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_rgb_multiply
	leaq	-352(%rbp), %rdi
	movabsq	$mapvals, %rax
	addq	$16, %rax
	leaq	-216(%rbp), %rcx
	leaq	-136(%rbp), %r9
	leaq	-72(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-224(%rbp), %r8
	movl	mapvals+64, %r10d
	movq	%rdx, -480(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	phong_shade
	movq	-352(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB9_16:                               # %for.inc
                                        #   in Loop: Header=BB9_8 Depth=1
	movl	-276(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -276(%rbp)
	jmp	.LBB9_8
.LBB9_17:                               # %for.end
	leaq	-248(%rbp), %rdi
	movabsq	$mapvals, %rax
	addq	$16, %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_vector3_sub
	leaq	-248(%rbp), %rdi
	callq	gimp_vector3_normalize
	leaq	-376(%rbp), %rdi
	leaq	-216(%rbp), %rsi
	leaq	-248(%rbp), %rdx
	callq	compute_reflected_ray
	leaq	-272(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	movq	-376(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -256(%rbp)
	callq	sphere_to_image
	leaq	-408(%rbp), %rdi
	cvtsi2sdl	env_width, %xmm0
	mulsd	-184(%rbp), %xmm0
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %esi
	cvtsi2sdl	env_height, %xmm0
	mulsd	-192(%rbp), %xmm0
	movl	%esi, -492(%rbp)        # 4-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %edx
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movl	-492(%rbp), %esi        # 4-byte Reload
	callq	peek_env_map
	leaq	-440(%rbp), %rdi
	movabsq	$mapvals, %rax
	addq	$16, %rax
	leaq	-216(%rbp), %rcx
	leaq	-272(%rbp), %r8
	leaq	-136(%rbp), %r9
	leaq	-168(%rbp), %r10
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	movq	-408(%rbp), %r11
	movq	%r11, -168(%rbp)
	movq	-400(%rbp), %r11
	movq	%r11, -160(%rbp)
	movq	-392(%rbp), %r11
	movq	%r11, -152(%rbp)
	movq	-384(%rbp), %r11
	movq	%r11, -144(%rbp)
	movsd	mapvals+696, %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm1, -288(%rbp)
	movsd	%xmm0, mapvals+696
	movq	-8(%rbp), %rsi
	movl	%edx, -496(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movq	%r10, (%rsp)
	movl	$1, 8(%rsp)
	callq	phong_shade
	leaq	-40(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	movq	-440(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-432(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-424(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-416(%rbp), %rax
	movq	%rax, -80(%rbp)
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, mapvals+696
	callq	gimp_rgb_add
.LBB9_18:                               # %if.end.58
	leaq	-40(%rbp), %rdi
	callq	gimp_rgb_clamp
	movq	-40(%rbp), %rdi
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	%rdi, (%rax)
	movq	-32(%rbp), %rdi
	movq	%rdi, 8(%rax)
	movq	-24(%rbp), %rdi
	movq	%rdi, 16(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, 24(%rax)
	movq	-456(%rbp), %rax        # 8-byte Reload
	addq	$512, %rsp              # imm = 0x200
	popq	%rbp
	retq
.Lfunc_end9:
	.size	get_ray_color_no_bilinear_ref, .Lfunc_end9-get_ray_color_no_bilinear_ref
	.cfi_endproc

	.type	xstep,@object           # @xstep
	.local	xstep
	.comm	xstep,8,8
	.type	ystep,@object           # @ystep
	.local	ystep
	.comm	ystep,8,8
	.type	pre_w,@object           # @pre_w
	.data
	.align	4
pre_w:
	.long	4294967295              # 0xffffffff
	.size	pre_w, 4

	.type	pre_h,@object           # @pre_h
	.align	4
pre_h:
	.long	4294967295              # 0xffffffff
	.size	pre_h, 4

	.type	vertex_normals,@object  # @vertex_normals
	.local	vertex_normals
	.comm	vertex_normals,24,16
	.type	heights,@object         # @heights
	.local	heights
	.comm	heights,24,16
	.type	triangle_normals,@object # @triangle_normals
	.local	triangle_normals
	.comm	triangle_normals,16,16
	.type	bumprow,@object         # @bumprow
	.local	bumprow
	.comm	bumprow,8,8
	.type	sphere_to_image.alpha,@object # @sphere_to_image.alpha
	.local	sphere_to_image.alpha
	.comm	sphere_to_image.alpha,8,8
	.type	sphere_to_image.fac,@object # @sphere_to_image.fac
	.local	sphere_to_image.fac
	.comm	sphere_to_image.fac,8,8
	.type	sphere_to_image.cross_prod,@object # @sphere_to_image.cross_prod
	.local	sphere_to_image.cross_prod
	.comm	sphere_to_image.cross_prod,24,8
	.type	sphere_to_image.firstaxis,@object # @sphere_to_image.firstaxis
	.align	8
sphere_to_image.firstaxis:
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.size	sphere_to_image.firstaxis, 24

	.type	sphere_to_image.secondaxis,@object # @sphere_to_image.secondaxis
	.align	8
sphere_to_image.secondaxis:
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.size	sphere_to_image.secondaxis, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
