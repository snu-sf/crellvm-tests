	.text
	.file	"reduce-region.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4602678819172646912     # double 0.5
.LCPI0_1:
	.quad	4611686018427387904     # double 2
	.text
	.globl	reduce_region
	.align	16, 0x90
	.type	reduce_region,@function
reduce_region:                          # @reduce_region
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
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movl	52(%rcx), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-16(%rbp), %rcx
	cvtsi2sdl	48(%rcx), %xmm0
	movq	-8(%rbp), %rcx
	cvtsi2sdl	48(%rcx), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	pixel_region_has_alpha
	cmpl	$0, %eax
	je	.LBB0_2
# BB#1:                                 # %if.then
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
.LBB0_2:                                # %if.end
	jmp	.LBB0_3
.LBB0_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jb	.LBB0_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_3
.LBB0_5:                                # %while.end
	cmpl	$0, -44(%rbp)
	jle	.LBB0_12
# BB#6:                                 # %if.then.7
	movl	$1, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %edx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-84(%rbp), %edi         # 4-byte Reload
	idivl	%edi
	movl	%eax, -60(%rbp)
	movq	-8(%rbp), %rcx
	movl	48(%rcx), %eax
	cltd
	idivl	%edi
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	imull	-64(%rbp), %eax
	imull	-36(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-36(%rbp), %r8d
	movl	%r8d, %edx
	callq	reduce_pixel_region
	movl	-44(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jle	.LBB0_11
# BB#7:                                 # %if.then.17
	jmp	.LBB0_8
.LBB0_8:                                # %while.cond.18
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB0_10
# BB#9:                                 # %while.body.20
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movq	-72(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movl	-60(%rbp), %edx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-88(%rbp), %edi         # 4-byte Reload
	idivl	%edi
	movl	%eax, -60(%rbp)
	movl	-64(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	imull	-64(%rbp), %eax
	imull	-36(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-36(%rbp), %r8d
	movl	-60(%rbp), %r9d
	shll	$1, %r9d
	movl	-64(%rbp), %r10d
	shll	$1, %r10d
	movl	-40(%rbp), %r11d
	movl	%r8d, %edx
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	callq	reduce_buffer
	movq	-80(%rbp), %rdi
	callq	g_free
	movl	-44(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB0_8
.LBB0_10:                               # %while.end.30
	jmp	.LBB0_11
.LBB0_11:                               # %if.end.31
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-36(%rbp), %r8d
	callq	reduce_bilinear
	movq	-72(%rbp), %rdi
	callq	g_free
	jmp	.LBB0_13
.LBB0_12:                               # %if.else
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	reduce_bilinear_pr
.LBB0_13:                               # %if.end.32
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	reduce_region, .Lfunc_end0-reduce_region
	.cfi_endproc

	.align	16, 0x90
	.type	reduce_pixel_region,@function
reduce_pixel_region:                    # @reduce_pixel_region
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
	subq	$112, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movl	44(%rsi), %edx
	movl	%edx, -64(%rbp)
	movq	-8(%rbp), %rsi
	movl	44(%rsi), %edx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-88(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -68(%rbp)
	movl	$0, -84(%rbp)
	movq	-8(%rbp), %rdi
	callq	pixel_region_has_alpha
	cmpl	$0, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -84(%rbp)
.LBB1_2:                                # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movl	-64(%rbp), %eax
	imull	-20(%rbp), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %ecx
	imull	-20(%rbp), %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %ecx
	imull	-20(%rbp), %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -60(%rbp)
.LBB1_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB1_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-8(%rbp), %rdi
	movl	-60(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	jge	.LBB1_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB1_3 Depth=1
	xorl	%eax, %eax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_7
.LBB1_6:                                # %cond.false
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB1_7:                                # %cond.end
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	xorl	%esi, %esi
	movl	$1, %r9d
	movl	-64(%rbp), %ecx
	movq	-40(%rbp), %r8
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %edx
	callq	pixel_region_get_row
	xorl	%esi, %esi
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movq	-48(%rbp), %r8
	callq	pixel_region_get_row
	xorl	%esi, %esi
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	-64(%rbp), %ecx
	movq	-56(%rbp), %r8
	movl	%eax, %edx
	callq	pixel_region_get_row
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-64(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-84(%rbp), %r8d
	callq	reduce_row
	movl	-68(%rbp), %eax
	imull	-20(%rbp), %eax
	movq	-80(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -80(%rbp)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB1_3
.LBB1_9:                                # %for.end
	movq	-32(%rbp), %rdi
	callq	g_free
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	reduce_pixel_region, .Lfunc_end1-reduce_pixel_region
	.cfi_endproc

	.align	16, 0x90
	.type	reduce_buffer,@function
reduce_buffer:                          # @reduce_buffer
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
	subq	$112, %rsp
	movl	$1, %eax
	movl	%eax, %r10d
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	-24(%rbp), %ecx
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-96(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -76(%rbp)
	movl	-24(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, -92(%rbp)
	imull	$3, -92(%rbp), %eax
	movslq	%eax, %rdi
	movq	%r10, %rsi
	callq	g_malloc_n
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movslq	-92(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movslq	-92(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$0, -68(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB2_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-68(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movl	-68(%rbp), %ecx
	subl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB2_5
.LBB2_4:                                # %cond.false
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-68(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB2_5:                                # %cond.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	imull	-92(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-92(%rbp), %rdx
	movq	%rcx, %rsi
	callq	memcpy
	movl	-68(%rbp), %eax
	imull	-92(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-92(%rbp), %rdx
	movq	%rcx, %rsi
	callq	memcpy
	movl	-68(%rbp), %eax
	addl	$1, %eax
	imull	-92(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-92(%rbp), %rdx
	movq	%rcx, %rsi
	callq	memcpy
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	reduce_row
	movl	-76(%rbp), %eax
	imull	-20(%rbp), %eax
	movq	-88(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -88(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB2_1
.LBB2_7:                                # %for.end
	movq	-40(%rbp), %rdi
	callq	g_free
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	reduce_buffer, .Lfunc_end2-reduce_buffer
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	reduce_bilinear,@function
reduce_bilinear:                        # @reduce_bilinear
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
	subq	$144, %rsp
	movl	$1, %eax
	movl	%eax, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-8(%rbp), %rsi
	cvtsi2sdl	48(%rsi), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rsi
	movl	44(%rsi), %eax
	movq	-8(%rbp), %rsi
	imull	48(%rsi), %eax
	imull	-28(%rbp), %eax
	movslq	%eax, %rdi
	movq	%r9, %rsi
	callq	g_malloc_n
	movq	%rax, -136(%rbp)
	movl	$0, -48(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
                                        #       Child Loop BB3_5 Depth 3
	movl	-48(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB3_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	cvtsi2sdl	-48(%rbp), %xmm0
	divsd	-40(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -64(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-64(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	$0, -44(%rbp)
.LBB3_3:                                # %for.cond.14
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_5 Depth 3
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB3_10
# BB#4:                                 # %for.body.18
                                        #   in Loop: Header=BB3_3 Depth=2
	cvtsi2sdl	-44(%rbp), %xmm0
	divsd	-40(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -56(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -60(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movl	$0, -52(%rbp)
.LBB3_5:                                # %for.cond.27
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-52(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB3_8
# BB#6:                                 # %for.body.30
                                        #   in Loop: Header=BB3_5 Depth=3
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movl	-56(%rbp), %eax
	movl	-64(%rbp), %ecx
	movl	-20(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	-28(%rbp), %ecx
	imull	%ecx, %eax
	movl	-52(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -96(%rbp)
	movl	-60(%rbp), %eax
	movl	-64(%rbp), %ecx
	movl	-20(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	-28(%rbp), %ecx
	imull	%ecx, %eax
	movl	-52(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -112(%rbp)
	movl	-56(%rbp), %eax
	movl	-68(%rbp), %ecx
	movl	-20(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	-28(%rbp), %ecx
	imull	%ecx, %eax
	movl	-52(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -104(%rbp)
	movl	-60(%rbp), %eax
	movl	-68(%rbp), %ecx
	movl	-20(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	-28(%rbp), %ecx
	imull	%ecx, %eax
	movl	-52(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -120(%rbp)
	movaps	%xmm0, %xmm1
	subsd	-88(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	subsd	-80(%rbp), %xmm2
	mulsd	-96(%rbp), %xmm2
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	-104(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-80(%rbp), %xmm0
	mulsd	-112(%rbp), %xmm0
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	-120(%rbp), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %r8b
	movb	%r8b, -121(%rbp)
	movb	-121(%rbp), %r8b
	movl	-44(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	-52(%rbp), %eax
	movslq	%eax, %rsi
	movq	-136(%rbp), %rdi
	movb	%r8b, (%rdi,%rsi)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=3
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB3_5
.LBB3_8:                                # %for.end
                                        #   in Loop: Header=BB3_3 Depth=2
	jmp	.LBB3_9
.LBB3_9:                                # %for.inc.74
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB3_3
.LBB3_10:                               # %for.end.76
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movl	-48(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-136(%rbp), %r8
	callq	pixel_region_set_row
# BB#11:                                # %for.inc.78
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB3_1
.LBB3_12:                               # %for.end.80
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	reduce_bilinear, .Lfunc_end3-reduce_bilinear
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	reduce_bilinear_pr,@function
reduce_bilinear_pr:                     # @reduce_bilinear_pr
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	52(%rsi), %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rsi
	movl	48(%rsi), %eax
	movq	-8(%rbp), %rsi
	cmpl	48(%rsi), %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	copy_region
	jmp	.LBB4_15
.LBB4_2:                                # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	cvtsi2sdl	48(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	cvtsi2sdl	48(%rcx), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-16(%rbp), %rcx
	movl	44(%rcx), %eax
	imull	-20(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movl	44(%rax), %edx
	imull	-20(%rbp), %edx
	movslq	%edx, %rdi
	callq	g_malloc0_n
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, -136(%rbp)
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	imull	-20(%rbp), %edx
	movslq	%edx, %rdi
	callq	g_malloc0_n
	movq	%rax, -120(%rbp)
	movl	$0, -28(%rbp)
.LBB4_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_5 Depth 2
                                        #       Child Loop BB4_7 Depth 3
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB4_14
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB4_3 Depth=1
	xorl	%esi, %esi
	movl	$1, %r9d
	cvtsi2sdl	-28(%rbp), %xmm0
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%esi, -140(%rbp)        # 4-byte Spill
	movl	%r9d, -144(%rbp)        # 4-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %esi
	movl	%esi, -44(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %esi
	movl	%esi, -48(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-128(%rbp), %r8
	movl	-140(%rbp), %esi        # 4-byte Reload
	movl	-144(%rbp), %r9d        # 4-byte Reload
	callq	pixel_region_get_row
	xorl	%esi, %esi
	movl	$1, %r9d
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-136(%rbp), %r8
	callq	pixel_region_get_row
	movl	$0, -24(%rbp)
.LBB4_5:                                # %for.cond.27
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_7 Depth 3
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB4_12
# BB#6:                                 # %for.body.31
                                        #   in Loop: Header=BB4_5 Depth=2
	cvtsi2sdl	-24(%rbp), %xmm0
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -40(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	$0, -32(%rbp)
.LBB4_7:                                # %for.cond.40
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_10
# BB#8:                                 # %for.body.43
                                        #   in Loop: Header=BB4_7 Depth=3
	movl	-36(%rbp), %eax
	movl	-20(%rbp), %ecx
	imull	%ecx, %eax
	movl	-32(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-128(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -80(%rbp)
	movl	-40(%rbp), %eax
	movl	-20(%rbp), %ecx
	imull	%ecx, %eax
	movl	-32(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-128(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	-36(%rbp), %eax
	movl	-20(%rbp), %ecx
	imull	%ecx, %eax
	movl	-32(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-136(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	-40(%rbp), %eax
	movl	-20(%rbp), %ecx
	imull	%ecx, %eax
	movl	-32(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-136(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI4_0(%rip), %xmm2   # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	movsd	-64(%rbp), %xmm4        # xmm4 = mem[0],zero
	subsd	%xmm4, %xmm2
	movsd	-80(%rbp), %xmm5        # xmm5 = mem[0],zero
	movaps	%xmm2, %xmm6
	mulsd	%xmm5, %xmm6
	movsd	-88(%rbp), %xmm5        # xmm5 = mem[0],zero
	movaps	%xmm4, %xmm7
	mulsd	%xmm5, %xmm7
	addsd	%xmm7, %xmm6
	mulsd	%xmm6, %xmm3
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	mulsd	%xmm5, %xmm2
	mulsd	%xmm0, %xmm4
	addsd	%xmm4, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm3
	cvttsd2si	%xmm3, %eax
	movb	%al, %dil
	movb	%dil, -105(%rbp)
	movb	-105(%rbp), %dil
	movl	-24(%rbp), %eax
	imull	-20(%rbp), %eax
	addl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB4_7 Depth=3
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_7
.LBB4_10:                               # %for.end
                                        #   in Loop: Header=BB4_5 Depth=2
	jmp	.LBB4_11
.LBB4_11:                               # %for.inc.78
                                        #   in Loop: Header=BB4_5 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB4_5
.LBB4_12:                               # %for.end.80
                                        #   in Loop: Header=BB4_3 Depth=1
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-120(%rbp), %r8
	callq	pixel_region_set_row
# BB#13:                                # %for.inc.82
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB4_3
.LBB4_14:                               # %for.end.84
	movq	-128(%rbp), %rdi
	callq	g_free
	movq	-136(%rbp), %rdi
	callq	g_free
	movq	-120(%rbp), %rdi
	callq	g_free
.LBB4_15:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	reduce_bilinear_pr, .Lfunc_end4-reduce_bilinear_pr
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4643510282981736448     # double 273
.LCPI5_1:
	.quad	4643316768935247872     # double 262
	.text
	.align	16, 0x90
	.type	reduce_row,@function
reduce_row:                             # @reduce_row
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
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)
	movq	-8(%rbp), %rsi
	movl	-20(%rbp), %ecx
	imull	-24(%rbp), %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -72(%rbp)
	movq	-72(%rbp), %rsi
	movl	-20(%rbp), %ecx
	imull	-24(%rbp), %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -80(%rbp)
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -40(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	$0, -32(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB5_44
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB5_3:                                # %for.cond.4
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -36(%rbp)
	jl	.LBB5_42
# BB#4:                                 # %for.body.6
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-32(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB5_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB5_3 Depth=2
	xorl	%eax, %eax
	movl	-32(%rbp), %ecx
	subl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB5_7
.LBB5_6:                                # %cond.false
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB5_7:                                # %cond.end
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	imull	-24(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	imull	$12, %eax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	cmpl	$0, -32(%rbp)
	jge	.LBB5_9
# BB#8:                                 # %cond.true.18
                                        #   in Loop: Header=BB5_3 Depth=2
	xorl	%eax, %eax
	subl	-32(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB5_10
.LBB5_9:                                # %cond.false.20
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-32(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB5_10:                               # %cond.end.21
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-96(%rbp), %eax         # 4-byte Reload
	imull	-24(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	shll	$5, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB5_12
# BB#11:                                # %cond.true.34
                                        #   in Loop: Header=BB5_3 Depth=2
	xorl	%eax, %eax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB5_13
.LBB5_12:                               # %cond.false.37
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB5_13:                               # %cond.end.39
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-100(%rbp), %eax        # 4-byte Reload
	imull	-24(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	imull	$12, %eax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	-32(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB5_15
# BB#14:                                # %cond.true.52
                                        #   in Loop: Header=BB5_3 Depth=2
	xorl	%eax, %eax
	movl	-32(%rbp), %ecx
	subl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB5_16
.LBB5_15:                               # %cond.false.55
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB5_16:                               # %cond.end.57
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-104(%rbp), %eax        # 4-byte Reload
	imull	-24(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	shll	$5, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	cmpl	$0, -32(%rbp)
	jge	.LBB5_18
# BB#17:                                # %cond.true.69
                                        #   in Loop: Header=BB5_3 Depth=2
	xorl	%eax, %eax
	subl	-32(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB5_19
.LBB5_18:                               # %cond.false.71
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-32(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB5_19:                               # %cond.end.72
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-108(%rbp), %eax        # 4-byte Reload
	imull	-24(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	imull	$86, %eax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB5_21
# BB#20:                                # %cond.true.85
                                        #   in Loop: Header=BB5_3 Depth=2
	xorl	%eax, %eax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB5_22
.LBB5_21:                               # %cond.false.88
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB5_22:                               # %cond.end.90
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-112(%rbp), %eax        # 4-byte Reload
	imull	-24(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	shll	$5, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	-32(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB5_24
# BB#23:                                # %cond.true.103
                                        #   in Loop: Header=BB5_3 Depth=2
	xorl	%eax, %eax
	movl	-32(%rbp), %ecx
	subl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB5_25
.LBB5_24:                               # %cond.false.106
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB5_25:                               # %cond.end.108
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-116(%rbp), %eax        # 4-byte Reload
	imull	-24(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	imull	$12, %eax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	cmpl	$0, -32(%rbp)
	jge	.LBB5_27
# BB#26:                                # %cond.true.120
                                        #   in Loop: Header=BB5_3 Depth=2
	xorl	%eax, %eax
	subl	-32(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB5_28
.LBB5_27:                               # %cond.false.122
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-32(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB5_28:                               # %cond.end.123
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-120(%rbp), %eax        # 4-byte Reload
	imull	-24(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	shll	$5, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB5_30
# BB#29:                                # %cond.true.136
                                        #   in Loop: Header=BB5_3 Depth=2
	xorl	%eax, %eax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB5_31
.LBB5_30:                               # %cond.false.139
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB5_31:                               # %cond.end.141
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-124(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	imull	-24(%rbp), %eax
	addl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	imull	$12, %eax, %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-56(%rbp), %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB5_34
# BB#32:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB5_34
# BB#33:                                # %if.then
                                        #   in Loop: Header=BB5_3 Depth=2
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-36(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB5_40
.LBB5_34:                               # %if.else
                                        #   in Loop: Header=BB5_3 Depth=2
	cmpl	$0, -28(%rbp)
	je	.LBB5_39
# BB#35:                                # %if.then.157
                                        #   in Loop: Header=BB5_3 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_36
	jp	.LBB5_36
	jmp	.LBB5_37
.LBB5_36:                               # %if.then.160
                                        #   in Loop: Header=BB5_3 Depth=2
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	-48(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	jmp	.LBB5_38
.LBB5_37:                               # %if.else.163
                                        #   in Loop: Header=BB5_3 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB5_38:                               # %if.end
                                        #   in Loop: Header=BB5_3 Depth=2
	jmp	.LBB5_39
.LBB5_39:                               # %if.end.164
                                        #   in Loop: Header=BB5_3 Depth=2
	cvttsd2si	-56(%rbp), %eax
	movb	%al, %cl
	movslq	-36(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB5_40:                               # %if.end.168
                                        #   in Loop: Header=BB5_3 Depth=2
	jmp	.LBB5_41
.LBB5_41:                               # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB5_3
.LBB5_42:                               # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-24(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#43:                                # %for.inc.171
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB5_1
.LBB5_44:                               # %for.end.173
	popq	%rbp
	retq
.Lfunc_end5:
	.size	reduce_row, .Lfunc_end5-reduce_row
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
