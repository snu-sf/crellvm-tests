	.text
	.file	"hue-saturation.bc"
	.globl	hue_saturation_init
	.align	16, 0x90
	.type	hue_saturation_init,@function
hue_saturation_init:                    # @hue_saturation_init
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
	movabsq	$.L__func__.hue_saturation_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_9
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 168(%rax)
	movl	$0, -12(%rbp)
.LBB0_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -12(%rbp)
	ja	.LBB0_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB0_6 Depth=1
	xorps	%xmm0, %xmm0
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	%xmm0, (%rdx,%rcx,8)
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 56(%rdx,%rcx,8)
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 112(%rdx,%rcx,8)
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
	.size	hue_saturation_init, .Lfunc_end0-hue_saturation_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4645040803167600640     # double 360
.LCPI1_1:
	.quad	4643176031446892544     # double 255
.LCPI1_2:
	.quad	4636737291354636288     # double 100
.LCPI1_3:
	.quad	4638637247447433216     # double 127
	.text
	.globl	hue_saturation_calculate_transfers
	.align	16, 0x90
	.type	hue_saturation_calculate_transfers,@function
hue_saturation_calculate_transfers:     # @hue_saturation_calculate_transfers
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.hue_saturation_calculate_transfers, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_40
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movl	$0, -16(%rbp)
.LBB1_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
	cmpl	$6, -16(%rbp)
	jge	.LBB1_40
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	$0, -20(%rbp)
.LBB1_8:                                # %for.cond.2
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jge	.LBB1_38
# BB#9:                                 # %for.body.4
                                        #   in Loop: Header=BB1_8 Depth=2
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	movl	-16(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	addsd	(%rdx,%rax,8), %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, -12(%rbp)
	movl	-20(%rbp), %ecx
	addl	-12(%rbp), %ecx
	cmpl	$0, %ecx
	jge	.LBB1_11
# BB#10:                                # %if.then.12
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	addl	$255, %eax
	movslq	-20(%rbp), %rcx
	movslq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	$176, %rsi
	shlq	$10, %rdx
	addq	%rdx, %rsi
	movl	%eax, (%rsi,%rcx,4)
	jmp	.LBB1_15
.LBB1_11:                               # %if.else.19
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	cmpl	$255, %eax
	jle	.LBB1_13
# BB#12:                                # %if.then.23
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	subl	$255, %eax
	movslq	-20(%rbp), %rcx
	movslq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	$176, %rsi
	shlq	$10, %rdx
	addq	%rdx, %rsi
	movl	%eax, (%rsi,%rcx,4)
	jmp	.LBB1_14
.LBB1_13:                               # %if.else.30
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	movslq	-20(%rbp), %rcx
	movslq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	$176, %rsi
	shlq	$10, %rdx
	addq	%rdx, %rsi
	movl	%eax, (%rsi,%rcx,4)
.LBB1_14:                               # %if.end.37
                                        #   in Loop: Header=BB1_8 Depth=2
	jmp	.LBB1_15
.LBB1_15:                               # %if.end.38
                                        #   in Loop: Header=BB1_8 Depth=2
	movsd	.LCPI1_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_3, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm2         # xmm2 = mem[0],zero
	movl	-16(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	addsd	56(%rdx,%rax,8), %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$255, -12(%rbp)
	jle	.LBB1_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	$255, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB1_21
.LBB1_17:                               # %cond.false
                                        #   in Loop: Header=BB1_8 Depth=2
	cmpl	$-255, -12(%rbp)
	jge	.LBB1_19
# BB#18:                                # %cond.true.52
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	$4294967041, %eax       # imm = 0xFFFFFF01
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB1_20
.LBB1_19:                               # %cond.false.53
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB1_20:                               # %cond.end
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	-28(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB1_21:                               # %cond.end.54
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	-24(%rbp), %eax         # 4-byte Reload
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB1_23
# BB#22:                                # %if.then.58
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	$255, %eax
	movl	-20(%rbp), %ecx
	movl	-12(%rbp), %edx
	addl	$255, %edx
	imull	%edx, %ecx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-32(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movb	%al, %sil
	movzbl	%sil, %eax
	movslq	-20(%rbp), %rdi
	movslq	-16(%rbp), %r8
	movq	-8(%rbp), %r9
	addq	$6320, %r9              # imm = 0x18B0
	shlq	$10, %r8
	addq	%r8, %r9
	movl	%eax, (%r9,%rdi,4)
	jmp	.LBB1_24
.LBB1_23:                               # %if.else.68
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	$255, %eax
	movl	-20(%rbp), %ecx
	movl	%eax, %edx
	subl	-20(%rbp), %edx
	imull	-12(%rbp), %edx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-36(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movb	%cl, %dil
	movzbl	%dil, %eax
	movslq	-20(%rbp), %r8
	movslq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	addq	$6320, %r10             # imm = 0x18B0
	shlq	$10, %r9
	addq	%r9, %r10
	movl	%eax, (%r10,%r8,4)
.LBB1_24:                               # %if.end.80
                                        #   in Loop: Header=BB1_8 Depth=2
	movsd	.LCPI1_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	112(%rax), %xmm2        # xmm2 = mem[0],zero
	movl	-16(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	addsd	112(%rdx,%rax,8), %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$255, -12(%rbp)
	jle	.LBB1_26
# BB#25:                                # %cond.true.92
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	$255, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB1_30
.LBB1_26:                               # %cond.false.93
                                        #   in Loop: Header=BB1_8 Depth=2
	cmpl	$-255, -12(%rbp)
	jge	.LBB1_28
# BB#27:                                # %cond.true.96
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	$4294967041, %eax       # imm = 0xFFFFFF01
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB1_29
.LBB1_28:                               # %cond.false.97
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB1_29:                               # %cond.end.98
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB1_30:                               # %cond.end.100
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	$255, %ecx
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	movl	-12(%rbp), %edx
	addl	$255, %edx
	imull	%edx, %eax
	cltd
	idivl	%ecx
	cmpl	$255, %eax
	jle	.LBB1_32
# BB#31:                                # %cond.true.107
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	$255, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB1_36
.LBB1_32:                               # %cond.false.108
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	$255, %eax
	movl	-20(%rbp), %ecx
	movl	-12(%rbp), %edx
	addl	$255, %edx
	imull	%edx, %ecx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-52(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %eax
	jge	.LBB1_34
# BB#33:                                # %cond.true.114
                                        #   in Loop: Header=BB1_8 Depth=2
	xorl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB1_35
.LBB1_34:                               # %cond.false.115
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	$255, %eax
	movl	-20(%rbp), %ecx
	movl	-12(%rbp), %edx
	addl	$255, %edx
	imull	%edx, %ecx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-60(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB1_35:                               # %cond.end.119
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB1_36:                               # %cond.end.121
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	-48(%rbp), %eax         # 4-byte Reload
	movslq	-20(%rbp), %rcx
	movslq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	$12464, %rsi            # imm = 0x30B0
	shlq	$10, %rdx
	addq	%rdx, %rsi
	movl	%eax, (%rsi,%rcx,4)
# BB#37:                                # %for.inc
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB1_8
.LBB1_38:                               # %for.end
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_39
.LBB1_39:                               # %for.inc.127
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB1_6
.LBB1_40:                               # %for.end.129
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	hue_saturation_calculate_transfers, .Lfunc_end1-hue_saturation_calculate_transfers
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4626604192193052672     # double 21
.LCPI2_1:
	.quad	4636737291354636288     # double 100
.LCPI2_2:
	.quad	4607182418800017408     # double 1
.LCPI2_3:
	.quad	4611686018427387904     # double 2
	.text
	.globl	hue_saturation
	.align	16, 0x90
	.type	hue_saturation,@function
hue_saturation:                         # @hue_saturation
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
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movss	%xmm2, -100(%rbp)
	movss	%xmm2, -104(%rbp)
	movq	-8(%rbp), %rdx
	movsd	168(%rdx), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, -108(%rbp)
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
                                        #       Child Loop BB2_5 Depth 3
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, %eax
	je	.LBB2_29
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
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_5 Depth 3
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -64(%rbp)
	cmpl	$0, %eax
	je	.LBB2_28
# BB#4:                                 # %while.body.7
                                        #   in Loop: Header=BB2_3 Depth=2
	leaq	-72(%rbp), %rdi
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -80(%rbp)
	callq	gimp_rgb_to_hsl_int
	movl	$6, %ecx
	movl	-72(%rbp), %r8d
	addl	$21, %r8d
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	%eax, -84(%rbp)
	movl	$0, -88(%rbp)
.LBB2_5:                                # %for.cond
                                        #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$7, -88(%rbp)
	jge	.LBB2_14
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB2_5 Depth=3
	cvtsi2ssl	-72(%rbp), %xmm0
	movslq	-88(%rbp), %rax
	cvtsi2ssl	hue_saturation.hue_thresholds(,%rax,4), %xmm1
	addss	-108(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB2_12
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB2_3 Depth=2
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movslq	-88(%rbp), %rax
	movl	hue_saturation.hue_thresholds(,%rax,4), %ecx
	movl	%ecx, -112(%rbp)
	movl	-88(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	cvtss2sd	-108(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_3 Depth=2
	cvtsi2ssl	-72(%rbp), %xmm0
	cvtsi2ssl	-112(%rbp), %xmm1
	subss	-108(%rbp), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB2_10
# BB#9:                                 # %if.then.30
                                        #   in Loop: Header=BB2_3 Depth=2
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_3, %xmm1         # xmm1 = mem[0],zero
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	movl	$1, -96(%rbp)
	movl	-72(%rbp), %eax
	subl	-112(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	addss	-108(%rbp), %xmm2
	cvtss2sd	%xmm2, %xmm2
	cvtss2sd	-108(%rbp), %xmm3
	mulsd	%xmm3, %xmm1
	divsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, -104(%rbp)
	cvtss2sd	-104(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -100(%rbp)
	jmp	.LBB2_11
.LBB2_10:                               # %if.else
                                        #   in Loop: Header=BB2_3 Depth=2
	movl	$0, -96(%rbp)
.LBB2_11:                               # %if.end
                                        #   in Loop: Header=BB2_3 Depth=2
	jmp	.LBB2_14
.LBB2_12:                               # %if.end.43
                                        #   in Loop: Header=BB2_5 Depth=3
	jmp	.LBB2_13
.LBB2_13:                               # %for.inc
                                        #   in Loop: Header=BB2_5 Depth=3
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB2_5
.LBB2_14:                               # %for.end
                                        #   in Loop: Header=BB2_3 Depth=2
	cmpl	$6, -84(%rbp)
	jl	.LBB2_16
# BB#15:                                # %if.then.46
                                        #   in Loop: Header=BB2_3 Depth=2
	movl	$0, -84(%rbp)
	movl	$0, -96(%rbp)
.LBB2_16:                               # %if.end.47
                                        #   in Loop: Header=BB2_3 Depth=2
	cmpl	$6, -92(%rbp)
	jl	.LBB2_18
# BB#17:                                # %if.then.50
                                        #   in Loop: Header=BB2_3 Depth=2
	movl	$0, -92(%rbp)
.LBB2_18:                               # %if.end.51
                                        #   in Loop: Header=BB2_3 Depth=2
	cmpl	$0, -96(%rbp)
	je	.LBB2_24
# BB#19:                                # %if.then.53
                                        #   in Loop: Header=BB2_3 Depth=2
	movslq	-72(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$176, %rdx
	shlq	$10, %rcx
	addq	%rcx, %rdx
	movl	(%rdx,%rax,4), %esi
	movslq	-72(%rbp), %rax
	movslq	-92(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$176, %rdx
	shlq	$10, %rcx
	addq	%rcx, %rdx
	subl	(%rdx,%rax,4), %esi
	movl	%esi, -116(%rbp)
	cmpl	$-127, -116(%rbp)
	jl	.LBB2_21
# BB#20:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_3 Depth=2
	cmpl	$128, -116(%rbp)
	jl	.LBB2_22
.LBB2_21:                               # %if.then.68
                                        #   in Loop: Header=BB2_3 Depth=2
	movl	$255, %eax
	movslq	-72(%rbp), %rcx
	movslq	-84(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	$176, %rsi
	shlq	$10, %rdx
	addq	%rdx, %rsi
	cvtsi2ssl	(%rsi,%rcx,4), %xmm0
	mulss	-100(%rbp), %xmm0
	movslq	-72(%rbp), %rcx
	movslq	-92(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	$176, %rsi
	shlq	$10, %rdx
	addq	%rdx, %rsi
	movl	(%rsi,%rcx,4), %edi
	addl	$255, %edi
	cvtsi2ssl	%edi, %xmm1
	mulss	-104(%rbp), %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-120(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	movl	%edx, -72(%rbp)
	jmp	.LBB2_23
.LBB2_22:                               # %if.else.86
                                        #   in Loop: Header=BB2_3 Depth=2
	movslq	-72(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$176, %rdx
	shlq	$10, %rcx
	addq	%rcx, %rdx
	cvtsi2ssl	(%rdx,%rax,4), %xmm0
	mulss	-100(%rbp), %xmm0
	movslq	-72(%rbp), %rax
	movslq	-92(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$176, %rdx
	shlq	$10, %rcx
	addq	%rcx, %rdx
	cvtsi2ssl	(%rdx,%rax,4), %xmm1
	mulss	-104(%rbp), %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %esi
	movl	%esi, -72(%rbp)
.LBB2_23:                               # %if.end.103
                                        #   in Loop: Header=BB2_3 Depth=2
	movslq	-76(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$12464, %rdx            # imm = 0x30B0
	shlq	$10, %rcx
	addq	%rcx, %rdx
	cvtsi2ssl	(%rdx,%rax,4), %xmm0
	mulss	-100(%rbp), %xmm0
	movslq	-76(%rbp), %rax
	movslq	-92(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$12464, %rdx            # imm = 0x30B0
	shlq	$10, %rcx
	addq	%rcx, %rdx
	cvtsi2ssl	(%rdx,%rax,4), %xmm1
	mulss	-104(%rbp), %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %esi
	movl	%esi, -76(%rbp)
	movslq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$6320, %rdx             # imm = 0x18B0
	shlq	$10, %rcx
	addq	%rcx, %rdx
	cvtsi2ssl	(%rdx,%rax,4), %xmm0
	mulss	-100(%rbp), %xmm0
	movslq	-80(%rbp), %rax
	movslq	-92(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$6320, %rdx             # imm = 0x18B0
	shlq	$10, %rcx
	addq	%rcx, %rdx
	cvtsi2ssl	(%rdx,%rax,4), %xmm1
	mulss	-104(%rbp), %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %esi
	movl	%esi, -80(%rbp)
	jmp	.LBB2_25
.LBB2_24:                               # %if.else.134
                                        #   in Loop: Header=BB2_3 Depth=2
	movslq	-72(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$176, %rdx
	shlq	$10, %rcx
	addq	%rcx, %rdx
	movl	(%rdx,%rax,4), %esi
	movl	%esi, -72(%rbp)
	movslq	-76(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$12464, %rdx            # imm = 0x30B0
	shlq	$10, %rcx
	addq	%rcx, %rdx
	movl	(%rdx,%rax,4), %esi
	movl	%esi, -76(%rbp)
	movslq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$6320, %rdx             # imm = 0x18B0
	shlq	$10, %rcx
	addq	%rcx, %rdx
	movl	(%rdx,%rax,4), %esi
	movl	%esi, -80(%rbp)
.LBB2_25:                               # %if.end.150
                                        #   in Loop: Header=BB2_3 Depth=2
	leaq	-72(%rbp), %rdi
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	callq	gimp_hsl_to_rgb_int
	movl	-72(%rbp), %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movl	-80(%rbp), %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movb	%cl, 2(%rdx)
	cmpl	$0, -60(%rbp)
	je	.LBB2_27
# BB#26:                                # %if.then.158
                                        #   in Loop: Header=BB2_3 Depth=2
	movq	-40(%rbp), %rax
	movb	3(%rax), %cl
	movq	-56(%rbp), %rax
	movb	%cl, 3(%rax)
.LBB2_27:                               # %if.end.161
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
.LBB2_28:                               # %while.end
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
.LBB2_29:                               # %while.end.170
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	hue_saturation, .Lfunc_end2-hue_saturation
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Base"
	.size	.L.str, 10

	.type	.L__func__.hue_saturation_init,@object # @__func__.hue_saturation_init
.L__func__.hue_saturation_init:
	.asciz	"hue_saturation_init"
	.size	.L__func__.hue_saturation_init, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"hs != NULL"
	.size	.L.str.1, 11

	.type	.L__func__.hue_saturation_calculate_transfers,@object # @__func__.hue_saturation_calculate_transfers
.L__func__.hue_saturation_calculate_transfers:
	.asciz	"hue_saturation_calculate_transfers"
	.size	.L__func__.hue_saturation_calculate_transfers, 35

	.type	hue_saturation.hue_thresholds,@object # @hue_saturation.hue_thresholds
	.section	.rodata,"a",@progbits
	.align	16
hue_saturation.hue_thresholds:
	.long	21                      # 0x15
	.long	64                      # 0x40
	.long	106                     # 0x6a
	.long	149                     # 0x95
	.long	192                     # 0xc0
	.long	234                     # 0xea
	.long	255                     # 0xff
	.size	hue_saturation.hue_thresholds, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
