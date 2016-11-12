	.text
	.file	"colorize.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4632233691727265792     # double 50
.LCPI0_1:
	.quad	4640537203540230144     # double 180
.LCPI0_2:
	.quad	4589866978952703325     # double 0.0722
.LCPI0_3:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI0_4:
	.quad	4596827742536767164     # double 0.21260000000000001
	.text
	.globl	colorize_init
	.align	16, 0x90
	.type	colorize_init,@function
colorize_init:                          # @colorize_init
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
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.colorize_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_9
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_1, %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm2, (%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movl	$0, -12(%rbp)
.LBB0_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jge	.LBB0_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB0_6 Depth=1
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_4, %xmm2         # xmm2 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	%eax, 24(%rdx,%rcx,4)
	cvtsi2sdl	-12(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	%eax, 1048(%rdx,%rcx,4)
	cvtsi2sdl	-12(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	%eax, 2072(%rdx,%rcx,4)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_6
.LBB0_9:                                # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	colorize_init, .Lfunc_end0-colorize_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4636737291354636288     # double 100
.LCPI1_1:
	.quad	4645040803167600640     # double 360
.LCPI1_2:
	.quad	4643176031446892544     # double 255
	.text
	.globl	colorize_calculate
	.align	16, 0x90
	.type	colorize_calculate,@function
colorize_calculate:                     # @colorize_calculate
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
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.colorize_calculate, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_9
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -40(%rbp)
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movl	$0, -76(%rbp)
.LBB1_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -76(%rbp)         # imm = 0x100
	jge	.LBB1_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB1_6 Depth=1
	leaq	-40(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	movsd	.LCPI1_2, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	callq	gimp_hsl_to_rgb
	movsd	.LCPI1_2, %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	mulsd	-72(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movslq	-76(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, 3096(%rdi,%rsi,4)
	movaps	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movslq	-76(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, 4120(%rdi,%rsi,4)
	mulsd	-56(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	-76(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, 5144(%rdi,%rsi,4)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB1_6
.LBB1_9:                                # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	colorize_calculate, .Lfunc_end1-colorize_calculate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4636737291354636288     # double 100
.LCPI2_1:
	.quad	4643176031446892544     # double 255
	.text
	.globl	colorize
	.align	16, 0x90
	.type	colorize,@function
colorize:                               # @colorize
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	48(%rdx), %eax
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	pixel_region_has_alpha
	movl	%eax, -60(%rbp)
.LBB2_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, %eax
	je	.LBB2_13
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB2_3:                                # %while.cond.4
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -64(%rbp)
	cmpl	$0, %eax
	je	.LBB2_12
# BB#4:                                 # %while.body.7
                                        #   in Loop: Header=BB2_3 Depth=2
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	24(%rdx,%rax,4), %ecx
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %esi
	movl	%esi, %eax
	movq	-8(%rbp), %rdx
	addl	1048(%rdx,%rax,4), %ecx
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %esi
	movl	%esi, %eax
	movq	-8(%rbp), %rdx
	addl	2072(%rdx,%rax,4), %ecx
	movl	%ecx, -72(%rbp)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB2_3 Depth=2
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-72(%rbp), %xmm2
	movq	-8(%rbp), %rax
	movaps	%xmm1, %xmm3
	subsd	16(%rax), %xmm3
	mulsd	%xmm3, %xmm2
	divsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, -72(%rbp)
	movq	-8(%rbp), %rax
	movaps	%xmm1, %xmm2
	subsd	16(%rax), %xmm2
	mulsd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	subsd	%xmm2, %xmm0
	cvtsi2sdl	-72(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -72(%rbp)
	jmp	.LBB2_9
.LBB2_6:                                # %if.else
                                        #   in Loop: Header=BB2_3 Depth=2
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	jbe	.LBB2_8
# BB#7:                                 # %if.then.29
                                        #   in Loop: Header=BB2_3 Depth=2
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-72(%rbp), %xmm1
	movq	-8(%rbp), %rax
	movaps	%xmm0, %xmm2
	addsd	16(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -72(%rbp)
.LBB2_8:                                # %if.end
                                        #   in Loop: Header=BB2_3 Depth=2
	jmp	.LBB2_9
.LBB2_9:                                # %if.end.36
                                        #   in Loop: Header=BB2_3 Depth=2
	movslq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	3096(%rcx,%rax,4), %edx
	movb	%dl, %sil
	movq	-56(%rbp), %rax
	movb	%sil, (%rax)
	movslq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	4120(%rcx,%rax,4), %edx
	movb	%dl, %sil
	movq	-56(%rbp), %rax
	movb	%sil, 1(%rax)
	movslq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	5144(%rcx,%rax,4), %edx
	movb	%dl, %sil
	movq	-56(%rbp), %rax
	movb	%sil, 2(%rax)
	cmpl	$0, -60(%rbp)
	je	.LBB2_11
# BB#10:                                # %if.then.50
                                        #   in Loop: Header=BB2_3 Depth=2
	movq	-40(%rbp), %rax
	movb	3(%rax), %cl
	movq	-56(%rbp), %rax
	movb	%cl, 3(%rax)
.LBB2_11:                               # %if.end.53
                                        #   in Loop: Header=BB2_3 Depth=2
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB2_3
.LBB2_12:                               # %while.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB2_1
.LBB2_13:                               # %while.end.62
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	colorize, .Lfunc_end2-colorize
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Base"
	.size	.L.str, 10

	.type	.L__func__.colorize_init,@object # @__func__.colorize_init
.L__func__.colorize_init:
	.asciz	"colorize_init"
	.size	.L__func__.colorize_init, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"colorize != NULL"
	.size	.L.str.1, 17

	.type	.L__func__.colorize_calculate,@object # @__func__.colorize_calculate
.L__func__.colorize_calculate:
	.asciz	"colorize_calculate"
	.size	.L__func__.colorize_calculate, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
