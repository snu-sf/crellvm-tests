	.text
	.file	"color-balance.bc"
	.globl	color_balance_init
	.align	16, 0x90
	.type	color_balance_init,@function
color_balance_init:                     # @color_balance_init
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
	movabsq	$.L__func__.color_balance_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_10
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movl	$0, -12(%rbp)
.LBB0_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -12(%rbp)
	ja	.LBB0_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB0_6 Depth=1
	xorps	%xmm0, %xmm0
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 8(%rdx,%rcx,8)
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 32(%rdx,%rcx,8)
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 56(%rdx,%rcx,8)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_6
.LBB0_9:                                # %for.end
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
.LBB0_10:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	color_balance_init, .Lfunc_end0-color_balance_init
	.cfi_endproc

	.globl	color_balance_create_lookup_tables
	.align	16, 0x90
	.type	color_balance_create_lookup_tables,@function
color_balance_create_lookup_tables:     # @color_balance_create_lookup_tables
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.color_balance_create_lookup_tables, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_29
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	cmpl	$0, transfer_initialized
	jne	.LBB1_7
# BB#6:                                 # %if.then.1
	callq	color_balance_transfer_init
	movl	$1, transfer_initialized
.LBB1_7:                                # %if.end.2
	movl	$0, -12(%rbp)
.LBB1_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jge	.LBB1_29
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movslq	-12(%rbp), %rcx
	mulsd	shadows(,%rcx,8), %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movslq	-12(%rbp), %rcx
	mulsd	midtones(,%rcx,8), %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movslq	-12(%rbp), %rcx
	mulsd	highlights(,%rcx,8), %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -16(%rbp)
	cmpl	$255, -16(%rbp)
	jle	.LBB1_11
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$255, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB1_15
.LBB1_11:                               # %cond.false
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -16(%rbp)
	jge	.LBB1_13
# BB#12:                                # %cond.true.26
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB1_14
.LBB1_13:                               # %cond.false.27
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB1_14:                               # %cond.end
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB1_15:                               # %cond.end.28
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-28(%rbp), %eax         # 4-byte Reload
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movslq	-12(%rbp), %rcx
	mulsd	shadows(,%rcx,8), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rcx
	movsd	40(%rcx), %xmm0         # xmm0 = mem[0],zero
	movslq	-12(%rbp), %rcx
	mulsd	midtones(,%rcx,8), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rcx
	movsd	48(%rcx), %xmm0         # xmm0 = mem[0],zero
	movslq	-12(%rbp), %rcx
	mulsd	highlights(,%rcx,8), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -20(%rbp)
	cmpl	$255, -20(%rbp)
	jle	.LBB1_17
# BB#16:                                # %cond.true.55
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$255, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB1_21
.LBB1_17:                               # %cond.false.56
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -20(%rbp)
	jge	.LBB1_19
# BB#18:                                # %cond.true.59
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB1_20
.LBB1_19:                               # %cond.false.60
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB1_20:                               # %cond.end.61
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB1_21:                               # %cond.end.63
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rcx
	movsd	56(%rcx), %xmm0         # xmm0 = mem[0],zero
	movslq	-12(%rbp), %rcx
	mulsd	shadows(,%rcx,8), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movsd	64(%rcx), %xmm0         # xmm0 = mem[0],zero
	movslq	-12(%rbp), %rcx
	mulsd	midtones(,%rcx,8), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	movslq	-12(%rbp), %rcx
	mulsd	highlights(,%rcx,8), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -24(%rbp)
	cmpl	$255, -24(%rbp)
	jle	.LBB1_23
# BB#22:                                # %cond.true.90
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$255, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB1_27
.LBB1_23:                               # %cond.false.91
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -24(%rbp)
	jge	.LBB1_25
# BB#24:                                # %cond.true.94
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB1_26
.LBB1_25:                               # %cond.false.95
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB1_26:                               # %cond.end.96
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB1_27:                               # %cond.end.98
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	movl	-16(%rbp), %eax
	movb	%al, %cl
	movslq	-12(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, 80(%rsi,%rdx)
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movslq	-12(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, 336(%rsi,%rdx)
	movl	-24(%rbp), %eax
	movb	%al, %cl
	movslq	-12(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, 592(%rsi,%rdx)
# BB#28:                                # %for.inc
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB1_8
.LBB1_29:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	color_balance_create_lookup_tables, .Lfunc_end1-color_balance_create_lookup_tables
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_1:
	.quad	4602678819172646912     # double 0.5
.LCPI2_2:
	.quad	-4589168020290535424    # double -64
.LCPI2_3:
	.quad	4635681760191971328     # double 85
.LCPI2_4:
	.quad	4634204016564240384     # double 64
.LCPI2_5:
	.quad	4610717744507503247     # double 1.7849999999999999
.LCPI2_6:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	color_balance_transfer_init,@function
color_balance_transfer_init:            # @color_balance_transfer_init
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
	movl	$0, -4(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB2_22
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_3, %xmm3         # xmm3 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm4
	subsd	%xmm3, %xmm4
	divsd	%xmm2, %xmm4
	addsd	%xmm1, %xmm4
	ucomisd	%xmm0, %xmm4
	jbe	.LBB2_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB2_1 Depth=1
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_4:                                # %cond.false
                                        #   in Loop: Header=BB2_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_3, %xmm3         # xmm3 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm4
	subsd	%xmm3, %xmm4
	divsd	%xmm2, %xmm4
	addsd	%xmm1, %xmm4
	ucomisd	%xmm4, %xmm0
	jbe	.LBB2_6
# BB#5:                                 # %cond.true.9
                                        #   in Loop: Header=BB2_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB2_7
.LBB2_6:                                # %cond.false.10
                                        #   in Loop: Header=BB2_1 Depth=1
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_3, %xmm2         # xmm2 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm3
	subsd	%xmm2, %xmm3
	divsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	movsd	%xmm3, -40(%rbp)        # 8-byte Spill
.LBB2_7:                                # %cond.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB2_8:                                # %cond.end.15
                                        #   in Loop: Header=BB2_1 Depth=1
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI2_3, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI2_5, %xmm5         # xmm5 = mem[0],zero
	mulsd	%xmm5, %xmm0
	movsd	%xmm0, -16(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm0
	subsd	%xmm4, %xmm0
	divsd	%xmm3, %xmm0
	addsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB2_10
# BB#9:                                 # %cond.true.23
                                        #   in Loop: Header=BB2_1 Depth=1
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB2_14
.LBB2_10:                               # %cond.false.24
                                        #   in Loop: Header=BB2_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_3, %xmm3         # xmm3 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm4
	subsd	%xmm3, %xmm4
	divsd	%xmm2, %xmm4
	addsd	%xmm1, %xmm4
	ucomisd	%xmm4, %xmm0
	jbe	.LBB2_12
# BB#11:                                # %cond.true.31
                                        #   in Loop: Header=BB2_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB2_13
.LBB2_12:                               # %cond.false.32
                                        #   in Loop: Header=BB2_1 Depth=1
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_3, %xmm2         # xmm2 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm3
	subsd	%xmm2, %xmm3
	divsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	movsd	%xmm3, -56(%rbp)        # 8-byte Spill
.LBB2_13:                               # %cond.end.37
                                        #   in Loop: Header=BB2_1 Depth=1
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB2_14:                               # %cond.end.39
                                        #   in Loop: Header=BB2_1 Depth=1
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI2_6, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI2_3, %xmm5         # xmm5 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm6
	addsd	%xmm5, %xmm6
	subsd	%xmm4, %xmm6
	divsd	%xmm3, %xmm6
	addsd	%xmm2, %xmm6
	ucomisd	%xmm1, %xmm6
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jbe	.LBB2_16
# BB#15:                                # %cond.true.48
                                        #   in Loop: Header=BB2_1 Depth=1
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB2_20
.LBB2_16:                               # %cond.false.49
                                        #   in Loop: Header=BB2_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_6, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI2_3, %xmm4         # xmm4 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm5
	addsd	%xmm4, %xmm5
	subsd	%xmm3, %xmm5
	divsd	%xmm2, %xmm5
	addsd	%xmm1, %xmm5
	ucomisd	%xmm5, %xmm0
	jbe	.LBB2_18
# BB#17:                                # %cond.true.57
                                        #   in Loop: Header=BB2_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB2_19
.LBB2_18:                               # %cond.false.58
                                        #   in Loop: Header=BB2_1 Depth=1
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_6, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_3, %xmm3         # xmm3 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm4
	addsd	%xmm3, %xmm4
	subsd	%xmm2, %xmm4
	divsd	%xmm1, %xmm4
	addsd	%xmm0, %xmm4
	movsd	%xmm4, -80(%rbp)        # 8-byte Spill
.LBB2_19:                               # %cond.end.64
                                        #   in Loop: Header=BB2_1 Depth=1
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB2_20:                               # %cond.end.66
                                        #   in Loop: Header=BB2_1 Depth=1
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$255, %eax
	movsd	.LCPI2_5, %xmm1         # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-4(%rbp), %rcx
	movsd	%xmm0, shadows(,%rcx,8)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-4(%rbp), %rcx
	movsd	%xmm0, midtones(,%rcx,8)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movsd	%xmm0, highlights(,%rcx,8)
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB2_1
.LBB2_22:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end2:
	.size	color_balance_transfer_init, .Lfunc_end2-color_balance_transfer_init
	.cfi_endproc

	.globl	color_balance
	.align	16, 0x90
	.type	color_balance,@function
color_balance:                          # @color_balance
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	48(%rdx), %eax
	movl	%eax, -92(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	pixel_region_has_alpha
	movl	%eax, -60(%rbp)
.LBB3_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -92(%rbp)
	cmpl	$0, %eax
	je	.LBB3_10
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB3_3:                                # %while.cond.4
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -88(%rbp)
	cmpl	$0, %eax
	je	.LBB3_9
# BB#4:                                 # %while.body.7
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movslq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	movzbl	80(%rdx,%rax), %ecx
	movl	%ecx, -76(%rbp)
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rdx
	movzbl	336(%rdx,%rax), %ecx
	movl	%ecx, -80(%rbp)
	movslq	-72(%rbp), %rax
	movq	-8(%rbp), %rdx
	movzbl	592(%rdx,%rax), %ecx
	movl	%ecx, -84(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB3_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB3_3 Depth=2
	leaq	-76(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-84(%rbp), %rdx
	callq	gimp_rgb_to_hsl_int
	movl	-64(%rbp), %edi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	callq	gimp_rgb_to_l_int
	leaq	-76(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-84(%rbp), %rdx
	movl	%eax, -84(%rbp)
	callq	gimp_hsl_to_rgb_int
.LBB3_6:                                # %if.end
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-80(%rbp), %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movl	-84(%rbp), %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movb	%cl, 2(%rdx)
	cmpl	$0, -60(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.29
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	-40(%rbp), %rax
	movb	3(%rax), %cl
	movq	-56(%rbp), %rax
	movb	%cl, 3(%rax)
.LBB3_8:                                # %if.end.32
                                        #   in Loop: Header=BB3_3 Depth=2
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
	jmp	.LBB3_3
.LBB3_9:                                # %while.end
                                        #   in Loop: Header=BB3_1 Depth=1
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
	jmp	.LBB3_1
.LBB3_10:                               # %while.end.41
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	color_balance, .Lfunc_end3-color_balance
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Base"
	.size	.L.str, 10

	.type	.L__func__.color_balance_init,@object # @__func__.color_balance_init
.L__func__.color_balance_init:
	.asciz	"color_balance_init"
	.size	.L__func__.color_balance_init, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"cb != NULL"
	.size	.L.str.1, 11

	.type	.L__func__.color_balance_create_lookup_tables,@object # @__func__.color_balance_create_lookup_tables
.L__func__.color_balance_create_lookup_tables:
	.asciz	"color_balance_create_lookup_tables"
	.size	.L__func__.color_balance_create_lookup_tables, 35

	.type	transfer_initialized,@object # @transfer_initialized
	.local	transfer_initialized
	.comm	transfer_initialized,4,4
	.type	shadows,@object         # @shadows
	.local	shadows
	.comm	shadows,2048,16
	.type	midtones,@object        # @midtones
	.local	midtones
	.comm	midtones,2048,16
	.type	highlights,@object      # @highlights
	.local	highlights
	.comm	highlights,2048,16
	.type	color_balance_transfer_init.a,@object # @color_balance_transfer_init.a
	.section	.rodata,"a",@progbits
	.align	8
color_balance_transfer_init.a:
	.quad	4634204016564240384     # double 64
	.size	color_balance_transfer_init.a, 8

	.type	color_balance_transfer_init.b,@object # @color_balance_transfer_init.b
	.align	8
color_balance_transfer_init.b:
	.quad	4635681760191971328     # double 85
	.size	color_balance_transfer_init.b, 8

	.type	color_balance_transfer_init.scale,@object # @color_balance_transfer_init.scale
	.align	8
color_balance_transfer_init.scale:
	.quad	4610717744507503247     # double 1.7849999999999999
	.size	color_balance_transfer_init.scale, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
