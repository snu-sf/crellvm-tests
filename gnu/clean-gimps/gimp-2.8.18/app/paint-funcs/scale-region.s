	.text
	.file	"scale-region.bc"
	.globl	scale_region
	.align	16, 0x90
	.type	scale_region,@function
scale_region:                           # @scale_region
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
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movl	48(%rcx), %edx
	movq	-16(%rbp), %rcx
	cmpl	48(%rcx), %edx
	jne	.LBB0_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	44(%rax), %ecx
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	copy_region
	jmp	.LBB0_21
.LBB0_3:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_16
# BB#4:                                 # %land.lhs.true.5
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_16
# BB#5:                                 # %if.then.7
	jmp	.LBB0_6
.LBB0_6:                                # %do.body
	cmpl	$1, -20(%rbp)
	jne	.LBB0_8
# BB#7:                                 # %if.then.9
	jmp	.LBB0_9
.LBB0_8:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.scale_region, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_21
.LBB0_9:                                # %if.end.10
	jmp	.LBB0_10
.LBB0_10:                               # %do.end
	jmp	.LBB0_11
.LBB0_11:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	jne	.LBB0_13
# BB#12:                                # %if.then.13
	jmp	.LBB0_14
.LBB0_13:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.scale_region, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_21
.LBB0_14:                               # %if.end.15
	jmp	.LBB0_15
.LBB0_15:                               # %do.end.16
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	scale_region_buffer
	jmp	.LBB0_21
.LBB0_16:                               # %if.end.17
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_19
# BB#17:                                # %land.lhs.true.20
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_19
# BB#18:                                # %if.then.23
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	scale_region_tile
	jmp	.LBB0_21
.LBB0_19:                               # %if.end.24
	jmp	.LBB0_20
.LBB0_20:                               # %do.body.25
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$198, %edx
	movabsq	$.L__func__.scale_region, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB0_21:                               # %do.end.26
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	scale_region, .Lfunc_end0-scale_region
	.cfi_endproc

	.align	16, 0x90
	.type	scale_region_buffer,@function
scale_region_buffer:                    # @scale_region_buffer
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cvtsi2sdl	44(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	cvtsi2sdl	44(%rsi), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rsi
	cvtsi2sdl	48(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	cvtsi2sdl	48(%rsi), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rsi
	movl	44(%rsi), %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rsi
	movl	48(%rsi), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rsi
	movl	52(%rsi), %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rsi
	movl	44(%rsi), %eax
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rsi
	movl	48(%rsi), %eax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -64(%rbp)
	movl	$0, -72(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	movl	-72(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB1_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	cvtsi2sdl	-72(%rbp), %xmm0
	divsd	-32(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	cvttsd2si	-80(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB1_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-88(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_5
.LBB1_4:                                # %cond.false
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_5:                                # %cond.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -88(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-84(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movl	$0, -68(%rbp)
.LBB1_6:                                # %for.cond.21
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB1_12
# BB#7:                                 # %for.body.24
                                        #   in Loop: Header=BB1_6 Depth=2
	cvtsi2sdl	-68(%rbp), %xmm0
	divsd	-24(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	cvttsd2si	-96(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB1_9
# BB#8:                                 # %cond.true.32
                                        #   in Loop: Header=BB1_6 Depth=2
	movl	-104(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB1_10
.LBB1_9:                                # %cond.false.33
                                        #   in Loop: Header=BB1_6 Depth=2
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB1_10:                               # %cond.end.35
                                        #   in Loop: Header=BB1_6 Depth=2
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-100(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-8(%rbp), %rdi
	movl	-100(%rbp), %esi
	movl	-84(%rbp), %edx
	movl	-104(%rbp), %ecx
	movl	-88(%rbp), %r8d
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-64(%rbp), %r9
	callq	interpolate_bilinear_pr
	movl	-44(%rbp), %eax
	movq	-64(%rbp), %rdi
	movslq	%eax, %r9
	addq	%r9, %rdi
	movq	%rdi, -64(%rbp)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB1_6 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB1_6
.LBB1_12:                               # %for.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_13
.LBB1_13:                               # %for.inc.39
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB1_1
.LBB1_14:                               # %for.end.41
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	scale_region_buffer, .Lfunc_end1-scale_region_buffer
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	scale_region_tile,@function
scale_region_tile:                      # @scale_region_tile
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %edx
	movl	%edx, -68(%rbp)
	movq	-8(%rbp), %rcx
	movl	48(%rcx), %edx
	movl	%edx, -72(%rbp)
	movq	-8(%rbp), %rcx
	movl	52(%rcx), %edx
	movl	%edx, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -92(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm0
	movq	-16(%rbp), %rcx
	cvtsi2sdl	44(%rcx), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	cvtsi2sdl	-72(%rbp), %xmm0
	movq	-16(%rbp), %rcx
	cvtsi2sdl	48(%rcx), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	leaq	-88(%rbp), %rdx
	leaq	-92(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	scale_determine_levels
.LBB2_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-88(%rbp), %edx
	movl	-92(%rbp), %ecx
	callq	scale_determine_progress
	movl	%eax, -80(%rbp)
	cmpl	$0, -88(%rbp)
	jne	.LBB2_5
# BB#3:                                 # %land.lhs.true
	cmpl	$0, -92(%rbp)
	jne	.LBB2_5
# BB#4:                                 # %if.then.14
	leaq	-84(%rbp), %r9
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movl	-80(%rbp), %eax
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	%eax, (%rsp)
	callq	scale
.LBB2_5:                                # %if.end.15
	jmp	.LBB2_6
.LBB2_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -88(%rbp)
	movb	%cl, -113(%rbp)         # 1-byte Spill
	jle	.LBB2_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB2_6 Depth=1
	cmpl	$0, -92(%rbp)
	setg	%al
	movb	%al, -113(%rbp)         # 1-byte Spill
.LBB2_8:                                # %land.end
                                        #   in Loop: Header=BB2_6 Depth=1
	movb	-113(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_9
	jmp	.LBB2_12
.LBB2_9:                                # %while.body
                                        #   in Loop: Header=BB2_6 Depth=1
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movl	-68(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-72(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movl	%eax, -72(%rbp)
	movaps	%xmm0, %xmm1
	mulsd	-104(%rbp), %xmm1
	movsd	%xmm1, -104(%rbp)
	mulsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movl	-68(%rbp), %edi
	movl	-72(%rbp), %esi
	movl	-76(%rbp), %edx
	callq	tile_manager_new
	leaq	-84(%rbp), %r9
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movl	-80(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	decimate_xy
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	je	.LBB2_11
# BB#10:                                # %if.then.27
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	-56(%rbp), %rdi
	callq	tile_manager_unref
.LBB2_11:                               # %if.end.28
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-88(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -88(%rbp)
	movl	-92(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -92(%rbp)
	jmp	.LBB2_6
.LBB2_12:                               # %while.end
	jmp	.LBB2_13
.LBB2_13:                               # %while.cond.30
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -88(%rbp)
	jle	.LBB2_17
# BB#14:                                # %while.body.33
                                        #   in Loop: Header=BB2_13 Depth=1
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movl	-68(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movl	%eax, -68(%rbp)
	mulsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movl	-68(%rbp), %edi
	movl	-72(%rbp), %esi
	movl	-76(%rbp), %edx
	callq	tile_manager_new
	leaq	-84(%rbp), %r9
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movl	-80(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	decimate_x
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	je	.LBB2_16
# BB#15:                                # %if.then.41
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	-56(%rbp), %rdi
	callq	tile_manager_unref
.LBB2_16:                               # %if.end.42
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-88(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -88(%rbp)
	jmp	.LBB2_13
.LBB2_17:                               # %while.end.44
	jmp	.LBB2_18
.LBB2_18:                               # %while.cond.45
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -92(%rbp)
	jle	.LBB2_22
# BB#19:                                # %while.body.48
                                        #   in Loop: Header=BB2_18 Depth=1
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movl	-72(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movl	%eax, -72(%rbp)
	mulsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movl	-68(%rbp), %edi
	movl	-72(%rbp), %esi
	movl	-76(%rbp), %edx
	callq	tile_manager_new
	leaq	-84(%rbp), %r9
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movl	-80(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	decimate_y
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	je	.LBB2_21
# BB#20:                                # %if.then.56
                                        #   in Loop: Header=BB2_18 Depth=1
	movq	-56(%rbp), %rdi
	callq	tile_manager_unref
.LBB2_21:                               # %if.end.57
                                        #   in Loop: Header=BB2_18 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-92(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -92(%rbp)
	jmp	.LBB2_18
.LBB2_22:                               # %while.end.59
	cmpq	$0, -48(%rbp)
	je	.LBB2_24
# BB#23:                                # %if.then.62
	leaq	-84(%rbp), %r9
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movl	-80(%rbp), %eax
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	%eax, (%rsp)
	callq	scale
	movq	-48(%rbp), %rdi
	callq	tile_manager_unref
.LBB2_24:                               # %if.end.63
	cmpq	$0, -32(%rbp)
	je	.LBB2_26
# BB#25:                                # %if.then.64
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movl	-80(%rbp), %esi
	movl	-80(%rbp), %edx
	movq	-40(%rbp), %rcx
	callq	*%rax
.LBB2_26:                               # %if.end.65
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	scale_region_tile, .Lfunc_end2-scale_region_tile
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4551049985417059060     # double 1.8751171948246765E-4
.LCPI3_1:
	.quad	4613937818241073152     # double 3
	.text
	.globl	create_lanczos_lookup
	.align	16, 0x90
	.type	create_lanczos_lookup,@function
create_lanczos_lookup:                  # @create_lanczos_lookup
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
	movl	$16000, %eax            # imm = 0x3E80
	movl	%eax, %edi
	movl	$4, %eax
	movl	%eax, %esi
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	callq	g_malloc_n
	xorps	%xmm0, %xmm0
	movq	%rax, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$16000, -28(%rbp)       # imm = 0x3E80
	jge	.LBB3_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB3_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB3_5
.LBB3_4:                                # %cond.false
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB3_5:                                # %cond.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_7
# BB#6:                                 # %cond.true.3
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sinc
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	sinc
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	jmp	.LBB3_8
.LBB3_7:                                # %cond.false.6
                                        #   in Loop: Header=BB3_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB3_8
.LBB3_8:                                # %cond.end.7
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
	addsd	-24(%rbp), %xmm1
	movsd	%xmm1, -24(%rbp)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB3_1
.LBB3_10:                               # %for.end
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	create_lanczos_lookup, .Lfunc_end3-create_lanczos_lookup
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI4_1:
	.quad	4553247309662628348     # double 2.5000000000000001E-4
.LCPI4_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	sinc,@function
sinc:                                   # @sinc
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
	subq	$32, %rsp
	xorps	%xmm1, %xmm1
	movsd	.LCPI4_0, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	mulsd	-16(%rbp), %xmm2
	movsd	%xmm2, -24(%rbp)
	ucomisd	-16(%rbp), %xmm1
	jbe	.LBB4_2
# BB#1:                                 # %cond.true
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB4_3:                                # %cond.end
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_5
# BB#4:                                 # %if.then
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB4_6
.LBB4_5:                                # %if.end
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	divsd	-24(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB4_6:                                # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	sinc, .Lfunc_end4-sinc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4602678819172646912     # double 0.5
.LCPI5_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	scale_determine_levels,@function
scale_determine_levels:                 # @scale_determine_levels
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	cvtsi2sdl	44(%rcx), %xmm0
	movq	-8(%rbp), %rcx
	cvtsi2sdl	44(%rcx), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rcx
	cvtsi2sdl	48(%rcx), %xmm0
	movq	-8(%rbp), %rcx
	cvtsi2sdl	48(%rcx), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	48(%rcx), %eax
	movl	%eax, -56(%rbp)
.LBB5_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jbe	.LBB5_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$1, -52(%rbp)
	setg	%al
	movb	%al, -57(%rbp)          # 1-byte Spill
.LBB5_3:                                # %land.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_4
	jmp	.LBB5_5
.LBB5_4:                                # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$2, %eax
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-64(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rsi
	movl	(%rsi), %eax
	addl	$1, %eax
	movl	%eax, (%rsi)
	jmp	.LBB5_1
.LBB5_5:                                # %while.end
	jmp	.LBB5_6
.LBB5_6:                                # %while.cond.14
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jbe	.LBB5_8
# BB#7:                                 # %land.rhs.17
                                        #   in Loop: Header=BB5_6 Depth=1
	cmpl	$1, -56(%rbp)
	setg	%al
	movb	%al, -65(%rbp)          # 1-byte Spill
.LBB5_8:                                # %land.end.20
                                        #   in Loop: Header=BB5_6 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_9
	jmp	.LBB5_10
.LBB5_9:                                # %while.body.21
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	$2, %eax
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-72(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -56(%rbp)
	movq	-32(%rbp), %rsi
	movl	(%rsi), %eax
	addl	$1, %eax
	movl	%eax, (%rsi)
	jmp	.LBB5_6
.LBB5_10:                               # %while.end.26
	popq	%rbp
	retq
.Lfunc_end5:
	.size	scale_determine_levels, .Lfunc_end5-scale_determine_levels
	.cfi_endproc

	.align	16, 0x90
	.type	scale_determine_progress,@function
scale_determine_progress:               # @scale_determine_progress
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movl	44(%rsi), %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rsi
	movl	48(%rsi), %ecx
	movl	%ecx, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -20(%rbp)
	movb	%cl, -37(%rbp)          # 1-byte Spill
	jle	.LBB6_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$0, -24(%rbp)
	setg	%al
	movb	%al, -37(%rbp)          # 1-byte Spill
.LBB6_3:                                # %land.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	-37(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_4
	jmp	.LBB6_5
.LBB6_4:                                # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$64, %eax
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	sarl	$1, %ecx
	movl	%ecx, -28(%rbp)
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	sarl	$1, %ecx
	movl	%ecx, -32(%rbp)
	movl	-20(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	movl	-24(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -24(%rbp)
	movl	-28(%rbp), %ecx
	addl	$63, %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-44(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	-32(%rbp), %esi
	addl	$63, %esi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-48(%rbp), %esi         # 4-byte Reload
	imull	%eax, %esi
	addl	-36(%rbp), %esi
	movl	%esi, -36(%rbp)
	jmp	.LBB6_1
.LBB6_5:                                # %while.end
	jmp	.LBB6_6
.LBB6_6:                                # %while.cond.9
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	jle	.LBB6_8
# BB#7:                                 # %while.body.11
                                        #   in Loop: Header=BB6_6 Depth=1
	movl	$64, %eax
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	sarl	$1, %ecx
	movl	%ecx, -28(%rbp)
	movl	-20(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	movl	-28(%rbp), %ecx
	addl	$63, %ecx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-52(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	-32(%rbp), %esi
	addl	$63, %esi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-56(%rbp), %esi         # 4-byte Reload
	imull	%eax, %esi
	addl	-36(%rbp), %esi
	movl	%esi, -36(%rbp)
	jmp	.LBB6_6
.LBB6_8:                                # %while.end.21
	jmp	.LBB6_9
.LBB6_9:                                # %while.cond.22
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -24(%rbp)
	jle	.LBB6_11
# BB#10:                                # %while.body.24
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	$64, %eax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	sarl	$1, %ecx
	movl	%ecx, -32(%rbp)
	movl	-24(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -24(%rbp)
	movl	-28(%rbp), %ecx
	addl	$63, %ecx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-60(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	-32(%rbp), %esi
	addl	$63, %esi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-64(%rbp), %esi         # 4-byte Reload
	imull	%eax, %esi
	addl	-36(%rbp), %esi
	movl	%esi, -36(%rbp)
	jmp	.LBB6_9
.LBB6_11:                               # %while.end.34
	movl	$64, %eax
	movq	-16(%rbp), %rcx
	movl	44(%rcx), %edx
	addl	$63, %edx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-68(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movq	-16(%rbp), %rcx
	movl	48(%rcx), %edi
	addl	$63, %edi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	cltd
	idivl	%esi
	movl	-72(%rbp), %edi         # 4-byte Reload
	imull	%eax, %edi
	addl	-36(%rbp), %edi
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	scale_determine_progress, .Lfunc_end6-scale_determine_progress
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	scale,@function
scale:                                  # @scale
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
	subq	$320, %rsp              # imm = 0x140
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	%eax, -52(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm1, -72(%rbp)
	movq	$0, -144(%rbp)
	movq	-8(%rbp), %rdi
	callq	tile_manager_width
	movl	%eax, -148(%rbp)
	movq	-8(%rbp), %rdi
	callq	tile_manager_height
	movl	%eax, -152(%rbp)
	movq	-16(%rbp), %rdi
	callq	tile_manager_bpp
	movl	%eax, -156(%rbp)
	movq	-16(%rbp), %rdi
	callq	tile_manager_width
	movl	%eax, -160(%rbp)
	movq	-16(%rbp), %rdi
	callq	tile_manager_height
	movl	%eax, -164(%rbp)
	movq	$0, -184(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$512, %eax              # imm = 0x200
	cmpl	$0, %eax
	je	.LBB7_3
# BB#2:                                 # %if.then
	movl	$512, %edi              # imm = 0x200
	movabsq	$.L__func__.scale, %rsi
	movl	$398, %edx              # imm = 0x18E
	movabsq	$.L.str.4, %rcx
	movl	-148(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movl	-160(%rbp), %eax
	movl	-164(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movb	$0, %al
	callq	gimp_log
.LBB7_3:                                # %if.end
	jmp	.LBB7_4
.LBB7_4:                                # %do.end
	cmpl	$0, -20(%rbp)
	je	.LBB7_17
# BB#5:                                 # %if.then.5
	cmpl	$2, -148(%rbp)
	jb	.LBB7_9
# BB#6:                                 # %lor.lhs.false
	cmpl	$2, -152(%rbp)
	jb	.LBB7_9
# BB#7:                                 # %lor.lhs.false.8
	cmpl	$2, -160(%rbp)
	jb	.LBB7_9
# BB#8:                                 # %lor.lhs.false.10
	cmpl	$2, -164(%rbp)
	jae	.LBB7_10
.LBB7_9:                                # %if.then.12
	movl	$0, -20(%rbp)
	jmp	.LBB7_16
.LBB7_10:                               # %if.else
	cmpl	$3, -148(%rbp)
	jb	.LBB7_14
# BB#11:                                # %lor.lhs.false.14
	cmpl	$3, -152(%rbp)
	jb	.LBB7_14
# BB#12:                                # %lor.lhs.false.16
	cmpl	$3, -160(%rbp)
	jb	.LBB7_14
# BB#13:                                # %lor.lhs.false.18
	cmpl	$3, -164(%rbp)
	jae	.LBB7_15
.LBB7_14:                               # %if.then.20
	movl	$1, -20(%rbp)
.LBB7_15:                               # %if.end.21
	jmp	.LBB7_16
.LBB7_16:                               # %if.end.22
	jmp	.LBB7_17
.LBB7_17:                               # %if.end.23
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	ja	.LBB7_22
# BB#48:                                # %if.end.23
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_18:                               # %sw.bb
	jmp	.LBB7_22
.LBB7_19:                               # %sw.bb.24
	movl	$2, %eax
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	pixel_surround_new
	movq	%rax, -144(%rbp)
	jmp	.LBB7_22
.LBB7_20:                               # %sw.bb.26
	movl	$4, %eax
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	pixel_surround_new
	movq	%rax, -144(%rbp)
	jmp	.LBB7_22
.LBB7_21:                               # %sw.bb.28
	movl	$6, %eax
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	pixel_surround_new
	movq	%rax, -144(%rbp)
	callq	create_lanczos3_lookup
	movq	%rax, -184(%rbp)
.LBB7_22:                               # %sw.epilog
	leaq	-136(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-16(%rbp), %rsi
	movl	-160(%rbp), %r8d
	movl	-164(%rbp), %r9d
	movl	%eax, %edx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	$1, %edi
	leaq	-136(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -176(%rbp)
.LBB7_23:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_25 Depth 2
                                        #       Child Loop BB7_27 Depth 3
	cmpq	$0, -176(%rbp)
	je	.LBB7_43
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB7_23 Depth=1
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -188(%rbp)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	%eax, -192(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -200(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -204(%rbp)
.LBB7_25:                               # %for.cond.36
                                        #   Parent Loop BB7_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_27 Depth 3
	movl	-204(%rbp), %eax
	cmpl	-192(%rbp), %eax
	jge	.LBB7_37
# BB#26:                                # %for.body.38
                                        #   in Loop: Header=BB7_25 Depth=2
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-200(%rbp), %rax
	movq	%rax, -216(%rbp)
	cvtsi2sdl	-204(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	mulsd	-72(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -224(%rbp)
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -228(%rbp)
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-228(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -224(%rbp)
	movl	-100(%rbp), %ecx
	movl	%ecx, -232(%rbp)
.LBB7_27:                               # %for.cond.46
                                        #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-232(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jge	.LBB7_35
# BB#28:                                # %for.body.49
                                        #   in Loop: Header=BB7_27 Depth=3
	cvtsi2sdl	-232(%rbp), %xmm0
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -240(%rbp)
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -244(%rbp)
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -240(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	ja	.LBB7_33
# BB#49:                                # %for.body.49
                                        #   in Loop: Header=BB7_27 Depth=3
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	.LJTI7_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_29:                               # %sw.bb.58
                                        #   in Loop: Header=BB7_27 Depth=3
	movq	-8(%rbp), %rdi
	movl	-244(%rbp), %esi
	movl	-228(%rbp), %edx
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-224(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-216(%rbp), %rcx
	callq	interpolate_nearest
	jmp	.LBB7_33
.LBB7_30:                               # %sw.bb.59
                                        #   in Loop: Header=BB7_27 Depth=3
	movq	-144(%rbp), %rdi
	movl	-244(%rbp), %esi
	movl	-228(%rbp), %edx
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-224(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-156(%rbp), %ecx
	movq	-216(%rbp), %r8
	callq	interpolate_bilinear
	jmp	.LBB7_33
.LBB7_31:                               # %sw.bb.60
                                        #   in Loop: Header=BB7_27 Depth=3
	movq	-144(%rbp), %rdi
	movl	-244(%rbp), %esi
	movl	-228(%rbp), %edx
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-224(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-156(%rbp), %ecx
	movq	-216(%rbp), %r8
	callq	interpolate_cubic
	jmp	.LBB7_33
.LBB7_32:                               # %sw.bb.61
                                        #   in Loop: Header=BB7_27 Depth=3
	movq	-144(%rbp), %rdi
	movl	-244(%rbp), %esi
	movl	-228(%rbp), %edx
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-224(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-156(%rbp), %ecx
	movq	-216(%rbp), %r8
	movq	-184(%rbp), %r9
	callq	interpolate_lanczos3
.LBB7_33:                               # %sw.epilog.62
                                        #   in Loop: Header=BB7_27 Depth=3
	movl	-84(%rbp), %eax
	movq	-216(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -216(%rbp)
# BB#34:                                # %for.inc
                                        #   in Loop: Header=BB7_27 Depth=3
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB7_27
.LBB7_35:                               # %for.end
                                        #   in Loop: Header=BB7_25 Depth=2
	movl	-104(%rbp), %eax
	movq	-200(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -200(%rbp)
# BB#36:                                # %for.inc.66
                                        #   in Loop: Header=BB7_25 Depth=2
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB7_25
.LBB7_37:                               # %for.end.68
                                        #   in Loop: Header=BB7_23 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB7_41
# BB#38:                                # %if.then.70
                                        #   in Loop: Header=BB7_23 Depth=1
	movl	$8, %eax
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edx
	addl	$1, %edx
	movl	%edx, (%rcx)
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-292(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB7_40
# BB#39:                                # %if.then.74
                                        #   in Loop: Header=BB7_23 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-40(%rbp), %rcx
	callq	*%rax
.LBB7_40:                               # %if.end.75
                                        #   in Loop: Header=BB7_23 Depth=1
	jmp	.LBB7_41
.LBB7_41:                               # %if.end.76
                                        #   in Loop: Header=BB7_23 Depth=1
	jmp	.LBB7_42
.LBB7_42:                               # %for.inc.77
                                        #   in Loop: Header=BB7_23 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -176(%rbp)
	jmp	.LBB7_23
.LBB7_43:                               # %for.end.79
	cmpq	$0, -184(%rbp)
	je	.LBB7_45
# BB#44:                                # %if.then.81
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB7_45:                               # %if.end.82
	cmpq	$0, -144(%rbp)
	je	.LBB7_47
# BB#46:                                # %if.then.84
	movq	-144(%rbp), %rdi
	callq	pixel_surround_destroy
.LBB7_47:                               # %if.end.85
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end7:
	.size	scale, .Lfunc_end7-scale
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_18
	.quad	.LBB7_19
	.quad	.LBB7_20
	.quad	.LBB7_21
.LJTI7_1:
	.quad	.LBB7_29
	.quad	.LBB7_30
	.quad	.LBB7_31
	.quad	.LBB7_32

	.text
	.align	16, 0x90
	.type	decimate_xy,@function
decimate_xy:                            # @decimate_xy
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
	subq	$224, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	%eax, -52(%rbp)
	movq	$0, -128(%rbp)
	movq	-16(%rbp), %rdi
	callq	tile_manager_bpp
	movl	%eax, -132(%rbp)
	movq	-16(%rbp), %rdi
	callq	tile_manager_width
	movl	%eax, -136(%rbp)
	movq	-16(%rbp), %rdi
	callq	tile_manager_height
	movl	%eax, -140(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$512, %eax              # imm = 0x200
	cmpl	$0, %eax
	je	.LBB8_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	tile_manager_width
	movq	-8(%rbp), %rdi
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	tile_manager_height
	movl	$512, %edi              # imm = 0x200
	movabsq	$.L__func__.decimate_xy, %rsi
	movl	$524, %edx              # imm = 0x20C
	movabsq	$.L.str.5, %rcx
	movl	-136(%rbp), %r8d
	movl	-140(%rbp), %r9d
	movl	-192(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -196(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r9d, -200(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	movb	$0, %al
	callq	gimp_log
.LBB8_3:                                # %if.end
	jmp	.LBB8_4
.LBB8_4:                                # %do.end
	movl	$2, %eax
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	pixel_surround_new
	leaq	-120(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rsi
	movl	-136(%rbp), %r8d
	movl	-140(%rbp), %r9d
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	$1, %edi
	leaq	-120(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -152(%rbp)
.LBB8_5:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_7 Depth 2
                                        #       Child Loop BB8_9 Depth 3
	cmpq	$0, -152(%rbp)
	je	.LBB8_20
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	-84(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, -156(%rbp)
	movl	-80(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -160(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -172(%rbp)
.LBB8_7:                                # %for.cond.10
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_9 Depth 3
	movl	-172(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jge	.LBB8_14
# BB#8:                                 # %for.body.12
                                        #   in Loop: Header=BB8_7 Depth=2
	movl	-172(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -176(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -184(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -188(%rbp)
.LBB8_9:                                # %for.cond.15
                                        #   Parent Loop BB8_5 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-188(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jge	.LBB8_12
# BB#10:                                # %for.body.17
                                        #   in Loop: Header=BB8_9 Depth=3
	movq	-128(%rbp), %rdi
	movl	-188(%rbp), %eax
	shll	$1, %eax
	movl	-176(%rbp), %edx
	movl	-132(%rbp), %ecx
	movq	-184(%rbp), %r8
	movl	%eax, %esi
	callq	decimate_average_xy
	movl	-68(%rbp), %eax
	movq	-184(%rbp), %rdi
	movslq	%eax, %r8
	addq	%r8, %rdi
	movq	%rdi, -184(%rbp)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB8_9 Depth=3
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB8_9
.LBB8_12:                               # %for.end
                                        #   in Loop: Header=BB8_7 Depth=2
	movl	-88(%rbp), %eax
	movq	-168(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -168(%rbp)
# BB#13:                                # %for.inc.22
                                        #   in Loop: Header=BB8_7 Depth=2
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB8_7
.LBB8_14:                               # %for.end.24
                                        #   in Loop: Header=BB8_5 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB8_18
# BB#15:                                # %if.then.26
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	$16, %eax
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edx
	addl	$1, %edx
	movl	%edx, (%rcx)
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%eax, -208(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-208(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB8_17
# BB#16:                                # %if.then.29
                                        #   in Loop: Header=BB8_5 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-40(%rbp), %rcx
	callq	*%rax
.LBB8_17:                               # %if.end.30
                                        #   in Loop: Header=BB8_5 Depth=1
	jmp	.LBB8_18
.LBB8_18:                               # %if.end.31
                                        #   in Loop: Header=BB8_5 Depth=1
	jmp	.LBB8_19
.LBB8_19:                               # %for.inc.32
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -152(%rbp)
	jmp	.LBB8_5
.LBB8_20:                               # %for.end.34
	movq	-128(%rbp), %rdi
	callq	pixel_surround_destroy
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	decimate_xy, .Lfunc_end8-decimate_xy
	.cfi_endproc

	.align	16, 0x90
	.type	decimate_x,@function
decimate_x:                             # @decimate_x
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
	subq	$224, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	%eax, -52(%rbp)
	movq	$0, -128(%rbp)
	movq	-16(%rbp), %rdi
	callq	tile_manager_bpp
	movl	%eax, -132(%rbp)
	movq	-16(%rbp), %rdi
	callq	tile_manager_width
	movl	%eax, -136(%rbp)
	movq	-16(%rbp), %rdi
	callq	tile_manager_height
	movl	%eax, -140(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$512, %eax              # imm = 0x200
	cmpl	$0, %eax
	je	.LBB9_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	tile_manager_width
	movq	-8(%rbp), %rdi
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	tile_manager_height
	movl	$512, %edi              # imm = 0x200
	movabsq	$.L__func__.decimate_x, %rsi
	movl	$585, %edx              # imm = 0x249
	movabsq	$.L.str.6, %rcx
	movl	-136(%rbp), %r8d
	movl	-140(%rbp), %r9d
	movl	-192(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -196(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r9d, -200(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	movb	$0, %al
	callq	gimp_log
.LBB9_3:                                # %if.end
	jmp	.LBB9_4
.LBB9_4:                                # %do.end
	movl	$2, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	callq	pixel_surround_new
	leaq	-120(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rsi
	movl	-136(%rbp), %r8d
	movl	-140(%rbp), %r9d
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	$1, %edi
	leaq	-120(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -152(%rbp)
.LBB9_5:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
                                        #       Child Loop BB9_9 Depth 3
	cmpq	$0, -152(%rbp)
	je	.LBB9_20
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB9_5 Depth=1
	movl	-84(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, -156(%rbp)
	movl	-80(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -160(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -172(%rbp)
.LBB9_7:                                # %for.cond.10
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_9 Depth 3
	movl	-172(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jge	.LBB9_14
# BB#8:                                 # %for.body.12
                                        #   in Loop: Header=BB9_7 Depth=2
	movq	-168(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-84(%rbp), %ecx
	movl	%ecx, -188(%rbp)
.LBB9_9:                                # %for.cond.15
                                        #   Parent Loop BB9_5 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-188(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jge	.LBB9_12
# BB#10:                                # %for.body.17
                                        #   in Loop: Header=BB9_9 Depth=3
	movq	-128(%rbp), %rdi
	movl	-188(%rbp), %eax
	shll	$1, %eax
	movl	-172(%rbp), %edx
	movl	-132(%rbp), %ecx
	movq	-184(%rbp), %r8
	movl	%eax, %esi
	callq	decimate_average_x
	movl	-68(%rbp), %eax
	movq	-184(%rbp), %rdi
	movslq	%eax, %r8
	addq	%r8, %rdi
	movq	%rdi, -184(%rbp)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB9_9 Depth=3
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB9_9
.LBB9_12:                               # %for.end
                                        #   in Loop: Header=BB9_7 Depth=2
	movl	-88(%rbp), %eax
	movq	-168(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -168(%rbp)
# BB#13:                                # %for.inc.21
                                        #   in Loop: Header=BB9_7 Depth=2
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB9_7
.LBB9_14:                               # %for.end.23
                                        #   in Loop: Header=BB9_5 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB9_18
# BB#15:                                # %if.then.25
                                        #   in Loop: Header=BB9_5 Depth=1
	movl	$32, %eax
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edx
	addl	$1, %edx
	movl	%edx, (%rcx)
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%eax, -208(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-208(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB9_17
# BB#16:                                # %if.then.28
                                        #   in Loop: Header=BB9_5 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-40(%rbp), %rcx
	callq	*%rax
.LBB9_17:                               # %if.end.29
                                        #   in Loop: Header=BB9_5 Depth=1
	jmp	.LBB9_18
.LBB9_18:                               # %if.end.30
                                        #   in Loop: Header=BB9_5 Depth=1
	jmp	.LBB9_19
.LBB9_19:                               # %for.inc.31
                                        #   in Loop: Header=BB9_5 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -152(%rbp)
	jmp	.LBB9_5
.LBB9_20:                               # %for.end.33
	movq	-128(%rbp), %rdi
	callq	pixel_surround_destroy
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	decimate_x, .Lfunc_end9-decimate_x
	.cfi_endproc

	.align	16, 0x90
	.type	decimate_y,@function
decimate_y:                             # @decimate_y
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
	subq	$224, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	%eax, -52(%rbp)
	movq	$0, -128(%rbp)
	movq	-16(%rbp), %rdi
	callq	tile_manager_bpp
	movl	%eax, -132(%rbp)
	movq	-16(%rbp), %rdi
	callq	tile_manager_width
	movl	%eax, -136(%rbp)
	movq	-16(%rbp), %rdi
	callq	tile_manager_height
	movl	%eax, -140(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$512, %eax              # imm = 0x200
	cmpl	$0, %eax
	je	.LBB10_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	tile_manager_width
	movq	-8(%rbp), %rdi
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	tile_manager_height
	movl	$512, %edi              # imm = 0x200
	movabsq	$.L__func__.decimate_y, %rsi
	movl	$645, %edx              # imm = 0x285
	movabsq	$.L.str.7, %rcx
	movl	-136(%rbp), %r8d
	movl	-140(%rbp), %r9d
	movl	-192(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -196(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r9d, -200(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	movb	$0, %al
	callq	gimp_log
.LBB10_3:                               # %if.end
	jmp	.LBB10_4
.LBB10_4:                               # %do.end
	movl	$1, %esi
	movl	$2, %edx
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	callq	pixel_surround_new
	leaq	-120(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rsi
	movl	-136(%rbp), %r8d
	movl	-140(%rbp), %r9d
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	$1, %edi
	leaq	-120(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -152(%rbp)
.LBB10_5:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_7 Depth 2
                                        #       Child Loop BB10_9 Depth 3
	cmpq	$0, -152(%rbp)
	je	.LBB10_20
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	-84(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, -156(%rbp)
	movl	-80(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -160(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -172(%rbp)
.LBB10_7:                               # %for.cond.10
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_9 Depth 3
	movl	-172(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jge	.LBB10_14
# BB#8:                                 # %for.body.12
                                        #   in Loop: Header=BB10_7 Depth=2
	movl	-172(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -176(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -184(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -188(%rbp)
.LBB10_9:                               # %for.cond.15
                                        #   Parent Loop BB10_5 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-188(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jge	.LBB10_12
# BB#10:                                # %for.body.17
                                        #   in Loop: Header=BB10_9 Depth=3
	movq	-128(%rbp), %rdi
	movl	-188(%rbp), %esi
	movl	-176(%rbp), %edx
	movl	-132(%rbp), %ecx
	movq	-184(%rbp), %r8
	callq	decimate_average_y
	movl	-68(%rbp), %ecx
	movq	-184(%rbp), %rdi
	movslq	%ecx, %r8
	addq	%r8, %rdi
	movq	%rdi, -184(%rbp)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB10_9 Depth=3
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB10_9
.LBB10_12:                              # %for.end
                                        #   in Loop: Header=BB10_7 Depth=2
	movl	-88(%rbp), %eax
	movq	-168(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -168(%rbp)
# BB#13:                                # %for.inc.21
                                        #   in Loop: Header=BB10_7 Depth=2
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB10_7
.LBB10_14:                              # %for.end.23
                                        #   in Loop: Header=BB10_5 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB10_18
# BB#15:                                # %if.then.25
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	$32, %eax
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edx
	addl	$1, %edx
	movl	%edx, (%rcx)
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%eax, -208(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-208(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB10_17
# BB#16:                                # %if.then.28
                                        #   in Loop: Header=BB10_5 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-40(%rbp), %rcx
	callq	*%rax
.LBB10_17:                              # %if.end.29
                                        #   in Loop: Header=BB10_5 Depth=1
	jmp	.LBB10_18
.LBB10_18:                              # %if.end.30
                                        #   in Loop: Header=BB10_5 Depth=1
	jmp	.LBB10_19
.LBB10_19:                              # %for.inc.31
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -152(%rbp)
	jmp	.LBB10_5
.LBB10_20:                              # %for.end.33
	movq	-128(%rbp), %rdi
	callq	pixel_surround_destroy
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	decimate_y, .Lfunc_end10-decimate_y
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4551049985417059060     # double 1.8751171948246765E-4
.LCPI11_1:
	.quad	4613937818241073152     # double 3
	.text
	.align	16, 0x90
	.type	create_lanczos3_lookup,@function
create_lanczos3_lookup:                 # @create_lanczos3_lookup
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
	subq	$64, %rsp
	movl	$16000, %eax            # imm = 0x3E80
	movl	%eax, %edi
	movl	$4, %eax
	movl	%eax, %esi
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	callq	g_malloc_n
	xorps	%xmm0, %xmm0
	movq	%rax, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$16000, -28(%rbp)       # imm = 0x3E80
	jge	.LBB11_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB11_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB11_1 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB11_5
.LBB11_4:                               # %cond.false
                                        #   in Loop: Header=BB11_1 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB11_5:                               # %cond.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI11_1, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_7
# BB#6:                                 # %cond.true.3
                                        #   in Loop: Header=BB11_1 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sinc
	movsd	.LCPI11_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	sinc
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	jmp	.LBB11_8
.LBB11_7:                               # %cond.false.6
                                        #   in Loop: Header=BB11_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB11_8
.LBB11_8:                               # %cond.end.7
                                        #   in Loop: Header=BB11_1 Depth=1
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
	addsd	-24(%rbp), %xmm1
	movsd	%xmm1, -24(%rbp)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB11_1
.LBB11_10:                              # %for.end
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	create_lanczos3_lookup, .Lfunc_end11-create_lanczos3_lookup
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	interpolate_nearest,@function
interpolate_nearest:                    # @interpolate_nearest
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	tile_manager_width
	subl	$1, %eax
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	callq	tile_manager_height
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	subl	$1, %eax
	movl	%eax, -48(%rbp)
	ucomisd	-24(%rbp), %xmm0
	jb	.LBB12_2
# BB#1:                                 # %cond.true
	movl	-12(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB12_3
.LBB12_2:                               # %cond.false
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB12_3:                               # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -52(%rbp)
	ucomisd	-32(%rbp), %xmm0
	jb	.LBB12_5
# BB#4:                                 # %cond.true.4
	movl	-16(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB12_6
.LBB12_5:                               # %cond.false.5
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB12_6:                               # %cond.end.7
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	jle	.LBB12_8
# BB#7:                                 # %cond.true.10
	movl	-44(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB12_12
.LBB12_8:                               # %cond.false.11
	cmpl	$0, -52(%rbp)
	jge	.LBB12_10
# BB#9:                                 # %cond.true.13
	xorl	%eax, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB12_11
.LBB12_10:                              # %cond.false.14
	movl	-52(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB12_11:                              # %cond.end.15
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB12_12:                              # %cond.end.17
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	-56(%rbp), %ecx
	cmpl	-48(%rbp), %ecx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jle	.LBB12_14
# BB#13:                                # %cond.true.20
	movl	-48(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB12_18
.LBB12_14:                              # %cond.false.21
	cmpl	$0, -56(%rbp)
	jge	.LBB12_16
# BB#15:                                # %cond.true.23
	xorl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB12_17
.LBB12_16:                              # %cond.false.24
	movl	-56(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB12_17:                              # %cond.end.25
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB12_18:                              # %cond.end.27
	movl	-88(%rbp), %eax         # 4-byte Reload
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_read_pixel_data_1
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	interpolate_nearest, .Lfunc_end12-interpolate_nearest
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	interpolate_bilinear,@function
interpolate_bilinear:                   # @interpolate_bilinear
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	leaq	-52(%rbp), %rcx
	callq	pixel_surround_lock
	movq	%rax, -64(%rbp)
	movq	%rax, -72(%rbp)
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movslq	-52(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movl	-36(%rbp), %edx
	decl	%edx
	movl	%edx, %eax
	subl	$3, %edx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	%edx, -132(%rbp)        # 4-byte Spill
	ja	.LBB13_55
# BB#56:                                # %entry
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	.LJTI13_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB13_1:                               # %sw.bb
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-72(%rbp), %rax
	movzbl	(%rax), %edi
	movq	-80(%rbp), %rax
	movzbl	(%rax), %esi
	movq	-88(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	callq	weighted_sum
	movsd	.LCPI13_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	callq	rint
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_3
# BB#2:                                 # %cond.true
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB13_7
.LBB13_3:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-104(%rbp), %xmm0
	jbe	.LBB13_5
# BB#4:                                 # %cond.true.16
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB13_6
.LBB13_5:                               # %cond.false.17
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
.LBB13_6:                               # %cond.end
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
.LBB13_7:                               # %cond.end.18
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB13_55
.LBB13_8:                               # %sw.bb.22
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %edi
	movq	-80(%rbp), %rax
	movzbl	1(%rax), %esi
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %ecx
	callq	weighted_sum
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -112(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_22
# BB#9:                                 # %if.then
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	%edx, %ecx
	movq	-80(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-80(%rbp), %rax
	movzbl	1(%rax), %esi
	imull	%esi, %edx
	movq	-88(%rbp), %rax
	movzbl	(%rax), %esi
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edi
	imull	%edi, %esi
	movq	-96(%rbp), %rax
	movzbl	(%rax), %edi
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %r8d
	imull	%r8d, %edi
	movl	%edi, -164(%rbp)        # 4-byte Spill
	movl	%ecx, %edi
	movl	%esi, -168(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-168(%rbp), %edx        # 4-byte Reload
	movl	-164(%rbp), %ecx        # 4-byte Reload
	callq	weighted_sum
	movsd	.LCPI13_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-112(%rbp), %xmm0
	movsd	%xmm1, -176(%rbp)       # 8-byte Spill
	callq	rint
	movsd	%xmm0, -104(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	rint
	movsd	%xmm0, -112(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_11
# BB#10:                                # %cond.true.58
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB13_15
.LBB13_11:                              # %cond.false.59
	xorps	%xmm0, %xmm0
	ucomisd	-104(%rbp), %xmm0
	jbe	.LBB13_13
# BB#12:                                # %cond.true.62
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jmp	.LBB13_14
.LBB13_13:                              # %cond.false.63
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
.LBB13_14:                              # %cond.end.64
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
.LBB13_15:                              # %cond.end.66
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI13_0, %xmm1        # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, (%rdx)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_17
# BB#16:                                # %cond.true.72
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jmp	.LBB13_21
.LBB13_17:                              # %cond.false.73
	xorps	%xmm0, %xmm0
	ucomisd	-112(%rbp), %xmm0
	jbe	.LBB13_19
# BB#18:                                # %cond.true.76
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB13_20
.LBB13_19:                              # %cond.false.77
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
.LBB13_20:                              # %cond.end.78
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
.LBB13_21:                              # %cond.end.80
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, 1(%rdx)
	jmp	.LBB13_23
.LBB13_22:                              # %if.else
	movq	-48(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
.LBB13_23:                              # %if.end
	jmp	.LBB13_55
.LBB13_24:                              # %sw.bb.86
	movl	$0, -116(%rbp)
.LBB13_25:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -116(%rbp)
	jge	.LBB13_34
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB13_25 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-116(%rbp), %rax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx,%rax), %edi
	movslq	-116(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	movslq	-116(%rbp), %rax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-116(%rbp), %rax
	movq	-96(%rbp), %rcx
	movzbl	(%rcx,%rax), %ecx
	callq	weighted_sum
	movsd	.LCPI13_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -216(%rbp)       # 8-byte Spill
	callq	rint
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_28
# BB#27:                                # %cond.true.104
                                        #   in Loop: Header=BB13_25 Depth=1
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB13_32
.LBB13_28:                              # %cond.false.105
                                        #   in Loop: Header=BB13_25 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-104(%rbp), %xmm0
	jbe	.LBB13_30
# BB#29:                                # %cond.true.108
                                        #   in Loop: Header=BB13_25 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB13_31
.LBB13_30:                              # %cond.false.109
                                        #   in Loop: Header=BB13_25 Depth=1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB13_31:                              # %cond.end.110
                                        #   in Loop: Header=BB13_25 Depth=1
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
.LBB13_32:                              # %cond.end.112
                                        #   in Loop: Header=BB13_25 Depth=1
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-116(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#33:                                # %for.inc
                                        #   in Loop: Header=BB13_25 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB13_25
.LBB13_34:                              # %for.end
	jmp	.LBB13_55
.LBB13_35:                              # %sw.bb.117
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-72(%rbp), %rax
	movzbl	3(%rax), %edi
	movq	-80(%rbp), %rax
	movzbl	3(%rax), %esi
	movq	-88(%rbp), %rax
	movzbl	3(%rax), %edx
	movq	-96(%rbp), %rax
	movzbl	3(%rax), %ecx
	callq	weighted_sum
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -112(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_53
# BB#36:                                # %if.then.129
	movl	$0, -116(%rbp)
.LBB13_37:                              # %for.cond.130
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -116(%rbp)
	jge	.LBB13_46
# BB#38:                                # %for.body.133
                                        #   in Loop: Header=BB13_37 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-116(%rbp), %rax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-72(%rbp), %rax
	movzbl	3(%rax), %esi
	imull	%esi, %edx
	movslq	-116(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	movq	-80(%rbp), %rax
	movzbl	3(%rax), %edi
	imull	%edi, %esi
	movslq	-116(%rbp), %rax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %edi
	movq	-88(%rbp), %rax
	movzbl	3(%rax), %r8d
	imull	%r8d, %edi
	movslq	-116(%rbp), %rax
	movq	-96(%rbp), %rcx
	movzbl	(%rcx,%rax), %r8d
	movq	-96(%rbp), %rax
	movzbl	3(%rax), %r9d
	imull	%r9d, %r8d
	movl	%edi, -236(%rbp)        # 4-byte Spill
	movl	%edx, %edi
	movl	-236(%rbp), %edx        # 4-byte Reload
	movl	%r8d, %ecx
	callq	weighted_sum
	movsd	.LCPI13_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-112(%rbp), %xmm0
	movsd	%xmm1, -248(%rbp)       # 8-byte Spill
	callq	rint
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_40
# BB#39:                                # %cond.true.163
                                        #   in Loop: Header=BB13_37 Depth=1
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	jmp	.LBB13_44
.LBB13_40:                              # %cond.false.164
                                        #   in Loop: Header=BB13_37 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-104(%rbp), %xmm0
	jbe	.LBB13_42
# BB#41:                                # %cond.true.167
                                        #   in Loop: Header=BB13_37 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	jmp	.LBB13_43
.LBB13_42:                              # %cond.false.168
                                        #   in Loop: Header=BB13_37 Depth=1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
.LBB13_43:                              # %cond.end.169
                                        #   in Loop: Header=BB13_37 Depth=1
	movsd	-264(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
.LBB13_44:                              # %cond.end.171
                                        #   in Loop: Header=BB13_37 Depth=1
	movsd	-256(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-116(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#45:                                # %for.inc.176
                                        #   in Loop: Header=BB13_37 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB13_37
.LBB13_46:                              # %for.end.178
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	rint
	movsd	%xmm0, -112(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_48
# BB#47:                                # %cond.true.182
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	jmp	.LBB13_52
.LBB13_48:                              # %cond.false.183
	xorps	%xmm0, %xmm0
	ucomisd	-112(%rbp), %xmm0
	jbe	.LBB13_50
# BB#49:                                # %cond.true.186
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	jmp	.LBB13_51
.LBB13_50:                              # %cond.false.187
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
.LBB13_51:                              # %cond.end.188
	movsd	-288(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
.LBB13_52:                              # %cond.end.190
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, 3(%rdx)
	jmp	.LBB13_54
.LBB13_53:                              # %if.else.194
	movq	-48(%rbp), %rax
	movb	$0, 3(%rax)
	movq	-48(%rbp), %rax
	movb	$0, 2(%rax)
	movq	-48(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
.LBB13_54:                              # %if.end.199
	jmp	.LBB13_55
.LBB13_55:                              # %sw.epilog
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end13:
	.size	interpolate_bilinear, .Lfunc_end13-interpolate_bilinear
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI13_0:
	.quad	.LBB13_1
	.quad	.LBB13_8
	.quad	.LBB13_24
	.quad	.LBB13_35

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	interpolate_cubic,@function
interpolate_cubic:                      # @interpolate_cubic
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %ecx
	decl	%ecx
	movl	-16(%rbp), %edx
	decl	%edx
	leaq	-52(%rbp), %r8
	movl	%ecx, %esi
	movq	%r8, %rcx
	callq	pixel_surround_lock
	movq	%rax, -64(%rbp)
	movq	%rax, -72(%rbp)
	movslq	-52(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movslq	-52(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movslq	-52(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movl	-36(%rbp), %edx
	decl	%edx
	movl	%edx, %eax
	subl	$3, %edx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	%edx, -164(%rbp)        # 4-byte Spill
	ja	.LBB14_55
# BB#56:                                # %entry
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	.LJTI14_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB14_1:                               # %sw.bb
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	movzbl	3(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -112(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	movzbl	3(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -120(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	movzbl	3(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -128(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	movzbl	3(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -136(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-136(%rbp), %xmm4       # xmm4 = mem[0],zero
	callq	cubic_spline_fit
	movsd	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -176(%rbp)       # 8-byte Spill
	callq	rint
	movsd	%xmm0, -144(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_3
# BB#2:                                 # %cond.true
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB14_7
.LBB14_3:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-144(%rbp), %xmm0
	jbe	.LBB14_5
# BB#4:                                 # %cond.true.45
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jmp	.LBB14_6
.LBB14_5:                               # %cond.false.46
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
.LBB14_6:                               # %cond.end
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
.LBB14_7:                               # %cond.end.47
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB14_55
.LBB14_8:                               # %sw.bb.51
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movzbl	3(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movzbl	5(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	movzbl	7(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -112(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movzbl	3(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movzbl	5(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	movzbl	7(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -120(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movzbl	3(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movzbl	5(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	movzbl	7(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -128(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movzbl	3(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movzbl	5(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	movzbl	7(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -136(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-136(%rbp), %xmm4       # xmm4 = mem[0],zero
	callq	cubic_spline_fit
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -152(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_22
# BB#9:                                 # %if.then
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-72(%rbp), %rax
	movzbl	3(%rax), %edx
	imull	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm2
	movq	-72(%rbp), %rax
	movzbl	4(%rax), %ecx
	movq	-72(%rbp), %rax
	movzbl	5(%rax), %edx
	imull	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm3
	movq	-72(%rbp), %rax
	movzbl	6(%rax), %ecx
	movq	-72(%rbp), %rax
	movzbl	7(%rax), %edx
	imull	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -112(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movq	-80(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	3(%rax), %edx
	imull	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm2
	movq	-80(%rbp), %rax
	movzbl	4(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	5(%rax), %edx
	imull	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm3
	movq	-80(%rbp), %rax
	movzbl	6(%rax), %ecx
	movq	-80(%rbp), %rax
	movzbl	7(%rax), %edx
	imull	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -120(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-88(%rbp), %rax
	movzbl	3(%rax), %edx
	imull	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm2
	movq	-88(%rbp), %rax
	movzbl	4(%rax), %ecx
	movq	-88(%rbp), %rax
	movzbl	5(%rax), %edx
	imull	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm3
	movq	-88(%rbp), %rax
	movzbl	6(%rax), %ecx
	movq	-88(%rbp), %rax
	movzbl	7(%rax), %edx
	imull	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -128(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movq	-96(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-96(%rbp), %rax
	movzbl	3(%rax), %edx
	imull	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm2
	movq	-96(%rbp), %rax
	movzbl	4(%rax), %ecx
	movq	-96(%rbp), %rax
	movzbl	5(%rax), %edx
	imull	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm3
	movq	-96(%rbp), %rax
	movzbl	6(%rax), %ecx
	movq	-96(%rbp), %rax
	movzbl	7(%rax), %edx
	imull	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -136(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-136(%rbp), %xmm4       # xmm4 = mem[0],zero
	callq	cubic_spline_fit
	movsd	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-152(%rbp), %xmm0
	movsd	%xmm1, -200(%rbp)       # 8-byte Spill
	callq	rint
	movsd	%xmm0, -144(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_11
# BB#10:                                # %cond.true.194
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB14_15
.LBB14_11:                              # %cond.false.195
	xorps	%xmm0, %xmm0
	ucomisd	-144(%rbp), %xmm0
	jbe	.LBB14_13
# BB#12:                                # %cond.true.198
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jmp	.LBB14_14
.LBB14_13:                              # %cond.false.199
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
.LBB14_14:                              # %cond.end.200
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
.LBB14_15:                              # %cond.end.202
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, (%rdx)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm1, -224(%rbp)       # 8-byte Spill
	callq	rint
	movsd	%xmm0, -152(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_17
# BB#16:                                # %cond.true.209
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB14_21
.LBB14_17:                              # %cond.false.210
	xorps	%xmm0, %xmm0
	ucomisd	-152(%rbp), %xmm0
	jbe	.LBB14_19
# BB#18:                                # %cond.true.213
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jmp	.LBB14_20
.LBB14_19:                              # %cond.false.214
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
.LBB14_20:                              # %cond.end.215
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB14_21:                              # %cond.end.217
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, 1(%rdx)
	jmp	.LBB14_23
.LBB14_22:                              # %if.else
	movq	-48(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
.LBB14_23:                              # %if.end
	jmp	.LBB14_55
.LBB14_24:                              # %sw.bb.223
	movl	$0, -100(%rbp)
.LBB14_25:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -100(%rbp)
	jge	.LBB14_34
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB14_25 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-100(%rbp), %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	cvtsi2sdl	%esi, %xmm1
	movl	%ecx, %esi
	addl	$3, %esi
	movslq	%esi, %rax
	movzbl	(%rdx,%rax), %esi
	cvtsi2sdl	%esi, %xmm2
	movl	%ecx, %esi
	addl	$6, %esi
	movslq	%esi, %rax
	movzbl	(%rdx,%rax), %esi
	cvtsi2sdl	%esi, %xmm3
	addl	$9, %ecx
	movslq	%ecx, %rax
	movzbl	(%rdx,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -112(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-100(%rbp), %rax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	cvtsi2sdl	%esi, %xmm1
	movl	%ecx, %esi
	addl	$3, %esi
	movslq	%esi, %rax
	movzbl	(%rdx,%rax), %esi
	cvtsi2sdl	%esi, %xmm2
	movl	%ecx, %esi
	addl	$6, %esi
	movslq	%esi, %rax
	movzbl	(%rdx,%rax), %esi
	cvtsi2sdl	%esi, %xmm3
	addl	$9, %ecx
	movslq	%ecx, %rax
	movzbl	(%rdx,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -120(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-100(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	cvtsi2sdl	%esi, %xmm1
	movl	%ecx, %esi
	addl	$3, %esi
	movslq	%esi, %rax
	movzbl	(%rdx,%rax), %esi
	cvtsi2sdl	%esi, %xmm2
	movl	%ecx, %esi
	addl	$6, %esi
	movslq	%esi, %rax
	movzbl	(%rdx,%rax), %esi
	cvtsi2sdl	%esi, %xmm3
	addl	$9, %ecx
	movslq	%ecx, %rax
	movzbl	(%rdx,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -128(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-100(%rbp), %rax
	movl	%eax, %ecx
	movq	-96(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	cvtsi2sdl	%esi, %xmm1
	movl	%ecx, %esi
	addl	$3, %esi
	movslq	%esi, %rax
	movzbl	(%rdx,%rax), %esi
	cvtsi2sdl	%esi, %xmm2
	movl	%ecx, %esi
	addl	$6, %esi
	movslq	%esi, %rax
	movzbl	(%rdx,%rax), %esi
	cvtsi2sdl	%esi, %xmm3
	addl	$9, %ecx
	movslq	%ecx, %rax
	movzbl	(%rdx,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -136(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-136(%rbp), %xmm4       # xmm4 = mem[0],zero
	callq	cubic_spline_fit
	movsd	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -248(%rbp)       # 8-byte Spill
	callq	rint
	movsd	%xmm0, -144(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_28
# BB#27:                                # %cond.true.292
                                        #   in Loop: Header=BB14_25 Depth=1
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	jmp	.LBB14_32
.LBB14_28:                              # %cond.false.293
                                        #   in Loop: Header=BB14_25 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-144(%rbp), %xmm0
	jbe	.LBB14_30
# BB#29:                                # %cond.true.296
                                        #   in Loop: Header=BB14_25 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	jmp	.LBB14_31
.LBB14_30:                              # %cond.false.297
                                        #   in Loop: Header=BB14_25 Depth=1
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
.LBB14_31:                              # %cond.end.298
                                        #   in Loop: Header=BB14_25 Depth=1
	movsd	-264(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
.LBB14_32:                              # %cond.end.300
                                        #   in Loop: Header=BB14_25 Depth=1
	movsd	-256(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-100(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#33:                                # %for.inc
                                        #   in Loop: Header=BB14_25 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB14_25
.LBB14_34:                              # %for.end
	jmp	.LBB14_55
.LBB14_35:                              # %sw.bb.305
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movzbl	3(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movzbl	7(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movzbl	11(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	movzbl	15(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -112(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movzbl	3(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movzbl	7(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movzbl	11(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	movzbl	15(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -120(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movzbl	3(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movzbl	7(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movzbl	11(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	movzbl	15(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -128(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-96(%rbp), %rax
	movzbl	3(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movzbl	7(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movzbl	11(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	movzbl	15(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -136(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-136(%rbp), %xmm4       # xmm4 = mem[0],zero
	callq	cubic_spline_fit
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -152(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_53
# BB#36:                                # %if.then.345
	movl	$0, -100(%rbp)
.LBB14_37:                              # %for.cond.346
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -100(%rbp)
	jge	.LBB14_46
# BB#38:                                # %for.body.349
                                        #   in Loop: Header=BB14_37 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-100(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-72(%rbp), %rcx
	movzbl	3(%rcx), %esi
	imull	%esi, %eax
	cvtsi2sdl	%eax, %xmm1
	movl	-100(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-72(%rbp), %rcx
	movzbl	7(%rcx), %esi
	imull	%esi, %eax
	cvtsi2sdl	%eax, %xmm2
	movl	-100(%rbp), %eax
	addl	$8, %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-72(%rbp), %rcx
	movzbl	11(%rcx), %esi
	imull	%esi, %eax
	cvtsi2sdl	%eax, %xmm3
	movl	-100(%rbp), %eax
	addl	$12, %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-72(%rbp), %rcx
	movzbl	15(%rcx), %esi
	imull	%esi, %eax
	cvtsi2sdl	%eax, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -112(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-100(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-80(%rbp), %rcx
	movzbl	3(%rcx), %esi
	imull	%esi, %eax
	cvtsi2sdl	%eax, %xmm1
	movl	-100(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-80(%rbp), %rcx
	movzbl	7(%rcx), %esi
	imull	%esi, %eax
	cvtsi2sdl	%eax, %xmm2
	movl	-100(%rbp), %eax
	addl	$8, %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-80(%rbp), %rcx
	movzbl	11(%rcx), %esi
	imull	%esi, %eax
	cvtsi2sdl	%eax, %xmm3
	movl	-100(%rbp), %eax
	addl	$12, %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-80(%rbp), %rcx
	movzbl	15(%rcx), %esi
	imull	%esi, %eax
	cvtsi2sdl	%eax, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -120(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-100(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-88(%rbp), %rcx
	movzbl	3(%rcx), %esi
	imull	%esi, %eax
	cvtsi2sdl	%eax, %xmm1
	movl	-100(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-88(%rbp), %rcx
	movzbl	7(%rcx), %esi
	imull	%esi, %eax
	cvtsi2sdl	%eax, %xmm2
	movl	-100(%rbp), %eax
	addl	$8, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-88(%rbp), %rcx
	movzbl	11(%rcx), %esi
	imull	%esi, %eax
	cvtsi2sdl	%eax, %xmm3
	movl	-100(%rbp), %eax
	addl	$12, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-88(%rbp), %rcx
	movzbl	15(%rcx), %esi
	imull	%esi, %eax
	cvtsi2sdl	%eax, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -128(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-100(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-96(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-96(%rbp), %rcx
	movzbl	3(%rcx), %esi
	imull	%esi, %eax
	cvtsi2sdl	%eax, %xmm1
	movl	-100(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	movq	-96(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-96(%rbp), %rcx
	movzbl	7(%rcx), %esi
	imull	%esi, %eax
	cvtsi2sdl	%eax, %xmm2
	movl	-100(%rbp), %eax
	addl	$8, %eax
	movslq	%eax, %rcx
	movq	-96(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-96(%rbp), %rcx
	movzbl	11(%rcx), %esi
	imull	%esi, %eax
	cvtsi2sdl	%eax, %xmm3
	movl	-100(%rbp), %eax
	addl	$12, %eax
	movslq	%eax, %rcx
	movq	-96(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movq	-96(%rbp), %rcx
	movzbl	15(%rcx), %esi
	imull	%esi, %eax
	cvtsi2sdl	%eax, %xmm4
	callq	cubic_spline_fit
	movsd	%xmm0, -136(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-136(%rbp), %xmm4       # xmm4 = mem[0],zero
	callq	cubic_spline_fit
	movsd	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-152(%rbp), %xmm0
	movsd	%xmm1, -272(%rbp)       # 8-byte Spill
	callq	rint
	movsd	%xmm0, -144(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_40
# BB#39:                                # %cond.true.487
                                        #   in Loop: Header=BB14_37 Depth=1
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	jmp	.LBB14_44
.LBB14_40:                              # %cond.false.488
                                        #   in Loop: Header=BB14_37 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-144(%rbp), %xmm0
	jbe	.LBB14_42
# BB#41:                                # %cond.true.491
                                        #   in Loop: Header=BB14_37 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	jmp	.LBB14_43
.LBB14_42:                              # %cond.false.492
                                        #   in Loop: Header=BB14_37 Depth=1
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
.LBB14_43:                              # %cond.end.493
                                        #   in Loop: Header=BB14_37 Depth=1
	movsd	-288(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
.LBB14_44:                              # %cond.end.495
                                        #   in Loop: Header=BB14_37 Depth=1
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-100(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#45:                                # %for.inc.500
                                        #   in Loop: Header=BB14_37 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB14_37
.LBB14_46:                              # %for.end.502
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	rint
	movsd	%xmm0, -152(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_48
# BB#47:                                # %cond.true.506
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	jmp	.LBB14_52
.LBB14_48:                              # %cond.false.507
	xorps	%xmm0, %xmm0
	ucomisd	-152(%rbp), %xmm0
	jbe	.LBB14_50
# BB#49:                                # %cond.true.510
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	jmp	.LBB14_51
.LBB14_50:                              # %cond.false.511
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
.LBB14_51:                              # %cond.end.512
	movsd	-312(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
.LBB14_52:                              # %cond.end.514
	movsd	-304(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, 3(%rdx)
	jmp	.LBB14_54
.LBB14_53:                              # %if.else.518
	movq	-48(%rbp), %rax
	movb	$0, 3(%rax)
	movq	-48(%rbp), %rax
	movb	$0, 2(%rax)
	movq	-48(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
.LBB14_54:                              # %if.end.523
	jmp	.LBB14_55
.LBB14_55:                              # %sw.epilog
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end14:
	.size	interpolate_cubic, .Lfunc_end14-interpolate_cubic
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_1
	.quad	.LBB14_8
	.quad	.LBB14_24
	.quad	.LBB14_35

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4602678819172646912     # double 0.5
.LCPI15_1:
	.quad	4661014508095930368     # double 4000
.LCPI15_2:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	interpolate_lanczos3,@function
interpolate_lanczos3:                   # @interpolate_lanczos3
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
	subq	$400, %rsp              # imm = 0x190
	leaq	-60(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %ecx
	subl	$2, %ecx
	movl	-16(%rbp), %edx
	subl	$2, %edx
	movl	%ecx, %esi
	movq	%rax, %rcx
	callq	pixel_surround_lock
	xorps	%xmm0, %xmm0
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI15_1, %xmm2        # xmm2 = mem[0],zero
	movq	%rax, -72(%rbp)
	movaps	%xmm2, %xmm3
	mulsd	-24(%rbp), %xmm3
	addsd	%xmm1, %xmm3
	cvttsd2si	%xmm3, %edx
	movl	%edx, -76(%rbp)
	mulsd	-32(%rbp), %xmm2
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %edx
	movl	%edx, -80(%rbp)
	movsd	%xmm0, -104(%rbp)
	movsd	%xmm0, -96(%rbp)
	movl	$3, -88(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$-2, -88(%rbp)
	jl	.LBB15_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	imull	$4000, -88(%rbp), %eax  # imm = 0xFA0
	movl	%eax, -228(%rbp)
	movl	-76(%rbp), %eax
	subl	-228(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB15_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	movl	-76(%rbp), %ecx
	subl	-228(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB15_5
.LBB15_4:                               # %cond.false
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-76(%rbp), %eax
	subl	-228(%rbp), %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB15_5:                               # %cond.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-232(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	cvtss2sd	(%rdx,%rcx,4), %xmm0
	movl	-88(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movsd	%xmm0, -160(%rbp,%rcx,8)
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	-80(%rbp), %eax
	subl	-228(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB15_7
# BB#6:                                 # %cond.true.21
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	movl	-80(%rbp), %ecx
	subl	-228(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB15_8
.LBB15_7:                               # %cond.false.24
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-80(%rbp), %eax
	subl	-228(%rbp), %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB15_8:                               # %cond.end.26
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-236(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	cvtss2sd	(%rdx,%rcx,4), %xmm0
	movl	-88(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movsd	%xmm0, -208(%rbp,%rcx,8)
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-88(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB15_1
.LBB15_10:                              # %for.end
	movl	$-2, -88(%rbp)
.LBB15_11:                              # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -88(%rbp)
	jg	.LBB15_14
# BB#12:                                # %for.body.38
                                        #   in Loop: Header=BB15_11 Depth=1
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-88(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movsd	-160(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp,%rcx,8)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-88(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movsd	-208(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -208(%rbp,%rcx,8)
# BB#13:                                # %for.inc.46
                                        #   in Loop: Header=BB15_11 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB15_11
.LBB15_14:                              # %for.end.47
	movl	-36(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$3, %eax
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	movl	%eax, -252(%rbp)        # 4-byte Spill
	ja	.LBB15_69
# BB#70:                                # %for.end.47
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	.LJTI15_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB15_15:                              # %sw.bb
	movl	$1, %r8d
	xorl	%r9d, %r9d
	leaq	-208(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movl	-60(%rbp), %ecx
	callq	lanczos3_mul
	movsd	.LCPI15_2, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -264(%rbp)       # 8-byte Spill
	callq	rint
	movsd	%xmm0, -216(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_17
# BB#16:                                # %cond.true.53
	movsd	.LCPI15_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	jmp	.LBB15_21
.LBB15_17:                              # %cond.false.54
	xorps	%xmm0, %xmm0
	ucomisd	-216(%rbp), %xmm0
	jbe	.LBB15_19
# BB#18:                                # %cond.true.57
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	jmp	.LBB15_20
.LBB15_19:                              # %cond.false.58
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
.LBB15_20:                              # %cond.end.59
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
.LBB15_21:                              # %cond.end.61
	movsd	-272(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB15_69
.LBB15_22:                              # %sw.bb.65
	movl	$2, %r8d
	movl	$1, %r9d
	leaq	-208(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movl	-60(%rbp), %ecx
	callq	lanczos3_mul
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -224(%rbp)
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_36
# BB#23:                                # %if.then
	movl	$2, %r8d
	xorl	%r9d, %r9d
	leaq	-208(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movl	-60(%rbp), %ecx
	callq	lanczos3_mul_alpha
	movsd	.LCPI15_2, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -216(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-224(%rbp), %xmm0
	movsd	%xmm1, -288(%rbp)       # 8-byte Spill
	callq	rint
	movsd	%xmm0, -216(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-288(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_25
# BB#24:                                # %cond.true.78
	movsd	.LCPI15_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	jmp	.LBB15_29
.LBB15_25:                              # %cond.false.79
	xorps	%xmm0, %xmm0
	ucomisd	-216(%rbp), %xmm0
	jbe	.LBB15_27
# BB#26:                                # %cond.true.82
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	jmp	.LBB15_28
.LBB15_27:                              # %cond.false.83
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
.LBB15_28:                              # %cond.end.84
	movsd	-304(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
.LBB15_29:                              # %cond.end.86
	movsd	-296(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI15_2, %xmm1        # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, (%rdx)
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm1, -312(%rbp)       # 8-byte Spill
	callq	rint
	movsd	%xmm0, -224(%rbp)
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-312(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_31
# BB#30:                                # %cond.true.93
	movsd	.LCPI15_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	jmp	.LBB15_35
.LBB15_31:                              # %cond.false.94
	xorps	%xmm0, %xmm0
	ucomisd	-224(%rbp), %xmm0
	jbe	.LBB15_33
# BB#32:                                # %cond.true.97
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	jmp	.LBB15_34
.LBB15_33:                              # %cond.false.98
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
.LBB15_34:                              # %cond.end.99
	movsd	-328(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
.LBB15_35:                              # %cond.end.101
	movsd	-320(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, 1(%rdx)
	jmp	.LBB15_37
.LBB15_36:                              # %if.else
	movq	-48(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
.LBB15_37:                              # %if.end
	jmp	.LBB15_69
.LBB15_38:                              # %sw.bb.107
	movl	$0, -84(%rbp)
.LBB15_39:                              # %for.cond.108
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -84(%rbp)
	jge	.LBB15_48
# BB#40:                                # %for.body.111
                                        #   in Loop: Header=BB15_39 Depth=1
	movl	$3, %r8d
	leaq	-208(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movl	-60(%rbp), %ecx
	movl	-84(%rbp), %r9d
	callq	lanczos3_mul
	movsd	.LCPI15_2, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -336(%rbp)       # 8-byte Spill
	callq	rint
	movsd	%xmm0, -216(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-336(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_42
# BB#41:                                # %cond.true.118
                                        #   in Loop: Header=BB15_39 Depth=1
	movsd	.LCPI15_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	jmp	.LBB15_46
.LBB15_42:                              # %cond.false.119
                                        #   in Loop: Header=BB15_39 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-216(%rbp), %xmm0
	jbe	.LBB15_44
# BB#43:                                # %cond.true.122
                                        #   in Loop: Header=BB15_39 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	jmp	.LBB15_45
.LBB15_44:                              # %cond.false.123
                                        #   in Loop: Header=BB15_39 Depth=1
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
.LBB15_45:                              # %cond.end.124
                                        #   in Loop: Header=BB15_39 Depth=1
	movsd	-352(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
.LBB15_46:                              # %cond.end.126
                                        #   in Loop: Header=BB15_39 Depth=1
	movsd	-344(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-84(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#47:                                # %for.inc.131
                                        #   in Loop: Header=BB15_39 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB15_39
.LBB15_48:                              # %for.end.133
	jmp	.LBB15_69
.LBB15_49:                              # %sw.bb.134
	movl	$4, %r8d
	movl	$3, %r9d
	leaq	-208(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movl	-60(%rbp), %ecx
	callq	lanczos3_mul
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -224(%rbp)
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_67
# BB#50:                                # %if.then.140
	movl	$0, -84(%rbp)
.LBB15_51:                              # %for.cond.141
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -84(%rbp)
	jge	.LBB15_60
# BB#52:                                # %for.body.144
                                        #   in Loop: Header=BB15_51 Depth=1
	movl	$4, %r8d
	leaq	-208(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movl	-60(%rbp), %ecx
	movl	-84(%rbp), %r9d
	callq	lanczos3_mul_alpha
	movsd	.LCPI15_2, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -216(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-224(%rbp), %xmm0
	movsd	%xmm1, -360(%rbp)       # 8-byte Spill
	callq	rint
	movsd	%xmm0, -216(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-360(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_54
# BB#53:                                # %cond.true.152
                                        #   in Loop: Header=BB15_51 Depth=1
	movsd	.LCPI15_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	jmp	.LBB15_58
.LBB15_54:                              # %cond.false.153
                                        #   in Loop: Header=BB15_51 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-216(%rbp), %xmm0
	jbe	.LBB15_56
# BB#55:                                # %cond.true.156
                                        #   in Loop: Header=BB15_51 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
	jmp	.LBB15_57
.LBB15_56:                              # %cond.false.157
                                        #   in Loop: Header=BB15_51 Depth=1
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
.LBB15_57:                              # %cond.end.158
                                        #   in Loop: Header=BB15_51 Depth=1
	movsd	-376(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
.LBB15_58:                              # %cond.end.160
                                        #   in Loop: Header=BB15_51 Depth=1
	movsd	-368(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-84(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#59:                                # %for.inc.165
                                        #   in Loop: Header=BB15_51 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB15_51
.LBB15_60:                              # %for.end.167
	movsd	.LCPI15_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-224(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	rint
	movsd	%xmm0, -224(%rbp)
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-384(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_62
# BB#61:                                # %cond.true.171
	movsd	.LCPI15_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
	jmp	.LBB15_66
.LBB15_62:                              # %cond.false.172
	xorps	%xmm0, %xmm0
	ucomisd	-224(%rbp), %xmm0
	jbe	.LBB15_64
# BB#63:                                # %cond.true.175
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	jmp	.LBB15_65
.LBB15_64:                              # %cond.false.176
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
.LBB15_65:                              # %cond.end.177
	movsd	-400(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
.LBB15_66:                              # %cond.end.179
	movsd	-392(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, 3(%rdx)
	jmp	.LBB15_68
.LBB15_67:                              # %if.else.183
	movq	-48(%rbp), %rax
	movb	$0, 3(%rax)
	movq	-48(%rbp), %rax
	movb	$0, 2(%rax)
	movq	-48(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
.LBB15_68:                              # %if.end.188
	jmp	.LBB15_69
.LBB15_69:                              # %sw.epilog
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end15:
	.size	interpolate_lanczos3, .Lfunc_end15-interpolate_lanczos3
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI15_0:
	.quad	.LBB15_15
	.quad	.LBB15_22
	.quad	.LBB15_38
	.quad	.LBB15_49

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	weighted_sum,@function
weighted_sum:                           # @weighted_sum
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
	movsd	.LCPI16_0, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movaps	%xmm2, %xmm0
	subsd	-16(%rbp), %xmm0
	movaps	%xmm2, %xmm1
	subsd	-8(%rbp), %xmm1
	cvtsi2sdl	-20(%rbp), %xmm3
	mulsd	%xmm3, %xmm1
	movsd	-8(%rbp), %xmm3         # xmm3 = mem[0],zero
	cvtsi2sdl	-24(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-8(%rbp), %xmm2
	cvtsi2sdl	-28(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	movsd	-8(%rbp), %xmm3         # xmm3 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end16:
	.size	weighted_sum, .Lfunc_end16-weighted_sum
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4611686018427387904     # double 2
.LCPI17_1:
	.quad	4616189618054758400     # double 4
.LCPI17_2:
	.quad	4617315517961601024     # double 5
.LCPI17_3:
	.quad	4613937818241073152     # double 3
	.text
	.align	16, 0x90
	.type	cubic_spline_fit,@function
cubic_spline_fit:                       # @cubic_spline_fit
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
	movsd	.LCPI17_0, %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI17_1, %xmm6        # xmm6 = mem[0],zero
	movsd	.LCPI17_2, %xmm7        # xmm7 = mem[0],zero
	movsd	.LCPI17_3, %xmm8        # xmm8 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movsd	%xmm4, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movaps	%xmm8, %xmm1
	mulsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	mulsd	-32(%rbp), %xmm8
	subsd	%xmm8, %xmm0
	addsd	-40(%rbp), %xmm0
	mulsd	-8(%rbp), %xmm0
	movaps	%xmm5, %xmm1
	mulsd	-16(%rbp), %xmm1
	mulsd	-24(%rbp), %xmm7
	subsd	%xmm7, %xmm1
	mulsd	-32(%rbp), %xmm6
	addsd	%xmm6, %xmm1
	subsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	mulsd	-8(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	addsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	mulsd	-8(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	divsd	%xmm5, %xmm0
	popq	%rbp
	retq
.Lfunc_end17:
	.size	cubic_spline_fit, .Lfunc_end17-cubic_spline_fit
	.cfi_endproc

	.align	16, 0x90
	.type	lanczos3_mul,@function
lanczos3_mul:                           # @lanczos3_mul
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
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movl	$0, -64(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_3 Depth 2
	cmpl	$6, -64(%rbp)
	jge	.LBB18_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movsd	%xmm0, -80(%rbp)
	movl	$0, -60(%rbp)
.LBB18_3:                               # %for.cond.1
                                        #   Parent Loop BB18_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$6, -60(%rbp)
	jge	.LBB18_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB18_3 Depth=2
	movslq	-60(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB18_3 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	-32(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	jmp	.LBB18_3
.LBB18_6:                               # %for.end
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
# BB#7:                                 # %for.inc.11
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	-28(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB18_1
.LBB18_8:                               # %for.end.15
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end18:
	.size	lanczos3_mul, .Lfunc_end18-lanczos3_mul
	.cfi_endproc

	.align	16, 0x90
	.type	lanczos3_mul_alpha,@function
lanczos3_mul_alpha:                     # @lanczos3_mul_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movl	-32(%rbp), %ecx
	subl	$1, %ecx
	movb	%cl, %al
	movb	%al, -49(%rbp)
	movsd	%xmm0, -64(%rbp)
	movl	$0, -72(%rbp)
.LBB19_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_3 Depth 2
	cmpl	$6, -72(%rbp)
	jge	.LBB19_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
	movl	$0, -68(%rbp)
.LBB19_3:                               # %for.cond.2
                                        #   Parent Loop BB19_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$6, -68(%rbp)
	jge	.LBB19_6
# BB#4:                                 # %for.body.5
                                        #   in Loop: Header=BB19_3 Depth=2
	movslq	-68(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movzbl	-49(%rbp), %edx
	movl	%edx, %eax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB19_3 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-32(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
	jmp	.LBB19_3
.LBB19_6:                               # %for.end
                                        #   in Loop: Header=BB19_1 Depth=1
	movslq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
# BB#7:                                 # %for.inc.19
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-28(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB19_1
.LBB19_8:                               # %for.end.23
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end19:
	.size	lanczos3_mul_alpha, .Lfunc_end19-lanczos3_mul_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	decimate_average_xy,@function
decimate_average_xy:                    # @decimate_average_xy
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
	subq	$64, %rsp
	leaq	-36(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	%rax, %rcx
	callq	pixel_surround_lock
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	-48(%rbp), %rcx
	movslq	-36(%rbp), %r8
	addq	%r8, %rcx
	movq	-48(%rbp), %r8
	movslq	-36(%rbp), %r9
	addq	%r9, %r8
	movslq	-20(%rbp), %r9
	addq	%r9, %r8
	movq	-32(%rbp), %r9
	movl	-20(%rbp), %edx
	movq	%rax, %rsi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movq	%rcx, %rdx
	movq	%r8, %rcx
	movq	%r9, %r8
	movl	-52(%rbp), %r9d         # 4-byte Reload
	callq	pixel_average4
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	decimate_average_xy, .Lfunc_end20-decimate_average_xy
	.cfi_endproc

	.align	16, 0x90
	.type	pixel_average4,@function
pixel_average4:                         # @pixel_average4
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	decl	%r9d
	movl	%r9d, %ecx
	subl	$3, %r9d
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movl	%r9d, -68(%rbp)         # 4-byte Spill
	ja	.LBB21_13
# BB#14:                                # %entry
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI21_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB21_1:                               # %sw.bb
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-40(%rbp), %rax
	movb	%sil, (%rax)
	jmp	.LBB21_13
.LBB21_2:                               # %sw.bb.12
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movl	%ecx, -48(%rbp)
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	je	.LBB21_3
	jmp	.LBB21_16
.LBB21_16:                              # %sw.bb.12
	movl	-72(%rbp), %eax         # 4-byte Reload
	subl	$1020, %eax             # imm = 0x3FC
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB21_4
	jmp	.LBB21_5
.LBB21_3:                               # %sw.bb.24
	movq	-40(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB21_6
.LBB21_4:                               # %sw.bb.27
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-40(%rbp), %rax
	movb	%sil, (%rax)
	movq	-40(%rbp), %rax
	movb	$-1, 1(%rax)
	jmp	.LBB21_6
.LBB21_5:                               # %sw.default
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	-48(%rbp), %edx
	shrl	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	-48(%rbp)
	movb	%al, %dil
	movq	-40(%rbp), %r8
	movb	%dil, (%r8)
	movl	-48(%rbp), %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, %dil
	movq	-40(%rbp), %r8
	movb	%dil, 1(%r8)
.LBB21_6:                               # %sw.epilog
	jmp	.LBB21_13
.LBB21_7:                               # %sw.bb.74
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-40(%rbp), %rax
	movb	%sil, (%rax)
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-40(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-40(%rbp), %rax
	movb	%sil, 2(%rax)
	jmp	.LBB21_13
.LBB21_8:                               # %sw.bb.120
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %edx
	addl	%edx, %ecx
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %edx
	addl	%edx, %ecx
	movq	-32(%rbp), %rax
	movzbl	3(%rax), %edx
	addl	%edx, %ecx
	movl	%ecx, -52(%rbp)
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	je	.LBB21_9
	jmp	.LBB21_15
.LBB21_15:                              # %sw.bb.120
	movl	-80(%rbp), %eax         # 4-byte Reload
	subl	$1020, %eax             # imm = 0x3FC
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB21_10
	jmp	.LBB21_11
.LBB21_9:                               # %sw.bb.133
	movq	-40(%rbp), %rax
	movb	$0, 3(%rax)
	movq	-40(%rbp), %rax
	movb	$0, 2(%rax)
	movq	-40(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB21_12
.LBB21_10:                              # %sw.bb.138
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-40(%rbp), %rax
	movb	%sil, (%rax)
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-40(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	addl	$2, %ecx
	sarl	$2, %ecx
	movb	%cl, %sil
	movq	-40(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-40(%rbp), %rax
	movb	$-1, 3(%rax)
	jmp	.LBB21_12
.LBB21_11:                              # %sw.default.185
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %edx
	imull	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	3(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	-52(%rbp), %edx
	shrl	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	-52(%rbp)
	movb	%al, %dil
	movq	-40(%rbp), %r8
	movb	%dil, (%r8)
	movq	-8(%rbp), %r8
	movzbl	1(%r8), %eax
	movq	-8(%rbp), %r8
	movzbl	3(%r8), %ecx
	imull	%ecx, %eax
	movq	-16(%rbp), %r8
	movzbl	1(%r8), %ecx
	movq	-16(%rbp), %r8
	movzbl	3(%r8), %esi
	imull	%esi, %ecx
	addl	%ecx, %eax
	movq	-24(%rbp), %r8
	movzbl	1(%r8), %ecx
	movq	-24(%rbp), %r8
	movzbl	3(%r8), %esi
	imull	%esi, %ecx
	addl	%ecx, %eax
	movq	-32(%rbp), %r8
	movzbl	1(%r8), %ecx
	movq	-32(%rbp), %r8
	movzbl	3(%r8), %esi
	imull	%esi, %ecx
	addl	%ecx, %eax
	movl	-52(%rbp), %ecx
	shrl	$1, %ecx
	addl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divl	-52(%rbp)
	movb	%al, %dil
	movq	-40(%rbp), %r8
	movb	%dil, 1(%r8)
	movq	-8(%rbp), %r8
	movzbl	2(%r8), %eax
	movq	-8(%rbp), %r8
	movzbl	3(%r8), %ecx
	imull	%ecx, %eax
	movq	-16(%rbp), %r8
	movzbl	2(%r8), %ecx
	movq	-16(%rbp), %r8
	movzbl	3(%r8), %esi
	imull	%esi, %ecx
	addl	%ecx, %eax
	movq	-24(%rbp), %r8
	movzbl	2(%r8), %ecx
	movq	-24(%rbp), %r8
	movzbl	3(%r8), %esi
	imull	%esi, %ecx
	addl	%ecx, %eax
	movq	-32(%rbp), %r8
	movzbl	2(%r8), %ecx
	movq	-32(%rbp), %r8
	movzbl	3(%r8), %esi
	imull	%esi, %ecx
	addl	%ecx, %eax
	movl	-52(%rbp), %ecx
	shrl	$1, %ecx
	addl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divl	-52(%rbp)
	movb	%al, %dil
	movq	-40(%rbp), %r8
	movb	%dil, 2(%r8)
	movl	-52(%rbp), %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, %dil
	movq	-40(%rbp), %r8
	movb	%dil, 3(%r8)
.LBB21_12:                              # %sw.epilog.274
	jmp	.LBB21_13
.LBB21_13:                              # %sw.epilog.275
	popq	%rbp
	retq
.Lfunc_end21:
	.size	pixel_average4, .Lfunc_end21-pixel_average4
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI21_0:
	.quad	.LBB21_1
	.quad	.LBB21_2
	.quad	.LBB21_7
	.quad	.LBB21_8

	.text
	.align	16, 0x90
	.type	decimate_average_x,@function
decimate_average_x:                     # @decimate_average_x
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
	subq	$48, %rsp
	leaq	-36(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	%rax, %rcx
	callq	pixel_surround_lock
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	%rax, %rsi
	callq	pixel_average2
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	decimate_average_x, .Lfunc_end22-decimate_average_x
	.cfi_endproc

	.align	16, 0x90
	.type	pixel_average2,@function
pixel_average2:                         # @pixel_average2
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	decl	%ecx
	movl	%ecx, %edx
	subl	$3, %ecx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	ja	.LBB23_13
# BB#14:                                # %entry
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI23_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB23_1:                               # %sw.bb
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	addl	$1, %ecx
	sarl	$1, %ecx
	movb	%cl, %sil
	movq	-24(%rbp), %rax
	movb	%sil, (%rax)
	jmp	.LBB23_13
.LBB23_2:                               # %sw.bb.6
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movl	%ecx, -32(%rbp)
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	je	.LBB23_3
	jmp	.LBB23_16
.LBB23_16:                              # %sw.bb.6
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$510, %eax              # imm = 0x1FE
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB23_4
	jmp	.LBB23_5
.LBB23_3:                               # %sw.bb.12
	movq	-24(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB23_6
.LBB23_4:                               # %sw.bb.15
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	addl	$1, %ecx
	sarl	$1, %ecx
	movb	%cl, %sil
	movq	-24(%rbp), %rax
	movb	%sil, (%rax)
	movq	-24(%rbp), %rax
	movb	$-1, 1(%rax)
	jmp	.LBB23_6
.LBB23_5:                               # %sw.default
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	-32(%rbp), %edx
	shrl	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	-32(%rbp)
	movb	%al, %dil
	movq	-24(%rbp), %r8
	movb	%dil, (%r8)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	shrl	$1, %eax
	movb	%al, %dil
	movq	-24(%rbp), %r8
	movb	%dil, 1(%r8)
.LBB23_6:                               # %sw.epilog
	jmp	.LBB23_13
.LBB23_7:                               # %sw.bb.44
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	addl	$1, %ecx
	sarl	$1, %ecx
	movb	%cl, %sil
	movq	-24(%rbp), %rax
	movb	%sil, (%rax)
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	addl	$1, %ecx
	sarl	$1, %ecx
	movb	%cl, %sil
	movq	-24(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	addl	$1, %ecx
	sarl	$1, %ecx
	movb	%cl, %sil
	movq	-24(%rbp), %rax
	movb	%sil, 2(%rax)
	jmp	.LBB23_13
.LBB23_8:                               # %sw.bb.72
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %edx
	addl	%edx, %ecx
	movl	%ecx, -36(%rbp)
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	je	.LBB23_9
	jmp	.LBB23_15
.LBB23_15:                              # %sw.bb.72
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$510, %eax              # imm = 0x1FE
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB23_10
	jmp	.LBB23_11
.LBB23_9:                               # %sw.bb.79
	movq	-24(%rbp), %rax
	movb	$0, 3(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 2(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB23_12
.LBB23_10:                              # %sw.bb.84
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	addl	%edx, %ecx
	addl	$1, %ecx
	sarl	$1, %ecx
	movb	%cl, %sil
	movq	-24(%rbp), %rax
	movb	%sil, (%rax)
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	addl	$1, %ecx
	sarl	$1, %ecx
	movb	%cl, %sil
	movq	-24(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	addl	$1, %ecx
	sarl	$1, %ecx
	movb	%cl, %sil
	movq	-24(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-24(%rbp), %rax
	movb	$-1, 3(%rax)
	jmp	.LBB23_12
.LBB23_11:                              # %sw.default.113
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %edx
	imull	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	-36(%rbp), %edx
	shrl	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	-36(%rbp)
	movb	%al, %dil
	movq	-24(%rbp), %r8
	movb	%dil, (%r8)
	movq	-8(%rbp), %r8
	movzbl	1(%r8), %eax
	movq	-8(%rbp), %r8
	movzbl	3(%r8), %ecx
	imull	%ecx, %eax
	movq	-16(%rbp), %r8
	movzbl	1(%r8), %ecx
	movq	-16(%rbp), %r8
	movzbl	3(%r8), %esi
	imull	%esi, %ecx
	addl	%ecx, %eax
	movl	-36(%rbp), %ecx
	shrl	$1, %ecx
	addl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divl	-36(%rbp)
	movb	%al, %dil
	movq	-24(%rbp), %r8
	movb	%dil, 1(%r8)
	movq	-8(%rbp), %r8
	movzbl	2(%r8), %eax
	movq	-8(%rbp), %r8
	movzbl	3(%r8), %ecx
	imull	%ecx, %eax
	movq	-16(%rbp), %r8
	movzbl	2(%r8), %ecx
	movq	-16(%rbp), %r8
	movzbl	3(%r8), %esi
	imull	%esi, %ecx
	addl	%ecx, %eax
	movl	-36(%rbp), %ecx
	shrl	$1, %ecx
	addl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divl	-36(%rbp)
	movb	%al, %dil
	movq	-24(%rbp), %r8
	movb	%dil, 2(%r8)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	shrl	$1, %eax
	movb	%al, %dil
	movq	-24(%rbp), %r8
	movb	%dil, 3(%r8)
.LBB23_12:                              # %sw.epilog.166
	jmp	.LBB23_13
.LBB23_13:                              # %sw.epilog.167
	popq	%rbp
	retq
.Lfunc_end23:
	.size	pixel_average2, .Lfunc_end23-pixel_average2
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI23_0:
	.quad	.LBB23_1
	.quad	.LBB23_2
	.quad	.LBB23_7
	.quad	.LBB23_8

	.text
	.align	16, 0x90
	.type	decimate_average_y,@function
decimate_average_y:                     # @decimate_average_y
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
	subq	$48, %rsp
	leaq	-36(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	%rax, %rcx
	callq	pixel_surround_lock
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	%rax, %rsi
	callq	pixel_average2
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	decimate_average_y, .Lfunc_end24-decimate_average_y
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	interpolate_bilinear_pr,@function
interpolate_bilinear_pr:                # @interpolate_bilinear_pr
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rdi
	movl	52(%rdi), %ecx
	movl	%ecx, -52(%rbp)
	movq	-8(%rbp), %rdi
	movl	44(%rdi), %ecx
	movl	%ecx, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	-16(%rbp), %edx
	imull	%ecx, %edx
	movl	-12(%rbp), %ecx
	addl	%ecx, %edx
	movl	-52(%rbp), %ecx
	imull	%ecx, %edx
	movslq	%edx, %r9
	addq	%r9, %rdi
	movq	%rdi, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	-16(%rbp), %ecx
	movl	-56(%rbp), %edx
	imull	%edx, %ecx
	movl	-20(%rbp), %edx
	addl	%edx, %ecx
	movl	-52(%rbp), %edx
	imull	%edx, %ecx
	movslq	%ecx, %r9
	addq	%r9, %rdi
	movq	%rdi, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	-24(%rbp), %ecx
	movl	-56(%rbp), %edx
	imull	%edx, %ecx
	movl	-12(%rbp), %edx
	addl	%edx, %ecx
	movl	-52(%rbp), %edx
	imull	%edx, %ecx
	movslq	%ecx, %r9
	addq	%r9, %rdi
	movq	%rdi, -80(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	-24(%rbp), %ecx
	movl	-56(%rbp), %edx
	imull	%edx, %ecx
	movl	-20(%rbp), %edx
	addl	%edx, %ecx
	movl	-52(%rbp), %edx
	imull	%edx, %ecx
	movslq	%ecx, %r9
	addq	%r9, %rdi
	movq	%rdi, -88(%rbp)
	movl	-52(%rbp), %ecx
	decl	%ecx
	movl	%ecx, %edi
	subl	$3, %ecx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	ja	.LBB25_55
# BB#56:                                # %entry
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	.LJTI25_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB25_1:                               # %sw.bb
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-64(%rbp), %rax
	movzbl	(%rax), %edi
	movq	-72(%rbp), %rax
	movzbl	(%rax), %esi
	movq	-80(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	callq	weighted_sum
	movsd	.LCPI25_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB25_3
# BB#2:                                 # %cond.true
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB25_7
.LBB25_3:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-104(%rbp), %xmm0
	jbe	.LBB25_5
# BB#4:                                 # %cond.true.30
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB25_6
.LBB25_5:                               # %cond.false.31
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB25_6:                               # %cond.end
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB25_7:                               # %cond.end.32
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB25_55
.LBB25_8:                               # %sw.bb.36
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-64(%rbp), %rax
	movzbl	1(%rax), %edi
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %esi
	movq	-80(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %ecx
	callq	weighted_sum
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -112(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB25_22
# BB#9:                                 # %if.then
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-64(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	%edx, %ecx
	movq	-72(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %esi
	imull	%esi, %edx
	movq	-80(%rbp), %rax
	movzbl	(%rax), %esi
	movq	-80(%rbp), %rax
	movzbl	1(%rax), %edi
	imull	%edi, %esi
	movq	-88(%rbp), %rax
	movzbl	(%rax), %edi
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %r8d
	imull	%r8d, %edi
	movl	%edi, -148(%rbp)        # 4-byte Spill
	movl	%ecx, %edi
	movl	%esi, -152(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-152(%rbp), %edx        # 4-byte Reload
	movl	-148(%rbp), %ecx        # 4-byte Reload
	callq	weighted_sum
	movsd	.LCPI25_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB25_11
# BB#10:                                # %cond.true.71
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB25_15
.LBB25_11:                              # %cond.false.72
	xorps	%xmm0, %xmm0
	ucomisd	-104(%rbp), %xmm0
	jbe	.LBB25_13
# BB#12:                                # %cond.true.75
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB25_14
.LBB25_13:                              # %cond.false.76
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
.LBB25_14:                              # %cond.end.77
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
.LBB25_15:                              # %cond.end.79
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI25_0, %xmm1        # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, (%rdx)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB25_17
# BB#16:                                # %cond.true.85
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	jmp	.LBB25_21
.LBB25_17:                              # %cond.false.86
	xorps	%xmm0, %xmm0
	ucomisd	-112(%rbp), %xmm0
	jbe	.LBB25_19
# BB#18:                                # %cond.true.89
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB25_20
.LBB25_19:                              # %cond.false.90
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
.LBB25_20:                              # %cond.end.91
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
.LBB25_21:                              # %cond.end.93
	movsd	-176(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, 1(%rdx)
	jmp	.LBB25_23
.LBB25_22:                              # %if.else
	movq	-48(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
.LBB25_23:                              # %if.end
	jmp	.LBB25_55
.LBB25_24:                              # %sw.bb.99
	movl	$0, -92(%rbp)
.LBB25_25:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -92(%rbp)
	jge	.LBB25_34
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB25_25 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-92(%rbp), %rax
	movq	-64(%rbp), %rcx
	movzbl	(%rcx,%rax), %edi
	movslq	-92(%rbp), %rax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	movslq	-92(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-92(%rbp), %rax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %ecx
	callq	weighted_sum
	movsd	.LCPI25_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB25_28
# BB#27:                                # %cond.true.116
                                        #   in Loop: Header=BB25_25 Depth=1
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jmp	.LBB25_32
.LBB25_28:                              # %cond.false.117
                                        #   in Loop: Header=BB25_25 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-104(%rbp), %xmm0
	jbe	.LBB25_30
# BB#29:                                # %cond.true.120
                                        #   in Loop: Header=BB25_25 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jmp	.LBB25_31
.LBB25_30:                              # %cond.false.121
                                        #   in Loop: Header=BB25_25 Depth=1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
.LBB25_31:                              # %cond.end.122
                                        #   in Loop: Header=BB25_25 Depth=1
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
.LBB25_32:                              # %cond.end.124
                                        #   in Loop: Header=BB25_25 Depth=1
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-92(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#33:                                # %for.inc
                                        #   in Loop: Header=BB25_25 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB25_25
.LBB25_34:                              # %for.end
	jmp	.LBB25_55
.LBB25_35:                              # %sw.bb.129
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-64(%rbp), %rax
	movzbl	3(%rax), %edi
	movq	-72(%rbp), %rax
	movzbl	3(%rax), %esi
	movq	-80(%rbp), %rax
	movzbl	3(%rax), %edx
	movq	-88(%rbp), %rax
	movzbl	3(%rax), %ecx
	callq	weighted_sum
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -112(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB25_53
# BB#36:                                # %if.then.141
	movl	$0, -92(%rbp)
.LBB25_37:                              # %for.cond.142
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -92(%rbp)
	jge	.LBB25_46
# BB#38:                                # %for.body.145
                                        #   in Loop: Header=BB25_37 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-92(%rbp), %rax
	movq	-64(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-64(%rbp), %rax
	movzbl	3(%rax), %esi
	imull	%esi, %edx
	movslq	-92(%rbp), %rax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	movq	-72(%rbp), %rax
	movzbl	3(%rax), %edi
	imull	%edi, %esi
	movslq	-92(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %edi
	movq	-80(%rbp), %rax
	movzbl	3(%rax), %r8d
	imull	%r8d, %edi
	movslq	-92(%rbp), %rax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %r8d
	movq	-88(%rbp), %rax
	movzbl	3(%rax), %r9d
	imull	%r9d, %r8d
	movl	%edi, -204(%rbp)        # 4-byte Spill
	movl	%edx, %edi
	movl	-204(%rbp), %edx        # 4-byte Reload
	movl	%r8d, %ecx
	callq	weighted_sum
	movsd	.LCPI25_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB25_40
# BB#39:                                # %cond.true.174
                                        #   in Loop: Header=BB25_37 Depth=1
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jmp	.LBB25_44
.LBB25_40:                              # %cond.false.175
                                        #   in Loop: Header=BB25_37 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-104(%rbp), %xmm0
	jbe	.LBB25_42
# BB#41:                                # %cond.true.178
                                        #   in Loop: Header=BB25_37 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB25_43
.LBB25_42:                              # %cond.false.179
                                        #   in Loop: Header=BB25_37 Depth=1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
.LBB25_43:                              # %cond.end.180
                                        #   in Loop: Header=BB25_37 Depth=1
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
.LBB25_44:                              # %cond.end.182
                                        #   in Loop: Header=BB25_37 Depth=1
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-92(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#45:                                # %for.inc.187
                                        #   in Loop: Header=BB25_37 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB25_37
.LBB25_46:                              # %for.end.189
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB25_48
# BB#47:                                # %cond.true.192
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB25_52
.LBB25_48:                              # %cond.false.193
	xorps	%xmm0, %xmm0
	ucomisd	-112(%rbp), %xmm0
	jbe	.LBB25_50
# BB#49:                                # %cond.true.196
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jmp	.LBB25_51
.LBB25_50:                              # %cond.false.197
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
.LBB25_51:                              # %cond.end.198
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB25_52:                              # %cond.end.200
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, 3(%rdx)
	jmp	.LBB25_54
.LBB25_53:                              # %if.else.204
	movq	-48(%rbp), %rax
	movb	$0, 3(%rax)
	movq	-48(%rbp), %rax
	movb	$0, 2(%rax)
	movq	-48(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
.LBB25_54:                              # %if.end.209
	jmp	.LBB25_55
.LBB25_55:                              # %sw.epilog
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	interpolate_bilinear_pr, .Lfunc_end25-interpolate_bilinear_pr
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI25_0:
	.quad	.LBB25_1
	.quad	.LBB25_8
	.quad	.LBB25_24
	.quad	.LBB25_35

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Paint-Funcs"
	.size	.L.str, 17

	.type	.L__func__.scale_region,@object # @__func__.scale_region
.L__func__.scale_region:
	.asciz	"scale_region"
	.size	.L__func__.scale_region, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"interpolation == GIMP_INTERPOLATION_LINEAR"
	.size	.L.str.1, 43

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"progress_callback == NULL"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"scale-region.c"
	.size	.L.str.3, 15

	.type	.L__func__.scale,@object # @__func__.scale
.L__func__.scale:
	.asciz	"scale"
	.size	.L__func__.scale, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"scale: %dx%d -> %dx%d"
	.size	.L.str.4, 22

	.type	.L__func__.decimate_xy,@object # @__func__.decimate_xy
.L__func__.decimate_xy:
	.asciz	"decimate_xy"
	.size	.L__func__.decimate_xy, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"decimate_xy: %dx%d -> %dx%d\n"
	.size	.L.str.5, 29

	.type	.L__func__.decimate_x,@object # @__func__.decimate_x
.L__func__.decimate_x:
	.asciz	"decimate_x"
	.size	.L__func__.decimate_x, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"decimate_x: %dx%d -> %dx%d\n"
	.size	.L.str.6, 28

	.type	.L__func__.decimate_y,@object # @__func__.decimate_y
.L__func__.decimate_y:
	.asciz	"decimate_y"
	.size	.L__func__.decimate_y, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"decimate_y: %dx%d -> %dx%d\n"
	.size	.L.str.7, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
